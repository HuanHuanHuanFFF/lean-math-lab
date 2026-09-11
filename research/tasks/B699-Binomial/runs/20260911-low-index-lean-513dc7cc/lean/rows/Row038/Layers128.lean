import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row038Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row038_layer128_checked :
    coverLayerCheck row038.height row038.goods { lower := 478437007890839479629504698049066105307136, upper := 956874015781678959259009396098132210614272, M := 3 } = true := by
  decide +kernel

theorem row038_layer129_checked :
    coverLayerCheck row038.height row038.goods { lower := 956874015781678959259009396098132210614272, upper := 1913748031563357918518018792196264421228544, M := 3 } = true := by
  decide +kernel

theorem row038_layer130_checked :
    coverLayerCheck row038.height row038.goods { lower := 1913748031563357918518018792196264421228544, upper := 3827496063126715837036037584392528842457088, M := 3 } = true := by
  decide +kernel

theorem row038_layer131_checked :
    coverLayerCheck row038.height row038.goods { lower := 3827496063126715837036037584392528842457088, upper := 7654992126253431674072075168785057684914176, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row038_layer131_checked
