module
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-twohour-finish».supply.LowerBlock044
public import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261004-tail-ninetymin».supply.RatioForward
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option Elab.async false
@[expose] public section
namespace B699TailFinish20261004.FullInitial
theorem lower_chain : B699TailNinety20261004.RatioPrimeChain 10000019 19997441 := by
  have h0 := B699TailNinety20261004.RatioPrimeChain.singleton B699TailFinish20261004.FullInitial.seed_prime
  have h1 := B699TailNinety20261004.RatioPrimeChain.trans h0 B699TailFinish20261004.FullInitial.LowerBlock000.chain
  have h2 := B699TailNinety20261004.RatioPrimeChain.trans h1 B699TailFinish20261004.FullInitial.LowerBlock001.chain
  have h3 := B699TailNinety20261004.RatioPrimeChain.trans h2 B699TailFinish20261004.FullInitial.LowerBlock002.chain
  have h4 := B699TailNinety20261004.RatioPrimeChain.trans h3 B699TailFinish20261004.FullInitial.LowerBlock003.chain
  have h5 := B699TailNinety20261004.RatioPrimeChain.trans h4 B699TailFinish20261004.FullInitial.LowerBlock004.chain
  have h6 := B699TailNinety20261004.RatioPrimeChain.trans h5 B699TailFinish20261004.FullInitial.LowerBlock005.chain
  have h7 := B699TailNinety20261004.RatioPrimeChain.trans h6 B699TailFinish20261004.FullInitial.LowerBlock006.chain
  have h8 := B699TailNinety20261004.RatioPrimeChain.trans h7 B699TailFinish20261004.FullInitial.LowerBlock007.chain
  have h9 := B699TailNinety20261004.RatioPrimeChain.trans h8 B699TailFinish20261004.FullInitial.LowerBlock008.chain
  have h10 := B699TailNinety20261004.RatioPrimeChain.trans h9 B699TailFinish20261004.FullInitial.LowerBlock009.chain
  have h11 := B699TailNinety20261004.RatioPrimeChain.trans h10 B699TailFinish20261004.FullInitial.LowerBlock010.chain
  have h12 := B699TailNinety20261004.RatioPrimeChain.trans h11 B699TailFinish20261004.FullInitial.LowerBlock011.chain
  have h13 := B699TailNinety20261004.RatioPrimeChain.trans h12 B699TailFinish20261004.FullInitial.LowerBlock012.chain
  have h14 := B699TailNinety20261004.RatioPrimeChain.trans h13 B699TailFinish20261004.FullInitial.LowerBlock013.chain
  have h15 := B699TailNinety20261004.RatioPrimeChain.trans h14 B699TailFinish20261004.FullInitial.LowerBlock014.chain
  have h16 := B699TailNinety20261004.RatioPrimeChain.trans h15 B699TailFinish20261004.FullInitial.LowerBlock015.chain
  have h17 := B699TailNinety20261004.RatioPrimeChain.trans h16 B699TailFinish20261004.FullInitial.LowerBlock016.chain
  have h18 := B699TailNinety20261004.RatioPrimeChain.trans h17 B699TailFinish20261004.FullInitial.LowerBlock017.chain
  have h19 := B699TailNinety20261004.RatioPrimeChain.trans h18 B699TailFinish20261004.FullInitial.LowerBlock018.chain
  have h20 := B699TailNinety20261004.RatioPrimeChain.trans h19 B699TailFinish20261004.FullInitial.LowerBlock019.chain
  have h21 := B699TailNinety20261004.RatioPrimeChain.trans h20 B699TailFinish20261004.FullInitial.LowerBlock020.chain
  have h22 := B699TailNinety20261004.RatioPrimeChain.trans h21 B699TailFinish20261004.FullInitial.LowerBlock021.chain
  have h23 := B699TailNinety20261004.RatioPrimeChain.trans h22 B699TailFinish20261004.FullInitial.LowerBlock022.chain
  have h24 := B699TailNinety20261004.RatioPrimeChain.trans h23 B699TailFinish20261004.FullInitial.LowerBlock023.chain
  have h25 := B699TailNinety20261004.RatioPrimeChain.trans h24 B699TailFinish20261004.FullInitial.LowerBlock024.chain
  have h26 := B699TailNinety20261004.RatioPrimeChain.trans h25 B699TailFinish20261004.FullInitial.LowerBlock025.chain
  have h27 := B699TailNinety20261004.RatioPrimeChain.trans h26 B699TailFinish20261004.FullInitial.LowerBlock026.chain
  have h28 := B699TailNinety20261004.RatioPrimeChain.trans h27 B699TailFinish20261004.FullInitial.LowerBlock027.chain
  have h29 := B699TailNinety20261004.RatioPrimeChain.trans h28 B699TailFinish20261004.FullInitial.LowerBlock028.chain
  have h30 := B699TailNinety20261004.RatioPrimeChain.trans h29 B699TailFinish20261004.FullInitial.LowerBlock029.chain
  have h31 := B699TailNinety20261004.RatioPrimeChain.trans h30 B699TailFinish20261004.FullInitial.LowerBlock030.chain
  have h32 := B699TailNinety20261004.RatioPrimeChain.trans h31 B699TailFinish20261004.FullInitial.LowerBlock031.chain
  have h33 := B699TailNinety20261004.RatioPrimeChain.trans h32 B699TailFinish20261004.FullInitial.LowerBlock032.chain
  have h34 := B699TailNinety20261004.RatioPrimeChain.trans h33 B699TailFinish20261004.FullInitial.LowerBlock033.chain
  have h35 := B699TailNinety20261004.RatioPrimeChain.trans h34 B699TailFinish20261004.FullInitial.LowerBlock034.chain
  have h36 := B699TailNinety20261004.RatioPrimeChain.trans h35 B699TailFinish20261004.FullInitial.LowerBlock035.chain
  have h37 := B699TailNinety20261004.RatioPrimeChain.trans h36 B699TailFinish20261004.FullInitial.LowerBlock036.chain
  have h38 := B699TailNinety20261004.RatioPrimeChain.trans h37 B699TailFinish20261004.FullInitial.LowerBlock037.chain
  have h39 := B699TailNinety20261004.RatioPrimeChain.trans h38 B699TailFinish20261004.FullInitial.LowerBlock038.chain
  have h40 := B699TailNinety20261004.RatioPrimeChain.trans h39 B699TailFinish20261004.FullInitial.LowerBlock039.chain
  have h41 := B699TailNinety20261004.RatioPrimeChain.trans h40 B699TailFinish20261004.FullInitial.LowerBlock040.chain
  have h42 := B699TailNinety20261004.RatioPrimeChain.trans h41 B699TailFinish20261004.FullInitial.LowerBlock041.chain
  have h43 := B699TailNinety20261004.RatioPrimeChain.trans h42 B699TailFinish20261004.FullInitial.LowerBlock042.chain
  have h44 := B699TailNinety20261004.RatioPrimeChain.trans h43 B699TailFinish20261004.FullInitial.LowerBlock043.chain
  have h45 := B699TailNinety20261004.RatioPrimeChain.trans h44 B699TailFinish20261004.FullInitial.LowerBlock044.chain
  exact h45
theorem lower_gap {y : Nat} (hlo : 10000000 ≤ y) (hhi : y < 19995885) :
    ∃ p : Nat, p.Prime ∧ y < p ∧ 4095 * (p - y) ≤ y := by
  by_cases hseed : y < 10000019
  · exact seed_gap_initial hlo hseed
  · exact B699TailNinety20261004.RatioPrimeChain.near_after lower_chain (by omega) (by omega)
end B699TailFinish20261004.FullInitial
#print axioms B699TailFinish20261004.FullInitial.lower_chain
#print axioms B699TailFinish20261004.FullInitial.lower_gap
