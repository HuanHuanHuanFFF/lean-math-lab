import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk136
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk137
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk138
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk139

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group034
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk136.witnesses ++ Chunk137.witnesses ++ Chunk138.witnesses ++ Chunk139.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk138.witnesses) (right := Chunk139.witnesses)
    Chunk138.witnesses_check Chunk139.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk137.witnesses) (right := (Chunk138.witnesses ++ Chunk139.witnesses))
    Chunk137.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk136.witnesses) (right := (Chunk137.witnesses ++ (Chunk138.witnesses ++ Chunk139.witnesses)))
    Chunk136.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group034
#print axioms B699LowIndex.I11TerminalData.Group034.witnesses_check
