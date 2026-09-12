import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk010
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk011

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group002
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk008.witnesses ++ Chunk009.witnesses ++ Chunk010.witnesses ++ Chunk011.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk010.witnesses) (right := Chunk011.witnesses)
    Chunk010.witnesses_check Chunk011.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk009.witnesses) (right := (Chunk010.witnesses ++ Chunk011.witnesses))
    Chunk009.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk008.witnesses) (right := (Chunk009.witnesses ++ (Chunk010.witnesses ++ Chunk011.witnesses)))
    Chunk008.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group002
#print axioms B699LowIndex.I11TerminalData.Group002.witnesses_check
