import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk208
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk209
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk210
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk211

namespace B699LowIndex.I11TerminalData.Group052
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk208.witnesses ++ Chunk209.witnesses ++ Chunk210.witnesses ++ Chunk211.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk208.witnesses_check (witnessesCheck_append Chunk209.witnesses_check (witnessesCheck_append Chunk210.witnesses_check (Chunk211.witnesses_check)))

end B699LowIndex.I11TerminalData.Group052
#print axioms B699LowIndex.I11TerminalData.Group052.witnesses_check
