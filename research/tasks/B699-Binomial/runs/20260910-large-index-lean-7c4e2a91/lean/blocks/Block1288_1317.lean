import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1288_1317

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1288
  hi := 1317
  r := 429
  s := 858
  N := 20000000
  t := 214
  factorialUpper := state_1317.factorialUpper
  windowS := state_858.windowLower
  windowM := state_858.windowLower
  descLower := state_1288.descLower
  factorialPower := ⟨116150525008172, 15128125⟩
  nPower := ⟨83508451166301, 34106870⟩
  descPower := ⟨87752229660404, 40203831⟩
  factorialTrace := [⟨1, ⟨106746593792747, 11708⟩⟩,
    ⟨2, ⟨80965174379016, 23463⟩⟩,
    ⟨5, ⟨70657934903240, 58727⟩⟩,
    ⟨10, ⟨70948314100726, 117500⟩⟩,
    ⟨20, ⟨71532657468301, 235046⟩⟩,
    ⟨40, ⟨72715822120661, 470138⟩⟩,
    ⟨80, ⟨75141184463002, 940322⟩⟩,
    ⟨160, ⟨80237293822491, 1880690⟩⟩,
    ⟨321, ⟨138786419041826, 3773180⟩⟩,
    ⟨643, ⟨103807414424399, 7558162⟩⟩,
    ⟨1287, ⟨116150525008172, 15128125⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨5, ⟨84703294725432, 75⟩⟩,
    ⟨10, ⟨101957882312482, 196⟩⟩,
    ⟨21, ⟨88052545717114, 463⟩⟩,
    ⟨42, ⟨110180320792558, 972⟩⟩,
    ⟨85, ⟨102827284870735, 2015⟩⟩,
    ⟨171, ⟨89560609514256, 4101⟩⟩,
    ⟨343, ⟨135882766501272, 8272⟩⟩,
    ⟨686, ⟨131195507663330, 16591⟩⟩,
    ⟨1373, ⟨72896761797190, 33254⟩⟩,
    ⟨2746, ⟨75515599185626, 66554⟩⟩,
    ⟨5493, ⟨96605898606986, 133178⟩⟩,
    ⟨10986, ⟨132625638765138, 266402⟩⟩,
    ⟨21972, ⟨124981341243291, 532851⟩⟩,
    ⟨43945, ⟨132309389503205, 1065773⟩⟩,
    ⟨87891, ⟨74139839058291, 2131618⟩⟩,
    ⟨175783, ⟨93117986594707, 4263306⟩⟩,
    ⟨351567, ⟨73445883193572, 8526683⟩⟩,
    ⟨703134, ⟨76657581730670, 17053412⟩⟩,
    ⟨1406268, ⟨83508451166301, 34106870⟩⟩]
  descTrace := [⟨1, ⟨95721943273936, 31192⟩⟩,
    ⟨2, ⟨130209662417806, 62430⟩⟩,
    ⟨5, ⟨81936675750653, 156146⟩⟩,
    ⟨10, ⟨95406261849968, 312338⟩⟩,
    ⟨20, ⟨129352241631645, 624722⟩⟩,
    ⟨40, ⟨118888027707921, 1249491⟩⟩,
    ⟨80, ⟨100430690482364, 2499029⟩⟩,
    ⟨160, ⟨71667639579433, 4998105⟩⟩,
    ⟨321, ⟨99288307474336, 10027494⟩⟩,
    ⟨643, ⟨95283592928772, 20086273⟩⟩,
    ⟨1287, ⟨87752229660404, 40203831⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1288 1317 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1317)
    good_1317.2.1 good_858.2.2.1 good_858.2.2.1 good_1288.2.2.2 checked

end B699TraceData.Block1288_1317

#print axioms B699TraceData.Block1288_1317.tail
