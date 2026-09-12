import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk088
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk089
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk090
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk091

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group022
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk088.witnesses ++ Chunk089.witnesses ++ Chunk090.witnesses ++ Chunk091.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk090.witnesses) (right := Chunk091.witnesses)
    Chunk090.witnesses_check Chunk091.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk089.witnesses) (right := (Chunk090.witnesses ++ Chunk091.witnesses))
    Chunk089.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk088.witnesses) (right := (Chunk089.witnesses ++ (Chunk090.witnesses ++ Chunk091.witnesses)))
    Chunk088.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group022
#print axioms B699LowIndex.I11TerminalData.Group022.witnesses_check
