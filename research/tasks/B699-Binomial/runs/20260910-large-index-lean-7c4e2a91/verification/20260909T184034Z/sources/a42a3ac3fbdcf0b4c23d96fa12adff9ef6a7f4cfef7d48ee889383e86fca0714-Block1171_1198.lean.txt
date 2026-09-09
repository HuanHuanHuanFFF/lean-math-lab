import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1171_1198

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1171
  hi := 1198
  r := 390
  s := 780
  N := 20000000
  t := 196
  factorialUpper := state_1198.factorialUpper
  windowS := state_780.windowLower
  windowM := state_780.windowLower
  descLower := state_1171.descLower
  factorialPower := ⟨112499748018382, 12319272⟩
  nPower := ⟨137210188450060, 28243829⟩
  descPower := ⟨90204049262385, 33228884⟩
  factorialTrace := [⟨1, ⟨88589594771570, 10483⟩⟩,
    ⟨2, ⟨111528440552761, 21012⟩⟩,
    ⟨4, ⟨88381519362676, 42071⟩⟩,
    ⟨9, ⟨139748141355456, 94717⟩⟩,
    ⟨18, ⟨138765749201074, 189481⟩⟩,
    ⟨36, ⟨136821634209635, 379009⟩⟩,
    ⟨73, ⟨83728376340589, 768595⟩⟩,
    ⟨146, ⟨99624358606311, 1537236⟩⟩,
    ⟨292, ⟨70521457670615, 3074519⟩⟩,
    ⟨585, ⟨88974524378370, 6159613⟩⟩,
    ⟨1170, ⟨112499748018382, 12319272⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨4, ⟨71054273576011, 51⟩⟩,
    ⟨8, ⟨71746481373433, 148⟩⟩,
    ⟨17, ⟨87203017523374, 366⟩⟩,
    ⟨35, ⟨128822975391964, 802⟩⟩,
    ⟨71, ⟨140568158350592, 1675⟩⟩,
    ⟨142, ⟨140399032077292, 3397⟩⟩,
    ⟨284, ⟨140061389744805, 6841⟩⟩,
    ⟨568, ⟨139388539091429, 13729⟩⟩,
    ⟨1137, ⟨82285713743405, 27530⟩⟩,
    ⟨2274, ⟨96220825956005, 55106⟩⟩,
    ⟨4548, ⟨131570450145884, 110258⟩⟩,
    ⟨9097, ⟨73314019207893, 220588⟩⟩,
    ⟨18195, ⟨91055117080184, 441246⟩⟩,
    ⟨36391, ⟨140455585165815, 882562⟩⟩,
    ⟨72783, ⟨83550361776597, 1765196⟩⟩,
    ⟨145566, ⟨99201187040880, 3530438⟩⟩,
    ⟨291132, ⟨139847252147543, 7060922⟩⟩,
    ⟨582264, ⟨138962647136641, 14121891⟩⟩,
    ⟨1164528, ⟨137210188450060, 28243829⟩⟩]
  descTrace := [⟨1, ⟨122110280756294, 28354⟩⟩,
    ⟨2, ⟨105948463629921, 56755⟩⟩,
    ⟨4, ⟨79758968820021, 113557⟩⟩,
    ⟨9, ⟨78437129899469, 255561⟩⟩,
    ⟨18, ⟨87430625894543, 511168⟩⟩,
    ⟨36, ⟨108629398373402, 1022382⟩⟩,
    ⟨73, ⟨72749059964178, 2073212⟩⟩,
    ⟨146, ⟨75209893078516, 4146470⟩⟩,
    ⟨292, ⟨80384097840377, 8292986⟩⟩,
    ⟨585, ⟨79671485905148, 16614419⟩⟩,
    ⟨1170, ⟨90204049262385, 33228884⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1171 1198 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1198)
    good_1198.2.1 good_780.2.2.1 good_780.2.2.1 good_1171.2.2.2 checked

end B699TraceData.Block1171_1198

#print axioms B699TraceData.Block1171_1198.tail
