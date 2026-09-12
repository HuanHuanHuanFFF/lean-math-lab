import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk068
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk069
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk070
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk071

namespace B699LowIndex.I11TerminalData.Group017
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk068.witnesses ++ Chunk069.witnesses ++ Chunk070.witnesses ++ Chunk071.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk068.witnesses_check (witnessesCheck_append Chunk069.witnesses_check (witnessesCheck_append Chunk070.witnesses_check (Chunk071.witnesses_check)))

end B699LowIndex.I11TerminalData.Group017
#print axioms B699LowIndex.I11TerminalData.Group017.witnesses_check
