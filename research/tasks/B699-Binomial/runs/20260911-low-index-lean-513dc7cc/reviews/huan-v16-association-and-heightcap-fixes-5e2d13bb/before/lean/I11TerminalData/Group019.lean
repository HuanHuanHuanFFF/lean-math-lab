import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk076
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk077
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk078
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk079

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group019
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk076.witnesses ++ Chunk077.witnesses ++ Chunk078.witnesses ++ Chunk079.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk078.witnesses) (right := Chunk079.witnesses)
    Chunk078.witnesses_check Chunk079.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk077.witnesses) (right := (Chunk078.witnesses ++ Chunk079.witnesses))
    Chunk077.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk076.witnesses) (right := (Chunk077.witnesses ++ (Chunk078.witnesses ++ Chunk079.witnesses)))
    Chunk076.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group019
#print axioms B699LowIndex.I11TerminalData.Group019.witnesses_check
