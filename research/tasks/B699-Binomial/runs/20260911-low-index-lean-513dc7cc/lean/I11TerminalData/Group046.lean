import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk184
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk185
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk186
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk187

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group046
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk184.witnesses ++ Chunk185.witnesses ++ Chunk186.witnesses ++ Chunk187.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk186.witnesses) (right := Chunk187.witnesses)
    Chunk186.witnesses_check Chunk187.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk185.witnesses) (right := (Chunk186.witnesses ++ Chunk187.witnesses))
    Chunk185.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk184.witnesses) (right := (Chunk185.witnesses ++ (Chunk186.witnesses ++ Chunk187.witnesses)))
    Chunk184.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group046
#print axioms B699LowIndex.I11TerminalData.Group046.witnesses_check
