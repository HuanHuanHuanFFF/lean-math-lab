import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage08

theorem check0 : basisRangeCheck basis4473 3584 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 3584 3648 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3584) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 3648 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 3648 3712 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3648) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 3712 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 3712 3776 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3712) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 3776 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 3776 3840 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3776) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 3840 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 3840 3904 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3840) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 3904 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 3904 3968 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3904) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 3968 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 3968 4032 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 3968) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 3584 3712 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3584) (mid := 3648) (hi := 3712)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 3712 3840 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3712) (mid := 3776) (hi := 3840)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 3840 3968 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3840) (mid := 3904) (hi := 3968)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 3584 3840 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3584) (mid := 3712) (hi := 3840)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 3840 4032 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3840) (mid := 3968) (hi := 4032)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 3584 4032 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3584) (mid := 3840) (hi := 4032)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 3584 4032 := joinLevel2_0

end B699MiddleExtension.BasisCoverage08

#print axioms B699MiddleExtension.BasisCoverage08.covered
