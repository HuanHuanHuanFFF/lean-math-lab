import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk029
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk030
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk031

namespace B699LowIndex.I11TerminalData.Group007
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk028.witnesses ++ Chunk029.witnesses ++ Chunk030.witnesses ++ Chunk031.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk028.witnesses_check (witnessesCheck_append Chunk029.witnesses_check (witnessesCheck_append Chunk030.witnesses_check (Chunk031.witnesses_check)))

end B699LowIndex.I11TerminalData.Group007
#print axioms B699LowIndex.I11TerminalData.Group007.witnesses_check
