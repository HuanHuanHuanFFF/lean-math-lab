import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk089
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk090
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk091

namespace B699LowIndex.I11TerminalData.Group022
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk088.witnesses ++ Chunk089.witnesses ++ Chunk090.witnesses ++ Chunk091.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk088.witnesses_check (witnessesCheck_append Chunk089.witnesses_check (witnessesCheck_append Chunk090.witnesses_check (Chunk091.witnesses_check)))

end B699LowIndex.I11TerminalData.Group022
#print axioms B699LowIndex.I11TerminalData.Group022.witnesses_check
