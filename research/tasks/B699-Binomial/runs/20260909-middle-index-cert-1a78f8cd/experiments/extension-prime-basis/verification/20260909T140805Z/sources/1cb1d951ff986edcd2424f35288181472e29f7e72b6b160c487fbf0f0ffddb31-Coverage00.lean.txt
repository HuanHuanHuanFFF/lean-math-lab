import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage00

theorem check0 : basisRangeCheck basis4473 0 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 0 64 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 0) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 64 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 64 128 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 64) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 128 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 128 192 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 128) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 192 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 192 256 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 192) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 256 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 256 320 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 256) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 320 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 320 384 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 320) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 384 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 384 448 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 384) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 0 128 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 64) (hi := 128)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 128 256 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 128) (mid := 192) (hi := 256)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 256 384 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 256) (mid := 320) (hi := 384)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 0 256 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 128) (hi := 256)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 256 448 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 256) (mid := 384) (hi := 448)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 0 448 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 256) (hi := 448)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 0 448 := joinLevel2_0

end B699MiddleExtension.BasisCoverage00

#print axioms B699MiddleExtension.BasisCoverage00.covered
