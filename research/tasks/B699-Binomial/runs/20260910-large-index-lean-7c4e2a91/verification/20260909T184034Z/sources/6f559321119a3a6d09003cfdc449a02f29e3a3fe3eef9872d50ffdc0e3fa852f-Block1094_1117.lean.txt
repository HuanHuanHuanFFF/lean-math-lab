import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1094_1117

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1094
  hi := 1117
  r := 365
  s := 728
  N := 20000000
  t := 186
  factorialUpper := state_1117.factorialUpper
  windowS := state_728.windowLower
  windowM := state_728.windowLower
  descLower := state_1094.descLower
  factorialPower := ⟨113342543560977, 10588092⟩
  nPower := ⟨78610770608988, 24641846⟩
  descPower := ⟨131754018858632, 28947764⟩
  factorialTrace := [⟨1, ⟨139286454147345, 9658⟩⟩,
    ⟨2, ⟨137850380418602, 19363⟩⟩,
    ⟨4, ⟨135022499005923, 38773⟩⟩,
    ⟨8, ⟨129539580753179, 77593⟩⟩,
    ⟨17, ⟨118003330379420, 164938⟩⟩,
    ⟨34, ⟨98941555255540, 329923⟩⟩,
    ⟨68, ⟨139116186750032, 659892⟩⟩,
    ⟨136, ⟨137513562605348, 1319831⟩⟩,
    ⟨272, ⟨134363488516094, 2639709⟩⟩,
    ⟨545, ⟨126955591196339, 5289170⟩⟩,
    ⟨1091, ⟨113342543560977, 10588092⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨7, ⟨120370621524205, 123⟩⟩,
    ⟨15, ⟨122727336632450, 317⟩⟩,
    ⟨31, ⟨127580095374064, 705⟩⟩,
    ⟨62, ⟨115652772590063, 1457⟩⟩,
    ⟨124, ⟨95039097003059, 2961⟩⟩,
    ⟨248, ⟨128358549874817, 5968⟩⟩,
    ⟨496, ⟨117068433709491, 11983⟩⟩,
    ⟨992, ⟨97380011050018, 24013⟩⟩,
    ⟨1984, ⟨134759638855565, 48072⟩⟩,
    ⟨3968, ⟨129035699561672, 96191⟩⟩,
    ⟨7937, ⟨70516389703208, 192454⟩⟩,
    ⟨15875, ⟨84238463656943, 384978⟩⟩,
    ⟨31750, ⟨100841912729978, 770002⟩⟩,
    ⟨63500, ⟨72255739972893, 1540051⟩⟩,
    ⟨127001, ⟨88445350067076, 3080172⟩⟩,
    ⟨254003, ⟨132519658977998, 6160414⟩⟩,
    ⟨508007, ⟨74375676175702, 12320900⟩⟩,
    ⟨1016014, ⟨78610770608988, 24641846⟩⟩]
  descTrace := [⟨1, ⟨85573099788451, 26487⟩⟩,
    ⟨2, ⟨104062613209580, 53020⟩⟩,
    ⟨4, ⟨76944868027387, 106087⟩⟩,
    ⟨8, ⟨84135546043057, 212220⟩⟩,
    ⟨17, ⟨122331048569995, 451019⟩⟩,
    ⟨34, ⟨106331906438828, 902085⟩⟩,
    ⟨68, ⟨80337332000479, 1804217⟩⟩,
    ⟨136, ⟨91718091439292, 3608480⟩⟩,
    ⟨272, ⟨119544669946468, 7217006⟩⟩,
    ⟨545, ⟨123483264399047, 14460592⟩⟩,
    ⟨1091, ⟨131754018858632, 28947764⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1094 1117 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1117)
    good_1117.2.1 good_728.2.2.1 good_728.2.2.1 good_1094.2.2.2 checked

end B699TraceData.Block1094_1117

#print axioms B699TraceData.Block1094_1117.tail
