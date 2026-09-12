import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk200
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk201
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk202
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk203

namespace B699LowIndex.I11TerminalData.Group050
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk200.witnesses ++ Chunk201.witnesses ++ Chunk202.witnesses ++ Chunk203.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk200.witnesses_check (witnessesCheck_append Chunk201.witnesses_check (witnessesCheck_append Chunk202.witnesses_check (Chunk203.witnesses_check)))

end B699LowIndex.I11TerminalData.Group050
#print axioms B699LowIndex.I11TerminalData.Group050.witnesses_check
