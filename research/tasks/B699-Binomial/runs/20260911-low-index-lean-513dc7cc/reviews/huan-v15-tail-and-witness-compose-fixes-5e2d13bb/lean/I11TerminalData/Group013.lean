import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk053
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk054
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk055

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group013
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk052.witnesses ++ Chunk053.witnesses ++ Chunk054.witnesses ++ Chunk055.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk054.witnesses) (right := Chunk055.witnesses)
    Chunk054.witnesses_check Chunk055.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk053.witnesses) (right := (Chunk054.witnesses ++ Chunk055.witnesses))
    Chunk053.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk052.witnesses) (right := (Chunk053.witnesses ++ (Chunk054.witnesses ++ Chunk055.witnesses)))
    Chunk052.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group013
#print axioms B699LowIndex.I11TerminalData.Group013.witnesses_check
