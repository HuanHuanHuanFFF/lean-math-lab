import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1199_1227

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1199
  hi := 1227
  r := 400
  s := 798
  N := 20000000
  t := 200
  factorialUpper := state_1227.factorialUpper
  windowS := state_798.windowLower
  windowM := state_798.windowLower
  descLower := state_1199.descLower
  factorialPower := ⟨109589545752675, 12948349⟩
  nPower := ⟨94235254824178, 29549274⟩
  descPower := ⟨84719306446269, 34779503⟩
  factorialTrace := [⟨1, ⟨94002114814298, 10780⟩⟩,
    ⟨2, ⟨125572762351005, 21606⟩⟩,
    ⟨4, ⟨112042063765202, 43259⟩⟩,
    ⟨9, ⟨119154439196613, 97391⟩⟩,
    ⟨18, ⟨100881297131106, 194829⟩⟩,
    ⟨37, ⟨96598268757231, 400531⟩⟩,
    ⟨74, ⟨132604690277479, 801108⟩⟩,
    ⟨149, ⟨83451818116436, 1613090⟩⟩,
    ⟨299, ⟨132205532222801, 3237052⟩⟩,
    ⟨598, ⟨124190810526515, 6474151⟩⟩,
    ⟨1196, ⟨109589545752675, 12948349⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨4, ⟨71054273576011, 51⟩⟩,
    ⟨9, ⟨85528470722954, 172⟩⟩,
    ⟨18, ⟨103954097656459, 390⟩⟩,
    ⟨37, ⟨91534229363766, 851⟩⟩,
    ⟨74, ⟨119065861457821, 1748⟩⟩,
    ⟨148, ⟨100731365397828, 3543⟩⟩,
    ⟨297, ⟨85946806642122, 7157⟩⟩,
    ⟨594, ⟨104973502913855, 14360⟩⟩,
    ⟨1189, ⟨93338256181329, 28791⟩⟩,
    ⟨2379, ⟨73793765041950, 57653⟩⟩,
    ⟨4759, ⟨92250693017074, 115376⟩⟩,
    ⟨9518, ⟨120937078834948, 230798⟩⟩,
    ⟨19036, ⟨103922396285800, 461643⟩⟩,
    ⟨38073, ⟨91478410148466, 923357⟩⟩,
    ⟨76147, ⟨70882254087200, 1846785⟩⟩,
    ⟨152294, ⟨71399511291509, 3693616⟩⟩,
    ⟨304588, ⟨72445377166252, 7387278⟩⟩,
    ⟨609176, ⟨74583293109648, 14774602⟩⟩,
    ⟨1218353, ⟨94235254824178, 29549274⟩⟩]
  descTrace := [⟨1, ⟨130468251057520, 29033⟩⟩,
    ⟨2, ⟨120948332480054, 58113⟩⟩,
    ⟨4, ⟨103941737916853, 116273⟩⟩,
    ⟨9, ⟨71164793949121, 261673⟩⟩,
    ⟨18, ⟨71969849071547, 523392⟩⟩,
    ⟨37, ⟨136472900996912, 1075909⟩⟩,
    ⟨74, ⟨132337537952146, 2151865⟩⟩,
    ⟨149, ⟨115358964630033, 4332857⟩⟩,
    ⟨299, ⟨87657271294516, 8694841⟩⟩,
    ⟨598, ⟨109193325823758, 17389728⟩⟩,
    ⟨1196, ⟨84719306446269, 34779503⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1199 1227 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1227)
    good_1227.2.1 good_798.2.2.1 good_798.2.2.1 good_1199.2.2.2 checked

end B699TraceData.Block1199_1227

#print axioms B699TraceData.Block1199_1227.tail
