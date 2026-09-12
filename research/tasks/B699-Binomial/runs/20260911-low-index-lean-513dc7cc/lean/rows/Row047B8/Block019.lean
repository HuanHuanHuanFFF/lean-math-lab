import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block018
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_pairs001 :
    row047_layer009_block001.all (fun I => row047_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_pairs002 :
    row047_layer009_block002.all (fun I => row047_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_pairs003 :
    row047_layer009_block003.all (fun I => row047_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_pairs004 :
    row047_layer009_block004.all (fun I => row047_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_pairs005 :
    row047_layer009_block005.all (fun I => row047_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_chunks_eq : row047_layer009_chunks.flatten = row047_layer009_intervals := by
  rfl

theorem row047_layer009_pairs : pairCoverCheck row047_layer009_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer009_chunks_eq
  intro block hblock
  simp only [row047_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row047_layer009_pairs000
  · exact row047_layer009_pairs001
  · exact row047_layer009_pairs002
  · exact row047_layer009_pairs003
  · exact row047_layer009_pairs004
  · exact row047_layer009_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer009_checked :
    coverLayerCheck row047.height row047.goods { lower := 1106944, upper := 2213888, M := 18 } = true := by
  exact coverLayerCheck_of_parts row047_layer009_arithmetic row047_layer009_enumeration row047_bounds_eq row047_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer010_intervals : List ColouredInterval :=
  [(2, 2228224, 2228270), (2, 2359296, 2359342), (2, 2621440, 2621486), (2, 2883584, 2883630), (2, 3145728, 3145774), (2, 3407872, 3407918), (2, 3670016, 3670062), (2, 3932160, 3932206), (2, 4194304, 4194350), (2, 2621440, 2621486), (2, 3145728, 3145774), (2, 3670016, 3670062), (2, 4194304, 4194350), (2, 3145728, 3145774), (2, 4194304, 4194350), (2, 4194304, 4194350), (2, 4194304, 4194350), (3, 2302911, 2302957), (3, 2480058, 2480104), (3, 2657205, 2657251), (3, 2834352, 2834398), (3, 3011499, 3011545), (3, 2657205, 2657251), (3, 3188646, 3188692), (3, 3720087, 3720133), (3, 4251528, 4251574), (3, 3188646, 3188692), (5, 2343750, 2343796), (5, 2734375, 2734421), (5, 3125000, 3125046), (5, 3515625, 3515671), (5, 3906250, 3906296), (5, 4296875, 4296921), (5, 3906250, 3906296), (7, 2470629, 2470675), (7, 3294172, 3294218), (7, 4117715, 4117761), (11, 2254714, 2254760), (11, 2415765, 2415811), (11, 2576816, 2576862), (11, 2737867, 2737913), (11, 3543122, 3543168), (13, 2227758, 2227804), (13, 2599051, 2599097), (13, 2970344, 2970390), (13, 3341637, 3341683), (13, 3712930, 3712976), (13, 4084223, 4084269), (17, 2839714, 2839760), (17, 4259571, 4259617), (19, 2215457, 2215503), (19, 2476099, 2476145), (23, 2238728, 2238774), (23, 2518569, 2518615), (23, 2798410, 2798456), (23, 3078251, 3078297), (23, 3358092, 3358138), (23, 3637933, 3637979), (23, 3917774, 3917820), (23, 4197615, 4197661), (29, 2829124, 2829170), (29, 3536405, 3536451), (29, 4243686, 4243732), (31, 2770563, 2770609), (31, 3694084, 3694130), (37, 3748322, 3748368), (41, 2825761, 2825807), (43, 3418801, 3418847)]

def row047_layer010_block000 : List ColouredInterval :=
  [(2, 2228224, 2228270), (2, 2359296, 2359342), (2, 2621440, 2621486), (2, 2883584, 2883630), (2, 3145728, 3145774), (2, 3407872, 3407918), (2, 3670016, 3670062), (2, 3932160, 3932206), (2, 4194304, 4194350), (2, 2621440, 2621486), (2, 3145728, 3145774), (2, 3670016, 3670062), (2, 4194304, 4194350), (2, 3145728, 3145774), (2, 4194304, 4194350), (2, 4194304, 4194350)]

def row047_layer010_block001 : List ColouredInterval :=
  [(2, 4194304, 4194350), (3, 2302911, 2302957), (3, 2480058, 2480104), (3, 2657205, 2657251), (3, 2834352, 2834398), (3, 3011499, 3011545), (3, 2657205, 2657251), (3, 3188646, 3188692), (3, 3720087, 3720133), (3, 4251528, 4251574), (3, 3188646, 3188692), (5, 2343750, 2343796), (5, 2734375, 2734421), (5, 3125000, 3125046), (5, 3515625, 3515671), (5, 3906250, 3906296)]

def row047_layer010_block002 : List ColouredInterval :=
  [(5, 4296875, 4296921), (5, 3906250, 3906296), (7, 2470629, 2470675), (7, 3294172, 3294218), (7, 4117715, 4117761), (11, 2254714, 2254760), (11, 2415765, 2415811), (11, 2576816, 2576862), (11, 2737867, 2737913), (11, 3543122, 3543168), (13, 2227758, 2227804), (13, 2599051, 2599097), (13, 2970344, 2970390), (13, 3341637, 3341683), (13, 3712930, 3712976), (13, 4084223, 4084269)]

def row047_layer010_block003 : List ColouredInterval :=
  [(17, 2839714, 2839760), (17, 4259571, 4259617), (19, 2215457, 2215503), (19, 2476099, 2476145), (23, 2238728, 2238774), (23, 2518569, 2518615), (23, 2798410, 2798456), (23, 3078251, 3078297), (23, 3358092, 3358138), (23, 3637933, 3637979), (23, 3917774, 3917820), (23, 4197615, 4197661), (29, 2829124, 2829170), (29, 3536405, 3536451), (29, 4243686, 4243732), (31, 2770563, 2770609)]

def row047_layer010_block004 : List ColouredInterval :=
  [(31, 3694084, 3694130), (37, 3748322, 3748368), (41, 2825761, 2825807), (43, 3418801, 3418847)]

def row047_layer010_chunks : List (List ColouredInterval) :=
  [row047_layer010_block000, row047_layer010_block001, row047_layer010_block002, row047_layer010_block003, row047_layer010_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer010_intervals
