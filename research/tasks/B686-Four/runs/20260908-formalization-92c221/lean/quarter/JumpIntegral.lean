import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.BoundaryValues
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.CutIntegrals
import research.tasks.«B686-Four».runs.«20260908-formalization-92c221».lean.quarter.RectangleCauchy

/-! The actual quarter branches, compact jump, and square-coordinate change
of variables. Primary-task ownership; all analytic hypotheses are discharged
by the constructed branches. -/
namespace B686QuarterRunge
open Finset Complex intervalIntegral
noncomputable section
set_option maxHeartbeats 2400000

def jumpKernel (s : ℕ) (z t : ℝ) : ℂ := boundaryJump s t/((t : ℂ)-(z : ℂ))

theorem boundaryJump_continuous (s : ℕ) : Continuous (boundaryJump s) := by
  unfold boundaryJump
  apply Continuous.sub
  · exact (upperRemainder_continuousOn s).comp_continuous continuous_ofReal (by intro x; simp)
  · exact (lowerRemainder_continuousOn s).comp_continuous continuous_ofReal (by intro x; simp)

theorem jumpKernel_continuousOn (s : ℕ) (z R : ℝ) (hz : R<z) :
    ContinuousOn (jumpKernel s z) (Set.Iic R) := by
  apply (boundaryJump_continuous s).continuousOn.div (by fun_prop)
  intro t ht hh
  have he : t=z := by exact_mod_cast sub_eq_zero.mp hh
  have ht' : t≤R := ht
  linarith

lemma jumpKernel_intervalIntegrable (s : ℕ) (z a b R : ℝ)
    (hab : a≤b) (hb : b≤R) (hz : R<z) :
    IntervalIntegrable (jumpKernel s z) MeasureTheory.volume a b := by
  apply ContinuousOn.intervalIntegrable_of_Icc hab
  exact (jumpKernel_continuousOn s z R hz).mono (by intro t ht; exact ht.2.trans hb)

theorem actual_jump_representation (s : ℕ) (hs : 1≤s) (z : ℝ)
    (hz : rootLocations (2*s)<z) :
    upperRemainder s (z : ℂ)=(2*Real.pi*I)⁻¹*
      (∫t in -rootLocations (2*s)..rootLocations (2*s),jumpKernel s z t) := by
  exact B686QuarterCauchy.jump_representation_real (upperRemainder s) (lowerRemainder s)
    (rootLocations (2*s)) (by unfold rootLocations; positivity)
    (upperRemainder_continuousOn s) (lowerRemainder_continuousOn s)
    (upperRemainder_differentiableAt s) (lowerRemainder_differentiableAt s)
    (upperRemainder_tendsto s hs) (lowerRemainder_tendsto s hs)
    (remainders_agree_outside s) z hz

lemma rootDensity_continuous (r : ℕ) : Continuous (rootDensity rootLocations r) := by
  unfold rootDensity rootLocations
  fun_prop

lemma density_cut_change_of_variable (s j : ℕ) (hj : j<s) (z : ℝ)
    (hz : rootLocations (2*s)<z) :
    (∫t in rootLocations (2*j)..rootLocations (2*j+1),
      rootDensity rootLocations (2*s) t/(z-t))=cutIntegral s j 1 z := by
  let a : ℝ := 4*(j : ℝ)+1
  let b : ℝ := 4*(j : ℝ)+3
  have ha : 0≤a := by dsimp [a]; positivity
  have hab : a≤b := by dsimp [a,b]; linarith
  have hida : a^2=rootLocations (2*j) := by simp [a,rootLocations]; ring
  have hidb : b^2=rootLocations (2*j+1) := by simp [b,rootLocations]; ring
  have hb : b^2<z := by
    rw [hidb]
    exact (rootLocations_strictMono (by omega : 2*j+1<2*s)).trans hz
  have hg : ContinuousOn (fun t : ℝ => rootDensity rootLocations (2*s) t/(z-t))
      ((fun u : ℝ => u^2) '' Set.uIcc a b) := by
    apply (rootDensity_continuous (2*s)).continuousOn.div (by fun_prop)
    rintro t ⟨u,hu,rfl⟩
    have hu' : u∈Set.Icc a b := by simpa [Set.uIcc_of_le hab] using hu
    have hh : u^2≤b^2 := by nlinarith [hu'.1,hu'.2]
    linarith
  have hchange := integral_comp_mul_deriv' (f := fun u : ℝ => u^2)
    (f' := fun u => 2*u) (g := fun t => rootDensity rootLocations (2*s) t/(z-t))
    (a := a) (b := b) (by intro u hu; convert! (hasDerivAt_id u).pow 2 using 1 <;> norm_num)
    (by fun_prop) hg
  rw [hida,hidb] at hchange
  rw [←hchange]
  unfold cutIntegral
  apply integral_congr
  intro u hu
  dsimp [Function.comp_def,cutIntegrand,rootDensity,rootLocations,realRadicand]
  ring

lemma integral_jump_cut (s j : ℕ) (hj : j<s) (z : ℝ)
    (hz : rootLocations (2*s)<z) :
    (∫t in rootLocations (2*j)..rootLocations (2*j+1),jumpKernel s z t)=
      -(2*I)*(((-1 : ℝ)^(s-1-j)*cutIntegral s j 1 z : ℝ) : ℂ) := by
  have hcongr : (∫t in rootLocations (2*j)..rootLocations (2*j+1),jumpKernel s z t)=
      ∫t in rootLocations (2*j)..rootLocations (2*j+1),
        -(2*I)*(((-1 : ℝ)^(s-1-j)*(rootDensity rootLocations (2*s) t/(z-t)) : ℝ) : ℂ) := by
    apply integral_congr_Ioo_of_le (rootLocations_strictMono.monotone (by omega))
    intro t ht
    dsimp [jumpKernel]
    rw [boundaryJump_on_cut s j hj t ht.1 ht.2]
    push_cast
    rw [show (t : ℂ)-(z : ℂ)=-((z : ℂ)-t) by ring,div_neg]
    ring
  rw [hcongr,integral_const_mul,integral_ofReal,integral_const_mul,
    density_cut_change_of_variable s j hj z hz]

lemma integral_jump_gap (s j : ℕ) (hj : j+1≤s) (z : ℝ) :
    (∫t in rootLocations (2*j+1)..rootLocations (2*j+2),jumpKernel s z t)=0 := by
  calc
    _ = ∫t in rootLocations (2*j+1)..rootLocations (2*j+2),(0 : ℂ) := by
      apply integral_congr_Ioo_of_le (rootLocations_strictMono.monotone (by omega))
      intro t ht
      dsimp [jumpKernel]
      rw [boundaryJump_on_gap s j hj t ht.1 (by simpa [Nat.add_assoc] using ht.2)]
      simp
    _ = 0 := by simp

lemma sum_range_even_odd (f : ℕ→ℂ) (s : ℕ) :
    (∑h∈range (2*s),f h)=∑j∈range s,(f (2*j)+f (2*j+1)) := by
  induction s with
  | zero => simp
  | succ s ih =>
    rw [Nat.mul_succ,show 2*s+2=(2*s+1)+1 by omega,sum_range_succ,sum_range_succ,ih,sum_range_succ]
    ring

lemma integral_jump_all_cuts (s : ℕ) (hs : 1≤s) (z : ℝ)
    (hz : rootLocations (2*s)<z) :
    (∫t in -rootLocations (2*s)..rootLocations (2*s),jumpKernel s z t)=
      -(2*I)*((alternatingFromRight (fun j => cutIntegral s j 1 z) s : ℝ) : ℂ) := by
  let R : ℝ := rootLocations (2*s)
  have hR : 0≤R := by dsimp [R,rootLocations]; positivity
  have h0 : rootLocations 0≤R := rootLocations_strictMono.monotone (Nat.zero_le _)
  have hleft : (∫t in -R..rootLocations 0,jumpKernel s z t)=0 := by
    calc
      _ = ∫t in -R..rootLocations 0,(0 : ℂ) := by
        apply integral_congr_Ioo_of_le (by norm_num [rootLocations]; linarith)
        intro t ht
        dsimp [jumpKernel]
        rw [boundaryJump_left s t ht.2]
        simp
      _ = 0 := by simp
  have hsplit := integral_add_adjacent_intervals
    (jumpKernel_intervalIntegrable s z (-R) (rootLocations 0) R
      (by norm_num [rootLocations]; linarith) h0 hz)
    (jumpKernel_intervalIntegrable s z (rootLocations 0) R R h0 le_rfl hz)
  rw [hleft,zero_add] at hsplit
  rw [←hsplit]
  have hsum := sum_integral_adjacent_intervals (a := rootLocations) (n := 2*s)
    (f := jumpKernel s z) (μ := MeasureTheory.volume) (by
      intro h hh
      exact jumpKernel_intervalIntegrable s z _ _ R
        (rootLocations_strictMono.monotone (by omega))
        (rootLocations_strictMono.monotone (by omega)) hz)
  rw [←hsum,sum_range_even_odd]
  have hterms : (∑j∈range s,((∫t in rootLocations (2*j)..rootLocations (2*j+1),jumpKernel s z t)+
      ∫t in rootLocations (2*j+1)..rootLocations (2*j+1+1),jumpKernel s z t))=
      ∑j∈range s,-(2*I)*(((-1 : ℝ)^(s-1-j)*cutIntegral s j 1 z : ℝ) : ℂ) := by
    apply sum_congr rfl
    intro j hj
    have hj' := mem_range.mp hj
    rw [integral_jump_cut s j hj' z hz]
    rw [show 2*j+1+1=2*j+2 by omega,integral_jump_gap s j (by omega) z,add_zero]
  rw [hterms,←mul_sum]
  congr 1
  simp [alternatingFromRight]

theorem upperRemainder_eq_alternating_integral (s : ℕ) (hs : 1≤s) (z : ℝ)
    (hz : rootLocations (2*s)<z) :
    upperRemainder s (z : ℂ)=
      -(((1/Real.pi)*alternatingFromRight (fun j => cutIntegral s j 1 z) s : ℝ) : ℂ) := by
  rw [actual_jump_representation s hs z hz,integral_jump_all_cuts s hs z hz]
  have hpi : (Real.pi : ℂ)≠0 := by exact_mod_cast Real.pi_ne_zero
  push_cast
  field_simp
  <;> ring

/-- info: 'B686QuarterRunge.upperRemainder_eq_alternating_integral' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms upperRemainder_eq_alternating_integral
end
end B686QuarterRunge
