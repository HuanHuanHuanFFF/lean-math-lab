import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage07

theorem check0 : basisRangeCheck basis4473 3136 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 3136 3200 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3136) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 3200 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 3200 3264 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3200) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 3264 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 3264 3328 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3264) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 3328 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 3328 3392 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3328) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 3392 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 3392 3456 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3392) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 3456 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 3456 3520 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3456) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 3520 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 3520 3584 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3520) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 3136 3264 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3136) (mid := 3200) (hi := 3264)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 3264 3392 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3264) (mid := 3328) (hi := 3392)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 3392 3520 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3392) (mid := 3456) (hi := 3520)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 3136 3392 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3136) (mid := 3264) (hi := 3392)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 3392 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3392) (mid := 3520) (hi := 3584)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 3136 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3136) (mid := 3392) (hi := 3584)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 3136 3584 := joinLevel2_0

end B699MiddleExtension.BasisCoverage07

#print axioms B699MiddleExtension.BasisCoverage07.covered
