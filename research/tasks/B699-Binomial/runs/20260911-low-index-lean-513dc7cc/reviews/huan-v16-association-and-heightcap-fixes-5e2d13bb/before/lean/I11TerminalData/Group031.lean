import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk124
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk125
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk126
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk127

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group031
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk124.witnesses ++ Chunk125.witnesses ++ Chunk126.witnesses ++ Chunk127.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk126.witnesses) (right := Chunk127.witnesses)
    Chunk126.witnesses_check Chunk127.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk125.witnesses) (right := (Chunk126.witnesses ++ Chunk127.witnesses))
    Chunk125.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk124.witnesses) (right := (Chunk125.witnesses ++ (Chunk126.witnesses ++ Chunk127.witnesses)))
    Chunk124.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group031
#print axioms B699LowIndex.I11TerminalData.Group031.witnesses_check
