import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk080
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk081
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk082
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk083

namespace B699LowIndex.I11TerminalData.Group020
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk080.witnesses ++ Chunk081.witnesses ++ Chunk082.witnesses ++ Chunk083.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk080.witnesses_check (witnessesCheck_append Chunk081.witnesses_check (witnessesCheck_append Chunk082.witnesses_check (Chunk083.witnesses_check)))

end B699LowIndex.I11TerminalData.Group020
#print axioms B699LowIndex.I11TerminalData.Group020.witnesses_check
