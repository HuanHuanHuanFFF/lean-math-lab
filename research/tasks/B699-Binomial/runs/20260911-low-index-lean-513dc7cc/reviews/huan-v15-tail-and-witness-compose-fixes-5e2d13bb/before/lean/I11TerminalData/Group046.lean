import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk184
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk185
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk186
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk187

namespace B699LowIndex.I11TerminalData.Group046
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk184.witnesses ++ Chunk185.witnesses ++ Chunk186.witnesses ++ Chunk187.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk184.witnesses_check (witnessesCheck_append Chunk185.witnesses_check (witnessesCheck_append Chunk186.witnesses_check (Chunk187.witnesses_check)))

end B699LowIndex.I11TerminalData.Group046
#print axioms B699LowIndex.I11TerminalData.Group046.witnesses_check
