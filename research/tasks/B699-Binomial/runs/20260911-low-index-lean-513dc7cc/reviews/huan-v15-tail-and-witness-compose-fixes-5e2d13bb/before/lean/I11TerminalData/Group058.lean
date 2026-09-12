import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk232
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk233
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk234
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk235

namespace B699LowIndex.I11TerminalData.Group058
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk232.witnesses ++ Chunk233.witnesses ++ Chunk234.witnesses ++ Chunk235.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk232.witnesses_check (witnessesCheck_append Chunk233.witnesses_check (witnessesCheck_append Chunk234.witnesses_check (Chunk235.witnesses_check)))

end B699LowIndex.I11TerminalData.Group058
#print axioms B699LowIndex.I11TerminalData.Group058.witnesses_check
