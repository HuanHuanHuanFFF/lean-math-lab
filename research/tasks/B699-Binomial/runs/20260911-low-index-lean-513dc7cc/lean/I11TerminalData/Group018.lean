import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk073
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk074
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk075

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group018
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk072.witnesses ++ Chunk073.witnesses ++ Chunk074.witnesses ++ Chunk075.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk074.witnesses) (right := Chunk075.witnesses)
    Chunk074.witnesses_check Chunk075.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk073.witnesses) (right := (Chunk074.witnesses ++ Chunk075.witnesses))
    Chunk073.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk072.witnesses) (right := (Chunk073.witnesses ++ (Chunk074.witnesses ++ Chunk075.witnesses)))
    Chunk072.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group018
#print axioms B699LowIndex.I11TerminalData.Group018.witnesses_check
