import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk188
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk189
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk190
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk191

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group047
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk188.witnesses ++ Chunk189.witnesses ++ Chunk190.witnesses ++ Chunk191.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk190.witnesses) (right := Chunk191.witnesses)
    Chunk190.witnesses_check Chunk191.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk189.witnesses) (right := (Chunk190.witnesses ++ Chunk191.witnesses))
    Chunk189.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk188.witnesses) (right := (Chunk189.witnesses ++ (Chunk190.witnesses ++ Chunk191.witnesses)))
    Chunk188.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group047
#print axioms B699LowIndex.I11TerminalData.Group047.witnesses_check
