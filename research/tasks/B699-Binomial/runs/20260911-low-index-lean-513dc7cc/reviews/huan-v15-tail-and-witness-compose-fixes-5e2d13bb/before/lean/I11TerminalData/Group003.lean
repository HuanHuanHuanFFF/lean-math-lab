import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk015

namespace B699LowIndex.I11TerminalData.Group003
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk012.witnesses ++ Chunk013.witnesses ++ Chunk014.witnesses ++ Chunk015.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk012.witnesses_check (witnessesCheck_append Chunk013.witnesses_check (witnessesCheck_append Chunk014.witnesses_check (Chunk015.witnesses_check)))

end B699LowIndex.I11TerminalData.Group003
#print axioms B699LowIndex.I11TerminalData.Group003.witnesses_check
