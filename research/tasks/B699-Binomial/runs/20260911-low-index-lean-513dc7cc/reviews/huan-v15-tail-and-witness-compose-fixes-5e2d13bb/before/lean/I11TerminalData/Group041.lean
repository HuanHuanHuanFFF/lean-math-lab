import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk164
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk165
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk166
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk167

namespace B699LowIndex.I11TerminalData.Group041
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk164.witnesses ++ Chunk165.witnesses ++ Chunk166.witnesses ++ Chunk167.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk164.witnesses_check (witnessesCheck_append Chunk165.witnesses_check (witnessesCheck_append Chunk166.witnesses_check (Chunk167.witnesses_check)))

end B699LowIndex.I11TerminalData.Group041
#print axioms B699LowIndex.I11TerminalData.Group041.witnesses_check
