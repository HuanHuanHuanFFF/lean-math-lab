import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk144
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk145
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk146
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk147

namespace B699LowIndex.I11TerminalData.Group036
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk144.witnesses ++ Chunk145.witnesses ++ Chunk146.witnesses ++ Chunk147.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk144.witnesses_check (witnessesCheck_append Chunk145.witnesses_check (witnessesCheck_append Chunk146.witnesses_check (Chunk147.witnesses_check)))

end B699LowIndex.I11TerminalData.Group036
#print axioms B699LowIndex.I11TerminalData.Group036.witnesses_check
