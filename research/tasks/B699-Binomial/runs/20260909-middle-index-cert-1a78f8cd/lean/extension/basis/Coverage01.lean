import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage01

theorem check0 : basisRangeCheck basis4473 448 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 448 512 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 448) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 512 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 512 576 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 512) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 576 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 576 640 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 576) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 640 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 640 704 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 640) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 704 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 704 768 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 704) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 768 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 768 832 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 768) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 832 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 832 896 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 832) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 448 576 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 448) (mid := 512) (hi := 576)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 576 704 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 576) (mid := 640) (hi := 704)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 704 832 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 704) (mid := 768) (hi := 832)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 448 704 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 448) (mid := 576) (hi := 704)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 704 896 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 704) (mid := 832) (hi := 896)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 448 896 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 448) (mid := 704) (hi := 896)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 448 896 := joinLevel2_0

end B699MiddleExtension.BasisCoverage01

#print axioms B699MiddleExtension.BasisCoverage01.covered
