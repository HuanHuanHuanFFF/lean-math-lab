import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk164
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk165
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk166
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk167

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group041
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk164.witnesses ++ Chunk165.witnesses ++ Chunk166.witnesses ++ Chunk167.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk166.witnesses) (right := Chunk167.witnesses)
    Chunk166.witnesses_check Chunk167.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk165.witnesses) (right := (Chunk166.witnesses ++ Chunk167.witnesses))
    Chunk165.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk164.witnesses) (right := (Chunk165.witnesses ++ (Chunk166.witnesses ++ Chunk167.witnesses)))
    Chunk164.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group041
#print axioms B699LowIndex.I11TerminalData.Group041.witnesses_check
