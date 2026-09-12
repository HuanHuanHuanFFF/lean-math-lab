import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk060
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk061
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk062
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk063

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group015
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk060.witnesses ++ Chunk061.witnesses ++ Chunk062.witnesses ++ Chunk063.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk062.witnesses) (right := Chunk063.witnesses)
    Chunk062.witnesses_check Chunk063.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk061.witnesses) (right := (Chunk062.witnesses ++ Chunk063.witnesses))
    Chunk061.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk060.witnesses) (right := (Chunk061.witnesses ++ (Chunk062.witnesses ++ Chunk063.witnesses)))
    Chunk060.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group015
#print axioms B699LowIndex.I11TerminalData.Group015.witnesses_check
