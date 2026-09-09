import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1344_1600

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1457_1491

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1457
  hi := 1491
  r := 486
  s := 970
  N := 20000000
  t := 237
  factorialUpper := state_1491.factorialUpper
  windowS := state_970.windowLower
  windowM := state_970.windowLower
  descLower := state_1457.descLower
  factorialPower := ⟨90884256481201, 19736196⟩
  nPower := ⟨135818775449266, 43437432⟩
  descPower := ⟨127151372566472, 51380341⟩
  factorialTrace := [⟨1, ⟨118903750368967, 13527⟩⟩,
    ⟨2, ⟨100457255682370, 27101⟩⟩,
    ⟨5, ⟨121162597686155, 67822⟩⟩,
    ⟨11, ⟨88127837284619, 149265⟩⟩,
    ⟨22, ⟨110368826319477, 298576⟩⟩,
    ⟨45, ⟨73125493334358, 610773⟩⟩,
    ⟨90, ⟨75990240239225, 1221592⟩⟩,
    ⟨181, ⟨138660124864631, 2456803⟩⟩,
    ⟨363, ⟨115419485620031, 4927227⟩⟩,
    ⟨727, ⟨79971313569947, 9868075⟩⟩,
    ⟨1454, ⟨90884256481201, 19736196⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨6, ⟨100974195868291, 99⟩⟩,
    ⟨13, ⟨86361685550948, 269⟩⟩,
    ⟨27, ⟨126349206623518, 608⟩⟩,
    ⟨54, ⟨113431909301145, 1263⟩⟩,
    ⟨109, ⟨108986018720720, 2597⟩⟩,
    ⟨218, ⟨84397927058384, 5241⟩⟩,
    ⟨437, ⟨120668484626782, 10552⟩⟩,
    ⟨874, ⟨103461297713096, 21151⟩⟩,
    ⟨1749, ⟨90668440607543, 42373⟩⟩,
    ⟨3498, ⟨116824113010290, 84792⟩⟩,
    ⟨6996, ⟨96973972891882, 169631⟩⟩,
    ⟨13992, ⟨133638187356205, 339308⟩⟩,
    ⟨27984, ⟨126897000426512, 678663⟩⟩,
    ⟨55968, ⟨114417621810832, 1357373⟩⟩,
    ⟨111936, ⟨93019936150872, 2714793⟩⟩,
    ⟨223872, ⟨122962383692202, 5429632⟩⟩,
    ⟨447744, ⟨107432269681371, 10859311⟩⟩,
    ⟨895489, ⟨97761938729308, 21718693⟩⟩,
    ⟨1790978, ⟨135818775449266, 43437432⟩⟩]
  descTrace := [⟨1, ⟨84740968793982, 35291⟩⟩,
    ⟨2, ⟨102048599503385, 70628⟩⟩,
    ⟨5, ⟨89108252293529, 176640⟩⟩,
    ⟨11, ⟨135884423206827, 388663⟩⟩,
    ⟨22, ⟨131198706798244, 777373⟩⟩,
    ⟨45, ⟨73643249069817, 1590131⟩⟩,
    ⟨90, ⟨77070128178876, 3180308⟩⟩,
    ⟨181, ⟨101649673076012, 6395999⟩⟩,
    ⟨363, ⟨88412933477987, 12827382⟩⟩,
    ⟨727, ⟨133772062912769, 25690147⟩⟩,
    ⟨1454, ⟨127151372566472, 51380341⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1457 1491 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1491)
    good_1491.2.1 good_970.2.2.1 good_970.2.2.1 good_1457.2.2.2 checked

end B699TraceData.Block1457_1491

#print axioms B699TraceData.Block1457_1491.tail
