import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098B16.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_pairs000 :
    row098_layer002_block000.all (fun I => row098_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_pairs001 :
    row098_layer002_block001.all (fun I => row098_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_pairs002 :
    row098_layer002_block002.all (fun I => row098_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_pairs003 :
    row098_layer002_block003.all (fun I => row098_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_pairs004 :
    row098_layer002_block004.all (fun I => row098_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_pairs005 :
    row098_layer002_block005.all (fun I => row098_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_pairs006 :
    row098_layer002_block006.all (fun I => row098_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_chunks_eq : row098_layer002_chunks.flatten = row098_layer002_intervals := by
  rfl

theorem row098_layer002_pairs : pairCoverCheck row098_layer002_intervals row098_bounds = true := by
  apply pairCoverCheck_of_chunks row098_layer002_chunks_eq
  intro block hblock
  simp only [row098_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row098_layer002_pairs000
  · exact row098_layer002_pairs001
  · exact row098_layer002_pairs002
  · exact row098_layer002_pairs003
  · exact row098_layer002_pairs004
  · exact row098_layer002_pairs005
  · exact row098_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer002_checked :
    coverLayerCheck row098.height row098.goods { lower := 38024, upper := 76048, M := 15 } = true := by
  exact coverLayerCheck_of_parts row098_layer002_arithmetic row098_layer002_enumeration row098_bounds_eq row098_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer003_checked :
    coverLayerCheck row098.height row098.goods { lower := 76048, upper := 152096, M := 12 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer004_checked :
    coverLayerCheck row098.height row098.goods { lower := 152096, upper := 304192, M := 10 } = true := by
  decide +kernel

theorem row098_layer005_checked :
    coverLayerCheck row098.height row098.goods { lower := 304192, upper := 608384, M := 8 } = true := by
  decide +kernel

theorem row098_layer006_checked :
    coverLayerCheck row098.height row098.goods { lower := 608384, upper := 1216768, M := 7 } = true := by
  decide +kernel

theorem row098_layer007_checked :
    coverLayerCheck row098.height row098.goods { lower := 1216768, upper := 2433536, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer008_checked :
    coverLayerCheck row098.height row098.goods { lower := 2433536, upper := 4867072, M := 5 } = true := by
  decide +kernel

theorem row098_layer009_checked :
    coverLayerCheck row098.height row098.goods { lower := 4867072, upper := 9734144, M := 4 } = true := by
  decide +kernel

theorem row098_layer010_checked :
    coverLayerCheck row098.height row098.goods { lower := 9734144, upper := 19468288, M := 3 } = true := by
  decide +kernel

theorem row098_layer011_checked :
    coverLayerCheck row098.height row098.goods { lower := 19468288, upper := 38936576, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer012_checked :
    coverLayerCheck row098.height row098.goods { lower := 38936576, upper := 77873152, M := 2 } = true := by
  decide +kernel

theorem row098_layer013_checked :
    coverLayerCheck row098.height row098.goods { lower := 77873152, upper := 155746304, M := 2 } = true := by
  decide +kernel

theorem row098_layer014_checked :
    coverLayerCheck row098.height row098.goods { lower := 155746304, upper := 311492608, M := 2 } = true := by
  decide +kernel

theorem row098_layer015_checked :
    coverLayerCheck row098.height row098.goods { lower := 311492608, upper := 622985216, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer016_checked :
    coverLayerCheck row098.height row098.goods { lower := 622985216, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layers_checked :
    row098.layers.all (coverLayerCheck row098.height row098.goods) = true := by
  change row098_layers.all (coverLayerCheck row098.height row098.goods) = true
  simp only [row098_layers, List.all_cons, List.all_nil,
    row098_layer000_checked,
    row098_layer001_checked,
    row098_layer002_checked,
    row098_layer003_checked,
    row098_layer004_checked,
    row098_layer005_checked,
    row098_layer006_checked,
    row098_layer007_checked,
    row098_layer008_checked,
    row098_layer009_checked,
    row098_layer010_checked,
    row098_layer011_checked,
    row098_layer012_checked,
    row098_layer013_checked,
    row098_layer014_checked,
    row098_layer015_checked,
    row098_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_checked : finiteCoverRowCheck row098 = true := by
  simp only [finiteCoverRowCheck, row098_registered, row098_goods_checked,
    row098_small_checked, row098_layerCover_checked, row098_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_checked
