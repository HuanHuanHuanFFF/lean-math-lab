import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk248
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk249
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk250
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk251

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group062
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk248.witnesses ++ Chunk249.witnesses ++ Chunk250.witnesses ++ Chunk251.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk250.witnesses) (right := Chunk251.witnesses)
    Chunk250.witnesses_check Chunk251.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk249.witnesses) (right := (Chunk250.witnesses ++ Chunk251.witnesses))
    Chunk249.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk248.witnesses) (right := (Chunk249.witnesses ++ (Chunk250.witnesses ++ Chunk251.witnesses)))
    Chunk248.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group062
#print axioms B699LowIndex.I11TerminalData.Group062.witnesses_check
