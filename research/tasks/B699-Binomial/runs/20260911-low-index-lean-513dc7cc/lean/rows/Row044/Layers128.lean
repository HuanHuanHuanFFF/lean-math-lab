import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer128_checked :
    coverLayerCheck row044.height row044.goods { lower := 643814238214415572872704757260905456074752, upper := 1287628476428831145745409514521810912149504, M := 5 } = true := by
  decide +kernel

theorem row044_layer129_checked :
    coverLayerCheck row044.height row044.goods { lower := 1287628476428831145745409514521810912149504, upper := 2575256952857662291490819029043621824299008, M := 5 } = true := by
  decide +kernel

theorem row044_layer130_checked :
    coverLayerCheck row044.height row044.goods { lower := 2575256952857662291490819029043621824299008, upper := 5150513905715324582981638058087243648598016, M := 5 } = true := by
  decide +kernel

theorem row044_layer131_checked :
    coverLayerCheck row044.height row044.goods { lower := 5150513905715324582981638058087243648598016, upper := 10301027811430649165963276116174487297196032, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer131_checked
