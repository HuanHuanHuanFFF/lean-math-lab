import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk180
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk181
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk182
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk183

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group045
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk180.witnesses ++ Chunk181.witnesses ++ Chunk182.witnesses ++ Chunk183.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk182.witnesses) (right := Chunk183.witnesses)
    Chunk182.witnesses_check Chunk183.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk181.witnesses) (right := (Chunk182.witnesses ++ Chunk183.witnesses))
    Chunk181.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk180.witnesses) (right := (Chunk181.witnesses ++ (Chunk182.witnesses ++ Chunk183.witnesses)))
    Chunk180.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group045
#print axioms B699LowIndex.I11TerminalData.Group045.witnesses_check
