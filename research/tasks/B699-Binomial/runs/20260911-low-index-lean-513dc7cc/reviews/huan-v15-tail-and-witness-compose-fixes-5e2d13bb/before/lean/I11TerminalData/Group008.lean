import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk032
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk033
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk034
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk035

namespace B699LowIndex.I11TerminalData.Group008
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk032.witnesses ++ Chunk033.witnesses ++ Chunk034.witnesses ++ Chunk035.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk032.witnesses_check (witnessesCheck_append Chunk033.witnesses_check (witnessesCheck_append Chunk034.witnesses_check (Chunk035.witnesses_check)))

end B699LowIndex.I11TerminalData.Group008
#print axioms B699LowIndex.I11TerminalData.Group008.witnesses_check
