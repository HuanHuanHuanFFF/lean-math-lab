import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk065
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk066
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk067

namespace B699LowIndex.I11TerminalData.Group016
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk064.witnesses ++ Chunk065.witnesses ++ Chunk066.witnesses ++ Chunk067.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  exact witnessesCheck_append Chunk064.witnesses_check (witnessesCheck_append Chunk065.witnesses_check (witnessesCheck_append Chunk066.witnesses_check (Chunk067.witnesses_check)))

end B699LowIndex.I11TerminalData.Group016
#print axioms B699LowIndex.I11TerminalData.Group016.witnesses_check
