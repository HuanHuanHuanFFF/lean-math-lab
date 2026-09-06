"""Compare the independently generated gcdex and cofactor certificates."""
import ast
import json
import re
from pathlib import Path
from verify_sector_integer import add, mul, scale, power

names=['c1','c2','c3','c4','u']


def parse(text):
    def go(node):
        if isinstance(node,ast.Constant) and isinstance(node.value,int):
            return {(0,)*5:node.value} if node.value else {}
        if isinstance(node,ast.Name) and node.id in names:
            return {tuple(int(n==node.id) for n in names):1}
        if isinstance(node,ast.UnaryOp) and isinstance(node.op,ast.USub): return scale(go(node.operand),-1)
        if isinstance(node,ast.BinOp):
            if isinstance(node.op,ast.Add): return add(go(node.left),go(node.right))
            if isinstance(node.op,ast.Sub): return add(go(node.left),scale(go(node.right),-1))
            if isinstance(node.op,ast.Mult): return mul(go(node.left),go(node.right))
            if isinstance(node.op,ast.Pow) and isinstance(node.right,ast.Constant): return power(go(node.left),node.right.value)
        raise ValueError(ast.dump(node))
    return go(ast.parse(text.replace('^','**').replace('\n',' ').strip(),mode='eval').body)


root=Path(__file__).parent.parent
other=json.loads((root/'independent'/'bezout.json').read_text(encoding='utf-8'))
lean=(root/'lean'/'BoundaryElimination.lean').read_text(encoding='utf-8-sig')
ui=re.search(r'def bezoutI .*?:=\s*(.*?)\n\ndef bezoutR',lean,re.S).group(1)
vr=re.search(r'def bezoutR .*?:=\s*(.*?)\n\ntheorem bezout_identity',lean,re.S).group(1)
u,v=parse(ui),parse(vr)
assert not add(u,parse(other['U']))
assert not add(v,parse(other['V']))
report={'status':'exact equality assertions passed','method':'pure integer AST polynomial parser',
        'relation':'cofactor U=-gcdex U; cofactor V=-gcdex V',
        'U_terms':len(u),'V_terms':len(v)}
(root/'experiments'/'bezout-path-comparison.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(json.dumps(report,indent=2))
