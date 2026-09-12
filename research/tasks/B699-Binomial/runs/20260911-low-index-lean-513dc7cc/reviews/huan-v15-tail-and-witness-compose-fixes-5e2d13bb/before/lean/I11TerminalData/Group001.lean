import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk007

namespace B699LowIndex.I11TerminalData.Group001
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk004.witnesses ++ Chunk005.witnesses ++ Chunk006.witnesses ++ Chunk007.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk004.witnesses_check (witnessesCheck_append Chunk005.witnesses_check (witnessesCheck_append Chunk006.witnesses_check (Chunk007.witnesses_check)))

end B699LowIndex.I11TerminalData.Group001
#print axioms B699LowIndex.I11TerminalData.Group001.witnesses_check
