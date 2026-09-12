import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row029Data
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Layer000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_registered :
    decide (row029.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row029_small_checked :
    coverCheck (2 * row029.height.i + 2) (row029.height.i * (row029.height.i - 1) - 1)
      (row029.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row029_layerCover_checked :
    coverCheck (row029.height.i * (row029.height.i - 1)) (row029.height.n0 - 1)
      (row029.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer001_checked :
    coverLayerCheck row029.height row029.goods { lower := 1624, upper := 3248, M := 32 } = true := by
  decide +kernel

theorem row029_layer002_checked :
    coverLayerCheck row029.height row029.goods { lower := 3248, upper := 6496, M := 31 } = true := by
  decide +kernel

theorem row029_layer003_checked :
    coverLayerCheck row029.height row029.goods { lower := 6496, upper := 12992, M := 30 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer004_checked :
    coverLayerCheck row029.height row029.goods { lower := 12992, upper := 25984, M := 29 } = true := by
  decide +kernel

theorem row029_layer005_checked :
    coverLayerCheck row029.height row029.goods { lower := 25984, upper := 51968, M := 28 } = true := by
  decide +kernel

theorem row029_layer006_checked :
    coverLayerCheck row029.height row029.goods { lower := 51968, upper := 103936, M := 27 } = true := by
  decide +kernel

theorem row029_layer007_checked :
    coverLayerCheck row029.height row029.goods { lower := 103936, upper := 207872, M := 27 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer008_checked :
    coverLayerCheck row029.height row029.goods { lower := 207872, upper := 415744, M := 26 } = true := by
  decide +kernel

theorem row029_layer009_checked :
    coverLayerCheck row029.height row029.goods { lower := 415744, upper := 831488, M := 25 } = true := by
  decide +kernel

theorem row029_layer010_checked :
    coverLayerCheck row029.height row029.goods { lower := 831488, upper := 1662976, M := 24 } = true := by
  decide +kernel

theorem row029_layer011_checked :
    coverLayerCheck row029.height row029.goods { lower := 1662976, upper := 3325952, M := 24 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer012_checked :
    coverLayerCheck row029.height row029.goods { lower := 3325952, upper := 6651904, M := 23 } = true := by
  decide +kernel

theorem row029_layer013_checked :
    coverLayerCheck row029.height row029.goods { lower := 6651904, upper := 13303808, M := 22 } = true := by
  decide +kernel

theorem row029_layer014_checked :
    coverLayerCheck row029.height row029.goods { lower := 13303808, upper := 26607616, M := 22 } = true := by
  decide +kernel

theorem row029_layer015_checked :
    coverLayerCheck row029.height row029.goods { lower := 26607616, upper := 53215232, M := 21 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer016_checked :
    coverLayerCheck row029.height row029.goods { lower := 53215232, upper := 106430464, M := 20 } = true := by
  decide +kernel

theorem row029_layer017_checked :
    coverLayerCheck row029.height row029.goods { lower := 106430464, upper := 212860928, M := 20 } = true := by
  decide +kernel

theorem row029_layer018_checked :
    coverLayerCheck row029.height row029.goods { lower := 212860928, upper := 425721856, M := 19 } = true := by
  decide +kernel

theorem row029_layer019_checked :
    coverLayerCheck row029.height row029.goods { lower := 425721856, upper := 851443712, M := 19 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer020_checked :
    coverLayerCheck row029.height row029.goods { lower := 851443712, upper := 1702887424, M := 18 } = true := by
  decide +kernel

theorem row029_layer021_checked :
    coverLayerCheck row029.height row029.goods { lower := 1702887424, upper := 3405774848, M := 18 } = true := by
  decide +kernel

theorem row029_layer022_checked :
    coverLayerCheck row029.height row029.goods { lower := 3405774848, upper := 6811549696, M := 17 } = true := by
  decide +kernel

theorem row029_layer023_checked :
    coverLayerCheck row029.height row029.goods { lower := 6811549696, upper := 13623099392, M := 17 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row029_layer024_checked :
    coverLayerCheck row029.height row029.goods { lower := 13623099392, upper := 27246198784, M := 16 } = true := by
  decide +kernel

theorem row029_layer025_checked :
    coverLayerCheck row029.height row029.goods { lower := 27246198784, upper := 54492397568, M := 16 } = true := by
  decide +kernel

theorem row029_layer026_checked :
    coverLayerCheck row029.height row029.goods { lower := 54492397568, upper := 108984795136, M := 15 } = true := by
  decide +kernel

theorem row029_layer027_checked :
    coverLayerCheck row029.height row029.goods { lower := 108984795136, upper := 217969590272, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row029_layer027_checked
