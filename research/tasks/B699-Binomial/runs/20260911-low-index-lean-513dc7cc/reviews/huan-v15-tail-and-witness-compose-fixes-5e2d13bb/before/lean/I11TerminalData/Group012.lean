import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk048
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk049
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk050
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk051

namespace B699LowIndex.I11TerminalData.Group012
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk048.witnesses ++ Chunk049.witnesses ++ Chunk050.witnesses ++ Chunk051.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk048.witnesses_check (witnessesCheck_append Chunk049.witnesses_check (witnessesCheck_append Chunk050.witnesses_check (Chunk051.witnesses_check)))

end B699LowIndex.I11TerminalData.Group012
#print axioms B699LowIndex.I11TerminalData.Group012.witnesses_check
