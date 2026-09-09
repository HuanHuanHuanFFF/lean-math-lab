import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.probes.Row184Data
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000
namespace B699LowIndex
theorem row184_registered :
    decide (row184.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row184_goods_checked :
    row184.goods.all (goodSegmentCheck row184.height.i row184.height.r row184.height.s) = true := by
  decide +kernel

theorem row184_small_checked :
    coverCheck (2 * row184.height.i + 2) (row184.height.i * (row184.height.i - 1) - 1)
      (row184.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row184_layerCover_checked :
    coverCheck (row184.height.i * (row184.height.i - 1)) (row184.height.n0 - 1)
      (row184.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row184_layer000_checked :
    coverLayerCheck row184.height row184.goods { lower := 33672, upper := 67344, M := 14 } = true := by
  decide +kernel

theorem row184_layer001_checked :
    coverLayerCheck row184.height row184.goods { lower := 67344, upper := 134688, M := 10 } = true := by
  decide +kernel

theorem row184_layer002_checked :
    coverLayerCheck row184.height row184.goods { lower := 134688, upper := 269376, M := 8 } = true := by
  decide +kernel

theorem row184_layer003_checked :
    coverLayerCheck row184.height row184.goods { lower := 269376, upper := 538752, M := 6 } = true := by
  decide +kernel

theorem row184_layer004_checked :
    coverLayerCheck row184.height row184.goods { lower := 538752, upper := 1077504, M := 4 } = true := by
  decide +kernel

theorem row184_layer005_checked :
    coverLayerCheck row184.height row184.goods { lower := 1077504, upper := 2155008, M := 3 } = true := by
  decide +kernel

theorem row184_layer006_checked :
    coverLayerCheck row184.height row184.goods { lower := 2155008, upper := 4310016, M := 3 } = true := by
  decide +kernel

theorem row184_layer007_checked :
    coverLayerCheck row184.height row184.goods { lower := 4310016, upper := 8620032, M := 2 } = true := by
  decide +kernel

theorem row184_layer008_checked :
    coverLayerCheck row184.height row184.goods { lower := 8620032, upper := 10000000, M := 2 } = true := by
  decide +kernel

theorem row184_layers_checked :
    row184.layers.all (coverLayerCheck row184.height row184.goods) = true := by
  change List.all [
    { lower := 33672, upper := 67344, M := 14 },
    { lower := 67344, upper := 134688, M := 10 },
    { lower := 134688, upper := 269376, M := 8 },
    { lower := 269376, upper := 538752, M := 6 },
    { lower := 538752, upper := 1077504, M := 4 },
    { lower := 1077504, upper := 2155008, M := 3 },
    { lower := 2155008, upper := 4310016, M := 3 },
    { lower := 4310016, upper := 8620032, M := 2 },
    { lower := 8620032, upper := 10000000, M := 2 }
  ] (coverLayerCheck row184.height row184.goods) = true
  simp only [List.all_cons, List.all_nil,
    row184_layer000_checked,
    row184_layer001_checked,
    row184_layer002_checked,
    row184_layer003_checked,
    row184_layer004_checked,
    row184_layer005_checked,
    row184_layer006_checked,
    row184_layer007_checked,
    row184_layer008_checked,
    Bool.true_and]

theorem row184_checked : finiteCoverRowCheck row184 = true := by
  simp only [finiteCoverRowCheck, row184_registered, row184_goods_checked,
    row184_small_checked, row184_layerCover_checked, row184_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row184_checked

end B699LowIndex
