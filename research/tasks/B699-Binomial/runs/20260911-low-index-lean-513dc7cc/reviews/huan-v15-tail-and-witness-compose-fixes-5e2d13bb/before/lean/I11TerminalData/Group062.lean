import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk248
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk249
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk250
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk251

namespace B699LowIndex.I11TerminalData.Group062
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk248.witnesses ++ Chunk249.witnesses ++ Chunk250.witnesses ++ Chunk251.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk248.witnesses_check (witnessesCheck_append Chunk249.witnesses_check (witnessesCheck_append Chunk250.witnesses_check (Chunk251.witnesses_check)))

end B699LowIndex.I11TerminalData.Group062
#print axioms B699LowIndex.I11TerminalData.Group062.witnesses_check
