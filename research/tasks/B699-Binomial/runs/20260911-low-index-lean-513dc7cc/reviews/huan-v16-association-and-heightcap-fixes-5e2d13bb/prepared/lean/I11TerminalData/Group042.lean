import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk168
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk169
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk170
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk171

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group042
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk168.witnesses ++ Chunk169.witnesses ++ Chunk170.witnesses ++ Chunk171.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk170.witnesses) (right := Chunk171.witnesses)
    Chunk170.witnesses_check Chunk171.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk169.witnesses) (right := (Chunk170.witnesses ++ Chunk171.witnesses))
    Chunk169.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk168.witnesses) (right := (Chunk169.witnesses ++ (Chunk170.witnesses ++ Chunk171.witnesses)))
    Chunk168.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group042
#print axioms B699LowIndex.I11TerminalData.Group042.witnesses_check
