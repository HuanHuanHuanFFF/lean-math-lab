import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk120
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk121
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk122
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk123

namespace B699LowIndex.I11TerminalData.Group030
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk120.witnesses ++ Chunk121.witnesses ++ Chunk122.witnesses ++ Chunk123.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk120.witnesses_check (witnessesCheck_append Chunk121.witnesses_check (witnessesCheck_append Chunk122.witnesses_check (Chunk123.witnesses_check)))

end B699LowIndex.I11TerminalData.Group030
#print axioms B699LowIndex.I11TerminalData.Group030.witnesses_check
