from pathlib import Path
from fractions import Fraction as F
from math import factorial
from datetime import datetime,timezone
import json,hashlib,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'
out.mkdir(exist_ok=True)
assert not (out/'FREEZE.json').exists(), 'This package is frozen; do not regenerate here'
src=run/'lean/Factorial/Factorial5D4.lean'
qe=run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-01.json'
data=json.loads(qe.read_text())
fc=data['factorial_certificate']
def mul(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return c
def prod(items):
    r=[1]
    for p in items:r=mul(r,p)
    return r
bn,bd=map(int,fc['beta'].split('/'))
N=prod([[14+i,14] for i in range(1,14)])
W=prod([[5+i,5] for i in range(1,5)]*2+[[4+i,4] for i in range(1,4)])
lhs=[14*bd*x for x in mul([3,1],N)]
rhs=[bn*4*25*x for x in mul(prod([[2,1]]*3),W)]
res=[rhs[i]-lhs[i] for i in range(len(rhs))]
while res and res[-1]==0:res.pop()
coeff=list(map(int,fc['positive_certificate']['primitive_coefficients_ascending']))
content=int(fc['positive_certificate']['content'])
assert res==[content*x for x in coeff],(res[:2],coeff[:2])
beta=F(bn,bd)
def term(d,m):return F(factorial(14*m-d),factorial(5*m-d)**2*factorial(4*m+d-1))
checks=[]
for delta in (0,1):
    K=2*term(delta,1)/beta
    assert str(K)==fc['K'][delta]
    assert K<F(1,2)
    for m in range(1,33):
        rat=F(14,4*25*m*(m+1))
        for i in range(1,14):rat*=14*m+i
        for i in range(1,5):rat/=F((5*m+i)**2)
        for i in range(1,4):rat/=F(4*m+i)
        assert term(delta,m+1)==term(delta,m)*rat
        assert rat<=beta*F((m+1)**2,m*(m+2))
        assert term(delta,m)<=K*beta**m*F(m,m+1)<beta**m/2
    checks.append({'delta':delta,'F1':str(term(delta,1)),'K':str(K),'m_checked':[1,32]})
s=src.read_text().replace('_5_4','_9_5').replace('5 4','9 5')
start=s.index('/-- Exact numerator')
end=s.index('theorem ratio_bound_9_5')
horner=str(coeff[-1])
for a in reversed(coeff[:-1]):horner=f'{a} + x * ({horner})'
Ntxt=' * '.join(f'(14 * m + {i})' for i in range(1,14))
Wtxt=' * '.join([f'(5 * m + {i})' for i in range(1,5)]*2+[f'(4 * m + {i})' for i in range(1,4)])
new=f'''/-- Actual factorial ratio numerator after endpoint cancellation. -/
def numerator_9_5 (m : ℚ) : ℚ :=
  {Ntxt}

def denominator_9_5 (m : ℚ) : ℚ :=
  {Wtxt}

def ratio_9_5 (m : ℚ) : ℚ :=
  14 * numerator_9_5 m /
    (4 * 5 ^ 2 * m * (m + 1) * denominator_9_5 m)

/-- Fixed row01 residual, exactly reconstructed from the frozen coefficient data. -/
theorem certificate_9_5 (x : ℚ) (hx : 0 ≤ x) :
    14 * {bd} * (x + 3) * numerator_9_5 (x + 1) ≤
      {bn} * 4 * 5 ^ 2 * (x + 2) ^ 3 * denominator_9_5 (x + 1) := by
  apply sub_nonneg.mp
  calc
    0 ≤ {content} * ({horner}) := by positivity
    _ = {bn} * 4 * 5 ^ 2 * (x + 2) ^ 3 * denominator_9_5 (x + 1) -
        14 * {bd} * (x + 3) * numerator_9_5 (x + 1) := by
      unfold numerator_9_5 denominator_9_5
      ring

'''
s=s[:start]+new+s[end:]
s=s.replace('(387420489 : ℚ) / 65536',f'({bn} : ℚ) / {bd}')
start=s.index('  change ',s.index('theorem factorial_step_zero'))
end=s.index('\ntheorem factorial_step_bound_zero',start)
step='''  change (((14 * (k + 2)).factorial : ℕ) : ℚ) /
      (((((5 * (k + 2)).factorial : ℕ) : ℚ) ^ 2) *
        (((4 * (k + 2) - 1).factorial : ℕ) : ℚ)) =
    (((14 * (k + 1)).factorial : ℕ) : ℚ) /
      (((((5 * (k + 1)).factorial : ℕ) : ℚ) ^ 2) *
        (((4 * (k + 1) - 1).factorial : ℕ) : ℚ)) * ratio_9_5 ((k : ℚ) + 1)
  have ha : 14 * (k + 2) = 14 * (k + 1) + 14 := by omega
  have hd : 5 * (k + 2) = 5 * (k + 1) + 5 := by omega
  have hb : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hp : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  rw [ha, hd, hb, factorial_add_cast (14 * (k + 1)) 14,
    factorial_add_cast (5 * (k + 1)) 5,
    factorial_add_cast (4 * (k + 1) - 1) 4, hp]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio_9_5 numerator_9_5 denominator_9_5
  field_simp
  <;> ring
'''
s=s[:start]+step+s[end:]
s=s.replace('(4 : ℚ) ^ 2 / ((9 : ℚ) * (1 : ℚ))','(5 : ℚ) ^ 2 / ((14 : ℚ) * (4 : ℚ))')
s=s.replace('(9175040 : ℚ) / 43046721','(12568359375 : ℚ) / 27682574402')
s=s.replace('(146800640 : ℚ) / 387420489','(314208984375 : ℚ) / 1550224166512')
cmt0=s.index('/-!')
cmt1=s.index('-/',cmt0)+2
s=s[:cmt0]+'''/-!
UNCOMPILED CANDIDATE. Fixed original i11 row01, (c,d)=(9,5).
The actual factorial recurrence and the degree-12 positive residual are proved
here. No factorial bound or G bound is assumed. Each delta keeps its own K.
Frozen input: FINAL_PLAN row01 and qe-certificates/row-01.json.
Only a growth prerequisite; no original B699 index is settled by this file.
-/'''+s[cmt1:]
s=s.replace('namespace Math.B699.ElementaryFactorialBound','set_option autoImplicit false\nset_option relaxedAutoImplicit false\n\nnamespace Math.B699.ElementaryFactorialBound',1)
path=out/'Factorial9D5.lean'
assert not path.exists(),'Frozen factorial prefix already exists'
path.write_text(s,encoding='utf-8')
ns='Math.B699.ElementaryFactorialBound.'
roots=[ns+x for x in re.findall(r'^theorem\s+(\w+)',s,re.M)]
prefix='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb»'
(out/'FactorialAudit.lean').write_text('import '+prefix+'.Factorial9D5\n\n'+'\n'.join('#print axioms '+x for x in roots)+'\n',encoding='utf-8')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
report={'state':'UNCOMPILED','checks':'exact Python integers/rationals, not Lean proof','input_row01_sha256':sha(qe),'template_sha256':sha(src),'degree':len(res)-1,'positive_coefficients':len(res),'initial_constants':checks,'source_sha256':sha(path),'audit_roots':roots}
(out/'factorial-exact-checks.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
(out/'CHECKPOINT.md').write_text('# (7,2) actual edge\n\nOwner: pade_construction. Only this directory may be changed.\nStart: 2026-09-11 20:16:36 UTC; first checkpoint 20:36:36 UTC, not total deadline.\n\nFactorial9D5 is complete proof text, uncompiled. Its actual ratio, 13 positive coefficients and both K values were checked exactly; 64 delta/m finite checks passed. The remaining work is the actual row/G/scaling chain, retaining 3^(9m) and E scale 49^4. Final edge may keep only four GrowthTrees, eight finite numeric certificates and ordinary windows. Original B remains 0/19.\n',encoding='utf-8')
print(json.dumps(report,indent=2))
