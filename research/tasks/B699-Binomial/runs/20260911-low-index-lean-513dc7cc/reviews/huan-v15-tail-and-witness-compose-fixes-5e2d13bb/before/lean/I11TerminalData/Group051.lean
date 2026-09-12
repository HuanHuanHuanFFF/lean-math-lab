import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk204
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk205
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk206
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk207

namespace B699LowIndex.I11TerminalData.Group051
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk204.witnesses ++ Chunk205.witnesses ++ Chunk206.witnesses ++ Chunk207.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk204.witnesses_check (witnessesCheck_append Chunk205.witnesses_check (witnessesCheck_append Chunk206.witnesses_check (Chunk207.witnesses_check)))

end B699LowIndex.I11TerminalData.Group051
#print axioms B699LowIndex.I11TerminalData.Group051.witnesses_check
