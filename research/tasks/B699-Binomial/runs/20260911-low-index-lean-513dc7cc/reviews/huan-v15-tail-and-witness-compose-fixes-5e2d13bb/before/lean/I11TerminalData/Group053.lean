import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk212
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk213
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk214
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk215

namespace B699LowIndex.I11TerminalData.Group053
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk212.witnesses ++ Chunk213.witnesses ++ Chunk214.witnesses ++ Chunk215.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk212.witnesses_check (witnessesCheck_append Chunk213.witnesses_check (witnessesCheck_append Chunk214.witnesses_check (Chunk215.witnesses_check)))

end B699LowIndex.I11TerminalData.Group053
#print axioms B699LowIndex.I11TerminalData.Group053.witnesses_check
