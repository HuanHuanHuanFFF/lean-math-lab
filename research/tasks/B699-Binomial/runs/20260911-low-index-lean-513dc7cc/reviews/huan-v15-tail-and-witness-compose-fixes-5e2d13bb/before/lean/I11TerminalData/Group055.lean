import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk220
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk221
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk222
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk223

namespace B699LowIndex.I11TerminalData.Group055
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk220.witnesses ++ Chunk221.witnesses ++ Chunk222.witnesses ++ Chunk223.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk220.witnesses_check (witnessesCheck_append Chunk221.witnesses_check (witnessesCheck_append Chunk222.witnesses_check (Chunk223.witnesses_check)))

end B699LowIndex.I11TerminalData.Group055
#print axioms B699LowIndex.I11TerminalData.Group055.witnesses_check
