import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk176
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk177
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk178
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk179

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group044
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk176.witnesses ++ Chunk177.witnesses ++ Chunk178.witnesses ++ Chunk179.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk178.witnesses) (right := Chunk179.witnesses)
    Chunk178.witnesses_check Chunk179.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk177.witnesses) (right := (Chunk178.witnesses ++ Chunk179.witnesses))
    Chunk177.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk176.witnesses) (right := (Chunk177.witnesses ++ (Chunk178.witnesses ++ Chunk179.witnesses)))
    Chunk176.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group044
#print axioms B699LowIndex.I11TerminalData.Group044.witnesses_check
