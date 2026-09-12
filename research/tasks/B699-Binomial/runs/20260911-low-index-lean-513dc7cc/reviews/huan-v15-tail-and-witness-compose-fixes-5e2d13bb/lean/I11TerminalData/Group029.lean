import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk116
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk117
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk118
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk119

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group029
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk116.witnesses ++ Chunk117.witnesses ++ Chunk118.witnesses ++ Chunk119.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk118.witnesses) (right := Chunk119.witnesses)
    Chunk118.witnesses_check Chunk119.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk117.witnesses) (right := (Chunk118.witnesses ++ Chunk119.witnesses))
    Chunk117.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk116.witnesses) (right := (Chunk117.witnesses ++ (Chunk118.witnesses ++ Chunk119.witnesses)))
    Chunk116.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group029
#print axioms B699LowIndex.I11TerminalData.Group029.witnesses_check
