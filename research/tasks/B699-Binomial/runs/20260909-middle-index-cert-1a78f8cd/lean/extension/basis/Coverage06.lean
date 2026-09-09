import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage06

theorem check0 : basisRangeCheck basis4473 2688 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 2688 2752 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2688) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 2752 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 2752 2816 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2752) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 2816 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 2816 2880 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2816) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 2880 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 2880 2944 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2880) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 2944 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 2944 3008 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2944) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 3008 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 3008 3072 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3008) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 3072 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 3072 3136 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3072) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 2688 2816 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2688) (mid := 2752) (hi := 2816)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 2816 2944 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2816) (mid := 2880) (hi := 2944)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 2944 3072 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2944) (mid := 3008) (hi := 3072)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 2688 2944 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2688) (mid := 2816) (hi := 2944)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 2944 3136 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2944) (mid := 3072) (hi := 3136)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 2688 3136 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2688) (mid := 2944) (hi := 3136)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 2688 3136 := joinLevel2_0

end B699MiddleExtension.BasisCoverage06

#print axioms B699MiddleExtension.BasisCoverage06.covered
