import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk168
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk169
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk170
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk171

namespace B699LowIndex.I11TerminalData.Group042
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk168.witnesses ++ Chunk169.witnesses ++ Chunk170.witnesses ++ Chunk171.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk168.witnesses_check (witnessesCheck_append Chunk169.witnesses_check (witnessesCheck_append Chunk170.witnesses_check (Chunk171.witnesses_check)))

end B699LowIndex.I11TerminalData.Group042
#print axioms B699LowIndex.I11TerminalData.Group042.witnesses_check
