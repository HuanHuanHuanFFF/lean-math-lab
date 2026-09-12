import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk192
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk193
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk194
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk195

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group048
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk192.witnesses ++ Chunk193.witnesses ++ Chunk194.witnesses ++ Chunk195.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk194.witnesses) (right := Chunk195.witnesses)
    Chunk194.witnesses_check Chunk195.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk193.witnesses) (right := (Chunk194.witnesses ++ Chunk195.witnesses))
    Chunk193.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk192.witnesses) (right := (Chunk193.witnesses ++ (Chunk194.witnesses ++ Chunk195.witnesses)))
    Chunk192.witnesses_check h1
  simpa only [witnesses] using h2

end B699LowIndex.I11TerminalData.Group048
#print axioms B699LowIndex.I11TerminalData.Group048.witnesses_check
