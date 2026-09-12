from pathlib import Path
import json,re
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-five-seven-scaled-edge-5e2d13bb'
assert not (out/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
prev=base+'.experiments.«huan-i11-seven-two-scaled-edge-5e2d13bb»'
own=base+'.experiments.«huan-i11-five-seven-scaled-edge-5e2d13bb»'
def read(n):return (run/'experiments/huan-i11-seven-two-scaled-edge-5e2d13bb'/(n+'.lean')).read_text()
def names(s):return s.replace(prev,own).replace('I11SevenTwo','I11FiveSeven').replace('sevenTwo','fiveSeven').replace('seven_two','five_seven')
def num(s,mp):return re.sub(r'\b(?:'+'|'.join(map(re.escape,mp))+r')\b',lambda m:mp[m[0]],s)
def label(s,t):
    a=s.index('/-!');b=s.index('-/',a)+2
    return s[:a]+'/-! UNCOMPILED CANDIDATE. '+t+' -/'+s[b:]
def write(n,s):
    p=out/(n+'.lean');assert not p.exists();p.write_text(s,encoding='utf-8')
def numeric(s):
    s=s.replace('7 ^ 18000','5 ^ 22000').replace('2 ^ 36000','7 ^ 22000')
    return num(s,{'17498099772305953':'719422706382292314227864','285':'194','224':'149',
      '18000':'22000','36000':'22000','940':'648','670':'784','60':'352','330':'216','18':'22','36':'22'})
def windows(s):
    return s.replace('Y ≤ 7 ^ e','Y ≤ 5 ^ e').replace('2 ^ f','7 ^ f').replace('(7 : ℤ) ^ e','(5 : ℤ) ^ e').replace('(2 : ℤ) ^ f','(7 : ℤ) ^ f')
s=numeric(names(read('Parameters')))
s=windows(s).replace('      7 22 1000','      5 22 1000').replace('      2 22 1000','      7 22 1000')
s=label(s,'Fixed row04, M194/G threshold149, weights352/216. Same least m gives both 22m extractions.')
write('Parameters',s)
s=names(read('SourceRows')).replace('9 5','11 7').replace('5 * m','7 * m').replace('9 * m','11 * m')
s=s.replace('1 49','1 50').replace('49 :','50 :').replace('48 :','49 :').replace('(1 / 49)','(1 / 50)')
s=s.replace('(9 : ℕ) - 5 = 4','(11 : ℕ) - 7 = 4').replace('(50 : ℤ) - 1 = 48','(50 : ℤ) - 1 = 49')
s=s.replace('with y=49 and y-x=48','with y=50 and y-x=49')
s=label(s,'Real c11d7 source/Hom rows at x=1,y=50; delta content is never interchanged.')
write('SourceRows',s)
s=names(read('ActualRows'))
s=s.replace(base+'.experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb».Threshold',base+'.lean.I11DivisorFiveSeven.Threshold')
s=s.replace('I11DivisorSevenTwo','I11DivisorFiveSeven').replace('qContent_five_seven_lower','qContent_lower')
s=s.replace('(1302991 / 1000000 : ℚ) ^ 5','(1303943 / 1000000 : ℚ) ^ 7')
s=s.replace('9 5','11 7').replace('5 * m','7 * m').replace('9 * m','11 * m')
s=s.replace('1 49','1 50').replace('49 :','50 :').replace('48 :','49 :').replace('(1 / 49)','(1 / 50)')
s=s.replace('(50 : ℚ) ^ 5','(50 : ℚ) ^ 7').replace('(1 : ℚ) ≤ 49','(1 : ℚ) ≤ 50').replace('224 ≤ m','149 ≤ m')
a=s.index('/-- Actual determinant')
s=s[:a]+'''/-- Real integer lower bound uses P=25, while its a=2 factor gives y=50 in the error. -/
theorem actual_integer_gap (m e f A C : ℕ)
    (hm : 1 ≤ m) (he : 22 * m ≤ e) (hf : 22 * m ≤ f) (hC : 1 ≤ C)
    (hgap : |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    ∃ row : Bool, (25 : ℤ) ^ (11 * m) ≤
      24 * |qRow m row| +
        |rowError m row| * |(7 : ℤ) ^ (f - 22 * m) * (C : ℤ)| := by
  have hp : (25 : ℕ) ^ (11 * m) = (5 : ℕ) ^ (22 * m) := by
    calc
      _ = ((5 : ℕ) ^ 2) ^ (11 * m) := by norm_num
      _ = (5 : ℕ) ^ (22 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hq : (49 : ℕ) ^ (11 * m) = (7 : ℕ) ^ (22 * m) := by
    calc
      _ = ((7 : ℕ) ^ 2) ^ (11 * m) := by norm_num
      _ = (7 : ℕ) ^ (22 * m) := by rw [← Nat.pow_mul]; congr 1 <;> ring
  have hPnat : (25 : ℕ) ^ (11 * m) * (5 ^ (e - 22 * m) * A) = 5 ^ e * A := by
    rw [hp]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 5 e (22 * m) A he
  have hQnat : (49 : ℕ) ^ (11 * m) * (7 ^ (f - 22 * m) * C) = 7 ^ f * C := by
    rw [hq]
    exact Math.B699.I11ActualPadeEdge.extract_prime_factor 7 f (22 * m) C hf
  have hPint : (25 : ℤ) ^ (11 * m) * ((5 : ℤ) ^ (e - 22 * m) * (A : ℤ)) =
      (5 : ℤ) ^ e * (A : ℤ) := by exact_mod_cast hPnat
  have hQint : (49 : ℤ) ^ (11 * m) * ((7 : ℤ) ^ (f - 22 * m) * (C : ℤ)) =
      (7 : ℤ) ^ f * (C : ℤ) := by exact_mod_cast hQnat
  have hgap' : |(25 : ℤ) ^ (11 * m) * ((5 : ℤ) ^ (e - 22 * m) * (A : ℤ)) -
      (49 : ℤ) ^ (11 * m) * ((7 : ℤ) ^ (f - 22 * m) * (C : ℤ))| ≤ 24 := by
    rw [hPint, hQint]
    exact hgap
  have hV : (7 : ℤ) ^ (f - 22 * m) * (C : ℤ) ≠ 0 := by
    apply mul_ne_zero (pow_ne_zero _ (by decide : (7 : ℤ) ≠ 0))
    exact_mod_cast (by omega : C ≠ 0)
  obtain ⟨row, _hne, hlower⟩ := actual_bft_integer_gap
    (7 * m) (4 * m - 1) (by omega) 1 50
    (r := (25 : ℤ) ^ (11 * m)) (s := (49 : ℤ) ^ (11 * m))
    (a := (2 : ℤ) ^ (11 * m)) (b := 1)
    (U := (5 : ℤ) ^ (e - 22 * m) * (A : ℤ))
    (V := (7 : ℤ) ^ (f - 22 * m) * (C : ℤ)) (D := 24)
    (by decide) (by decide) (pow_nonneg (by decide) _)
    (pow_ne_zero _ (by decide)) (by decide) hV hgap'
  have hra : (25 : ℤ) ^ (11 * m) * (2 : ℤ) ^ (11 * m) = (50 : ℤ) ^ (11 * m) := by
    rw [← mul_pow]
    norm_num
  exact ⟨row, by simpa only [qRow, rowError, hra, mul_one, one_mul] using hlower⟩

end Math.B699.I11FiveSevenScaled
'''
s=label(s,'Actual Gdelta and Hom at y50, Q/E scales50^7/50^4. Integer lower bound remains25^(11m).')
write('ActualRows',s)
data=json.loads((run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-04.json').read_text())
s=names(read('GrowthInputs')).replace('.Factorial9D5','.Factorial11D7').replace('_9_5','_11_7')
s=s.replace('9 5','11 7').replace('(1 / 49)','(1 / 50)').replace('delta ≤ 5','delta ≤ 7').replace('224 ≤ m','149 ≤ m')
for key,field in [('qLambda','Q'),('eLambda','E')]:
    numer,denom=data[field]['lambda'].split('/')
    s=re.sub(r'def '+key+r' : ℚ := [^\r\n]+',f'def {key} : ℚ := {numer} / {denom}',s)
s=label(s,'All-m actual c11d7 Q/E growth follows from Factorial11D7 and fixed finite GrowthTrees/m1 caps.')
write('GrowthInputs',s)
# a=b=1 gap weights are unchanged, but the a=2 homogeneous variable is y=50.
s=(run/'experiments/huan-i11-three-two-scaled-edge-5e2d13bb/ScaledGap.lean').read_text()
s=s.replace(base+'.experiments.«huan-i11-three-two-scaled-edge-5e2d13bb»',own).replace('I11ThreeTwoScaled','I11FiveSevenScaled')
s=s.replace('160 ≤ m','149 ≤ m').replace('(23 * m)','(11 * m)')
s=s.replace('(9 : ℚ) ^ 23 * contentBase','(25 : ℚ) ^ 11 * contentBase')
s=s.replace('(9 : ℚ) ^ 15 * BQ','(50 : ℚ) ^ 7 * BQ')
s=s.replace('((9 : ℚ) * 8) ^ 23','((25 : ℚ) * 49) ^ 11')
s=s.replace('(9 : ℚ) ^ 8 * BE','(50 : ℚ) ^ 4 * BE')
s=s.replace('(9 : ℚ) ^ 8 * contentBase / BQ','(25 : ℚ) ^ 4 * contentBase / ((2 : ℚ) ^ 7 * BQ)')
s=s.replace('(9 : ℚ) ^ (11 * m)','(25 : ℚ) ^ (11 * m)').replace('(9 : ℤ) ^ (11 * m)','(25 : ℤ) ^ (11 * m)')
s=s.replace('(8 : ℚ) ^ (11 * m)','(49 : ℚ) ^ (11 * m)').replace('(0 : ℚ) < 8','(0 : ℚ) < 49')
s=label(s,'Strict scaled gaps preserve P25 in the lower bound and y50 in Q/E norms; positive Rat cancellation by49^(11m).')
write('ScaledGap',s)
s=names(read('SmallCertificates')).replace('9 5','11 7').replace('(1 / 49)','(1 / 50)')
s=label(s,'Four actual m1 caps plus fixed rational rate inequalities; M194 power certificate remains explicit.')
write('SmallCertificates',s)
s=windows(numeric(names(read('SelectedEdge'))))
s=s.replace('(9 * m)','(11 * m)').replace('(16 :','(49 :').replace('(49 : ℤ) ^ (11 * m) ≤','(25 : ℤ) ^ (11 * m) ≤')
s=s.replace('2 ^ (f','7 ^ (f').replace('(2 : ℤ) ^ (f','(7 : ℤ) ^ (f')
s=s.replace('((2 : ℕ) ^ 4)','((7 : ℕ) ^ 2)').replace('(2 : ℕ) ^ (22','(7 : ℕ) ^ (22')
s=s.replace('extract_prime_factor 2 f','extract_prime_factor 7 f')
s=s.replace('      (3 : ℤ) ^ (11 * m) * 24 * |qRow m row| +','      24 * |qRow m row| +')
s=label(s,'Same least-m five-seven cofactor edge. a=2 is already absorbed into the true homogeneous rowError, never into the lower bound.')
write('SelectedEdge',s)
s=windows(numeric(names(read('FixedEdge')))).replace('9 5','11 7').replace('(1 / 49)','(1 / 50)')
s=label(s,'Fixed original five-seven actual cofactor edge, retaining only four actual trees, eight finite numerical facts and ordinary windows.')
write('FixedEdge',s)
# Read the real plan with the case-sensitive parser (PowerShell object conversion is unsuitable).
plan=json.loads((run/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json').read_text())
found=[]
def walk(x,path=''):
    if isinstance(x,dict):
        if x.get('p')==5 and x.get('q')==7:found.append({'path':path,'row':x})
        for k,v in x.items():walk(v,path+'/'+k)
    elif isinstance(x,list):
        for i,v in enumerate(x):walk(v,path+'/'+str(i))
walk(plan)
(out/'plan-row04-read.json').write_text(json.dumps(found,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'modules':8,'plan_p5_q7_matches':len(found),'paths':[x['path'] for x in found]},indent=2))
