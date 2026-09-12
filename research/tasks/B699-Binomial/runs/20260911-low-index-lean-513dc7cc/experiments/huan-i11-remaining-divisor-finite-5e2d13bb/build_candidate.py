from pathlib import Path
from fractions import Fraction
import ast,json,re,hashlib
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
PKG='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
OWN=PKG+'.experiments.«huan-i11-remaining-divisor-finite-5e2d13bb»'
PREV=PKG+'.experiments.«huan-i11-seven-two-divisor-finite-5e2d13bb»'
old_script=RUN/'experiments/huan-i11-seven-two-divisor-finite-5e2d13bb/build_candidate.py'
# Read proof templates without importing or executing the previous generator.
templates={}
for node in ast.parse(old_script.read_text(encoding='utf-8-sig')).body:
 if isinstance(node,ast.Assign) and len(node.targets)==1:
  t=node.targets[0]
  if isinstance(t,ast.Subscript) and isinstance(t.value,ast.Name) and t.value.id=='sources':templates[ast.literal_eval(t.slice)]=ast.literal_eval(node.value)
assert all(k in templates for k in ['Actual','Certificates','Bounds'])
rows=json.loads((RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/FINAL_PLAN.json').read_text())['selected_plan']['rows']
roughs=json.loads((RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/D-rough-step-certificates.json').read_text())['tracks']

def write(p,s):p.write_text(s,encoding='utf-8',newline='\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def horner(cs):
 s=str(cs[-1])
 for c in reversed(cs[:-1]):s=f'{c} + x * ({s})'
 return s
def factors(fs):return ' * '.join(f'({a} * x'+(f' + {b}' if b else '')+')' for b,a in fs)
def rat(q):return f'{q.numerator} / {q.denominator}'

common=r'''import @PKG@.lean.Growth.ElementaryRate
import Mathlib.Algebra.Order.Field.Rat

/-! UNCOMPILED. Common normalization for actual sequences. This generic theorem
uses step hypotheses; each concrete Threshold module constructs those steps. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.I11DivisorFiniteCommon
open Math.B699.ElementaryRate

def normalized (F : ℕ → ℚ) (rate : ℚ) (m : ℕ) : ℚ := F m / rate ^ m

theorem normalized_pos (F : ℕ → ℚ) (rate : ℚ) (m : ℕ)
    (hrate : 0 < rate) (hF : 0 < F m) : 0 < normalized F rate m :=
  div_pos hF (pow_pos hrate m)

theorem normalized_rough_step (F : ℕ → ℚ) (rate inf : ℚ) (m : ℕ)
    (hrate : 0 < rate) (hri : rate ≤ inf) (hF : 0 ≤ F m)
    (hstep : F m * (inf * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ F (m + 1)) :
    normalized F rate m * (1 * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤
      normalized F rate (m + 1) := by
  have hcoef := mul_le_mul_of_nonneg_right hri
    (sq_nonneg ((((m : ℚ) + 1) / ((m : ℚ) + 2))))
  have hsmall : F m * (rate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2) ≤ F (m + 1) :=
    (mul_le_mul_of_nonneg_left hcoef hF).trans hstep
  have ht : rate ≠ 0 := ne_of_gt hrate
  have hp : rate ^ m ≠ 0 := pow_ne_zero _ ht
  have hd : (m : ℚ) + 2 ≠ 0 := by positivity
  calc
    _ = (F m * (rate * (((m : ℚ) + 1) / ((m : ℚ) + 2)) ^ 2)) / rate ^ (m + 1) := by
      unfold normalized
      rw [pow_succ rate m]
      field_simp [ht, hp, hd]
      <;> ring
    _ ≤ F (m + 1) / rate ^ (m + 1) :=
      div_le_div_of_nonneg_right hsmall (pow_pos hrate _).le
    _ = normalized F rate (m + 1) := rfl

theorem normalized_middle_step (F : ℕ → ℚ) (rate mid : ℚ) (m : ℕ)
    (hrate : 0 < rate) (hstep : F m * mid ≤ F (m + 1)) :
    normalized F rate m * (mid / rate) ≤ normalized F rate (m + 1) := by
  have ht : rate ≠ 0 := ne_of_gt hrate
  have hp : rate ^ m ≠ 0 := pow_ne_zero _ ht
  calc
    _ = (F m * mid) / rate ^ (m + 1) := by
      unfold normalized
      rw [pow_succ rate m]
      field_simp [ht, hp]
      <;> ring
    _ ≤ F (m + 1) / rate ^ (m + 1) :=
      div_le_div_of_nonneg_right hstep (pow_pos hrate _).le
    _ = normalized F rate (m + 1) := rfl

/-- The fixed finite base and actual steps suffice. No enormous block power is
computed. Concrete seed modules discharge all displayed premises internally. -/
theorem sequence_lower (F : ℕ → ℚ) (rate inf mid : ℚ) (K loss B m : ℕ)
    (hrate : 0 < rate) (hri : rate ≤ inf) (hF : ∀ k : ℕ, 0 < F k) (hK : 1 ≤ K)
    (hrough : ∀ k : ℕ, 1 ≤ k →
      F k * (inf * (((k : ℚ) + 1) / ((k : ℚ) + 2)) ^ 2) ≤ F (k + 1))
    (hmiddle : ∀ k : ℕ, K ≤ k → F k * mid ≤ F (k + 1))
    (hR : 1 ≤ mid / rate)
    (hlinear : 2 ≤ 1 + (B : ℚ) * (mid / rate - 1))
    (hbase : 1 ≤ (F 1 / rate * 4 / ((K : ℚ) + 1) ^ 2) * (2 : ℚ) ^ loss)
    (hm : K + B * (loss + 1) ≤ m) : rate ^ m < F m := by
  have hraw := lower_telescoping_from_step
    (F := normalized F rate) (R := 1) (k0 := 1) (by norm_num)
    (fun k hk => normalized_rough_step F rate inf k hrate hri (hF k).le (hrough k hk))
    (K - 1)
  have hindexK : 1 + (K - 1) = K := by omega
  have htel : F 1 / rate * 4 / ((K : ℚ) + 1) ^ 2 ≤ normalized F rate K := by
    simpa only [one_pow, mul_one, hindexK, normalized, pow_one, Nat.cast_one,
      show ((1 : ℚ) + 1) ^ 2 = 4 by norm_num] using hraw
  have hbaseN : 1 ≤ normalized F rate K * (2 : ℚ) ^ loss :=
    hbase.trans (mul_le_mul_of_nonneg_right htel (by positivity))
  have hn : B * (loss + 1) ≤ m - K := by omega
  have h := strict_threshold_from_step (F := normalized F rate) (R := mid / rate)
    (K := K) (T := loss) (B := B) (n := m - K)
    hR (normalized_pos F rate K hrate (hF K)).le
    (fun k hk => normalized_middle_step F rate mid k hrate (hmiddle k hk))
    hbaseN hlinear hn
  have hindex : K + (m - K) = m := by omega
  have hgt : 1 < normalized F rate m := by simpa only [hindex] using h
  change 1 < F m / rate ^ m at hgt
  have hmul := (lt_div_iff₀ (pow_pos hrate m)).mp hgt
  simpa only [one_mul] using hmul

end Math.B699.I11DivisorFiniteCommon
'''.replace('@PKG@',PKG)
write(OUT/'Common.lean',common)
common_roots=['Math.B699.I11DivisorFiniteCommon.'+x for x in re.findall(r'^(?:theorem|def)\s+(\w+)',common,re.M)]
write(OUT/'CommonAudit.lean','import '+OWN+'.Common\n\n'+'\n'.join('#print axioms '+x for x in common_roots)+'\n')
metadata=[]
for index,label,namespace in [(2,'ThreeTwo','I11DivisorThreeTwo'),(4,'FiveSeven','I11DivisorFiveSeven')]:
 row=rows[index];c=row['seed']['c'];d=row['seed']['d'];w=c-d;a=(c+d)//2;s=w//2;data=row['D_tracks'][0]
 K=data['K_constant_step'];loss=data['power_T'];B=data['block_B'];m0=row['D_threshold_m0']
 assert K+B*(loss+1)==m0
 rough=next(t for t in roughs if (t['c'],t['d'],t['delta'])==(c,d,0))
 Lt=Fraction(row['L_target']);Lm=Fraction(row['L_mid']);Rinf=Fraction(rough['R_infinity_exact']);Rm=Lm**d;initial=Fraction(data['small_base_D'])
 own=OWN+'.'+label
 actual=templates['Actual'].replace('import @OWN@.Adjacent','import @PREV@.Adjacent')
 actual=actual.replace('Fixed c9d5','Fixed c'+str(c)+'d'+str(d))
 actual=actual.replace('1302991 / 1000000',rat(Lt)).replace('660547 / 500000',rat(Lm))
 actual=actual.replace('targetBase ^ 5','targetBase ^ @D@').replace('middleBase ^ 5','middleBase ^ @D@')
 actual=actual.replace('823543 / 200000',rat(Rinf)).replace('1 + 15 * (blockRatio - 1)',f'1 + {B} * (blockRatio - 1)')
 # Mark all slope occurrences before substitution; the outer 2 and divisor /2 stay fixed.
 for old,new in [(5,'@D@'),(4,'@W@'),(7,'@A@'),(2,'@S@')]:
  actual=actual.replace(f'{old} * m',f'{new} * m')
  for j in (1,2):actual=actual.replace(f'{old} * (k + {j})',f'{new} * (k + {j})')
 for slope,old,new,pred in [('@A@',7,'@A@',True),('@S@',2,'@S@',True),('@D@',5,'@D@',False),('@W@',4,'@W@',True)]:
  tail=' - 1' if pred else ''
  actual=actual.replace(f'factorial_add_cast ({slope} * (k + 1){tail}) {old}',f'factorial_add_cast ({slope} * (k + 1){tail}) {new}')
 # The increment identities have literal step sizes on their right hand sides.
 for slope,old,new,pred in [('@A@',7,'@A@',True),('@S@',2,'@S@',True),('@D@',5,'@D@',False),('@W@',4,'@W@',True)]:
  tail=' - 1' if pred else ''
  actual=actual.replace(f'({slope} * (k + 1){tail}) + {old}',f'({slope} * (k + 1){tail}) + {new}')
 actual=actual.replace('theorem divisor_initial : divisor 1 = 1 := by',f'theorem divisor_initial : divisor 1 = ({rat(initial)} : ℚ) := by')
 cert=templates['Certificates'].replace('c9d5',f'c{c}d{d}')
 cert=cert.replace('823543','@INFNUM@').replace('200000','@INFDEN@')
 cert=cert.replace('125753077556736983843483347507','@MIDNUM@').replace('31250000000000000000000000000','@MIDDEN@')
 cert=cert.replace('x + 44',f'x + {K}').replace('0 ≤ 280 *',f"0 ≤ {rough['rough_certificate']['content']} *").replace('0 ≤ 40 *',f"0 ≤ {data['constant_step_certificate']['content']} *")
 bounds=templates['Bounds'].replace('823543','@INFNUM@').replace('200000','@INFDEN@')
 bounds=bounds.replace('125753077556736983843483347507','@MIDNUM@').replace('31250000000000000000000000000','@MIDDEN@')
 bounds=re.sub(r'\b44\b',str(K),bounds)
 threshold=r'''import @OWN@.Bounds
import @ROOTOWN@.Common

/-! UNCOMPILED. Fixed original all-m actual G bound. Every step/base hypothesis
of the common sequence tool is discharged here from the actual factorial source. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace Math.B699.@NS@
open Math.B699.RationalFactorialDivisor Math.B699.PadeConstruction

theorem finite_binary_base :
    1 ≤ (divisor 1 / targetRate * 4 / ((@K@ : ℚ) + 1) ^ 2) * (2 : ℚ) ^ @LOSS@ := by
  rw [divisor_initial]
  norm_num [targetRate, targetBase]

theorem divisor_lower (m : ℕ) (hm : @M0@ ≤ m) : targetBase ^ (@D@ * m) < divisor m := by
  have h := Math.B699.I11DivisorFiniteCommon.sequence_lower
    divisor targetRate infiniteRate middleRate @K@ @LOSS@ @BLOCK@ m
    target_rate_pos target_rate_le_infinite divisor_pos (by decide)
    (fun k hk => divisor_rough_step k hk) (fun k hk => divisor_middle_step k hk)
    block_ratio_ge_one block_linear_bound finite_binary_base (by omega)
  simpa only [targetRate, ← pow_mul] using h

theorem rationalDivisor_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : @M0@ ≤ m) :
    (@LT@ : ℚ) ^ (@D@ * m) < rationalDivisor (@D@ * m - delta) (@W@ * m + delta - 1) := by
  rcases hdelta with rfl | rfl
  · simpa only [targetBase, divisor, Nat.sub_zero, Nat.add_zero] using divisor_lower m hm
  · have h := (divisor_lower m hm).trans_le (divisor_le_adjacent m (by omega))
    simpa only [targetBase, Nat.add_sub_cancel] using h

theorem qContent_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : @M0@ ≤ m) :
    (@LT@ : ℚ) ^ (@D@ * m) <
      (qContent (@D@ * m - delta) (@W@ * m + delta - 1) (@D@ * m - delta) : ℚ) := by
  exact (rationalDivisor_lower delta m hdelta hm).trans_le
    (rationalDivisor_le_qContent (@D@ * m - delta) (@W@ * m + delta - 1))

theorem qContent_upper_row_lower (m : ℕ) (hm : @M0@ ≤ m) :
    (@LT@ : ℚ) ^ (@D@ * m) < (qContent (@D@ * m) (@W@ * m - 1) (@D@ * m) : ℚ) := by
  simpa only [Nat.sub_zero, Nat.add_zero] using qContent_lower 0 m (Or.inl rfl) hm

theorem qContent_adjacent_row_lower (m : ℕ) (hm : @M0@ ≤ m) :
    (@LT@ : ℚ) ^ (@D@ * m) < (qContent (@D@ * m - 1) (@W@ * m) (@D@ * m - 1) : ℚ) := by
  simpa only [Nat.add_sub_cancel] using qContent_lower 1 m (Or.inr rfl) hm

theorem bftContent_lower (delta m : ℕ)
    (hdelta : delta = 0 ∨ delta = 1) (hm : @M0@ ≤ m) :
    (@LT@ : ℚ) ^ (@D@ * m) < (bftContent @C@ @D@ m delta : ℚ) := by
  have hv : @C@ * m - (@D@ * m - delta) - 1 = @W@ * m + delta - 1 := by
    rcases hdelta with h | h <;> omega
  simpa only [bftContent, hv] using qContent_lower delta m hdelta hm

end Math.B699.@NS@
'''
 substitutions={'@PKG@':PKG,'@PREV@':PREV,'@OWN@':own,'@ROOTOWN@':OWN,'@NS@':namespace,
  '@C@':str(c),'@D@':str(d),'@W@':str(w),'@A@':str(a),'@S@':str(s),'@K@':str(K),'@LOSS@':str(loss),'@BLOCK@':str(B),'@M0@':str(m0),'@LT@':rat(Lt),
  '@INFNUM@':str(Rinf.numerator),'@INFDEN@':str(Rinf.denominator),'@MIDNUM@':str(Rm.numerator),'@MIDDEN@':str(Rm.denominator),
  '@NUM_FACTORS@':factors(rough['numerator_factors']),'@DEN_FACTORS@':factors(rough['denominator_factors']),
  '@ROUGH_POLY@':horner(rough['rough_certificate']['primitive_coefficients_ascending']),
  '@MIDDLE_POLY@':horner(data['constant_step_certificate']['primitive_coefficients_ascending'])}
 group=[];roots=[]
 for module,text in [('Actual',actual),('Certificates',cert),('Bounds',bounds),('Threshold',threshold)]:
  text=text.replace('Math.B699.I11DivisorSevenTwo','Math.B699.'+namespace)
  for x,y in substitutions.items():text=text.replace(x,y)
  assert not re.search(r'@[A-Z_]+@',text),(label,module)
  p=OUT/label/(module+'.lean');write(p,text)
  names=['Math.B699.'+namespace+'.'+x for x in re.findall(r'^(?:theorem|def)\s+(\w+)',text,re.M)]
  write(OUT/label/(module+'Audit.lean'),'import '+own+'.'+module+'\n\n'+'\n'.join('#print axioms '+x for x in names)+'\n')
  roots+=names;group.append({'module':module,'path':label+'/'+module+'.lean','sha256':sha(p),'audit_roots':names})
 write(OUT/label/'Audit.lean','import '+own+'.Threshold\n\n'+'\n'.join('#print axioms '+x for x in common_roots+roots)+'\n')
 metadata.append({'label':label,'namespace':'Math.B699.'+namespace,'row_index':index,'c':c,'d':d,'m0':m0,'K':K,'loss':loss,'block':B,'Lt':str(Lt),'Lm':str(Lm),'initial':str(initial),'modules':group,'own_roots':roots,'closure_roots':common_roots+roots})
write(OUT/'Audit.lean','\n'.join('import '+OWN+'.'+g['label']+'.Threshold' for g in metadata)+'\n\n'+'\n'.join('#print axioms '+x for x in common_roots+sum([g['own_roots'] for g in metadata],[]))+'\n')
(OUT/'AUDIT_PLAN.json').write_text(json.dumps({'status':'UNCOMPILED_PROOF_TEXT','common':{'path':'Common.lean','sha256':sha(OUT/'Common.lean'),'roots':common_roots},'groups':metadata,'all_roots':common_roots+sum([g['own_roots'] for g in metadata],[]),'previous_adjacent_source':str(old_script.parent/'Adjacent.lean'),'previous_adjacent_sha256':sha(old_script.parent/'Adjacent.lean'),'previous_adjacent_status':'frozen complete text; no new Lean acceptance assumed','new_Lean_runs':0,'new_B_original_results':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print('Generated Common plus 8 concrete modules;',len(common_roots)+sum(len(g['own_roots']) for g in metadata),'audit roots; no Lean.')
