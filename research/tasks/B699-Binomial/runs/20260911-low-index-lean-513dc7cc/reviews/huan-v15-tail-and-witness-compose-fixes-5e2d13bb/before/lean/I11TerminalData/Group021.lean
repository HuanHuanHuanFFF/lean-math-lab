import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk084
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk085
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk086
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk087

namespace B699LowIndex.I11TerminalData.Group021
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk084.witnesses ++ Chunk085.witnesses ++ Chunk086.witnesses ++ Chunk087.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk084.witnesses_check (witnessesCheck_append Chunk085.witnesses_check (witnessesCheck_append Chunk086.witnesses_check (Chunk087.witnesses_check)))

end B699LowIndex.I11TerminalData.Group021
#print axioms B699LowIndex.I11TerminalData.Group021.witnesses_check
