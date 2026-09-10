import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1144_1170

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1144
  hi := 1170
  r := 381
  s := 762
  N := 20000000
  t := 192
  factorialUpper := state_1170.factorialUpper
  windowS := state_762.windowLower
  windowM := state_762.windowLower
  descLower := state_1144.descLower
  factorialPower := ⟨135137399382245, 11708218⟩
  nPower := ⟨89039490522172, 26963245⟩
  descPower := ⟨86852221847494, 31713578⟩
  factorialTrace := [⟨1, ⟨96219352116552, 10197⟩⟩,
    ⟨2, ⟨131566419579045, 20440⟩⟩,
    ⟨4, ⟨122992977657428, 40927⟩⟩,
    ⟨8, ⟨107485736244262, 81901⟩⟩,
    ⟨17, ⟨112246938016855, 174092⟩⟩,
    ⟨35, ⟨122411392127410, 358474⟩⟩,
    ⟨71, ⟨72792479004114, 727239⟩⟩,
    ⟨142, ⟨75299695361713, 1454524⟩⟩,
    ⟨285, ⟨110176574497978, 2919337⟩⟩,
    ⟨571, ⟨117937349342441, 5848964⟩⟩,
    ⟨1143, ⟨135137399382245, 11708218⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨4, ⟨71054273576011, 51⟩⟩,
    ⟨8, ⟨71746481373433, 148⟩⟩,
    ⟨16, ⟨73151193042071, 342⟩⟩,
    ⟨33, ⟨90651109995626, 754⟩⟩,
    ⟨67, ⟨139211961176644, 1578⟩⟩,
    ⟨135, ⟨82077366104255, 3228⟩⟩,
    ⟨271, ⟨114124035922231, 6526⟩⟩,
    ⟨542, ⟨92543186093357, 13099⟩⟩,
    ⟨1085, ⟨72541945428222, 26269⟩⟩,
    ⟨2171, ⟨89147402948928, 52608⟩⟩,
    ⟨4342, ⟨112937349464041, 105262⟩⟩,
    ⟨8685, ⟨108037738707753, 210595⟩⟩,
    ⟨17370, ⟨82935635142326, 421237⟩⟩,
    ⟨34741, ⟨116523266060136, 842544⟩⟩,
    ⟨69483, ⟨115007351357201, 1685159⟩⟩,
    ⟨138966, ⟨93981291131220, 3370365⟩⟩,
    ⟨277932, ⟨125517133862604, 6740776⟩⟩,
    ⟨555864, ⟨111942816922429, 13481599⟩⟩,
    ⟨1111728, ⟨89039490522172, 26963245⟩⟩]
  descTrace := [⟨1, ⟨136228467996922, 27699⟩⟩,
    ⟨2, ⟨131863909962166, 55445⟩⟩,
    ⟨4, ⟨123549815715124, 110937⟩⟩,
    ⟨8, ⟨108461200648272, 221921⟩⟩,
    ⟨17, ⟨80909048830708, 471635⟩⟩,
    ⟨35, ⟨90047667364248, 971062⟩⟩,
    ⟨71, ⟨111538091771077, 1969916⟩⟩,
    ⟨142, ⟨88396816380034, 3939879⟩⟩,
    ⟨285, ⟨107485906664295, 7907550⟩⟩,
    ⟨571, ⟨79460506415488, 15842893⟩⟩,
    ⟨1143, ⟨86852221847494, 31713578⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1144 1170 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1170)
    good_1170.2.1 good_762.2.2.1 good_762.2.2.1 good_1144.2.2.2 checked

end B699TraceData.Block1144_1170

#print axioms B699TraceData.Block1144_1170.tail
