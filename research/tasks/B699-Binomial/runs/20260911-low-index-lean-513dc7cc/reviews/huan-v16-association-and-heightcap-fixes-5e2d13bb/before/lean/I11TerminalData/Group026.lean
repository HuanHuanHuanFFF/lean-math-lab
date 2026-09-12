import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk104
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk105
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk106
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk107

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group026
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk104.witnesses ++ Chunk105.witnesses ++ Chunk106.witnesses ++ Chunk107.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk106.witnesses) (right := Chunk107.witnesses)
    Chunk106.witnesses_check Chunk107.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk105.witnesses) (right := (Chunk106.witnesses ++ Chunk107.witnesses))
    Chunk105.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk104.witnesses) (right := (Chunk105.witnesses ++ (Chunk106.witnesses ++ Chunk107.witnesses)))
    Chunk104.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group026
#print axioms B699LowIndex.I11TerminalData.Group026.witnesses_check
