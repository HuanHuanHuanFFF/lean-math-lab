import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk064
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk065
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk066
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11TerminalData.Chunk067

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000

namespace B699LowIndex.I11TerminalData.Group016
open B699LowIndex.I11TerminalCover

def witnesses : List Witness := Chunk064.witnesses ++ Chunk065.witnesses ++ Chunk066.witnesses ++ Chunk067.witnesses

theorem witnesses_check : witnessesCheck witnesses = true := by
  have h0 := witnessesCheck_append
    (left := Chunk066.witnesses) (right := Chunk067.witnesses)
    Chunk066.witnesses_check Chunk067.witnesses_check
  have h1 := witnessesCheck_append
    (left := Chunk065.witnesses) (right := (Chunk066.witnesses ++ Chunk067.witnesses))
    Chunk065.witnesses_check h0
  have h2 := witnessesCheck_append
    (left := Chunk064.witnesses) (right := (Chunk065.witnesses ++ (Chunk066.witnesses ++ Chunk067.witnesses)))
    Chunk064.witnesses_check h1
  simpa only [witnesses, List.append_assoc] using h2

end B699LowIndex.I11TerminalData.Group016
#print axioms B699LowIndex.I11TerminalData.Group016.witnesses_check
