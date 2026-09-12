import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk244
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk245
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk246
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk247

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group061
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk244.witnesses ++ Chunk245.witnesses ++ Chunk246.witnesses ++ Chunk247.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk246.witnesses) (right := Chunk247.witnesses)
    Chunk246.witnesses_check Chunk247.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk245.witnesses) (right := (Chunk246.witnesses ++ Chunk247.witnesses))
    Chunk245.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk244.witnesses) (right := (Chunk245.witnesses ++ (Chunk246.witnesses ++ Chunk247.witnesses)))
    Chunk244.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group061
#print axioms B699LowIndex.I11TerminalData.Group061.witnesses_check
