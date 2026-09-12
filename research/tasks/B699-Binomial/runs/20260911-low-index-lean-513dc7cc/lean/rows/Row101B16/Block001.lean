import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_registered :
    decide (row101.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row101_small_checked :
    coverCheck (2 * row101.height.i + 2) (row101.height.i * (row101.height.i - 1) - 1)
      (row101.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row101_layerCover_checked :
    coverCheck (row101.height.i * (row101.height.i - 1)) (row101.height.n0 - 1)
      (row101.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row101_bounds : List NatInterval :=
  [(204, 299), (300, 393), (394, 489), (490, 587), (588, 687), (688, 783), (784, 873), (874, 963), (964, 1053), (1054, 1151), (1152, 1251), (1252, 1349), (1350, 1427), (1428, 1527), (1528, 1623), (1624, 1721), (1722, 1821), (1822, 1911), (1912, 2007), (2008, 2103), (2104, 2199), (2200, 2279), (2280, 2373), (2374, 2471), (2472, 2567), (2568, 2657), (2658, 2757), (2758, 2853), (2854, 2951), (2952, 3039), (3040, 3137), (3138, 3237), (3238, 3329), (3330, 3429), (3430, 3513), (3514, 3611), (3612, 3707), (3708, 3801), (3802, 3897), (3898, 3989), (3990, 4089), (4090, 4179), (4180, 4277), (4278, 4373), (4374, 4473), (4474, 4563), (4564, 4661), (4662, 4757), (4758, 4851), (4852, 4931), (4932, 5031), (5032, 5123), (5124, 5219), (5220, 5309), (5310, 5409), (5410, 5507), (5508, 5607), (5608, 5691), (5692, 5789), (5790, 5883), (5884, 5981), (5982, 6081), (6082, 6179), (6180, 6273), (6274, 6371), (6372, 6467), (6468, 6551), (6552, 6651), (6652, 6737), (6738, 6837), (6838, 6933), (6934, 7017), (7018, 7113), (7114, 7209), (7210, 7307), (7308, 7407), (7408, 7493), (7494, 7589), (7590, 7689), (7690, 7787), (7788, 7859), (7860, 7953), (7954, 8051), (8052, 8139), (8140, 8223), (8224, 8321), (8322, 8417), (8418, 8489), (8490, 8567), (8568, 8663), (8664, 8763), (8764, 8861), (8862, 8961), (8962, 9051), (9052, 9149), (9150, 9237), (9238, 9327), (9328, 9423), (9424, 9521), (9522, 9621), (9622, 9719), (9720, 9819), (9820, 9917), (9918, 10007), (10008, 10107), (10108, 10186), (10240, 10306), (10625, 10713), (10714, 10748), (10935, 11009), (11010, 11085), (11094, 11145), (11163, 11194), (11236, 11313), (11314, 11350), (11774, 11843), (11844, 11867), (12005, 12079), (12321, 12388), (12393, 12421), (12482, 12579), (12580, 12593), (13182, 13222), (13254, 13282), (13310, 13409), (13410, 13410), (13454, 13551), (13552, 13556), (13718, 13811), (13812, 13818), (13851, 13878), (13924, 13951), (14336, 14397), (14406, 14501), (14502, 14506), (14739, 14741), (14792, 14839), (14884, 14892), (15123, 15221), (15222, 15229), (15360, 15459), (15460, 15479), (15979, 16073), (16074, 16079), (16384, 16481), (16482, 16484), (16810, 16887), (16888, 16910), (17303, 17398), (17408, 17501), (17502, 17508), (17576, 17596), (17672, 17676), (18490, 18581), (18582, 18590), (18634, 18705), (18723, 18734), (18750, 18849), (18850, 18850), (19208, 19266), (19663, 19761), (19762, 19763), (19773, 19783), (19965, 19981), (20172, 20261), (20262, 20264), (20535, 20633), (20634, 20635), (20667, 20677), (21870, 21963), (21964, 21975), (22188, 22190), (22472, 22569), (22570, 22572), (24037, 24129), (24130, 24137), (24334, 24429), (24430, 24467), (24576, 24665), (25000, 25064), (25215, 25289), (25290, 25315), (26411, 26464), (26508, 26511), (26645, 26724), (28125, 28190), (28717, 28772), (28812, 28817), (29791, 29868), (30758, 30820), (30926, 30999), (31213, 31293), (31294, 31313), (31329, 31350), (31423, 31429), (32805, 32868), (33708, 33714), (34375, 34469), (34470, 34491), (36517, 36597), (36598, 36601), (37303, 37310), (37500, 37546), (39326, 39423), (39424, 39426), (40401, 40428), (40960, 41031), (48013, 48061), (49152, 49230), (50421, 50510), (55451, 55541), (55542, 55547), (58619, 58664), (59049, 59056), (62500, 62510), (65610, 65636), (68651, 68690), (68921, 68990), (73205, 73267), (137842, 137881), (148955, 148977)]

theorem row101_bounds_eq : row101.goods.map goodSegmentBounds = row101_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row101_layer000_intervals : List ColouredInterval :=
  [(2, 10240, 10340), (2, 11264, 11364), (2, 12288, 12388), (2, 13312, 13412), (2, 14336, 14436), (2, 15360, 15460), (2, 16384, 16484), (2, 17408, 17508), (2, 18432, 18532), (2, 19456, 19556), (2, 10240, 10340), (2, 12288, 12388), (2, 14336, 14436), (2, 16384, 16484), (2, 18432, 18532), (2, 12288, 12388), (2, 16384, 16484), (2, 16384, 16484), (2, 16384, 16484), (3, 10206, 10306), (3, 10935, 11035), (3, 11664, 11764), (3, 12393, 12493), (3, 13122, 13222), (3, 13851, 13951), (3, 10935, 11035), (3, 13122, 13222), (3, 15309, 15409), (3, 17496, 17596), (3, 19683, 19783), (3, 13122, 13222), (3, 19683, 19783), (3, 19683, 19783), (5, 10100, 10100), (5, 10625, 10725), (5, 11250, 11350), (5, 11875, 11975), (5, 12500, 12600), (5, 15625, 15725), (5, 18750, 18850), (5, 15625, 15725), (7, 12005, 12105), (7, 14406, 14506), (7, 16807, 16907), (7, 19208, 19308), (7, 16807, 16907), (11, 10648, 10748), (11, 11979, 12079), (11, 13310, 13410), (11, 14641, 14741), (11, 15972, 16072), (11, 17303, 17403), (11, 18634, 18734), (11, 19965, 20065), (11, 14641, 14741), (13, 10985, 11085), (13, 13182, 13282), (13, 15379, 15479), (13, 17576, 17676), (13, 19773, 19873), (17, 14739, 14839), (17, 19652, 19752), (19, 13718, 13818), (23, 10100, 10151), (23, 12167, 12267), (29, 10100, 10192), (29, 10933, 11033), (29, 11774, 11874), (29, 12615, 12715), (29, 13456, 13556), (29, 14297, 14397), (29, 15138, 15238), (29, 15979, 16079), (31, 10571, 10671), (31, 11532, 11632), (31, 12493, 12593), (31, 13454, 13554), (31, 14415, 14515), (31, 15376, 15476), (31, 16337, 16437), (31, 17298, 17398), (31, 18259, 18359), (37, 10952, 11052), (37, 12321, 12421), (37, 13690, 13790), (37, 15059, 15159), (37, 16428, 16528), (37, 17797, 17897), (37, 19166, 19266), (41, 10100, 10186), (41, 11767, 11867), (41, 13448, 13548), (41, 15129, 15229), (41, 16810, 16910), (41, 18491, 18591), (41, 20172, 20199), (43, 11094, 11194), (43, 12943, 13043), (43, 14792, 14892), (43, 16641, 16741), (43, 18490, 18590), (47, 11045, 11145), (47, 13254, 13354), (47, 15463, 15563), (47, 17672, 17772), (47, 19881, 19981), (53, 11236, 11336), (53, 14045, 14145), (53, 16854, 16954), (53, 19663, 19763), (59, 10443, 10543), (59, 13924, 14024), (59, 17405, 17505), (61, 11163, 11263), (61, 14884, 14984), (61, 18605, 18705), (67, 13467, 13567), (67, 17956, 18056), (71, 10100, 10182), (71, 15123, 15223), (71, 20164, 20199), (73, 10658, 10758), (73, 15987, 16087), (79, 12482, 12582), (79, 18723, 18823), (83, 13778, 13878), (89, 15842, 15942), (97, 18818, 18918)]

def row101_layer000_block000 : List ColouredInterval :=
  [(2, 10240, 10340), (2, 11264, 11364), (2, 12288, 12388), (2, 13312, 13412), (2, 14336, 14436), (2, 15360, 15460), (2, 16384, 16484), (2, 17408, 17508), (2, 18432, 18532), (2, 19456, 19556), (2, 10240, 10340), (2, 12288, 12388), (2, 14336, 14436), (2, 16384, 16484), (2, 18432, 18532), (2, 12288, 12388)]

def row101_layer000_block001 : List ColouredInterval :=
  [(2, 16384, 16484), (2, 16384, 16484), (2, 16384, 16484), (3, 10206, 10306), (3, 10935, 11035), (3, 11664, 11764), (3, 12393, 12493), (3, 13122, 13222), (3, 13851, 13951), (3, 10935, 11035), (3, 13122, 13222), (3, 15309, 15409), (3, 17496, 17596), (3, 19683, 19783), (3, 13122, 13222), (3, 19683, 19783)]

def row101_layer000_block002 : List ColouredInterval :=
  [(3, 19683, 19783), (5, 10100, 10100), (5, 10625, 10725), (5, 11250, 11350), (5, 11875, 11975), (5, 12500, 12600), (5, 15625, 15725), (5, 18750, 18850), (5, 15625, 15725), (7, 12005, 12105), (7, 14406, 14506), (7, 16807, 16907), (7, 19208, 19308), (7, 16807, 16907), (11, 10648, 10748), (11, 11979, 12079)]

def row101_layer000_block003 : List ColouredInterval :=
  [(11, 13310, 13410), (11, 14641, 14741), (11, 15972, 16072), (11, 17303, 17403), (11, 18634, 18734), (11, 19965, 20065), (11, 14641, 14741), (13, 10985, 11085), (13, 13182, 13282), (13, 15379, 15479), (13, 17576, 17676), (13, 19773, 19873), (17, 14739, 14839), (17, 19652, 19752), (19, 13718, 13818), (23, 10100, 10151)]

def row101_layer000_block004 : List ColouredInterval :=
  [(23, 12167, 12267), (29, 10100, 10192), (29, 10933, 11033), (29, 11774, 11874), (29, 12615, 12715), (29, 13456, 13556), (29, 14297, 14397), (29, 15138, 15238), (29, 15979, 16079), (31, 10571, 10671), (31, 11532, 11632), (31, 12493, 12593), (31, 13454, 13554), (31, 14415, 14515), (31, 15376, 15476), (31, 16337, 16437)]

def row101_layer000_block005 : List ColouredInterval :=
  [(31, 17298, 17398), (31, 18259, 18359), (37, 10952, 11052), (37, 12321, 12421), (37, 13690, 13790), (37, 15059, 15159), (37, 16428, 16528), (37, 17797, 17897), (37, 19166, 19266), (41, 10100, 10186), (41, 11767, 11867), (41, 13448, 13548), (41, 15129, 15229), (41, 16810, 16910), (41, 18491, 18591), (41, 20172, 20199)]

def row101_layer000_block006 : List ColouredInterval :=
  [(43, 11094, 11194), (43, 12943, 13043), (43, 14792, 14892), (43, 16641, 16741), (43, 18490, 18590), (47, 11045, 11145), (47, 13254, 13354), (47, 15463, 15563), (47, 17672, 17772), (47, 19881, 19981), (53, 11236, 11336), (53, 14045, 14145), (53, 16854, 16954), (53, 19663, 19763), (59, 10443, 10543), (59, 13924, 14024)]

def row101_layer000_block007 : List ColouredInterval :=
  [(59, 17405, 17505), (61, 11163, 11263), (61, 14884, 14984), (61, 18605, 18705), (67, 13467, 13567), (67, 17956, 18056), (71, 10100, 10182), (71, 15123, 15223), (71, 20164, 20199), (73, 10658, 10758), (73, 15987, 16087), (79, 12482, 12582), (79, 18723, 18823), (83, 13778, 13878), (89, 15842, 15942), (97, 18818, 18918)]

def row101_layer000_chunks : List (List ColouredInterval) :=
  [row101_layer000_block000, row101_layer000_block001, row101_layer000_block002, row101_layer000_block003, row101_layer000_block004, row101_layer000_block005, row101_layer000_block006, row101_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_arithmetic : LayerArithmeticValid row101.height { lower := 10100, upper := 20200, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_enumeration :
    activePowerIntervalList 101 19 10100 20200 = row101_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs000 :
    row101_layer000_block000.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs001 :
    row101_layer000_block001.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs002 :
    row101_layer000_block002.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs003 :
    row101_layer000_block003.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs004 :
    row101_layer000_block004.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs005 :
    row101_layer000_block005.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs006 :
    row101_layer000_block006.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_pairs007 :
    row101_layer000_block007.all (fun I => row101_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_chunks_eq : row101_layer000_chunks.flatten = row101_layer000_intervals := by
  rfl

theorem row101_layer000_pairs : pairCoverCheck row101_layer000_intervals row101_bounds = true := by
  apply pairCoverCheck_of_chunks row101_layer000_chunks_eq
  intro block hblock
  simp only [row101_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row101_layer000_pairs000
  · exact row101_layer000_pairs001
  · exact row101_layer000_pairs002
  · exact row101_layer000_pairs003
  · exact row101_layer000_pairs004
  · exact row101_layer000_pairs005
  · exact row101_layer000_pairs006
  · exact row101_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer000_checked :
    coverLayerCheck row101.height row101.goods { lower := 10100, upper := 20200, M := 19 } = true := by
  exact coverLayerCheck_of_parts row101_layer000_arithmetic row101_layer000_enumeration row101_bounds_eq row101_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row101_layer001_intervals : List ColouredInterval :=
  [(2, 20480, 20580), (2, 22528, 22628), (2, 24576, 24676), (2, 26624, 26724), (2, 28672, 28772), (2, 30720, 30820), (2, 20480, 20580), (2, 24576, 24676), (2, 28672, 28772), (2, 32768, 32868), (2, 36864, 36964), (2, 24576, 24676), (2, 32768, 32868), (2, 32768, 32868), (2, 32768, 32868), (3, 21870, 21970), (3, 24057, 24157), (3, 26244, 26344), (3, 28431, 28531), (3, 30618, 30718), (3, 32805, 32905), (3, 26244, 26344), (3, 32805, 32905), (3, 39366, 39466), (3, 39366, 39466), (5, 21875, 21975), (5, 25000, 25100), (5, 28125, 28225), (5, 31250, 31350), (5, 34375, 34475), (5, 37500, 37600), (5, 31250, 31350), (7, 21609, 21709), (7, 24010, 24110), (7, 26411, 26511), (7, 28812, 28912), (7, 31213, 31313), (7, 33614, 33714), (7, 36015, 36115), (7, 33614, 33714), (11, 29282, 29382), (13, 21970, 22070), (13, 24167, 24267), (13, 26364, 26464), (13, 28561, 28661), (13, 30758, 30858), (13, 32955, 33055), (13, 28561, 28661), (17, 24565, 24665), (17, 29478, 29578), (17, 34391, 34491), (17, 39304, 39404), (19, 20577, 20677), (19, 27436, 27536), (19, 34295, 34395), (23, 24334, 24434), (23, 36501, 36601), (29, 24389, 24489), (31, 29791, 29891), (37, 20535, 20635), (41, 20200, 20272), (41, 21853, 21953), (41, 23534, 23634), (41, 25215, 25315), (43, 20339, 20439), (43, 22188, 22288), (43, 24037, 24137), (43, 25886, 25986), (43, 27735, 27835), (47, 22090, 22190), (47, 24299, 24399), (47, 26508, 26608), (47, 28717, 28817), (47, 30926, 31026), (47, 33135, 33235), (53, 22472, 22572), (53, 25281, 25381), (53, 28090, 28190), (53, 30899, 30999), (53, 33708, 33808), (53, 36517, 36617), (53, 39326, 39426), (59, 20886, 20986), (59, 24367, 24467), (59, 27848, 27948), (59, 31329, 31429), (59, 34810, 34910), (59, 38291, 38391), (61, 22326, 22426), (61, 26047, 26147), (61, 29768, 29868), (61, 33489, 33589), (61, 37210, 37310), (67, 22445, 22545), (67, 26934, 27034), (67, 31423, 31523), (67, 35912, 36012), (71, 20200, 20264), (71, 25205, 25305), (71, 30246, 30346), (71, 35287, 35387), (71, 40328, 40399), (73, 21316, 21416), (73, 26645, 26745), (73, 31974, 32074), (73, 37303, 37403), (79, 24964, 25064), (79, 31205, 31305), (79, 37446, 37546), (83, 20667, 20767), (83, 27556, 27656), (83, 34445, 34545), (89, 23763, 23863), (89, 31684, 31784), (89, 39605, 39705), (97, 28227, 28327), (97, 37636, 37736)]

def row101_layer001_block000 : List ColouredInterval :=
  [(2, 20480, 20580), (2, 22528, 22628), (2, 24576, 24676), (2, 26624, 26724), (2, 28672, 28772), (2, 30720, 30820), (2, 20480, 20580), (2, 24576, 24676), (2, 28672, 28772), (2, 32768, 32868), (2, 36864, 36964), (2, 24576, 24676), (2, 32768, 32868), (2, 32768, 32868), (2, 32768, 32868), (3, 21870, 21970)]

def row101_layer001_block001 : List ColouredInterval :=
  [(3, 24057, 24157), (3, 26244, 26344), (3, 28431, 28531), (3, 30618, 30718), (3, 32805, 32905), (3, 26244, 26344), (3, 32805, 32905), (3, 39366, 39466), (3, 39366, 39466), (5, 21875, 21975), (5, 25000, 25100), (5, 28125, 28225), (5, 31250, 31350), (5, 34375, 34475), (5, 37500, 37600), (5, 31250, 31350)]

def row101_layer001_block002 : List ColouredInterval :=
  [(7, 21609, 21709), (7, 24010, 24110), (7, 26411, 26511), (7, 28812, 28912), (7, 31213, 31313), (7, 33614, 33714), (7, 36015, 36115), (7, 33614, 33714), (11, 29282, 29382), (13, 21970, 22070), (13, 24167, 24267), (13, 26364, 26464), (13, 28561, 28661), (13, 30758, 30858), (13, 32955, 33055), (13, 28561, 28661)]

def row101_layer001_block003 : List ColouredInterval :=
  [(17, 24565, 24665), (17, 29478, 29578), (17, 34391, 34491), (17, 39304, 39404), (19, 20577, 20677), (19, 27436, 27536), (19, 34295, 34395), (23, 24334, 24434), (23, 36501, 36601), (29, 24389, 24489), (31, 29791, 29891), (37, 20535, 20635), (41, 20200, 20272), (41, 21853, 21953), (41, 23534, 23634), (41, 25215, 25315)]

def row101_layer001_block004 : List ColouredInterval :=
  [(43, 20339, 20439), (43, 22188, 22288), (43, 24037, 24137), (43, 25886, 25986), (43, 27735, 27835), (47, 22090, 22190), (47, 24299, 24399), (47, 26508, 26608), (47, 28717, 28817), (47, 30926, 31026), (47, 33135, 33235), (53, 22472, 22572), (53, 25281, 25381), (53, 28090, 28190), (53, 30899, 30999), (53, 33708, 33808)]

def row101_layer001_block005 : List ColouredInterval :=
  [(53, 36517, 36617), (53, 39326, 39426), (59, 20886, 20986), (59, 24367, 24467), (59, 27848, 27948), (59, 31329, 31429), (59, 34810, 34910), (59, 38291, 38391), (61, 22326, 22426), (61, 26047, 26147), (61, 29768, 29868), (61, 33489, 33589), (61, 37210, 37310), (67, 22445, 22545), (67, 26934, 27034), (67, 31423, 31523)]

def row101_layer001_block006 : List ColouredInterval :=
  [(67, 35912, 36012), (71, 20200, 20264), (71, 25205, 25305), (71, 30246, 30346), (71, 35287, 35387), (71, 40328, 40399), (73, 21316, 21416), (73, 26645, 26745), (73, 31974, 32074), (73, 37303, 37403), (79, 24964, 25064), (79, 31205, 31305), (79, 37446, 37546), (83, 20667, 20767), (83, 27556, 27656), (83, 34445, 34545)]

def row101_layer001_block007 : List ColouredInterval :=
  [(89, 23763, 23863), (89, 31684, 31784), (89, 39605, 39705), (97, 28227, 28327), (97, 37636, 37736)]

def row101_layer001_chunks : List (List ColouredInterval) :=
  [row101_layer001_block000, row101_layer001_block001, row101_layer001_block002, row101_layer001_block003, row101_layer001_block004, row101_layer001_block005, row101_layer001_block006, row101_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_intervals
