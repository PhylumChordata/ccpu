#!/usr/bin/env python3
import argparse
import re
import sys
import json
from object import Object
from expression import evaluate

class AssemblyError(Exception):
    def __init__(self, line, reason):
        self.line = line
        self.reason = reason

    def __str__(self):
        return "Error at line {}: {}".format(self.line, self.reason)

def isJump(op):
    return op == 'jmp' or \
        op == 'jz' or \
        op == 'jnz' or \
        op == 'jc' or \
        op == 'jnc' or \
        op == 'js' or \
        op == 'jns' or \
        op == 'jo' or \
        op == 'jno'

def isAlu(op):
    return op == 'add' or \
        op == 'sub' or \
        op == 'adc' or \
        op == 'sbb' or \
        op == 'inc' or \
        op == 'dec' or \
        op == 'shl' or \
        op == 'neg' or \
        op == 'mov' or \
        op == 'not' or \
        op == 'exp' or \
        op == 'and' or \
        op == 'or' or \
        op == 'xor' or \
        op == 'shr' or \
        op == 'sar'

def isSingleArg(op):
    return op == 'ld' or \
        op == 'st' or \
        op == 'inc' or \
        op == 'dec' or \
        op == 'shl' or \
        op == 'neg' or \
        op == 'not' or \
        op == 'exp' or \
        op == 'shr' or \
        op == 'sar'

def updateIp(op, args):
    if op is None:
        return 0
    op = op.lower()
    if op == '' or op is None:
        return 0
    elif op == 'db':
        return 1
    elif op == 'dw':
        return 2
    elif op == 'dd':
        return 4
    elif op == 'dq':
        return 8
    elif op == 'ascii':
        return len(eval(args, {"__builtins__": {}}))
    elif op == 'ld' or op == 'st' or isJump(op) or isAlu(op):
        return 1
    elif op == 'ldi':
        return 2
    elif op == 'nop':
        return 1
    elif op == 'res':
        return eval(args, {"__builtins__": {}})
    else:
        raise ValueError("Invalid opcode: {}".format(op))

def encodeSrc(reg):
    if reg == 'a' or reg == '0':
        return 0
    elif reg == 'b':
        return 1
    elif reg == 'pl':
        return 2
    elif reg == 'ph':
        return 3
    else:
        raise ValueError("Bad register `{}`".format(reg))

def encodeAlu(op):
    if op == 'add':
        return 0
    if op == 'sub':
        return 1
    if op == 'adc':
        return 2
    if op == 'sbb':
        return 3
    if op == 'inc':
        return 4
    if op == 'dec':
        return 5
    if op == 'shl':
        return 6
    if op == 'neg':
        return 7
    if op == 'mov':
        return 8
    if op == 'not':
        return 9
    if op == 'exp':
        return 10
    if op == 'and':
        return 11
    if op == 'or':
        return  12
    if op == 'xor':
        return 13
    if op == 'shr':
        return 14
    if op == 'sar':
        return 15
    raise ValueError("Wrong instruction: {}".format(op))

def evalExpression(value):
    try:
        return evaluate(value), None
    except NameError as e:
        return 0, value
    except BaseException as e:
        raise ValueError("Error evaluating {}: {}".format(value, e))

def encodeFlag(f):
    if f == 'z':
        return 0
    elif f == 'c':
        return 1
    elif f == 's':
        return 2
    elif f == 'o':
        return 3
    else:
        raise ValueError("Wrong jump condition: {}".format(f))

# TODO use consts here for expressions?
def encode(op, args):
    if isAlu(op):
        singleArg = isSingleArg(op)
        m = re.match(r"(a|b|ph|pl)\s*(?:,\s*(a|b|ph|pl|0))?", args)
        if m is None:
            raise ValueError("Invalid operands: {} {}".format(op, args))
        dst = m.group(1)
        src = dst if singleArg else m.group(2)
        straight = dst == 'a'
        inverse = not straight if singleArg else src == 'a'
        if straight == inverse:
            raise ValueError("Only one of {} operands should be A".format(op))
        return [(encodeAlu(op) << 3) | (4 if inverse else 0) | encodeSrc(dst if inverse else src)], []
    elif op == 'ld':
        return [0x80 | encodeSrc(args)], []
    elif op == 'st':
        if args != 'a' and args != 'b':
            raise ValueError("Invalid register for ST: {}. Only A or B are allowed".format(args))
        return [0xa0 | encodeSrc(args)], []
    elif op == 'ldi':
        m = re.match(r"(a|b|pl|ph)\s*,\s*\b(.+)", args)
        if m is None:
            raise ValueError("Invalid operands: {} {}".format(op, args))
        reg = m.group(1)
        value = m.group(2)
        static, dynamic = evalExpression(value)
        if dynamic is None:
            return [0xc0 | encodeSrc(reg), static & 0xff], []
        else:
            return [0xc0 | encodeSrc(reg), 0], [(1,dynamic)]
    elif op[0] == 'j':
        if args:
            raise ValueError("Unexpected arguments for jump instruction")
        if op == 'jmp':
            return [0xe8], []
        else:
            if not (2 <= len(op) <= 3):
                raise ValueError("Invalid instruction {}".format(op))
            if len(op) == 3 and op[1] != 'n':
                raise ValueError("Invalid instruction {}".format(op))
            inverse = len(op) == 3
            flag = op[2] if inverse else op[1]
            return [0xe0 | (4 if inverse else 0) | encodeFlag(flag)], []
    elif op == 'nop':
        return [0xff], []
    elif op == 'db':
        static, dynamic = evalExpression(args)
        if dynamic is None:
            return [static & 0xff], []
        else:
            return [0], [(0, dynamic)]
    elif op == 'dw':
        v, dynamic = evalExpression(args)
        if dynamic is None:
            return [v & 0xff, (v >> 8) & 0xff], []
        else:
            return [0, 0], [(0, dynamic), (1, "({}) >> 8".format(dynamic))]
    elif op == 'dd':
        v, dynamic = evalExpression(args)
        if dynamic is None:
            return [(v >> (8 * i)) & 0xff for i in range(4)], []
        else:
            return [0] * 4, [(i, "({}) >> {}".format(dynamic, 8 * i)) for i in range(4)]
    elif op == 'dq':
        v, dynamic = evalExpression(args)
        if dynamic is None:
            return [(v >> (8 * i)) & 0xff for i in range(8)], []
        else:
            return [0] * 8, [(i, "({}) >> {}".format(dynamic, 8 * i)) for i in range(8)]
    elif op == 'ascii':
        v = eval(args, {"__builtins__": {}})
        return [ord(c) for c in v], []
    elif op == 'res':
        return [0] * eval(args, {"__builtins__": {}}), []
    else:
        raise ValueError("Invalid opcode: {}".format(op))

def assemble(lines):
    result = Object()
    r = re.compile(r"^\s*(?:(?P<label>[a-z]\w*)\s*:)?(?:\s*(?P<op>[.a-z]\w*)(?:\s+(?P<args>[a-z()0-9_+\-=*/><, \t\"']*[a-z()0-9_+\-=*/><,\"']))?)?(?:\s*;.*)?$", re.I)
    for i,l in enumerate(lines):
        line = l.strip()
        try:
            m = r.match(line)
            if m is None:
                raise ValueError("Syntax error")
            label = m.group('label')
            op = m.group('op')
            args = m.group('args')
            if label:
                result.defineLabel(label)
            if op == '.section':
                result.beginSection(args, 0)
            elif op == '.align':
                result.align(int(args, 0))
            elif op == '.offset':
                raise ValueError(".offset is not implemented")
            elif op == '.const':
                name, value = re.split(r"\s*=\s*", args, 1)
                result.defineConstant(name, eval(value, {"__builtins__": {}}))
            elif op == '.global':
                result.declareGlobal(args)
            else:
                result.advance(updateIp(op, args))
        except ValueError as e:
            raise AssemblyError(i + 1, e)
    result.allocate()
    for i,l in enumerate(lines):
        line = l.strip()
        try:
            m = r.match(line)
            if m is None:
                raise ValueError("Syntax error at line {}".format(i + 1))
            op = m.group('op')
            args = m.group('args')
            if op is None:
                continue
            op = op.lower()
            if op == '.section':
                result.beginSection(args, 0)
            elif op == '.align':
                result.align(int(args, 0))
            elif op == '.offset':
                pass
            elif op == '.const':
                pass
            elif op == '.global':
                pass
            else:
                text, refs = encode(op, args)
                result.placeValue(text)
                for offset, ref in refs:
                    result.placeExpression(offset, ref)
                result.advance(len(text))
        except ValueError as e:
            raise AssemblyError(i + 1, e)
    return result

def save(filename, o):
    with open(filename, "w") as file:
        file.write(json.dumps(o.toDict()))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Assembler')
    parser.add_argument('-o', metavar="RESULT", required=True, help='output file name')
    parser.add_argument('file', type=argparse.FileType("r"), help='input file name')
    args = parser.parse_args()

    try:
        lines = args.file.readlines()
        o = assemble(lines)
        save(args.o, o)
    except AssemblyError as e:
        print(e)
        sys.exit(1)
