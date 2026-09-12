from pathlib import Path
import re,json,hashlib
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-window-prime-assignment-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-window-prime-assignment-5e2d13bb»'
old='research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63»'
ns='Math.B699.WindowPrimeAssignment'
opts='set_option autoImplicit false\nset_option relaxedAutoImplicit false\n'
def write(name,s):
 p=OUT/name;assert not p.exists();p.write_text(s,encoding='utf-8')
write('Assignment.lean',f'''import {old}.lean.SmallPrimeLocalization
import Mathlib.Data.Nat.Factorization.Basic

/-! UNCOMPILED. Assign the actual complete prime components of choose(n,k)
using the accepted localization theorem. The index's full p-part is retained
in assigned_index_spec, including p=k. No assignment existence is assumed. -/
{opts}namespace {ns}
open scoped BigOperators

noncomputable def primeSupport (n k : ℕ) : Finset ℕ := (n.choose k).primeFactors
noncomputable def primeComponent (n k p : ℕ) : ℕ := p ^ (n.choose k).factorization p

noncomputable def assignedIndex (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (p : ℕ) : ℕ :=
  if hp : p.Prime then
    Classical.choose (B699LowIndex.binomial_prime_power_localization hk hkn hp)
  else 0

theorem choose_ne_zero (n k : ℕ) (hkn : k ≤ n) : n.choose k ≠ 0 :=
  (Nat.choose_pos hkn).ne'

theorem supported_prime (n k p : ℕ) (hp : p ∈ primeSupport n k) : p.Prime :=
  Nat.prime_of_mem_primeFactors (by simpa only [primeSupport] using hp)

theorem supported_exponent_pos (n k p : ℕ) (hp : p ∈ primeSupport n k) :
    0 < (n.choose k).factorization p := by
  have hs : p ∈ (n.choose k).factorization.support := by
    simpa only [Nat.support_factorization, primeSupport] using hp
  exact Nat.pos_of_ne_zero (Finsupp.mem_support_iff.mp hs)

theorem component_pos (n k p : ℕ) (hp : p ∈ primeSupport n k) :
    0 < primeComponent n k p := by
  exact Nat.pow_pos (supported_prime n k p hp).pos

theorem components_coprime (n k p q : ℕ)
    (hp : p ∈ primeSupport n k) (hq : q ∈ primeSupport n k) (hpq : p ≠ q) :
    Nat.Coprime (primeComponent n k p) (primeComponent n k q) := by
  unfold primeComponent
  exact Nat.Coprime.pow ((n.choose k).factorization p) ((n.choose k).factorization q)
    ((Nat.coprime_primes (supported_prime n k p hp) (supported_prime n k q hq)).2 hpq)

theorem assigned_index_spec (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (p : ℕ) (hp : p.Prime) :
    assignedIndex n k hk hkn p < k ∧
      p ^ ((n.choose k).factorization p + k.factorization p) ∣
        n - assignedIndex n k hk hkn p := by
  simpa only [assignedIndex, dif_pos hp] using
    (Classical.choose_spec (B699LowIndex.binomial_prime_power_localization hk hkn hp))

theorem component_dvd_assigned_window (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (p : ℕ) (hp : p.Prime) :
    primeComponent n k p ∣ n - assignedIndex n k hk hkn p := by
  exact (Nat.pow_dvd_pow p (show (n.choose k).factorization p ≤
      (n.choose k).factorization p + k.factorization p by omega)).trans
    (assigned_index_spec n k hk hkn p hp).2

theorem components_product (n k : ℕ) (hkn : k ≤ n) :
    (∏ p ∈ primeSupport n k, primeComponent n k p) = n.choose k := by
  have h := Nat.prod_factorization_pow_eq_self (choose_ne_zero n k hkn)
  simpa only [Finsupp.prod, Nat.support_factorization, primeSupport, primeComponent] using h

end {ns}
''')
write('Products.lean',f'''import Mathlib.Data.Nat.GCD.BigOperators
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-! UNCOMPILED. An abstract finite product lemma used only with the actual
prime components below. Its pairwise/divisibility premises are discharged
inside the actual block theorem, never exposed by the final window bridge. -/
{opts}namespace {ns}
open scoped BigOperators

theorem product_dvd_of_pairwise_coprime (S : Finset ℕ) (f : ℕ → ℕ) (N : ℕ)
    (hcop : ∀ p ∈ S, ∀ q ∈ S, p ≠ q → Nat.Coprime (f p) (f q))
    (hdiv : ∀ p ∈ S, f p ∣ N) : (∏ p ∈ S, f p) ∣ N := by
  classical
  revert hcop hdiv
  induction S using Finset.induction_on with
  | empty =>
      intro _ _
      simp only [Finset.prod_empty]
      exact one_dvd N
  | @insert p S hpnot ih =>
      intro hcop hdiv
      have hrest : (∏ q ∈ S, f q) ∣ N :=
        ih (fun a ha b hb hab =>
          hcop a (Finset.mem_insert_of_mem ha) b (Finset.mem_insert_of_mem hb) hab)
          (fun q hq => hdiv q (Finset.mem_insert_of_mem hq))
      have hc : Nat.Coprime (f p) (∏ q ∈ S, f q) := by
        apply Nat.coprime_prod_right_iff.mpr
        intro q hq
        apply hcop p (Finset.mem_insert_self p S) q (Finset.mem_insert_of_mem hq)
        intro heq
        apply hpnot
        simpa only [heq] using hq
      rw [Finset.prod_insert hpnot]
      exact hc.mul_dvd_of_dvd_of_dvd (hdiv p (Finset.mem_insert_self p S)) hrest

end {ns}
''')
write('Blocks.lean',f'''import {own}.Assignment
import {own}.Products

/-! UNCOMPILED. Actual location fibers of the complete prime support.
Each fiber is a positive divisor; distinct fibers are coprime; their product
is exactly the original binomial coefficient. -/
{opts}namespace {ns}
open scoped BigOperators

noncomputable def assignedBlock (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) : ℕ :=
  ∏ p ∈ (primeSupport n k).filter (fun p => assignedIndex n k hk hkn p = r),
    primeComponent n k p

theorem block_pos (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) :
    0 < assignedBlock n k hk hkn r := by
  classical
  unfold assignedBlock
  apply Finset.prod_pos
  intro p hp
  exact component_pos n k p (Finset.mem_filter.mp hp).1

theorem block_dvd_window (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) :
    assignedBlock n k hk hkn r ∣ n - r := by
  classical
  unfold assignedBlock
  apply product_dvd_of_pairwise_coprime
  · intro p hp q hq hpq
    exact components_coprime n k p q
      (Finset.mem_filter.mp hp).1 (Finset.mem_filter.mp hq).1 hpq
  · intro p hp
    obtain ⟨hps, hpr⟩ := Finset.mem_filter.mp hp
    have h := component_dvd_assigned_window n k hk hkn p (supported_prime n k p hps)
    simpa only [hpr] using h

theorem blocks_coprime (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (r s : ℕ) (hrs : r ≠ s) :
    Nat.Coprime (assignedBlock n k hk hkn r) (assignedBlock n k hk hkn s) := by
  classical
  unfold assignedBlock
  apply Nat.coprime_prod_left_iff.mpr
  intro p hp
  apply Nat.coprime_prod_right_iff.mpr
  intro q hq
  obtain ⟨hps, hpr⟩ := Finset.mem_filter.mp hp
  obtain ⟨hqs, hqspos⟩ := Finset.mem_filter.mp hq
  apply components_coprime n k p q hps hqs
  intro hpq
  apply hrs
  calc
    r = assignedIndex n k hk hkn p := hpr.symm
    _ = assignedIndex n k hk hkn q := congrArg (assignedIndex n k hk hkn) hpq
    _ = s := hqspos

theorem blocks_product (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r) = n.choose k := by
  classical
  calc
    _ = ∏ p ∈ primeSupport n k, primeComponent n k p := by
      unfold assignedBlock
      exact Finset.prod_fiberwise_of_maps_to
        (s := primeSupport n k) (t := Finset.range k) (g := assignedIndex n k hk hkn)
        (fun p hp => Finset.mem_range.mpr
          (assigned_index_spec n k hk hkn p (supported_prime n k p hp)).1)
        (primeComponent n k)
    _ = n.choose k := components_product n k hkn

end {ns}
''')
write('Remainders.lean',f'''import {own}.Blocks

/-! UNCOMPILED. The actual natural quotient is used. Divisibility and positivity
justify its multiplication identity; the positive actual choose(n,k) is then
cancelled from the total numerator-window product. -/
{opts}namespace {ns}
open scoped BigOperators

noncomputable def windowRemainder (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) : ℕ :=
  (n - r) / assignedBlock n k hk hkn r

theorem window_pos (n k : ℕ) (hkn : k ≤ n) (r : ℕ) (hr : r < k) : 0 < n - r :=
  Nat.sub_pos_of_lt (lt_of_lt_of_le hr hkn)

theorem remainder_mul_block (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) :
    windowRemainder n k hk hkn r * assignedBlock n k hk hkn r = n - r := by
  exact Nat.div_mul_cancel (block_dvd_window n k hk hkn r)

theorem remainder_pos (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) (hr : r < k) :
    0 < windowRemainder n k hk hkn r := by
  have hN : n - r ≠ 0 := (window_pos n k hkn r hr).ne'
  apply Nat.pos_of_ne_zero
  intro hzero
  apply hN
  calc
    n - r = windowRemainder n k hk hkn r * assignedBlock n k hk hkn r :=
      (remainder_mul_block n k hk hkn r).symm
    _ = 0 := by rw [hzero, Nat.zero_mul]

theorem remainder_ge_one (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) (r : ℕ) (hr : r < k) :
    1 ≤ windowRemainder n k hk hkn r := by
  have h := remainder_pos n k hk hkn r hr
  omega

theorem numerator_window_product (n k : ℕ) :
    (∏ r ∈ Finset.range k, n - r) = k.factorial * n.choose k := by
  rw [← Nat.descFactorial_eq_prod_range, Nat.descFactorial_eq_factorial_mul_choose]

theorem remainders_product (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) = k.factorial := by
  apply Nat.eq_of_mul_eq_mul_right (Nat.choose_pos hkn)
  calc
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) * n.choose k =
        (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) *
          (∏ r ∈ Finset.range k, assignedBlock n k hk hkn r) := by
      rw [blocks_product n k hk hkn]
    _ = ∏ r ∈ Finset.range k,
        windowRemainder n k hk hkn r * assignedBlock n k hk hkn r := by
      rw [Finset.prod_mul_distrib]
    _ = ∏ r ∈ Finset.range k, n - r := by
      apply Finset.prod_congr rfl
      intro r _
      exact remainder_mul_block n k hk hkn r
    _ = k.factorial * n.choose k := numerator_window_product n k

/-- Every property is supplied by the actual construction, not a chosen
assignment or product identity supplied by the caller. -/
theorem actual_window_factorization (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n) :
    (∀ r : ℕ, r < k →
      0 < assignedBlock n k hk hkn r ∧
      assignedBlock n k hk hkn r ∣ n - r ∧
      1 ≤ windowRemainder n k hk hkn r ∧
      windowRemainder n k hk hkn r * assignedBlock n k hk hkn r = n - r) ∧
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) = k.factorial := by
  constructor
  · intro r hr
    exact ⟨block_pos n k hk hkn r, block_dvd_window n k hk hkn r,
      remainder_ge_one n k hk hkn r hr, remainder_mul_block n k hk hkn r⟩
  · exact remainders_product n k hk hkn

end {ns}
''')
write('Weighted.lean',f'''import {own}.Remainders
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-! UNCOMPILED. The arbitrary admissible weights are applied to the actual
remainders already proved to have product k!. No weighted conclusion is an input. -/
{opts}namespace {ns}
open scoped BigOperators

theorem weighted_remainders_le (n k : ℕ) (hk : 1 ≤ k) (hkn : k ≤ n)
    (w : ℕ → ℕ) (L : ℕ) (hw : ∀ r : ℕ, r < k → w r ≤ L) :
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) ≤ k.factorial ^ L := by
  calc
    _ ≤ ∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ L := by
      apply Finset.prod_le_prod'
      intro r hr
      exact Nat.pow_le_pow_right (remainder_pos n k hk hkn r (Finset.mem_range.mp hr))
        (hw r (Finset.mem_range.mp hr))
    _ = (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) ^ L :=
      Finset.prod_pow (Finset.range k) L (windowRemainder n k hk hkn)
    _ = k.factorial ^ L := by rw [remainders_product n k hk hkn]

theorem thirteen_remainders_product (n : ℕ) (hn : 13 ≤ n) :
    (∏ r ∈ Finset.range 13, windowRemainder n 13 (by decide) hn r) =
      Nat.factorial 13 :=
  remainders_product n 13 (by decide) hn

theorem thirteen_weighted_remainders_le (n : ℕ) (hn : 13 ≤ n)
    (w : ℕ → ℕ) (hw : ∀ r : ℕ, r < 13 → w r ≤ 16) :
    (∏ r ∈ Finset.range 13, windowRemainder n 13 (by decide) hn r ^ w r) ≤
      (Nat.factorial 13) ^ 16 :=
  weighted_remainders_le n 13 (by decide) hn w 16 hw

theorem thirteen_linear_weight_remainders_le (n : ℕ) (hn : 13 ≤ n) :
    (∏ r ∈ Finset.range 13, windowRemainder n 13 (by decide) hn r ^ (16 - r)) ≤
      (Nat.factorial 13) ^ 16 :=
  weighted_remainders_le n 13 (by decide) hn (fun r => 16 - r) 16
    (fun r _ => Nat.sub_le 16 r)

end {ns}
''')
mods=['Products','Assignment','Blocks','Remainders','Weighted'];audits=['PAudit','AAudit','BAudit','RAudit','WAudit']
roots=[];thms=[];decls=[]
for mod,au in zip(mods,audits):
 s=(OUT/(mod+'.lean')).read_text();rs=[]
 assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s)
 for kind,n in re.findall(r'^(?:noncomputable )?(def|theorem) ([A-Za-z_][A-Za-z_0-9]*)',s,re.M):
  root=ns+'.'+n;assert root not in roots;roots.append(root);rs.append(root);decls.append({'module':mod,'kind':kind,'root':root})
  if kind=='theorem':thms.append(root)
 write(au+'.lean','import '+own+'.'+mod+'\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in rs)+'\n')
audit='import '+own+'.Weighted\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n'
audit+='''
open scoped BigOperators
open Math.B699.WindowPrimeAssignment
#check (remainders_product : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r) = k.factorial)
#check (weighted_remainders_le : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  ∀ (w : ℕ → ℕ) (L : ℕ), (∀ r : ℕ, r < k → w r ≤ L) →
    (∏ r ∈ Finset.range k, windowRemainder n k hk hkn r ^ w r) ≤ k.factorial ^ L)
'''
write('Audit.lean',audit)
write('expected-axioms.json',json.dumps({'status':'UNCOMPILED_CANDIDATE','allowed_axioms':['propext','Classical.choice','Quot.sound'],'expected_print_roots':roots,'candidate_public_theorems':thms,'declarations':decls},indent=2)+'\n')
print(json.dumps({'implementation_modules':len(mods),'public_roots':len(roots),'public_theorems':len(thms),'sha256':{m:hashlib.sha256((OUT/(m+'.lean')).read_bytes()).hexdigest() for m in mods}},indent=2))