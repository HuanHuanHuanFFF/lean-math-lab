import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk112
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk113
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk114
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk115

namespace B699LowIndex.I11TerminalData.Group028
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk112.witnesses ++ Chunk113.witnesses ++ Chunk114.witnesses ++ Chunk115.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk112.witnesses_check (witnessesCheck_append Chunk113.witnesses_check (witnessesCheck_append Chunk114.witnesses_check (Chunk115.witnesses_check)))

end B699LowIndex.I11TerminalData.Group028
#print axioms B699LowIndex.I11TerminalData.Group028.witnesses_check
