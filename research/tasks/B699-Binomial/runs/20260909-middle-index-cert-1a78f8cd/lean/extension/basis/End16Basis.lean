import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasis4473
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisChain

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.End16Basis

def tail0 : List Nat := [19997779, 19997963, 19998047, 19998229, 19998413, 19998593, 19998757, 19998917, 19999069, 19999253, 19999423, 19999583, 19999739, 19999909, 20000093]
theorem check0 : basisChainCheck 4473 basis4473 184 19997609 tail0 = true := by
  decide +kernel
theorem part0 : B699MiddleIndex.PrimeChain 184 19997609 20000093 :=
  basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184)
    (p := 19997609) (qs := tail0) basis4473_complete check0

theorem joined : B699MiddleIndex.PrimeChain 184 19997609 20000093 := part0

end B699MiddleExtension.End16Basis

#print axioms B699MiddleExtension.End16Basis.joined
