import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs006 :
    row075_layer002_block006.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs007 :
    row075_layer002_block007.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs008 :
    row075_layer002_block008.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs009 :
    row075_layer002_block009.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs010 :
    row075_layer002_block010.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs011 :
    row075_layer002_block011.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs012 :
    row075_layer002_block012.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_chunks_eq : row075_layer002_chunks.flatten = row075_layer002_intervals := by
  rfl

theorem row075_layer002_pairs : pairCoverCheck row075_layer002_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer002_chunks_eq
  intro block hblock
  simp only [row075_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row075_layer002_pairs000
  · exact row075_layer002_pairs001
  · exact row075_layer002_pairs002
  · exact row075_layer002_pairs003
  · exact row075_layer002_pairs004
  · exact row075_layer002_pairs005
  · exact row075_layer002_pairs006
  · exact row075_layer002_pairs007
  · exact row075_layer002_pairs008
  · exact row075_layer002_pairs009
  · exact row075_layer002_pairs010
  · exact row075_layer002_pairs011
  · exact row075_layer002_pairs012

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_checked :
    coverLayerCheck row075.height row075.goods { lower := 22200, upper := 44400, M := 26 } = true := by
  exact coverLayerCheck_of_parts row075_layer002_arithmetic row075_layer002_enumeration row075_bounds_eq row075_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer003_intervals : List ColouredInterval :=
  [(2, 45056, 45130), (2, 47104, 47178), (2, 45056, 45130), (2, 49152, 49226), (2, 53248, 53322), (2, 57344, 57418), (2, 61440, 61514), (2, 65536, 65610), (2, 69632, 69706), (2, 73728, 73802), (2, 77824, 77898), (2, 81920, 81994), (2, 86016, 86090), (2, 49152, 49226), (2, 57344, 57418), (2, 65536, 65610), (2, 73728, 73802), (2, 81920, 81994), (2, 49152, 49226), (2, 65536, 65610), (2, 81920, 81994), (2, 65536, 65610), (2, 65536, 65610), (3, 45927, 46001), (3, 59049, 59123), (3, 78732, 78806), (3, 59049, 59123), (7, 45619, 45693), (7, 48020, 48094), (7, 50421, 50495), (7, 52822, 52896), (7, 55223, 55297), (7, 50421, 50495), (7, 67228, 67302), (7, 84035, 84109), (11, 58564, 58638), (11, 73205, 73279), (11, 87846, 87920), (13, 46137, 46211), (13, 48334, 48408), (13, 50531, 50605), (13, 57122, 57196), (13, 85683, 85757), (17, 49130, 49204), (17, 54043, 54117), (17, 58956, 59030), (17, 63869, 63943), (17, 68782, 68856), (17, 73695, 73769), (17, 78608, 78682), (17, 83521, 83595), (17, 88434, 88508), (17, 83521, 83595), (19, 48013, 48087), (19, 54872, 54946), (19, 61731, 61805), (19, 68590, 68664), (19, 75449, 75523), (19, 82308, 82382), (23, 48668, 48742), (23, 60835, 60909), (23, 73002, 73076), (23, 85169, 85243), (29, 48778, 48852), (29, 73167, 73241), (31, 59582, 59656), (37, 50653, 50727), (41, 68921, 68995), (43, 79507, 79581), (47, 46389, 46463), (47, 48598, 48672), (47, 50807, 50881), (53, 44944, 45018), (53, 47753, 47827), (53, 50562, 50636), (53, 53371, 53445), (53, 56180, 56254), (53, 58989, 59063), (53, 61798, 61872), (53, 64607, 64681), (59, 45253, 45327), (59, 48734, 48808), (59, 52215, 52289), (59, 55696, 55770), (59, 59177, 59251), (59, 62658, 62732), (59, 66139, 66213), (59, 69620, 69694), (59, 73101, 73175), (59, 76582, 76656), (59, 80063, 80137), (61, 44652, 44726), (61, 48373, 48447), (61, 52094, 52168), (61, 55815, 55889), (61, 59536, 59610), (61, 63257, 63331), (61, 66978, 67052), (61, 70699, 70773), (61, 74420, 74494), (61, 78141, 78215), (61, 81862, 81936), (61, 85583, 85657), (67, 44890, 44964), (67, 49379, 49453), (67, 53868, 53942), (67, 58357, 58431), (67, 62846, 62920), (67, 67335, 67409), (67, 71824, 71898), (67, 76313, 76387), (67, 80802, 80876), (67, 85291, 85365), (71, 45369, 45443), (71, 50410, 50484), (71, 55451, 55525), (71, 60492, 60566), (71, 65533, 65607), (71, 70574, 70648), (71, 75615, 75689), (71, 80656, 80730), (71, 85697, 85771), (73, 47961, 48035), (73, 53290, 53364), (73, 58619, 58693), (73, 63948, 64022), (73, 69277, 69351), (73, 74606, 74680), (73, 79935, 80009), (73, 85264, 85338)]

def row075_layer003_block000 : List ColouredInterval :=
  [(2, 45056, 45130), (2, 47104, 47178), (2, 45056, 45130), (2, 49152, 49226), (2, 53248, 53322), (2, 57344, 57418), (2, 61440, 61514), (2, 65536, 65610), (2, 69632, 69706), (2, 73728, 73802), (2, 77824, 77898), (2, 81920, 81994), (2, 86016, 86090), (2, 49152, 49226), (2, 57344, 57418)]

def row075_layer003_block001 : List ColouredInterval :=
  [(2, 65536, 65610), (2, 73728, 73802), (2, 81920, 81994), (2, 49152, 49226), (2, 65536, 65610), (2, 81920, 81994), (2, 65536, 65610), (2, 65536, 65610), (3, 45927, 46001), (3, 59049, 59123), (3, 78732, 78806), (3, 59049, 59123), (7, 45619, 45693), (7, 48020, 48094), (7, 50421, 50495)]

def row075_layer003_block002 : List ColouredInterval :=
  [(7, 52822, 52896), (7, 55223, 55297), (7, 50421, 50495), (7, 67228, 67302), (7, 84035, 84109), (11, 58564, 58638), (11, 73205, 73279), (11, 87846, 87920), (13, 46137, 46211), (13, 48334, 48408), (13, 50531, 50605), (13, 57122, 57196), (13, 85683, 85757), (17, 49130, 49204), (17, 54043, 54117)]

def row075_layer003_block003 : List ColouredInterval :=
  [(17, 58956, 59030), (17, 63869, 63943), (17, 68782, 68856), (17, 73695, 73769), (17, 78608, 78682), (17, 83521, 83595), (17, 88434, 88508), (17, 83521, 83595), (19, 48013, 48087), (19, 54872, 54946), (19, 61731, 61805), (19, 68590, 68664), (19, 75449, 75523), (19, 82308, 82382), (23, 48668, 48742)]

def row075_layer003_block004 : List ColouredInterval :=
  [(23, 60835, 60909), (23, 73002, 73076), (23, 85169, 85243), (29, 48778, 48852), (29, 73167, 73241), (31, 59582, 59656), (37, 50653, 50727), (41, 68921, 68995), (43, 79507, 79581), (47, 46389, 46463), (47, 48598, 48672), (47, 50807, 50881), (53, 44944, 45018), (53, 47753, 47827), (53, 50562, 50636)]

def row075_layer003_block005 : List ColouredInterval :=
  [(53, 53371, 53445), (53, 56180, 56254), (53, 58989, 59063), (53, 61798, 61872), (53, 64607, 64681), (59, 45253, 45327), (59, 48734, 48808), (59, 52215, 52289), (59, 55696, 55770), (59, 59177, 59251), (59, 62658, 62732), (59, 66139, 66213), (59, 69620, 69694), (59, 73101, 73175), (59, 76582, 76656)]

def row075_layer003_block006 : List ColouredInterval :=
  [(59, 80063, 80137), (61, 44652, 44726), (61, 48373, 48447), (61, 52094, 52168), (61, 55815, 55889), (61, 59536, 59610), (61, 63257, 63331), (61, 66978, 67052), (61, 70699, 70773), (61, 74420, 74494), (61, 78141, 78215), (61, 81862, 81936), (61, 85583, 85657), (67, 44890, 44964), (67, 49379, 49453)]

def row075_layer003_block007 : List ColouredInterval :=
  [(67, 53868, 53942), (67, 58357, 58431), (67, 62846, 62920), (67, 67335, 67409), (67, 71824, 71898), (67, 76313, 76387), (67, 80802, 80876), (67, 85291, 85365), (71, 45369, 45443), (71, 50410, 50484), (71, 55451, 55525), (71, 60492, 60566), (71, 65533, 65607), (71, 70574, 70648), (71, 75615, 75689)]

def row075_layer003_block008 : List ColouredInterval :=
  [(71, 80656, 80730), (71, 85697, 85771), (73, 47961, 48035), (73, 53290, 53364), (73, 58619, 58693), (73, 63948, 64022), (73, 69277, 69351), (73, 74606, 74680), (73, 79935, 80009), (73, 85264, 85338)]

def row075_layer003_chunks : List (List ColouredInterval) :=
  [row075_layer003_block000, row075_layer003_block001, row075_layer003_block002, row075_layer003_block003, row075_layer003_block004, row075_layer003_block005, row075_layer003_block006, row075_layer003_block007, row075_layer003_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_arithmetic : LayerArithmeticValid row075.height { lower := 44400, upper := 88800, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_enumeration :
    activePowerIntervalList 75 23 44400 88800 = row075_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs000 :
    row075_layer003_block000.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs001 :
    row075_layer003_block001.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs002 :
    row075_layer003_block002.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs003 :
    row075_layer003_block003.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs004 :
    row075_layer003_block004.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs005 :
    row075_layer003_block005.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs006 :
    row075_layer003_block006.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs007 :
    row075_layer003_block007.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_pairs008 :
    row075_layer003_block008.all (fun I => row075_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_chunks_eq : row075_layer003_chunks.flatten = row075_layer003_intervals := by
  rfl

theorem row075_layer003_pairs : pairCoverCheck row075_layer003_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer003_chunks_eq
  intro block hblock
  simp only [row075_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row075_layer003_pairs000
  · exact row075_layer003_pairs001
  · exact row075_layer003_pairs002
  · exact row075_layer003_pairs003
  · exact row075_layer003_pairs004
  · exact row075_layer003_pairs005
  · exact row075_layer003_pairs006
  · exact row075_layer003_pairs007
  · exact row075_layer003_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer003_checked :
    coverLayerCheck row075.height row075.goods { lower := 44400, upper := 88800, M := 23 } = true := by
  exact coverLayerCheck_of_parts row075_layer003_arithmetic row075_layer003_enumeration row075_bounds_eq row075_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer004_intervals : List ColouredInterval :=
  [(2, 90112, 90186), (2, 98304, 98378), (2, 106496, 106570), (2, 114688, 114762), (2, 122880, 122954), (2, 131072, 131146), (2, 139264, 139338), (2, 147456, 147530), (2, 155648, 155722), (2, 163840, 163914), (2, 172032, 172106), (2, 98304, 98378), (2, 114688, 114762), (2, 131072, 131146), (2, 147456, 147530), (2, 163840, 163914), (2, 98304, 98378), (2, 131072, 131146), (2, 163840, 163914), (2, 131072, 131146), (2, 131072, 131146), (3, 98415, 98489), (3, 118098, 118172), (3, 137781, 137855), (3, 118098, 118172), (3, 177147, 177221), (3, 177147, 177221), (7, 100842, 100916), (7, 117649, 117723), (7, 134456, 134530), (7, 151263, 151337), (7, 168070, 168144), (7, 117649, 117723), (11, 102487, 102561), (11, 117128, 117202), (11, 131769, 131843), (11, 146410, 146484), (11, 161051, 161125), (11, 175692, 175766), (11, 161051, 161125), (13, 114244, 114318), (13, 142805, 142879), (13, 171366, 171440), (17, 93347, 93421), (17, 98260, 98334), (17, 103173, 103247), (17, 167042, 167116), (19, 89167, 89241), (19, 96026, 96100), (19, 102885, 102959), (19, 109744, 109818), (19, 116603, 116677), (19, 123462, 123536), (19, 130321, 130395), (19, 137180, 137254), (19, 144039, 144113), (19, 130321, 130395), (23, 97336, 97410), (23, 109503, 109577), (23, 121670, 121744), (23, 133837, 133911), (23, 146004, 146078), (23, 158171, 158245), (23, 170338, 170412), (29, 97556, 97630), (29, 121945, 122019), (29, 146334, 146408), (29, 170723, 170797), (31, 89373, 89447), (31, 119164, 119238), (31, 148955, 149029), (37, 101306, 101380), (37, 151959, 152033), (41, 137842, 137916), (43, 159014, 159088), (47, 103823, 103897), (53, 148877, 148951), (67, 89780, 89854), (67, 94269, 94343), (71, 90738, 90812), (71, 95779, 95853), (71, 100820, 100894), (71, 105861, 105935), (73, 90593, 90667), (73, 95922, 95996), (73, 101251, 101325), (73, 106580, 106654), (73, 111909, 111983)]

def row075_layer004_block000 : List ColouredInterval :=
  [(2, 90112, 90186), (2, 98304, 98378), (2, 106496, 106570), (2, 114688, 114762), (2, 122880, 122954), (2, 131072, 131146), (2, 139264, 139338), (2, 147456, 147530), (2, 155648, 155722), (2, 163840, 163914), (2, 172032, 172106), (2, 98304, 98378), (2, 114688, 114762), (2, 131072, 131146), (2, 147456, 147530), (2, 163840, 163914)]

def row075_layer004_block001 : List ColouredInterval :=
  [(2, 98304, 98378), (2, 131072, 131146), (2, 163840, 163914), (2, 131072, 131146), (2, 131072, 131146), (3, 98415, 98489), (3, 118098, 118172), (3, 137781, 137855), (3, 118098, 118172), (3, 177147, 177221), (3, 177147, 177221), (7, 100842, 100916), (7, 117649, 117723), (7, 134456, 134530), (7, 151263, 151337), (7, 168070, 168144)]

def row075_layer004_block002 : List ColouredInterval :=
  [(7, 117649, 117723), (11, 102487, 102561), (11, 117128, 117202), (11, 131769, 131843), (11, 146410, 146484), (11, 161051, 161125), (11, 175692, 175766), (11, 161051, 161125), (13, 114244, 114318), (13, 142805, 142879), (13, 171366, 171440), (17, 93347, 93421), (17, 98260, 98334), (17, 103173, 103247), (17, 167042, 167116), (19, 89167, 89241)]

def row075_layer004_block003 : List ColouredInterval :=
  [(19, 96026, 96100), (19, 102885, 102959), (19, 109744, 109818), (19, 116603, 116677), (19, 123462, 123536), (19, 130321, 130395), (19, 137180, 137254), (19, 144039, 144113), (19, 130321, 130395), (23, 97336, 97410), (23, 109503, 109577), (23, 121670, 121744), (23, 133837, 133911), (23, 146004, 146078), (23, 158171, 158245), (23, 170338, 170412)]

def row075_layer004_block004 : List ColouredInterval :=
  [(29, 97556, 97630), (29, 121945, 122019), (29, 146334, 146408), (29, 170723, 170797), (31, 89373, 89447), (31, 119164, 119238), (31, 148955, 149029), (37, 101306, 101380), (37, 151959, 152033), (41, 137842, 137916), (43, 159014, 159088), (47, 103823, 103897), (53, 148877, 148951), (67, 89780, 89854), (67, 94269, 94343), (71, 90738, 90812)]

def row075_layer004_block005 : List ColouredInterval :=
  [(71, 95779, 95853), (71, 100820, 100894), (71, 105861, 105935), (73, 90593, 90667), (73, 95922, 95996), (73, 101251, 101325), (73, 106580, 106654), (73, 111909, 111983)]

def row075_layer004_chunks : List (List ColouredInterval) :=
  [row075_layer004_block000, row075_layer004_block001, row075_layer004_block002, row075_layer004_block003, row075_layer004_block004, row075_layer004_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_arithmetic : LayerArithmeticValid row075.height { lower := 88800, upper := 177600, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_enumeration :
    activePowerIntervalList 75 21 88800 177600 = row075_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_pairs000 :
    row075_layer004_block000.all (fun I => row075_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_pairs001 :
    row075_layer004_block001.all (fun I => row075_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_pairs002 :
    row075_layer004_block002.all (fun I => row075_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_pairs003 :
    row075_layer004_block003.all (fun I => row075_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_pairs004 :
    row075_layer004_block004.all (fun I => row075_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_pairs004
