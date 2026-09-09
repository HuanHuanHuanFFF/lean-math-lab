import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! Same actual final 32 edges, using the accepted square-root trial checker.
This candidate is not accepted merely because the input list was generated. -/
namespace B699MiddleIndex.EndBlockTrial

def leftNodes : List Nat := [1994569, 1994743, 1994911, 1995083, 1995263, 1995431, 1995611, 1995787, 1995971, 1996129, 1996303, 1996487, 1996649, 1996829, 1997003, 1997183]
theorem leftCheck : trialChainCheck 322 1994387 leftNodes = true := by
  decide
theorem left : PrimeChain 322 1994387 1997183 :=
  trialChainCheck_sound leftCheck

def rightNodes : List Nat := [1997351, 1997531, 1997713, 1997887, 1998067, 1998251, 1998431, 1998611, 1998793, 1998977, 1999121, 1999303, 1999471, 1999651, 1999819, 2000003]
theorem rightCheck : trialChainCheck 322 1997183 rightNodes = true := by
  decide
theorem right : PrimeChain 322 1997183 2000003 :=
  trialChainCheck_sound rightCheck

theorem joined : PrimeChain 322 1994387 2000003 := left.trans right

end B699MiddleIndex.EndBlockTrial

#print axioms B699MiddleIndex.EndBlockTrial.joined
