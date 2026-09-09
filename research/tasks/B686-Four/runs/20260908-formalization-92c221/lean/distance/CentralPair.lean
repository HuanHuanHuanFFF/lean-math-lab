import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.distance.DistanceRoughSupport
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.reflected.TwoPositionSupport
import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Data.Int.ModEq
import Mathlib.RingTheory.Coprime.Lemmas
import Mathlib.Tactic.LinearCombination

/-! Central adjacent distance support: paired products give the first unit
coefficient without a general rational harmonic-number construction.
Source: adopted reflected-sum/b/cofactor-structure-and-pell.md §§5,6.1. -/
namespace B686Formalization
open Finset B686Target
set_option maxHeartbeats 2400000

private lemma product_asc (k n : ℕ) : product k n=(n+1).ascFactorial k := by
  induction k with
  | zero => simp [product]
  | succ k ih =>
    rw [product,prod_Icc_succ_top (by omega)]
    change product k n*(n+(k+1))=_
    rw [ih,Nat.ascFactorial_succ]
    ring

private lemma product_two_ends (k n : ℕ) :
    product (k+2) n=(n+1)*product k (n+1)*(n+k+2) := by
  simp only [product_asc]
  rw [show k+2=(k+1)+1 by omega,Nat.ascFactorial_succ]
  have h := Nat.ascFactorial_mul_ascFactorial (n+1) 1 k
  simp only [Nat.ascFactorial_succ,Nat.ascFactorial_zero,mul_one] at h
  rw [show k+1=1+k by omega,←h]
  ring

/-- The shared even polynomial remaining after the two central linear factors. -/
def centralKernel (r : ℕ) (z : ℤ) : ℤ :=
  ∏a∈Icc 1 r, (z^2-(a : ℤ)^2)

lemma centralKernel_succ (r : ℕ) (z : ℤ) :
    centralKernel (r+1) z=centralKernel r z*(z^2-(r+1 : ℤ)^2) := by
  unfold centralKernel
  rw [prod_Icc_succ_top (by omega)]
  push_cast
  rfl

lemma product_central_left (r n : ℕ) :
    (product (2*(r+1)) n : ℤ)=
      (n+r+1 : ℤ)*(n+2*(r+1))*centralKernel r (n+r+1) := by
  induction r generalizing n with
  | zero => norm_num [centralKernel,product,Finset.prod_Icc_succ_top]
  | succ r ih =>
    rw [show 2*(r+1+1)=2*(r+1)+2 by omega,product_two_ends]
    push_cast
    rw [ih]
    rw [centralKernel_succ]
    push_cast
    have hc : (n : ℤ)+1+r+1=n+(r+1)+1 := by ring
    rw [hc]
    ring

lemma product_central_right (r n : ℕ) :
    (product (2*(r+1)) n : ℤ)=
      (n+r+2 : ℤ)*(n+1)*centralKernel r (n+r+2) := by
  induction r generalizing n with
  | zero => norm_num [centralKernel,product,Finset.prod_Icc_succ_top]; ring
  | succ r ih =>
    rw [show 2*(r+1+1)=2*(r+1)+2 by omega,product_two_ends]
    push_cast
    rw [ih]
    rw [centralKernel_succ]
    push_cast
    have hc : (n : ℤ)+1+r+2=n+(r+1)+2 := by ring
    rw [hc]
    ring

lemma central_kernel_mod_square (r : ℕ) (z q : ℤ) (hq : q∣z) :
    Int.ModEq (q^2) (centralKernel r z) (centralKernel r 0) := by
  unfold centralKernel
  have hterm (a : ℕ) : Int.ModEq (q^2) (z^2-(a : ℤ)^2) (0^2-(a : ℤ)^2) := by
    apply Int.modEq_iff_dvd.mpr
    have hpow : q^2∣z^2 := pow_dvd_pow_of_dvd hq 2
    rw [show (0^2-(a : ℤ)^2)-(z^2-(a : ℤ)^2)= -z^2 by ring]
    exact dvd_neg.mpr hpow
  induction Icc 1 r using Finset.induction_on with
  | empty => simp
  | @insert a s ha ih =>
    simpa only [prod_insert ha] using (hterm a).mul ih

/-- The cubic Taylor consequence needed by the central consumer. -/
lemma central_cubic_contact (r : ℕ) (z d q b : ℤ)
    (hz : q∣z) (hd : q∣d) (hR : q^2∣3*z-d)
    (hcop : IsCoprime q (centralKernel r 0))
    (heq : (z+d)*(z+d+b)*centralKernel r (z+d)=
      4*(z*(z+b)*centralKernel r z)) :
    q^3∣4*d^2-3*b*(3*z-d) := by
  have herr (w : ℤ) (hw : q∣w) :
      q^3∣w*(w+b)*centralKernel r w-w*(w+b)*centralKernel r 0 := by
    have hK := Int.modEq_iff_dvd.mp (central_kernel_mod_square r w q hw).symm
    obtain ⟨u,hu⟩ := hw
    obtain ⟨v,hv⟩ := hK
    refine ⟨u*(w+b)*v,?_⟩
    calc
      _ = w*(w+b)*(centralKernel r w-centralKernel r 0) := by ring
      _ = q^3*(u*(w+b)*v) := by rw [hv,hu]; ring
  have ht : q^3∣centralKernel r 0*((z+d)*(z+d+b)-4*z*(z+b)) := by
    have ha := (herr (z+d) (dvd_add hz hd)).sub (dvd_mul_of_dvd_right (herr z hz) 4)
    have hid :
        ((z+d)*(z+d+b)*centralKernel r (z+d)-(z+d)*(z+d+b)*centralKernel r 0)-
        4*(z*(z+b)*centralKernel r z-z*(z+b)*centralKernel r 0)=
        -(centralKernel r 0*((z+d)*(z+d+b)-4*z*(z+b))) := by
      rw [heq]
      ring
    rw [hid] at ha
    exact dvd_neg.mp ha
  have hmain := hcop.pow_left.dvd_of_dvd_mul_left ht
  have hsquare : q^3∣(3*z-d)^2 := by
    exact (pow_dvd_pow q (by omega : 3≤2*2)).trans (by simpa only [←pow_mul] using pow_dvd_pow_of_dvd hR 2)
  have hsum := (dvd_mul_of_dvd_right hmain 3).add hsquare
  rw [show 4*d^2-3*b*(3*z-d)=
    3*((z+d)*(z+d+b)-4*z*(z+b))+(3*z-d)^2 by ring]
  exact hsum

lemma central_kernel_coprime (r p a : ℕ) (hp : p.Prime) (hpr : r<p) :
    IsCoprime ((p : ℤ)^a) (centralKernel r 0) := by
  apply IsCoprime.pow_left
  unfold centralKernel
  apply IsCoprime.prod_right
  intro j hj
  have hj' := mem_Icc.mp hj
  have hcop : p.Coprime j := hp.coprime_iff_not_dvd.mpr (by
    intro h
    have := Nat.le_of_dvd (by omega : 0<j) h
    omega)
  simpa using (hcop.isCoprime.pow_right (n:=2)).neg_right

lemma original_central_products (r n m : ℕ) (hr : 1≤r)
    (hsep : n+2*r≤m) (heq : product (2*r) m=4*product (2*r) n) :
    let d : ℤ := (m-n : ℕ)
    let z : ℤ := n+r
    ((z+d)*(z+d+r)*centralKernel (r-1) (z+d)=
      4*(z*(z+r)*centralKernel (r-1) z)) ∧
    ((z+1+d)*(z+1+d-r)*centralKernel (r-1) (z+1+d)=
      4*((z+1)*(z+1-r)*centralKernel (r-1) (z+1))) := by
  have hr0 : r-1+1=r := by omega
  have hl (t : ℕ) : (product (2*r) t : ℤ)=
      (t+r : ℤ)*(t+2*r)*centralKernel (r-1) (t+r) := by
    have h := product_central_left (r-1) t
    rw [hr0] at h
    convert h using 1 <;> push_cast <;> rw [Nat.cast_sub hr] <;> ring
  have hh (t : ℕ) : (product (2*r) t : ℤ)=
      (t+r+1 : ℤ)*(t+1)*centralKernel (r-1) (t+r+1) := by
    have h := product_central_right (r-1) t
    rw [hr0] at h
    convert h using 1 <;> push_cast <;> rw [Nat.cast_sub hr] <;> ring
  have hnat : n+(m-n)=m := by omega
  have hcast : (n : ℤ)+(m-n : ℕ)=m := by exact_mod_cast hnat
  have heqZ : (product (2*r) m : ℤ)=4*(product (2*r) n : ℤ) := by exact_mod_cast heq
  constructor
  · rw [hl m,hl n] at heqZ
    have harg : (n : ℤ)+r+(m-n : ℕ)=m+r := by linarith
    rw [harg]
    convert heqZ using 1 <;> ring
  · rw [hh m,hh n] at heqZ
    have harg : (n : ℤ)+r+1+(m-n : ℕ)=m+r+1 := by linarith
    rw [harg]
    convert heqZ using 1 <;> ring

/-- info: 'B686Formalization.product_central_left' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms product_central_left
/-- info: 'B686Formalization.product_central_right' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms product_central_right
end B686Formalization
