import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage02

theorem check0 : basisRangeCheck basis4473 896 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 896 960 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 896) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 960 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 960 1024 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 960) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 1024 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 1024 1088 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1024) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 1088 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 1088 1152 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1088) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 1152 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 1152 1216 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1152) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 1216 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 1216 1280 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1216) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 1280 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 1280 1344 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1280) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 896 1024 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 896) (mid := 960) (hi := 1024)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 1024 1152 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1024) (mid := 1088) (hi := 1152)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 1152 1280 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1152) (mid := 1216) (hi := 1280)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 896 1152 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 896) (mid := 1024) (hi := 1152)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 1152 1344 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1152) (mid := 1280) (hi := 1344)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 896 1344 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 896) (mid := 1152) (hi := 1344)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 896 1344 := joinLevel2_0

end B699MiddleExtension.BasisCoverage02

#print axioms B699MiddleExtension.BasisCoverage02.covered
