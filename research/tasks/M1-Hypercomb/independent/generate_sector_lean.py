from pathlib import Path
import sympy as S
base=Path('research/tasks/M1-Hypercomb/independent')
a,e,s,q=S.symbols('a e s q')
res=S.sympify((base/'sector-resultant.txt').read_text())
F=S.Poly(S.cancel(res/(4096*a**4*(a+1)**4)),s)
H=3*a*a+4*a*e+3*a+e*e+2*e+1
J=S.cancel(F.nth(1)/(6*H**2))
F3=S.cancel(F.nth(3)/(a+1))
G4=(a+1)**2*(9*a*a+12*a+2*e+2)
G5=(a+1)**3
L2=S.expand((F.nth(2)-16*G4-64*G5).subs(a,q+1))
assert all(c>0 for c in S.Poly(L2,q,e).coeffs())
def lean(expr): return str(S.expand(expr)).replace('**',' ^ ').replace('*',' * ')
text='''import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity.Basic

/- Exact sign certificate only: root continuity and the graph reduction are not formalized here. -/
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
namespace M1Sector
variable {K : Type*} [CommRing K] [LinearOrder K] [IsStrictOrderedRing K]
'''
for name,expr,args in [('h',H,'a e'),('j',J,'a e'),('f2',F.nth(2),'a e'),('f3Inner',F3,'a e'),('lower2',L2,'q e')]:
 text+=f'\ndef {name} ({args} : K) : K :=\n  {lean(expr)}\n'
text+='''
def g4 (a e : K) : K := (a + 1) ^ 2 * (9 * a ^ 2 + 12 * a + 2 * e + 2)
def g5 (a : K) : K := (a + 1) ^ 3

def certificate (a e s : K) : K :=
  9 * (h a e) ^ 4 + 6 * (h a e) ^ 2 * j a e * s + f2 a e * s ^ 2 +
    (a + 1) * f3Inner a e * s ^ 3 + (a + 1) ^ 2 * e ^ 2 * s ^ 4 -
    g4 a e * s ^ 4 - g5 a * s ^ 5

theorem decomposition (q e s : K) :
    certificate (q + 1) e s =
      9 * (h (q + 1) e) ^ 4 + 6 * (h (q + 1) e) ^ 2 * j (q + 1) e * s +
      lower2 q e * s ^ 2 + (q + 2) * f3Inner (q + 1) e * s ^ 3 +
      (q + 2) ^ 2 * e ^ 2 * s ^ 4 +
      g4 (q + 1) e * (16 * s ^ 2 - s ^ 4) +
      g5 (q + 1) * (64 * s ^ 2 - s ^ 5) := by
  unfold certificate h j f2 f3Inner lower2 g4 g5
  ring

theorem certificate_pos (q e s : K) (hq : 0 ≤ q) (he : 0 ≤ e)
    (hs : 0 ≤ s) (hs4 : s ≤ 4) : 0 < certificate (q + 1) e s := by
  have hs2 : s ^ 2 ≤ 16 := by
    calc s ^ 2 ≤ (4 : K) ^ 2 := pow_le_pow_left₀ hs hs4 2
         _ = 16 := by norm_num
  have hs3 : s ^ 3 ≤ 64 := by
    calc s ^ 3 ≤ (4 : K) ^ 3 := pow_le_pow_left₀ hs hs4 3
         _ = 64 := by norm_num
  have hb4 : 0 ≤ 16 * s ^ 2 - s ^ 4 := by
    apply sub_nonneg.mpr
    calc s ^ 4 = s ^ 2 * s ^ 2 := by ring
         _ ≤ 16 * s ^ 2 := mul_le_mul_of_nonneg_right hs2 (sq_nonneg s)
  have hb5 : 0 ≤ 64 * s ^ 2 - s ^ 5 := by
    apply sub_nonneg.mpr
    calc s ^ 5 = s ^ 3 * s ^ 2 := by ring
         _ ≤ 64 * s ^ 2 := mul_le_mul_of_nonneg_right hs3 (sq_nonneg s)
  rw [decomposition]
  unfold h j lower2 f3Inner g4 g5
  positivity

#print axioms decomposition
#print axioms certificate_pos
end M1Sector
'''
(base/'SectorCertificate.lean').write_text(text,encoding='utf-8')
print('wrote',len(text),'characters; lower2 terms',len(S.Poly(L2,q,e).terms()))
