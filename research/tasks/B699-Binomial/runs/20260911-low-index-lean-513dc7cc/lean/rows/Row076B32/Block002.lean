import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs010 :
    row076_layer002_block010.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_chunks_eq : row076_layer002_chunks.flatten = row076_layer002_intervals := by
  rfl

theorem row076_layer002_pairs : pairCoverCheck row076_layer002_intervals row076_bounds = true := by
  apply pairCoverCheck_of_chunks row076_layer002_chunks_eq
  intro block hblock
  simp only [row076_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row076_layer002_pairs000
  · exact row076_layer002_pairs001
  · exact row076_layer002_pairs002
  · exact row076_layer002_pairs003
  · exact row076_layer002_pairs004
  · exact row076_layer002_pairs005
  · exact row076_layer002_pairs006
  · exact row076_layer002_pairs007
  · exact row076_layer002_pairs008
  · exact row076_layer002_pairs009
  · exact row076_layer002_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_checked :
    coverLayerCheck row076.height row076.goods { lower := 22800, upper := 45600, M := 24 } = true := by
  exact coverLayerCheck_of_parts row076_layer002_arithmetic row076_layer002_enumeration row076_bounds_eq row076_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_layer003_intervals : List ColouredInterval :=
  [(2, 49152, 49227), (2, 65536, 65611), (2, 81920, 81995), (2, 65536, 65611), (2, 65536, 65611), (3, 45927, 46002), (3, 45927, 46002), (3, 52488, 52563), (3, 59049, 59124), (3, 65610, 65685), (3, 72171, 72246), (3, 78732, 78807), (3, 85293, 85368), (3, 59049, 59124), (3, 78732, 78807), (3, 59049, 59124), (5, 46875, 46950), (5, 50000, 50075), (5, 53125, 53200), (5, 56250, 56325), (5, 59375, 59450), (5, 62500, 62575), (5, 65625, 65700), (5, 46875, 46950), (5, 62500, 62575), (5, 78125, 78200), (5, 78125, 78200), (7, 45619, 45694), (7, 48020, 48095), (7, 50421, 50496), (7, 50421, 50496), (7, 67228, 67303), (7, 84035, 84110), (11, 58564, 58639), (11, 73205, 73280), (11, 87846, 87921), (13, 46137, 46212), (13, 57122, 57197), (13, 85683, 85758), (17, 49130, 49205), (17, 54043, 54118), (17, 58956, 59031), (17, 63869, 63944), (17, 68782, 68857), (17, 73695, 73770), (17, 78608, 78683), (17, 83521, 83596), (17, 88434, 88509), (17, 83521, 83596), (23, 48668, 48743), (23, 60835, 60910), (23, 73002, 73077), (23, 85169, 85244), (29, 48778, 48853), (29, 73167, 73242), (31, 59582, 59657), (31, 89373, 89448), (37, 50653, 50728), (41, 68921, 68996), (43, 79507, 79582), (47, 46389, 46464), (53, 47753, 47828), (53, 50562, 50637), (53, 53371, 53446), (53, 56180, 56255), (53, 58989, 59064), (59, 48734, 48809), (59, 52215, 52290), (59, 55696, 55771), (59, 59177, 59252), (59, 62658, 62733), (59, 66139, 66214), (59, 69620, 69695), (59, 73101, 73176), (61, 48373, 48448), (61, 52094, 52169), (61, 55815, 55890), (61, 59536, 59611), (61, 63257, 63332), (61, 66978, 67053), (61, 70699, 70774), (61, 74420, 74495), (61, 78141, 78216), (67, 49379, 49454), (67, 53868, 53943), (67, 58357, 58432), (67, 62846, 62921), (67, 67335, 67410), (67, 71824, 71899), (67, 76313, 76388), (67, 80802, 80877), (67, 85291, 85366), (67, 89780, 89855), (71, 50410, 50485), (71, 55451, 55526), (71, 60492, 60567), (71, 65533, 65608), (71, 70574, 70649), (71, 75615, 75690), (71, 80656, 80731), (71, 85697, 85772), (71, 90738, 90813), (73, 47961, 48036), (73, 53290, 53365), (73, 58619, 58694), (73, 63948, 64023), (73, 69277, 69352), (73, 74606, 74681), (73, 79935, 80010), (73, 85264, 85339), (73, 90593, 90668)]

def row076_layer003_block000 : List ColouredInterval :=
  [(2, 49152, 49227), (2, 65536, 65611), (2, 81920, 81995), (2, 65536, 65611), (2, 65536, 65611), (3, 45927, 46002), (3, 45927, 46002), (3, 52488, 52563), (3, 59049, 59124), (3, 65610, 65685), (3, 72171, 72246), (3, 78732, 78807), (3, 85293, 85368), (3, 59049, 59124), (3, 78732, 78807), (3, 59049, 59124)]

def row076_layer003_block001 : List ColouredInterval :=
  [(5, 46875, 46950), (5, 50000, 50075), (5, 53125, 53200), (5, 56250, 56325), (5, 59375, 59450), (5, 62500, 62575), (5, 65625, 65700), (5, 46875, 46950), (5, 62500, 62575), (5, 78125, 78200), (5, 78125, 78200), (7, 45619, 45694), (7, 48020, 48095), (7, 50421, 50496), (7, 50421, 50496), (7, 67228, 67303)]

def row076_layer003_block002 : List ColouredInterval :=
  [(7, 84035, 84110), (11, 58564, 58639), (11, 73205, 73280), (11, 87846, 87921), (13, 46137, 46212), (13, 57122, 57197), (13, 85683, 85758), (17, 49130, 49205), (17, 54043, 54118), (17, 58956, 59031), (17, 63869, 63944), (17, 68782, 68857), (17, 73695, 73770), (17, 78608, 78683), (17, 83521, 83596), (17, 88434, 88509)]

def row076_layer003_block003 : List ColouredInterval :=
  [(17, 83521, 83596), (23, 48668, 48743), (23, 60835, 60910), (23, 73002, 73077), (23, 85169, 85244), (29, 48778, 48853), (29, 73167, 73242), (31, 59582, 59657), (31, 89373, 89448), (37, 50653, 50728), (41, 68921, 68996), (43, 79507, 79582), (47, 46389, 46464), (53, 47753, 47828), (53, 50562, 50637), (53, 53371, 53446)]

def row076_layer003_block004 : List ColouredInterval :=
  [(53, 56180, 56255), (53, 58989, 59064), (59, 48734, 48809), (59, 52215, 52290), (59, 55696, 55771), (59, 59177, 59252), (59, 62658, 62733), (59, 66139, 66214), (59, 69620, 69695), (59, 73101, 73176), (61, 48373, 48448), (61, 52094, 52169), (61, 55815, 55890), (61, 59536, 59611), (61, 63257, 63332), (61, 66978, 67053)]

def row076_layer003_block005 : List ColouredInterval :=
  [(61, 70699, 70774), (61, 74420, 74495), (61, 78141, 78216), (67, 49379, 49454), (67, 53868, 53943), (67, 58357, 58432), (67, 62846, 62921), (67, 67335, 67410), (67, 71824, 71899), (67, 76313, 76388), (67, 80802, 80877), (67, 85291, 85366), (67, 89780, 89855), (71, 50410, 50485), (71, 55451, 55526), (71, 60492, 60567)]

def row076_layer003_block006 : List ColouredInterval :=
  [(71, 65533, 65608), (71, 70574, 70649), (71, 75615, 75690), (71, 80656, 80731), (71, 85697, 85772), (71, 90738, 90813), (73, 47961, 48036), (73, 53290, 53365), (73, 58619, 58694), (73, 63948, 64023), (73, 69277, 69352), (73, 74606, 74681), (73, 79935, 80010), (73, 85264, 85339), (73, 90593, 90668)]

def row076_layer003_chunks : List (List ColouredInterval) :=
  [row076_layer003_block000, row076_layer003_block001, row076_layer003_block002, row076_layer003_block003, row076_layer003_block004, row076_layer003_block005, row076_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_arithmetic : LayerArithmeticValid row076.height { lower := 45600, upper := 91200, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_enumeration :
    activePowerIntervalList 76 21 45600 91200 = row076_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_pairs000 :
    row076_layer003_block000.all (fun I => row076_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_pairs001 :
    row076_layer003_block001.all (fun I => row076_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_pairs002 :
    row076_layer003_block002.all (fun I => row076_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_pairs003 :
    row076_layer003_block003.all (fun I => row076_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_pairs004 :
    row076_layer003_block004.all (fun I => row076_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_pairs005 :
    row076_layer003_block005.all (fun I => row076_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_pairs006 :
    row076_layer003_block006.all (fun I => row076_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_chunks_eq : row076_layer003_chunks.flatten = row076_layer003_intervals := by
  rfl

theorem row076_layer003_pairs : pairCoverCheck row076_layer003_intervals row076_bounds = true := by
  apply pairCoverCheck_of_chunks row076_layer003_chunks_eq
  intro block hblock
  simp only [row076_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row076_layer003_pairs000
  · exact row076_layer003_pairs001
  · exact row076_layer003_pairs002
  · exact row076_layer003_pairs003
  · exact row076_layer003_pairs004
  · exact row076_layer003_pairs005
  · exact row076_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer003_checked :
    coverLayerCheck row076.height row076.goods { lower := 45600, upper := 91200, M := 21 } = true := by
  exact coverLayerCheck_of_parts row076_layer003_arithmetic row076_layer003_enumeration row076_bounds_eq row076_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_layer005_intervals : List ColouredInterval :=
  [(2, 196608, 196683), (2, 262144, 262219), (2, 262144, 262219), (2, 262144, 262219), (3, 196830, 196905), (3, 216513, 216588), (3, 236196, 236271), (3, 255879, 255954), (3, 275562, 275637), (3, 295245, 295320), (3, 314928, 315003), (3, 236196, 236271), (3, 295245, 295320), (3, 354294, 354369), (3, 354294, 354369), (5, 187500, 187575), (5, 203125, 203200), (5, 218750, 218825), (5, 234375, 234450), (5, 250000, 250075), (5, 234375, 234450), (5, 312500, 312575), (7, 184877, 184952), (7, 201684, 201759), (7, 218491, 218566), (7, 235298, 235373), (7, 252105, 252180), (7, 268912, 268987), (7, 235298, 235373), (7, 352947, 353022), (11, 190333, 190408), (11, 204974, 205049), (11, 219615, 219690), (11, 234256, 234331), (11, 322102, 322177), (13, 199927, 200002), (13, 228488, 228563), (13, 257049, 257124), (13, 285610, 285685), (13, 314171, 314246), (13, 342732, 342807), (17, 250563, 250638), (17, 334084, 334159), (23, 182505, 182580), (23, 194672, 194747), (23, 279841, 279916), (29, 195112, 195187), (29, 219501, 219576), (29, 243890, 243965), (29, 268279, 268354), (29, 292668, 292743), (29, 317057, 317132), (29, 341446, 341521), (31, 208537, 208612), (31, 238328, 238403), (31, 268119, 268194), (31, 297910, 297985), (31, 327701, 327776), (31, 357492, 357567), (37, 202612, 202687), (37, 253265, 253340), (37, 303918, 303993), (37, 354571, 354646), (41, 206763, 206838), (41, 275684, 275759), (41, 344605, 344680), (43, 238521, 238596), (43, 318028, 318103), (47, 207646, 207721), (47, 311469, 311544), (53, 297754, 297829), (59, 205379, 205454), (61, 226981, 227056), (67, 300763, 300838), (71, 357911, 357986)]

def row076_layer005_block000 : List ColouredInterval :=
  [(2, 196608, 196683), (2, 262144, 262219), (2, 262144, 262219), (2, 262144, 262219), (3, 196830, 196905), (3, 216513, 216588), (3, 236196, 236271), (3, 255879, 255954), (3, 275562, 275637), (3, 295245, 295320), (3, 314928, 315003), (3, 236196, 236271), (3, 295245, 295320), (3, 354294, 354369), (3, 354294, 354369), (5, 187500, 187575)]

def row076_layer005_block001 : List ColouredInterval :=
  [(5, 203125, 203200), (5, 218750, 218825), (5, 234375, 234450), (5, 250000, 250075), (5, 234375, 234450), (5, 312500, 312575), (7, 184877, 184952), (7, 201684, 201759), (7, 218491, 218566), (7, 235298, 235373), (7, 252105, 252180), (7, 268912, 268987), (7, 235298, 235373), (7, 352947, 353022), (11, 190333, 190408), (11, 204974, 205049)]

def row076_layer005_block002 : List ColouredInterval :=
  [(11, 219615, 219690), (11, 234256, 234331), (11, 322102, 322177), (13, 199927, 200002), (13, 228488, 228563), (13, 257049, 257124), (13, 285610, 285685), (13, 314171, 314246), (13, 342732, 342807), (17, 250563, 250638), (17, 334084, 334159), (23, 182505, 182580), (23, 194672, 194747), (23, 279841, 279916), (29, 195112, 195187), (29, 219501, 219576)]

def row076_layer005_block003 : List ColouredInterval :=
  [(29, 243890, 243965), (29, 268279, 268354), (29, 292668, 292743), (29, 317057, 317132), (29, 341446, 341521), (31, 208537, 208612), (31, 238328, 238403), (31, 268119, 268194), (31, 297910, 297985), (31, 327701, 327776), (31, 357492, 357567), (37, 202612, 202687), (37, 253265, 253340), (37, 303918, 303993), (37, 354571, 354646), (41, 206763, 206838)]

def row076_layer005_block004 : List ColouredInterval :=
  [(41, 275684, 275759), (41, 344605, 344680), (43, 238521, 238596), (43, 318028, 318103), (47, 207646, 207721), (47, 311469, 311544), (53, 297754, 297829), (59, 205379, 205454), (61, 226981, 227056), (67, 300763, 300838), (71, 357911, 357986)]

def row076_layer005_chunks : List (List ColouredInterval) :=
  [row076_layer005_block000, row076_layer005_block001, row076_layer005_block002, row076_layer005_block003, row076_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_arithmetic : LayerArithmeticValid row076.height { lower := 182400, upper := 364800, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_enumeration :
    activePowerIntervalList 76 16 182400 364800 = row076_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_pairs000 :
    row076_layer005_block000.all (fun I => row076_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_pairs001 :
    row076_layer005_block001.all (fun I => row076_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_pairs002 :
    row076_layer005_block002.all (fun I => row076_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_pairs003 :
    row076_layer005_block003.all (fun I => row076_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_pairs004 :
    row076_layer005_block004.all (fun I => row076_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_chunks_eq : row076_layer005_chunks.flatten = row076_layer005_intervals := by
  rfl

theorem row076_layer005_pairs : pairCoverCheck row076_layer005_intervals row076_bounds = true := by
  apply pairCoverCheck_of_chunks row076_layer005_chunks_eq
  intro block hblock
  simp only [row076_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row076_layer005_pairs000
  · exact row076_layer005_pairs001
  · exact row076_layer005_pairs002
  · exact row076_layer005_pairs003
  · exact row076_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer005_checked :
    coverLayerCheck row076.height row076.goods { lower := 182400, upper := 364800, M := 16 } = true := by
  exact coverLayerCheck_of_parts row076_layer005_arithmetic row076_layer005_enumeration row076_bounds_eq row076_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_layer007_intervals : List ColouredInterval :=
  [(2, 786432, 786507), (2, 1048576, 1048651), (2, 1048576, 1048651), (3, 885735, 885810), (3, 1062882, 1062957), (3, 1240029, 1240104), (3, 1417176, 1417251), (3, 1062882, 1062957), (5, 781250, 781325), (5, 859375, 859450), (5, 937500, 937575), (5, 781250, 781325), (5, 1171875, 1171950), (7, 823543, 823618), (7, 941192, 941267), (7, 1058841, 1058916), (7, 1176490, 1176565), (7, 1294139, 1294214), (7, 1411788, 1411863), (7, 823543, 823618), (11, 805255, 805330), (11, 966306, 966381), (11, 1127357, 1127432), (11, 1288408, 1288483), (11, 1449459, 1449534), (13, 742586, 742661), (13, 1113879, 1113954), (17, 751689, 751764), (17, 835210, 835285), (17, 918731, 918806), (17, 1002252, 1002327), (17, 1419857, 1419932), (23, 839523, 839598), (23, 1119364, 1119439), (23, 1399205, 1399280), (29, 1414562, 1414637), (31, 923521, 923596), (41, 758131, 758206), (41, 827052, 827127), (43, 795070, 795145), (43, 874577, 874652), (43, 954084, 954159), (47, 830584, 830659), (47, 934407, 934482), (47, 1038230, 1038305), (47, 1142053, 1142128), (47, 1245876, 1245951), (53, 744385, 744460), (53, 893262, 893337), (53, 1042139, 1042214), (53, 1191016, 1191091), (53, 1339893, 1339968), (59, 821516, 821591), (59, 1026895, 1026970), (59, 1232274, 1232349), (59, 1437653, 1437728), (61, 907924, 907999), (61, 1134905, 1134980), (61, 1361886, 1361961), (67, 902289, 902364), (67, 1203052, 1203127), (71, 1073733, 1073808), (71, 1431644, 1431719), (73, 778034, 778109), (73, 1167051, 1167126)]

def row076_layer007_block000 : List ColouredInterval :=
  [(2, 786432, 786507), (2, 1048576, 1048651), (2, 1048576, 1048651), (3, 885735, 885810), (3, 1062882, 1062957), (3, 1240029, 1240104), (3, 1417176, 1417251), (3, 1062882, 1062957), (5, 781250, 781325), (5, 859375, 859450), (5, 937500, 937575), (5, 781250, 781325), (5, 1171875, 1171950), (7, 823543, 823618), (7, 941192, 941267), (7, 1058841, 1058916)]

def row076_layer007_block001 : List ColouredInterval :=
  [(7, 1176490, 1176565), (7, 1294139, 1294214), (7, 1411788, 1411863), (7, 823543, 823618), (11, 805255, 805330), (11, 966306, 966381), (11, 1127357, 1127432), (11, 1288408, 1288483), (11, 1449459, 1449534), (13, 742586, 742661), (13, 1113879, 1113954), (17, 751689, 751764), (17, 835210, 835285), (17, 918731, 918806), (17, 1002252, 1002327), (17, 1419857, 1419932)]

def row076_layer007_block002 : List ColouredInterval :=
  [(23, 839523, 839598), (23, 1119364, 1119439), (23, 1399205, 1399280), (29, 1414562, 1414637), (31, 923521, 923596), (41, 758131, 758206), (41, 827052, 827127), (43, 795070, 795145), (43, 874577, 874652), (43, 954084, 954159), (47, 830584, 830659), (47, 934407, 934482), (47, 1038230, 1038305), (47, 1142053, 1142128), (47, 1245876, 1245951), (53, 744385, 744460)]

def row076_layer007_block003 : List ColouredInterval :=
  [(53, 893262, 893337), (53, 1042139, 1042214), (53, 1191016, 1191091), (53, 1339893, 1339968), (59, 821516, 821591), (59, 1026895, 1026970), (59, 1232274, 1232349), (59, 1437653, 1437728), (61, 907924, 907999), (61, 1134905, 1134980), (61, 1361886, 1361961), (67, 902289, 902364), (67, 1203052, 1203127), (71, 1073733, 1073808), (71, 1431644, 1431719), (73, 778034, 778109)]

def row076_layer007_block004 : List ColouredInterval :=
  [(73, 1167051, 1167126)]

def row076_layer007_chunks : List (List ColouredInterval) :=
  [row076_layer007_block000, row076_layer007_block001, row076_layer007_block002, row076_layer007_block003, row076_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_arithmetic : LayerArithmeticValid row076.height { lower := 729600, upper := 1459200, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_enumeration :
    activePowerIntervalList 76 12 729600 1459200 = row076_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_pairs000 :
    row076_layer007_block000.all (fun I => row076_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_pairs001 :
    row076_layer007_block001.all (fun I => row076_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer007_pairs002 :
    row076_layer007_block002.all (fun I => row076_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer007_pairs002
