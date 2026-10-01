import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch01
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch02
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch03
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch04
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch05
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch06
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch07
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch08
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch09
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch10
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch11
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch12
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch13
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch14
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch15
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch16
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch17
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch18
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch19
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch20
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch21
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch22
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch23
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch24
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch25
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch26
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch27
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch28
import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-tail-twohour».tail.CoreDagBatch29

set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699CorePrunedSieve.AllNumeric
open B699CorePrunedSieve
def pairs : List (Nat × Nat) := CoreDagBatch01.pairs ++ (CoreDagBatch02.pairs ++ (CoreDagBatch03.pairs ++ (CoreDagBatch04.pairs ++ (CoreDagBatch05.pairs ++ (CoreDagBatch06.pairs ++ (CoreDagBatch07.pairs ++ (CoreDagBatch08.pairs ++ (CoreDagBatch09.pairs ++ (CoreDagBatch10.pairs ++ (CoreDagBatch11.pairs ++ (CoreDagBatch12.pairs ++ (CoreDagBatch13.pairs ++ (CoreDagBatch14.pairs ++ (CoreDagBatch15.pairs ++ (CoreDagBatch16.pairs ++ (CoreDagBatch17.pairs ++ (CoreDagBatch18.pairs ++ (CoreDagBatch19.pairs ++ (CoreDagBatch20.pairs ++ (CoreDagBatch21.pairs ++ (CoreDagBatch22.pairs ++ (CoreDagBatch23.pairs ++ (CoreDagBatch24.pairs ++ (CoreDagBatch25.pairs ++ (CoreDagBatch26.pairs ++ (CoreDagBatch27.pairs ++ (CoreDagBatch28.pairs ++ (CoreDagBatch29.pairs))))))))))))))))))))))))))))
theorem pairs_valid : ∀ bt ∈ pairs, count primes bt.1 ≤ (bt.2 : Int) - 15 := by
  intro bt hbt
  simp only [pairs, List.mem_append] at hbt
  rcases hbt with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 | h28
  · exact CoreDagBatch01.pairs_valid bt h0
  · exact CoreDagBatch02.pairs_valid bt h1
  · exact CoreDagBatch03.pairs_valid bt h2
  · exact CoreDagBatch04.pairs_valid bt h3
  · exact CoreDagBatch05.pairs_valid bt h4
  · exact CoreDagBatch06.pairs_valid bt h5
  · exact CoreDagBatch07.pairs_valid bt h6
  · exact CoreDagBatch08.pairs_valid bt h7
  · exact CoreDagBatch09.pairs_valid bt h8
  · exact CoreDagBatch10.pairs_valid bt h9
  · exact CoreDagBatch11.pairs_valid bt h10
  · exact CoreDagBatch12.pairs_valid bt h11
  · exact CoreDagBatch13.pairs_valid bt h12
  · exact CoreDagBatch14.pairs_valid bt h13
  · exact CoreDagBatch15.pairs_valid bt h14
  · exact CoreDagBatch16.pairs_valid bt h15
  · exact CoreDagBatch17.pairs_valid bt h16
  · exact CoreDagBatch18.pairs_valid bt h17
  · exact CoreDagBatch19.pairs_valid bt h18
  · exact CoreDagBatch20.pairs_valid bt h19
  · exact CoreDagBatch21.pairs_valid bt h20
  · exact CoreDagBatch22.pairs_valid bt h21
  · exact CoreDagBatch23.pairs_valid bt h22
  · exact CoreDagBatch24.pairs_valid bt h23
  · exact CoreDagBatch25.pairs_valid bt h24
  · exact CoreDagBatch26.pairs_valid bt h25
  · exact CoreDagBatch27.pairs_valid bt h26
  · exact CoreDagBatch28.pairs_valid bt h27
  · exact CoreDagBatch29.pairs_valid bt h28
end B699CorePrunedSieve.AllNumeric
#check @B699CorePrunedSieve.AllNumeric.pairs_valid
#print axioms B699CorePrunedSieve.AllNumeric.pairs_valid
