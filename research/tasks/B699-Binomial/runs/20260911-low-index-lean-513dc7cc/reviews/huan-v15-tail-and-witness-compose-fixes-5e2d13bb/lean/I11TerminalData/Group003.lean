import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk015

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group003
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk012.witnesses ++ Chunk013.witnesses ++ Chunk014.witnesses ++ Chunk015.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk014.witnesses) (right := Chunk015.witnesses)
    Chunk014.witnesses_check Chunk015.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk013.witnesses) (right := (Chunk014.witnesses ++ Chunk015.witnesses))
    Chunk013.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk012.witnesses) (right := (Chunk013.witnesses ++ (Chunk014.witnesses ++ Chunk015.witnesses)))
    Chunk012.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group003
#print axioms B699LowIndex.I11TerminalData.Group003.witnesses_check
