import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk021
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk023

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group005
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk020.witnesses ++ Chunk021.witnesses ++ Chunk022.witnesses ++ Chunk023.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk022.witnesses) (right := Chunk023.witnesses)
    Chunk022.witnesses_check Chunk023.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk021.witnesses) (right := (Chunk022.witnesses ++ Chunk023.witnesses))
    Chunk021.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk020.witnesses) (right := (Chunk021.witnesses ++ (Chunk022.witnesses ++ Chunk023.witnesses)))
    Chunk020.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group005
#print axioms B699LowIndex.I11TerminalData.Group005.witnesses_check
