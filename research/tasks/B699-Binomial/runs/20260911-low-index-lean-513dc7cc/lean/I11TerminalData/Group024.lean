import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk097
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk098
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk099

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group024
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk096.witnesses ++ Chunk097.witnesses ++ Chunk098.witnesses ++ Chunk099.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk098.witnesses) (right := Chunk099.witnesses)
    Chunk098.witnesses_check Chunk099.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk097.witnesses) (right := (Chunk098.witnesses ++ Chunk099.witnesses))
    Chunk097.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk096.witnesses) (right := (Chunk097.witnesses ++ (Chunk098.witnesses ++ Chunk099.witnesses)))
    Chunk096.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group024
#print axioms B699LowIndex.I11TerminalData.Group024.witnesses_check
