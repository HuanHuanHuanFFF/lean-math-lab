import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row105B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_chunks_eq : row105_layer000_chunks.flatten = row105_layer000_intervals := by
  rfl

theorem row105_layer000_pairs : pairCoverCheck row105_layer000_intervals row105_bounds = true := by
  apply pairCoverCheck_of_chunks row105_layer000_chunks_eq
  intro block hblock
  simp only [row105_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row105_layer000_pairs000
  · exact row105_layer000_pairs001
  · exact row105_layer000_pairs002
  · exact row105_layer000_pairs003
  · exact row105_layer000_pairs004
  · exact row105_layer000_pairs005
  · exact row105_layer000_pairs006
  · exact row105_layer000_pairs007
  · exact row105_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer000_checked :
    coverLayerCheck row105.height row105.goods { lower := 10920, upper := 21840, M := 25 } = true := by
  exact coverLayerCheck_of_parts row105_layer000_arithmetic row105_layer000_enumeration row105_bounds_eq row105_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row105_layer001_intervals : List ColouredInterval :=
  [(2, 22528, 22632), (2, 24576, 24680), (2, 26624, 26728), (2, 28672, 28776), (2, 30720, 30824), (2, 32768, 32872), (2, 34816, 34920), (2, 36864, 36968), (2, 38912, 39016), (2, 40960, 41064), (2, 24576, 24680), (2, 28672, 28776), (2, 32768, 32872), (2, 36864, 36968), (2, 40960, 41064), (2, 24576, 24680), (2, 32768, 32872), (2, 40960, 41064), (2, 32768, 32872), (2, 32768, 32872), (3, 26244, 26348), (3, 32805, 32909), (3, 39366, 39470), (3, 39366, 39470), (5, 31250, 31354), (7, 33614, 33718), (11, 22627, 22731), (11, 23958, 24062), (11, 25289, 25393), (11, 26620, 26724), (11, 29282, 29386), (13, 21970, 22074), (13, 24167, 24271), (13, 26364, 26468), (13, 28561, 28665), (13, 30758, 30862), (13, 32955, 33059), (13, 35152, 35256), (13, 37349, 37453), (13, 39546, 39650), (13, 41743, 41847), (13, 28561, 28665), (17, 24565, 24669), (17, 29478, 29582), (17, 34391, 34495), (17, 39304, 39408), (19, 27436, 27540), (19, 34295, 34399), (19, 41154, 41258), (23, 24334, 24438), (23, 36501, 36605), (29, 24389, 24493), (31, 29791, 29895), (37, 21904, 22008), (37, 23273, 23377), (37, 24642, 24746), (37, 26011, 26115), (37, 27380, 27484), (41, 21853, 21957), (41, 23534, 23638), (41, 25215, 25319), (41, 26896, 27000), (41, 28577, 28681), (41, 30258, 30362), (41, 31939, 32043), (41, 33620, 33724), (43, 22188, 22292), (43, 24037, 24141), (43, 25886, 25990), (43, 27735, 27839), (43, 29584, 29688), (43, 31433, 31537), (43, 33282, 33386), (43, 35131, 35235), (43, 36980, 37084), (47, 22090, 22194), (47, 24299, 24403), (47, 26508, 26612), (47, 28717, 28821), (47, 30926, 31030), (47, 33135, 33239), (47, 35344, 35448), (47, 37553, 37657), (47, 39762, 39866), (47, 41971, 42075), (53, 22472, 22576), (53, 25281, 25385), (53, 28090, 28194), (53, 30899, 31003), (53, 33708, 33812), (53, 36517, 36621), (53, 39326, 39430), (53, 42135, 42239), (59, 24367, 24471), (59, 27848, 27952), (59, 31329, 31433), (59, 34810, 34914), (59, 38291, 38395), (59, 41772, 41876), (61, 22326, 22430), (61, 26047, 26151), (61, 29768, 29872), (61, 33489, 33593), (61, 37210, 37314), (61, 40931, 41035), (67, 22445, 22549), (67, 26934, 27038), (67, 31423, 31527), (67, 35912, 36016), (67, 40401, 40505), (71, 25205, 25309), (71, 30246, 30350), (71, 35287, 35391), (71, 40328, 40432), (73, 26645, 26749), (73, 31974, 32078), (73, 37303, 37407), (73, 42632, 42736), (79, 24964, 25068), (79, 31205, 31309), (79, 37446, 37550), (83, 27556, 27660), (83, 34445, 34549), (83, 41334, 41438), (89, 23763, 23867), (89, 31684, 31788), (89, 39605, 39709), (97, 28227, 28331), (97, 37636, 37740), (101, 30603, 30707), (101, 40804, 40908), (103, 31827, 31931), (103, 42436, 42540)]

def row105_layer001_block000 : List ColouredInterval :=
  [(2, 22528, 22632), (2, 24576, 24680), (2, 26624, 26728), (2, 28672, 28776), (2, 30720, 30824), (2, 32768, 32872), (2, 34816, 34920), (2, 36864, 36968), (2, 38912, 39016), (2, 40960, 41064), (2, 24576, 24680), (2, 28672, 28776), (2, 32768, 32872), (2, 36864, 36968), (2, 40960, 41064)]

def row105_layer001_block001 : List ColouredInterval :=
  [(2, 24576, 24680), (2, 32768, 32872), (2, 40960, 41064), (2, 32768, 32872), (2, 32768, 32872), (3, 26244, 26348), (3, 32805, 32909), (3, 39366, 39470), (3, 39366, 39470), (5, 31250, 31354), (7, 33614, 33718), (11, 22627, 22731), (11, 23958, 24062), (11, 25289, 25393), (11, 26620, 26724)]

def row105_layer001_block002 : List ColouredInterval :=
  [(11, 29282, 29386), (13, 21970, 22074), (13, 24167, 24271), (13, 26364, 26468), (13, 28561, 28665), (13, 30758, 30862), (13, 32955, 33059), (13, 35152, 35256), (13, 37349, 37453), (13, 39546, 39650), (13, 41743, 41847), (13, 28561, 28665), (17, 24565, 24669), (17, 29478, 29582), (17, 34391, 34495)]

def row105_layer001_block003 : List ColouredInterval :=
  [(17, 39304, 39408), (19, 27436, 27540), (19, 34295, 34399), (19, 41154, 41258), (23, 24334, 24438), (23, 36501, 36605), (29, 24389, 24493), (31, 29791, 29895), (37, 21904, 22008), (37, 23273, 23377), (37, 24642, 24746), (37, 26011, 26115), (37, 27380, 27484), (41, 21853, 21957), (41, 23534, 23638)]

def row105_layer001_block004 : List ColouredInterval :=
  [(41, 25215, 25319), (41, 26896, 27000), (41, 28577, 28681), (41, 30258, 30362), (41, 31939, 32043), (41, 33620, 33724), (43, 22188, 22292), (43, 24037, 24141), (43, 25886, 25990), (43, 27735, 27839), (43, 29584, 29688), (43, 31433, 31537), (43, 33282, 33386), (43, 35131, 35235), (43, 36980, 37084)]

def row105_layer001_block005 : List ColouredInterval :=
  [(47, 22090, 22194), (47, 24299, 24403), (47, 26508, 26612), (47, 28717, 28821), (47, 30926, 31030), (47, 33135, 33239), (47, 35344, 35448), (47, 37553, 37657), (47, 39762, 39866), (47, 41971, 42075), (53, 22472, 22576), (53, 25281, 25385), (53, 28090, 28194), (53, 30899, 31003), (53, 33708, 33812)]

def row105_layer001_block006 : List ColouredInterval :=
  [(53, 36517, 36621), (53, 39326, 39430), (53, 42135, 42239), (59, 24367, 24471), (59, 27848, 27952), (59, 31329, 31433), (59, 34810, 34914), (59, 38291, 38395), (59, 41772, 41876), (61, 22326, 22430), (61, 26047, 26151), (61, 29768, 29872), (61, 33489, 33593), (61, 37210, 37314), (61, 40931, 41035)]

def row105_layer001_block007 : List ColouredInterval :=
  [(67, 22445, 22549), (67, 26934, 27038), (67, 31423, 31527), (67, 35912, 36016), (67, 40401, 40505), (71, 25205, 25309), (71, 30246, 30350), (71, 35287, 35391), (71, 40328, 40432), (73, 26645, 26749), (73, 31974, 32078), (73, 37303, 37407), (73, 42632, 42736), (79, 24964, 25068), (79, 31205, 31309)]

def row105_layer001_block008 : List ColouredInterval :=
  [(79, 37446, 37550), (83, 27556, 27660), (83, 34445, 34549), (83, 41334, 41438), (89, 23763, 23867), (89, 31684, 31788), (89, 39605, 39709), (97, 28227, 28331), (97, 37636, 37740), (101, 30603, 30707), (101, 40804, 40908), (103, 31827, 31931), (103, 42436, 42540)]

def row105_layer001_chunks : List (List ColouredInterval) :=
  [row105_layer001_block000, row105_layer001_block001, row105_layer001_block002, row105_layer001_block003, row105_layer001_block004, row105_layer001_block005, row105_layer001_block006, row105_layer001_block007, row105_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_arithmetic : LayerArithmeticValid row105.height { lower := 21840, upper := 43680, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_enumeration :
    activePowerIntervalList 105 20 21840 43680 = row105_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs000 :
    row105_layer001_block000.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs001 :
    row105_layer001_block001.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs002 :
    row105_layer001_block002.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs003 :
    row105_layer001_block003.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs004 :
    row105_layer001_block004.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs005 :
    row105_layer001_block005.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs006 :
    row105_layer001_block006.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs007 :
    row105_layer001_block007.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_pairs008 :
    row105_layer001_block008.all (fun I => row105_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_chunks_eq : row105_layer001_chunks.flatten = row105_layer001_intervals := by
  rfl

theorem row105_layer001_pairs : pairCoverCheck row105_layer001_intervals row105_bounds = true := by
  apply pairCoverCheck_of_chunks row105_layer001_chunks_eq
  intro block hblock
  simp only [row105_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row105_layer001_pairs000
  · exact row105_layer001_pairs001
  · exact row105_layer001_pairs002
  · exact row105_layer001_pairs003
  · exact row105_layer001_pairs004
  · exact row105_layer001_pairs005
  · exact row105_layer001_pairs006
  · exact row105_layer001_pairs007
  · exact row105_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer001_checked :
    coverLayerCheck row105.height row105.goods { lower := 21840, upper := 43680, M := 20 } = true := by
  exact coverLayerCheck_of_parts row105_layer001_arithmetic row105_layer001_enumeration row105_bounds_eq row105_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row105_layer002_intervals : List ColouredInterval :=
  [(2, 45056, 45160), (2, 49152, 49256), (2, 53248, 53352), (2, 57344, 57448), (2, 61440, 61544), (2, 65536, 65640), (2, 69632, 69736), (2, 49152, 49256), (2, 57344, 57448), (2, 65536, 65640), (2, 73728, 73832), (2, 81920, 82024), (2, 49152, 49256), (2, 65536, 65640), (2, 81920, 82024), (2, 65536, 65640), (2, 65536, 65640), (3, 59049, 59153), (3, 78732, 78836), (3, 59049, 59153), (5, 46875, 46979), (5, 78125, 78229), (11, 43923, 44027), (11, 58564, 58668), (11, 73205, 73309), (13, 57122, 57226), (13, 85683, 85787), (17, 44217, 44321), (17, 49130, 49234), (17, 54043, 54147), (17, 58956, 59060), (17, 63869, 63973), (17, 68782, 68886), (17, 73695, 73799), (17, 78608, 78712), (17, 83521, 83625), (17, 83521, 83625), (19, 48013, 48117), (19, 54872, 54976), (19, 61731, 61835), (19, 68590, 68694), (19, 75449, 75553), (19, 82308, 82412), (23, 48668, 48772), (23, 60835, 60939), (23, 73002, 73106), (23, 85169, 85273), (29, 48778, 48882), (29, 73167, 73271), (31, 59582, 59686), (37, 50653, 50757), (41, 68921, 69025), (43, 79507, 79611), (53, 44944, 45048), (53, 47753, 47857), (59, 45253, 45357), (59, 48734, 48838), (59, 52215, 52319), (59, 55696, 55800), (59, 59177, 59281), (61, 44652, 44756), (61, 48373, 48477), (61, 52094, 52198), (61, 55815, 55919), (61, 59536, 59640), (61, 63257, 63361), (67, 44890, 44994), (67, 49379, 49483), (67, 53868, 53972), (67, 58357, 58461), (67, 62846, 62950), (67, 67335, 67439), (67, 71824, 71928), (67, 76313, 76417), (71, 45369, 45473), (71, 50410, 50514), (71, 55451, 55555), (71, 60492, 60596), (71, 65533, 65637), (71, 70574, 70678), (71, 75615, 75719), (71, 80656, 80760), (71, 85697, 85801), (73, 47961, 48065), (73, 53290, 53394), (73, 58619, 58723), (73, 63948, 64052), (73, 69277, 69381), (73, 74606, 74710), (73, 79935, 80039), (73, 85264, 85368), (79, 43687, 43791), (79, 49928, 50032), (79, 56169, 56273), (79, 62410, 62514), (79, 68651, 68755), (79, 74892, 74996), (79, 81133, 81237), (83, 48223, 48327), (83, 55112, 55216), (83, 62001, 62105), (83, 68890, 68994), (83, 75779, 75883), (83, 82668, 82772), (89, 47526, 47630), (89, 55447, 55551), (89, 63368, 63472), (89, 71289, 71393), (89, 79210, 79314), (89, 87131, 87235), (97, 47045, 47149), (97, 56454, 56558), (97, 65863, 65967), (97, 75272, 75376), (97, 84681, 84785), (101, 51005, 51109), (101, 61206, 61310), (101, 71407, 71511), (101, 81608, 81712), (103, 53045, 53149), (103, 63654, 63758), (103, 74263, 74367), (103, 84872, 84976)]

def row105_layer002_block000 : List ColouredInterval :=
  [(2, 45056, 45160), (2, 49152, 49256), (2, 53248, 53352), (2, 57344, 57448), (2, 61440, 61544), (2, 65536, 65640), (2, 69632, 69736), (2, 49152, 49256), (2, 57344, 57448), (2, 65536, 65640), (2, 73728, 73832), (2, 81920, 82024), (2, 49152, 49256), (2, 65536, 65640), (2, 81920, 82024), (2, 65536, 65640)]

def row105_layer002_block001 : List ColouredInterval :=
  [(2, 65536, 65640), (3, 59049, 59153), (3, 78732, 78836), (3, 59049, 59153), (5, 46875, 46979), (5, 78125, 78229), (11, 43923, 44027), (11, 58564, 58668), (11, 73205, 73309), (13, 57122, 57226), (13, 85683, 85787), (17, 44217, 44321), (17, 49130, 49234), (17, 54043, 54147), (17, 58956, 59060), (17, 63869, 63973)]

def row105_layer002_block002 : List ColouredInterval :=
  [(17, 68782, 68886), (17, 73695, 73799), (17, 78608, 78712), (17, 83521, 83625), (17, 83521, 83625), (19, 48013, 48117), (19, 54872, 54976), (19, 61731, 61835), (19, 68590, 68694), (19, 75449, 75553), (19, 82308, 82412), (23, 48668, 48772), (23, 60835, 60939), (23, 73002, 73106), (23, 85169, 85273), (29, 48778, 48882)]

def row105_layer002_block003 : List ColouredInterval :=
  [(29, 73167, 73271), (31, 59582, 59686), (37, 50653, 50757), (41, 68921, 69025), (43, 79507, 79611), (53, 44944, 45048), (53, 47753, 47857), (59, 45253, 45357), (59, 48734, 48838), (59, 52215, 52319), (59, 55696, 55800), (59, 59177, 59281), (61, 44652, 44756), (61, 48373, 48477), (61, 52094, 52198), (61, 55815, 55919)]

def row105_layer002_block004 : List ColouredInterval :=
  [(61, 59536, 59640), (61, 63257, 63361), (67, 44890, 44994), (67, 49379, 49483), (67, 53868, 53972), (67, 58357, 58461), (67, 62846, 62950), (67, 67335, 67439), (67, 71824, 71928), (67, 76313, 76417), (71, 45369, 45473), (71, 50410, 50514), (71, 55451, 55555), (71, 60492, 60596), (71, 65533, 65637), (71, 70574, 70678)]

def row105_layer002_block005 : List ColouredInterval :=
  [(71, 75615, 75719), (71, 80656, 80760), (71, 85697, 85801), (73, 47961, 48065), (73, 53290, 53394), (73, 58619, 58723), (73, 63948, 64052), (73, 69277, 69381), (73, 74606, 74710), (73, 79935, 80039), (73, 85264, 85368), (79, 43687, 43791), (79, 49928, 50032), (79, 56169, 56273), (79, 62410, 62514), (79, 68651, 68755)]

def row105_layer002_block006 : List ColouredInterval :=
  [(79, 74892, 74996), (79, 81133, 81237), (83, 48223, 48327), (83, 55112, 55216), (83, 62001, 62105), (83, 68890, 68994), (83, 75779, 75883), (83, 82668, 82772), (89, 47526, 47630), (89, 55447, 55551), (89, 63368, 63472), (89, 71289, 71393), (89, 79210, 79314), (89, 87131, 87235), (97, 47045, 47149), (97, 56454, 56558)]

def row105_layer002_block007 : List ColouredInterval :=
  [(97, 65863, 65967), (97, 75272, 75376), (97, 84681, 84785), (101, 51005, 51109), (101, 61206, 61310), (101, 71407, 71511), (101, 81608, 81712), (103, 53045, 53149), (103, 63654, 63758), (103, 74263, 74367), (103, 84872, 84976)]

def row105_layer002_chunks : List (List ColouredInterval) :=
  [row105_layer002_block000, row105_layer002_block001, row105_layer002_block002, row105_layer002_block003, row105_layer002_block004, row105_layer002_block005, row105_layer002_block006, row105_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_arithmetic : LayerArithmeticValid row105.height { lower := 43680, upper := 87360, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_enumeration :
    activePowerIntervalList 105 17 43680 87360 = row105_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs000 :
    row105_layer002_block000.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs001 :
    row105_layer002_block001.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs002 :
    row105_layer002_block002.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs003 :
    row105_layer002_block003.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs004 :
    row105_layer002_block004.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs005 :
    row105_layer002_block005.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs006 :
    row105_layer002_block006.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_pairs007 :
    row105_layer002_block007.all (fun I => row105_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row105_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_chunks_eq : row105_layer002_chunks.flatten = row105_layer002_intervals := by
  rfl

theorem row105_layer002_pairs : pairCoverCheck row105_layer002_intervals row105_bounds = true := by
  apply pairCoverCheck_of_chunks row105_layer002_chunks_eq
  intro block hblock
  simp only [row105_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row105_layer002_pairs000
  · exact row105_layer002_pairs001
  · exact row105_layer002_pairs002
  · exact row105_layer002_pairs003
  · exact row105_layer002_pairs004
  · exact row105_layer002_pairs005
  · exact row105_layer002_pairs006
  · exact row105_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer002_checked :
    coverLayerCheck row105.height row105.goods { lower := 43680, upper := 87360, M := 17 } = true := by
  exact coverLayerCheck_of_parts row105_layer002_arithmetic row105_layer002_enumeration row105_bounds_eq row105_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row105_layer003_intervals : List ColouredInterval :=
  [(2, 90112, 90216), (2, 98304, 98408), (2, 106496, 106600), (2, 114688, 114792), (2, 98304, 98408), (2, 114688, 114792), (2, 131072, 131176), (2, 147456, 147560), (2, 163840, 163944), (2, 98304, 98408), (2, 131072, 131176), (2, 163840, 163944), (2, 131072, 131176), (2, 131072, 131176), (3, 118098, 118202), (5, 156250, 156354), (7, 117649, 117753), (11, 87846, 87950), (11, 102487, 102591), (11, 117128, 117232), (11, 131769, 131873), (11, 146410, 146514), (11, 161051, 161155), (11, 161051, 161155), (13, 114244, 114348), (13, 142805, 142909), (13, 171366, 171470), (17, 167042, 167146), (19, 89167, 89271), (19, 96026, 96130), (19, 130321, 130425), (23, 97336, 97440), (23, 109503, 109607), (23, 121670, 121774), (23, 133837, 133941), (23, 146004, 146108), (23, 158171, 158275), (23, 170338, 170442), (29, 97556, 97660), (29, 121945, 122049), (29, 146334, 146438), (29, 170723, 170827), (31, 89373, 89477), (31, 119164, 119268), (31, 148955, 149059), (37, 101306, 101410), (37, 151959, 152063), (41, 137842, 137946), (43, 159014, 159118), (47, 103823, 103927), (53, 148877, 148981), (79, 87374, 87478), (83, 89557, 89661), (83, 96446, 96550), (89, 95052, 95156), (89, 102973, 103077), (89, 110894, 110998), (97, 94090, 94194), (97, 103499, 103603), (97, 112908, 113012), (97, 122317, 122421), (97, 131726, 131830), (101, 91809, 91913), (101, 102010, 102114), (101, 112211, 112315), (101, 122412, 122516), (101, 132613, 132717), (101, 142814, 142918), (103, 95481, 95585), (103, 106090, 106194), (103, 116699, 116803), (103, 127308, 127412), (103, 137917, 138021), (103, 148526, 148630)]

def row105_layer003_block000 : List ColouredInterval :=
  [(2, 90112, 90216), (2, 98304, 98408), (2, 106496, 106600), (2, 114688, 114792), (2, 98304, 98408), (2, 114688, 114792), (2, 131072, 131176), (2, 147456, 147560), (2, 163840, 163944), (2, 98304, 98408), (2, 131072, 131176), (2, 163840, 163944), (2, 131072, 131176), (2, 131072, 131176), (3, 118098, 118202), (5, 156250, 156354)]

def row105_layer003_block001 : List ColouredInterval :=
  [(7, 117649, 117753), (11, 87846, 87950), (11, 102487, 102591), (11, 117128, 117232), (11, 131769, 131873), (11, 146410, 146514), (11, 161051, 161155), (11, 161051, 161155), (13, 114244, 114348), (13, 142805, 142909), (13, 171366, 171470), (17, 167042, 167146), (19, 89167, 89271), (19, 96026, 96130), (19, 130321, 130425), (23, 97336, 97440)]

def row105_layer003_block002 : List ColouredInterval :=
  [(23, 109503, 109607), (23, 121670, 121774), (23, 133837, 133941), (23, 146004, 146108), (23, 158171, 158275), (23, 170338, 170442), (29, 97556, 97660), (29, 121945, 122049), (29, 146334, 146438), (29, 170723, 170827), (31, 89373, 89477), (31, 119164, 119268), (31, 148955, 149059), (37, 101306, 101410), (37, 151959, 152063), (41, 137842, 137946)]

def row105_layer003_block003 : List ColouredInterval :=
  [(43, 159014, 159118), (47, 103823, 103927), (53, 148877, 148981), (79, 87374, 87478), (83, 89557, 89661), (83, 96446, 96550), (89, 95052, 95156), (89, 102973, 103077), (89, 110894, 110998), (97, 94090, 94194), (97, 103499, 103603), (97, 112908, 113012), (97, 122317, 122421), (97, 131726, 131830), (101, 91809, 91913), (101, 102010, 102114)]

def row105_layer003_block004 : List ColouredInterval :=
  [(101, 112211, 112315), (101, 122412, 122516), (101, 132613, 132717), (101, 142814, 142918), (103, 95481, 95585), (103, 106090, 106194), (103, 116699, 116803), (103, 127308, 127412), (103, 137917, 138021), (103, 148526, 148630)]

def row105_layer003_chunks : List (List ColouredInterval) :=
  [row105_layer003_block000, row105_layer003_block001, row105_layer003_block002, row105_layer003_block003, row105_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_arithmetic : LayerArithmeticValid row105.height { lower := 87360, upper := 174720, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row105_layer003_enumeration :
    activePowerIntervalList 105 14 87360 174720 = row105_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row105_layer003_enumeration
