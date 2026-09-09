import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.CertifiedBlock

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.Counts

import research.tasks.«B699-Binomial».runs.«20260910-large-index-lean-7c4e2a91».lean.factorials.Factorials1600_1856

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
set_option maxRecDepth 65536
set_option maxHeartbeats 0


namespace B699TraceData.Block1567_1605

open B699TraceBlock B699FactorialData

def row : Row := {
  lo := 1567
  hi := 1605
  r := 522
  s := 1044
  N := 20000000
  t := 252
  factorialUpper := state_1605.factorialUpper
  windowS := state_1044.windowLower
  windowM := state_1044.windowLower
  descLower := state_1567.descLower
  factorialPower := ⟨86843816057821, 23148156⟩
  nPower := ⟨77666849173155, 50241436⟩
  descPower := ⟨95224261296078, 59516004⟩
  factorialTrace := [⟨1, ⟨117396299418269, 14735⟩⟩,
    ⟨3, ⟨81685247507399, 44299⟩⟩,
    ⟨6, ⟨94821639043304, 88644⟩⟩,
    ⟨12, ⟨127771830177304, 177334⟩⟩,
    ⟨24, ⟨116000653256221, 354715⟩⟩,
    ⟨48, ⟨95611707393105, 709477⟩⟩,
    ⟨97, ⟨108364481643850, 1433782⟩⟩,
    ⟨195, ⟨139199836863581, 2882392⟩⟩,
    ⟨391, ⟨114845046365671, 5779613⟩⟩,
    ⟨783, ⟨78173462732470, 11574055⟩⟩,
    ⟨1566, ⟨86843816057821, 23148156⟩⟩]
  nTrace := [⟨1, ⟨20000000, 0⟩⟩,
    ⟨3, ⟨119209289550782, 26⟩⟩,
    ⟨7, ⟨120370621524205, 123⟩⟩,
    ⟨15, ⟨122727336632450, 317⟩⟩,
    ⟨31, ⟨127580095374064, 705⟩⟩,
    ⟨63, ⟨137868848550395, 1481⟩⟩,
    ⟨126, ⟨135058679977446, 3009⟩⟩,
    ⟨252, ⟨129609013564293, 6065⟩⟩,
    ⟨505, ⟨71144399563421, 12202⟩⟩,
    ⟨1011, ⟨85745578749136, 24474⟩⟩,
    ⟨2022, ⟨104482527874329, 48994⟩⟩,
    ⟨4045, ⟨92467187124167, 98059⟩⟩,
    ⟨8091, ⟨72422847533511, 196189⟩⟩,
    ⟨16183, ⟨88854922444307, 392448⟩⟩,
    ⟨32367, ⟨133749843790797, 784966⟩⟩,
    ⟨64734, ⟨127109137182392, 1569979⟩⟩,
    ⟨129469, ⟨136852849636814, 3140029⟩⟩,
    ⟨258939, ⟨79319140188102, 6280130⟩⟩,
    ⟨517878, ⟨89407961925471, 12560306⟩⟩,
    ⟨1035757, ⟨135419962591450, 25120682⟩⟩,
    ⟨2071515, ⟨77666849173155, 50241436⟩⟩]
  descTrace := [⟨1, ⟨77580751323326, 37959⟩⟩,
    ⟨3, ⟨94297969751377, 113969⟩⟩,
    ⟨6, ⟨126364442099196, 227984⟩⟩,
    ⟨12, ⟨113459266707430, 456015⟩⟩,
    ⟨24, ⟨91468203335322, 912077⟩⟩,
    ⟨48, ⟨118894152782783, 1824200⟩⟩,
    ⟨97, ⟨110735119199445, 3686452⟩⟩,
    ⟨195, ⟨96058353740517, 7410956⟩⟩,
    ⟨391, ⟨72282749370267, 14859964⟩⟩,
    ⟨783, ⟨81858485709490, 29757979⟩⟩,
    ⟨1566, ⟨95224261296078, 59516004⟩⟩]
}

theorem checked : rowCheck 48 row = true := by
  decide +kernel

theorem tail : B699Middle.TailRange 1567 1605 20000000 :=
  tailRange_of_row_checked (row := row)
    (le_of_eq B699CountData.count_1605)
    good_1605.2.1 good_1044.2.2.1 good_1044.2.2.1 good_1567.2.2.2 checked

end B699TraceData.Block1567_1605

#print axioms B699TraceData.Block1567_1605.tail
