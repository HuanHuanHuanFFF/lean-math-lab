import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk156
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk157
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk158
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk159

namespace B699LowIndex.I11TerminalData.Group039
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk156.witnesses ++ Chunk157.witnesses ++ Chunk158.witnesses ++ Chunk159.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk156.witnesses_check (witnessesCheck_append Chunk157.witnesses_check (witnessesCheck_append Chunk158.witnesses_check (Chunk159.witnesses_check)))

end B699LowIndex.I11TerminalData.Group039
#print axioms B699LowIndex.I11TerminalData.Group039.witnesses_check
