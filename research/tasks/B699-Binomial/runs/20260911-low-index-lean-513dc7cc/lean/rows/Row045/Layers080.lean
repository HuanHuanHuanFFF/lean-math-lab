import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer080_checked :
    coverLayerCheck row045.height row045.goods { lower := 2393673122836965765918228480, upper := 4787346245673931531836456960, M := 3 } = true := by
  decide +kernel

theorem row045_layer081_checked :
    coverLayerCheck row045.height row045.goods { lower := 4787346245673931531836456960, upper := 9574692491347863063672913920, M := 3 } = true := by
  decide +kernel

theorem row045_layer082_checked :
    coverLayerCheck row045.height row045.goods { lower := 9574692491347863063672913920, upper := 19149384982695726127345827840, M := 3 } = true := by
  decide +kernel

theorem row045_layer083_checked :
    coverLayerCheck row045.height row045.goods { lower := 19149384982695726127345827840, upper := 38298769965391452254691655680, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer083_checked
