import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk056
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk057
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk058
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk059

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group014
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk056.witnesses ++ Chunk057.witnesses ++ Chunk058.witnesses ++ Chunk059.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk058.witnesses) (right := Chunk059.witnesses)
    Chunk058.witnesses_check Chunk059.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk057.witnesses) (right := (Chunk058.witnesses ++ Chunk059.witnesses))
    Chunk057.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk056.witnesses) (right := (Chunk057.witnesses ++ (Chunk058.witnesses ++ Chunk059.witnesses)))
    Chunk056.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group014
#print axioms B699LowIndex.I11TerminalData.Group014.witnesses_check
