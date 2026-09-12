import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk172
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk173
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk174
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk175

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group043
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk172.witnesses ++ Chunk173.witnesses ++ Chunk174.witnesses ++ Chunk175.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk174.witnesses) (right := Chunk175.witnesses)
    Chunk174.witnesses_check Chunk175.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk173.witnesses) (right := (Chunk174.witnesses ++ Chunk175.witnesses))
    Chunk173.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk172.witnesses) (right := (Chunk173.witnesses ++ (Chunk174.witnesses ++ Chunk175.witnesses)))
    Chunk172.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group043
#print axioms B699LowIndex.I11TerminalData.Group043.witnesses_check
