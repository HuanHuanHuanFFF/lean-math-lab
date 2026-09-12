import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk100
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk101
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk102
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk103

namespace B699LowIndex.I11TerminalData.Group025
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk100.witnesses ++ Chunk101.witnesses ++ Chunk102.witnesses ++ Chunk103.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk100.witnesses_check (witnessesCheck_append Chunk101.witnesses_check (witnessesCheck_append Chunk102.witnesses_check (Chunk103.witnesses_check)))

end B699LowIndex.I11TerminalData.Group025
#print axioms B699LowIndex.I11TerminalData.Group025.witnesses_check
