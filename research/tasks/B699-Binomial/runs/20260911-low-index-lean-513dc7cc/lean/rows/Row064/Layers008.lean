import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row064Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer008_checked :
    coverLayerCheck row064.height row064.goods { lower := 1032192, upper := 2064384, M := 12 } = true := by
  decide +kernel

theorem row064_layer009_checked :
    coverLayerCheck row064.height row064.goods { lower := 2064384, upper := 4128768, M := 11 } = true := by
  decide +kernel

theorem row064_layer010_checked :
    coverLayerCheck row064.height row064.goods { lower := 4128768, upper := 8257536, M := 10 } = true := by
  decide +kernel

theorem row064_layer011_checked :
    coverLayerCheck row064.height row064.goods { lower := 8257536, upper := 16515072, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer011_checked
