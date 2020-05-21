from value import Value
from type import BoolType
import operator
import labelname
from .common import *
from exceptions import SemanticError

def _genEqNeCmp(src1Loc, src2Loc):
    '''
    Compare two locations, store result in b (0 if equal, 1 if not)
    They shouldn't be both constants.
    '''
    t = src1Loc.getType()
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    isWord = t.getSize() == 2
    result = ''
    if l1 == 0 or l2 == 0:
        # var == const
        if l1 == 0:
            s1, s2 = s2, s1
        result = '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld b
        '''.format(s1)
        if isinstance(s2, int):
            l = lo(s2)
            if l == 0:
                result += 'mov a, 0\n'
            else:
                result += 'ldi a, {}\n'.format(l)
        else:
            result += 'ldi a, lo({})\n'.format(s2)
        result += 'sub b, a\n'
        if isWord:
            result += '''
                inc pl
                ld pl
            '''
            if isinstance(s2, int):
                h = hi(s2)
                if h == 0:
                    result += 'mov a, 0\n'
                else:
                    result += 'ldi a, {}\n'.format(h)
            else:
                result += 'ldi a, hi({})\n'.format(s2)
            result += '''
                sub a, pl
                or b, a
            '''
    else:
        if not isWord:
            result += '''
                ldi pl, lo({0})
                ldi ph, hi({0})
                ld a
                ldi pl, lo({1})
                ldi ph, hi({1})
                ld b
                sub b, a
            '''.format(s1, s2)
        else:
            result += '''
                ldi pl, lo({0})
                ldi ph, hi({0})
                ld a
                ldi pl, lo({1})
                ldi ph, hi({1})
                ld b
                sub b, a
                inc pl
                ld a
                ldi pl, lo({0})
                ldi ph, hi({0})
                ld pl
                sub a, pl
                or b, a
            '''.format(s1, s2)
    return result

def genEq(resultLoc, src1Loc, src2Loc):
    resultLoc = resultLoc.withType(BoolType())
    assert(resultLoc.getIndirLevel() == 1)
    if src1Loc.getType() != src2Loc.getType():
        raise SemanticError(src1Loc.getLocation(), "Incompatible types: {} and {}".format(src1Loc.getType(), src2Loc.getType()))
    t = src1Loc.getType()
    assert(t.getSize() == 1 or t.getSize() == 2)
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    rs = resultLoc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    isWord = t.getSize() == 2
    result = '; {} == {}\n'.format(src1Loc, src2Loc)
    if l1 == 0 and l2 == 0:
        # const == const
        loc = src1Loc.getLocation() - src2Loc.getLocation()
        if isinstance(s1, int) and isinstance(s2, int):
            return Value(loc, BoolType(), 0, int(s1 == s2)), result
        else:
            return Value(loc, BoolType(), 0, "int(({}) == ({}))".format(s1, s2)), result
    else:
        result += _genEqNeCmp(src1Loc, src2Loc)
    result += '''
        dec b
        mov a, 0
        adc a, 0
        ldi pl, lo({0})
        ldi ph, hi({0})
        st a
    '''.format(rs)
    return resultLoc, result

def genNe(resultLoc, src1Loc, src2Loc):
    resultLoc = resultLoc.withType(BoolType())
    assert(resultLoc.getIndirLevel() == 1)
    if src1Loc.getType() != src2Loc.getType():
        raise SemanticError(src1Loc.getLocation(), "Incompatible types: {} and {}".format(src1Loc.getType(), src2Loc.getType()))
    t = src1Loc.getType()
    assert(t.getSize() == 1 or t.getSize() == 2)
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    rs = resultLoc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    isWord = t.getSize() == 2
    result = '; {} == {}\n'.format(src1Loc, src2Loc)
    if l1 == 0 and l2 == 0:
        # const == const
        loc = src1Loc.getLocation() - src2Loc.getLocation()
        if isinstance(s1, int) and isinstance(s2, int):
            return Value(loc, BoolType(), 0, int(s1 != s2)), result
        else:
            return Value(loc, BoolType(), 0, "int(({}) != ({}))".format(s1, s2)), result
    else:
        result += _genEqNeCmp(src1Loc, src2Loc)
    result += '''
        dec b
        ldi a, 1
        sbb a, 0
        ldi pl, lo({0})
        ldi ph, hi({0})
        st a
    '''.format(rs)
    return resultLoc, result

def _genCmpSub(src1Loc, src2Loc, op):
    # subtract the values so that flags C, S, and O are set accordingly and (b | pl) is zero if the result is zero
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    t = src1Loc.getType()
    isWord = t.getSize() == 2
    result = ''
    if l1 == 0:
        # const and var
        if isinstance(s1, int):
            l = lo(s1)
            h = hi(s1)
        else:
            l = "lo({})".format(s1)
            h = "hi({})".format(s1)
        result += '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld a
            ldi b, {1}
        '''.format(s2, l)
        if isWord:
            result += '''
                inc pl
                sub b, a
                ld a
                ldi pl, {1}
                sbb pl, a
            '''.format(h)
        else:
            result += 'sub b, a\n'
            if op == 'le' or op == 'gt':
                result += 'ldi pl, 0\n'
    elif l2 == 0:
        # var and const
        if isinstance(s2, int):
            l = lo(s2)
            h = hi(s2)
        else:
            l = "lo({})".format(s2)
            h = "hi({})".format(s2)
        result += '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld b
            ldi a, {1}
        '''.format(s1, l)
        if isWord:
            result += '''
                inc pl
                sub b, a
                ld pl
                ldi a, {0}
                sbb pl, a
            '''.format(h)
        else:
            result += 'sub b, a\n'
            if op == 'le' or op == 'gt':
                result += 'ldi pl, 0\n'
    else:
        # var and var
        if isWord:
            result += '''
                ldi pl, lo({0})
                ldi ph, hi({0})
                ld b
                ldi pl, lo({1})
                ldi ph, hi({1})
                ld a
                inc pl
                sub b, a
                ld a
                ldi pl, lo({0} + 1)
                ldi ph, hi({0} + 1)
                ld pl
                sbb pl, a
            '''.format(s1, s2)
        else:
            result += '''
                ldi pl, lo({0})
                ldi ph, hi({0})
                ld b
                ldi pl, lo({1})
                ldi ph, hi({1})
                ld a
                sub b, a
            '''.format(s1, s2)
            if op == 'le' or op == 'gt':
                result += 'ldi pl, 0\n'
    return result

def _genCmpUnsigned(resultLoc, src1Loc, src2Loc, op):
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    rs = resultLoc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    t = src1Loc.getType()
    isWord = t.getSize() == 2
    result = '; compare unsigned {} and {} ({})\n'.format(src1Loc, src2Loc, op)
    if l1 == 0 and l2 == 0:
        # const and const
        loc = src1Loc.getLocation() - src2Loc.getLocation()
        if isinstance(s1, int) and isinstance(s2, int):
            pyop = {"gt": operator.gt, "lt": operator.lt, "ge": operator.ge, "le": operator.le}[op]
            return Value(loc, BoolType(), 0, int(pyop(s1, s2))), result
        else:
            pyop = {"gt": ">", "lt": "<", "ge": ">=", "le": "<="}[op]
            return Value(loc, BoolType(), 0, "int(({}) {} ({}))".format(s1, pyop, s2)), result
    else:
        result += _genCmpSub(src1Loc, src2Loc, op)
    # C = carry flag
    # Z = (b | pl) == 0
    if op == 'lt':
        # 1 if C
        result += '''
            mov a, 0
            adc a, 0
        '''
    elif op == 'ge':
        # 1 if !C
        result += '''
            ldi a, 1
            sbb a, 0
        '''
    elif op == 'le':
        # 1 if C or !(b | pl)
        result += '''
            exp ph ; ph = C (0xff or 0x00)
            mov a, pl
            or a, b
            dec a ; C = Z
            exp a ; a = Z (0xff or 0x00)
            or a, ph ; a = C | Z (0xff or 0x00)
            ldi b, 1
            and a, b
        '''
    elif op == 'gt':
        # 1 if !(C or Z)
        result += '''
            exp ph ; ph = C (0xff or 0x00)
            mov a, pl
            or a, b
            dec a ; C = Z
            exp a ; a = Z (0xff or 0x00)
            or a, ph ; a = C | Z (0xff or 0x00)
            not a
            ldi b, 1
            and a, b
        '''
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        st a
    '''.format(rs)
    return resultLoc, result

def _genCmpSignedByte(resultLoc, src1Loc, src2Loc, op, labelProvider):
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    rs = resultLoc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    result = '; compare signed bytes {} and {} ({})\n'.format(src1Loc, src2Loc, op)
    if l1 == 0:
        result += 'ldi b, lo({})\n'.format(s1)
    else:
        result += '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld b
        '''.format(s1)
    if l2 == 0:
        result += 'ldi a, lo({})\n'.format(s2)
    else:
        result += '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld a
        '''.format(s2)
    result += 'sub b, a\n'
    labelEnd = labelProvider.allocLabel("cmp_end")
    if op == 'lt' or op == 'gt':
        # if equal, return 0
        result += 'mov a, 0\n'
    else:
        # if equal, return 1
        result += 'ldi a, 1\n'
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jz
    '''.format(labelEnd)
    labelO = labelProvider.allocLabel("cmp_no")
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jno
    '''.format(labelO)
    # O is set
    result += 'shl b\n' # S -> C
    if op == 'lt' or op == 'le':
        # return !C
        if op == 'lt':
            result += 'ldi a, 1\n'
        # else a is already 1
        result += 'sbb a, 0'
    else:
        # return C
        if op == 'ge':
            result += 'mov a, 0\n'
        # else a is already 0
        result += 'adc a, 0\n'
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jmp
    '''.format(labelEnd)
    result += '''
    {0}:
        shl b
    '''.format(labelO)
    # O is clear
    if op == 'gt' or op == 'ge':
        # return !C
        if op == 'gt':
            result += 'ldi a, 1\n'
        # else a is already 1
        result += 'sbb a, 0\n'
    else:
        # return C
        if op == 'le':
            result += 'mov a, 0\n'
        # else a is already 0
        result += 'adc a, 0\n'
    result += '{}:\n'.format(labelEnd)
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        st a
    '''.format(rs)
    return resultLoc, result

def _genCmpSignedWord(resultLoc, src1Loc, src2Loc, op, labelProvider):
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    rs = resultLoc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    result = '; compare signed words {} and {} ({})\n'.format(src1Loc, src2Loc, op)
    if l1 == 0:
        result += 'ldi b, hi({})\n'.format(s1)
    else:
        result += '''
            ldi pl, lo({0} + 1)
            ldi ph, hi({0} + 1)
            ld b
        '''.format(s1)
    if l2 == 0:
        result += 'ldi a, hi({})\n'.format(s2)
    else:
        result += '''
            ldi pl, lo({0} + 1)
            ldi ph, hi({0} + 1)
            ld a
        '''.format(s2)
    result += 'sub b, a\n'
    labelEnd = labelProvider.allocLabel("cmp_end")
    labelCmpLo = labelProvider.allocLabel("cmp_lo")
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jz
    '''.format(labelCmpLo)
    # hi1 != hi2
    labelO = labelProvider.allocLabel("cmp_no")
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jno
    '''.format(labelO)
    # O is set
    result += 'shl b\n' # S -> C
    if op == 'lt' or op == 'le':
        # return !C
        result += 'ldi a, 1\n'
        result += 'sbb a, 0'
    else:
        # return C
        result += 'mov a, 0\n'
        result += 'adc a, 0\n'
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jmp
    '''.format(labelEnd)
    result += '''
    {0}:
        shl b
    '''.format(labelO)
    # O is clear
    if op == 'gt' or op == 'ge':
        # return !C
        result += 'ldi a, 1\n'
        result += 'sbb a, 0\n'
    else:
        # return C
        result += 'mov a, 0\n'
        result += 'adc a, 0\n'
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jmp
    '''.format(labelEnd)
    # hi1 == hi2 (= a)
    result += '{}:\n'.format(labelCmpLo)
    # if sign, compare low parts as unsigned
    if l1 == 0:
        result += 'ldi b, lo({})\n'.format(s1)
    else:
        result += '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld b
        '''.format(s1)
    if l2 == 0:
        result += 'ldi a, lo({})\n'.format(s2)
    else:
        result += '''
            ldi pl, lo({0})
            ldi ph, hi({0})
            ld a
        '''.format(s2)
    result += 'sub b, a\n'
    if op == 'le' or op == 'ge':
        # if equal, return 1
        result += 'ldi a, 1\n'
    else:
        # if equal, return 0
        result += 'mov a, 0\n'
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        jz
    '''.format(labelEnd)
    if op[0] == 'l':
        # less, return C
        if op == 'le':
            result += 'mov a, 0\n'
        # else a is already 0
        result += 'adc a, 0\n'
    else:
        # greater, return !C
        if op == 'gt':
            result += 'ldi a, 1\n'
        # else a is already 1
        result += 'sbb a, 0\n'
    result += '{}:\n'.format(labelEnd)
    result += '''
        ldi pl, lo({0})
        ldi ph, hi({0})
        st a
    '''.format(rs)
    return resultLoc, result

def _genCmpSigned(resultLoc, src1Loc, src2Loc, op, labelProvider):
    s1 = src1Loc.getSource()
    s2 = src2Loc.getSource()
    rs = resultLoc.getSource()
    l1 = src1Loc.getIndirLevel()
    l2 = src2Loc.getIndirLevel()
    t = src1Loc.getType()
    isWord = t.getSize() == 2
    if l1 == 0 and l2 == 0:
        # const and const
        if isinstance(s1, int) and isinstance(s2, int):
            raise NotImplementedError("signed const comparison")
        else:
            raise NotImplementedError("signed const comparison")
    else:
        if not isWord:
            return _genCmpSignedByte(resultLoc, src1Loc, src2Loc, op, labelProvider)
        else:
            return _genCmpSignedWord(resultLoc, src1Loc, src2Loc, op, labelProvider)

def genCmp(resultLoc, src1Loc, src2Loc, op, labelProvider):
    assert(op in {"gt", "ge", "lt", "le"})
    resultLoc = resultLoc.withType(BoolType())
    assert(resultLoc.getIndirLevel() == 1)
    if src1Loc.getType() != src2Loc.getType():
        raise SemanticError(src1Loc.getLocation(), "Incompatible types: {} and {}".format(src1Loc.getType(), src2Loc.getType()))
    t = src1Loc.getType()
    assert(t.getSize() == 1 or t.getSize() == 2)
    if t.getSign():
        return _genCmpSigned(resultLoc, src1Loc, src2Loc, op, labelProvider)
    else:
        return _genCmpUnsigned(resultLoc, src1Loc, src2Loc, op)
