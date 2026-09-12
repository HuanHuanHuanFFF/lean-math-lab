import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk052
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk053
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk054
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk055

namespace B699LowIndex.I11TerminalData.Group013
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk052.witnesses ++ Chunk053.witnesses ++ Chunk054.witnesses ++ Chunk055.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk052.witnesses_check (witnessesCheck_append Chunk053.witnesses_check (witnessesCheck_append Chunk054.witnesses_check (Chunk055.witnesses_check)))

end B699LowIndex.I11TerminalData.Group013
#print axioms B699LowIndex.I11TerminalData.Group013.witnesses_check
