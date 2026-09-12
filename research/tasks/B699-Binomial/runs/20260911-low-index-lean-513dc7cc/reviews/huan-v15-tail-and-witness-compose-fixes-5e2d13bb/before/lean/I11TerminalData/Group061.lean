import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk244
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk245
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk246
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk247

namespace B699LowIndex.I11TerminalData.Group061
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk244.witnesses ++ Chunk245.witnesses ++ Chunk246.witnesses ++ Chunk247.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk244.witnesses_check (witnessesCheck_append Chunk245.witnesses_check (witnessesCheck_append Chunk246.witnesses_check (Chunk247.witnesses_check)))

end B699LowIndex.I11TerminalData.Group061
#print axioms B699LowIndex.I11TerminalData.Group061.witnesses_check
