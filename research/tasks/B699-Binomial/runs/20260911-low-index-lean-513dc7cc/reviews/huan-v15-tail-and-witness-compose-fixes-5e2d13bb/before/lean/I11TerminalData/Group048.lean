import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk192
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk193
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk194
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk195

namespace B699LowIndex.I11TerminalData.Group048
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk192.witnesses ++ Chunk193.witnesses ++ Chunk194.witnesses ++ Chunk195.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk192.witnesses_check (witnessesCheck_append Chunk193.witnesses_check (witnessesCheck_append Chunk194.witnesses_check (Chunk195.witnesses_check)))

end B699LowIndex.I11TerminalData.Group048
#print axioms B699LowIndex.I11TerminalData.Group048.witnesses_check
