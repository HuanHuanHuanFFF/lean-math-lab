import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials0832_1088

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1047_1069

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1047
  hi := 1069
  r := 350
  s := 696
  N := 20000000
  t := 179
  factorialUpper := state_1069.factorialUpper
  windowS := state_696.windowLower
  windowM := state_696.windowLower
  descLower := state_1047.descLower
  factorialPower := ⟨124295526428252, 9607655⟩
  nPower := ⟨120585297661402, 22549666⟩
  descPower := ⟨75966044160092, 26459847⟩
  factorialTrace := [⟨1, ⟨95674925831790, 9174⟩⟩,
    ⟨2, ⟨130081779060995, 18394⟩⟩,
    ⟨4, ⟨120232849409331, 36835⟩⟩,
    ⟨8, ⟨102715617892720, 73717⟩⟩,
    ⟨16, ⟨74965798255870, 147481⟩⟩,
    ⟨32, ⟨79863168993766, 295008⟩⟩,
    ⟨65, ⟨123234302517454, 599282⟩⟩,
    ⟨130, ⟨107907946165848, 1198611⟩⟩,
    ⟨260, ⟨82736483234183, 2397269⟩⟩,
    ⟨521, ⟨132261257378400, 4803804⟩⟩,
    ⟨1042, ⟨124295526428252, 9607655⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨7, ⟨120370621524205, 123⟩⟩,
    ⟨14, ⟨102951151789366, 293⟩⟩,
    ⟨28, ⟨75309995784474, 633⟩⟩,
    ⟨56, ⟨80598219157331, 1312⟩⟩,
    ⟨113, ⟨110047756012121, 2694⟩⟩,
    ⟨226, ⟨86050339144374, 5435⟩⟩,
    ⟨453, ⟨125439834349531, 10940⟩⟩,
    ⟨907, ⟨133281922093231, 21951⟩⟩,
    ⟨1815, ⟨75233766042112, 43974⟩⟩,
    ⟨3631, ⟨95886154933742, 88018⟩⟩,
    ⟨7263, ⟨77877519598103, 176107⟩⟩,
    ⟨14527, ⟨102743538956638, 352284⟩⟩,
    ⟨29054, ⟨75006559522239, 704615⟩⟩,
    ⟨58109, ⟨95307875689385, 1409300⟩⟩,
    ⟨116218, ⟨129085594386756, 2818646⟩⟩,
    ⟨232437, ⟨70570934037532, 5637364⟩⟩,
    ⟨464875, ⟨84368830737650, 11274798⟩⟩,
    ⟨929751, ⟨120585297661402, 22549666⟩⟩]
  descTrace := [⟨1, ⟨91036297736032, 25347⟩⟩,
    ⟨2, ⟨117773986197043, 50740⟩⟩,
    ⟨4, ⟨98557335268916, 101527⟩⟩,
    ⟨8, ⟨138037824162175, 203100⟩⟩,
    ⟨16, ⟨135389945650583, 406247⟩⟩,
    ⟨32, ⟨130245591259863, 812541⟩⟩,
    ⟨65, ⟨77968837370190, 1650523⟩⟩,
    ⟨130, ⟨86389769661240, 3301092⟩⟩,
    ⟨260, ⟨106058341517071, 6602230⟩⟩,
    ⟨521, ⟨103398598904344, 13229900⟩⟩,
    ⟨1042, ⟨75966044160092, 26459847⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1047 1069 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1069)
    good_1069.2.1 good_696.2.2.1 good_696.2.2.1 good_1047.2.2.2 checked

end B699TraceData.Block1047_1069

#print axioms B699TraceData.Block1047_1069.tail
