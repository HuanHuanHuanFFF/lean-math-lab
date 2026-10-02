module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage00
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage01
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage02
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage03
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage04
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage05
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage06
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage07
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage08
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-finite-onehour».finite.alternative.basis.Coverage09

set_option Elab.async false
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

@[expose] public section
namespace B699AltExtension20261002

theorem joinLevel0_0 : BasisCompleteOn basis4473 0 896 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 448) (hi := 896)
    B699AltExtension20261002.BasisCoverage00.covered B699AltExtension20261002.BasisCoverage01.covered

theorem joinLevel0_1 : BasisCompleteOn basis4473 896 1792 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 896) (mid := 1344) (hi := 1792)
    B699AltExtension20261002.BasisCoverage02.covered B699AltExtension20261002.BasisCoverage03.covered

theorem joinLevel0_2 : BasisCompleteOn basis4473 1792 2688 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1792) (mid := 2240) (hi := 2688)
    B699AltExtension20261002.BasisCoverage04.covered B699AltExtension20261002.BasisCoverage05.covered

theorem joinLevel0_3 : BasisCompleteOn basis4473 2688 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 2688) (mid := 3136) (hi := 3584)
    B699AltExtension20261002.BasisCoverage06.covered B699AltExtension20261002.BasisCoverage07.covered

theorem joinLevel0_4 : BasisCompleteOn basis4473 3584 4473 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 3584) (mid := 4032) (hi := 4473)
    B699AltExtension20261002.BasisCoverage08.covered B699AltExtension20261002.BasisCoverage09.covered

theorem joinLevel1_0 : BasisCompleteOn basis4473 0 1792 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 896) (hi := 1792)
    joinLevel0_0 joinLevel0_1

theorem joinLevel1_1 : BasisCompleteOn basis4473 1792 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 1792) (mid := 2688) (hi := 3584)
    joinLevel0_2 joinLevel0_3

theorem joinLevel2_0 : BasisCompleteOn basis4473 0 3584 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 1792) (hi := 3584)
    joinLevel1_0 joinLevel1_1

theorem joinLevel3_0 : BasisCompleteOn basis4473 0 4473 :=
  BasisCompleteOn.trans (ps := basis4473) (lo := 0) (mid := 3584) (hi := 4473)
    joinLevel2_0 joinLevel0_4

theorem basis4473_complete : BasisComplete 4473 basis4473 :=
  BasisCompleteOn.to_complete (ps := basis4473) (B := 4473) joinLevel3_0

end B699AltExtension20261002

#print axioms B699AltExtension20261002.basis4473_complete
