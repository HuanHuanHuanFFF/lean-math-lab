import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1344_1600

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1318_1349

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1318
  hi := 1349
  r := 439
  s := 878
  N := 20000000
  t := 217
  factorialUpper := state_1349.factorialUpper
  windowS := state_878.windowLower
  windowM := state_878.windowLower
  descLower := state_1318.descLower
  factorialPower := ⟨83909469614763, 15918259⟩
  nPower := ⟨106923193176527, 35680388⟩
  descPower := ⟨104961118106341, 42099236⟩
  factorialTrace := [⟨1, ⟨121853767902668, 12040⟩⟩,
    ⟨2, ⟨105503806594792, 24127⟩⟩,
    ⟨5, ⟨136957438449331, 60387⟩⟩,
    ⟨10, ⟨133278916412411, 120821⟩⟩,
    ⟨20, ⟨126215621492538, 241689⟩⟩,
    ⟨41, ⟨98004403703516, 495512⟩⟩,
    ⟨82, ⟨136493314716997, 991070⟩⟩,
    ⟨164, ⟨132377131211806, 1982187⟩⟩,
    ⟨329, ⟨107806587859694, 3976508⟩⟩,
    ⟨658, ⟨82581126903491, 7953063⟩⟩,
    ⟨1317, ⟨83909469614763, 15918259⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨5, ⟨84703294725432, 75⟩⟩,
    ⟨11, ⟨121543267145732, 220⟩⟩,
    ⟨22, ⟨104966814180748, 487⟩⟩,
    ⟨44, ⟨78287826562869, 1021⟩⟩,
    ⟨89, ⟨103829024031418, 2112⟩⟩,
    ⟨179, ⟨91314100846878, 4295⟩⟩,
    ⟨359, ⟨70627851893502, 8661⟩⟩,
    ⟨718, ⟨70887913680771, 17368⟩⟩,
    ⟨1436, ⟨71410913534642, 34782⟩⟩,
    ⟨2873, ⟨86389204909879, 69634⟩⟩,
    ⟨5746, ⟨106056954862213, 139314⟩⟩,
    ⟨11493, ⟨95274923837004, 278699⟩⟩,
    ⟨22986, ⟨128996349419409, 557444⟩⟩,
    ⟨45973, ⟨70473387543708, 1114960⟩⟩,
    ⟨91946, ⟨70578186521938, 2229966⟩⟩,
    ⟨183893, ⟨84386172581821, 4460002⟩⟩,
    ⟨367786, ⟨101195867657238, 8920050⟩⟩,
    ⟨735573, ⟨86741286751454, 17840171⟩⟩,
    ⟨1471146, ⟨106923193176527, 35680388⟩⟩]
  descTrace := [⟨1, ⟨72648391456056, 31920⟩⟩,
    ⟨2, ⟨75001889586479, 63886⟩⟩,
    ⟨5, ⟨82529803654373, 159784⟩⟩,
    ⟨10, ⟨96792525869622, 319614⟩⟩,
    ⟨20, ⟨133138557092443, 639274⟩⟩,
    ⟨41, ⟨130030160284384, 1310561⟩⟩,
    ⟨82, ⟨120137447251398, 2621169⟩⟩,
    ⟨164, ⟨102552677333864, 5242385⟩⟩,
    ⟨329, ⟨77149019683185, 10516783⟩⟩,
    ⟨658, ⟨84582598533365, 21033612⟩⟩,
    ⟨1317, ⟨104961118106341, 42099236⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1318 1349 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1349)
    good_1349.2.1 good_878.2.2.1 good_878.2.2.1 good_1318.2.2.2 checked

end B699TraceData.Block1318_1349

#print axioms B699TraceData.Block1318_1349.tail
