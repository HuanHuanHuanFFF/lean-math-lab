import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk120
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk121
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk122
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk123

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group030
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk120.witnesses ++ Chunk121.witnesses ++ Chunk122.witnesses ++ Chunk123.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk122.witnesses) (right := Chunk123.witnesses)
    Chunk122.witnesses_check Chunk123.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk121.witnesses) (right := (Chunk122.witnesses ++ Chunk123.witnesses))
    Chunk121.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk120.witnesses) (right := (Chunk121.witnesses ++ (Chunk122.witnesses ++ Chunk123.witnesses)))
    Chunk120.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group030
#print axioms B699LowIndex.I11TerminalData.Group030.witnesses_check
