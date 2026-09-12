import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk148
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk149
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk150
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk151

namespace B699LowIndex.I11TerminalData.Group037
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk148.witnesses ++ Chunk149.witnesses ++ Chunk150.witnesses ++ Chunk151.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk148.witnesses_check (witnessesCheck_append Chunk149.witnesses_check (witnessesCheck_append Chunk150.witnesses_check (Chunk151.witnesses_check)))

end B699LowIndex.I11TerminalData.Group037
#print axioms B699LowIndex.I11TerminalData.Group037.witnesses_check
