from lark import Transformer, v_args, Tree
from value import Value
from type import IntType
from location import Location

class SubscriptTransformer(Transformer):
    # Transform a[x] -> *(a + x)

    @v_args(tree = True)
    def subscript(self, t):
        return Tree("deref", [Tree("add", t.children, t.meta)], t.meta)

def _transformDecl(type, subtree):
    return Tree(subtree.data, [type] + subtree.children, subtree.meta)

class DeclarationTransformer(Transformer):
    # Transform t a, b, c; -> t a; t b; t c;

    @v_args(tree = Tree)
    def declaration(self, t):
        type = t.children[0]
        return Tree("block", [_transformDecl(type, c) for c in t.children[1:]], t.meta)


class CompoundTransformer(Transformer):
    @v_args(tree = True)
    def compound_assignment(self, t):
        l, cop, r = t.children
        op = {"+=": "add",
            "-=": "sub",
            "*=": "mul",
            "/=": "div",
            "%=": "mod",
            ">>=": "shr",
            "<<=": "shl",
            "&=": "band",
            "|=": "bor",
            "^=": "bxor",
            "&&=": "land",
            "||=": "lor"}[cop]
        return Tree("assignment", [l, Tree(op, [l, r], t.meta)], t.meta)

@v_args(tree = True)
class ForTransformer(Transformer):
    def for_condition(self, t):
        return Value(Location(0,0,0,0), IntType(False, 1), 0, 1)

    def for_loop(self, t):
        condition = t.children[1]
        body = None
        if len(t.children[2].children) > 0:
            body = Tree("block", [t.children[3], t.children[2].children[0]], t.meta)
        else:
            body = t.children[3]
        if len(t.children[0].children) > 0:
            return Tree("block", [t.children[0].children[0], Tree("while_loop", [condition, body], t.meta)], t.meta)
        else:
            return Tree("while_loop", [condition, body], t.meta)
