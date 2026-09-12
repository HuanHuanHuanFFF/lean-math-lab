import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk100
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk101
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk102
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk103

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group025
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk100.witnesses ++ Chunk101.witnesses ++ Chunk102.witnesses ++ Chunk103.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk102.witnesses) (right := Chunk103.witnesses)
    Chunk102.witnesses_check Chunk103.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk101.witnesses) (right := (Chunk102.witnesses ++ Chunk103.witnesses))
    Chunk101.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk100.witnesses) (right := (Chunk101.witnesses ++ (Chunk102.witnesses ++ Chunk103.witnesses)))
    Chunk100.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group025
#print axioms B699LowIndex.I11TerminalData.Group025.witnesses_check
