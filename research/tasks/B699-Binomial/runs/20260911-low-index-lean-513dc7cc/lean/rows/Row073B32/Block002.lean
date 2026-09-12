import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs006 :
    row073_layer002_block006.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs007 :
    row073_layer002_block007.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs008 :
    row073_layer002_block008.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs009 :
    row073_layer002_block009.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs010 :
    row073_layer002_block010.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs011 :
    row073_layer002_block011.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_chunks_eq : row073_layer002_chunks.flatten = row073_layer002_intervals := by
  rfl

theorem row073_layer002_pairs : pairCoverCheck row073_layer002_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer002_chunks_eq
  intro block hblock
  simp only [row073_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row073_layer002_pairs000
  · exact row073_layer002_pairs001
  · exact row073_layer002_pairs002
  · exact row073_layer002_pairs003
  · exact row073_layer002_pairs004
  · exact row073_layer002_pairs005
  · exact row073_layer002_pairs006
  · exact row073_layer002_pairs007
  · exact row073_layer002_pairs008
  · exact row073_layer002_pairs009
  · exact row073_layer002_pairs010
  · exact row073_layer002_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_checked :
    coverLayerCheck row073.height row073.goods { lower := 21024, upper := 42048, M := 22 } = true := by
  exact coverLayerCheck_of_parts row073_layer002_arithmetic row073_layer002_enumeration row073_bounds_eq row073_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer003_intervals : List ColouredInterval :=
  [(2, 45056, 45128), (2, 49152, 49224), (2, 53248, 53320), (2, 57344, 57416), (2, 61440, 61512), (2, 65536, 65608), (2, 69632, 69704), (2, 73728, 73800), (2, 77824, 77896), (2, 49152, 49224), (2, 57344, 57416), (2, 65536, 65608), (2, 73728, 73800), (2, 81920, 81992), (2, 49152, 49224), (2, 65536, 65608), (2, 81920, 81992), (2, 65536, 65608), (2, 65536, 65608), (3, 45927, 45999), (3, 52488, 52560), (3, 59049, 59121), (3, 65610, 65682), (3, 72171, 72243), (3, 78732, 78804), (3, 59049, 59121), (3, 78732, 78804), (3, 59049, 59121), (5, 43750, 43822), (5, 46875, 46947), (5, 50000, 50072), (5, 53125, 53197), (5, 56250, 56322), (5, 59375, 59447), (5, 46875, 46947), (5, 62500, 62572), (5, 78125, 78197), (5, 78125, 78197), (7, 43218, 43290), (7, 45619, 45691), (7, 50421, 50493), (7, 67228, 67300), (7, 84035, 84095), (11, 43923, 43995), (11, 58564, 58636), (11, 73205, 73277), (13, 57122, 57194), (17, 44217, 44289), (17, 49130, 49202), (17, 54043, 54115), (17, 58956, 59028), (17, 63869, 63941), (17, 68782, 68854), (17, 73695, 73767), (17, 78608, 78680), (17, 83521, 83593), (17, 83521, 83593), (19, 48013, 48085), (19, 54872, 54944), (19, 61731, 61803), (19, 68590, 68662), (19, 75449, 75521), (19, 82308, 82380), (23, 48668, 48740), (23, 60835, 60907), (23, 73002, 73074), (29, 48778, 48850), (29, 73167, 73239), (31, 59582, 59654), (37, 50653, 50725), (41, 68921, 68993), (43, 79507, 79579), (53, 42135, 42207), (53, 44944, 45016), (53, 47753, 47825), (53, 50562, 50634), (53, 53371, 53443), (59, 45253, 45325), (59, 48734, 48806), (59, 52215, 52287), (59, 55696, 55768), (59, 59177, 59249), (59, 62658, 62730), (59, 66139, 66211), (61, 44652, 44724), (61, 48373, 48445), (61, 52094, 52166), (61, 55815, 55887), (61, 59536, 59608), (61, 63257, 63329), (61, 66978, 67050), (61, 70699, 70771), (67, 44890, 44962), (67, 49379, 49451), (67, 53868, 53940), (67, 58357, 58429), (67, 62846, 62918), (67, 67335, 67407), (67, 71824, 71896), (67, 76313, 76385), (67, 80802, 80874), (71, 45369, 45441), (71, 50410, 50482), (71, 55451, 55523), (71, 60492, 60564), (71, 65533, 65605), (71, 70574, 70646), (71, 75615, 75687), (71, 80656, 80728)]

def row073_layer003_block000 : List ColouredInterval :=
  [(2, 45056, 45128), (2, 49152, 49224), (2, 53248, 53320), (2, 57344, 57416), (2, 61440, 61512), (2, 65536, 65608), (2, 69632, 69704), (2, 73728, 73800), (2, 77824, 77896), (2, 49152, 49224), (2, 57344, 57416), (2, 65536, 65608), (2, 73728, 73800), (2, 81920, 81992), (2, 49152, 49224), (2, 65536, 65608)]

def row073_layer003_block001 : List ColouredInterval :=
  [(2, 81920, 81992), (2, 65536, 65608), (2, 65536, 65608), (3, 45927, 45999), (3, 52488, 52560), (3, 59049, 59121), (3, 65610, 65682), (3, 72171, 72243), (3, 78732, 78804), (3, 59049, 59121), (3, 78732, 78804), (3, 59049, 59121), (5, 43750, 43822), (5, 46875, 46947), (5, 50000, 50072), (5, 53125, 53197)]

def row073_layer003_block002 : List ColouredInterval :=
  [(5, 56250, 56322), (5, 59375, 59447), (5, 46875, 46947), (5, 62500, 62572), (5, 78125, 78197), (5, 78125, 78197), (7, 43218, 43290), (7, 45619, 45691), (7, 50421, 50493), (7, 67228, 67300), (7, 84035, 84095), (11, 43923, 43995), (11, 58564, 58636), (11, 73205, 73277), (13, 57122, 57194), (17, 44217, 44289)]

def row073_layer003_block003 : List ColouredInterval :=
  [(17, 49130, 49202), (17, 54043, 54115), (17, 58956, 59028), (17, 63869, 63941), (17, 68782, 68854), (17, 73695, 73767), (17, 78608, 78680), (17, 83521, 83593), (17, 83521, 83593), (19, 48013, 48085), (19, 54872, 54944), (19, 61731, 61803), (19, 68590, 68662), (19, 75449, 75521), (19, 82308, 82380), (23, 48668, 48740)]

def row073_layer003_block004 : List ColouredInterval :=
  [(23, 60835, 60907), (23, 73002, 73074), (29, 48778, 48850), (29, 73167, 73239), (31, 59582, 59654), (37, 50653, 50725), (41, 68921, 68993), (43, 79507, 79579), (53, 42135, 42207), (53, 44944, 45016), (53, 47753, 47825), (53, 50562, 50634), (53, 53371, 53443), (59, 45253, 45325), (59, 48734, 48806), (59, 52215, 52287)]

def row073_layer003_block005 : List ColouredInterval :=
  [(59, 55696, 55768), (59, 59177, 59249), (59, 62658, 62730), (59, 66139, 66211), (61, 44652, 44724), (61, 48373, 48445), (61, 52094, 52166), (61, 55815, 55887), (61, 59536, 59608), (61, 63257, 63329), (61, 66978, 67050), (61, 70699, 70771), (67, 44890, 44962), (67, 49379, 49451), (67, 53868, 53940), (67, 58357, 58429)]

def row073_layer003_block006 : List ColouredInterval :=
  [(67, 62846, 62918), (67, 67335, 67407), (67, 71824, 71896), (67, 76313, 76385), (67, 80802, 80874), (71, 45369, 45441), (71, 50410, 50482), (71, 55451, 55523), (71, 60492, 60564), (71, 65533, 65605), (71, 70574, 70646), (71, 75615, 75687), (71, 80656, 80728)]

def row073_layer003_chunks : List (List ColouredInterval) :=
  [row073_layer003_block000, row073_layer003_block001, row073_layer003_block002, row073_layer003_block003, row073_layer003_block004, row073_layer003_block005, row073_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_arithmetic : LayerArithmeticValid row073.height { lower := 42048, upper := 84096, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_enumeration :
    activePowerIntervalList 73 19 42048 84096 = row073_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_pairs000 :
    row073_layer003_block000.all (fun I => row073_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_pairs001 :
    row073_layer003_block001.all (fun I => row073_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_pairs002 :
    row073_layer003_block002.all (fun I => row073_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_pairs003 :
    row073_layer003_block003.all (fun I => row073_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_pairs004 :
    row073_layer003_block004.all (fun I => row073_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_pairs005 :
    row073_layer003_block005.all (fun I => row073_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_pairs006 :
    row073_layer003_block006.all (fun I => row073_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_chunks_eq : row073_layer003_chunks.flatten = row073_layer003_intervals := by
  rfl

theorem row073_layer003_pairs : pairCoverCheck row073_layer003_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer003_chunks_eq
  intro block hblock
  simp only [row073_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row073_layer003_pairs000
  · exact row073_layer003_pairs001
  · exact row073_layer003_pairs002
  · exact row073_layer003_pairs003
  · exact row073_layer003_pairs004
  · exact row073_layer003_pairs005
  · exact row073_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer003_checked :
    coverLayerCheck row073.height row073.goods { lower := 42048, upper := 84096, M := 19 } = true := by
  exact coverLayerCheck_of_parts row073_layer003_arithmetic row073_layer003_enumeration row073_bounds_eq row073_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer004_intervals : List ColouredInterval :=
  [(2, 90112, 90184), (2, 98304, 98376), (2, 106496, 106568), (2, 114688, 114760), (2, 122880, 122952), (2, 131072, 131144), (2, 139264, 139336), (2, 98304, 98376), (2, 114688, 114760), (2, 131072, 131144), (2, 147456, 147528), (2, 163840, 163912), (2, 98304, 98376), (2, 131072, 131144), (2, 163840, 163912), (2, 131072, 131144), (2, 131072, 131144), (3, 85293, 85365), (3, 91854, 91926), (3, 98415, 98487), (3, 104976, 105048), (3, 111537, 111609), (3, 98415, 98487), (3, 118098, 118170), (3, 137781, 137853), (3, 157464, 157536), (3, 118098, 118170), (5, 93750, 93822), (5, 109375, 109447), (5, 125000, 125072), (5, 140625, 140697), (5, 156250, 156322), (5, 156250, 156322), (7, 84096, 84107), (7, 100842, 100914), (7, 117649, 117721), (7, 134456, 134528), (7, 151263, 151335), (7, 168070, 168142), (7, 117649, 117721), (11, 87846, 87918), (11, 102487, 102559), (11, 117128, 117200), (11, 131769, 131841), (11, 146410, 146482), (11, 161051, 161123), (11, 161051, 161123), (13, 85683, 85755), (13, 114244, 114316), (13, 142805, 142877), (17, 167042, 167114), (19, 89167, 89239), (19, 96026, 96098), (19, 102885, 102957), (19, 109744, 109816), (19, 116603, 116675), (19, 130321, 130393), (23, 85169, 85241), (23, 97336, 97408), (23, 109503, 109575), (23, 121670, 121742), (23, 133837, 133909), (23, 146004, 146076), (23, 158171, 158243), (29, 97556, 97628), (29, 121945, 122017), (29, 146334, 146406), (31, 89373, 89445), (31, 119164, 119236), (31, 148955, 149027), (37, 101306, 101378), (37, 151959, 152031), (41, 137842, 137914), (43, 159014, 159086), (47, 103823, 103895), (53, 148877, 148949), (71, 85697, 85769)]

def row073_layer004_block000 : List ColouredInterval :=
  [(2, 90112, 90184), (2, 98304, 98376), (2, 106496, 106568), (2, 114688, 114760), (2, 122880, 122952), (2, 131072, 131144), (2, 139264, 139336), (2, 98304, 98376), (2, 114688, 114760), (2, 131072, 131144), (2, 147456, 147528), (2, 163840, 163912), (2, 98304, 98376), (2, 131072, 131144), (2, 163840, 163912), (2, 131072, 131144)]

def row073_layer004_block001 : List ColouredInterval :=
  [(2, 131072, 131144), (3, 85293, 85365), (3, 91854, 91926), (3, 98415, 98487), (3, 104976, 105048), (3, 111537, 111609), (3, 98415, 98487), (3, 118098, 118170), (3, 137781, 137853), (3, 157464, 157536), (3, 118098, 118170), (5, 93750, 93822), (5, 109375, 109447), (5, 125000, 125072), (5, 140625, 140697), (5, 156250, 156322)]

def row073_layer004_block002 : List ColouredInterval :=
  [(5, 156250, 156322), (7, 84096, 84107), (7, 100842, 100914), (7, 117649, 117721), (7, 134456, 134528), (7, 151263, 151335), (7, 168070, 168142), (7, 117649, 117721), (11, 87846, 87918), (11, 102487, 102559), (11, 117128, 117200), (11, 131769, 131841), (11, 146410, 146482), (11, 161051, 161123), (11, 161051, 161123), (13, 85683, 85755)]

def row073_layer004_block003 : List ColouredInterval :=
  [(13, 114244, 114316), (13, 142805, 142877), (17, 167042, 167114), (19, 89167, 89239), (19, 96026, 96098), (19, 102885, 102957), (19, 109744, 109816), (19, 116603, 116675), (19, 130321, 130393), (23, 85169, 85241), (23, 97336, 97408), (23, 109503, 109575), (23, 121670, 121742), (23, 133837, 133909), (23, 146004, 146076), (23, 158171, 158243)]

def row073_layer004_block004 : List ColouredInterval :=
  [(29, 97556, 97628), (29, 121945, 122017), (29, 146334, 146406), (31, 89373, 89445), (31, 119164, 119236), (31, 148955, 149027), (37, 101306, 101378), (37, 151959, 152031), (41, 137842, 137914), (43, 159014, 159086), (47, 103823, 103895), (53, 148877, 148949), (71, 85697, 85769)]

def row073_layer004_chunks : List (List ColouredInterval) :=
  [row073_layer004_block000, row073_layer004_block001, row073_layer004_block002, row073_layer004_block003, row073_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_arithmetic : LayerArithmeticValid row073.height { lower := 84096, upper := 168192, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_enumeration :
    activePowerIntervalList 73 17 84096 168192 = row073_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_pairs000 :
    row073_layer004_block000.all (fun I => row073_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_pairs001 :
    row073_layer004_block001.all (fun I => row073_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_pairs002 :
    row073_layer004_block002.all (fun I => row073_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_pairs003 :
    row073_layer004_block003.all (fun I => row073_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_pairs004 :
    row073_layer004_block004.all (fun I => row073_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_chunks_eq : row073_layer004_chunks.flatten = row073_layer004_intervals := by
  rfl

theorem row073_layer004_pairs : pairCoverCheck row073_layer004_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer004_chunks_eq
  intro block hblock
  simp only [row073_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row073_layer004_pairs000
  · exact row073_layer004_pairs001
  · exact row073_layer004_pairs002
  · exact row073_layer004_pairs003
  · exact row073_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer004_checked :
    coverLayerCheck row073.height row073.goods { lower := 84096, upper := 168192, M := 17 } = true := by
  exact coverLayerCheck_of_parts row073_layer004_arithmetic row073_layer004_enumeration row073_bounds_eq row073_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer005_intervals : List ColouredInterval :=
  [(2, 180224, 180296), (2, 196608, 196680), (2, 212992, 213064), (2, 229376, 229448), (2, 196608, 196680), (2, 229376, 229448), (2, 262144, 262216), (2, 294912, 294984), (2, 327680, 327752), (2, 196608, 196680), (2, 262144, 262216), (2, 327680, 327752), (2, 262144, 262216), (2, 262144, 262216), (3, 177147, 177219), (3, 196830, 196902), (3, 216513, 216585), (3, 236196, 236268), (3, 255879, 255951), (3, 275562, 275634), (3, 177147, 177219), (3, 236196, 236268), (3, 295245, 295317), (3, 177147, 177219), (5, 171875, 171947), (5, 187500, 187572), (5, 203125, 203197), (5, 218750, 218822), (5, 234375, 234447), (5, 312500, 312572), (7, 184877, 184949), (7, 201684, 201756), (7, 218491, 218563), (7, 235298, 235370), (7, 235298, 235370), (11, 175692, 175764), (11, 190333, 190405), (11, 204974, 205046), (11, 322102, 322174), (13, 171366, 171438), (13, 199927, 199999), (13, 228488, 228560), (13, 257049, 257121), (13, 285610, 285682), (13, 314171, 314243), (17, 250563, 250635), (17, 334084, 334156), (19, 260642, 260714), (23, 170338, 170410), (23, 279841, 279913), (29, 170723, 170795), (29, 195112, 195184), (29, 219501, 219573), (29, 243890, 243962), (29, 268279, 268351), (29, 292668, 292740), (29, 317057, 317129), (31, 178746, 178818), (31, 208537, 208609), (31, 238328, 238400), (31, 268119, 268191), (31, 297910, 297982), (31, 327701, 327773), (37, 202612, 202684), (37, 253265, 253337), (37, 303918, 303990), (41, 206763, 206835), (41, 275684, 275756), (43, 238521, 238593), (43, 318028, 318100), (47, 207646, 207718), (47, 311469, 311541), (53, 297754, 297826), (59, 205379, 205451), (61, 226981, 227053), (67, 300763, 300835)]

def row073_layer005_block000 : List ColouredInterval :=
  [(2, 180224, 180296), (2, 196608, 196680), (2, 212992, 213064), (2, 229376, 229448), (2, 196608, 196680), (2, 229376, 229448), (2, 262144, 262216), (2, 294912, 294984), (2, 327680, 327752), (2, 196608, 196680), (2, 262144, 262216), (2, 327680, 327752), (2, 262144, 262216), (2, 262144, 262216), (3, 177147, 177219), (3, 196830, 196902)]

def row073_layer005_block001 : List ColouredInterval :=
  [(3, 216513, 216585), (3, 236196, 236268), (3, 255879, 255951), (3, 275562, 275634), (3, 177147, 177219), (3, 236196, 236268), (3, 295245, 295317), (3, 177147, 177219), (5, 171875, 171947), (5, 187500, 187572), (5, 203125, 203197), (5, 218750, 218822), (5, 234375, 234447), (5, 312500, 312572), (7, 184877, 184949), (7, 201684, 201756)]

def row073_layer005_block002 : List ColouredInterval :=
  [(7, 218491, 218563), (7, 235298, 235370), (7, 235298, 235370), (11, 175692, 175764), (11, 190333, 190405), (11, 204974, 205046), (11, 322102, 322174), (13, 171366, 171438), (13, 199927, 199999), (13, 228488, 228560), (13, 257049, 257121), (13, 285610, 285682), (13, 314171, 314243), (17, 250563, 250635), (17, 334084, 334156), (19, 260642, 260714)]

def row073_layer005_block003 : List ColouredInterval :=
  [(23, 170338, 170410), (23, 279841, 279913), (29, 170723, 170795), (29, 195112, 195184), (29, 219501, 219573), (29, 243890, 243962), (29, 268279, 268351), (29, 292668, 292740), (29, 317057, 317129), (31, 178746, 178818), (31, 208537, 208609), (31, 238328, 238400), (31, 268119, 268191), (31, 297910, 297982), (31, 327701, 327773), (37, 202612, 202684)]

def row073_layer005_block004 : List ColouredInterval :=
  [(37, 253265, 253337), (37, 303918, 303990), (41, 206763, 206835), (41, 275684, 275756), (43, 238521, 238593), (43, 318028, 318100), (47, 207646, 207718), (47, 311469, 311541), (53, 297754, 297826), (59, 205379, 205451), (61, 226981, 227053), (67, 300763, 300835)]

def row073_layer005_chunks : List (List ColouredInterval) :=
  [row073_layer005_block000, row073_layer005_block001, row073_layer005_block002, row073_layer005_block003, row073_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer005_intervals
