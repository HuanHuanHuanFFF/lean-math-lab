import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1118_1143

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1118
  hi := 1143
  r := 373
  s := 744
  N := 20000000
  t := 189
  factorialUpper := state_1143.factorialUpper
  windowS := state_744.windowLower
  windowM := state_744.windowLower
  descLower := state_1118.descLower
  factorialPower := ⟨106215201318091, 11115049⟩
  nPower := ⟨83131563837959, 25734854⟩
  descPower := ⟨76201377053342, 30233585⟩
  factorialTrace := [⟨1, ⟨113966250739792, 9922⟩⟩,
    ⟨2, ⟨92287466967528, 19891⟩⟩,
    ⟨4, ⟨121033516496746, 39828⟩⟩,
    ⟨8, ⟨104088201990522, 79703⟩⟩,
    ⟨17, ⟨124677957116573, 169421⟩⟩,
    ⟨34, ⟨110450976299334, 338889⟩⟩,
    ⟨69, ⟨140386640851444, 687793⟩⟩,
    ⟨139, ⟨113398741178345, 1385602⟩⟩,
    ⟨278, ⟨91370640837122, 2771251⟩⟩,
    ⟨557, ⟨96072702203956, 5552517⟩⟩,
    ⟨1115, ⟨106215201318091, 11115049⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨2, ⟨100000000000000, 2⟩⟩,
    ⟨4, ⟨71054273576011, 51⟩⟩,
    ⟨8, ⟨71746481373433, 148⟩⟩,
    ⟨16, ⟨73151193042071, 342⟩⟩,
    ⟨32, ⟨76043662651818, 730⟩⟩,
    ⟨64, ⟨82176237434390, 1506⟩⟩,
    ⟨129, ⟨114399151753588, 3082⟩⟩,
    ⟨259, ⟨110852607220674, 6235⟩⟩,
    ⟨518, ⟨87313626747382, 12517⟩⟩,
    ⟨1036, ⟨108338858464395, 25080⟩⟩,
    ⟨2072, ⟨83398591168079, 50207⟩⟩,
    ⟨4144, ⟨98841113197358, 100460⟩⟩,
    ⟨8289, ⟨82751439927689, 200991⟩⟩,
    ⟨16579, ⟨116006258047889, 402052⟩⟩,
    ⟨33158, ⟨95620946938435, 804151⟩⟩,
    ⟨66317, ⟨77447318217005, 1608373⟩⟩,
    ⟨132635, ⟨101611547867183, 3216816⟩⟩,
    ⟨265270, ⟨73362874246391, 6433679⟩⟩,
    ⟨530540, ⟨76484401996763, 12867404⟩⟩,
    ⟨1061080, ⟨83131563837959, 25734854⟩⟩]
  descTrace := [⟨1, ⟨90578168011468, 27069⟩⟩,
    ⟨2, ⟨116591600662924, 54184⟩⟩,
    ⟨4, ⟨96588346886099, 108415⟩⟩,
    ⟨8, ⟨132577451299047, 216876⟩⟩,
    ⟨17, ⟨80379124549929, 460915⟩⟩,
    ⟨34, ⟨91813542204206, 921876⟩⟩,
    ⟨69, ⟨77098765073726, 1870914⟩⟩,
    ⟨139, ⟨108732350185787, 3768989⟩⟩,
    ⟨278, ⟨84005506387005, 7538025⟩⟩,
    ⟨557, ⟨129086088051445, 15103211⟩⟩,
    ⟨1115, ⟨76201377053342, 30233585⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1118 1143 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1143)
    good_1143.2.1 good_744.2.2.1 good_744.2.2.1 good_1118.2.2.2 checked

end B699TraceData.Block1118_1143

#print axioms B699TraceData.Block1118_1143.tail
