import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk096
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk097
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk098
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk099

namespace B699LowIndex.I11TerminalData.Group024
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk096.witnesses ++ Chunk097.witnesses ++ Chunk098.witnesses ++ Chunk099.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk096.witnesses_check (witnessesCheck_append Chunk097.witnesses_check (witnessesCheck_append Chunk098.witnesses_check (Chunk099.witnesses_check)))

end B699LowIndex.I11TerminalData.Group024
#print axioms B699LowIndex.I11TerminalData.Group024.witnesses_check
