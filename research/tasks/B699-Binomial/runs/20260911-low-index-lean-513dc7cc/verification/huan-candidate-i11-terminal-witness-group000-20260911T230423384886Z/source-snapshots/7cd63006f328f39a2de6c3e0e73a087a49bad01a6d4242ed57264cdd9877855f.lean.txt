import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk003

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group000
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk000.witnesses ++ Chunk001.witnesses ++ Chunk002.witnesses ++ Chunk003.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk002.witnesses) (right := Chunk003.witnesses)
    Chunk002.witnesses_check Chunk003.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk001.witnesses) (right := (Chunk002.witnesses ++ Chunk003.witnesses))
    Chunk001.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk000.witnesses) (right := (Chunk001.witnesses ++ (Chunk002.witnesses ++ Chunk003.witnesses)))
    Chunk000.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group000
#print axioms B699LowIndex.I11TerminalData.Group000.witnesses_check
