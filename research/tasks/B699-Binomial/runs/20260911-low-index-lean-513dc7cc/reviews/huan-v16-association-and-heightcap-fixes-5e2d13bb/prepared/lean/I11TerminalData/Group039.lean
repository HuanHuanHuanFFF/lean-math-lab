import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk156
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk157
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk158
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk159

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group039
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk156.witnesses ++ Chunk157.witnesses ++ Chunk158.witnesses ++ Chunk159.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk158.witnesses) (right := Chunk159.witnesses)
    Chunk158.witnesses_check Chunk159.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk157.witnesses) (right := (Chunk158.witnesses ++ Chunk159.witnesses))
    Chunk157.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk156.witnesses) (right := (Chunk157.witnesses ++ (Chunk158.witnesses ++ Chunk159.witnesses)))
    Chunk156.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group039
#print axioms B699LowIndex.I11TerminalData.Group039.witnesses_check
