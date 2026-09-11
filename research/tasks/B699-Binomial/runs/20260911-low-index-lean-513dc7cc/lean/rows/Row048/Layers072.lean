import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer072_checked :
    coverLayerCheck row048.height row048.goods { lower := 10653658785353919602098176, upper := 21307317570707839204196352, M := 4 } = true := by
  decide +kernel

theorem row048_layer073_checked :
    coverLayerCheck row048.height row048.goods { lower := 21307317570707839204196352, upper := 42614635141415678408392704, M := 4 } = true := by
  decide +kernel

theorem row048_layer074_checked :
    coverLayerCheck row048.height row048.goods { lower := 42614635141415678408392704, upper := 85229270282831356816785408, M := 4 } = true := by
  decide +kernel

theorem row048_layer075_checked :
    coverLayerCheck row048.height row048.goods { lower := 85229270282831356816785408, upper := 170458540565662713633570816, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer075_checked
