import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk021
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk023

namespace B699LowIndex.I11TerminalData.Group005
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk020.witnesses ++ Chunk021.witnesses ++ Chunk022.witnesses ++ Chunk023.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk020.witnesses_check (witnessesCheck_append Chunk021.witnesses_check (witnessesCheck_append Chunk022.witnesses_check (Chunk023.witnesses_check)))

end B699LowIndex.I11TerminalData.Group005
#print axioms B699LowIndex.I11TerminalData.Group005.witnesses_check
