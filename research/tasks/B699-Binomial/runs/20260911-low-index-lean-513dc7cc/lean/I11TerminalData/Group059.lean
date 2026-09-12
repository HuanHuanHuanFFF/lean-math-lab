import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk236
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk237
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk238
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk239

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group059
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk236.witnesses ++ Chunk237.witnesses ++ Chunk238.witnesses ++ Chunk239.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk238.witnesses) (right := Chunk239.witnesses)
    Chunk238.witnesses_check Chunk239.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk237.witnesses) (right := (Chunk238.witnesses ++ Chunk239.witnesses))
    Chunk237.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk236.witnesses) (right := (Chunk237.witnesses ++ (Chunk238.witnesses ++ Chunk239.witnesses)))
    Chunk236.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group059
#print axioms B699LowIndex.I11TerminalData.Group059.witnesses_check
