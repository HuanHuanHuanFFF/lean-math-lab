import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk228
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk229
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk230
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk231

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group057
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk228.witnesses ++ Chunk229.witnesses ++ Chunk230.witnesses ++ Chunk231.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk230.witnesses) (right := Chunk231.witnesses)
    Chunk230.witnesses_check Chunk231.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk229.witnesses) (right := (Chunk230.witnesses ++ Chunk231.witnesses))
    Chunk229.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk228.witnesses) (right := (Chunk229.witnesses ++ (Chunk230.witnesses ++ Chunk231.witnesses)))
    Chunk228.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group057
#print axioms B699LowIndex.I11TerminalData.Group057.witnesses_check
