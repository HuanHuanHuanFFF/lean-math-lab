import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk196
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk197
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk198
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk199

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group049
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk196.witnesses ++ Chunk197.witnesses ++ Chunk198.witnesses ++ Chunk199.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk198.witnesses) (right := Chunk199.witnesses)
    Chunk198.witnesses_check Chunk199.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk197.witnesses) (right := (Chunk198.witnesses ++ Chunk199.witnesses))
    Chunk197.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk196.witnesses) (right := (Chunk197.witnesses ++ (Chunk198.witnesses ++ Chunk199.witnesses)))
    Chunk196.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group049
#print axioms B699LowIndex.I11TerminalData.Group049.witnesses_check
