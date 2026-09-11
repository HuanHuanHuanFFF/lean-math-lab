import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row045Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row045_layer084_checked :
    coverLayerCheck row045.height row045.goods { lower := 38298769965391452254691655680, upper := 76597539930782904509383311360, M := 3 } = true := by
  decide +kernel

theorem row045_layer085_checked :
    coverLayerCheck row045.height row045.goods { lower := 76597539930782904509383311360, upper := 153195079861565809018766622720, M := 2 } = true := by
  decide +kernel

theorem row045_layer086_checked :
    coverLayerCheck row045.height row045.goods { lower := 153195079861565809018766622720, upper := 306390159723131618037533245440, M := 2 } = true := by
  decide +kernel

theorem row045_layer087_checked :
    coverLayerCheck row045.height row045.goods { lower := 306390159723131618037533245440, upper := 612780319446263236075066490880, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row045_layer087_checked
