import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk140
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk141
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk142
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk143

namespace B699LowIndex.I11TerminalData.Group035
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk140.witnesses ++ Chunk141.witnesses ++ Chunk142.witnesses ++ Chunk143.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk140.witnesses_check (witnessesCheck_append Chunk141.witnesses_check (witnessesCheck_append Chunk142.witnesses_check (Chunk143.witnesses_check)))

end B699LowIndex.I11TerminalData.Group035
#print axioms B699LowIndex.I11TerminalData.Group035.witnesses_check
