import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk128
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk129
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk130
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk131

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group032
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk128.witnesses ++ Chunk129.witnesses ++ Chunk130.witnesses ++ Chunk131.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk130.witnesses) (right := Chunk131.witnesses)
    Chunk130.witnesses_check Chunk131.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk129.witnesses) (right := (Chunk130.witnesses ++ Chunk131.witnesses))
    Chunk129.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk128.witnesses) (right := (Chunk129.witnesses ++ (Chunk130.witnesses ++ Chunk131.witnesses)))
    Chunk128.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group032
#print axioms B699LowIndex.I11TerminalData.Group032.witnesses_check
