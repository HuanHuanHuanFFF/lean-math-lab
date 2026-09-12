import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk208
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk209
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk210
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk211

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group052
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk208.witnesses ++ Chunk209.witnesses ++ Chunk210.witnesses ++ Chunk211.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk210.witnesses) (right := Chunk211.witnesses)
    Chunk210.witnesses_check Chunk211.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk209.witnesses) (right := (Chunk210.witnesses ++ Chunk211.witnesses))
    Chunk209.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk208.witnesses) (right := (Chunk209.witnesses ++ (Chunk210.witnesses ++ Chunk211.witnesses)))
    Chunk208.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group052
#print axioms B699LowIndex.I11TerminalData.Group052.witnesses_check
