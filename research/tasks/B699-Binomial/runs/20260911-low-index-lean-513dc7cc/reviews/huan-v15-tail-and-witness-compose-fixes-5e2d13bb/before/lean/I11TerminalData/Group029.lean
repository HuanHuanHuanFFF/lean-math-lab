import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk116
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk117
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk118
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk119

namespace B699LowIndex.I11TerminalData.Group029
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk116.witnesses ++ Chunk117.witnesses ++ Chunk118.witnesses ++ Chunk119.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk116.witnesses_check (witnessesCheck_append Chunk117.witnesses_check (witnessesCheck_append Chunk118.witnesses_check (Chunk119.witnesses_check)))

end B699LowIndex.I11TerminalData.Group029
#print axioms B699LowIndex.I11TerminalData.Group029.witnesses_check
