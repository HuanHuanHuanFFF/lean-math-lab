import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk240
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk241
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk242
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk243

namespace B699LowIndex.I11TerminalData.Group060
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk240.witnesses ++ Chunk241.witnesses ++ Chunk242.witnesses ++ Chunk243.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk240.witnesses_check (witnessesCheck_append Chunk241.witnesses_check (witnessesCheck_append Chunk242.witnesses_check (Chunk243.witnesses_check)))

end B699LowIndex.I11TerminalData.Group060
#print axioms B699LowIndex.I11TerminalData.Group060.witnesses_check
