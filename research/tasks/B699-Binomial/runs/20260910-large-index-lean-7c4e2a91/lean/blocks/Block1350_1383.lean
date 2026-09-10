import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1344_1600

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1350_1383

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1350
  hi := 1383
  r := 451
  s := 898
  N := 20000000
  t := 221
  factorialUpper := state_1383.factorialUpper
  windowS := state_898.windowLower
  windowM := state_898.windowLower
  descLower := state_1350.descLower
  factorialPower := ⟨118261021641034, 16733023⟩
  nPower := ⟨99085994889544, 37311363⟩
  descPower := ⟨82014146264531, 44038152⟩
  factorialTrace := [⟨1, ⟨135384065781810, 12394⟩⟩,
    ⟨2, ⟨130234278597737, 24835⟩⟩,
    ⟨5, ⟨115930731838653, 62158⟩⟩,
    ⟨10, ⟨95496478882110, 124363⟩⟩,
    ⟨21, ⟨124667334253110, 261213⟩⟩,
    ⟨42, ⟨110432155720565, 522473⟩⟩,
    ⟨84, ⟨86652541263925, 1044993⟩⟩,
    ⟨168, ⟨106704517683856, 2090032⟩⟩,
    ⟨336, ⟨80901359170187, 4180111⟩⟩,
    ⟨672, ⟨93010469237010, 8360268⟩⟩,
    ⟨1345, ⟨118261021641034, 16733023⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨5, ⟨84703294725432, 75⟩⟩,
    ⟨11, ⟨121543267145732, 220⟩⟩,
    ⟨23, ⟨125130193448959, 511⟩⟩,
    ⟨46, ⟨111253692925388, 1069⟩⟩,
    ⟨93, ⟨104840522093620, 2209⟩⟩,
    ⟨187, ⟨93101923476161, 4489⟩⟩,
    ⟨375, ⟨73420546130031, 9049⟩⟩,
    ⟨751, ⟨91319919596861, 18168⟩⟩,
    ⟨1502, ⟨118508974582841, 36382⟩⟩,
    ⟨3004, ⟨99791300958973, 72811⟩⟩,
    ⟨6009, ⟨84350113725465, 145693⟩⟩,
    ⟨12018, ⟨101109402599760, 291432⟩⟩,
    ⟨24037, ⟨86593120895337, 582935⟩⟩,
    ⟨48074, ⟨106558226582287, 1165916⟩⟩,
    ⟨96149, ⟨96177674422780, 2331903⟩⟩,
    ⟨192299, ⟨78351776304776, 4663877⟩⟩,
    ⟨384598, ⟨87240449177467, 9327800⟩⟩,
    ⟨769196, ⟨108157336920360, 18655646⟩⟩,
    ⟨1538393, ⟨99085994889544, 37311363⟩⟩]
  descTrace := [⟨1, ⟨78339823222913, 32696⟩⟩,
    ⟨2, ⟨87213832992422, 65438⟩⟩,
    ⟨5, ⟨120335490870565, 163664⟩⟩,
    ⟨10, ⟨102891067136993, 327375⟩⟩,
    ⟨21, ⟨83742965019356, 687539⟩⟩,
    ⟨42, ⟨99659078361939, 1375124⟩⟩,
    ⟨84, ⟨70570620635742, 2750295⟩⟩,
    ⟨168, ⟨70773076244475, 5500636⟩⟩,
    ⟨336, ⟨71179731564630, 11001318⟩⟩,
    ⟨672, ⟨72000065438441, 22002682⟩⟩,
    ⟨1345, ⟨82014146264531, 44038152⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1350 1383 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1383)
    good_1383.2.1 good_898.2.2.1 good_898.2.2.1 good_1350.2.2.2 checked

end B699TraceData.Block1350_1383

#print axioms B699TraceData.Block1350_1383.tail
