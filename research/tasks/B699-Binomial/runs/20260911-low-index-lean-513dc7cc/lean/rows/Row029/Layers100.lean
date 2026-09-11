import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer100_checked :
    coverLayerCheck row029.height row029.goods { lower := 1029332287385322274015323002765312, upper := 2058664574770644548030646005530624, M := 2 } = true := by
  decide +kernel

theorem row029_layer101_checked :
    coverLayerCheck row029.height row029.goods { lower := 2058664574770644548030646005530624, upper := 4117329149541289096061292011061248, M := 2 } = true := by
  decide +kernel

theorem row029_layer102_checked :
    coverLayerCheck row029.height row029.goods { lower := 4117329149541289096061292011061248, upper := 8234658299082578192122584022122496, M := 2 } = true := by
  decide +kernel

theorem row029_layer103_checked :
    coverLayerCheck row029.height row029.goods { lower := 8234658299082578192122584022122496, upper := 16469316598165156384245168044244992, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer103_checked
