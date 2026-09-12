import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk108
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk109
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk110
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk111

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group027
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk108.witnesses ++ Chunk109.witnesses ++ Chunk110.witnesses ++ Chunk111.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk110.witnesses) (right := Chunk111.witnesses)
    Chunk110.witnesses_check Chunk111.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk109.witnesses) (right := (Chunk110.witnesses ++ Chunk111.witnesses))
    Chunk109.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk108.witnesses) (right := (Chunk109.witnesses ++ (Chunk110.witnesses ++ Chunk111.witnesses)))
    Chunk108.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group027
#print axioms B699LowIndex.I11TerminalData.Group027.witnesses_check
