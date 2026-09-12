import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk232
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk233
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk234
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk235

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group058
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk232.witnesses ++ Chunk233.witnesses ++ Chunk234.witnesses ++ Chunk235.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk234.witnesses) (right := Chunk235.witnesses)
    Chunk234.witnesses_check Chunk235.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk233.witnesses) (right := (Chunk234.witnesses ++ Chunk235.witnesses))
    Chunk233.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk232.witnesses) (right := (Chunk233.witnesses ++ (Chunk234.witnesses ++ Chunk235.witnesses)))
    Chunk232.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group058
#print axioms B699LowIndex.I11TerminalData.Group058.witnesses_check
