import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk011

namespace B699LowIndex.I11TerminalData.Group002
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk008.witnesses ++ Chunk009.witnesses ++ Chunk010.witnesses ++ Chunk011.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk008.witnesses_check (witnessesCheck_append Chunk009.witnesses_check (witnessesCheck_append Chunk010.witnesses_check (Chunk011.witnesses_check)))

end B699LowIndex.I11TerminalData.Group002
#print axioms B699LowIndex.I11TerminalData.Group002.witnesses_check
