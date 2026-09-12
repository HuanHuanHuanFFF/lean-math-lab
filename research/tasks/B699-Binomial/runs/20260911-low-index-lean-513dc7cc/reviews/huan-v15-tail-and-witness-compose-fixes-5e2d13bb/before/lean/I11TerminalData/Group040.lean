import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk160
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk161
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk162
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk163

namespace B699LowIndex.I11TerminalData.Group040
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk160.witnesses ++ Chunk161.witnesses ++ Chunk162.witnesses ++ Chunk163.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk160.witnesses_check (witnessesCheck_append Chunk161.witnesses_check (witnessesCheck_append Chunk162.witnesses_check (Chunk163.witnesses_check)))

end B699LowIndex.I11TerminalData.Group040
#print axioms B699LowIndex.I11TerminalData.Group040.witnesses_check
