import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.End32TrialReference

def tail0 : List Nat := [19995083, 19995263, 19995439, 19995583, 19995721, 19995889, 19996073, 19996219, 19996393, 19996567, 19996751, 19996927, 19997099, 19997267, 19997441]
theorem check0 : B699MiddleIndex.trialChainCheck 184 19994899 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19994899 19997441 :=
  B699MiddleIndex.trialChainCheck_sound (gap := 184) (p := 19994899) (qs := tail0) check0

def tail1 : List Nat := [19997609, 19997779, 19997963, 19998047, 19998229, 19998413, 19998593, 19998757, 19998917, 19999069, 19999253, 19999423, 19999583, 19999739, 19999909, 20000093]
theorem check1 : B699MiddleIndex.trialChainCheck 184 19997441 tail1 = true := by
  decide +kernel
theorem part1 : B699MiddleIndex.PrimeChain 184 19997441 20000093 :=
  B699MiddleIndex.trialChainCheck_sound (gap := 184) (p := 19997441) (qs := tail1) check1

theorem joined : B699MiddleIndex.PrimeChain 184 19994899 20000093 := part0.trans part1

end B699MiddleExtension.End32TrialReference

#print axioms B699MiddleExtension.End32TrialReference.joined
