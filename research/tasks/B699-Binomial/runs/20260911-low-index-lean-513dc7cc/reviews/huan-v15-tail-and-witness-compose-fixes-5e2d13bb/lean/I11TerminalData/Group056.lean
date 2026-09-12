import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk224
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk225
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk226
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk227

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group056
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk224.witnesses ++ Chunk225.witnesses ++ Chunk226.witnesses ++ Chunk227.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk226.witnesses) (right := Chunk227.witnesses)
    Chunk226.witnesses_check Chunk227.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk225.witnesses) (right := (Chunk226.witnesses ++ Chunk227.witnesses))
    Chunk225.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk224.witnesses) (right := (Chunk225.witnesses ++ (Chunk226.witnesses ++ Chunk227.witnesses)))
    Chunk224.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group056
#print axioms B699LowIndex.I11TerminalData.Group056.witnesses_check
