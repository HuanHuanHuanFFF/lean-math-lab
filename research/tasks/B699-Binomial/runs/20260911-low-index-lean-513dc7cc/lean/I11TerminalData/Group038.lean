import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk152
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk153
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk154
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk155

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group038
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk152.witnesses ++ Chunk153.witnesses ++ Chunk154.witnesses ++ Chunk155.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk154.witnesses) (right := Chunk155.witnesses)
    Chunk154.witnesses_check Chunk155.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk153.witnesses) (right := (Chunk154.witnesses ++ Chunk155.witnesses))
    Chunk153.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk152.witnesses) (right := (Chunk153.witnesses ++ (Chunk154.witnesses ++ Chunk155.witnesses)))
    Chunk152.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group038
#print axioms B699LowIndex.I11TerminalData.Group038.witnesses_check
