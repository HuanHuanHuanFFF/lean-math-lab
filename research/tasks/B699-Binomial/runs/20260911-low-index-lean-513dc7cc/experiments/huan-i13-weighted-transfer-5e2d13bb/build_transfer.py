from pathlib import Path
import re,json,hashlib
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-weighted-transfer-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i13-weighted-transfer-5e2d13bb»'
old='research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0»'
ns='Math.B699.I13WeightedTransfer'
opts='set_option autoImplicit false\nset_option relaxedAutoImplicit false\n'
def write(n,s):
 p=OUT/n;assert not p.exists();p.write_text(s,encoding='utf-8')
write('Generic.lean',f'''import {base}.lean.WinAssign.Weighted

/-! UNCOMPILED. Weighted numerator identity and factorial loss for the actual
WinAssign construction. No assignment or total-product identity is an input. -/
{opts}namespace {ns}
open scoped BigOperators
open Math.B699.WindowPrimeAssignment

noncomputable def weightedComponents (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) : ℕ :=
  ∏ p ∈ primeSupport n k, primeComponent n k p ^ w (assignedIndex n k hk hkn p)

theorem weighted_blocks_product (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) :
    (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r ^ w r) =
      weightedComponents n k hk hkn w := by
  classical
  unfold weightedComponents
  calc
    _ = ∏ r ∈ Finset.range k,
        ∏ p ∈ (primeSupport n k).filter (fun p => assignedIndex n k hk hkn p = r),
          primeComponent n k p ^ w (assignedIndex n k hk hkn p) := by
      apply Finset.prod_congr rfl
      intro r _
      rw [assignedBlock, ← Finset.prod_pow]
      apply Finset.prod_congr rfl
      intro p hp
      rw [(Finset.mem_filter.mp hp).2]
    _ = ∏ p ∈ primeSupport n k,
        primeComponent n k p ^ w (assignedIndex n k hk hkn p) :=
      Finset.prod_fiberwise_of_maps_to
        (s := primeSupport n k) (t := Finset.range k) (g := assignedIndex n k hk hkn)
        (fun p hp => Finset.mem_range.mpr
          (assigned_index_spec n k hk hkn p (supported_prime n k p hp)).1)
        (fun p => primeComponent n k p ^ w (assignedIndex n k hk hkn p))

theorem weighted_numerator_identity (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) :
    (∏ r ∈ Finset.range k, (n - r) ^ w r) =
      (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) *
        weightedComponents n k hk hkn w := by
  calc
    _ = ∏ r ∈ Finset.range k,
        (windowRemainder n k hk hkn r * assignedBlock n k hk hkn r) ^ w r := by
      apply Finset.prod_congr rfl
      intro r _
      rw [remainder_mul_block n k hk hkn r]
    _ = (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) *
        (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r ^ w r) := by
      simp only [Nat.mul_pow, Finset.prod_mul_distrib]
    _ = _ := by rw [weighted_blocks_product n k hk hkn w]

theorem weighted_numerator_loss (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) (L : ℕ) (hw : ∀ r : ℕ, r < k → w r ≤ L) :
    (∏ r ∈ Finset.range k, (n - r) ^ w r) ≤
      k.factorial ^ L * weightedComponents n k hk hkn w := by
  rw [weighted_numerator_identity n k hk hkn w]
  exact Nat.mul_le_mul_right _ (weighted_remainders_le n k hk hkn w L hw)

theorem thirteen_numerator_loss (n : ℕ) (hn : 13 ≤ n) :
    (∏ r ∈ Finset.range 13, (n - r) ^ (16 - r)) ≤
      (Nat.factorial 13) ^ 16 *
        weightedComponents n 13 (by decide) hn (fun r => 16 - r) :=
  weighted_numerator_loss n 13 (by decide) hn (fun r => 16 - r) 16
    (fun r _ => Nat.sub_le 16 r)

end {ns}
''')
write('Windows.lean',f'''import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Data.Nat.Choose.Basic
import Lean.Elab.Tactic.Omega

/-! UNCOMPILED. Elementary weighted-window divisibility and size lemmas.
No binomial localization or noCommon premise is built into these helpers. -/
{opts}namespace {ns}
open scoped BigOperators

def weightedWindow (N s : ℕ) : ℕ := ∏ r ∈ Finset.range s, (N - r) ^ (s - r)
def doubleWindow (n j : ℕ) : ℕ := weightedWindow j 8 * weightedWindow (n - j) 8

theorem power_dvd_weighted_window (N s b X : ℕ) (hdiv : X ∣ N - b) :
    X ^ (s - b) ∣ weightedWindow N s := by
  by_cases hb : b < s
  · have hpow : X ^ (s - b) ∣ (N - b) ^ (s - b) := pow_dvd_pow_of_dvd hdiv _
    exact hpow.trans (Finset.dvd_prod_of_mem
      (fun r : ℕ => (N - r) ^ (s - r)) (Finset.mem_range.mpr hb))
  · have hs : s - b = 0 := Nat.sub_eq_zero_of_le (by omega)
    simp only [hs, Nat.pow_zero]
    exact one_dvd _

theorem weighted_window_pos (N s : ℕ) (hs : s ≤ N) : 0 < weightedWindow N s := by
  unfold weightedWindow
  apply Finset.prod_pos
  intro r hr
  have hrN : r < N := lt_of_lt_of_le (Finset.mem_range.mp hr) hs
  exact Nat.pow_pos (Nat.sub_pos_of_lt hrN)

theorem weighted_window_upper (N n s : ℕ) (hN : N ≤ n) :
    weightedWindow N s ≤ n ^ (∑ r ∈ Finset.range s, s - r) := by
  calc
    _ ≤ ∏ r ∈ Finset.range s, n ^ (s - r) := by
      apply Finset.prod_le_prod'
      intro r _
      exact Nat.pow_le_pow_left ((Nat.sub_le N r).trans hN) (s - r)
    _ = n ^ (∑ r ∈ Finset.range s, s - r) :=
      Finset.prod_pow_eq_pow_sum (Finset.range s) (fun r => s - r) n

theorem eight_weight_sum : (∑ r ∈ Finset.range 8, (8 - r)) = (36 : ℕ) := by decide

theorem double_window_pos (n j : ℕ) (hj : 8 ≤ j) (hk : 8 ≤ n - j) :
    0 < doubleWindow n j :=
  Nat.mul_pos (weighted_window_pos j 8 hj) (weighted_window_pos (n - j) 8 hk)

theorem double_window_upper (n j : ℕ) (hjn : j ≤ n) : doubleWindow n j ≤ n ^ 72 := by
  have hl : weightedWindow j 8 ≤ n ^ 36 := by
    simpa only [eight_weight_sum] using weighted_window_upper j n 8 hjn
  have hr : weightedWindow (n - j) 8 ≤ n ^ 36 := by
    simpa only [eight_weight_sum] using weighted_window_upper (n - j) n 8 (Nat.sub_le n j)
  calc
    _ ≤ n ^ 36 * n ^ 36 := Nat.mul_le_mul hl hr
    _ = n ^ 72 := by rw [← Nat.pow_add]

theorem two_window_weight (a b c : ℕ) (habc : b + c = a) :
    16 - a ≤ (8 - b) + (8 - c) := by omega

theorem component_power_dvd_double_window (n j a b c X : ℕ)
    (habc : b + c = a) (hj : X ∣ j - b) (hk : X ∣ (n - j) - c) :
    X ^ (16 - a) ∣ doubleWindow n j := by
  have hmul : X ^ ((8 - b) + (8 - c)) ∣ doubleWindow n j := by
    simpa only [Nat.pow_add, doubleWindow] using
      Nat.mul_dvd_mul (power_dvd_weighted_window j 8 b X hj)
        (power_dvd_weighted_window (n - j) 8 c X hk)
  exact (Nat.pow_dvd_pow X (two_window_weight a b c habc)).trans hmul

end {ns}
''')
write('Positions.lean',f'''import Lean.Elab.Tactic.Omega
import {base}.lean.WinAssign.Assignment
import {old}.lean.PrimePowerTransfer

/-! UNCOMPILED. Construct and align the actual transferred positions. Only the
numerator-modulus theorem and the carry criterion are used; no lower bound on
n-2*j is introduced. Complete exponents and p=13 are retained. -/
{opts}namespace {ns}
open Math.B699.WindowPrimeAssignment B699LargePrimeStructure

theorem original_index_le {{n j : ℕ}} (hij : 13 < j) (hjn : j ≤ n / 2) : 13 ≤ n := by
  omega

theorem mod_eq_of_window_dvd (n p a : ℕ) (ha : a < p) (han : a ≤ n)
    (hdiv : p ∣ n - a) : n % p = a := by
  have hzero : (n - a) % p = 0 := Nat.mod_eq_zero_of_dvd hdiv
  calc
    n % p = ((n - a) + a) % p := by rw [Nat.sub_add_cancel han]
    _ = ((n - a) % p + a % p) % p := Nat.add_mod _ _ _
    _ = a := by simp only [hzero, Nat.mod_eq_of_lt ha, Nat.zero_add]

theorem unique_window_position (n k p a r : ℕ) (hkn : k ≤ n) (hkp : k ≤ p)
    (ha : a < k) (hr : r < k) (hpa : p ∣ n - a) (hpr : p ∣ n - r) : a = r := by
  have hma := mod_eq_of_window_dvd n p a (lt_of_lt_of_le ha hkp) (by omega) hpa
  have hmr := mod_eq_of_window_dvd n p r (lt_of_lt_of_le hr hkp) (by omega) hpr
  exact hma.symm.trans hmr

theorem actual_transferred_positions (n j p : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j)
    (hmem : p ∈ primeSupport n 13) (hpi : 13 ≤ p) :
    ∃ b c : ℕ, b < 13 ∧ c < 13 ∧
      b + c = assignedIndex n 13 (by decide) (original_index_le hij hjn) p ∧
      primeComponent n 13 p ∣ j - b ∧ primeComponent n 13 p ∣ (n - j) - c := by
  have hn : 13 ≤ n := original_index_le hij hjn
  have hjn' : j ≤ n := hjn.trans (Nat.div_le_self n 2)
  have hp : p.Prime := supported_prime n 13 p hmem
  let e : ℕ := (n.choose 13).factorization p
  have he : 0 < e := supported_exponent_pos n 13 p hmem
  have havoid : ¬ p ∣ n.choose j := by
    intro hpj
    apply hno
    exact ⟨p, hp, hpi, Nat.dvd_gcd
      (Nat.dvd_of_mem_primeFactors (by simpa only [primeSupport] using hmem)) hpj⟩
  let Q : ℕ := p ^ (e + if p = 13 then 1 else 0)
  let a : ℕ := n % Q
  let b : ℕ := j % Q
  let c : ℕ := a - b
  have ha : a < 13 := prime_power_numerator_mod_lt hp hpi hn he le_rfl
  have hb : b ≤ a := by
    by_contra h
    apply havoid
    apply B699.prime_dvd_choose_of_mod_lt hp hjn'
      (by omega : 1 ≤ e + (if p = 13 then 1 else 0))
    change a < b
    omega
  have hQn : Q ∣ n - a := Nat.dvd_sub_mod (n := Q) n
  have hQj : Q ∣ j - b := Nat.dvd_sub_mod (n := Q) j
  have hQk : Q ∣ (n - j) - c := by
    have h := Nat.dvd_sub hQn hQj
    have hs : (n - a) - (j - b) = (n - j) - c := by
      dsimp only [c]
      omega
    simpa only [hs] using h
  have hpQ : p ∣ Q := by
    simpa only [Q, Nat.pow_one] using
      Nat.pow_dvd_pow p (show 1 ≤ e + (if p = 13 then 1 else 0) by omega)
  have hpX : p ∣ primeComponent n 13 p := by
    simpa only [primeComponent, e, Nat.pow_one] using
      Nat.pow_dvd_pow p (show 1 ≤ e by omega)
  have hXQ : primeComponent n 13 p ∣ Q := by
    simpa only [primeComponent, e, Q] using
      Nat.pow_dvd_pow p (show e ≤ e + (if p = 13 then 1 else 0) by omega)
  let r : ℕ := assignedIndex n 13 (by decide) hn p
  have hr : r < 13 := (assigned_index_spec n 13 (by decide) hn p hp).1
  have hpr : p ∣ n - r := hpX.trans (component_dvd_assigned_window n 13 (by decide) hn p hp)
  have har : a = r := unique_window_position n 13 p a r hn hpi ha hr (hpQ.trans hQn) hpr
  refine ⟨b, c, by omega, ?_, ?_, hXQ.trans hQj, hXQ.trans hQk⟩
  · dsimp only [c]
    omega
  · change b + c = r
    dsimp only [c]
    omega

end {ns}
''')
write('Transfer.lean',f'''import {own}.Generic
import {own}.Windows
import {own}.Positions

/-! UNCOMPILED. The actual p>=13 support product, with full component exponents,
is transferred under only the original hij/hjn/noCommon hypotheses. -/
{opts}namespace {ns}
open scoped BigOperators
open Math.B699.WindowPrimeAssignment B699LargePrimeStructure

noncomputable def largeWeightedProduct (n : ℕ) (hn : 13 ≤ n) : ℕ :=
  ∏ p ∈ (primeSupport n 13).filter (fun p => 13 ≤ p),
    primeComponent n 13 p ^ (16 - assignedIndex n 13 (by decide) hn p)

theorem actual_component_weight_dvd (n j p : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j)
    (hmem : p ∈ primeSupport n 13) (hpi : 13 ≤ p) :
    primeComponent n 13 p ^
        (16 - assignedIndex n 13 (by decide) (original_index_le hij hjn) p) ∣
      doubleWindow n j := by
  obtain ⟨b, c, _, _, hbc, hb, hc⟩ := actual_transferred_positions n j p hij hjn hno hmem hpi
  exact component_power_dvd_double_window n j _ b c _ hbc hb hc

theorem actual_large_weighted_dvd (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ∣ doubleWindow n j := by
  classical
  have h := prime_power_finset_prod_dvd
    ((primeSupport n 13).filter (fun p => 13 ≤ p))
    (fun p => (n.choose 13).factorization p *
      (16 - assignedIndex n 13 (by decide) (original_index_le hij hjn) p))
    (doubleWindow n j)
    (fun p hp => supported_prime n 13 p (Finset.mem_filter.mp hp).1)
    (fun p hp => by
      obtain ⟨hps, hpi⟩ := Finset.mem_filter.mp hp
      simpa only [primeComponent, Nat.pow_mul] using
        actual_component_weight_dvd n j p hij hjn hno hps hpi)
  simpa only [largeWeightedProduct, primeComponent, Nat.pow_mul] using h

theorem actual_large_weighted_le_windows (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ≤ doubleWindow n j := by
  apply Nat.le_of_dvd
  · exact double_window_pos n j (by omega) (by omega)
  · exact actual_large_weighted_dvd n j hij hjn hno

theorem actual_large_weighted_le_n72 (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ≤ n ^ 72 :=
  (actual_large_weighted_le_windows n j hij hjn hno).trans
    (double_window_upper n j (hjn.trans (Nat.div_le_self n 2)))

/-- The exact source-side divisibility and size statements are supplied together. -/
theorem actual_large_weighted_transfer (n j : ℕ)
    (hij : 13 < j) (hjn : j ≤ n / 2) (hno : ¬ Common n 13 j) :
    largeWeightedProduct n (original_index_le hij hjn) ∣ doubleWindow n j ∧
      largeWeightedProduct n (original_index_le hij hjn) ≤ doubleWindow n j ∧
      doubleWindow n j ≤ n ^ 72 := by
  exact ⟨actual_large_weighted_dvd n j hij hjn hno,
    actual_large_weighted_le_windows n j hij hjn hno,
    double_window_upper n j (hjn.trans (Nat.div_le_self n 2))⟩

end {ns}
''')
mods=['Generic','Windows','Positions','Transfer'];aus=['GAudit','WAudit','PAudit','TAudit'];roots=[];thms=[];decl=[]
for mod,au in zip(mods,aus):
 s=(OUT/(mod+'.lean')).read_text();rs=[]
 assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s)
 for kind,name in re.findall(r'^(?:noncomputable )?(def|theorem) ([A-Za-z_][A-Za-z_0-9]*)',s,re.M):
  r=ns+'.'+name;roots.append(r);rs.append(r);decl.append({'module':mod,'kind':kind,'root':r})
  if kind=='theorem':thms.append(r)
 write(au+'.lean','import '+own+'.'+mod+'\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in rs)+'\n')
audit='import '+own+'.Transfer\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n'
audit+='''
open scoped BigOperators
open Math.B699.I13WeightedTransfer B699LargePrimeStructure
#check (weighted_numerator_loss : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  ∀ (w : ℕ → ℕ) (L : ℕ), (∀ r : ℕ, r < k → w r ≤ L) →
    (∏ r ∈ Finset.range k, (n - r) ^ w r) ≤
      k.factorial ^ L * weightedComponents n k hk hkn w)
#check (actual_large_weighted_dvd : ∀ n j : ℕ, ∀ (hij : 13 < j) (hjn : j ≤ n / 2),
  ¬ Common n 13 j →
    largeWeightedProduct n (original_index_le hij hjn) ∣ doubleWindow n j)
#check (actual_large_weighted_le_n72 : ∀ n j : ℕ, ∀ (hij : 13 < j) (hjn : j ≤ n / 2),
  ¬ Common n 13 j → largeWeightedProduct n (original_index_le hij hjn) ≤ n ^ 72)
'''
write('Audit.lean',audit)
write('expected-axioms.json',json.dumps({'status':'UNCOMPILED_CANDIDATE_WITH_PENDING_WINASSIGN','allowed_axioms':['propext','Classical.choice','Quot.sound'],'expected_print_roots':roots,'candidate_public_theorems':thms,'declarations':decl},indent=2)+'\n')
print(json.dumps({'modules':4,'public_roots':len(roots),'public_theorems':len(thms),'sources':{m:hashlib.sha256((OUT/(m+'.lean')).read_bytes()).hexdigest() for m in mods}},indent=2))