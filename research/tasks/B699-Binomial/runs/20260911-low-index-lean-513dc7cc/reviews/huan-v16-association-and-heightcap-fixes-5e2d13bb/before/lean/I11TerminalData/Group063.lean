import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk252

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group063
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk252.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  simpa only [witnesses] using Chunk252.witnesses_check

end B699LowIndex.I11TerminalData.Group063
#print axioms B699LowIndex.I11TerminalData.Group063.witnesses_check
