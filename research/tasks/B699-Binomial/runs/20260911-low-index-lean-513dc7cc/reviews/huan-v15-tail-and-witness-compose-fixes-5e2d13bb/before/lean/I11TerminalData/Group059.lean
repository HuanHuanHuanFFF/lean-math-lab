import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk236
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk237
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk238
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk239

namespace B699LowIndex.I11TerminalData.Group059
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk236.witnesses ++ Chunk237.witnesses ++ Chunk238.witnesses ++ Chunk239.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk236.witnesses_check (witnessesCheck_append Chunk237.witnesses_check (witnessesCheck_append Chunk238.witnesses_check (Chunk239.witnesses_check)))

end B699LowIndex.I11TerminalData.Group059
#print axioms B699LowIndex.I11TerminalData.Group059.witnesses_check
