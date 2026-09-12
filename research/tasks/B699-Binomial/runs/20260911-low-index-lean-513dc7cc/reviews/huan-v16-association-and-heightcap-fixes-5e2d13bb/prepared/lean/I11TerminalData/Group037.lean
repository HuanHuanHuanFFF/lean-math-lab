import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk148
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk149
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk150
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk151

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group037
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk148.witnesses ++ Chunk149.witnesses ++ Chunk150.witnesses ++ Chunk151.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk150.witnesses) (right := Chunk151.witnesses)
    Chunk150.witnesses_check Chunk151.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk149.witnesses) (right := (Chunk150.witnesses ++ Chunk151.witnesses))
    Chunk149.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk148.witnesses) (right := (Chunk149.witnesses ++ (Chunk150.witnesses ++ Chunk151.witnesses)))
    Chunk148.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group037
#print axioms B699LowIndex.I11TerminalData.Group037.witnesses_check
