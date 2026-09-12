import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk152
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk153
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk154
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk155

namespace B699LowIndex.I11TerminalData.Group038
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk152.witnesses ++ Chunk153.witnesses ++ Chunk154.witnesses ++ Chunk155.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk152.witnesses_check (witnessesCheck_append Chunk153.witnesses_check (witnessesCheck_append Chunk154.witnesses_check (Chunk155.witnesses_check)))

end B699LowIndex.I11TerminalData.Group038
#print axioms B699LowIndex.I11TerminalData.Group038.witnesses_check
