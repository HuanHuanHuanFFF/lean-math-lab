import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk045
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk046
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk047

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group011
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk044.witnesses ++ Chunk045.witnesses ++ Chunk046.witnesses ++ Chunk047.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk046.witnesses) (right := Chunk047.witnesses)
    Chunk046.witnesses_check Chunk047.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk045.witnesses) (right := (Chunk046.witnesses ++ Chunk047.witnesses))
    Chunk045.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk044.witnesses) (right := (Chunk045.witnesses ++ (Chunk046.witnesses ++ Chunk047.witnesses)))
    Chunk044.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group011
#print axioms B699LowIndex.I11TerminalData.Group011.witnesses_check
