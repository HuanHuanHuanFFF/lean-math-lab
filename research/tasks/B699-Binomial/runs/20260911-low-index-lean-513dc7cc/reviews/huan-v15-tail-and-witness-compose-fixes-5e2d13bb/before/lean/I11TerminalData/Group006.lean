import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk025
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk026
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk027

namespace B699LowIndex.I11TerminalData.Group006
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk024.witnesses ++ Chunk025.witnesses ++ Chunk026.witnesses ++ Chunk027.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk024.witnesses_check (witnessesCheck_append Chunk025.witnesses_check (witnessesCheck_append Chunk026.witnesses_check (Chunk027.witnesses_check)))

end B699LowIndex.I11TerminalData.Group006
#print axioms B699LowIndex.I11TerminalData.Group006.witnesses_check
