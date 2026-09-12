import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk044
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk045
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk046
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk047

namespace B699LowIndex.I11TerminalData.Group011
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk044.witnesses ++ Chunk045.witnesses ++ Chunk046.witnesses ++ Chunk047.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk044.witnesses_check (witnessesCheck_append Chunk045.witnesses_check (witnessesCheck_append Chunk046.witnesses_check (Chunk047.witnesses_check)))

end B699LowIndex.I11TerminalData.Group011
#print axioms B699LowIndex.I11TerminalData.Group011.witnesses_check
