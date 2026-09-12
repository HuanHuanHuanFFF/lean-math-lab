from pathlib import Path
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-polynomial-homogeneous-probe-5e2d13bb'
assert not (out/'FREEZE.json').exists()
src=run/'lean/Growth/I11ThreeTwoLeaves/ELeaf001.lean';original=src.read_text()
data=json.loads((out/'exact-homogeneous-checks.json').read_text())
D=data['common_denominator'];A=data['scaled_lambda'];coeff=data['integer_coefficients']
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-polynomial-homogeneous-probe-5e2d13bb»'
ns='Math.B699.I11ELeaf001Homogeneous'
oldns='Math.B699.I11ThreeTwoGrowth.ELeaf001'
def write(n,s):
    p=out/(n+'.lean');assert not p.exists();p.write_text(s,encoding='utf-8')
prefix=original.split('theorem seed_parameter_bounds',1)[0]
prefix=prefix.replace('namespace '+oldns,'namespace '+ns)
prefix+='end '+ns+'\n'
write('Data',prefix)
intterms=' +\n  '.join(f'({a} : R) * (x ^ {k} * y ^ {38-k})' for k,a in enumerate(coeff))
hom=f'''import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/-! UNCOMPILED. A degree38 homogeneous identity over every commutative ring.
All coefficients are integers; x,y are independent. No 1-x expression appears. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
universe u
namespace {ns}

def denominator : ℕ := {D}
def scaledLambda : ℕ := {A}

def integerExpansion {{R : Type u}} [CommRing R] (x y : R) : R :=
  {intterms}

theorem homogeneous_identity {{R : Type u}} [CommRing R] (x y : R) :
    (scaledLambda : R) * (x + y) ^ 38 -
      (3 * x + 2 * y) ^ 15 * (5 * x + 6 * y) ^ 15 * (69 * x + 70 * y) ^ 8 =
      integerExpansion x y := by
  unfold scaledLambda integerExpansion
  simp only [Nat.cast_ofNat] <;> ring

end {ns}
'''
write('Homogeneous',hom)
terms=' +\n  '.join(f'gapCoeff{k} * (x ^ {k} * y ^ {38-k})' for k in range(39))
coefs=', '.join(f'gapCoeff{k}' for k in range(39))
reduction=f'''import {own}.Data
import {own}.Homogeneous
import Mathlib.Algebra.GroupWithZero.Defs

/-! UNCOMPILED. Dehomogenize without applying ring to an expression containing
high powers of 1-x. Ring is confined to linear forms and one monomial in
three independent variables. The coefficient scaling uses mul_add/mul_assoc. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
namespace {ns}
open Polynomial Math.B699.PadeMoment Math.B699.GrowthLeaf
open Math.B699.I11ThreeTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def rationalExpansion (x y : ℚ) : ℚ :=
  {terms}

def rationalHomogeneousGap (x y : ℚ) : ℚ :=
  lam * (x + y) ^ 38 -
    ((3 * x + 2 * y) / 8) ^ 15 * ((5 * x + 6 * y) / 8) ^ 15 *
      ((69 * x + 70 * y) / 72) ^ 8

theorem denominator_ne_zero : (denominator : ℚ) ≠ 0 := by
  norm_num [denominator]

theorem scaled_lam : (denominator : ℚ) * lam = (scaledLambda : ℚ) := by
  norm_num [denominator, lam, scaledLambda]

/-- Only one monomial in independent U,V,W is normalized. -/
theorem scaled_core (U V W : ℚ) :
    (denominator : ℚ) * ((U / 8) ^ 15 * (V / 8) ^ 15 * (W / 72) ^ 8) =
      U ^ 15 * V ^ 15 * W ^ 8 := by
  norm_num [denominator, div_pow] <;> ring

/-- The 39 scalar equalities are normalized; their monomials are not expanded. -/
theorem scaled_expansion (x y : ℚ) :
    (denominator : ℚ) * rationalExpansion x y = integerExpansion x y := by
  unfold rationalExpansion integerExpansion
  simp only [mul_add, ← mul_assoc] <;>
    norm_num [denominator, {coefs}]

theorem scaled_homogeneous_gap (x y : ℚ) :
    (denominator : ℚ) * rationalHomogeneousGap x y =
      (denominator : ℚ) * rationalExpansion x y := by
  calc
    _ = (scaledLambda : ℚ) * (x + y) ^ 38 -
        (3 * x + 2 * y) ^ 15 * (5 * x + 6 * y) ^ 15 * (69 * x + 70 * y) ^ 8 := by
      unfold rationalHomogeneousGap
      rw [mul_sub, ← mul_assoc, scaled_lam, scaled_core]
    _ = integerExpansion x y := homogeneous_identity x y
    _ = (denominator : ℚ) * rationalExpansion x y := (scaled_expansion x y).symm

theorem leafMap_eval (x : ℚ) :
    leafMap.eval x = (3 * x + 2 * (1 - x)) / 8 := by
  norm_num [leafMap, affine, leafA, leafB, Polynomial.eval_add, Polynomial.eval_mul,
    Polynomial.eval_sub, Polynomial.eval_C, Polynomial.eval_X, Polynomial.eval_one] <;> ring

theorem complement_eval (x : ℚ) :
    1 - leafMap.eval x = (5 * x + 6 * (1 - x)) / 8 := by
  rw [leafMap_eval]
  ring

theorem factor_eval (x : ℚ) :
    1 - (1 / 9 : ℚ) * leafMap.eval x = (69 * x + 70 * (1 - x)) / 72 := by
  rw [leafMap_eval]
  ring

theorem seedCore_eval (t : ℚ) :
    seedCore.eval t = t ^ 15 * (1 - t) ^ 15 * (1 - (1 / 9 : ℚ) * t) ^ 8 := by
  simp only [seedCore, eSeedCore, eCore, eFactor, eSeedC, eSeedD, eSeedZ,
    show (23 : ℕ) - 15 = 8 by decide,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_sub,
    Polynomial.eval_C, Polynomial.eval_X, Polynomial.eval_one]

theorem localCore_eval (x : ℚ) :
    localCore.eval x =
      ((3 * x + 2 * (1 - x)) / 8) ^ 15 *
        ((5 * x + 6 * (1 - x)) / 8) ^ 15 *
          ((69 * x + 70 * (1 - x)) / 72) ^ 8 := by
  simp only [localCore, Polynomial.eval_comp]
  rw [seedCore_eval, complement_eval, factor_eval, leafMap_eval]

theorem gapExpansion_eval (x : ℚ) :
    gapExpansion.eval x = rationalExpansion x (1 - x) := by
  simp only [gapExpansion, rationalExpansion, bernsteinMonomial,
    Polynomial.eval_add, Polynomial.eval_mul, Polynomial.eval_pow,
    Polynomial.eval_sub, Polynomial.eval_C, Polynomial.eval_X, Polynomial.eval_one,
    pow_zero, pow_one, one_mul, mul_one]

theorem rational_gap_value (x : ℚ) :
    lam - localCore.eval x = rationalExpansion x (1 - x) := by
  have h := scaled_homogeneous_gap x (1 - x)
  have hsum : x + (1 - x) = 1 := by ring
  unfold rationalHomogeneousGap at h
  rw [hsum, one_pow, mul_one, ← localCore_eval x] at h
  exact mul_left_cancel₀ denominator_ne_zero h

/-- Same fixed leaf polynomial equality, with no identity assumption. -/
theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  simp only [Polynomial.eval_sub, Polynomial.eval_C]
  rw [gapExpansion_eval]
  exact rational_gap_value x

end {ns}
'''
write('Reduction',reduction)
# Independently named full leaf to test transfer to exactly the original definition layout.
replacement=original.replace(oldns,'Math.B699.I11ELeaf001Replacement')
a=replacement.index('theorem actual_gap_eq')
b=replacement.index('\ntheorem leafMap_eq_path',a)
replacement=replacement[:a]+f'''theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  exact {ns}.actual_gap_eq
'''+replacement[b:]
replacement='import '+own+'.Reduction\n'+replacement
write('ReplacementLeaf',replacement)
for mod,roots in [
 ('Homogeneous',[ns+'.denominator',ns+'.scaledLambda',ns+'.integerExpansion',ns+'.homogeneous_identity']),
 ('Reduction',[ns+'.'+x for x in re.findall(r'^theorem (\w+)',reduction,re.M)]),
 ('ReplacementLeaf',['Math.B699.I11ELeaf001Replacement.'+x for x in re.findall(r'^theorem (\w+)',replacement,re.M)])]:
    write(mod+'Audit','import '+own+'.'+mod+'\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n')
(out/'replacement-body.txt').write_text('Add import '+own+'.Reduction\n\nReplace only the original actual_gap_eq proof body by:\n  exact '+ns+'.actual_gap_eq\n\nDefinition-layout transfer is separately exercised by ReplacementLeaf.lean; no original leaf is imported into the helper.\n',encoding='utf-8')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
print(json.dumps({m:sha(out/(m+'.lean')) for m in ['Data','Homogeneous','Reduction','ReplacementLeaf']},indent=2))
