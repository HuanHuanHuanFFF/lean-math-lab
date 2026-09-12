import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk212
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk213
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk214
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk215

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group053
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk212.witnesses ++ Chunk213.witnesses ++ Chunk214.witnesses ++ Chunk215.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk214.witnesses) (right := Chunk215.witnesses)
    Chunk214.witnesses_check Chunk215.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk213.witnesses) (right := (Chunk214.witnesses ++ Chunk215.witnesses))
    Chunk213.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk212.witnesses) (right := (Chunk213.witnesses ++ (Chunk214.witnesses ++ Chunk215.witnesses)))
    Chunk212.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group053
#print axioms B699LowIndex.I11TerminalData.Group053.witnesses_check
