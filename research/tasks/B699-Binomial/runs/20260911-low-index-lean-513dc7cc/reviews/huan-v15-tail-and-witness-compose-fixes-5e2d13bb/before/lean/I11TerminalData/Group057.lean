import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk228
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk229
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk230
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk231

namespace B699LowIndex.I11TerminalData.Group057
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk228.witnesses ++ Chunk229.witnesses ++ Chunk230.witnesses ++ Chunk231.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk228.witnesses_check (witnessesCheck_append Chunk229.witnesses_check (witnessesCheck_append Chunk230.witnesses_check (Chunk231.witnesses_check)))

end B699LowIndex.I11TerminalData.Group057
#print axioms B699LowIndex.I11TerminalData.Group057.witnesses_check
