import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk180
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk181
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk182
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk183

namespace B699LowIndex.I11TerminalData.Group045
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk180.witnesses ++ Chunk181.witnesses ++ Chunk182.witnesses ++ Chunk183.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk180.witnesses_check (witnessesCheck_append Chunk181.witnesses_check (witnessesCheck_append Chunk182.witnesses_check (Chunk183.witnesses_check)))

end B699LowIndex.I11TerminalData.Group045
#print axioms B699LowIndex.I11TerminalData.Group045.witnesses_check
