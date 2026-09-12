import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk216
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk217
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk218
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk219

namespace B699LowIndex.I11TerminalData.Group054
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk216.witnesses ++ Chunk217.witnesses ++ Chunk218.witnesses ++ Chunk219.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk216.witnesses_check (witnessesCheck_append Chunk217.witnesses_check (witnessesCheck_append Chunk218.witnesses_check (Chunk219.witnesses_check)))

end B699LowIndex.I11TerminalData.Group054
#print axioms B699LowIndex.I11TerminalData.Group054.witnesses_check
