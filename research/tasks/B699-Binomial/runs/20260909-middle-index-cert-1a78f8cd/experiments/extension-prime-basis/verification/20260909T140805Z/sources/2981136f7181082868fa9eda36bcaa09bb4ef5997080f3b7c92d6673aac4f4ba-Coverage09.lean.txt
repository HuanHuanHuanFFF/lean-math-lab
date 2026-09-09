import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage09

theorem check0 : basisRangeCheck basis4473 4032 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 4032 4096 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 4032) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 4096 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 4096 4160 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 4096) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 4160 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 4160 4224 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 4160) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 4224 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 4224 4288 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 4224) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 4288 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 4288 4352 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 4288) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 4352 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 4352 4416 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 4352) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 4416 57 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 4416 4473 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 4416) (len := 57) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 4032 4160 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 4032) (mid := 4096) (hi := 4160)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 4160 4288 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 4160) (mid := 4224) (hi := 4288)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 4288 4416 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 4288) (mid := 4352) (hi := 4416)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 4032 4288 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 4032) (mid := 4160) (hi := 4288)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 4288 4473 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 4288) (mid := 4416) (hi := 4473)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 4032 4473 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 4032) (mid := 4288) (hi := 4473)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 4032 4473 := joinLevel2_0

end B699MiddleExtension.BasisCoverage09

#print axioms B699MiddleExtension.BasisCoverage09.covered
