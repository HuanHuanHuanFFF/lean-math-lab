import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk085
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk086
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk087

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group021
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk084.witnesses ++ Chunk085.witnesses ++ Chunk086.witnesses ++ Chunk087.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk086.witnesses) (right := Chunk087.witnesses)
    Chunk086.witnesses_check Chunk087.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk085.witnesses) (right := (Chunk086.witnesses ++ Chunk087.witnesses))
    Chunk085.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk084.witnesses) (right := (Chunk085.witnesses ++ (Chunk086.witnesses ++ Chunk087.witnesses)))
    Chunk084.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group021
#print axioms B699LowIndex.I11TerminalData.Group021.witnesses_check
