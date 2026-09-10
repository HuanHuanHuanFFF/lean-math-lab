import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1258_1287

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1258
  hi := 1287
  r := 419
  s := 838
  N := 20000000
  t := 208
  factorialUpper := state_1287.factorialUpper
  windowS := state_838.windowLower
  windowM := state_838.windowLower
  descLower := state_1258.descLower
  factorialPower := ⟨137593743480389, 14385300⟩
  nPower := ⟨91784862152652, 32519430⟩
  descPower := ⟨75597961116830, 38352082⟩
  factorialTrace := [⟨1, ⟨80280192766518, 11398⟩⟩,
    ⟨2, ⟨91587670434440, 22842⟩⟩,
    ⟨4, ⟨119204932156089, 45730⟩⟩,
    ⟨9, ⟨115188005824213, 102951⟩⟩,
    ⟨19, ⟨107555674771123, 217393⟩⟩,
    ⟨39, ⟨93774653559662, 446277⟩⟩,
    ⟨78, ⟨124965789186641, 892600⟩⟩,
    ⟨157, ⟨126590490399084, 1796691⟩⟩,
    ⟨314, ⟨113865555274235, 3593429⟩⟩,
    ⟨628, ⟨92124456883695, 7186905⟩⟩,
    ⟨1257, ⟨137593743480389, 14385300⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨5, ⟨84703294725432, 75⟩⟩,
    ⟨10, ⟨101957882312482, 196⟩⟩,
    ⟨20, ⟨73863828942294, 439⟩⟩,
    ⟨40, ⟨77532508072643, 924⟩⟩,
    ⟨81, ⟨101835210457985, 1918⟩⟩,
    ⟨163, ⟨87840790219403, 3907⟩⟩,
    ⟨327, ⟨130714199405895, 7884⟩⟩,
    ⟨654, ⟨121404766604799, 15815⟩⟩,
    ⟨1309, ⟨124845180125955, 31701⟩⟩,
    ⟨2618, ⟨110747457431744, 63449⟩⟩,
    ⟨5237, ⟨103888585285258, 126969⟩⟩,
    ⟨10475, ⟨91418895096121, 254009⟩⟩,
    ⟨20950, ⟨118766001557384, 508064⟩⟩,
    ⟨41900, ⟨100224633043870, 1016175⟩⟩,
    ⟨83801, ⟨85084265316693, 2032421⟩⟩,
    ⟨167602, ⟨102877098192969, 4064888⟩⟩,
    ⟨335204, ⟨75201692571666, 8129823⟩⟩,
    ⟨670408, ⟨80366569444030, 16259692⟩⟩,
    ⟨1340816, ⟨91784862152652, 32519430⟩⟩]
  descTrace := [⟨1, ⟨126118113590234, 30464⟩⟩,
    ⟨2, ⟨113017354234721, 60975⟩⟩,
    ⟨4, ⟨90757071960584, 121997⟩⟩,
    ⟨9, ⟨104893559105073, 274551⟩⟩,
    ⟨19, ⟨140115284358304, 579659⟩⟩,
    ⟨39, ⟨125005435884811, 1189876⟩⟩,
    ⟨78, ⟨111031958743635, 2379799⟩⟩,
    ⟨157, ⟨78497147730851, 4790156⟩⟩,
    ⟨314, ⟨87564475874714, 9580358⟩⟩,
    ⟨628, ⟨108962260515189, 19160762⟩⟩,
    ⟨1257, ⟨75597961116830, 38352082⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1258 1287 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1287)
    good_1287.2.1 good_838.2.2.1 good_838.2.2.1 good_1258.2.2.2 checked

end B699TraceData.Block1258_1287

#print axioms B699TraceData.Block1258_1287.tail
