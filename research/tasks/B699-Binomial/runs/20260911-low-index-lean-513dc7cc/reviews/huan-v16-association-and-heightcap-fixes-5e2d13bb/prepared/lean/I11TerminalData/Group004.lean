import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk018
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk019

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group004
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk016.witnesses ++ Chunk017.witnesses ++ Chunk018.witnesses ++ Chunk019.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk018.witnesses) (right := Chunk019.witnesses)
    Chunk018.witnesses_check Chunk019.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk017.witnesses) (right := (Chunk018.witnesses ++ Chunk019.witnesses))
    Chunk017.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk016.witnesses) (right := (Chunk017.witnesses ++ (Chunk018.witnesses ++ Chunk019.witnesses)))
    Chunk016.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group004
#print axioms B699LowIndex.I11TerminalData.Group004.witnesses_check
