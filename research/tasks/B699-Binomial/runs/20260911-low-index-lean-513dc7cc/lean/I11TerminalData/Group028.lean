import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk112
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk113
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk114
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk115

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group028
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk112.witnesses ++ Chunk113.witnesses ++ Chunk114.witnesses ++ Chunk115.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk114.witnesses) (right := Chunk115.witnesses)
    Chunk114.witnesses_check Chunk115.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk113.witnesses) (right := (Chunk114.witnesses ++ Chunk115.witnesses))
    Chunk113.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk112.witnesses) (right := (Chunk113.witnesses ++ (Chunk114.witnesses ++ Chunk115.witnesses)))
    Chunk112.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group028
#print axioms B699LowIndex.I11TerminalData.Group028.witnesses_check
