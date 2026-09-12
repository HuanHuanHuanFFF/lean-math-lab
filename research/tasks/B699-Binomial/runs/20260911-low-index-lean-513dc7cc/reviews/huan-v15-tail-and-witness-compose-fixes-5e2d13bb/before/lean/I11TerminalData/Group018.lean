import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk072
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk073
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk074
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk075

namespace B699LowIndex.I11TerminalData.Group018
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk072.witnesses ++ Chunk073.witnesses ++ Chunk074.witnesses ++ Chunk075.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk072.witnesses_check (witnessesCheck_append Chunk073.witnesses_check (witnessesCheck_append Chunk074.witnesses_check (Chunk075.witnesses_check)))

end B699LowIndex.I11TerminalData.Group018
#print axioms B699LowIndex.I11TerminalData.Group018.witnesses_check
