import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk140
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk141
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk142
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk143

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group035
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk140.witnesses ++ Chunk141.witnesses ++ Chunk142.witnesses ++ Chunk143.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk142.witnesses) (right := Chunk143.witnesses)
    Chunk142.witnesses_check Chunk143.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk141.witnesses) (right := (Chunk142.witnesses ++ Chunk143.witnesses))
    Chunk141.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk140.witnesses) (right := (Chunk141.witnesses ++ (Chunk142.witnesses ++ Chunk143.witnesses)))
    Chunk140.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group035
#print axioms B699LowIndex.I11TerminalData.Group035.witnesses_check
