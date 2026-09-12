import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk081
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk082
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk083

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group020
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk080.witnesses ++ Chunk081.witnesses ++ Chunk082.witnesses ++ Chunk083.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk082.witnesses) (right := Chunk083.witnesses)
    Chunk082.witnesses_check Chunk083.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk081.witnesses) (right := (Chunk082.witnesses ++ Chunk083.witnesses))
    Chunk081.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk080.witnesses) (right := (Chunk081.witnesses ++ (Chunk082.witnesses ++ Chunk083.witnesses)))
    Chunk080.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group020
#print axioms B699LowIndex.I11TerminalData.Group020.witnesses_check
