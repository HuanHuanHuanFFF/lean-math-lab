import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk037
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk038
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk039

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group009
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk036.witnesses ++ Chunk037.witnesses ++ Chunk038.witnesses ++ Chunk039.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk038.witnesses) (right := Chunk039.witnesses)
    Chunk038.witnesses_check Chunk039.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk037.witnesses) (right := (Chunk038.witnesses ++ Chunk039.witnesses))
    Chunk037.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk036.witnesses) (right := (Chunk037.witnesses ++ (Chunk038.witnesses ++ Chunk039.witnesses)))
    Chunk036.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group009
#print axioms B699LowIndex.I11TerminalData.Group009.witnesses_check
