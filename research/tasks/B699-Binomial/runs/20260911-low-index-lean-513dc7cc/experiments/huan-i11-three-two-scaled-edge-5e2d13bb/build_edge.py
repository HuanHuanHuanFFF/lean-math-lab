from pathlib import Path
import re,json
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-three-two-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
prev=base+'.experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb»'
own=base+'.experiments.«huan-i11-three-two-scaled-edge-5e2d13bb»'
def read(n):return (run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'/(n+'.lean')).read_text()
def names(s):
    return s.replace(prev,own).replace('I11SevenTwo','I11ThreeTwo').replace('sevenTwo','threeTwo').replace('seven_two','three_two')
def num(s,mp):return re.sub(r'\b(?:'+'|'.join(map(re.escape,mp))+r')\b',lambda m:mp[m[0]],s)
def label(s,txt):
    a=s.index('/-!');b=s.index('-/',a)+2
    return s[:a]+'/-! UNCOMPILED CANDIDATE. '+txt+' -/'+s[b:]
def write(n,s):
    p=out/(n+'.lean');assert not p.exists();p.write_text(s,encoding='utf-8')
# Fixed selector constants, no giant power defeq.
s=names(read('Parameters'))
s=num(s,{'17498099772305953':'37002653975761602583641821923','285':'162','224':'160',
 '18000':'46000','36000':'69000','940':'774','670':'732','60':'226','330':'268','18':'46','36':'69'})
s=s.replace('7 ^ 46000','3 ^ 46000').replace('Y ≤ 7 ^ e','Y ≤ 3 ^ e').replace('      7 46','      3 46')
s=label(s,'Fixed original row02, M162 and G threshold160. Same least exponent extracts 46m and 69m.')
write('Parameters',s)
# Actual x=1 homogeneous source correspondence.
s=names(read('SourceRows'))
s=s.replace('9 5','23 15').replace('5 * m','15 * m').replace('4 * m','8 * m').replace('9 * m','23 * m')
s=s.replace('1 49','1 9').replace('49 :','9 :').replace('48 :','8 :').replace('(1 / 49)','(1 / 9)')
s=s.replace('(9 : ℕ) - 5 = 4','(23 : ℕ) - 15 = 8').replace('(9 : ℤ) - 1 = 48','(9 : ℤ) - 1 = 8')
s=s.replace('with y=49 and y-x=48','with y=9 and y-x=8')
s=label(s,'Actual source rows c23d15 z1/9; each delta has its own content. x=1 remains explicit.')
write('SourceRows',s)
# Real G and normalized Q/E bounds, retaining separate contents.
s=names(read('ActualRows'))
s=s.replace(base+'.experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb».Threshold',
            base+'.lean.I11DivisorThreeTwo.Threshold')
s=s.replace('qContent_three_two_lower','qContent_lower').replace('I11DivisorSevenTwo','I11DivisorThreeTwo')
s=s.replace('(1302991 / 1000000 : ℚ) ^ 5','(41069 / 31250 : ℚ) ^ 15')
s=s.replace('9 5','23 15').replace('5 * m','15 * m').replace('4 * m','8 * m').replace('9 * m','23 * m')
s=s.replace('1 49','1 9').replace('49 :','9 :').replace('48 :','8 :').replace('(1 / 49)','(1 / 9)')
s=s.replace('(9 : ℚ) ^ 5','(9 : ℚ) ^ 15').replace('(9 : ℚ) ^ 4','(9 : ℚ) ^ 8')
s=s.replace('(1 : ℚ) ≤ 49','(1 : ℚ) ≤ 9').replace('224 ≤ m','160 ≤ m')
a=s.index('/-- Actual determinant')
s=s[:a]+'''/-- The accepted actual-row determinant gives a nonzero integer form; a=b=1. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 46 * m ≤ e) (hf : 69 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(3 : ℤ) ^ e * (A : ℤ) - (2 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (9 : ℤ) ^ (23 * m) ≤
      24 * |qRow m row| +
        |rowError m row| * |(2 : ℤ) ^ (f - 69 * m) * (C : ℤ)| := by
  have hp : (9 : ℕ) ^ (23 * m) = (3 : ℕ) ^ (46 * m) := by
    calc
      _ = ((3 : ℕ) ^ 2) ^ (23 * m) := by norm_num
      _ = (3 : ℕ) ^ (46 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (8 : ℕ) ^ (23 * m) = (2 : ℕ) ^ (69 * m) := by
    calc
      _ = ((2 : ℕ) ^ 3) ^ (23 * m) := by norm_num
      _ = (2 : ℕ) ^ (69 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (9 : ℕ) ^ (23 * m) * (3 ^ (e - 46 * m) * A) = 3 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 3 e (46 * m) A he
  have hQnat : (8 : ℕ) ^ (23 * m) * (2 ^ (f - 69 * m) * C) = 2 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 2 f (69 * m) C hf
  have hPint : (9 : ℤ) ^ (23 * m) * ((3 : ℤ) ^ (e - 46 * m) * (A : ℤ)) =
      (3 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (8 : ℤ) ^ (23 * m) * ((2 : ℤ) ^ (f - 69 * m) * (C : ℤ)) =
      (2 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(9 : ℤ) ^ (23 * m) * ((3 : ℤ) ^ (e - 46 * m) * (A : ℤ)) -
      (8 : ℤ) ^ (23 * m) * ((2 : ℤ) ^ (f - 69 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (2 : ℤ) ^ (f - 69 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (2 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (15 * m) (8 * m - 1) (by omega) 1 9
    (r := (9 : ℤ) ^ (23 * m)) (s := (8 : ℤ) ^ (23 * m))
    (a := 1) (b := 1)
    (U := (3 : ℤ) ^ (e - 46 * m) * (A : ℤ))
    (V := (2 : ℤ) ^ (f - 69 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (by decide) (by decide) hV hgap'
  exact ⟨row, by simpa only [qRow, rowError, mul_one, one_mul] using hlower⟩

end Math.B699.I11ThreeTwoScaled
'''
s=label(s,'Actual c23d15 rows, individual Gdelta bound at m>=160, Q scale9^15 and E scale9^8.')
write('ActualRows',s)
# All-m actual source growth; no external F assumption.
s=names(read('GrowthInputs')).replace('.Factorial9D5','.Factorial23D15').replace('_9_5','_23_15')
s=s.replace('9 5','23 15').replace('(1 / 49)','(1 / 9)').replace('delta ≤ 5','delta ≤ 15').replace('224 ≤ m','160 ≤ m')
s=s.replace('19015678853391498507418691 / 79228162514264337593543950336','50045175481493571025 / 9903520314283042199192993792')
s=s.replace('18567076935738840000672813 / 19807040628566084337593543950336','46880976166089921083 / 79228162514264337593543950336')
s=s.replace('18567076935738840000672813 / 19807040628566084398385987584','46880976166089921083 / 79228162514264337593543950336')
s=label(s,'Actual c23d15 Q/E growth from Factorial23D15, fixed source polynomials and finite tree/m1 inputs.')
write('GrowthInputs',s)
# a=b=1 template; D=1 removes the old two-five 3-power scale.
s=(run/'lean/I11TwoFiveEdge/ScaledGap.lean').read_text()
s=s.replace(base+'.lean.I11TwoFiveEdge',own).replace('I11TwoFiveScaled','I11ThreeTwoScaled')
s=s.replace('141 ≤ m','160 ≤ m').replace('(5 * m)','(23 * m)')
s=s.replace('(128 :','(9 :').replace('(125 :','(8 :')
s=s.replace('(9 : ℚ) ^ 5 * contentBase','(9 : ℚ) ^ 23 * contentBase')
s=s.replace('(9 : ℚ) ^ 4 * BQ','(9 : ℚ) ^ 15 * BQ')
s=s.replace('((9 : ℚ) * 125) ^ 5','((9 : ℚ) * 8) ^ 23')
s=s.replace('(9 : ℚ) * 3 ^ 8 * BE','(9 : ℚ) ^ 8 * BE')
s=s.replace('(9 : ℚ) * contentBase / BQ','(9 : ℚ) ^ 8 * contentBase / BQ')
s=s.replace('(0 : ℚ) < 125','(0 : ℚ) < 8')
s=label(s,'a=b=1 strict integer-gap terms; actual Q scale9^15 and E scale9^8, with positive Rat cancellation.')
write('ScaledGap',s)
s=names(read('SmallCertificates')).replace('9 5','23 15').replace('(1 / 49)','(1 / 9)')
s=label(s,'Fixed c23d15 low-degree m1 caps and rational rate comparisons; the M162 rate-power certificate remains explicit.')
write('SmallCertificates',s)
# Shared minimal m and ordinary windows.
s=names(read('SelectedEdge'))
s=num(s,{'285':'162','224':'160','18000':'46000','36000':'69000','940':'774','670':'732','60':'226','330':'268','18':'46','36':'69'})
s=s.replace('7 ^ 46000','3 ^ 46000').replace('7 ^ e','3 ^ e').replace('(7 : ℤ) ^ e','(3 : ℤ) ^ e')
s=s.replace('(9 * m)','(23 * m)').replace('(16 :','(8 :').replace('(49 :','(9 :')
s=s.replace('((2 : ℕ) ^ 4)','((2 : ℕ) ^ 3)')
s=s.replace('      (3 : ℤ) ^ (23 * m) * 24 * |qRow m row| +','      24 * |qRow m row| +')
s=label(s,'Same least-m actual cofactor edge, conditional internally on raw growth and explicit numeric facts; FixedEdge discharges raw growth.')
write('SelectedEdge',s)
s=names(read('FixedEdge')).replace('9 5','23 15').replace('(1 / 49)','(1 / 9)')
s=num(s,{'285':'162','18000':'46000','36000':'69000','940':'774','670':'732','60':'226','330':'268'})
s=s.replace('7 ^ 46000','3 ^ 46000').replace('7 ^ e','3 ^ e').replace('(7 : ℤ) ^ e','(3 : ℤ) ^ e')
s=label(s,'Fixed original (3,2) actual cofactor edge. Only four trees, eight finite numerical facts, and ordinary windows remain.')
write('FixedEdge',s)
print('Eight edge modules written; no Lean run.')
