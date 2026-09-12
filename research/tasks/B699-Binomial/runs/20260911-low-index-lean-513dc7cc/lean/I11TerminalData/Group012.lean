import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk049
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk050
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk051

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group012
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk048.witnesses ++ Chunk049.witnesses ++ Chunk050.witnesses ++ Chunk051.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk050.witnesses) (right := Chunk051.witnesses)
    Chunk050.witnesses_check Chunk051.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk049.witnesses) (right := (Chunk050.witnesses ++ Chunk051.witnesses))
    Chunk049.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk048.witnesses) (right := (Chunk049.witnesses ++ (Chunk050.witnesses ++ Chunk051.witnesses)))
    Chunk048.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group012
#print axioms B699LowIndex.I11TerminalData.Group012.witnesses_check
