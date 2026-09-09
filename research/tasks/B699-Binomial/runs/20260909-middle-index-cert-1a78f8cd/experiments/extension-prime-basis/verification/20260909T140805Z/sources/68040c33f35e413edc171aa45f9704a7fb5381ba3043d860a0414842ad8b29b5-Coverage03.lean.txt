import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage03

theorem check0 : basisRangeCheck basis4473 1344 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 1344 1408 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1344) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 1408 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 1408 1472 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1408) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 1472 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 1472 1536 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1472) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 1536 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 1536 1600 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1536) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 1600 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 1600 1664 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1600) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 1664 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 1664 1728 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1664) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 1728 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 1728 1792 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1728) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 1344 1472 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1344) (mid := 1408) (hi := 1472)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 1472 1600 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1472) (mid := 1536) (hi := 1600)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 1600 1728 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1600) (mid := 1664) (hi := 1728)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 1344 1600 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1344) (mid := 1472) (hi := 1600)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 1600 1792 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1600) (mid := 1728) (hi := 1792)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 1344 1792 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1344) (mid := 1600) (hi := 1792)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 1344 1792 := joinLevel2_0

end B699MiddleExtension.BasisCoverage03

#print axioms B699MiddleExtension.BasisCoverage03.covered
