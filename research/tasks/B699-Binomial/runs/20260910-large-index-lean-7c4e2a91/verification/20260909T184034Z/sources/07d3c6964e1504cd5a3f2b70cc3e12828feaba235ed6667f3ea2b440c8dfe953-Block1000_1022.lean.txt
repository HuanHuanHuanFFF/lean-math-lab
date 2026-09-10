import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials0832_1088

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1000_1022

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1000
  hi := 1022
  r := 333
  s := 666
  N := 20000000
  t := 172
  factorialUpper := state_1022.factorialUpper
  windowS := state_666.windowLower
  windowM := state_666.windowLower
  descLower := state_1000.descLower
  factorialPower := ⟨102713443505909, 8740212⟩
  nPower := ⟨91914154513194, 20689787⟩
  descPower := ⟨79260667108464, 24229161⟩
  factorialTrace := [⟨1, ⟨70738122981046, 8703⟩⟩,
    ⟨3, ⟨71482707582579, 26201⟩⟩,
    ⟨7, ⟨72995471620479, 61197⟩⟩,
    ⟨15, ⟨76117719520225, 131189⟩⟩,
    ⟨31, ⟨82768572954584, 271173⟩⟩,
    ⟨62, ⟨97353402408918, 542392⟩⟩,
    ⟨124, ⟨134686004011439, 1084830⟩⟩,
    ⟨249, ⟨129571316408165, 2178456⟩⟩,
    ⟨499, ⟨119917254604793, 4365708⟩⟩,
    ⟨999, ⟨102713443505909, 8740212⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨6, ⟨100974195868291, 99⟩⟩,
    ⟨13, ⟨86361685550948, 269⟩⟩,
    ⟨26, ⟨105989396547569, 584⟩⟩,
    ⟨52, ⟨79820610071962, 1215⟩⟩,
    ⟨104, ⟨90542042020448, 2476⟩⟩,
    ⟨208, ⟨116498616950375, 4998⟩⟩,
    ⟨416, ⟨96434346739828, 10043⟩⟩,
    ⟨833, ⟨78770533925071, 20157⟩⟩,
    ⟨1666, ⟨88175468915222, 40360⟩⟩,
    ⟨3332, ⟨110488163591346, 80766⟩⟩,
    ⟨6664, ⟨86740458682670, 161579⟩⟩,
    ⟨13329, ⟨127459945343471, 323228⟩⟩,
    ⟨26658, ⟨115435040491439, 646503⟩⟩,
    ⟨53316, ⟨94681585759277, 1293053⟩⟩,
    ⟨106633, ⟨75933138306063, 2586177⟩⟩,
    ⟨213266, ⟨81937535768016, 5172400⟩⟩,
    ⟨426533, ⟨113735514464438, 10344870⟩⟩,
    ⟨853066, ⟨91914154513194, 20689787⟩⟩]
  descTrace := [⟨1, ⟨96837582866301, 24207⟩⟩,
    ⟨3, ⟨91694275858314, 72714⟩⟩,
    ⟨7, ⟨82212677784715, 169728⟩⟩,
    ⟨15, ⟨132178837381229, 363755⟩⟩,
    ⟨31, ⟨85417764933924, 751811⟩⟩,
    ⟨62, ⟨103685160955636, 1503668⟩⟩,
    ⟨124, ⟨76387696896035, 3007383⟩⟩,
    ⟨249, ⟨114111961819245, 6039065⟩⟩,
    ⟨499, ⟨127325880327501, 12102430⟩⟩,
    ⟨999, ⟨79260667108464, 24229161⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1000 1022 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1022)
    good_1022.2.1 good_666.2.2.1 good_666.2.2.1 good_1000.2.2.2 checked

end B699TraceData.Block1000_1022

#print axioms B699TraceData.Block1000_1022.tail
