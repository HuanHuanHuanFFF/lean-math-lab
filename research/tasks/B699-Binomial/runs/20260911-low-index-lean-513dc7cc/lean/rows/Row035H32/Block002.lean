import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_pairs002 :
    row035_layer003_block002.all (fun I => row035_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_pairs003 :
    row035_layer003_block003.all (fun I => row035_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_pairs004 :
    row035_layer003_block004.all (fun I => row035_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_pairs005 :
    row035_layer003_block005.all (fun I => row035_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_pairs006 :
    row035_layer003_block006.all (fun I => row035_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_pairs007 :
    row035_layer003_block007.all (fun I => row035_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_chunks_eq : row035_layer003_chunks.flatten = row035_layer003_intervals := by
  rfl

theorem row035_layer003_pairs : pairCoverCheck row035_layer003_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer003_chunks_eq
  intro block hblock
  simp only [row035_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer003_pairs000
  · exact row035_layer003_pairs001
  · exact row035_layer003_pairs002
  · exact row035_layer003_pairs003
  · exact row035_layer003_pairs004
  · exact row035_layer003_pairs005
  · exact row035_layer003_pairs006
  · exact row035_layer003_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer003_checked :
    coverLayerCheck row035.height row035.goods { lower := 9520, upper := 19040, M := 35 } = true := by
  exact coverLayerCheck_of_parts row035_layer003_arithmetic row035_layer003_enumeration row035_bounds_eq row035_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer004_intervals : List ColouredInterval :=
  [(2, 19456, 19490), (2, 20480, 20514), (2, 21504, 21538), (2, 22528, 22562), (2, 23552, 23586), (2, 24576, 24610), (2, 25600, 25634), (2, 26624, 26658), (2, 27648, 27682), (2, 28672, 28706), (2, 29696, 29730), (2, 30720, 30754), (2, 31744, 31778), (2, 32768, 32802), (2, 33792, 33826), (2, 34816, 34850), (2, 20480, 20514), (2, 22528, 22562), (2, 24576, 24610), (2, 26624, 26658), (2, 28672, 28706), (2, 30720, 30754), (2, 32768, 32802), (2, 34816, 34850), (2, 36864, 36898), (2, 20480, 20514), (2, 24576, 24610), (2, 28672, 28706), (2, 32768, 32802), (2, 36864, 36898), (2, 24576, 24610), (2, 32768, 32802), (2, 32768, 32802), (2, 32768, 32802), (3, 19683, 19717), (3, 20412, 20446), (3, 21141, 21175), (3, 21870, 21904), (3, 22599, 22633), (3, 23328, 23362), (3, 24057, 24091), (3, 24786, 24820), (3, 19683, 19717), (3, 21870, 21904), (3, 24057, 24091), (3, 26244, 26278), (3, 28431, 28465), (3, 30618, 30652), (3, 32805, 32839), (3, 34992, 35026), (3, 37179, 37213), (3, 19683, 19717), (3, 26244, 26278), (3, 32805, 32839), (3, 19683, 19717), (5, 31250, 31284), (7, 33614, 33648), (11, 19965, 19999), (11, 21296, 21330), (11, 22627, 22661), (11, 23958, 23992), (11, 25289, 25323), (11, 26620, 26654), (11, 27951, 27985), (11, 29282, 29316), (11, 30613, 30647), (11, 31944, 31978), (11, 33275, 33309), (11, 34606, 34640), (11, 35937, 35971), (11, 37268, 37302), (11, 29282, 29316), (13, 19773, 19807), (13, 21970, 22004), (13, 24167, 24201), (13, 26364, 26398), (13, 28561, 28595), (13, 30758, 30792), (13, 32955, 32989), (13, 35152, 35186), (13, 37349, 37383), (13, 28561, 28595), (17, 19652, 19686), (17, 24565, 24599), (17, 29478, 29512), (17, 34391, 34425), (19, 20577, 20611), (19, 27436, 27470), (19, 34295, 34329), (23, 24334, 24368), (23, 36501, 36535), (29, 19343, 19377), (29, 20184, 20218), (29, 21025, 21059), (29, 21866, 21900), (29, 22707, 22741), (29, 23548, 23582), (29, 24389, 24423), (29, 25230, 25264), (29, 26071, 26105), (29, 26912, 26946), (29, 27753, 27787), (29, 28594, 28628), (29, 24389, 24423), (31, 19220, 19254), (31, 20181, 20215), (31, 21142, 21176), (31, 22103, 22137), (31, 23064, 23098), (31, 24025, 24059), (31, 24986, 25020), (31, 25947, 25981), (31, 26908, 26942), (31, 27869, 27903), (31, 28830, 28864), (31, 29791, 29825), (31, 30752, 30786), (31, 31713, 31747), (31, 32674, 32708), (31, 29791, 29825)]

def row035_layer004_block000 : List ColouredInterval :=
  [(2, 19456, 19490), (2, 20480, 20514), (2, 21504, 21538), (2, 22528, 22562), (2, 23552, 23586), (2, 24576, 24610), (2, 25600, 25634), (2, 26624, 26658), (2, 27648, 27682), (2, 28672, 28706), (2, 29696, 29730), (2, 30720, 30754), (2, 31744, 31778), (2, 32768, 32802), (2, 33792, 33826), (2, 34816, 34850)]

def row035_layer004_block001 : List ColouredInterval :=
  [(2, 20480, 20514), (2, 22528, 22562), (2, 24576, 24610), (2, 26624, 26658), (2, 28672, 28706), (2, 30720, 30754), (2, 32768, 32802), (2, 34816, 34850), (2, 36864, 36898), (2, 20480, 20514), (2, 24576, 24610), (2, 28672, 28706), (2, 32768, 32802), (2, 36864, 36898), (2, 24576, 24610), (2, 32768, 32802)]

def row035_layer004_block002 : List ColouredInterval :=
  [(2, 32768, 32802), (2, 32768, 32802), (3, 19683, 19717), (3, 20412, 20446), (3, 21141, 21175), (3, 21870, 21904), (3, 22599, 22633), (3, 23328, 23362), (3, 24057, 24091), (3, 24786, 24820), (3, 19683, 19717), (3, 21870, 21904), (3, 24057, 24091), (3, 26244, 26278), (3, 28431, 28465), (3, 30618, 30652)]

def row035_layer004_block003 : List ColouredInterval :=
  [(3, 32805, 32839), (3, 34992, 35026), (3, 37179, 37213), (3, 19683, 19717), (3, 26244, 26278), (3, 32805, 32839), (3, 19683, 19717), (5, 31250, 31284), (7, 33614, 33648), (11, 19965, 19999), (11, 21296, 21330), (11, 22627, 22661), (11, 23958, 23992), (11, 25289, 25323), (11, 26620, 26654), (11, 27951, 27985)]

def row035_layer004_block004 : List ColouredInterval :=
  [(11, 29282, 29316), (11, 30613, 30647), (11, 31944, 31978), (11, 33275, 33309), (11, 34606, 34640), (11, 35937, 35971), (11, 37268, 37302), (11, 29282, 29316), (13, 19773, 19807), (13, 21970, 22004), (13, 24167, 24201), (13, 26364, 26398), (13, 28561, 28595), (13, 30758, 30792), (13, 32955, 32989), (13, 35152, 35186)]

def row035_layer004_block005 : List ColouredInterval :=
  [(13, 37349, 37383), (13, 28561, 28595), (17, 19652, 19686), (17, 24565, 24599), (17, 29478, 29512), (17, 34391, 34425), (19, 20577, 20611), (19, 27436, 27470), (19, 34295, 34329), (23, 24334, 24368), (23, 36501, 36535), (29, 19343, 19377), (29, 20184, 20218), (29, 21025, 21059), (29, 21866, 21900), (29, 22707, 22741)]

def row035_layer004_block006 : List ColouredInterval :=
  [(29, 23548, 23582), (29, 24389, 24423), (29, 25230, 25264), (29, 26071, 26105), (29, 26912, 26946), (29, 27753, 27787), (29, 28594, 28628), (29, 24389, 24423), (31, 19220, 19254), (31, 20181, 20215), (31, 21142, 21176), (31, 22103, 22137), (31, 23064, 23098), (31, 24025, 24059), (31, 24986, 25020), (31, 25947, 25981)]

def row035_layer004_block007 : List ColouredInterval :=
  [(31, 26908, 26942), (31, 27869, 27903), (31, 28830, 28864), (31, 29791, 29825), (31, 30752, 30786), (31, 31713, 31747), (31, 32674, 32708), (31, 29791, 29825)]

def row035_layer004_chunks : List (List ColouredInterval) :=
  [row035_layer004_block000, row035_layer004_block001, row035_layer004_block002, row035_layer004_block003, row035_layer004_block004, row035_layer004_block005, row035_layer004_block006, row035_layer004_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_arithmetic : LayerArithmeticValid row035.height { lower := 19040, upper := 38080, M := 34 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_enumeration :
    activePowerIntervalList 35 34 19040 38080 = row035_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs000 :
    row035_layer004_block000.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs001 :
    row035_layer004_block001.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs002 :
    row035_layer004_block002.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs003 :
    row035_layer004_block003.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs004 :
    row035_layer004_block004.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs005 :
    row035_layer004_block005.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs006 :
    row035_layer004_block006.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_pairs007 :
    row035_layer004_block007.all (fun I => row035_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_chunks_eq : row035_layer004_chunks.flatten = row035_layer004_intervals := by
  rfl

theorem row035_layer004_pairs : pairCoverCheck row035_layer004_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer004_chunks_eq
  intro block hblock
  simp only [row035_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer004_pairs000
  · exact row035_layer004_pairs001
  · exact row035_layer004_pairs002
  · exact row035_layer004_pairs003
  · exact row035_layer004_pairs004
  · exact row035_layer004_pairs005
  · exact row035_layer004_pairs006
  · exact row035_layer004_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer004_checked :
    coverLayerCheck row035.height row035.goods { lower := 19040, upper := 38080, M := 34 } = true := by
  exact coverLayerCheck_of_parts row035_layer004_arithmetic row035_layer004_enumeration row035_bounds_eq row035_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer005_intervals : List ColouredInterval :=
  [(2, 38912, 38946), (2, 40960, 40994), (2, 43008, 43042), (2, 45056, 45090), (2, 47104, 47138), (2, 49152, 49186), (2, 51200, 51234), (2, 53248, 53282), (2, 55296, 55330), (2, 57344, 57378), (2, 59392, 59426), (2, 61440, 61474), (2, 63488, 63522), (2, 65536, 65570), (2, 67584, 67618), (2, 69632, 69666), (2, 40960, 40994), (2, 45056, 45090), (2, 49152, 49186), (2, 53248, 53282), (2, 57344, 57378), (2, 61440, 61474), (2, 65536, 65570), (2, 69632, 69666), (2, 73728, 73762), (2, 40960, 40994), (2, 49152, 49186), (2, 57344, 57378), (2, 65536, 65570), (2, 73728, 73762), (2, 49152, 49186), (2, 65536, 65570), (2, 65536, 65570), (2, 65536, 65570), (3, 39366, 39400), (3, 41553, 41587), (3, 43740, 43774), (3, 45927, 45961), (3, 48114, 48148), (3, 50301, 50335), (3, 52488, 52522), (3, 54675, 54709), (3, 56862, 56896), (3, 59049, 59083), (3, 61236, 61270), (3, 63423, 63457), (3, 65610, 65644), (3, 67797, 67831), (3, 69984, 70018), (3, 72171, 72205), (3, 74358, 74392), (3, 39366, 39400), (3, 45927, 45961), (3, 52488, 52522), (3, 59049, 59083), (3, 65610, 65644), (3, 72171, 72205), (3, 39366, 39400), (3, 59049, 59083), (3, 59049, 59083), (5, 46875, 46909), (5, 62500, 62534), (7, 50421, 50455), (7, 67228, 67262), (11, 38599, 38633), (11, 39930, 39964), (11, 41261, 41295), (11, 42592, 42626), (11, 43923, 43957), (11, 45254, 45288), (11, 43923, 43957), (11, 58564, 58598), (11, 73205, 73239), (13, 39546, 39580), (13, 41743, 41777), (13, 43940, 43974), (13, 46137, 46171), (13, 48334, 48368), (13, 50531, 50565), (13, 52728, 52762), (13, 54925, 54959), (13, 57122, 57156), (13, 59319, 59353), (13, 61516, 61550), (13, 63713, 63747), (13, 65910, 65944), (13, 68107, 68141), (13, 70304, 70338), (13, 72501, 72535), (13, 74698, 74732), (13, 57122, 57156), (17, 39304, 39338), (17, 44217, 44251), (17, 49130, 49164), (17, 54043, 54077), (17, 58956, 58990), (17, 63869, 63903), (17, 68782, 68816), (17, 73695, 73729), (19, 41154, 41188), (19, 48013, 48047), (19, 54872, 54906), (19, 61731, 61765), (19, 68590, 68624), (19, 75449, 75483), (23, 48668, 48702), (23, 60835, 60869), (23, 73002, 73036), (29, 48778, 48812), (29, 73167, 73201), (31, 59582, 59616)]

def row035_layer005_block000 : List ColouredInterval :=
  [(2, 38912, 38946), (2, 40960, 40994), (2, 43008, 43042), (2, 45056, 45090), (2, 47104, 47138), (2, 49152, 49186), (2, 51200, 51234), (2, 53248, 53282), (2, 55296, 55330), (2, 57344, 57378), (2, 59392, 59426), (2, 61440, 61474), (2, 63488, 63522), (2, 65536, 65570), (2, 67584, 67618), (2, 69632, 69666)]

def row035_layer005_block001 : List ColouredInterval :=
  [(2, 40960, 40994), (2, 45056, 45090), (2, 49152, 49186), (2, 53248, 53282), (2, 57344, 57378), (2, 61440, 61474), (2, 65536, 65570), (2, 69632, 69666), (2, 73728, 73762), (2, 40960, 40994), (2, 49152, 49186), (2, 57344, 57378), (2, 65536, 65570), (2, 73728, 73762), (2, 49152, 49186), (2, 65536, 65570)]

def row035_layer005_block002 : List ColouredInterval :=
  [(2, 65536, 65570), (2, 65536, 65570), (3, 39366, 39400), (3, 41553, 41587), (3, 43740, 43774), (3, 45927, 45961), (3, 48114, 48148), (3, 50301, 50335), (3, 52488, 52522), (3, 54675, 54709), (3, 56862, 56896), (3, 59049, 59083), (3, 61236, 61270), (3, 63423, 63457), (3, 65610, 65644), (3, 67797, 67831)]

def row035_layer005_block003 : List ColouredInterval :=
  [(3, 69984, 70018), (3, 72171, 72205), (3, 74358, 74392), (3, 39366, 39400), (3, 45927, 45961), (3, 52488, 52522), (3, 59049, 59083), (3, 65610, 65644), (3, 72171, 72205), (3, 39366, 39400), (3, 59049, 59083), (3, 59049, 59083), (5, 46875, 46909), (5, 62500, 62534), (7, 50421, 50455), (7, 67228, 67262)]

def row035_layer005_block004 : List ColouredInterval :=
  [(11, 38599, 38633), (11, 39930, 39964), (11, 41261, 41295), (11, 42592, 42626), (11, 43923, 43957), (11, 45254, 45288), (11, 43923, 43957), (11, 58564, 58598), (11, 73205, 73239), (13, 39546, 39580), (13, 41743, 41777), (13, 43940, 43974), (13, 46137, 46171), (13, 48334, 48368), (13, 50531, 50565), (13, 52728, 52762)]

def row035_layer005_block005 : List ColouredInterval :=
  [(13, 54925, 54959), (13, 57122, 57156), (13, 59319, 59353), (13, 61516, 61550), (13, 63713, 63747), (13, 65910, 65944), (13, 68107, 68141), (13, 70304, 70338), (13, 72501, 72535), (13, 74698, 74732), (13, 57122, 57156), (17, 39304, 39338), (17, 44217, 44251), (17, 49130, 49164), (17, 54043, 54077), (17, 58956, 58990)]

def row035_layer005_block006 : List ColouredInterval :=
  [(17, 63869, 63903), (17, 68782, 68816), (17, 73695, 73729), (19, 41154, 41188), (19, 48013, 48047), (19, 54872, 54906), (19, 61731, 61765), (19, 68590, 68624), (19, 75449, 75483), (23, 48668, 48702), (23, 60835, 60869), (23, 73002, 73036), (29, 48778, 48812), (29, 73167, 73201), (31, 59582, 59616)]

def row035_layer005_chunks : List (List ColouredInterval) :=
  [row035_layer005_block000, row035_layer005_block001, row035_layer005_block002, row035_layer005_block003, row035_layer005_block004, row035_layer005_block005, row035_layer005_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_arithmetic : LayerArithmeticValid row035.height { lower := 38080, upper := 76160, M := 34 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_enumeration :
    activePowerIntervalList 35 34 38080 76160 = row035_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_pairs000 :
    row035_layer005_block000.all (fun I => row035_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_pairs001 :
    row035_layer005_block001.all (fun I => row035_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_pairs002 :
    row035_layer005_block002.all (fun I => row035_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_pairs003 :
    row035_layer005_block003.all (fun I => row035_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_pairs004 :
    row035_layer005_block004.all (fun I => row035_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_pairs005 :
    row035_layer005_block005.all (fun I => row035_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_pairs006 :
    row035_layer005_block006.all (fun I => row035_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs006
