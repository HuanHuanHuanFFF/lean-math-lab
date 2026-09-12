import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092B16.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_enumeration :
    activePowerIntervalList 92 17 33488 66976 = row092_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_pairs000 :
    row092_layer002_block000.all (fun I => row092_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_pairs001 :
    row092_layer002_block001.all (fun I => row092_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_pairs002 :
    row092_layer002_block002.all (fun I => row092_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_pairs003 :
    row092_layer002_block003.all (fun I => row092_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_pairs004 :
    row092_layer002_block004.all (fun I => row092_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_pairs005 :
    row092_layer002_block005.all (fun I => row092_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_pairs006 :
    row092_layer002_block006.all (fun I => row092_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_chunks_eq : row092_layer002_chunks.flatten = row092_layer002_intervals := by
  rfl

theorem row092_layer002_pairs : pairCoverCheck row092_layer002_intervals row092_bounds = true := by
  apply pairCoverCheck_of_chunks row092_layer002_chunks_eq
  intro block hblock
  simp only [row092_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row092_layer002_pairs000
  · exact row092_layer002_pairs001
  · exact row092_layer002_pairs002
  · exact row092_layer002_pairs003
  · exact row092_layer002_pairs004
  · exact row092_layer002_pairs005
  · exact row092_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer002_checked :
    coverLayerCheck row092.height row092.goods { lower := 33488, upper := 66976, M := 17 } = true := by
  exact coverLayerCheck_of_parts row092_layer002_arithmetic row092_layer002_enumeration row092_bounds_eq row092_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer003_checked :
    coverLayerCheck row092.height row092.goods { lower := 66976, upper := 133952, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer004_checked :
    coverLayerCheck row092.height row092.goods { lower := 133952, upper := 267904, M := 12 } = true := by
  decide +kernel

theorem row092_layer005_checked :
    coverLayerCheck row092.height row092.goods { lower := 267904, upper := 535808, M := 10 } = true := by
  decide +kernel

theorem row092_layer006_checked :
    coverLayerCheck row092.height row092.goods { lower := 535808, upper := 1071616, M := 8 } = true := by
  decide +kernel

theorem row092_layer007_checked :
    coverLayerCheck row092.height row092.goods { lower := 1071616, upper := 2143232, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer008_checked :
    coverLayerCheck row092.height row092.goods { lower := 2143232, upper := 4286464, M := 6 } = true := by
  decide +kernel

theorem row092_layer009_checked :
    coverLayerCheck row092.height row092.goods { lower := 4286464, upper := 8572928, M := 5 } = true := by
  decide +kernel

theorem row092_layer010_checked :
    coverLayerCheck row092.height row092.goods { lower := 8572928, upper := 17145856, M := 4 } = true := by
  decide +kernel

theorem row092_layer011_checked :
    coverLayerCheck row092.height row092.goods { lower := 17145856, upper := 34291712, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer012_checked :
    coverLayerCheck row092.height row092.goods { lower := 34291712, upper := 68583424, M := 3 } = true := by
  decide +kernel

theorem row092_layer013_checked :
    coverLayerCheck row092.height row092.goods { lower := 68583424, upper := 137166848, M := 3 } = true := by
  decide +kernel

theorem row092_layer014_checked :
    coverLayerCheck row092.height row092.goods { lower := 137166848, upper := 274333696, M := 2 } = true := by
  decide +kernel

theorem row092_layer015_checked :
    coverLayerCheck row092.height row092.goods { lower := 274333696, upper := 548667392, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer016_checked :
    coverLayerCheck row092.height row092.goods { lower := 548667392, upper := 1000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layers_checked :
    row092.layers.all (coverLayerCheck row092.height row092.goods) = true := by
  change row092_layers.all (coverLayerCheck row092.height row092.goods) = true
  simp only [row092_layers, List.all_cons, List.all_nil,
    row092_layer000_checked,
    row092_layer001_checked,
    row092_layer002_checked,
    row092_layer003_checked,
    row092_layer004_checked,
    row092_layer005_checked,
    row092_layer006_checked,
    row092_layer007_checked,
    row092_layer008_checked,
    row092_layer009_checked,
    row092_layer010_checked,
    row092_layer011_checked,
    row092_layer012_checked,
    row092_layer013_checked,
    row092_layer014_checked,
    row092_layer015_checked,
    row092_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layers_checked
