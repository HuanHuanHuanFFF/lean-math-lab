import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk025
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk026
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk027

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group006
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk024.witnesses ++ Chunk025.witnesses ++ Chunk026.witnesses ++ Chunk027.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk026.witnesses) (right := Chunk027.witnesses)
    Chunk026.witnesses_check Chunk027.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk025.witnesses) (right := (Chunk026.witnesses ++ Chunk027.witnesses))
    Chunk025.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk024.witnesses) (right := (Chunk025.witnesses ++ (Chunk026.witnesses ++ Chunk027.witnesses)))
    Chunk024.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group006
#print axioms B699LowIndex.I11TerminalData.Group006.witnesses_check
