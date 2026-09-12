import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk003

namespace B699LowIndex.I11TerminalData.Group000
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk000.witnesses ++ Chunk001.witnesses ++ Chunk002.witnesses ++ Chunk003.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk000.witnesses_check (witnessesCheck_append Chunk001.witnesses_check (witnessesCheck_append Chunk002.witnesses_check (Chunk003.witnesses_check)))

end B699LowIndex.I11TerminalData.Group000
#print axioms B699LowIndex.I11TerminalData.Group000.witnesses_check
