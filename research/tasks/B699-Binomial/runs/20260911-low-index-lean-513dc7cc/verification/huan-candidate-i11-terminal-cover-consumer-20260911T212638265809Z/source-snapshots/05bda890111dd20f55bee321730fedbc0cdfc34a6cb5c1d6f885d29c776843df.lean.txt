import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalCover.Witness

/-! UNCOMPILED. Finite witness checks plus the existing interval checker.
Neither Bool definition contains Common or a universally quantified j. -/
set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11TerminalCover
open B699LargePrimeStructure

def witnessIntervals (witnesses : List Witness) : List NatInterval :=
  witnesses.map witnessBounds

def witnessesCheck (witnesses : List Witness) : Bool := witnesses.all witnessCheck

def witnessCoverCheck (lo hi : ℕ) (witnesses : List Witness) : Bool :=
  witnessesCheck witnesses && coverCheck lo hi (witnessIntervals witnesses)

def candidateIntervalsCheck (candidate_intervals : List NatInterval) (witnesses : List Witness) : Bool :=
  witnessesCheck witnesses &&
    candidate_intervals.all (fun I => coverCheck I.1 I.2 (witnessIntervals witnesses))

def candidateMem (n : ℕ) (candidate_intervals : List NatInterval) : Prop :=
  ∃ I ∈ candidate_intervals, intervalMem n I

theorem checked_witnesses_cover {witnesses : List Witness}
    (hchecks : witnessesCheck witnesses = true) {n j : ℕ}
    {I : NatInterval} (hI : I ∈ witnessIntervals witnesses) (hIn : intervalMem n I)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  unfold witnessIntervals at hI
  obtain ⟨w, hw, heq⟩ := List.mem_map.mp hI
  rw [← heq] at hIn
  unfold witnessesCheck at hchecks
  have hc := List.all_eq_true.mp hchecks w hw
  exact witnessCheck_sound hc hIn hij hjn

theorem common_of_cover_checks {witnesses : List Witness} {lo hi n j : ℕ}
    (hchecks : witnessesCheck witnesses = true)
    (hcover : coverCheck lo hi (witnessIntervals witnesses) = true)
    (hlo : lo ≤ n) (hhi : n ≤ hi) (hij : 11 < j) (hjn : j ≤ n / 2) :
    Common n 11 j := by
  obtain ⟨I, hI, hIn⟩ := coverCheck_sound (witnessIntervals witnesses)
    lo hi n hcover hlo hhi
  exact checked_witnesses_cover hchecks hI hIn hij hjn

theorem witnessCoverCheck_sound {witnesses : List Witness} {lo hi n j : ℕ}
    (hcheck : witnessCoverCheck lo hi witnesses = true)
    (hlo : lo ≤ n) (hhi : n ≤ hi) (hij : 11 < j) (hjn : j ≤ n / 2) :
    Common n 11 j := by
  unfold witnessCoverCheck at hcheck
  obtain ⟨hchecks, hcover⟩ := Bool.and_eq_true_iff.mp hcheck
  exact common_of_cover_checks hchecks hcover hlo hhi hij hjn

theorem candidateIntervalsCheck_member {candidate_intervals : List NatInterval}
    {witnesses : List Witness} {I : NatInterval} {n j : ℕ}
    (hcheck : candidateIntervalsCheck candidate_intervals witnesses = true)
    (hI : I ∈ candidate_intervals) (hIn : intervalMem n I)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  unfold candidateIntervalsCheck at hcheck
  obtain ⟨hchecks, hcandidates⟩ := Bool.and_eq_true_iff.mp hcheck
  have hcover := List.all_eq_true.mp hcandidates I hI
  exact common_of_cover_checks hchecks hcover hIn.1 hIn.2 hij hjn

theorem candidateIntervalsCheck_sound {candidate_intervals : List NatInterval}
    {witnesses : List Witness} {n j : ℕ}
    (hcheck : candidateIntervalsCheck candidate_intervals witnesses = true)
    (hmember : candidateMem n candidate_intervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j := by
  obtain ⟨I, hI, hIn⟩ := hmember
  exact candidateIntervalsCheck_member hcheck hI hIn hij hjn

/-- Explicit original conclusion, including p=11 when it is the witness. -/
theorem candidateIntervalsCheck_prime {candidate_intervals : List NatInterval}
    {witnesses : List Witness} {n j : ℕ}
    (hcheck : candidateIntervalsCheck candidate_intervals witnesses = true)
    (hmember : candidateMem n candidate_intervals)
    (hij : 11 < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.gcd (n.choose 11) (n.choose j) := by
  change Common n 11 j
  exact candidateIntervalsCheck_sound hcheck hmember hij hjn

end B699LowIndex.I11TerminalCover
