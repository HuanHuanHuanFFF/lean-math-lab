import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090B16.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_pairs000 :
    row090_layer003_block000.all (fun I => row090_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_pairs001 :
    row090_layer003_block001.all (fun I => row090_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_pairs002 :
    row090_layer003_block002.all (fun I => row090_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_pairs003 :
    row090_layer003_block003.all (fun I => row090_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_pairs004 :
    row090_layer003_block004.all (fun I => row090_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_pairs005 :
    row090_layer003_block005.all (fun I => row090_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_chunks_eq : row090_layer003_chunks.flatten = row090_layer003_intervals := by
  rfl

theorem row090_layer003_pairs : pairCoverCheck row090_layer003_intervals row090_bounds = true := by
  apply pairCoverCheck_of_chunks row090_layer003_chunks_eq
  intro block hblock
  simp only [row090_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row090_layer003_pairs000
  · exact row090_layer003_pairs001
  · exact row090_layer003_pairs002
  · exact row090_layer003_pairs003
  · exact row090_layer003_pairs004
  · exact row090_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer003_checked :
    coverLayerCheck row090.height row090.goods { lower := 64080, upper := 128160, M := 17 } = true := by
  exact coverLayerCheck_of_parts row090_layer003_arithmetic row090_layer003_enumeration row090_bounds_eq row090_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer004_checked :
    coverLayerCheck row090.height row090.goods { lower := 128160, upper := 256320, M := 15 } = true := by
  decide +kernel

theorem row090_layer005_checked :
    coverLayerCheck row090.height row090.goods { lower := 256320, upper := 512640, M := 12 } = true := by
  decide +kernel

theorem row090_layer006_checked :
    coverLayerCheck row090.height row090.goods { lower := 512640, upper := 1025280, M := 11 } = true := by
  decide +kernel

theorem row090_layer007_checked :
    coverLayerCheck row090.height row090.goods { lower := 1025280, upper := 2050560, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer008_checked :
    coverLayerCheck row090.height row090.goods { lower := 2050560, upper := 4101120, M := 8 } = true := by
  decide +kernel

theorem row090_layer009_checked :
    coverLayerCheck row090.height row090.goods { lower := 4101120, upper := 8202240, M := 7 } = true := by
  decide +kernel

theorem row090_layer010_checked :
    coverLayerCheck row090.height row090.goods { lower := 8202240, upper := 16404480, M := 6 } = true := by
  decide +kernel

theorem row090_layer011_checked :
    coverLayerCheck row090.height row090.goods { lower := 16404480, upper := 32808960, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer012_checked :
    coverLayerCheck row090.height row090.goods { lower := 32808960, upper := 65617920, M := 4 } = true := by
  decide +kernel

theorem row090_layer013_checked :
    coverLayerCheck row090.height row090.goods { lower := 65617920, upper := 131235840, M := 4 } = true := by
  decide +kernel

theorem row090_layer014_checked :
    coverLayerCheck row090.height row090.goods { lower := 131235840, upper := 262471680, M := 3 } = true := by
  decide +kernel

theorem row090_layer015_checked :
    coverLayerCheck row090.height row090.goods { lower := 262471680, upper := 524943360, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer016_checked :
    coverLayerCheck row090.height row090.goods { lower := 524943360, upper := 1049886720, M := 2 } = true := by
  decide +kernel

theorem row090_layer017_checked :
    coverLayerCheck row090.height row090.goods { lower := 1049886720, upper := 2099773440, M := 2 } = true := by
  decide +kernel

theorem row090_layer018_checked :
    coverLayerCheck row090.height row090.goods { lower := 2099773440, upper := 4199546880, M := 2 } = true := by
  decide +kernel

theorem row090_layer019_checked :
    coverLayerCheck row090.height row090.goods { lower := 4199546880, upper := 8399093760, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer020_checked :
    coverLayerCheck row090.height row090.goods { lower := 8399093760, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layers_checked :
    row090.layers.all (coverLayerCheck row090.height row090.goods) = true := by
  change row090_layers.all (coverLayerCheck row090.height row090.goods) = true
  simp only [row090_layers, List.all_cons, List.all_nil,
    row090_layer000_checked,
    row090_layer001_checked,
    row090_layer002_checked,
    row090_layer003_checked,
    row090_layer004_checked,
    row090_layer005_checked,
    row090_layer006_checked,
    row090_layer007_checked,
    row090_layer008_checked,
    row090_layer009_checked,
    row090_layer010_checked,
    row090_layer011_checked,
    row090_layer012_checked,
    row090_layer013_checked,
    row090_layer014_checked,
    row090_layer015_checked,
    row090_layer016_checked,
    row090_layer017_checked,
    row090_layer018_checked,
    row090_layer019_checked,
    row090_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_checked : finiteCoverRowCheck row090 = true := by
  simp only [finiteCoverRowCheck, row090_registered, row090_goods_checked,
    row090_small_checked, row090_layerCover_checked, row090_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_checked
