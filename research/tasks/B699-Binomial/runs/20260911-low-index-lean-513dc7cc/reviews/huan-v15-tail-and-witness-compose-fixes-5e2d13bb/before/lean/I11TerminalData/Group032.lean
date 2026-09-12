import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk128
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk129
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk130
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk131

namespace B699LowIndex.I11TerminalData.Group032
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk128.witnesses ++ Chunk129.witnesses ++ Chunk130.witnesses ++ Chunk131.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk128.witnesses_check (witnessesCheck_append Chunk129.witnesses_check (witnessesCheck_append Chunk130.witnesses_check (Chunk131.witnesses_check)))

end B699LowIndex.I11TerminalData.Group032
#print axioms B699LowIndex.I11TerminalData.Group032.witnesses_check
