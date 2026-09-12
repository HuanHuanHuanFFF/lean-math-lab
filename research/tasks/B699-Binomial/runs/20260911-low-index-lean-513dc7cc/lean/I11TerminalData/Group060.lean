import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk240
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk241
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk242
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk243

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group060
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk240.witnesses ++ Chunk241.witnesses ++ Chunk242.witnesses ++ Chunk243.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk242.witnesses) (right := Chunk243.witnesses)
    Chunk242.witnesses_check Chunk243.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk241.witnesses) (right := (Chunk242.witnesses ++ Chunk243.witnesses))
    Chunk241.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk240.witnesses) (right := (Chunk241.witnesses ++ (Chunk242.witnesses ++ Chunk243.witnesses)))
    Chunk240.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group060
#print axioms B699LowIndex.I11TerminalData.Group060.witnesses_check
