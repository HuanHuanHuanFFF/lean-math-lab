import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials0832_1088

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1023_1046

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1023
  hi := 1046
  r := 342
  s := 680
  N := 20000000
  t := 175
  factorialUpper := state_1046.factorialUpper
  windowS := state_680.windowLower
  windowM := state_680.windowLower
  descLower := state_1023.descLower
  factorialPower := ⟨98723887452326, 9151122⟩
  nPower := ⟨134680237438354, 21553696⟩
  descPower := ⟨105701934060762, 25257846⟩
  factorialTrace := [⟨1, ⟨90313589164906, 8943⟩⟩,
    ⟨3, ⟨74382318152766, 26922⟩⟩,
    ⟨7, ⟨100909700980940, 62879⟩⟩,
    ⟨15, ⟨92860142064345, 134794⟩⟩,
    ⟨31, ⟨78636140999412, 278624⟩⟩,
    ⟨63, ⟨112781505168639, 566283⟩⟩,
    ⟨127, ⟨115995002313447, 1141602⟩⟩,
    ⟨254, ⟨95602392219239, 2283251⟩⟩,
    ⟨509, ⟨83349121053297, 4575538⟩⟩,
    ⟨1018, ⟨98723887452326, 9151122⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨6, ⟨100974195868291, 99⟩⟩,
    ⟨13, ⟨86361685550948, 269⟩⟩,
    ⟨27, ⟨126349206623518, 608⟩⟩,
    ⟨54, ⟨113431909301145, 1263⟩⟩,
    ⟨108, ⟨91424098852878, 2573⟩⟩,
    ⟨216, ⟨118779522765931, 5192⟩⟩,
    ⟨433, ⟨119504278879508, 10455⟩⟩,
    ⟨867, ⟨120967084806455, 20981⟩⟩,
    ⟨1735, ⟨123946632771119, 42033⟩⟩,
    ⟨3471, ⟨130127704666946, 84137⟩⟩,
    ⟨6942, ⟨120317761243086, 168321⟩⟩,
    ⟨13885, ⟨122619569853896, 336713⟩⟩,
    ⟨27771, ⟨127356137781309, 673497⟩⟩,
    ⟨55542, ⟨115247088889503, 1347041⟩⟩,
    ⟨111085, ⟨112501997002436, 2694153⟩⟩,
    ⟨222171, ⟨107206413356087, 5388377⟩⟩,
    ⟨444343, ⟨97351318296603, 10776825⟩⟩,
    ⟨888686, ⟨134680237438354, 21553696⟩⟩]
  descTrace := [⟨1, ⟨85998586903618, 24765⟩⟩,
    ⟨3, ⟨128444154512485, 74387⟩⟩,
    ⟨7, ⟨71630900583631, 173633⟩⟩,
    ⟨15, ⟨89111250222865, 372123⟩⟩,
    ⟨31, ⟨137910326831669, 769103⟩⟩,
    ⟨63, ⟨82578178328284, 1563065⟩⟩,
    ⟨127, ⟨118430158441286, 3150987⟩⟩,
    ⟨254, ⟨99658609744523, 6302021⟩⟩,
    ⟨509, ⟨86244491748784, 12628900⟩⟩,
    ⟨1018, ⟨105701934060762, 25257846⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1023 1046 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1046)
    good_1046.2.1 good_680.2.2.1 good_680.2.2.1 good_1023.2.2.2 checked

end B699TraceData.Block1023_1046

#print axioms B699TraceData.Block1023_1046.tail
