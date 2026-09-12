import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk224
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk225
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk226
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk227

namespace B699LowIndex.I11TerminalData.Group056
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk224.witnesses ++ Chunk225.witnesses ++ Chunk226.witnesses ++ Chunk227.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk224.witnesses_check (witnessesCheck_append Chunk225.witnesses_check (witnessesCheck_append Chunk226.witnesses_check (Chunk227.witnesses_check)))

end B699LowIndex.I11TerminalData.Group056
#print axioms B699LowIndex.I11TerminalData.Group056.witnesses_check
