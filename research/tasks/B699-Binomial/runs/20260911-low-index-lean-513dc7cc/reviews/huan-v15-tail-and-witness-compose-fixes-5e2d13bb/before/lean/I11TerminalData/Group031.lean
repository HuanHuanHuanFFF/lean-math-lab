import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk124
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk125
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk126
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk127

namespace B699LowIndex.I11TerminalData.Group031
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk124.witnesses ++ Chunk125.witnesses ++ Chunk126.witnesses ++ Chunk127.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk124.witnesses_check (witnessesCheck_append Chunk125.witnesses_check (witnessesCheck_append Chunk126.witnesses_check (Chunk127.witnesses_check)))

end B699LowIndex.I11TerminalData.Group031
#print axioms B699LowIndex.I11TerminalData.Group031.witnesses_check
