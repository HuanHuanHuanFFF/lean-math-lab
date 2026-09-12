import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk108
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk109
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk110
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk111

namespace B699LowIndex.I11TerminalData.Group027
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk108.witnesses ++ Chunk109.witnesses ++ Chunk110.witnesses ++ Chunk111.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk108.witnesses_check (witnessesCheck_append Chunk109.witnesses_check (witnessesCheck_append Chunk110.witnesses_check (Chunk111.witnesses_check)))

end B699LowIndex.I11TerminalData.Group027
#print axioms B699LowIndex.I11TerminalData.Group027.witnesses_check
