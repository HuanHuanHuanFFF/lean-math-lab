import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage00
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage01
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage02
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage03
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage04
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage05
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage06
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage07
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage08
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.Coverage09

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension

theorem joinLevel0_0 : BasisCompleteOn basis4473 0 896 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 448) (hi := 896)
    B699MiddleExtension.BasisCoverage00.covered B699MiddleExtension.BasisCoverage01.covered

theorem joinLevel0_1 : BasisCompleteOn basis4473 896 1792 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 896) (mid := 1344) (hi := 1792)
    B699MiddleExtension.BasisCoverage02.covered B699MiddleExtension.BasisCoverage03.covered

theorem joinLevel0_2 : BasisCompleteOn basis4473 1792 2688 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1792) (mid := 2240) (hi := 2688)
    B699MiddleExtension.BasisCoverage04.covered B699MiddleExtension.BasisCoverage05.covered

theorem joinLevel0_3 : BasisCompleteOn basis4473 2688 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2688) (mid := 3136) (hi := 3584)
    B699MiddleExtension.BasisCoverage06.covered B699MiddleExtension.BasisCoverage07.covered

theorem joinLevel0_4 : BasisCompleteOn basis4473 3584 4473 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3584) (mid := 4032) (hi := 4473)
    B699MiddleExtension.BasisCoverage08.covered B699MiddleExtension.BasisCoverage09.covered

theorem joinLevel1_0 : BasisCompleteOn basis4473 0 1792 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 896) (hi := 1792)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 1792 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1792) (mid := 2688) (hi := 3584)
    joinLevel0_2 joinLevel0_3

theorem joinLevel2_0 : BasisCompleteOn basis4473 0 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 1792) (hi := 3584)
    joinLevel1_0 joinLevel1_1

theorem joinLevel3_0 : BasisCompleteOn basis4473 0 4473 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 3584) (hi := 4473)
    joinLevel2_0 joinLevel0_4

theorem basis4473_complete : BasisComplete 4473 basis4473 :=
  BasisCompleteOn.to_complete (ps := basis4473) (B := 4473) joinLevel3_0

end B699MiddleExtension

#print axioms B699MiddleExtension.basis4473_complete
