import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk132
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk133
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk134
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk135

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group033
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk132.witnesses ++ Chunk133.witnesses ++ Chunk134.witnesses ++ Chunk135.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk134.witnesses) (right := Chunk135.witnesses)
    Chunk134.witnesses_check Chunk135.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk133.witnesses) (right := (Chunk134.witnesses ++ Chunk135.witnesses))
    Chunk133.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk132.witnesses) (right := (Chunk133.witnesses ++ (Chunk134.witnesses ++ Chunk135.witnesses)))
    Chunk132.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group033
#print axioms B699LowIndex.I11TerminalData.Group033.witnesses_check
