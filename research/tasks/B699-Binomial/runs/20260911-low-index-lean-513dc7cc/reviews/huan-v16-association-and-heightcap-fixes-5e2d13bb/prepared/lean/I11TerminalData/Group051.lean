import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk204
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk205
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk206
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk207

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group051
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk204.witnesses ++ Chunk205.witnesses ++ Chunk206.witnesses ++ Chunk207.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk206.witnesses) (right := Chunk207.witnesses)
    Chunk206.witnesses_check Chunk207.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk205.witnesses) (right := (Chunk206.witnesses ++ Chunk207.witnesses))
    Chunk205.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk204.witnesses) (right := (Chunk205.witnesses ++ (Chunk206.witnesses ++ Chunk207.witnesses)))
    Chunk204.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group051
#print axioms B699LowIndex.I11TerminalData.Group051.witnesses_check
