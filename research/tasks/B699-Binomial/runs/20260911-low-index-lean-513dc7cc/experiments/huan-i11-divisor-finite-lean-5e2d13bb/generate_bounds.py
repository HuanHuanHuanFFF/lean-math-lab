from pathlib import Path
import json
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
rough=json.loads((RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/D-rough-step-certificates.json').read_text())['tracks']
plan=json.loads((RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json').read_text())['selected_plan']
row=next(r for r in plan['rows'] if(r['seed']['c'],r['seed']['d'])==(5,3))

def horner(values):
    s=values[-1]
    for a in reversed(values[:-1]):s=f'({a} + x * {s})'
    return s

parts=['''import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-i11-divisor-finite-lean-5e2d13bb».Actual

/-! UNCOMPILED. Literal certificates reconstruct the actual ratio polynomials.
Every final step theorem below uses the actual factorial identity in Actual. -/

namespace Math.B699.I11DivisorFiveThree

''']
for delta,label,cap in [(0,'zero','Zero'),(1,'one','One')]:
    r=next(t for t in rough if(t['c'],t['d'],t['delta'])==(5,3,delta))
    values=r['rough_certificate']['primitive_coefficients_ascending']
    content=r['rough_certificate']['content']
    parts.append(f'''theorem rough_certificate_{label} (x : ℚ) (hx : 0 ≤ x) :
    64 * denominator (x + 1) * (x + 2) ^ 2 ≤
      27 * numerator{cap} (x + 1) * (x + 3) ^ 2 := by
  apply sub_nonneg.mp
  calc
    0 ≤ {content} * {horner(values)} := by positivity
    _ = 27 * numerator{cap} (x + 1) * (x + 3) ^ 2 -
        64 * denominator (x + 1) * (x + 2) ^ 2 := by
      unfold numerator{cap} denominator
      ring

theorem ratio_{label}_rough (m : ℚ) (hm : 1 ≤ m) :
    infiniteRate * ((m + 1) / (m + 2)) ^ 2 ≤ ratio{cap} m := by
  have hmpos : 0 < m := lt_of_lt_of_le (by norm_num) hm
  have hden : 0 < denominator m := denominator_pos m hmpos
  have hmp : m + 2 ≠ 0 := ne_of_gt (by positivity : 0 < m + 2)
  have hcert := rough_certificate_{label} (m - 1) (sub_nonneg.mpr hm)
  have hs1 : m - 1 + 1 = m := by ring
  have hs2 : m - 1 + 2 = m + 1 := by ring
  have hs3 : m - 1 + 3 = m + 2 := by ring
  simp only [hs1, hs2, hs3] at hcert
  apply sub_nonneg.mp
  have hid : ratio{cap} m - infiniteRate * ((m + 1) / (m + 2)) ^ 2 =
      (27 * numerator{cap} m * (m + 2) ^ 2 - 64 * denominator m * (m + 1) ^ 2) /
        (27 * denominator m * (m + 2) ^ 2) := by
    unfold ratio{cap} infiniteRate
    field_simp [ne_of_gt hden, hmp]
    <;> ring
  rw [hid]
  exact div_nonneg (sub_nonneg.mpr hcert) (by positivity)

theorem divisor_{label}_rough_step (m : ℕ) (hm : 1 ≤ m) :
    divisor{cap} m * (infiniteRate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      divisor{cap} (m + 1) := by
  rw [divisor_{label}_step m hm]
  exact mul_le_mul_of_nonneg_left (ratio_{label}_rough (m : ℚ) (by exact_mod_cast hm))
    (divisor_{label}_pos m).le

''')
for delta,label,cap,K in [(0,'zero','Zero',29),(1,'one','One',1)]:
    r=next(t for t in row['D_tracks'] if t['delta']==delta)
    cert=r['constant_step_certificate']
    parts.append(f'''theorem middle_certificate_{label} (x : ℚ) (hx : 0 ≤ x) :
    2289993275428338969 * denominator (x + {K}) ≤
      1000000000000000000 * numerator{cap} (x + {K}) := by
  apply sub_nonneg.mp
  calc
    0 ≤ {cert['content']} * {horner(cert['primitive_coefficients_ascending'])} := by positivity
    _ = 1000000000000000000 * numerator{cap} (x + {K}) -
        2289993275428338969 * denominator (x + {K}) := by
      unfold numerator{cap} denominator
      ring

theorem ratio_{label}_middle (m : ℚ) (hm : {K} ≤ m) :
    middleRate ≤ ratio{cap} m := by
  have hden : 0 < denominator m := denominator_pos m (by linarith)
  have hcert := middle_certificate_{label} (m - {K}) (sub_nonneg.mpr hm)
  have hs : m - {K} + {K} = m := by ring
  simp only [hs] at hcert
  have hmid : middleRate = (2289993275428338969 : ℚ) / 1000000000000000000 := by
    norm_num [middleRate, middleBase]
  rw [hmid, ratio{cap}]
  apply (div_le_div_iff₀ (by norm_num) hden).2
  nlinarith only [hcert]

theorem divisor_{label}_middle_step (m : ℕ) (hm : {K} ≤ m) :
    divisor{cap} m * middleRate ≤ divisor{cap} (m + 1) := by
  rw [divisor_{label}_step m (by omega)]
  exact mul_le_mul_of_nonneg_left (ratio_{label}_middle (m : ℚ) (by exact_mod_cast hm))
    (divisor_{label}_pos m).le

''')
parts.append('end Math.B699.I11DivisorFiveThree\n')
(OUT/'Bounds.lean').write_text(''.join(parts),encoding='utf-8')
print('Generated Bounds.lean from frozen integer coefficients.')
