from pathlib import Path
import json,re,hashlib
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
OWN=PKG+'.experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb»'
row=json.loads((RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json').read_text())['selected_plan']['rows'][1]
rough=next(t for t in json.loads((RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/D-rough-step-certificates.json').read_text())['tracks'] if (t['c'],t['d'],t['delta'])==(9,5,0))
assert row['L_target']=='1302991/1000000' and row['L_mid']=='660547/500000' and row['D_threshold_m0']==224

def horner(cs):
 s=str(cs[-1])
 for c in reversed(cs[:-1]):s=f'{c} + x * ({s})'
 return s

def factors(fs): return ' * '.join(f'({a} * x'+(f' + {b}' if b else '')+')' for b,a in fs)

sources={}
sources['Adjacent']=r'''import @PKG@.lean.RationalDivisor.Content
import @PKG@.lean.Factorial.FactorialCommon

/-! UNCOMPILED. Adjacent actual rational factorial divisors.
This compares D only; no equality or monotonicity of the two qContents is claimed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.RationalFactorialDivisor
open Math.B699.ElementaryFactorialBound

theorem rationalDivisor_adjacent_odd_even (u r : ℕ) (hu : 1 ≤ u) :
    rationalDivisor (u - 1) (2 * r + 2) =
      ((u : ℚ) / 2) * rationalDivisor u (2 * r + 1) := by
  obtain ⟨k, rfl⟩ : ∃ k, u = k + 1 := Nat.exists_eq_add_of_le' hu
  have hf₀ : (2 * r + 1) / 2 = r := by omega
  have hf₁ : (2 * r + 2) / 2 = r + 1 := by omega
  have hs : k + (r + 1) = (k + 1) + r := by omega
  simp only [rationalDivisor, factorialNumerator, factorialDenominator,
    Nat.add_sub_cancel, hf₀, hf₁, hs, Nat.cast_mul]
  have he : 2 * r + 2 = (2 * r + 1) + 1 := by omega
  rw [he, factorial_add_cast r 1, factorial_add_cast (2 * r + 1) 1,
    factorial_add_cast k 1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  have hkfac : (((k.factorial : ℕ) : ℚ)) ≠ 0 := by positivity
  have hrfac : ((((2 * r + 1).factorial : ℕ) : ℚ)) ≠ 0 := by positivity
  have hk : (k : ℚ) + 1 ≠ 0 := by positivity
  have hr : (2 : ℚ) * (r : ℚ) + 1 + 1 ≠ 0 := by positivity
  field_simp [hkfac, hrfac, hk, hr]
  <;> ring

theorem rationalDivisor_adjacent_odd_even_ge (u r : ℕ) (hu : 2 ≤ u) :
    rationalDivisor u (2 * r + 1) ≤ rationalDivisor (u - 1) (2 * r + 2) := by
  rw [rationalDivisor_adjacent_odd_even u r (by omega)]
  have huQ : (2 : ℚ) ≤ (u : ℚ) := by exact_mod_cast hu
  have hfactor : (1 : ℚ) ≤ (u : ℚ) / 2 := by linarith
  calc
    rationalDivisor u (2 * r + 1) = 1 * rationalDivisor u (2 * r + 1) := by ring
    _ ≤ ((u : ℚ) / 2) * rationalDivisor u (2 * r + 1) :=
      mul_le_mul_of_nonneg_right hfactor (rationalDivisor_pos u (2 * r + 1)).le

end Math.B699.RationalFactorialDivisor
'''
sources['Actual']=r'''import @OWN@.Adjacent

/-! UNCOMPILED. Fixed c9d5 delta0 actual factorial sequence and its actual step.
The adjacent delta1 value is built from the proved rationalDivisor relation. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo
open Math.B699.RationalFactorialDivisor Math.B699.ElementaryFactorialBound

def targetBase : ℚ := 1302991 / 1000000
def middleBase : ℚ := 660547 / 500000
def targetRate : ℚ := targetBase ^ 5
def middleRate : ℚ := middleBase ^ 5
def infiniteRate : ℚ := 823543 / 200000
def blockRatio : ℚ := middleRate / targetRate

def divisor (m : ℕ) : ℚ := rationalDivisor (5 * m) (4 * m - 1)
def numerator (x : ℚ) : ℚ := @NUM_FACTORS@
def denominator (x : ℚ) : ℚ := @DEN_FACTORS@
def ratio (x : ℚ) : ℚ := numerator x / denominator x

theorem target_base_pos : 0 < targetBase := by norm_num [targetBase]
theorem target_rate_pos : 0 < targetRate := by norm_num [targetRate, targetBase]
theorem middle_rate_pos : 0 < middleRate := by norm_num [middleRate, middleBase]
theorem target_rate_le_infinite : targetRate ≤ infiniteRate := by
  norm_num [targetRate, targetBase, infiniteRate]
theorem block_ratio_ge_one : 1 ≤ blockRatio := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]
theorem block_linear_bound : (2 : ℚ) ≤ 1 + 15 * (blockRatio - 1) := by
  norm_num [blockRatio, middleRate, targetRate, middleBase, targetBase]

theorem divisor_pos (m : ℕ) : 0 < divisor m := rationalDivisor_pos _ _

theorem denominator_pos (x : ℚ) (hx : 1 ≤ x) : 0 < denominator x := by
  have hxpos : 0 < x := by linarith
  unfold denominator
  positivity

theorem divisor_formula (m : ℕ) (hm : 1 ≤ m) :
    divisor m =
      (((7 * m - 1).factorial : ℕ) : ℚ) * (((2 * m - 1).factorial : ℕ) : ℚ) /
        ((((5 * m).factorial : ℕ) : ℚ) * (((4 * m - 1).factorial : ℕ) : ℚ)) := by
  have hf : (4 * m - 1) / 2 = 2 * m - 1 := by omega
  have hn : 5 * m + (2 * m - 1) = 7 * m - 1 := by omega
  simp only [divisor, rationalDivisor, factorialNumerator, factorialDenominator,
    hf, hn, Nat.cast_mul]

theorem divisor_initial : divisor 1 = 1 := by
  norm_num [divisor, rationalDivisor, factorialNumerator, factorialDenominator, Nat.factorial]

theorem divisor_step_succ (k : ℕ) :
    divisor (k + 2) = divisor (k + 1) * ratio ((k : ℚ) + 1) := by
  rw [divisor_formula (k + 2) (by omega), divisor_formula (k + 1) (by omega)]
  have hn : 7 * (k + 2) - 1 = (7 * (k + 1) - 1) + 7 := by omega
  have hf : 2 * (k + 2) - 1 = (2 * (k + 1) - 1) + 2 := by omega
  have hu : 5 * (k + 2) = (5 * (k + 1)) + 5 := by omega
  have hv : 4 * (k + 2) - 1 = (4 * (k + 1) - 1) + 4 := by omega
  have hn1 : (7 * (k + 1) - 1) + 1 = 7 * (k + 1) := by omega
  have hf1 : (2 * (k + 1) - 1) + 1 = 2 * (k + 1) := by omega
  have hv1 : (4 * (k + 1) - 1) + 1 = 4 * (k + 1) := by omega
  rw [hn, hf, hu, hv,
    factorial_add_cast (7 * (k + 1) - 1) 7,
    factorial_add_cast (2 * (k + 1) - 1) 2,
    factorial_add_cast (5 * (k + 1)) 5,
    factorial_add_cast (4 * (k + 1) - 1) 4,
    hn1, hf1, hv1]
  simp only [Nat.ascFactorial_succ, Nat.ascFactorial_zero,
    Nat.cast_mul, Nat.cast_add, Nat.cast_one, Nat.cast_ofNat]
  unfold ratio numerator denominator
  field_simp
  <;> ring

theorem divisor_step (m : ℕ) (hm : 1 ≤ m) :
    divisor (m + 1) = divisor m * ratio (m : ℚ) := by
  obtain ⟨k, rfl⟩ : ∃ k, m = k + 1 := Nat.exists_eq_add_of_le' hm
  simpa only [Nat.cast_add, Nat.cast_one] using divisor_step_succ k

theorem divisor_adjacent_eq (m : ℕ) (hm : 1 ≤ m) :
    rationalDivisor (5 * m - 1) (4 * m) = ((5 * m : ℕ) : ℚ) / 2 * divisor m := by
  have ho : 2 * (2 * m - 1) + 1 = 4 * m - 1 := by omega
  have he : 2 * (2 * m - 1) + 2 = 4 * m := by omega
  simpa only [divisor, ho, he] using
    rationalDivisor_adjacent_odd_even (5 * m) (2 * m - 1) (by omega)

theorem divisor_le_adjacent (m : ℕ) (hm : 1 ≤ m) :
    divisor m ≤ rationalDivisor (5 * m - 1) (4 * m) := by
  have ho : 2 * (2 * m - 1) + 1 = 4 * m - 1 := by omega
  have he : 2 * (2 * m - 1) + 2 = 4 * m := by omega
  simpa only [divisor, ho, he] using
    rationalDivisor_adjacent_odd_even_ge (5 * m) (2 * m - 1) (by omega)

end Math.B699.I11DivisorSevenTwo
'''
sources['Certificates']=r'''import @OWN@.Actual

/-! UNCOMPILED. Original frozen c9d5 delta0 rough and middle certificates.
Every displayed finite polynomial identity is proved with ring, not assumed. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo

theorem rough_certificate (x : ℚ) (hx : 0 ≤ x) :
    823543 * denominator (x + 1) * (x + 1 + 1) ^ 2 ≤
      200000 * numerator (x + 1) * (x + 1 + 2) ^ 2 := by
  apply sub_nonneg.mp
  calc
    0 ≤ 280 * (@ROUGH_POLY@) := by positivity
    _ = 200000 * numerator (x + 1) * (x + 1 + 2) ^ 2 -
        823543 * denominator (x + 1) * (x + 1 + 1) ^ 2 := by
      unfold numerator denominator
      ring

theorem middle_certificate (x : ℚ) (hx : 0 ≤ x) :
    125753077556736983843483347507 * denominator (x + 44) ≤
      31250000000000000000000000000 * numerator (x + 44) := by
  apply sub_nonneg.mp
  calc
    0 ≤ 40 * (@MIDDLE_POLY@) := by positivity
    _ = 31250000000000000000000000000 * numerator (x + 44) -
        125753077556736983843483347507 * denominator (x + 44) := by
      unfold numerator denominator
      ring

end Math.B699.I11DivisorSevenTwo
'''
sources['Bounds']=r'''import @OWN@.Certificates

/-! UNCOMPILED. Actual rationalDivisor one-step lower bounds, with all
positive denominators discharged from the explicit fixed factor products. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo

theorem ratio_rough (x : ℚ) (hx : 1 ≤ x) :
    infiniteRate * ((x + 1) / (x + 2)) ^ 2 ≤ ratio x := by
  have hden : 0 < denominator x := denominator_pos x hx
  have hmp : x + 2 ≠ 0 := ne_of_gt (by linarith : 0 < x + 2)
  have hcert := rough_certificate (x - 1) (sub_nonneg.mpr hx)
  have hs : x - 1 + 1 = x := by ring
  simp only [hs] at hcert
  apply sub_nonneg.mp
  have hid : ratio x - infiniteRate * ((x + 1) / (x + 2)) ^ 2 =
      (200000 * numerator x * (x + 2) ^ 2 -
        823543 * denominator x * (x + 1) ^ 2) /
      (200000 * denominator x * (x + 2) ^ 2) := by
    unfold ratio infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_rough_step (m : ℕ) (hm : 1 ≤ m) :
    divisor m * (infiniteRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      divisor (m + 1) := by
  rw [divisor_step m hm]
  exact mul_le_mul_of_nonneg_left
    (ratio_rough (m : ℚ) (by exact_mod_cast hm)) (divisor_pos m).le

theorem ratio_middle (x : ℚ) (hx : 44 ≤ x) : middleRate ≤ ratio x := by
  have hden : 0 < denominator x := denominator_pos x (by linarith)
  have hcert := middle_certificate (x - 44) (sub_nonneg.mpr hx)
  have hs : x - 44 + 44 = x := by ring
  simp only [hs] at hcert
  have hmid : middleRate =
      (125753077556736983843483347507 : ℚ) / 31250000000000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  simpa only [mul_comm (numerator x) (31250000000000000000000000000 : ℚ)] using hcert

theorem divisor_middle_step (m : ℕ) (hm : 44 ≤ m) :
    divisor m * middleRate ≤ divisor (m + 1) := by
  rw [divisor_step m (by omega)]
  exact mul_le_mul_of_nonneg_left
    (ratio_middle (m : ℚ) (by exact_mod_cast hm)) (divisor_pos m).le

end Math.B699.I11DivisorSevenTwo
'''
sources['Threshold']=r'''import @OWN@.Bounds
import @PKG@.lean.Growth.ElementaryRate

/-! UNCOMPILED. Fixed original threshold 224 for the actual c9d5 qContent.
Only delta0 needs recurrence certificates; delta1 uses the proved D comparison.
No desired G lower bound, recurrence, height, or Padé edge is an input. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorSevenTwo
open Math.B699.ElementaryRate Math.B699.RationalFactorialDivisor
open Math.B699.PadeConstruction

def normalized (m : ℕ) : ℚ := divisor m / targetRate ^ m

theorem normalized_pos (m : ℕ) : 0 < normalized m :=
  div_pos (divisor_pos m) (pow_pos target_rate_pos m)

theorem normalized_rough_step (m : ℕ) (hm : 1 ≤ m) :
    normalized m * (1 * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      normalized (m + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right target_rate_le_infinite
    (sq_nonneg ((((m : ℚ) + 1) / ((m : ℚ) + 2))))
  have hstep : divisor m *
      (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ divisor (m + 1) :=
    (mul_le_mul_of_nonneg_left hcoef (divisor_pos m).le).trans (divisor_rough_step m hm)
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  have hd : (m : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (divisor m * (targetRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2)) /
        targetRate ^ (m + 1) := by
      unfold normalized
      rw [pow_succ targetRate m]
      field_simp [ht, hp, hd]
      <;> ring
    _ ≤ divisor (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right hstep (pow_pos target_rate_pos _).le
    _ = normalized (m + 1) := rfl

theorem normalized_middle_step (m : ℕ) (hm : 44 ≤ m) :
    normalized m * blockRatio ≤ normalized (m + 1) := by
  have ht : targetRate ≠ 0 := ne_of_gt target_rate_pos
  have hp : targetRate ^ m ≠ 0 := pow_ne_zero _ ht
  calc
    _ = (divisor m * middleRate) / targetRate ^ (m + 1) := by
      unfold normalized blockRatio
      rw [pow_succ targetRate m]
      field_simp [ht, hp]
      <;> ring
    _ ≤ divisor (m + 1) / targetRate ^ (m + 1) :=
      div_le_div_of_nonneg_right (divisor_middle_step m hm) (pow_pos target_rate_pos _).le
    _ = normalized (m + 1) := rfl

/-- Only D(1)=1 and the fifth power of a fixed rational base are evaluated. -/
theorem finite_binary_base :
    1 ≤ (normalized 1 * ((1 : ℚ) + 1) ^ 2 / ((44 : ℚ) + 1) ^ 2) * (2 : ℚ) ^ 11 := by
  rw [normalized, divisor_initial]
  norm_num [targetRate, targetBase]

theorem normalized_binary_base : 1 ≤ normalized 44 * (2 : ℚ) ^ 11 := by
  have h := lower_telescoping_from_step (F := normalized) (R := 1) (k0 := 1)
    (by norm_num) (fun m hm => normalized_rough_step m hm) 43
  have htel : normalized 1 * ((1 : ℚ) + 1) ^ 2 / ((44 : ℚ) + 1) ^ 2 ≤ normalized 44 := by
    simpa only [one_pow, mul_one, show (1 : ℕ) + 43 = 44 by decide] using h
  exact finite_binary_base.trans (mul_le_mul_of_nonneg_right htel (by positivity))

theorem normalized_gt_one (m : ℕ) (hm : 224 ≤ m) : 1 < normalized m := by
  have hn : 15 * (11 + 1) ≤ m - 44 := by omega
  have h := strict_threshold_from_step (F := normalized) (R := blockRatio)
    (K := 44) (T := 11) (B := 15) (n := m - 44)
    block_ratio_ge_one (normalized_pos 44).le
    (fun k hk => normalized_middle_step k hk)
    normalized_binary_base block_linear_bound hn
  have hindex : 44 + (m - 44) = m := by omega
  simpa only [hindex] using h

theorem divisor_lower (m : ℕ) (hm : 224 ≤ m) : targetBase ^ (5 * m) < divisor m := by
  have h := normalized_gt_one m hm
  change 1 < divisor m / targetRate ^ m at h
  have hmul := (lt_div_iff₀ (pow_pos target_rate_pos m)).mp h
  simpa only [one_mul, targetRate, ← pow_mul] using hmul

theorem rationalDivisor_seven_two_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) <
      rationalDivisor (5 * m - delta) (4 * m + delta - 1) := by
  rcases hdelta with rfl | rfl
  · simpa only [targetBase, divisor, Nat.sub_zero, Nat.add_zero] using divisor_lower m hm
  · have h := (divisor_lower m hm).trans_le (divisor_le_adjacent m (by omega))
    simpa only [targetBase, Nat.add_sub_cancel] using h

/-- The actual gcd has its own unconditional D lower bound in each delta row. -/
theorem qContent_seven_two_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) <
      (qContent (5 * m - delta) (4 * m + delta - 1) (5 * m - delta) : ℚ) := by
  exact (rationalDivisor_seven_two_lower delta m hdelta hm).trans_le
    (rationalDivisor_le_qContent (5 * m - delta) (4 * m + delta - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) < (qContent (5 * m) (4 * m - 1) (5 * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using
    qContent_seven_two_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) < (qContent (5 * m - 1) (4 * m) (5 * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using qContent_seven_two_lower 1 m (Or.inr rfl) hm

theorem bftContent_seven_two_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : 224 ≤ m) :
    (1302991 / 1000000 : ℚ) ^ (5 * m) < (bftContent 9 5 m delta : ℚ) := by
  have hv : 9 * m - (5 * m - delta) - 1 = 4 * m + delta - 1 := by
    rcases hdelta with h | h <;> omega
  simpa only [bftContent, hv] using qContent_seven_two_lower delta m hdelta hm

end Math.B699.I11DivisorSevenTwo
'''
rep={'@PKG@':PKG,'@OWN@':OWN,'@NUM_FACTORS@':factors(rough['numerator_factors']),
 '@DEN_FACTORS@':factors(rough['denominator_factors']),
 '@ROUGH_POLY@':horner(rough['rough_certificate']['primitive_coefficients_ascending']),
 '@MIDDLE_POLY@':horner(row['D_tracks'][0]['constant_step_certificate']['primitive_coefficients_ascending'])}
all_roots=[];metadata=[]
for module,text in sources.items():
 for x,y in rep.items():text=text.replace(x,y)
 assert not re.search('@[A-Z_]+@',text)
 (OUT/(module+'.lean')).write_text(text,encoding='utf-8')
 ns='Math.B699.RationalFactorialDivisor' if module=='Adjacent' else 'Math.B699.I11DivisorSevenTwo'
 names=re.findall(r'^(?:theorem|def)\s+(\w+)',text,re.M)
 roots=[ns+'.'+x for x in names]
 (OUT/(module+'Audit.lean')).write_text('import '+OWN+'.'+module+'\n\n'+'\n'.join('#print axioms '+x for x in roots)+'\n',encoding='utf-8')
 all_roots+=roots
 metadata.append({'module':module,'namespace':ns,'audit_roots':roots,'source_sha256':hashlib.sha256((OUT/(module+'.lean')).read_bytes()).hexdigest(),
 'future_target':'lean/I11DivisorSevenTwo/'+module+'.lean'})
(OUT/'Audit.lean').write_text('import '+OWN+'.Threshold\n\n'+'\n'.join('#print axioms '+x for x in all_roots)+'\n',encoding='utf-8')
(OUT/'AUDIT_PLAN.json').write_text(json.dumps({'status':'UNCOMPILED_ALL_PROOF_TEXT_PRESENT','implementation_chain':list(sources),
 'modules':metadata,'all_public_axiom_roots':all_roots,'allowed_axioms':['propext','Classical.choice','Quot.sound'],
 'Lean_runs':0,'new_B_original_results':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Wrote',len(sources),'complete candidate layers and',len(all_roots),'audit roots; no Lean invoked.')
