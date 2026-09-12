import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk037
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk038
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk039

namespace B699LowIndex.I11TerminalData.Group009
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk036.witnesses ++ Chunk037.witnesses ++ Chunk038.witnesses ++ Chunk039.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk036.witnesses_check (witnessesCheck_append Chunk037.witnesses_check (witnessesCheck_append Chunk038.witnesses_check (Chunk039.witnesses_check)))

end B699LowIndex.I11TerminalData.Group009
#print axioms B699LowIndex.I11TerminalData.Group009.witnesses_check
