import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk057
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk058
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk059

namespace B699LowIndex.I11TerminalData.Group014
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk056.witnesses ++ Chunk057.witnesses ++ Chunk058.witnesses ++ Chunk059.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk056.witnesses_check (witnessesCheck_append Chunk057.witnesses_check (witnessesCheck_append Chunk058.witnesses_check (Chunk059.witnesses_check)))

end B699LowIndex.I11TerminalData.Group014
#print axioms B699LowIndex.I11TerminalData.Group014.witnesses_check
