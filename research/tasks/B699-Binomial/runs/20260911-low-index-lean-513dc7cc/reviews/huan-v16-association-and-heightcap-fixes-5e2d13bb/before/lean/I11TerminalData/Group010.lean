import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk040
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk041
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk042
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk043

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group010
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk040.witnesses ++ Chunk041.witnesses ++ Chunk042.witnesses ++ Chunk043.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk042.witnesses) (right := Chunk043.witnesses)
    Chunk042.witnesses_check Chunk043.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk041.witnesses) (right := (Chunk042.witnesses ++ Chunk043.witnesses))
    Chunk041.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk040.witnesses) (right := (Chunk041.witnesses ++ (Chunk042.witnesses ++ Chunk043.witnesses)))
    Chunk040.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group010
#print axioms B699LowIndex.I11TerminalData.Group010.witnesses_check
