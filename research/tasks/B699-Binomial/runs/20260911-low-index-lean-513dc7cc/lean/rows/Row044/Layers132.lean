import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Row044Data

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row044_layer132_checked :
    coverLayerCheck row044.height row044.goods { lower := 10301027811430649165963276116174487297196032, upper := 20602055622861298331926552232348974594392064, M := 5 } = true := by
  decide +kernel

theorem row044_layer133_checked :
    coverLayerCheck row044.height row044.goods { lower := 20602055622861298331926552232348974594392064, upper := 41204111245722596663853104464697949188784128, M := 5 } = true := by
  decide +kernel

theorem row044_layer134_checked :
    coverLayerCheck row044.height row044.goods { lower := 41204111245722596663853104464697949188784128, upper := 82408222491445193327706208929395898377568256, M := 4 } = true := by
  decide +kernel

theorem row044_layer135_checked :
    coverLayerCheck row044.height row044.goods { lower := 82408222491445193327706208929395898377568256, upper := 164816444982890386655412417858791796755136512, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row044_layer135_checked
