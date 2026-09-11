import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row048Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer100_checked :
    coverLayerCheck row048.height row048.goods { lower := 2859819754114885529776562431328256, upper := 5719639508229771059553124862656512, M := 2 } = true := by
  decide +kernel

theorem row048_layer101_checked :
    coverLayerCheck row048.height row048.goods { lower := 5719639508229771059553124862656512, upper := 11439279016459542119106249725313024, M := 2 } = true := by
  decide +kernel

theorem row048_layer102_checked :
    coverLayerCheck row048.height row048.goods { lower := 11439279016459542119106249725313024, upper := 22878558032919084238212499450626048, M := 2 } = true := by
  decide +kernel

theorem row048_layer103_checked :
    coverLayerCheck row048.height row048.goods { lower := 22878558032919084238212499450626048, upper := 45757116065838168476424998901252096, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer103_checked
