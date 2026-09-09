import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage05

theorem check0 : basisRangeCheck basis4473 2240 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 2240 2304 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2240) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 2304 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 2304 2368 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2304) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 2368 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 2368 2432 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2368) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 2432 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 2432 2496 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2432) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 2496 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 2496 2560 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2496) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 2560 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 2560 2624 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2560) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 2624 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 2624 2688 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2624) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 2240 2368 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2240) (mid := 2304) (hi := 2368)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 2368 2496 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2368) (mid := 2432) (hi := 2496)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 2496 2624 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2496) (mid := 2560) (hi := 2624)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 2240 2496 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2240) (mid := 2368) (hi := 2496)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 2496 2688 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2496) (mid := 2624) (hi := 2688)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 2240 2688 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2240) (mid := 2496) (hi := 2688)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 2240 2688 := joinLevel2_0

end B699MiddleExtension.BasisCoverage05

#print axioms B699MiddleExtension.BasisCoverage05.covered
