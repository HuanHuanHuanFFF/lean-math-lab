import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk188
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk189
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk190
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk191

namespace B699LowIndex.I11TerminalData.Group047
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk188.witnesses ++ Chunk189.witnesses ++ Chunk190.witnesses ++ Chunk191.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk188.witnesses_check (witnessesCheck_append Chunk189.witnesses_check (witnessesCheck_append Chunk190.witnesses_check (Chunk191.witnesses_check)))

end B699LowIndex.I11TerminalData.Group047
#print axioms B699LowIndex.I11TerminalData.Group047.witnesses_check
