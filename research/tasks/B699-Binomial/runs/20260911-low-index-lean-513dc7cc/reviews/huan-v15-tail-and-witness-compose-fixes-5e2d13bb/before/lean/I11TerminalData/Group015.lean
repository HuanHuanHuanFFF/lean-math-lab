import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk061
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk062
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk063

namespace B699LowIndex.I11TerminalData.Group015
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk060.witnesses ++ Chunk061.witnesses ++ Chunk062.witnesses ++ Chunk063.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk060.witnesses_check (witnessesCheck_append Chunk061.witnesses_check (witnessesCheck_append Chunk062.witnesses_check (Chunk063.witnesses_check)))

end B699LowIndex.I11TerminalData.Group015
#print axioms B699LowIndex.I11TerminalData.Group015.witnesses_check
