from pathlib import Path
from fractions import Fraction as F
from math import gcd,comb
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-polynomial-homogeneous-probe-5e2d13bb'
out.mkdir(exist_ok=True)
src=run/'lean/Growth/I11ThreeTwoLeaves/ELeaf001.lean'
qe=run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-02.json'
s=src.read_text();j=json.loads(qe.read_text());leaf=j['E']['leaves'][1]
coeff=[]
for i in range(39):
    m=re.search(r'def gapCoeff'+str(i)+r' : ℚ := \((\d+) : ℚ\) / (\d+)',s)
    assert m
    coeff.append(F(int(m[1]),int(m[2])))
lam=F(46880976166089921083,79228162514264337593543950336)
D=1
for q in coeff+[lam]:D=D*q.denominator//gcd(D,q.denominator)
coreDen=8**30*72**8
assert D==coreDen
A=int(D*lam);assert F(A)==D*lam
ints=[int(D*q) for q in coeff]
assert all(F(a)==D*q for a,q in zip(ints,coeff))
def mul(a,b):
    v=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for k,y in enumerate(b):v[i+k]+=x*y
    return v
def linpower(y,x,n):return [comb(n,k)*x**k*y**(n-k) for k in range(n+1)]
p=mul(mul(linpower(2,3,15),linpower(6,5,15)),linpower(70,69,8))
expected=[A*comb(38,k)-p[k] for k in range(39)]
assert ints==expected
samples=0
for x in [F(-2),F(-1),F(0),F(1,3),F(1),F(2)]:
    for y in [F(-1),F(0),F(1,2),F(1),F(3)]:
        lhs=A*(x+y)**38-(3*x+2*y)**15*(5*x+6*y)**15*(69*x+70*y)**8
        rhs=sum(F(a)*x**k*y**(38-k) for k,a in enumerate(ints))
        assert lhs==rhs;samples+=1
# Locate the raw39 coefficient field in the fixed JSON without guessing a label.
hits=[]
def walk(x,path=''):
    if isinstance(x,list):
        if len(x)==39:
            try:
                vals=[F(v) for v in x]
                if vals==coeff:hits.append(path)
            except (ValueError,TypeError,ZeroDivisionError):pass
        for i,v in enumerate(x):walk(v,path+'/'+str(i))
    elif isinstance(x,dict):
        for k,v in x.items():walk(v,path+'/'+str(k))
walk(leaf)
assert F(leaf['a'])==F(1,4) and F(leaf['b'])==F(3,8)
json_raw=[(lam-F(int(v),int(leaf['bernstein_denominator'])))*comb(38,k) for k,v in enumerate(leaf['bernstein_numerators'])]
assert json_raw==coeff
hits.append('(lambda - core Bernstein numerator/denominator) * choose(38,k)')
info={'status':'EXACT_INTEGER_HOMOGENIZATION_NOT_LEAN','target':'ELeaf001.actual_gap_eq',
 'leaf_a':'1/4','leaf_b':'3/8','c':23,'d':15,'z':'1/9','total_degree':38,
 'linear_forms':['3*x+2*y','5*x+6*y','69*x+70*y'],'factor_denominators':[8,8,72],'factor_powers':[15,15,8],
 'common_denominator':str(D),'common_denominator_bits':D.bit_length(),'denominator_equals':'8^30 * 72^8',
 'scaled_lambda':str(A),'integer_coefficients':list(map(str,ints)),'max_integer_coefficient_bits':max(a.bit_length() for a in ints),
 'all39_coefficients_match_integer_product':True,'fixed_JSON_matching_coefficient_paths':hits,
 'json_leaf_keys':list(leaf),'samples':samples,'source_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),
 'json_sha256':hashlib.sha256(qe.read_bytes()).hexdigest()}
(out/'exact-homogeneous-checks.json').write_text(json.dumps(info,indent=2)+'\n',encoding='utf-8')
(out/'CHECKPOINT.md').write_text('Owner:pade_construction. Only this new directory; do not modify original leaf. Start2026-09-11 22:52:06 UTC; checkpoint23:12:06 UTC, not deadline. Exact degree38 homogenization verified. Goal is same polynomial equality without expanding all39(1-x)^k powers inside ring; no Lean run; source acceptance/memory measurement belongs to parent.\n',encoding='utf-8')
print(json.dumps({k:v for k,v in info.items() if k!='integer_coefficients'},indent=2))
