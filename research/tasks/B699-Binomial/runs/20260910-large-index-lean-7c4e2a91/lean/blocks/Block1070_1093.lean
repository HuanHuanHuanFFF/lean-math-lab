import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1088_1344

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1070_1093

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1070
  hi := 1093
  r := 357
  s := 712
  N := 20000000
  t := 182
  factorialUpper := state_1093.factorialUpper
  windowS := state_712.windowLower
  windowM := state_712.windowLower
  descLower := state_1070.descLower
  factorialPower := ⟨100500983962522, 10096264⟩
  nPower := ⟨93596045481324, 23582356⟩
  descPower := ⟨105684040257604, 27689884⟩
  factorialTrace := [⟨1, ⟨88707889268594, 9416⟩⟩,
    ⟨2, ⟨111826489309254, 18878⟩⟩,
    ⟨4, ⟨88854532345073, 37803⟩⟩,
    ⟨8, ⟨112196515804352, 75652⟩⟩,
    ⟨16, ⟨89443532819447, 151351⟩⟩,
    ⟨33, ⟨71658966128596, 312211⟩⟩,
    ⟨66, ⟨72972844501170, 624468⟩⟩,
    ⟨133, ⟨95394908460297, 1258444⟩⟩,
    ⟨266, ⟨129321457509213, 2516934⟩⟩,
    ⟨533, ⟨74900347840082, 5043378⟩⟩,
    ⟨1067, ⟨100500983962522, 10096264⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨7, ⟨120370621524205, 123⟩⟩,
    ⟨14, ⟨102951151789366, 293⟩⟩,
    ⟨29, ⟨89776510935395, 657⟩⟩,
    ⟨59, ⟨136538694232566, 1384⟩⟩,
    ⟨118, ⟨132465167885231, 2815⟩⟩,
    ⟨237, ⟨74314523307390, 5702⟩⟩,
    ⟨474, ⟨78481553691811, 11450⟩⟩,
    ⟨949, ⟨104343520008008, 22970⟩⟩,
    ⟨1899, ⟨92221306475525, 46011⟩⟩,
    ⟨3798, ⟨120860041875698, 92068⟩⟩,
    ⟨7596, ⟨103790041252662, 184183⟩⟩,
    ⟨15192, ⟨76542311427583, 368413⟩⟩,
    ⟨30385, ⟨99250669509529, 736896⟩⟩,
    ⟨60770, ⟨139986801145963, 1473838⟩⟩,
    ⟨121541, ⟨82993577758800, 2947748⟩⟩,
    ⟨243082, ⟨97883428640074, 5895542⟩⟩,
    ⟨486165, ⟨81155629382787, 11791155⟩⟩,
    ⟨972330, ⟨93596045481324, 23582356⟩⟩]
  descTrace := [⟨1, ⟨80842267671248, 25905⟩⟩,
    ⟨2, ⟨92874646529561, 51856⟩⟩,
    ⟨4, ⟨122578569062041, 103758⟩⟩,
    ⟨8, ⟨106762638504403, 207563⟩⟩,
    ⟨16, ⟨80989515399365, 415173⟩⟩,
    ⟨33, ⟨107086934590862, 856343⟩⟩,
    ⟨66, ⟨81482280905245, 1712733⟩⟩,
    ⟨133, ⟨108393999536390, 3451463⟩⟩,
    ⟨266, ⟨83483507292889, 6902973⟩⟩,
    ⟨533, ⟨113783754154239, 13831943⟩⟩,
    ⟨1067, ⟨105684040257604, 27689884⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1070 1093 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1093)
    good_1093.2.1 good_712.2.2.1 good_712.2.2.1 good_1070.2.2.2 checked

end B699TraceData.Block1070_1093

#print axioms B699TraceData.Block1070_1093.tail
