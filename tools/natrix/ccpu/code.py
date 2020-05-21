from value import Value
from type import BoolType
import operator
import labelname
from .compare import *
from .binary import *
from .unary import *
from .shift import *

def _align(x, a):
    if x % a == 0:
        return x
    else:
        return (x // a)  * a + a

def _signExpandByte(x):
    if x & 0x80:
        return x | 0xff00
    else:
        return x

def _hi(x):
    return (x >> 8) & 0xff

def _lo(x):
    return x & 0xff

def startCodeSection():
    return ".section text\n"

def startBssSection():
    return ".section bss\n"
    return ".align 2\n"

def dumpExports(exports):
    return "".join(".export {}\n".format(s) for s in exports)

def dumpImports(imports):
    return "".join(".global {}\n".format(s) for s in imports) + _dumpRuntimeImports()

def _dumpRuntimeImports():
    return """
    .global __cc_r_sp
    .global __cc_asl
    .global __cc_asr
    .global __cc_lsr
    .global __cc_sh_val
    .global __cc_sh_count
    """

def reserve(label, size):
    return "{}: res {}\n".format(label, min(2, size))

def reserveTempVars(maxIndex):
    return "".join(reserve(labelname.getTempName(i), 2) for i in range(maxIndex + 1))

def reserveVar(label, type):
    rs = _align(type.getReserveSize(), 2)
    return "{}: res {}\n".format(label, rs)

def genFunctionPrologue(fn):
    return genLabel(fn) + '''
        mov a, pl
        mov b, a
        mov a, ph
        ldi pl, lo({0})
        ldi ph, hi({0})
        st b
        inc pl
        st a
        '''.format(labelname.getReturnAddressLabel(fn))

def genReturn(fn):
    return '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        ld a
        inc pl
        ld ph
        mov pl, a
        jmp
        ; ========================
        '''.format(labelname.getReturnAddressLabel(fn))

def genCall(fn):
    return '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jmp
        '''.format(fn)

def genPushLocals(fn):
    raise NotImplementedError("Recursion isn't implemented")

def genPopLocals(fn):
    raise NotImplementedError("Recursion isn't implemented")

def _loadConst(size, value):
    # load const into a:b
    if isinstance(value, int):
        result = 'ldi b, {}\n'.format(_lo(value))
        if size > 1:
            h = _hi(value)
            if h == 0:
                result += 'mov a, 0\n'
            else:
                result += 'ldi a, {}\n'.format(h)
    else:
        result = 'ldi b, lo({})\n'.format(value)
        if size > 1:
            result += 'ldi a, hi({})\n'.format(value)
    return result

def genMove(resultLoc, srcLoc, avoidCopy):
    if srcLoc.getType().isUnknown():
        raise ValueError("Unknown source type")
    if resultLoc.getType().isUnknown():
        resultLoc = resultLoc.removeUnknown(srcLoc.getType())
    if resultLoc.getType() != srcLoc.getType():
        raise ValueError("Incompatible types to assign: {} and {}".format(resultLoc.getType(), srcLoc.getType()))
    if srcLoc == resultLoc:
        return resultLoc, ""
    else:
        if avoidCopy:
            return srcLoc, ""
        else:
            if resultLoc.getIndirLevel() != 1:
                raise RuntimeError("Compiler error: move destination level of indirection is not 1")
            size = srcLoc.getType().getSize()
            if size != 1 and size != 2:
                raise RuntimeError("Compiler error: move size is {}".format(size))
            loadCode = ""
            if srcLoc.getIndirLevel() == 0:
                # var := const
                c = srcLoc.getSource()
                loadCode += _loadConst(size, c)
            else:
                # var := var
                loadCode += '''
                    ldi pl, lo({0})
                    ldi ph, hi({0})
                    ld b
                    '''.format(srcLoc.getSource())
                if size > 1:
                    loadCode += '''
                    inc pl
                    ld a
                    '''
            storeCode = '''
                ldi pl, lo({0})
                ldi ph, hi({0})
                st b
                '''.format(resultLoc.getSource())
            if size > 1:
                storeCode += '''
                    inc pl
                    st a
                    '''
            return resultLoc, loadCode + storeCode

def genCast(resultLoc, t, srcLoc):
    resultLoc = resultLoc.withType(t)
    if resultLoc == srcLoc:
        return resultLoc, ""
    if resultLoc.getIndirLevel() != 1:
        raise RuntimeError("Compiler error: move destination level of indirection is not 1")
    assert(resultLoc.getType().getSize() == 1 or resultLoc.getType().getSize() == 2)
    assert(srcLoc.getType().getSize() == 1 or srcLoc.getType().getSize() == 2)
    if srcLoc.getIndirLevel() == 1 and srcLoc.getSource() == resultLoc.getSource():
        # cast into itself
        if resultLoc.getType().getSize() > srcLoc.getType().getSize():
            # widen
            if srcLoc.getType().getSign():
                # sign expand
                return resultLoc, '''
                    ; widening cast, sign expand
                    ldi pl, lo({0})
                    ldi ph, hi({0})
                    ld a
                    shl a
                    exp a
                    inc pl
                    st a
                    '''.format(srcLoc.getSource())
            else:
                # zero expand
                return resultLoc, '''
                    ; widening cast, zero expand
                    ldi pl, lo({0} + 1)
                    ldi ph, hi({0} + 1)
                    mov a, 0
                    st a
                    '''.format(srcLoc.getSource())
        else:
            # make narrower or the same, do nothing
            return resultLoc, ""
    else:
        # cast into a different destination
        if srcLoc.getIndirLevel() == 0:
            # cast a constant
            if isinstance(srcLoc.getSource(), int) and srcLoc.getType().getSize() == 1 and srcLoc.getType().getSign():
                # a signed byte into something -> sign expand it
                return genMove(resultLoc, Value(t, 0, _signExpandByte(srcLoc.getSource()), False))
            else:
                return genMove(resultLoc, srcLoc.withType(t), True)
        if resultLoc.getType().getSize() > srcLoc.getType().getSize():
            # widen a byte
            if srcLoc.getType().getSign():
                # sign expand
                result = '''
                    ; widening cast, sign expand
                    ldi pl, lo({0})
                    ldi ph, hi({0})
                    ld a
                    ldi pl, lo({1})
                    ldi ph, hi({1})
                    st a
                    shl a
                    exp a
                    inc pl
                    st a
                    '''.format(srcLoc.getSource(), resultLoc.getSource())
            else:
                # zero expand
                result = '''
                    ; widening cast, zero expand
                    ldi pl, lo({0})
                    ldi ph, hi({0})
                    ld a
                    ldi pl, lo({1})
                    ldi ph, hi({1})
                    st a
                    inc pl
                    mov a, 0
                    st a
                    '''.format(srcLoc.getSource(), resultLoc.getSource())
            return resultLoc, result
        else:
            # same size or narrower
            return srcLoc.withType(resultLoc.getType()), ""

def genPutIndirect(resultAddrLoc, srcLoc, offset=0):
    if srcLoc.getType().isUnknown():
        raise ValueError("Unknown source type")
    if resultAddrLoc.getType().isUnknown():
        resultAddrLoc = resultAddrLoc.removeUnknown(srcLoc.getType())
    if resultAddrLoc.getType().deref() != srcLoc.getType():
        raise ValueError("Incompatible types for put indirect: {} and {}".format(resultAddrLoc.getType().deref(), srcLoc.getType()))
    if offset == 0:
        return "*{} = {}\n".format(resultAddrLoc, srcLoc)
    else:
        return "*({} + {}) = {}\n".format(resultAddrLoc, offset, srcLoc)

def genInvCondJump(condLoc, label):
    '''
    Jump if condLoc is 0
    '''
    if condLoc.getType() != BoolType():
        raise ValueError("Should be a bool type (u8) for a condition, got {}".format(str(condLoc.getType())))
    l = condLoc.getIndirLevel()
    s = condLoc.getSource()
    assert(l == 0 or l == 1)
    result = '; jump if not {}\n'.format(condLoc)
    if l == 0:
        if isinstance(s, int):
            if not bool(s):
                result += '''
                    ldi pl, lo({0})
                    ldi ph, hi({0})
                    jmp
                '''.format(label)
        else:
            result += '''
                ldi a, lo({0})
                add a, 0
                ldi pl, lo({1})
                ldi ph, hi({1})
                jz
            '''.format(s, label)
    else:
        result += '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld a
            ldi pl, lo({1})
            ldi ph, hi({1})
            add a, 0
            jz
        '''.format(s, label)
    return result

def genJump(label):
    return '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jmp
    '''.format(label)

def genLabel(label):
    return "{}:\n".format(label)

def genSubscript(resultLoc, baseLoc, indexLoc):
    if not indexLoc.getType().isInteger():
        raise ValueError("Index must be an integer, got {}".format(indexLoc.getType()))
    if not baseLoc.getType().isPointer():
        raise ValueError("Subscript base must be a pointer, got {}".format(baseLoc.getType()))
    resultType = baseLoc.getType().deref()
    if baseLoc.getIndirLevel() == 0:
        if indexLoc.getIndirLevel() == 0:
            return Value(resultType, 1, "{} + {} * {}".format(baseLoc.getSource(), indexLoc.getSource(), resultType.getSize())), ""
        else:
            return resultLoc.removeUnknown(resultType), "{} = deref({} + [{}] * {})\n".format(resultLoc, baseLoc, indexLoc, resultType.getSize())
    else:
        if indexLoc.getIndirLevel() == 0:
            return resultLoc.removeUnknown(resultType), "{} = deref([{}] + {} * {}\n".format(resultLoc, baseLoc, indexLoc, resultType.getSize())
        else:
            return resultLoc.removeUnknown(resultType), "{} = deref([{}] + [{}] * {}\n".format(resultLoc, baseLoc, indexLoc, resultType.getSize())

def genMulConst(resultLoc, srcLoc, m):
    resultLoc = resultLoc.removeUnknown(srcLoc.getType())
    if resultLoc.getType() != srcLoc.getType():
        raise ValueError("Incompatible types: {} and {}".format(resultLoc.getType(), srcLoc.getType()))
    return resultLoc, "{} = {} * {}\n".format(resultLoc, srcLoc, m)