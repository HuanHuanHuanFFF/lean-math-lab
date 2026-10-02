/- Negative verifier fixture only. This is never a mathematical delivery or an
   import of a research proof. The executable audit must reject the bad root. -/
namespace B699VerifierFixture
axiom unexpectedFixtureInput : Nat
theorem accepted_control : (1 : Nat) = 1 := rfl
theorem rejected_control : unexpectedFixtureInput = unexpectedFixtureInput := rfl
end B699VerifierFixture
#print axioms B699VerifierFixture.accepted_control
#print axioms B699VerifierFixture.rejected_control
