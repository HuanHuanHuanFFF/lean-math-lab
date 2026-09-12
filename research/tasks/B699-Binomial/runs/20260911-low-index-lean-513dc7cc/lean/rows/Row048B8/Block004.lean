import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer000_pairs004 :
    row048_layer000_block004.all (fun I => row048_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer000_pairs005 :
    row048_layer000_block005.all (fun I => row048_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer000_pairs006 :
    row048_layer000_block006.all (fun I => row048_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer000_chunks_eq : row048_layer000_chunks.flatten = row048_layer000_intervals := by
  rfl

theorem row048_layer000_pairs : pairCoverCheck row048_layer000_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer000_chunks_eq
  intro block hblock
  simp only [row048_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer000_pairs000
  · exact row048_layer000_pairs001
  · exact row048_layer000_pairs002
  · exact row048_layer000_pairs003
  · exact row048_layer000_pairs004
  · exact row048_layer000_pairs005
  · exact row048_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer000_checked :
    coverLayerCheck row048.height row048.goods { lower := 2256, upper := 4512, M := 44 } = true := by
  exact coverLayerCheck_of_parts row048_layer000_arithmetic row048_layer000_enumeration row048_bounds_eq row048_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer001_intervals : List ColouredInterval :=
  [(2, 8192, 8239), (2, 8192, 8239), (3, 5103, 5150), (3, 5832, 5879), (3, 6561, 6608), (3, 7290, 7337), (3, 8019, 8066), (3, 8748, 8795), (3, 6561, 6608), (3, 8748, 8795), (3, 6561, 6608), (5, 4512, 4547), (5, 4625, 4672), (5, 4750, 4797), (5, 4875, 4922), (5, 5000, 5047), (5, 5125, 5172), (5, 5250, 5297), (5, 5375, 5422), (5, 5000, 5047), (5, 5625, 5672), (5, 6250, 6297), (5, 6875, 6922), (5, 7500, 7547), (5, 8125, 8172), (5, 8750, 8797), (5, 6250, 6297), (7, 4802, 4849), (7, 5145, 5192), (7, 5488, 5535), (7, 5831, 5878), (7, 6174, 6221), (7, 6517, 6564), (7, 6860, 6907), (7, 7203, 7250), (7, 7546, 7593), (7, 7889, 7936), (7, 8232, 8279), (7, 8575, 8622), (7, 8918, 8965), (7, 4802, 4849), (7, 7203, 7250), (11, 4512, 4524), (11, 4598, 4645), (11, 4719, 4766), (11, 4840, 4887), (11, 4961, 5008), (11, 5082, 5129), (11, 5203, 5250), (11, 5324, 5371), (11, 6655, 6702), (11, 7986, 8033), (13, 4563, 4610), (13, 4732, 4779), (13, 4901, 4948), (13, 5070, 5117), (13, 5239, 5286), (13, 5408, 5455), (13, 5577, 5624), (13, 5746, 5793), (13, 5915, 5962), (13, 6084, 6131), (13, 6253, 6300), (13, 6422, 6469), (13, 6591, 6638), (13, 6760, 6807), (13, 6929, 6976), (13, 7098, 7145), (13, 7267, 7314), (13, 6591, 6638), (13, 8788, 8835), (17, 4624, 4671), (17, 4913, 4960), (17, 5202, 5249), (17, 5491, 5538), (17, 5780, 5827), (17, 6069, 6116), (17, 6358, 6405), (17, 6647, 6694), (17, 6936, 6983), (17, 7225, 7272), (17, 7514, 7561), (17, 7803, 7850), (17, 8092, 8139), (17, 8381, 8428), (17, 8670, 8717), (17, 8959, 9006), (17, 4913, 4960), (19, 4693, 4740), (19, 5054, 5101), (19, 5415, 5462), (19, 5776, 5823), (19, 6137, 6184), (19, 6498, 6545), (19, 6859, 6906), (19, 7220, 7267), (19, 7581, 7628), (19, 7942, 7989), (19, 8303, 8350), (19, 8664, 8711), (19, 6859, 6906), (23, 4761, 4808), (23, 5290, 5337), (23, 5819, 5866), (23, 6348, 6395), (23, 6877, 6924), (23, 7406, 7453), (23, 7935, 7982), (23, 8464, 8511), (23, 8993, 9023), (29, 5046, 5093), (29, 5887, 5934), (29, 6728, 6775), (29, 7569, 7616), (29, 8410, 8457), (31, 4805, 4852), (31, 5766, 5813), (31, 6727, 6774), (31, 7688, 7735), (31, 8649, 8696), (37, 5476, 5523), (37, 6845, 6892), (37, 8214, 8261), (41, 5043, 5090), (41, 6724, 6771), (41, 8405, 8452), (43, 5547, 5594), (43, 7396, 7443), (47, 6627, 6674), (47, 8836, 8883)]

def row048_layer001_block000 : List ColouredInterval :=
  [(2, 8192, 8239), (2, 8192, 8239), (3, 5103, 5150), (3, 5832, 5879), (3, 6561, 6608), (3, 7290, 7337), (3, 8019, 8066), (3, 8748, 8795), (3, 6561, 6608), (3, 8748, 8795), (3, 6561, 6608), (5, 4512, 4547), (5, 4625, 4672), (5, 4750, 4797), (5, 4875, 4922)]

def row048_layer001_block001 : List ColouredInterval :=
  [(5, 5000, 5047), (5, 5125, 5172), (5, 5250, 5297), (5, 5375, 5422), (5, 5000, 5047), (5, 5625, 5672), (5, 6250, 6297), (5, 6875, 6922), (5, 7500, 7547), (5, 8125, 8172), (5, 8750, 8797), (5, 6250, 6297), (7, 4802, 4849), (7, 5145, 5192), (7, 5488, 5535)]

def row048_layer001_block002 : List ColouredInterval :=
  [(7, 5831, 5878), (7, 6174, 6221), (7, 6517, 6564), (7, 6860, 6907), (7, 7203, 7250), (7, 7546, 7593), (7, 7889, 7936), (7, 8232, 8279), (7, 8575, 8622), (7, 8918, 8965), (7, 4802, 4849), (7, 7203, 7250), (11, 4512, 4524), (11, 4598, 4645), (11, 4719, 4766)]

def row048_layer001_block003 : List ColouredInterval :=
  [(11, 4840, 4887), (11, 4961, 5008), (11, 5082, 5129), (11, 5203, 5250), (11, 5324, 5371), (11, 6655, 6702), (11, 7986, 8033), (13, 4563, 4610), (13, 4732, 4779), (13, 4901, 4948), (13, 5070, 5117), (13, 5239, 5286), (13, 5408, 5455), (13, 5577, 5624), (13, 5746, 5793)]

def row048_layer001_block004 : List ColouredInterval :=
  [(13, 5915, 5962), (13, 6084, 6131), (13, 6253, 6300), (13, 6422, 6469), (13, 6591, 6638), (13, 6760, 6807), (13, 6929, 6976), (13, 7098, 7145), (13, 7267, 7314), (13, 6591, 6638), (13, 8788, 8835), (17, 4624, 4671), (17, 4913, 4960), (17, 5202, 5249), (17, 5491, 5538)]

def row048_layer001_block005 : List ColouredInterval :=
  [(17, 5780, 5827), (17, 6069, 6116), (17, 6358, 6405), (17, 6647, 6694), (17, 6936, 6983), (17, 7225, 7272), (17, 7514, 7561), (17, 7803, 7850), (17, 8092, 8139), (17, 8381, 8428), (17, 8670, 8717), (17, 8959, 9006), (17, 4913, 4960), (19, 4693, 4740), (19, 5054, 5101)]

def row048_layer001_block006 : List ColouredInterval :=
  [(19, 5415, 5462), (19, 5776, 5823), (19, 6137, 6184), (19, 6498, 6545), (19, 6859, 6906), (19, 7220, 7267), (19, 7581, 7628), (19, 7942, 7989), (19, 8303, 8350), (19, 8664, 8711), (19, 6859, 6906), (23, 4761, 4808), (23, 5290, 5337), (23, 5819, 5866), (23, 6348, 6395)]

def row048_layer001_block007 : List ColouredInterval :=
  [(23, 6877, 6924), (23, 7406, 7453), (23, 7935, 7982), (23, 8464, 8511), (23, 8993, 9023), (29, 5046, 5093), (29, 5887, 5934), (29, 6728, 6775), (29, 7569, 7616), (29, 8410, 8457), (31, 4805, 4852), (31, 5766, 5813), (31, 6727, 6774), (31, 7688, 7735), (31, 8649, 8696)]

def row048_layer001_block008 : List ColouredInterval :=
  [(37, 5476, 5523), (37, 6845, 6892), (37, 8214, 8261), (41, 5043, 5090), (41, 6724, 6771), (41, 8405, 8452), (43, 5547, 5594), (43, 7396, 7443), (47, 6627, 6674), (47, 8836, 8883)]

def row048_layer001_chunks : List (List ColouredInterval) :=
  [row048_layer001_block000, row048_layer001_block001, row048_layer001_block002, row048_layer001_block003, row048_layer001_block004, row048_layer001_block005, row048_layer001_block006, row048_layer001_block007, row048_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer001_arithmetic : LayerArithmeticValid row048.height { lower := 4512, upper := 9024, M := 43 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer001_enumeration :
    activePowerIntervalList 48 43 4512 9024 = row048_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_enumeration
