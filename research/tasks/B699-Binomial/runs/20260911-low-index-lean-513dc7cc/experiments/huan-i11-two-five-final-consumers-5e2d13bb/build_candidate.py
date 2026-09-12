from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
import json,hashlib,re
HERE=Path(__file__).resolve().parent
RUN=HERE.parents[1]
RP='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
EP=RP+'.experiments.«huan-i11-two-five-final-consumers-5e2d13bb»'
NS='Math.B699.I11TwoFiveFinalConsumers'
data=json.loads((RUN/'experiments/huan-i11-two-five-scaled-edge-5e2d13bb/exact-checks.json').read_text(encoding='utf-8'))
R=F(data['qRate']);N,D=R.numerator,R.denominator
assert N>=D>0 and 2*D**32<=N**32 and 32*6==192<=329
files={}
files['RateBasis.lean']='''import Mathlib.Data.Nat.Basic
import Mathlib.Data.Rat.Cast.Order
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.NormNum

/-! UNCOMPILED. Only the 32nd-power integer certificate is kernel-decided.
All 192nd/329th powers below stay symbolic. The local depth cap is a resource limit. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__

def rateNumerator : ℕ := __N__
def rateDenominator : ℕ := __D__
def rateRational : ℚ := (rateNumerator : ℚ) / (rateDenominator : ℚ)

theorem rate_denominator_pos : 0 < rateDenominator := by decide
theorem rate_numerator_ge_denominator : rateDenominator ≤ rateNumerator := by decide

set_option maxRecDepth 8192 in
theorem rate_thirtytwo_integer :
    2 * rateDenominator ^ 32 ≤ rateNumerator ^ 32 := by decide

theorem rate_denominator_cast_pos : (0 : ℚ) < (rateDenominator : ℚ) := by
  exact_mod_cast rate_denominator_pos

theorem rateRational_ge_one : (1 : ℚ) ≤ rateRational := by
  unfold rateRational
  apply (le_div_iff₀ rate_denominator_cast_pos).mpr
  have h : (rateDenominator : ℚ) ≤ (rateNumerator : ℚ) := by
    exact_mod_cast rate_numerator_ge_denominator
  simpa only [one_mul] using h

theorem rateRational_thirtytwo_ge_two : (2 : ℚ) ≤ rateRational ^ 32 := by
  unfold rateRational
  rw [div_pow]
  apply (le_div_iff₀ (pow_pos rate_denominator_cast_pos 32)).mpr
  exact_mod_cast rate_thirtytwo_integer

theorem rateRational_pow329_gt_48 : (48 : ℚ) < rateRational ^ 329 := by
  have h64 : (64 : ℚ) ≤ rateRational ^ 192 := by
    calc
      (64 : ℚ) = (2 : ℚ) ^ 6 := by norm_num
      _ ≤ (rateRational ^ 32) ^ 6 :=
        pow_le_pow_left₀ (by norm_num : (0 : ℚ) ≤ 2) rateRational_thirtytwo_ge_two 6
      _ = rateRational ^ 192 := by rw [← pow_mul]
  exact lt_of_lt_of_le (by norm_num : (48 : ℚ) < 64)
    (h64.trans (pow_le_pow_right₀ rateRational_ge_one (by decide : 192 ≤ 329)))

end __NS__
'''
files['ActualNumeric.lean']='''import __EP__.RateBasis
import __RP__.lean.I11TwoFiveNumeric.Selector
import __RP__.lean.I11TwoFiveEdge.FixedEdge

/-! UNCOMPILED. Bind the actual rate and build a source bundle before any alias
normalization. Large powers are never resolved by cross-name definitional equality. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFivePrefix
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.ElementaryFactorialBound

theorem actual_rate_eq_rational : qRate qBase = rateRational := by
  norm_num [qRate, qNumerator, qDenominator, contentBase, qBase, beta, qLambda,
    rateRational, rateNumerator, rateDenominator]

theorem actual_rate_pow329_gt_48 : (48 : ℚ) < qRate qBase ^ 329 := by
  rw [actual_rate_eq_rational]
  exact rateRational_pow329_gt_48

theorem actual_numeric_certificates :
    (48 : ℚ) < qRate qBase ^ 329 ∧
    twoFiveZ ^ (twoFiveM - 1) ≤ 4 * twoFiveY0 ∧
    (2 : ℕ) ^ 35000 ≤ twoFiveZ ^ 752 ∧
    ((2 : ℕ) ^ 35000) ^ twoFiveM ≤ twoFiveY0 ^ 752 ∧
    (4 : ℕ) ^ 752 * (2 ^ 35000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (752 * twoFiveM) ∧
    (5 : ℕ) ^ 15000 ≤ twoFiveZ ^ 748 ∧
    ((5 : ℕ) ^ 15000) ^ twoFiveM ≤ twoFiveY0 ^ 748 ∧
    (4 : ℕ) ^ 748 * (5 ^ 15000) ^ (twoFiveM + 1) ≤ twoFiveZ ^ (748 * twoFiveM) := by
  have h := And.intro actual_rate_pow329_gt_48
    (And.intro Math.B699.I11TwoFiveNumeric.predecessor
      (And.intro Math.B699.I11TwoFiveNumeric.p_rate
        (And.intro Math.B699.I11TwoFiveNumeric.p_base
          (And.intro Math.B699.I11TwoFiveNumeric.p_lookahead
            (And.intro Math.B699.I11TwoFiveNumeric.q_rate
              (And.intro Math.B699.I11TwoFiveNumeric.q_base
                Math.B699.I11TwoFiveNumeric.q_lookahead))))))
  simpa only [twoFiveZ, Math.B699.I11TwoFiveNumeric.certificateZ,
    twoFiveM, twoFiveY0] using h

theorem two_five_edge_of_growth_trees
    (qt : ∀ row : Bool, GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128))
      (qCore 5 4 (3 / 128)))
    (et : ∀ row : Bool, GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128))
      (eCore 5 4 (3 / 128)))
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  obtain ⟨hA, hprevious, hrateP, hbaseP, hlookP, hrateQ, hbaseQ, hlookQ⟩ :=
    actual_numeric_certificates
  exact two_five_edge_of_fixed_certificates qt et hA
    hprevious hrateP hbaseP hlookP hrateQ hbaseQ hlookQ
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end __NS__
'''
files['ActualInstance.lean']='''import __EP__.ActualNumeric
import __RP__.lean.Growth.I11TwoFiveTree

/-! UNCOMPILED. The actual accepted c5d4,z3/128 roots supply all four tree inputs. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__
open Math.B699.I11TwoFiveScaled Math.B699.I11TwoFivePrefix
open Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

theorem q_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.qLam = qLambda := rfl
theorem e_lambda_eq : Math.B699.I11TwoFiveGrowth.Shared.eLam = eLambda := rfl
theorem row_delta_false : rowDelta false = 1 := rfl
theorem row_delta_true : rowDelta true = 0 := rfl

theorem actual_q_tree_family (row : Bool) :
    GrowthTree qLambda (qWeight 5 4 (rowDelta row) (3 / 128)) (qCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta1
  | true =>
    simpa only [row_delta_true, q_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.qSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.q_tree_delta0

theorem actual_e_tree_family (row : Bool) :
    GrowthTree eLambda (eWeight 5 4 (rowDelta row) (3 / 128)) (eCore 5 4 (3 / 128)) := by
  cases row with
  | false =>
    simpa only [row_delta_false, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight1,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta1
  | true =>
    simpa only [row_delta_true, e_lambda_eq,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedWeight0,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedCore,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedC,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedD,
      Math.B699.I11TwoFiveGrowth.Shared.eSeedZ] using
        Math.B699.I11TwoFiveGrowth.Tree.e_tree_delta0

theorem actual_two_five_cofactor_edge
    (Y e f A C : ℕ) (hY : twoFiveY0 ≤ Y) (hC : 1 ≤ C)
    (hwindowP : Y ≤ 2 ^ e * A) (hwindowQ : Y ≤ 5 ^ f * C)
    (hupperQ : 5 ^ f * C ≤ 2 * Y)
    (hgap : |(2 : ℤ) ^ e * (A : ℤ) - (5 : ℤ) ^ f * (C : ℤ)| ≤ 24) :
    Y ^ 248 ≤ A ^ 1000 ∨ Y ^ 252 ≤ C ^ 1000 := by
  exact two_five_edge_of_growth_trees actual_q_tree_family actual_e_tree_family
    Y e f A C hY hC hwindowP hwindowQ hupperQ hgap

end __NS__
'''
files['Component.lean']='''import __EP__.ActualInstance
import __RP__.lean.I11Component.CeilHalf
import __RP__.lean.I11SmallPrimes.Window

/-!
UNCOMPILED. Actual binomial components and a common ceil-half window.
No I11Component.WindowPair or five-three component chain is imported.
The final theorem retains only the original domain n>=2^15360.
-/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace __NS__
open Math.B699.I11TwoFiveScaled
open B699LowIndex.I11SmallPrimes
open B699LowIndex.I11FiveThreeComponentEdge

theorem integer_window_gap_le_ten {n a b : ℕ} (ha : a < 11) (hb : b < 11) :
    |((n - a : ℕ) : ℤ) - ((n - b : ℕ) : ℤ)| ≤ 10 := by
  apply abs_le.mpr
  constructor <;> omega

theorem actual_window_power_bounds {n p : ℕ} (hn : 20 ≤ n) (window : PrimeWindow n p) :
    ceilHalf n ≤ p ^ ((n.choose 11).factorization p) * window.cofactor ∧
      p ^ ((n.choose 11).factorization p) * window.cofactor ≤ 2 * ceilHalf n := by
  have hrepr : p ^ ((n.choose 11).factorization p) * window.cofactor = n - window.offset := by
    simpa only [primeComponent, Nat.mul_comm] using window.equation
  simpa only [← hrepr] using window_in_ceilHalf_interval hn window.offset_lt

theorem component_edge_of_actual_windows {n : ℕ}
    (hn : 20 ≤ n) (hY : twoFiveY0 ≤ ceilHalf n)
    (wp : PrimeWindow n 2) (wq : PrimeWindow n 5) :
    (primeComponent n 2) ^ 1000 * (ceilHalf n) ^ 248 ≤ n ^ 1000 ∨
      (primeComponent n 5) ^ 1000 * (ceilHalf n) ^ 252 ≤ n ^ 1000 := by
  have hpBounds := actual_window_power_bounds hn wp
  have hqBounds := actual_window_power_bounds hn wq
  have hpNat : (2 : ℕ) ^ ((n.choose 11).factorization 2) * wp.cofactor = n - wp.offset := by
    simpa only [primeComponent, Nat.mul_comm] using wp.equation
  have hqNat : (5 : ℕ) ^ ((n.choose 11).factorization 5) * wq.cofactor = n - wq.offset := by
    simpa only [primeComponent, Nat.mul_comm] using wq.equation
  have hpInt : (2 : ℤ) ^ ((n.choose 11).factorization 2) * (wp.cofactor : ℤ) =
      ((n - wp.offset : ℕ) : ℤ) := by exact_mod_cast hpNat
  have hqInt : (5 : ℤ) ^ ((n.choose 11).factorization 5) * (wq.cofactor : ℤ) =
      ((n - wq.offset : ℕ) : ℤ) := by exact_mod_cast hqNat
  have hgap : |(2 : ℤ) ^ ((n.choose 11).factorization 2) * (wp.cofactor : ℤ) -
      (5 : ℤ) ^ ((n.choose 11).factorization 5) * (wq.cofactor : ℤ)| ≤ 24 := by
    rw [hpInt, hqInt]
    exact le_trans (integer_window_gap_le_ten wp.offset_lt wq.offset_lt)
      (by decide : (10 : ℤ) ≤ 24)
  have hcof := actual_two_five_cofactor_edge (ceilHalf n)
    ((n.choose 11).factorization 2) ((n.choose 11).factorization 5)
    wp.cofactor wq.cofactor hY wq.cofactor_pos
    hpBounds.1 hqBounds.1 hqBounds.2 hgap
  rcases hcof with hP | hQ
  · exact Or.inl (primeWindow_graph_capacity wp hP)
  · exact Or.inr (primeWindow_graph_capacity wq hQ)

/-- A source-aligned actual (2,5) component edge. No tree, numeric certificate,
G, cofactor, window, or height-validity premise remains. -/
theorem actual_two_five_component_edge {n : ℕ} (hn : (2 : ℕ) ^ 15360 ≤ n) :
    (primeComponent n 2) ^ 1000 * ((n + 1) / 2) ^ 248 ≤ n ^ 1000 ∨
      (primeComponent n 5) ^ 1000 * ((n + 1) / 2) ^ 252 ≤ n ^ 1000 := by
  have hlarge : 20 ≤ n :=
    twenty_le_of_power_bound (by decide : 5 ≤ 15360) hn
  have hn11 : 11 ≤ n := Nat.le_trans (by decide : 11 ≤ 20) hlarge
  have hY : twoFiveY0 ≤ ceilHalf n := by
    have h := ceilHalf_power_lower (n := n) (k := 15359)
    simp only [show 15359 + 1 = 15360 by decide] at h
    simpa only [twoFiveY0] using h hn
  obtain ⟨wp⟩ := primeWindow_nonempty (n := n) (p := 2) hn11 (by decide : Nat.Prime 2)
  obtain ⟨wq⟩ := primeWindow_nonempty (n := n) (p := 5) hn11 (by decide : Nat.Prime 5)
  simpa only [ceilHalf] using component_edge_of_actual_windows hlarge hY wp wq

end __NS__
'''
for name,text in files.items():
 text=text.replace('__RP__',RP).replace('__EP__',EP).replace('__NS__',NS)
 text=text.replace('__N__',str(N)).replace('__D__',str(D))
 assert not re.search(r'\b(sorry|admit)\b|^\s*axiom\s',text,re.M),name
 (HERE/name).write_text(text,encoding='utf-8')
roots=[];layers=[]
for name in files:
 text=(HERE/name).read_text(encoding='utf-8')
 local=[NS+'.'+x for x in re.findall(r'^theorem (\w+)',text,re.M)]
 roots.extend(local);stem=Path(name).stem
 audit_name=stem+'Audit.lean'
 (HERE/audit_name).write_text('import '+EP+'.'+stem+'\n\n'+'\n'.join('#print axioms '+x for x in local)+'\n',encoding='utf-8')
 layers.append({'module':name,'audit':audit_name,'roots':local})
(HERE/'Audit.lean').write_text('import '+EP+'.Component\n\n'+'\n'.join('#print axioms '+x for x in roots)+'\n',encoding='utf-8')
(HERE/'expected-axioms.json').write_text(json.dumps({'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':roots,'expected_print_roots':roots,'status':'uncompiled final consumers; not an accepted component edge'},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(HERE/'AUDIT_PLAN.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),'layers':layers,'full_audit':'Audit.lean','full_roots':len(roots),'worker_lean_invocations':0},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
check={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS_EXACT_RATE_CERTIFICATE_NOT_LEAN','N':str(N),'D':str(D),'N_positive':N>0,'D_positive':D>0,'N_ge_D':N>=D,'twice_D_pow32_le_N_pow32':2*D**32<=N**32,'N_pow32_bits':(N**32).bit_length(),'twice_D_pow32_bits':(2*D**32).bit_length(),'192_equals_32_times_6':192==32*6,'192_le_329':192<=329,'full_329th_power_evaluated':False,'worker_lean_invocations':0}
(HERE/'rate-check.json').write_text(json.dumps(check,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':'complete_final_consumer_candidate_generated','modules':list(files),'public_theorems':len(roots),'rate_integer_max_bits':max(check['N_pow32_bits'],check['twice_D_pow32_bits']),'worker_lean_invocations':0}))
