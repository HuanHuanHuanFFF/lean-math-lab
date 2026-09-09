import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1228_1257

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1228
  hi := 1257
  r := 409
  s := 818
  N := 20000000
  t := 204
  factorialUpper := state_1257.factorialUpper
  windowS := state_818.windowLower
  windowM := state_818.windowLower
  descLower := state_1228.descLower
  factorialPower := ⟨92874483800772, 13662338⟩
  nPower := ⟨73116671902235, 31029344⟩
  descPower := ⟨134763801651087, 36543988⟩
  factorialTrace := [⟨1, ⟨121471597042655, 11088⟩⟩,
    ⟨2, ⟨104843059660405, 22223⟩⟩,
    ⟨4, ⟨78103334707829, 44493⟩⟩,
    ⟨9, ⟨74821136137874, 100167⟩⟩,
    ⟨19, ⟨137329467924621, 211514⟩⟩,
    ⟨38, ⟨134003974213638, 423075⟩⟩,
    ⟨76, ⟨127592621659641, 846197⟩⟩,
    ⟨153, ⟨99840390511627, 1703576⟩⟩,
    ⟨306, ⟨70827635863070, 3407199⟩⟩,
    ⟨613, ⟨123061054439187, 6825578⟩⟩,
    ⟨1227, ⟨92874483800772, 13662338⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨4, ⟨71054273576011, 51⟩⟩,
    ⟨9, ⟨85528470722954, 172⟩⟩,
    ⟨19, ⟨123922941275191, 414⟩⟩,
    ⟨39, ⟨130077963495646, 899⟩⟩,
    ⟨78, ⟨120225796160687, 1845⟩⟩,
    ⟨156, ⟨102703566984070, 3737⟩⟩,
    ⟨312, ⟨74948208856905, 7521⟩⟩,
    ⟨624, ⟨79825696429599, 15088⟩⟩,
    ⟨1249, ⟨107948281160905, 30246⟩⟩,
    ⟨2498, ⟨82798347062819, 60539⟩⟩,
    ⟨4997, ⟨116137810162826, 121148⟩⟩,
    ⟨9995, ⟨114247727264238, 242367⟩⟩,
    ⟨19990, ⟨92743897433279, 484781⟩⟩,
    ⟨39980, ⟨122233679336355, 969608⟩⟩,
    ⟨79961, ⟨126555805597059, 1939287⟩⟩,
    ⟨159922, ⟨113803167283213, 3878621⟩⟩,
    ⟨319844, ⟨92023532855670, 7757289⟩⟩,
    ⟨639689, ⟨71729550257969, 15514649⟩⟩,
    ⟨1279378, ⟨73116671902235, 31029344⟩⟩]
  descTrace := [⟨1, ⟨83079502163402, 29737⟩⟩,
    ⟨2, ⟨98086213707215, 59520⟩⟩,
    ⟨4, ⟨136721287722955, 119086⟩⟩,
    ⟨9, ⟨78405508067968, 268003⟩⟩,
    ⟨19, ⟨103140072215419, 565835⟩⟩,
    ⟨38, ⟨75586644474880, 1131717⟩⟩,
    ⟨76, ⟨81191456373686, 2263480⟩⟩,
    ⟨153, ⟨110599954333977, 4556789⟩⟩,
    ⟨306, ⟨86916073617813, 9113625⟩⟩,
    ⟨613, ⟨126746064296905, 18257079⟩⟩,
    ⟨1227, ⟨134763801651087, 36543988⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1228 1257 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1257)
    good_1257.2.1 good_818.2.2.1 good_818.2.2.1 good_1228.2.2.2 checked

end B699TraceData.Block1228_1257

#print axioms B699TraceData.Block1228_1257.tail
