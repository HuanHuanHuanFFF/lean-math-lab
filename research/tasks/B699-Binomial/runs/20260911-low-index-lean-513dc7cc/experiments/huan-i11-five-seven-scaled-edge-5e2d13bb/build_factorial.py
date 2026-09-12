from pathlib import Path
from fractions import Fraction as F
from math import factorial
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-five-seven-scaled-edge-5e2d13bb'
out.mkdir(exist_ok=True)
assert not (out/'FREEZE.json').exists()
src=run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb/Factorial9D5.lean'
qe=run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-04.json'
data=json.loads(qe.read_text());fc=data['factorial_certificate']
assert (fc['c'],fc['d'])==(11,7)
A=18;d=7;B=4
bn,bd=map(int,fc['beta'].split('/'))
def mul(a,b):
    z=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):z[i+j]+=x*y
    return z
def prod(items):
    z=[1]
    for p in items:z=mul(z,p)
    return z
N=prod([[A+i,A] for i in range(1,A)])
W=prod([[d+i,d] for i in range(1,d)]*2+[[B+i,B] for i in range(1,B)])
lhs=[A*bd*x for x in mul([3,1],N)]
rhs=[bn*B*d*d*x for x in mul(prod([[2,1]]*3),W)]
res=[rhs[i]-lhs[i] for i in range(len(rhs))]
while res[-1]==0:res.pop()
co=list(map(int,fc['positive_certificate']['primitive_coefficients_ascending']))
content=int(fc['positive_certificate']['content'])
assert res==[content*x for x in co] and min(co)>0
beta=F(bn,bd)
def term(delta,m):return F(factorial(A*m-delta),factorial(d*m-delta)**2*factorial(B*m+delta-1))
checks=[]
for delta in [0,1]:
    K=2*term(delta,1)/beta
    assert K==F(fc['K'][delta]) and K<F(1,2)
    for m in range(1,25):
        rat=F(A,B*d*d*m*(m+1))
        for i in range(1,A):rat*=A*m+i
        for i in range(1,d):rat/=F((d*m+i)**2)
        for i in range(1,B):rat/=F(B*m+i)
        assert term(delta,m+1)==term(delta,m)*rat
        assert rat<=beta*F((m+1)**2,m*(m+2))
        assert term(delta,m)<=K*beta**m*F(m,m+1)<beta**m/2
    checks.append({'delta':delta,'F1':str(term(delta,1)),'K':str(K),'m':[1,24]})
s=src.read_text().replace('_9_5','_11_7').replace('9 5','11 7')
a=s.index('/-- Actual factorial ratio')
b=s.index('theorem ratio_bound_11_7',a)
horner=str(co[-1])
for coeff in reversed(co[:-1]):horner=f'{coeff} + x * ({horner})'
numer=' * '.join(f'({A} * m + {i})' for i in range(1,A))
denom=' * '.join([f'({d} * m + {i})' for i in range(1,d)]*2+[f'({B} * m + {i})' for i in range(1,B)])
prefix=f'''/-- Exact fixed (11,7) actual factorial ratio. -/
def numerator_11_7 (m : ℚ) : ℚ :=
  {numer}

def denominator_11_7 (m : ℚ) : ℚ :=
  {denom}

def ratio_11_7 (m : ℚ) : ℚ :=
  {A} * numerator_11_7 m /
    ({B} * {d} ^ 2 * m * (m + 1) * denominator_11_7 m)

/-- Degree-16 positive residual, recomputed from the exact actual factorial ratio. -/
theorem certificate_11_7 (x : ℚ) (hx : 0 ≤ x) :
    {A} * {bd} * (x + 3) * numerator_11_7 (x + 1) ≤
      {bn} * {B} * {d} ^ 2 * (x + 2) ^ 3 * denominator_11_7 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ {content} * ({horner}) := by positivity
    _ = {bn} * {B} * {d} ^ 2 * (x + 2) ^ 3 * denominator_11_7 (x + 1) -
        {A} * {bd} * (x + 3) * numerator_11_7 (x + 1) := by
      unfold numerator_11_7 denominator_11_7
      ring

'''
s=s[:a]+prefix+s[b:]
s=s.replace('(43406276662336 : ℚ) / 9765625',f'({bn} : ℚ) / {bd}')
a=s.index('  change ',s.index('theorem factorial_step_zero'))
b=s.index('\ntheorem factorial_step_bound_zero',a)
step=f'''  change ((({A} * (k + 2)).factorial : ℕ) : ℚ) /
      ((((({d} * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        ((({B} * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    ((({A} * (k + 1)).factorial : ℕ) : ℚ) /
      ((((({d} * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        ((({B} * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_11_7 ((k : ℚ) + 1)
  have ha : {A} * (k + 2) = {A} * (k + 1) + {A} := by omega
  have hd : {d} * (k + 2) = {d} * (k + 1) + {d} := by omega
  have hb : {B} * (k + 2) - 1 = ({B} * (k + 1) - 1) + {B} := by omega
  have hp : ({B} * (k + 1) - 1) + 1 = {B} * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast ({A} * (k + 1)) {A},
    factorial_add_cast ({d} * (k + 1)) {d},
    factorial_add_cast ({B} * (k + 1) - 1) {B}, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_11_7 numerator_11_7 denominator_11_7
  field_simp
  <;> ring
'''
s=s[:a]+step+s[b:]
s=s.replace('(5 : ℚ) ^ 2 / ((14 : ℚ) * (4 : ℚ))','(7 : ℚ) ^ 2 / ((18 : ℚ) * (4 : ℚ))')
for old,K in [('(12568359375 : ℚ) / 27682574402',F(fc['K'][0])),('(314208984375 : ℚ) / 1550224166512',F(fc['K'][1]))]:
    s=s.replace(old,f'({K.numerator} : ℚ) / {K.denominator}')
s=s.replace('row01','row04').replace('row-01','row-04').replace('(c,d)=(9,5)','(c,d)=(11,7)').replace('degree-12','degree-16')
p=out/'Factorial11D7.lean';assert not p.exists();p.write_text(s,encoding='utf-8')
own='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-five-seven-scaled-edge-5e2d13bb»'
roots=['Math.B699.ElementaryFactorialBound.'+x for x in re.findall(r'^theorem (\w+)',s,re.M)]
(out/'FactorialAudit.lean').write_text('import '+own+'.Factorial11D7\n\n'+'\n'.join('#print axioms '+x for x in roots)+'\n',encoding='utf-8')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
report={'status':'EXACT_PYTHON_UNCOMPILED_LEAN','ratio_degree':len(res)-1,'positive_coefficients':len(res),'cases':checks,
 'factorial_sha256':sha(p),'qe_sha256':sha(qe),'template_sha256':sha(src),'qLambda':data['Q']['lambda'],'eLambda':data['E']['lambda'],
 'audit_roots':roots,'new_Lean_invocations':0}
(out/'factorial-exact-checks.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
(out/'CHECKPOINT.md').write_text('Owner: pade_construction. Only this directory is writable. Start 2026-09-11 21:17:26 UTC; first checkpoint 21:37:26 UTC, not total deadline. Actual Factorial11D7 prefix complete and uncompiled; edge chain follows. No original B coverage increase; no Lean/Git run.\n',encoding='utf-8')
print(json.dumps(report,indent=2))
