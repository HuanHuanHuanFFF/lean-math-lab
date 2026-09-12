import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk033
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk034
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk035

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group008
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk032.witnesses ++ Chunk033.witnesses ++ Chunk034.witnesses ++ Chunk035.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk034.witnesses) (right := Chunk035.witnesses)
    Chunk034.witnesses_check Chunk035.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk033.witnesses) (right := (Chunk034.witnesses ++ Chunk035.witnesses))
    Chunk033.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk032.witnesses) (right := (Chunk033.witnesses ++ (Chunk034.witnesses ++ Chunk035.witnesses)))
    Chunk032.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group008
#print axioms B699LowIndex.I11TerminalData.Group008.witnesses_check
