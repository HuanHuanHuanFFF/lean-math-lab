import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk196
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk197
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk198
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk199

namespace B699LowIndex.I11TerminalData.Group049
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk196.witnesses ++ Chunk197.witnesses ++ Chunk198.witnesses ++ Chunk199.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk196.witnesses_check (witnessesCheck_append Chunk197.witnesses_check (witnessesCheck_append Chunk198.witnesses_check (Chunk199.witnesses_check)))

end B699LowIndex.I11TerminalData.Group049
#print axioms B699LowIndex.I11TerminalData.Group049.witnesses_check
