import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk018
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk019

namespace B699LowIndex.I11TerminalData.Group004
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk016.witnesses ++ Chunk017.witnesses ++ Chunk018.witnesses ++ Chunk019.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk016.witnesses_check (witnessesCheck_append Chunk017.witnesses_check (witnessesCheck_append Chunk018.witnesses_check (Chunk019.witnesses_check)))

end B699LowIndex.I11TerminalData.Group004
#print axioms B699LowIndex.I11TerminalData.Group004.witnesses_check
