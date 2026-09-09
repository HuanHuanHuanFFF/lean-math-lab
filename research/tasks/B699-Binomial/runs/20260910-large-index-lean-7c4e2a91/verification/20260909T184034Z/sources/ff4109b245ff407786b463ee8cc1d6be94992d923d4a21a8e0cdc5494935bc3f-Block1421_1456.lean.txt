import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1344_1600

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1421_1456

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1421
  hi := 1456
  r := 474
  s := 946
  N := 20000000
  t := 231
  factorialUpper := state_1456.factorialUpper
  windowS := state_946.windowLower
  windowM := state_946.windowLower
  descLower := state_1421.descLower
  factorialPower := ⟨81269217461342, 18725161⟩
  nPower := ⟨129565695515354, 41354372⟩
  descPower := ⟨70396065940940, 48870113⟩
  factorialTrace := [⟨1, ⟨90610567691011, 13159⟩⟩,
    ⟨2, ⟨116675024874089, 26364⟩⟩,
    ⟨5, ⟨124550380570110, 65980⟩⟩,
    ⟨11, ⟨70965844731788, 145213⟩⟩,
    ⟨22, ⟨71568011868753, 290472⟩⟩,
    ⟨44, ⟨72787718222088, 580990⟩⟩,
    ⟨88, ⟨75289846165249, 1162026⟩⟩,
    ⟨177, ⟨103727060290643, 2337303⟩⟩,
    ⟨354, ⟨76449446144542, 4674653⟩⟩,
    ⟨709, ⟨106946835138363, 9362557⟩⟩,
    ⟨1418, ⟨81269217461342, 18725161⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨6, ⟨100974195868291, 99⟩⟩,
    ⟨13, ⟨86361685550948, 269⟩⟩,
    ⟨26, ⟨105989396547569, 584⟩⟩,
    ⟨52, ⟨79820610071962, 1215⟩⟩,
    ⟨104, ⟨90542042020448, 2476⟩⟩,
    ⟨208, ⟨116498616950375, 4998⟩⟩,
    ⟨416, ⟨96434346739828, 10043⟩⟩,
    ⟨832, ⟨132155026209623, 20132⟩⟩,
    ⟨1665, ⟨73966944394597, 40336⟩⟩,
    ⟨3330, ⟨77749133184191, 80718⟩⟩,
    ⟨6660, ⟨85903589463401, 161482⟩⟩,
    ⟨13321, ⟨125012350641830, 323034⟩⟩,
    ⟨26642, ⟨111044242693452, 646115⟩⟩,
    ⟨53284, ⟨87615773021542, 1292277⟩⟩,
    ⟨106568, ⟨109089962765017, 2584600⟩⟩,
    ⟨213136, ⟨84558990750401, 5169247⟩⟩,
    ⟨426272, ⟨101610779050907, 10338540⟩⟩,
    ⟨852545, ⟨87454037773521, 20677151⟩⟩,
    ⟨1705091, ⟨129565695515354, 41354372⟩⟩]
  descTrace := [⟨1, ⟨77861784789592, 34418⟩⟩,
    ⟨2, ⟨86152703184733, 68882⟩⟩,
    ⟨5, ⟨116708522480230, 172274⟩⟩,
    ⟨11, ⟨107087776142147, 379059⟩⟩,
    ⟨22, ⟨81483561580388, 758165⟩⟩,
    ⟨44, ⟨94353976121295, 1516376⟩⟩,
    ⟨88, ⟨126514589878438, 3032798⟩⟩,
    ⟨177, ⟨125839209609291, 6100107⟩⟩,
    ⟨354, ⟨112518042350665, 12200261⟩⟩,
    ⟨709, ⟨99535749912401, 24435033⟩⟩,
    ⟨1418, ⟨70396065940940, 48870113⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1421 1456 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1456)
    good_1456.2.1 good_946.2.2.1 good_946.2.2.1 good_1421.2.2.2 checked

end B699TraceData.Block1421_1456

#print axioms B699TraceData.Block1421_1456.tail
