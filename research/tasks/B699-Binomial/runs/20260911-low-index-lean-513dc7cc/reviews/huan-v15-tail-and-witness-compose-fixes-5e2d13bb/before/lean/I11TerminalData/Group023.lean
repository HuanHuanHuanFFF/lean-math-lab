import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk092
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk093
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk094
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk095

namespace B699LowIndex.I11TerminalData.Group023
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk092.witnesses ++ Chunk093.witnesses ++ Chunk094.witnesses ++ Chunk095.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk092.witnesses_check (witnessesCheck_append Chunk093.witnesses_check (witnessesCheck_append Chunk094.witnesses_check (Chunk095.witnesses_check)))

end B699LowIndex.I11TerminalData.Group023
#print axioms B699LowIndex.I11TerminalData.Group023.witnesses_check
