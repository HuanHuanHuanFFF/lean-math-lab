import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk176
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk177
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk178
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk179

namespace B699LowIndex.I11TerminalData.Group044
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk176.witnesses ++ Chunk177.witnesses ++ Chunk178.witnesses ++ Chunk179.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk176.witnesses_check (witnessesCheck_append Chunk177.witnesses_check (witnessesCheck_append Chunk178.witnesses_check (Chunk179.witnesses_check)))

end B699LowIndex.I11TerminalData.Group044
#print axioms B699LowIndex.I11TerminalData.Group044.witnesses_check
