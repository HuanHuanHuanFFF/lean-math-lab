from pathlib import Path
from fractions import Fraction
import json
B=Path(__file__).resolve().parents[2];O=Path(__file__).resolve().parent
data=json.loads((B/'experiments/main/source-line-dual.json').read_text())
coords=[(int(p['r']),int(p['s']),int(Fraction(p['weight'])*5),int(p['source'])) for p in data['dual']]
expected=[(3,0,2,77),(3,1,3,74),(4,0,5,67),(5,0,3,51),(5,1,2,54),(6,2,3,48),(6,3,2,41),(7,1,2,34),(7,2,3,39),(8,2,1,33),(8,3,4,39)]
assert coords==expected
line=[];vertical=[]
for a in range(9):
    line.append(sum(w*(2 if 2*sh==r else 1) for r,sh,w,_ in coords if a==sh or a==r-sh))
for a in range(3,9):vertical.append(sum(w for r,sh,w,_ in coords if r==a))
assert line==[10,7,10,10,10,10,3,0,0]
assert vertical==[5]*6
rhs=sum(w*bound for r,sh,w,bound in coords)
assert rhs==1572
assert list(map(lambda x:Fraction(x)*5,data['column_loads']))==line+vertical
out=dict(accepted='Pure nine-source-line/six-vertical product lower bound only, conditional on fixed listed source lower orders',weighted_source_coordinates=coords,lambda5_by_source_lines=line,lambda5_by_verticals=vertical,rhs=rhs,integer_lower_degree=(rhs+4)//5,degree_difference_coefficients=[10-x for x in line],proof='At ordinary points each incident ell_a has order 1; at selected center (6,3) ell_3=t has (1,2)-order 2; each incident vertical has order 1. Weighted degree of ell_a is 2, of vertical is 1; all orders add in products.')
(O/'independent-line-product.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out))
