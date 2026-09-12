import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I13FiveSevenEdge.Final

#check @Math.B699.I13FiveSevenEdge.actual_five_seven_edge
#print axioms Math.B699.I13FiveSevenEdge.actual_five_seven_edge

#check (Math.B699.I13FiveSevenEdge.actual_five_seven_edge :
  ∀ (Y e f A B : ℕ), 2 ^ 65535 ≤ Y → 1 ≤ A → 1 ≤ B →
    (Y ≤ 5 ^ e * A ∧ 5 ^ e * A ≤ 2 * Y) →
    (Y ≤ 7 ^ f * B ∧ 7 ^ f * B ≤ 2 * Y) →
    |(5 : ℤ) ^ e * (A : ℤ) - (7 : ℤ) ^ f * (B : ℤ)| ≤ 24 →
    Y ^ 355 ≤ A ^ 1000 ∨ Y ^ 221 ≤ B ^ 1000)
