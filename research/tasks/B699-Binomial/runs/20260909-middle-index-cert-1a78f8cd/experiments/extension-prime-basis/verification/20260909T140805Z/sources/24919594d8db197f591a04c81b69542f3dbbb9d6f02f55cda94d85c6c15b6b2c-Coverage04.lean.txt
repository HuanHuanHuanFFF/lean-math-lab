import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.PrimeBasisCoverage
import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.extension.basis.BasisData

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

namespace B699MiddleExtension.BasisCoverage04

theorem check0 : basisRangeCheck basis4473 1792 64 = true := by
  decide +kernel
theorem part0 : BasisCompleteOn basis4473 1792 1856 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1792) (len := 64) check0

theorem check1 : basisRangeCheck basis4473 1856 64 = true := by
  decide +kernel
theorem part1 : BasisCompleteOn basis4473 1856 1920 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1856) (len := 64) check1

theorem check2 : basisRangeCheck basis4473 1920 64 = true := by
  decide +kernel
theorem part2 : BasisCompleteOn basis4473 1920 1984 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1920) (len := 64) check2

theorem check3 : basisRangeCheck basis4473 1984 64 = true := by
  decide +kernel
theorem part3 : BasisCompleteOn basis4473 1984 2048 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 1984) (len := 64) check3

theorem check4 : basisRangeCheck basis4473 2048 64 = true := by
  decide +kernel
theorem part4 : BasisCompleteOn basis4473 2048 2112 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2048) (len := 64) check4

theorem check5 : basisRangeCheck basis4473 2112 64 = true := by
  decide +kernel
theorem part5 : BasisCompleteOn basis4473 2112 2176 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2112) (len := 64) check5

theorem check6 : basisRangeCheck basis4473 2176 64 = true := by
  decide +kernel
theorem part6 : BasisCompleteOn basis4473 2176 2240 :=
  basisRangeCheck_sound (ps := basis4473) (lo := 2176) (len := 64) check6

theorem joinLevel0_0 : BasisCompleteOn basis4473 1792 1920 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1792) (mid := 1856) (hi := 1920)
    part0 part1

theorem joinLevel0_1 : BasisCompleteOn basis4473 1920 2048 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1920) (mid := 1984) (hi := 2048)
    part2 part3

theorem joinLevel0_2 : BasisCompleteOn basis4473 2048 2176 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2048) (mid := 2112) (hi := 2176)
    part4 part5

theorem joinLevel1_0 : BasisCompleteOn basis4473 1792 2048 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1792) (mid := 1920) (hi := 2048)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 2048 2240 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2048) (mid := 2176) (hi := 2240)
    joinLevel0_2 part6

theorem joinLevel2_0 : BasisCompleteOn basis4473 1792 2240 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1792) (mid := 2048) (hi := 2240)
    joinLevel1_0 joinLevel1_1

theorem covered : BasisCompleteOn basis4473 1792 2240 := joinLevel2_0

end B699MiddleExtension.BasisCoverage04

#print axioms B699MiddleExtension.BasisCoverage04.covered
