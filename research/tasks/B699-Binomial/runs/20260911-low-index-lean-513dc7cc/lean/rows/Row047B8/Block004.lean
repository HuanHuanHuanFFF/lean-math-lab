import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer000_pairs007 :
    row047_layer000_block007.all (fun I => row047_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer000_pairs008 :
    row047_layer000_block008.all (fun I => row047_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer000_pairs009 :
    row047_layer000_block009.all (fun I => row047_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer000_pairs010 :
    row047_layer000_block010.all (fun I => row047_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer000_chunks_eq : row047_layer000_chunks.flatten = row047_layer000_intervals := by
  rfl

theorem row047_layer000_pairs : pairCoverCheck row047_layer000_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer000_chunks_eq
  intro block hblock
  simp only [row047_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row047_layer000_pairs000
  · exact row047_layer000_pairs001
  · exact row047_layer000_pairs002
  · exact row047_layer000_pairs003
  · exact row047_layer000_pairs004
  · exact row047_layer000_pairs005
  · exact row047_layer000_pairs006
  · exact row047_layer000_pairs007
  · exact row047_layer000_pairs008
  · exact row047_layer000_pairs009
  · exact row047_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer000_checked :
    coverLayerCheck row047.height row047.goods { lower := 2162, upper := 4324, M := 34 } = true := by
  exact coverLayerCheck_of_parts row047_layer000_arithmetic row047_layer000_enumeration row047_bounds_eq row047_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer001_intervals : List ColouredInterval :=
  [(2, 4352, 4398), (2, 4608, 4654), (2, 4864, 4910), (2, 5120, 5166), (2, 5376, 5422), (2, 5632, 5678), (2, 5888, 5934), (2, 6144, 6190), (2, 6400, 6446), (2, 6656, 6702), (2, 6912, 6958), (2, 7168, 7214), (2, 7424, 7470), (2, 7680, 7726), (2, 7936, 7982), (2, 8192, 8238), (2, 4608, 4654), (2, 5120, 5166), (2, 5632, 5678), (2, 6144, 6190), (2, 6656, 6702), (2, 7168, 7214), (2, 7680, 7726), (2, 8192, 8238), (2, 5120, 5166), (2, 6144, 6190), (2, 7168, 7214), (2, 8192, 8238), (2, 6144, 6190), (2, 8192, 8238), (2, 8192, 8238), (2, 8192, 8238), (3, 4374, 4420), (3, 4617, 4663), (3, 4860, 4906), (3, 5103, 5149), (3, 5346, 5392), (3, 5589, 5635), (3, 5832, 5878), (3, 6075, 6121), (3, 6318, 6364), (3, 6561, 6607), (3, 6804, 6850), (3, 7047, 7093), (3, 7290, 7336), (3, 7533, 7579), (3, 7776, 7822), (3, 4374, 4420), (3, 5103, 5149), (3, 5832, 5878), (3, 6561, 6607), (3, 7290, 7336), (3, 8019, 8065), (3, 4374, 4420), (3, 6561, 6607), (3, 6561, 6607), (5, 4375, 4421), (5, 5000, 5046), (5, 5625, 5671), (5, 6250, 6296), (5, 6875, 6921), (5, 7500, 7546), (5, 8125, 8171), (5, 6250, 6296), (7, 4459, 4505), (7, 4802, 4848), (7, 5145, 5191), (7, 5488, 5534), (7, 5831, 5877), (7, 6174, 6220), (7, 6517, 6563), (7, 6860, 6906), (7, 7203, 7249), (7, 7546, 7592), (7, 7889, 7935), (7, 8232, 8278), (7, 8575, 8621), (7, 4802, 4848), (7, 7203, 7249), (11, 5324, 5370), (11, 6655, 6701), (11, 7986, 8032), (13, 4394, 4440), (13, 4563, 4609), (13, 4732, 4778), (13, 4901, 4947), (13, 5070, 5116), (13, 5239, 5285), (13, 5408, 5454), (13, 4394, 4440), (13, 6591, 6637), (17, 4335, 4381), (17, 4624, 4670), (17, 4913, 4959), (17, 5202, 5248), (17, 5491, 5537), (17, 5780, 5826), (17, 6069, 6115), (17, 6358, 6404), (17, 6647, 6693), (17, 6936, 6982), (17, 7225, 7271), (17, 7514, 7560), (17, 7803, 7849), (17, 8092, 8138), (17, 8381, 8427), (17, 4913, 4959), (19, 4332, 4378), (19, 4693, 4739), (19, 5054, 5100), (19, 5415, 5461), (19, 5776, 5822), (19, 6137, 6183), (19, 6498, 6544), (19, 6859, 6905), (19, 7220, 7266), (19, 7581, 7627), (19, 7942, 7988), (19, 8303, 8349), (19, 6859, 6905), (23, 4761, 4807), (23, 5290, 5336), (23, 5819, 5865), (23, 6348, 6394), (23, 6877, 6923), (23, 7406, 7452), (23, 7935, 7981), (23, 8464, 8510), (29, 5046, 5092), (29, 5887, 5933), (29, 6728, 6774), (29, 7569, 7615), (29, 8410, 8456), (31, 4805, 4851), (31, 5766, 5812), (31, 6727, 6773), (31, 7688, 7734), (37, 5476, 5522), (37, 6845, 6891), (37, 8214, 8260), (41, 5043, 5089), (41, 6724, 6770), (41, 8405, 8451), (43, 5547, 5593), (43, 7396, 7442)]

def row047_layer001_block000 : List ColouredInterval :=
  [(2, 4352, 4398), (2, 4608, 4654), (2, 4864, 4910), (2, 5120, 5166), (2, 5376, 5422), (2, 5632, 5678), (2, 5888, 5934), (2, 6144, 6190), (2, 6400, 6446), (2, 6656, 6702), (2, 6912, 6958), (2, 7168, 7214), (2, 7424, 7470), (2, 7680, 7726)]

def row047_layer001_block001 : List ColouredInterval :=
  [(2, 7936, 7982), (2, 8192, 8238), (2, 4608, 4654), (2, 5120, 5166), (2, 5632, 5678), (2, 6144, 6190), (2, 6656, 6702), (2, 7168, 7214), (2, 7680, 7726), (2, 8192, 8238), (2, 5120, 5166), (2, 6144, 6190), (2, 7168, 7214), (2, 8192, 8238)]

def row047_layer001_block002 : List ColouredInterval :=
  [(2, 6144, 6190), (2, 8192, 8238), (2, 8192, 8238), (2, 8192, 8238), (3, 4374, 4420), (3, 4617, 4663), (3, 4860, 4906), (3, 5103, 5149), (3, 5346, 5392), (3, 5589, 5635), (3, 5832, 5878), (3, 6075, 6121), (3, 6318, 6364), (3, 6561, 6607)]

def row047_layer001_block003 : List ColouredInterval :=
  [(3, 6804, 6850), (3, 7047, 7093), (3, 7290, 7336), (3, 7533, 7579), (3, 7776, 7822), (3, 4374, 4420), (3, 5103, 5149), (3, 5832, 5878), (3, 6561, 6607), (3, 7290, 7336), (3, 8019, 8065), (3, 4374, 4420), (3, 6561, 6607), (3, 6561, 6607)]

def row047_layer001_block004 : List ColouredInterval :=
  [(5, 4375, 4421), (5, 5000, 5046), (5, 5625, 5671), (5, 6250, 6296), (5, 6875, 6921), (5, 7500, 7546), (5, 8125, 8171), (5, 6250, 6296), (7, 4459, 4505), (7, 4802, 4848), (7, 5145, 5191), (7, 5488, 5534), (7, 5831, 5877), (7, 6174, 6220)]

def row047_layer001_block005 : List ColouredInterval :=
  [(7, 6517, 6563), (7, 6860, 6906), (7, 7203, 7249), (7, 7546, 7592), (7, 7889, 7935), (7, 8232, 8278), (7, 8575, 8621), (7, 4802, 4848), (7, 7203, 7249), (11, 5324, 5370), (11, 6655, 6701), (11, 7986, 8032), (13, 4394, 4440), (13, 4563, 4609)]

def row047_layer001_block006 : List ColouredInterval :=
  [(13, 4732, 4778), (13, 4901, 4947), (13, 5070, 5116), (13, 5239, 5285), (13, 5408, 5454), (13, 4394, 4440), (13, 6591, 6637), (17, 4335, 4381), (17, 4624, 4670), (17, 4913, 4959), (17, 5202, 5248), (17, 5491, 5537), (17, 5780, 5826), (17, 6069, 6115)]

def row047_layer001_block007 : List ColouredInterval :=
  [(17, 6358, 6404), (17, 6647, 6693), (17, 6936, 6982), (17, 7225, 7271), (17, 7514, 7560), (17, 7803, 7849), (17, 8092, 8138), (17, 8381, 8427), (17, 4913, 4959), (19, 4332, 4378), (19, 4693, 4739), (19, 5054, 5100), (19, 5415, 5461), (19, 5776, 5822)]

def row047_layer001_block008 : List ColouredInterval :=
  [(19, 6137, 6183), (19, 6498, 6544), (19, 6859, 6905), (19, 7220, 7266), (19, 7581, 7627), (19, 7942, 7988), (19, 8303, 8349), (19, 6859, 6905), (23, 4761, 4807), (23, 5290, 5336), (23, 5819, 5865), (23, 6348, 6394), (23, 6877, 6923), (23, 7406, 7452)]

def row047_layer001_block009 : List ColouredInterval :=
  [(23, 7935, 7981), (23, 8464, 8510), (29, 5046, 5092), (29, 5887, 5933), (29, 6728, 6774), (29, 7569, 7615), (29, 8410, 8456), (31, 4805, 4851), (31, 5766, 5812), (31, 6727, 6773), (31, 7688, 7734), (37, 5476, 5522), (37, 6845, 6891), (37, 8214, 8260)]

def row047_layer001_block010 : List ColouredInterval :=
  [(41, 5043, 5089), (41, 6724, 6770), (41, 8405, 8451), (43, 5547, 5593), (43, 7396, 7442)]

def row047_layer001_chunks : List (List ColouredInterval) :=
  [row047_layer001_block000, row047_layer001_block001, row047_layer001_block002, row047_layer001_block003, row047_layer001_block004, row047_layer001_block005, row047_layer001_block006, row047_layer001_block007, row047_layer001_block008, row047_layer001_block009, row047_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer001_arithmetic : LayerArithmeticValid row047.height { lower := 4324, upper := 8648, M := 32 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_arithmetic
