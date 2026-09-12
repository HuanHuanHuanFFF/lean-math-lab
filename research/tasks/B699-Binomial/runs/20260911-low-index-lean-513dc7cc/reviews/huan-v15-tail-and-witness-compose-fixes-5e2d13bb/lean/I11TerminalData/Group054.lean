import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk216
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk217
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk218
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk219

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group054
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk216.witnesses ++ Chunk217.witnesses ++ Chunk218.witnesses ++ Chunk219.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk218.witnesses) (right := Chunk219.witnesses)
    Chunk218.witnesses_check Chunk219.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk217.witnesses) (right := (Chunk218.witnesses ++ Chunk219.witnesses))
    Chunk217.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk216.witnesses) (right := (Chunk217.witnesses ++ (Chunk218.witnesses ++ Chunk219.witnesses)))
    Chunk216.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group054
#print axioms B699LowIndex.I11TerminalData.Group054.witnesses_check
