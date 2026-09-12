import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk136
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk137
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk138
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk139

namespace B699LowIndex.I11TerminalData.Group034
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk136.witnesses ++ Chunk137.witnesses ++ Chunk138.witnesses ++ Chunk139.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk136.witnesses_check (witnessesCheck_append Chunk137.witnesses_check (witnessesCheck_append Chunk138.witnesses_check (Chunk139.witnesses_check)))

end B699LowIndex.I11TerminalData.Group034
#print axioms B699LowIndex.I11TerminalData.Group034.witnesses_check
