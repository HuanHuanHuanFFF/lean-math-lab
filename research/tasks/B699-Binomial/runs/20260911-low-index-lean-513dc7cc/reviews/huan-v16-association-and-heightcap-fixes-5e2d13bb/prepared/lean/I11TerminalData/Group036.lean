import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk144
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk145
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk146
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk147

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group036
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk144.witnesses ++ Chunk145.witnesses ++ Chunk146.witnesses ++ Chunk147.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk146.witnesses) (right := Chunk147.witnesses)
    Chunk146.witnesses_check Chunk147.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk145.witnesses) (right := (Chunk146.witnesses ++ Chunk147.witnesses))
    Chunk145.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk144.witnesses) (right := (Chunk145.witnesses ++ (Chunk146.witnesses ++ Chunk147.witnesses)))
    Chunk144.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group036
#print axioms B699LowIndex.I11TerminalData.Group036.witnesses_check
