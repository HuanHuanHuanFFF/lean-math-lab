import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk077
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk078
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk079

namespace B699LowIndex.I11TerminalData.Group019
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk076.witnesses ++ Chunk077.witnesses ++ Chunk078.witnesses ++ Chunk079.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk076.witnesses_check (witnessesCheck_append Chunk077.witnesses_check (witnessesCheck_append Chunk078.witnesses_check (Chunk079.witnesses_check)))

end B699LowIndex.I11TerminalData.Group019
#print axioms B699LowIndex.I11TerminalData.Group019.witnesses_check
