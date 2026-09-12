from pathlib import Path
import re,json,hashlib
from datetime import datetime,timezone
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists(), 'This package is frozen; do not regenerate here'
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb»'
gown=base+'.experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb»'
ns='Math.B699.I11SevenTwoScaled'
def read(p):return (run/p).read_text(encoding='utf-8')
def names(s):
    return s.replace(base+'.lean.I11TwoFiveEdge',own).replace('I11TwoFiveScaled','I11SevenTwoScaled').replace('twoFive','sevenTwo').replace('two_five','seven_two')
def numreplace(s,mp):
    return re.sub(r'\b(?:'+ '|'.join(map(re.escape,mp))+r')\b',lambda m:mp[m[0]],s)
def label(s,text):
    a=s.index('/-!')
    b=s.index('-/',a)+2
    return s[:a]+'/-! UNCOMPILED CANDIDATE. '+text+' -/'+s[b:]
def write(name,s):
    p=out/(name+'.lean')
    assert not p.exists(),'do not overwrite '+name
    p.write_text(s,encoding='utf-8')
# Same Nat.find index for both rows and both primes, with small arithmetic simplified first.
s=names(read('lean/I11TwoFiveEdge/Parameters.lean'))
s=numreplace(s,{'115572769905797':'17498099772305953','329':'285','141':'224','35000':'18000','15000':'36000','752':'940','748':'670','248':'60','252':'330','35':'18','15':'36'})
s=s.replace('2 ^ 18000','7 ^ 18000').replace('5 ^ 36000','2 ^ 36000')
s=s.replace('Y ≤ 2 ^ e','Y ≤ 7 ^ e').replace('Y ≤ 5 ^ f','Y ≤ 2 ^ f')
s=s.replace('      2 18 1000','      7 18 1000').replace('      5 36 1000','      2 36 1000')
s=label(s,'Fixed original seven-two selector; M=285, G threshold=224, extraction 18m/36m.')
write('Parameters',s)
# The source correspondence is proved from accepted actual rows and the Hom identity.
s=read('lean/I11TwoFive/Prefix.lean')
s=s[:s.index('/-- Both rows fit')]+ 'end Math.B699.I11TwoFivePrefix\n'
s=s.replace('Math.B699.I11TwoFivePrefix',ns)
s=s.replace('4 * m','5 * m').replace('(m - 1)','(4 * m - 1)').replace('m + rowDelta','4 * m + rowDelta')
s=s.replace('= 5 * m','= 9 * m').replace('^ (5 * m)','^ (9 * m)')
s=s.replace('have hv : m - 1 + 1 = m','have hv : 4 * m - 1 + 1 = 4 * m')
s=s.replace('3 128','1 49').replace('(3 / 128)','(1 / 49)')
s=s.replace('128 :','49 :').replace('125 :','48 :').replace('(3 : ℚ)','(1 : ℚ)')
s=s.replace('(49 : ℤ) - 3 = 125','(49 : ℤ) - 1 = 48')
s=s.replace('actualQ 5 4','actualQ 9 5').replace('actualE 5 4','actualE 9 5')
s=s.replace('(5 : ℕ) - 4 = 1','(9 : ℕ) - 5 = 4')
s=s.replace('The exact D=3 remainder; no 3-power is suppressed in this equality.',
            'The exact D=1 remainder, with y=49 and y-x=48.')
s=label(s,'Actual source rows for c9d5 and z=1/49. Each delta has its own qContent; no identity is assumed.')
s=s.replace('Int.cast_ofNat','Int.cast_one, Int.cast_ofNat')
write('SourceRows',s)
# Actual gcd and scaled Q/E bounds.
s=names(read('lean/I11TwoFiveEdge/ActualRows.lean'))
s=s.replace(base+'.lean.I11TwoFive.Prefix',own+'.SourceRows')
s=s.replace(base+'.lean.I11DivisorTwoFive.Threshold',gown+'.Threshold')
s=s.replace('open Math.B699.I11TwoFivePrefix Math.B699.PadeGrowthNormalization','open Math.B699.PadeGrowthNormalization')
s=s.replace('(602791 / 500000 : ℚ) ^ 4','(1302991 / 1000000 : ℚ) ^ 5')
s=s.replace('actualQ 5 4','actualQ 9 5').replace('actualE 5 4','actualE 9 5').replace('(3 / 128)','(1 / 49)')
s=s.replace('4 * m','5 * m').replace('(m - 1)','(4 * m - 1)').replace('m + rowDelta','4 * m + rowDelta')
s=s.replace('^ (5 * m)','^ (9 * m)')
s=s.replace('3 128','1 49').replace('128 :','49 :').replace('125 :','48 :')
s=s.replace('141 ≤ m','224 ≤ m')
s=s.replace('Math.B699.I11DivisorTwoFive.qContent_seven_two_lower','Math.B699.I11DivisorSevenTwo.qContent_seven_two_lower')
s=s.replace('Math.B699.I11TwoFivePrefix.actual_q_content_identity','actual_q_content_identity')
s=s.replace('Math.B699.I11TwoFivePrefix.actual_remainder','actual_remainder')
s=s.replace('((49 : ℚ) ^ 4 * BQ)','((49 : ℚ) ^ 5 * BQ)')
# Correct the source Q exponent that the generic power replacement otherwise changes.
s=s.replace('(49 : ℚ) ^ (9 * m - rowDelta row)','(49 : ℚ) ^ (5 * m - rowDelta row)')
a=s.index('theorem e_content_identity')
b=s.index('theorem actual_q_content_bound',a)
s=s[:a]+'''theorem e_content_identity (m : ℕ) (hm : 1 ≤ m) (row : Bool) :
    content m row * (rowError m row : ℚ) =
      (49 : ℚ) ^ (4 * m + rowDelta row - 1) * eEval m row := by
  simpa only [content, rowError, qRow, eEval, one_pow, mul_one] using
    actual_remainder m hm row

'''+s[b:]
# Q bound upper exponent is 5m, while rowError's total degree stays 9m.
a=s.index('theorem actual_q_content_bound')
b=s.index('theorem actual_e_content_bound',a)
q=s[a:b].replace('(49 : ℚ) ^ (9 * m)','(49 : ℚ) ^ (5 * m)')
s=s[:a]+q+s[b:]
a=s.index('theorem actual_e_content_bound')
b=s.index('/-- The actual nonzero-row',a)
s=s[:a]+'''theorem actual_e_content_bound (m : ℕ) (hm : 224 ≤ m) (row : Bool)
    (BE : ℚ) (hBE : 0 ≤ BE) (hE : |eEval m row| ≤ BE ^ m) :
    contentBase ^ m * |(rowError m row : ℚ)| ≤ ((49 : ℚ) ^ 4 * BE) ^ m := by
  have h := Math.B699.I11ScaledBounds.normalized_abs_bound
    (content m row) (contentBase ^ m) ((49 : ℚ) ^ (4 * m + rowDelta row - 1))
    (rowError m row) (eEval m row) (BE ^ m)
    (le_of_lt (pow_pos contentBase_pos m)) (content_lower m hm row)
    (by positivity) (e_content_identity m (by omega) row) hE
  have hexp : 4 * m + rowDelta row - 1 ≤ 4 * m := by
    rcases rowDelta_cases row with hr | hr <;> rw [hr] <;> omega
  calc
    _ ≤ (49 : ℚ) ^ (4 * m + rowDelta row - 1) * BE ^ m := h
    _ ≤ (49 : ℚ) ^ (4 * m) * BE ^ m :=
      mul_le_mul_of_nonneg_right
        (pow_le_pow_right₀ (by norm_num : (1 : ℚ) ≤ 49) hexp) (pow_nonneg hBE m)
    _ = ((49 : ℚ) ^ 4 * BE) ^ m := by rw [mul_pow, ← pow_mul]

'''+s[b:]
a=s.index('/-- The actual nonzero-row')
s=s[:a]+'''/-- Actual determinant nonvanishing supplies a row; b=3^(9m) stays in the gap. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 18 * m ≤ e) (hf : 36 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(7 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (49 : ℤ) ^ (9 * m) ≤
      (3 : ℤ) ^ (9 * m) * 24 * |qRow m row| +
        |rowError m row| * |(2 : ℤ) ^ (f - 36 * m) * (C : ℤ)| := by
  have hp : (49 : ℕ) ^ (9 * m) = (7 : ℕ) ^ (18 * m) := by
    calc
      _ = ((7 : ℕ) ^ 2) ^ (9 * m) := by norm_num
      _ = (7 : ℕ) ^ (18 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (16 : ℕ) ^ (9 * m) = (2 : ℕ) ^ (36 * m) := by
    calc
      _ = ((2 : ℕ) ^ 4) ^ (9 * m) := by norm_num
      _ = (2 : ℕ) ^ (36 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (49 : ℕ) ^ (9 * m) * (7 ^ (e - 18 * m) * A) = 7 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 7 e (18 * m) A he
  have hQnat : (16 : ℕ) ^ (9 * m) * (2 ^ (f - 36 * m) * C) = 2 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 f (36 * m) C hf
  have hPint : (49 : ℤ) ^ (9 * m) * ((7 : ℤ) ^ (e - 18 * m) * (A : ℤ)) =
      (7 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (16 : ℤ) ^ (9 * m) * ((2 : ℤ) ^ (f - 36 * m) * (C : ℤ)) =
      (2 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(49 : ℤ) ^ (9 * m) * ((7 : ℤ) ^ (e - 18 * m) * (A : ℤ)) -
      (16 : ℤ) ^ (9 * m) * ((2 : ℤ) ^ (f - 36 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (2 : ℤ) ^ (f - 36 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (2 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (5 * m) (4 * m - 1) (by omega) 1 49
    (r := (49 : ℤ) ^ (9 * m)) (s := (16 : ℤ) ^ (9 * m))
    (a := 1) (b := (3 : ℤ) ^ (9 * m))
    (U := (7 : ℤ) ^ (e - 18 * m) * (A : ℤ))
    (V := (2 : ℤ) ^ (f - 36 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (pow_pos (by decide) _) hV hgap'
  have hsb : (16 : ℤ) ^ (9 * m) * (3 : ℤ) ^ (9 * m) = (48 : ℤ) ^ (9 * m) := by
    rw [← mul_pow]
    norm_num
  exact ⟨row, by simpa only [qRow, rowError, mul_one, hsb] using hlower⟩

end Math.B699.I11SevenTwoScaled
'''
s=s.replace('(1 : ℚ) ≤ 128','(1 : ℚ) ≤ 49')
s=label(s,'Actual c9d5 source/G/scaling. G threshold 224; Q scale 49^5; E scale 49^4; b=3^(9m).')
write('ActualRows',s)
# Generic actual growth proof uses the newly proved fixed factorial bound.
s=names(read('lean/I11TwoFiveEdge/GrowthInputs.lean'))
s=s.replace(base+'.lean.Factorial.Factorial5D4',own+'.Factorial9D5')
s=s.replace(' Math.B699.I11TwoFivePrefix','')
s=s.replace('5 4','9 5').replace('_5_4','_9_5').replace('(3 / 128)','(1 / 49)').replace('delta ≤ 4','delta ≤ 5')
s=s.replace('141 ≤ m','224 ≤ m')
s=s.replace('3471657440109699659204039683 / 79228162514264337593543950336','19015678853391498507418691 / 79228162514264337593543950336')
s=s.replace('305863978762465520211566521 / 79228162514264337593543950336','18567076935738840000672813 / 19807040628566084398385987584')
s=label(s,'Real c9d5 Q/E growth from the fixed factorial theorem, four trees, and actual m=1 caps.')
write('GrowthInputs',s)
# Prefer the accepted nontrivial b-power template rather than dropping its factor.
s=read('lean/I11Scaled/ScaledGap.lean')
s=s.replace(base+'.lean.I11Scaled.ActualBounds',own+'.ActualRows')
s=s.replace('namespace Math.B699.I11ScaledBounds','namespace '+ns+'\nopen Math.B699.I11ScaledBounds')
s=s.replace('end Math.B699.I11ScaledBounds','end '+ns)
s=re.sub(r'^#print axioms.*\n','',s,flags=re.M)
s=s.replace('129 ≤ m','224 ≤ m').replace('(5 * m)','(9 * m)')
s=s.replace('(625 :','(49 :').replace('(2187 :','(16 :').replace('(4375 :','(49 :')
s=s.replace('(2 : ℚ) ^ 5','(3 : ℚ) ^ 9')
s=s.replace('(49 : ℚ) ^ 5 * contentBase','(49 : ℚ) ^ 9 * contentBase')
s=s.replace('* 2187) ^ 5','* 16) ^ 9')
s=s.replace('(49 : ℚ) ^ 3 * BQ','(49 : ℚ) ^ 5 * BQ')
s=s.replace('(49 : ℚ) ^ 2 * BE','(49 : ℚ) ^ 4 * BE')
s=s.replace('(2 : ℚ) ^ (9 * m)','(3 : ℚ) ^ (9 * m)').replace('(2 : ℤ) ^ (9 * m)','(3 : ℤ) ^ (9 * m)')
s=s.replace('2 ^ (9 * m)','3 ^ (9 * m)')
s=s.replace('0 < 2187','0 < 16')
s=s.replace('qRate_eq_original','qRate_eq_seed')
s=s.replace('(49 : ℚ) ^ 2 * contentBase / ((7 : ℚ) ^ 3 * 2 ^ 5 * BQ)',
            '(49 : ℚ) ^ 4 * contentBase / ((3 : ℚ) ^ 9 * BQ)')
s=s.replace('(0 : ℚ) < 2187','(0 : ℚ) < 16')
s=label(s,'Both strict gap terms from actual rows. Positive Rat cancellation; Q keeps 3^(9m), E scale 49^4.')
write('ScaledGap',s)
# Four finite m1 polynomial caps and two fixed rate comparisons.
s=names(read('lean/I11TwoFiveEdge/SmallCertificates.lean'))
s=s.replace(' Math.B699.I11TwoFivePrefix','')
s=s.replace('5 4','9 5').replace('(3 / 128)','(1 / 49)')
s=label(s,'Low-degree actual m=1 caps and fixed rational rate bounds. The 285th-power certificate stays explicit.')
write('SmallCertificates',s)
# Index extraction and contradiction; same m for both deltas, no exponent b upper bound.
s=names(read('lean/I11TwoFiveEdge/SelectedEdge.lean'))
s=numreplace(s,{'329':'285','141':'224','35000':'18000','15000':'36000','752':'940','748':'670','248':'60','252':'330','35':'18','15':'36'})
s=s.replace('2 ^ 18000','7 ^ 18000').replace('5 ^ 36000','2 ^ 36000')
s=s.replace('2 ^ e','7 ^ e').replace('5 ^ f','2 ^ f')
s=s.replace('(2 : ℤ) ^ e','(7 : ℤ) ^ e').replace('(5 : ℤ) ^ f','(2 : ℤ) ^ f')
s=s.replace('5 ^ (f','2 ^ (f').replace('(5 : ℤ) ^ (f','(2 : ℤ) ^ (f')
s=s.replace('(125 :','(16 :').replace('(128 :','(49 :')
s=s.replace('(5 * m)','(9 * m)')
s=s.replace('((5 : ℕ) ^ 3)','((2 : ℕ) ^ 4)').replace('(5 : ℕ) ^ (36','(2 : ℕ) ^ (36')
s=s.replace('extract_prime_factor 5 f','extract_prime_factor 2 f')
s=s.replace('      24 * |qRow m row| +','      (3 : ℤ) ^ (9 * m) * 24 * |qRow m row| +')
s=label(s,'Conditional raw-growth consumer, later discharged by FixedEdge. Actual G/Hom/determinant are constructed.')
write('SelectedEdge',s)
# Final entry: only four finite trees, eight numeric statements, and ordinary window data.
s=names(read('lean/I11TwoFiveEdge/FixedEdge.lean'))
s=s.replace('open Math.B699.I11TwoFivePrefix ','open ')
s=s.replace('5 4','9 5').replace('(3 / 128)','(1 / 49)')
s=numreplace(s,{'329':'285','35000':'18000','15000':'36000','752':'940','748':'670','248':'60','252':'330'})
s=s.replace('2 ^ 18000','7 ^ 18000').replace('5 ^ 36000','2 ^ 36000')
s=s.replace('2 ^ e','7 ^ e').replace('5 ^ f','2 ^ f')
s=s.replace('(2 : ℤ) ^ e','(7 : ℤ) ^ e').replace('(5 : ℤ) ^ f','(2 : ℤ) ^ f')
s=label(s,'Fixed seven-two cofactor edge: four actual trees plus eight explicit numerical certificates and ordinary windows.')
write('FixedEdge',s)
print('Wrote 8 non-factorial modules; no Lean run.')
