import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk093
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk094
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk095

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group023
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk092.witnesses ++ Chunk093.witnesses ++ Chunk094.witnesses ++ Chunk095.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk094.witnesses) (right := Chunk095.witnesses)
    Chunk094.witnesses_check Chunk095.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk093.witnesses) (right := (Chunk094.witnesses ++ Chunk095.witnesses))
    Chunk093.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk092.witnesses) (right := (Chunk093.witnesses ++ (Chunk094.witnesses ++ Chunk095.witnesses)))
    Chunk092.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group023
#print axioms B699LowIndex.I11TerminalData.Group023.witnesses_check
