import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1344_1600

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1529_1566

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1529
  hi := 1566
  r := 510
  s := 1018
  N := 20000000
  t := 246
  factorialUpper := state_1566.factorialUpper
  windowS := state_1018.windowLower
  windowM := state_1018.windowLower
  descLower := state_1529.descLower
  factorialPower := ⟨73301263449572, 21924185⟩
  nPower := ⟨78200186574679, 47773958⟩
  descPower := ⟨100531187573969, 56589393⟩
  factorialTrace := [⟨1, ⟨76678737168263, 14321⟩⟩,
    ⟨2, ⟨83554549714216, 28688⟩⟩,
    ⟨5, ⟨108107433425330, 71789⟩⟩,
    ⟨11, ⟨90489141693036, 157992⟩⟩,
    ⟨23, ⟨126796798588555, 330397⟩⟩,
    ⟨47, ⟨124480674242756, 675208⟩⟩,
    ⟨95, ⟨119974574690043, 1364830⟩⟩,
    ⟨190, ⟨102274800696426, 2729707⟩⟩,
    ⟨381, ⟨80988366361565, 5473828⟩⟩,
    ⟨763, ⟨101568871762784, 10962069⟩⟩,
    ⟨1526, ⟨73301263449572, 21924185⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨7, ⟨120370621524205, 123⟩⟩,
    ⟨15, ⟨122727336632450, 317⟩⟩,
    ⟨30, ⟨107021940869563, 681⟩⟩,
    ⟨60, ⟨81383403678276, 1409⟩⟩,
    ⟨120, ⟨94122162782089, 2864⟩⟩,
    ⟨240, ⟨125893699401702, 5774⟩⟩,
    ⟨480, ⟨112615506602127, 11595⟩⟩,
    ⟨961, ⟨107422855665765, 23261⟩⟩,
    ⟨1923, ⟨97744806221610, 46593⟩⟩,
    ⟨3847, ⟨80925927099961, 93257⟩⟩,
    ⟨7694, ⟨93066968204713, 186560⟩⟩,
    ⟨15388, ⟨123086757793332, 373166⟩⟩,
    ⟨30777, ⟨128328455650634, 746403⟩⟩,
    ⟨61555, ⟨139491016543634, 1492877⟩⟩,
    ⟨123111, ⟨82406749950303, 2985826⟩⟩,
    ⟨246222, ⟨96504101596960, 5971698⟩⟩,
    ⟨492444, ⟨132346281490021, 11943442⟩⟩,
    ⟨984889, ⟨74181189824100, 23886956⟩⟩,
    ⟨1969778, ⟨78200186574679, 47773958⟩⟩]
  descTrace := [⟨1, ⟨100356875571117, 37037⟩⟩,
    ⟨2, ⟨71562329213724, 74121⟩⟩,
    ⟨5, ⟨103790227984415, 185371⟩⟩,
    ⟨11, ⟨109161744377515, 407872⟩⟩,
    ⟨23, ⟨120753150105295, 852874⟩⟩,
    ⟨47, ⟨73879590169109, 1742879⟩⟩,
    ⟨95, ⟨110620721322848, 3522887⟩⟩,
    ⟨190, ⟨86948716571464, 7045821⟩⟩,
    ⟨381, ⟨76609722087500, 14128772⟩⟩,
    ⟨763, ⟨118947496150776, 28294673⟩⟩,
    ⟨1526, ⟨100531187573969, 56589393⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1529 1566 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1566)
    good_1566.2.1 good_1018.2.2.1 good_1018.2.2.1 good_1529.2.2.2 checked

end B699TraceData.Block1529_1566

#print axioms B699TraceData.Block1529_1566.tail
