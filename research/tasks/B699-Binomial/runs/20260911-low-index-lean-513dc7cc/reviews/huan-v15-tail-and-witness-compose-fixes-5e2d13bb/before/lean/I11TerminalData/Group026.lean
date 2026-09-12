import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk104
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk105
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk106
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk107

namespace B699LowIndex.I11TerminalData.Group026
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk104.witnesses ++ Chunk105.witnesses ++ Chunk106.witnesses ++ Chunk107.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk104.witnesses_check (witnessesCheck_append Chunk105.witnesses_check (witnessesCheck_append Chunk106.witnesses_check (Chunk107.witnesses_check)))

end B699LowIndex.I11TerminalData.Group026
#print axioms B699LowIndex.I11TerminalData.Group026.witnesses_check
