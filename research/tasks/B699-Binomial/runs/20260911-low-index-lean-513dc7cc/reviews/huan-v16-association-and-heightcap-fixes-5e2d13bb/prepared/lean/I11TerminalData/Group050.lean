import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk200
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk201
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk202
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk203

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group050
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk200.witnesses ++ Chunk201.witnesses ++ Chunk202.witnesses ++ Chunk203.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk202.witnesses) (right := Chunk203.witnesses)
    Chunk202.witnesses_check Chunk203.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk201.witnesses) (right := (Chunk202.witnesses ++ Chunk203.witnesses))
    Chunk201.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk200.witnesses) (right := (Chunk201.witnesses ++ (Chunk202.witnesses ++ Chunk203.witnesses)))
    Chunk200.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group050
#print axioms B699LowIndex.I11TerminalData.Group050.witnesses_check
