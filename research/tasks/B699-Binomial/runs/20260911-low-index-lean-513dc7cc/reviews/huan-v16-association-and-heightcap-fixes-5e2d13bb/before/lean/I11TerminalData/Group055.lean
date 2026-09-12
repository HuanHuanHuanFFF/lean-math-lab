import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk220
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk221
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk222
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk223

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group055
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk220.witnesses ++ Chunk221.witnesses ++ Chunk222.witnesses ++ Chunk223.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk222.witnesses) (right := Chunk223.witnesses)
    Chunk222.witnesses_check Chunk223.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk221.witnesses) (right := (Chunk222.witnesses ++ Chunk223.witnesses))
    Chunk221.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk220.witnesses) (right := (Chunk221.witnesses ++ (Chunk222.witnesses ++ Chunk223.witnesses)))
    Chunk220.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group055
#print axioms B699LowIndex.I11TerminalData.Group055.witnesses_check
