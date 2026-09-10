import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1344_1600

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1384_1420

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1384
  hi := 1420
  r := 461
  s := 922
  N := 20000000
  t := 223
  factorialUpper := state_1420.factorialUpper
  windowS := state_922.windowLower
  windowM := state_922.windowLower
  descLower := state_1384.descLower
  factorialPower := ⟨121977808504011, 17740681⟩
  nPower := ⟨87606654995643, 39260932⟩
  descPower := ⟨92126864045557, 46422797⟩
  factorialTrace := [⟨1, ⟨115390414423193, 12781⟩⟩,
    ⟨2, ⟨94608393942197, 25609⟩⟩,
    ⟨5, ⟨104289233718721, 64092⟩⟩,
    ⟨10, ⟨77280363581438, 128231⟩⟩,
    ⟨21, ⟨139170903056805, 269335⟩⟩,
    ⟨43, ⟨112835830905445, 551545⟩⟩,
    ⟨86, ⟨90465766334960, 1103137⟩⟩,
    ⟨172, ⟨116302414860621, 2206320⟩⟩,
    ⟨345, ⟨78800251829784, 4425515⟩⟩,
    ⟨691, ⟨72349468861878, 8863904⟩⟩,
    ⟨1383, ⟨121977808504011, 17740681⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨6, ⟨100974195868291, 99⟩⟩,
    ⟨12, ⟨72445432630616, 245⟩⟩,
    ⟨24, ⟨74583407312007, 536⟩⟩,
    ⟨49, ⟨94235543411506, 1142⟩⟩,
    ⟨98, ⟨126197188053281, 2330⟩⟩,
    ⟨197, ⟨134896182499395, 4731⟩⟩,
    ⟨395, ⟨77067208226722, 9534⟩⟩,
    ⟨790, ⟨84403305093317, 19114⟩⟩,
    ⟨1580, ⟨101236962431636, 38274⟩⟩,
    ⟨3161, ⟨86811750841977, 76619⟩⟩,
    ⟨6323, ⟨127669550621915, 153308⟩⟩,
    ⟨12646, ⟨115815013799660, 306663⟩⟩,
    ⟨25293, ⟨113613523813296, 613397⟩⟩,
    ⟨50586, ⟨91717089342143, 1226841⟩⟩,
    ⟨101173, ⟨71252618854630, 2453753⟩⟩,
    ⟨202347, ⟨86006636072144, 4907576⟩⟩,
    ⟨404694, ⟨105119702431669, 9815198⟩⟩,
    ⟨809388, ⟨78516051184769, 19630443⟩⟩,
    ⟨1618776, ⟨87606654995643, 39260932⟩⟩]
  descTrace := [⟨1, ⟨120026485695256, 33520⟩⟩,
    ⟨2, ⟨102363325057932, 67087⟩⟩,
    ⟨5, ⟨126991970719823, 167787⟩⟩,
    ⟨10, ⟨114588947236202, 335621⟩⟩,
    ⟨21, ⟨79568827205405, 704856⟩⟩,
    ⟨43, ⟨76731450394771, 1443325⟩⟩,
    ⟨86, ⟨83669469286252, 2886696⟩⟩,
    ⟨172, ⟨99484226590264, 5773438⟩⟩,
    ⟨345, ⟨119948811635514, 11580489⟩⟩,
    ⟨691, ⟨87186530820807, 23194592⟩⟩,
    ⟨1383, ⟨92126864045557, 46422797⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1384 1420 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1420)
    good_1420.2.1 good_922.2.2.1 good_922.2.2.1 good_1384.2.2.2 checked

end B699TraceData.Block1384_1420

#print axioms B699TraceData.Block1384_1420.tail
