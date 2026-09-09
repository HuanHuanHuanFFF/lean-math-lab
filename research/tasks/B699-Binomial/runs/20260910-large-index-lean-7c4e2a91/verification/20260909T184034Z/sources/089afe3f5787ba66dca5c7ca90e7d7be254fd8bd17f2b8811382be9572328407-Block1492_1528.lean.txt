import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1344_1600

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1492_1528

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1492
  hi := 1528
  r := 497
  s := 994
  N := 20000000
  t := 241
  factorialUpper := state_1528.factorialUpper
  windowS := state_994.windowLower
  windowM := state_994.windowLower
  descLower := state_1492.descLower
  factorialPower := ⟨84380145914287, 20821005⟩
  nPower := ⟨128785725318506, 45580180⟩
  descPower := ⟨135823130710405, 53953483⟩
  factorialTrace := [⟨1, ⟨98676236093697, 13918⟩⟩,
    ⟨2, ⟨138371086245841, 27882⟩⟩,
    ⟨5, ⟨95385790565827, 69776⟩⟩,
    ⟨11, ⟨90654704312264, 153563⟩⟩,
    ⟨23, ⟨81884871166449, 321137⟩⟩,
    ⟨46, ⟨95285658488052, 642320⟩⟩,
    ⟨93, ⟨90464473056948, 1298651⟩⟩,
    ⟨186, ⟨116299089618669, 2597348⟩⟩,
    ⟨372, ⟨96104303154698, 5194743⟩⟩,
    ⟨745, ⟨92025597669589, 10403497⟩⟩,
    ⟨1491, ⟨84380145914287, 20821005⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨7, ⟨120370621524205, 123⟩⟩,
    ⟨14, ⟨102951151789366, 293⟩⟩,
    ⟨28, ⟨75309995784474, 633⟩⟩,
    ⟨57, ⟨96080564448036, 1336⟩⟩,
    ⟨114, ⟨131187148108626, 2718⟩⟩,
    ⟨229, ⟨72887472377691, 5508⟩⟩,
    ⟨458, ⟨75496354122730, 11062⟩⟩,
    ⟨917, ⟨96556665078838, 22194⟩⟩,
    ⟨1835, ⟨78970487402592, 44459⟩⟩,
    ⟨3670, ⟨88623691576160, 88964⟩⟩,
    ⟨7341, ⟨133054623982739, 177998⟩⟩,
    ⟨14682, ⟨125791167442828, 356043⟩⟩,
    ⟨29364, ⟨112432145773977, 712133⟩⟩,
    ⟨58728, ⟨89819617722788, 1424313⟩⟩,
    ⟨117457, ⟨136669845631556, 2848696⟩⟩,
    ⟨234915, ⟨79107145846093, 5697464⟩⟩,
    ⟨469831, ⟨106013636114278, 11394998⟩⟩,
    ⟨939663, ⟨95197110033198, 22790067⟩⟩,
    ⟨1879326, ⟨128785725318506, 45580180⟩⟩]
  descTrace := [⟨1, ⟨77367159165014, 36140⟩⟩,
    ⟨2, ⟨85061590727727, 72326⟩⟩,
    ⟨5, ⟨113048303558042, 180884⟩⟩,
    ⟨11, ⟨99837834544150, 398001⟩⟩,
    ⟨23, ⟨77867702152788, 832235⟩⟩,
    ⟨46, ⟨86165798600110, 1664516⟩⟩,
    ⟨93, ⟨116002375879433, 3365264⟩⟩,
    ⟨186, ⟨95614547104171, 6730575⟩⟩,
    ⟨372, ⟨129917646318286, 13461196⟩⟩,
    ⟨745, ⟨131857045864307, 26958625⟩⟩,
    ⟨1491, ⟨135823130710405, 53953483⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1492 1528 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1528)
    good_1528.2.1 good_994.2.2.1 good_994.2.2.1 good_1492.2.2.2 checked

end B699TraceData.Block1492_1528

#print axioms B699TraceData.Block1492_1528.tail
