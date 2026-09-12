import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk007

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group001
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk004.witnesses ++ Chunk005.witnesses ++ Chunk006.witnesses ++ Chunk007.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk006.witnesses) (right := Chunk007.witnesses)
    Chunk006.witnesses_check Chunk007.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk005.witnesses) (right := (Chunk006.witnesses ++ Chunk007.witnesses))
    Chunk005.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk004.witnesses) (right := (Chunk005.witnesses ++ (Chunk006.witnesses ++ Chunk007.witnesses)))
    Chunk004.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group001
#print axioms B699LowIndex.I11TerminalData.Group001.witnesses_check
