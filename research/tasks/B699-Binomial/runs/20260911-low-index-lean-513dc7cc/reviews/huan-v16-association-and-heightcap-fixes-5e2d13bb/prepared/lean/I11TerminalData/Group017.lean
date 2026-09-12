import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk069
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk070
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk071

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group017
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk068.witnesses ++ Chunk069.witnesses ++ Chunk070.witnesses ++ Chunk071.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk070.witnesses) (right := Chunk071.witnesses)
    Chunk070.witnesses_check Chunk071.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk069.witnesses) (right := (Chunk070.witnesses ++ Chunk071.witnesses))
    Chunk069.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk068.witnesses) (right := (Chunk069.witnesses ++ (Chunk070.witnesses ++ Chunk071.witnesses)))
    Chunk068.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group017
#print axioms B699LowIndex.I11TerminalData.Group017.witnesses_check
