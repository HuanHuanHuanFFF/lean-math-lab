import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk160
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk161
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk162
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk163

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group040
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk160.witnesses ++ Chunk161.witnesses ++ Chunk162.witnesses ++ Chunk163.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk162.witnesses) (right := Chunk163.witnesses)
    Chunk162.witnesses_check Chunk163.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk161.witnesses) (right := (Chunk162.witnesses ++ Chunk163.witnesses))
    Chunk161.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk160.witnesses) (right := (Chunk161.witnesses ++ (Chunk162.witnesses ++ Chunk163.witnesses)))
    Chunk160.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group040
#print axioms B699LowIndex.I11TerminalData.Group040.witnesses_check
