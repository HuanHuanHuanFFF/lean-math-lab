import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk172
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk173
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk174
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk175

namespace B699LowIndex.I11TerminalData.Group043
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk172.witnesses ++ Chunk173.witnesses ++ Chunk174.witnesses ++ Chunk175.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk172.witnesses_check (witnessesCheck_append Chunk173.witnesses_check (witnessesCheck_append Chunk174.witnesses_check (Chunk175.witnesses_check)))

end B699LowIndex.I11TerminalData.Group043
#print axioms B699LowIndex.I11TerminalData.Group043.witnesses_check
