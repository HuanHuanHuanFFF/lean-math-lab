import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block018
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_pairs003 :
    row046_layer009_block003.all (fun I => row046_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_pairs004 :
    row046_layer009_block004.all (fun I => row046_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_pairs005 :
    row046_layer009_block005.all (fun I => row046_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_pairs006 :
    row046_layer009_block006.all (fun I => row046_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_chunks_eq : row046_layer009_chunks.flatten = row046_layer009_intervals := by
  rfl

theorem row046_layer009_pairs : pairCoverCheck row046_layer009_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer009_chunks_eq
  intro block hblock
  simp only [row046_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer009_pairs000
  · exact row046_layer009_pairs001
  · exact row046_layer009_pairs002
  · exact row046_layer009_pairs003
  · exact row046_layer009_pairs004
  · exact row046_layer009_pairs005
  · exact row046_layer009_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer009_checked :
    coverLayerCheck row046.height row046.goods { lower := 1059840, upper := 2119680, M := 23 } = true := by
  exact coverLayerCheck_of_parts row046_layer009_arithmetic row046_layer009_enumeration row046_bounds_eq row046_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_layer010_intervals : List ColouredInterval :=
  [(2, 2359296, 2359341), (2, 2621440, 2621485), (2, 2883584, 2883629), (2, 2621440, 2621485), (2, 3145728, 3145773), (2, 3670016, 3670061), (2, 4194304, 4194349), (2, 3145728, 3145773), (2, 4194304, 4194349), (2, 4194304, 4194349), (2, 4194304, 4194349), (3, 2125764, 2125809), (3, 2302911, 2302956), (3, 2480058, 2480103), (3, 2657205, 2657250), (3, 2834352, 2834397), (3, 3011499, 3011544), (3, 3188646, 3188691), (3, 3365793, 3365838), (3, 3542940, 3542985), (3, 3720087, 3720132), (3, 3897234, 3897279), (3, 2125764, 2125809), (3, 2657205, 2657250), (3, 3188646, 3188691), (3, 3720087, 3720132), (3, 3188646, 3188691), (5, 2343750, 2343795), (5, 2734375, 2734420), (5, 3125000, 3125045), (5, 3515625, 3515670), (5, 3906250, 3906295), (5, 3906250, 3906295), (7, 2235331, 2235376), (7, 2352980, 2353025), (7, 2470629, 2470674), (7, 2588278, 2588323), (7, 2470629, 2470674), (7, 3294172, 3294217), (7, 4117715, 4117760), (11, 2254714, 2254759), (11, 2415765, 2415810), (11, 2576816, 2576861), (11, 2737867, 2737912), (11, 2898918, 2898963), (11, 3059969, 3060014), (11, 3221020, 3221065), (11, 3382071, 3382116), (11, 3543122, 3543167), (11, 3543122, 3543167), (13, 2227758, 2227803), (13, 2599051, 2599096), (13, 2970344, 2970389), (13, 3341637, 3341682), (13, 3712930, 3712975), (13, 4084223, 4084268), (17, 2839714, 2839759), (19, 2215457, 2215502), (19, 2345778, 2345823), (19, 2476099, 2476144), (19, 2606420, 2606465), (19, 2736741, 2736786), (19, 2867062, 2867107), (19, 2476099, 2476144), (29, 2121843, 2121888), (29, 2829124, 2829169), (29, 3536405, 3536450), (31, 2770563, 2770608), (31, 3694084, 3694129), (37, 3748322, 3748367), (41, 2825761, 2825806), (43, 3418801, 3418846)]

def row046_layer010_block000 : List ColouredInterval :=
  [(2, 2359296, 2359341), (2, 2621440, 2621485), (2, 2883584, 2883629), (2, 2621440, 2621485), (2, 3145728, 3145773), (2, 3670016, 3670061), (2, 4194304, 4194349), (2, 3145728, 3145773), (2, 4194304, 4194349), (2, 4194304, 4194349), (2, 4194304, 4194349), (3, 2125764, 2125809), (3, 2302911, 2302956), (3, 2480058, 2480103), (3, 2657205, 2657250), (3, 2834352, 2834397)]

def row046_layer010_block001 : List ColouredInterval :=
  [(3, 3011499, 3011544), (3, 3188646, 3188691), (3, 3365793, 3365838), (3, 3542940, 3542985), (3, 3720087, 3720132), (3, 3897234, 3897279), (3, 2125764, 2125809), (3, 2657205, 2657250), (3, 3188646, 3188691), (3, 3720087, 3720132), (3, 3188646, 3188691), (5, 2343750, 2343795), (5, 2734375, 2734420), (5, 3125000, 3125045), (5, 3515625, 3515670), (5, 3906250, 3906295)]

def row046_layer010_block002 : List ColouredInterval :=
  [(5, 3906250, 3906295), (7, 2235331, 2235376), (7, 2352980, 2353025), (7, 2470629, 2470674), (7, 2588278, 2588323), (7, 2470629, 2470674), (7, 3294172, 3294217), (7, 4117715, 4117760), (11, 2254714, 2254759), (11, 2415765, 2415810), (11, 2576816, 2576861), (11, 2737867, 2737912), (11, 2898918, 2898963), (11, 3059969, 3060014), (11, 3221020, 3221065), (11, 3382071, 3382116)]

def row046_layer010_block003 : List ColouredInterval :=
  [(11, 3543122, 3543167), (11, 3543122, 3543167), (13, 2227758, 2227803), (13, 2599051, 2599096), (13, 2970344, 2970389), (13, 3341637, 3341682), (13, 3712930, 3712975), (13, 4084223, 4084268), (17, 2839714, 2839759), (19, 2215457, 2215502), (19, 2345778, 2345823), (19, 2476099, 2476144), (19, 2606420, 2606465), (19, 2736741, 2736786), (19, 2867062, 2867107), (19, 2476099, 2476144)]

def row046_layer010_block004 : List ColouredInterval :=
  [(29, 2121843, 2121888), (29, 2829124, 2829169), (29, 3536405, 3536450), (31, 2770563, 2770608), (31, 3694084, 3694129), (37, 3748322, 3748367), (41, 2825761, 2825806), (43, 3418801, 3418846)]

def row046_layer010_chunks : List (List ColouredInterval) :=
  [row046_layer010_block000, row046_layer010_block001, row046_layer010_block002, row046_layer010_block003, row046_layer010_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer010_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer010_arithmetic : LayerArithmeticValid row046.height { lower := 2119680, upper := 4239360, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer010_arithmetic
