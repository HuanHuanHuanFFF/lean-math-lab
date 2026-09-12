import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk132
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk133
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk134
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk135

namespace B699LowIndex.I11TerminalData.Group033
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk132.witnesses ++ Chunk133.witnesses ++ Chunk134.witnesses ++ Chunk135.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk132.witnesses_check (witnessesCheck_append Chunk133.witnesses_check (witnessesCheck_append Chunk134.witnesses_check (Chunk135.witnesses_check)))

end B699LowIndex.I11TerminalData.Group033
#print axioms B699LowIndex.I11TerminalData.Group033.witnesses_check
