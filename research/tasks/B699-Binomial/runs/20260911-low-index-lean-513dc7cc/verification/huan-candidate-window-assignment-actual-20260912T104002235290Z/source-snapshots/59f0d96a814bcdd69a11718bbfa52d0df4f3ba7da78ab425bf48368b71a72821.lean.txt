import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WinAssign.Assignment

#check @Math.B699.WindowPrimeAssignment.primeSupport
#print axioms Math.B699.WindowPrimeAssignment.primeSupport
#check @Math.B699.WindowPrimeAssignment.primeComponent
#print axioms Math.B699.WindowPrimeAssignment.primeComponent
#check @Math.B699.WindowPrimeAssignment.assignedIndex
#print axioms Math.B699.WindowPrimeAssignment.assignedIndex
#check @Math.B699.WindowPrimeAssignment.choose_ne_zero
#print axioms Math.B699.WindowPrimeAssignment.choose_ne_zero
#check @Math.B699.WindowPrimeAssignment.supported_prime
#print axioms Math.B699.WindowPrimeAssignment.supported_prime
#check @Math.B699.WindowPrimeAssignment.supported_exponent_pos
#print axioms Math.B699.WindowPrimeAssignment.supported_exponent_pos
#check @Math.B699.WindowPrimeAssignment.component_pos
#print axioms Math.B699.WindowPrimeAssignment.component_pos
#check @Math.B699.WindowPrimeAssignment.components_coprime
#print axioms Math.B699.WindowPrimeAssignment.components_coprime
#check @Math.B699.WindowPrimeAssignment.assigned_index_spec
#print axioms Math.B699.WindowPrimeAssignment.assigned_index_spec
#check @Math.B699.WindowPrimeAssignment.component_dvd_assigned_window
#print axioms Math.B699.WindowPrimeAssignment.component_dvd_assigned_window
#check @Math.B699.WindowPrimeAssignment.components_product
#print axioms Math.B699.WindowPrimeAssignment.components_product

#check (Math.B699.WindowPrimeAssignment.assigned_index_spec :
  ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n), ∀ p : ℕ, p.Prime →
    Math.B699.WindowPrimeAssignment.assignedIndex n k hk hkn p < k ∧
      p ^ ((n.choose k).factorization p + k.factorization p) ∣
        n - Math.B699.WindowPrimeAssignment.assignedIndex n k hk hkn p)
