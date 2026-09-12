import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk029
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk030
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk031

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group007
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk028.witnesses ++ Chunk029.witnesses ++ Chunk030.witnesses ++ Chunk031.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk030.witnesses) (right := Chunk031.witnesses)
    Chunk030.witnesses_check Chunk031.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk029.witnesses) (right := (Chunk030.witnesses ++ Chunk031.witnesses))
    Chunk029.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk028.witnesses) (right := (Chunk029.witnesses ++ (Chunk030.witnesses ++ Chunk031.witnesses)))
    Chunk028.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group007
#print axioms B699LowIndex.I11TerminalData.Group007.witnesses_check
