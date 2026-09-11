import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_pairs007 :
    row046_layer000_block007.all (fun I => row046_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_pairs008 :
    row046_layer000_block008.all (fun I => row046_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_chunks_eq : row046_layer000_chunks.flatten = row046_layer000_intervals := by
  rfl

theorem row046_layer000_pairs : pairCoverCheck row046_layer000_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer000_chunks_eq
  intro block hblock
  simp only [row046_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer000_pairs000
  · exact row046_layer000_pairs001
  · exact row046_layer000_pairs002
  · exact row046_layer000_pairs003
  · exact row046_layer000_pairs004
  · exact row046_layer000_pairs005
  · exact row046_layer000_pairs006
  · exact row046_layer000_pairs007
  · exact row046_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer000_checked :
    coverLayerCheck row046.height row046.goods { lower := 2070, upper := 4140, M := 38 } = true := by
  exact coverLayerCheck_of_parts row046_layer000_arithmetic row046_layer000_enumeration row046_bounds_eq row046_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_layer001_intervals : List ColouredInterval :=
  [(2, 4140, 4141), (2, 4352, 4397), (2, 4608, 4653), (2, 4140, 4141), (2, 4608, 4653), (2, 5120, 5165), (2, 5632, 5677), (2, 6144, 6189), (2, 6656, 6701), (2, 7168, 7213), (2, 7680, 7725), (2, 8192, 8237), (2, 4140, 4141), (2, 5120, 5165), (2, 6144, 6189), (2, 7168, 7213), (2, 8192, 8237), (2, 4140, 4141), (2, 6144, 6189), (2, 8192, 8237), (2, 4140, 4141), (2, 8192, 8237), (2, 8192, 8237), (3, 4140, 4176), (3, 4374, 4419), (3, 4617, 4662), (3, 4860, 4905), (3, 5103, 5148), (3, 5346, 5391), (3, 5589, 5634), (3, 5832, 5877), (3, 6075, 6120), (3, 6318, 6363), (3, 6561, 6606), (3, 6804, 6849), (3, 7047, 7092), (3, 7290, 7335), (3, 7533, 7578), (3, 7776, 7821), (3, 8019, 8064), (3, 8262, 8279), (3, 4374, 4419), (3, 5103, 5148), (3, 5832, 5877), (3, 6561, 6606), (3, 7290, 7335), (3, 8019, 8064), (3, 4374, 4419), (3, 6561, 6606), (3, 6561, 6606), (5, 4140, 4170), (5, 4250, 4295), (5, 4375, 4420), (5, 4500, 4545), (5, 4375, 4420), (5, 5000, 5045), (5, 5625, 5670), (5, 6250, 6295), (5, 6875, 6920), (5, 7500, 7545), (5, 8125, 8170), (5, 6250, 6295), (7, 4140, 4161), (7, 4459, 4504), (7, 4802, 4847), (7, 5145, 5190), (7, 5488, 5533), (7, 5831, 5876), (7, 6174, 6219), (7, 6517, 6562), (7, 6860, 6905), (7, 7203, 7248), (7, 7546, 7591), (7, 7889, 7934), (7, 8232, 8277), (7, 4802, 4847), (7, 7203, 7248), (11, 4140, 4159), (11, 4235, 4280), (11, 4356, 4401), (11, 5324, 5369), (11, 6655, 6700), (11, 7986, 8031), (13, 4225, 4270), (13, 4394, 4439), (13, 4563, 4608), (13, 4732, 4777), (13, 4901, 4946), (13, 5070, 5115), (13, 5239, 5284), (13, 5408, 5453), (13, 5577, 5622), (13, 5746, 5791), (13, 5915, 5960), (13, 6084, 6129), (13, 4394, 4439), (13, 6591, 6636), (17, 4335, 4380), (17, 4624, 4669), (17, 4913, 4958), (17, 5202, 5247), (17, 5491, 5536), (17, 5780, 5825), (17, 6069, 6114), (17, 6358, 6403), (17, 6647, 6692), (17, 6936, 6981), (17, 7225, 7270), (17, 7514, 7559), (17, 7803, 7848), (17, 8092, 8137), (17, 4913, 4958), (19, 4332, 4377), (19, 4693, 4738), (19, 5054, 5099), (19, 5415, 5460), (19, 5776, 5821), (19, 6137, 6182), (19, 6498, 6543), (19, 6859, 6904), (19, 7220, 7265), (19, 7581, 7626), (19, 7942, 7987), (19, 6859, 6904), (29, 4205, 4250), (29, 5046, 5091), (29, 5887, 5932), (29, 6728, 6773), (29, 7569, 7614), (31, 4805, 4850), (31, 5766, 5811), (31, 6727, 6772), (31, 7688, 7733), (37, 4140, 4152), (37, 5476, 5521), (37, 6845, 6890), (37, 8214, 8259), (41, 5043, 5088), (41, 6724, 6769), (43, 5547, 5592), (43, 7396, 7441)]

def row046_layer001_block000 : List ColouredInterval :=
  [(2, 4140, 4141), (2, 4352, 4397), (2, 4608, 4653), (2, 4140, 4141), (2, 4608, 4653), (2, 5120, 5165), (2, 5632, 5677), (2, 6144, 6189), (2, 6656, 6701), (2, 7168, 7213), (2, 7680, 7725), (2, 8192, 8237), (2, 4140, 4141), (2, 5120, 5165)]

def row046_layer001_block001 : List ColouredInterval :=
  [(2, 6144, 6189), (2, 7168, 7213), (2, 8192, 8237), (2, 4140, 4141), (2, 6144, 6189), (2, 8192, 8237), (2, 4140, 4141), (2, 8192, 8237), (2, 8192, 8237), (3, 4140, 4176), (3, 4374, 4419), (3, 4617, 4662), (3, 4860, 4905), (3, 5103, 5148)]

def row046_layer001_block002 : List ColouredInterval :=
  [(3, 5346, 5391), (3, 5589, 5634), (3, 5832, 5877), (3, 6075, 6120), (3, 6318, 6363), (3, 6561, 6606), (3, 6804, 6849), (3, 7047, 7092), (3, 7290, 7335), (3, 7533, 7578), (3, 7776, 7821), (3, 8019, 8064), (3, 8262, 8279), (3, 4374, 4419)]

def row046_layer001_block003 : List ColouredInterval :=
  [(3, 5103, 5148), (3, 5832, 5877), (3, 6561, 6606), (3, 7290, 7335), (3, 8019, 8064), (3, 4374, 4419), (3, 6561, 6606), (3, 6561, 6606), (5, 4140, 4170), (5, 4250, 4295), (5, 4375, 4420), (5, 4500, 4545), (5, 4375, 4420), (5, 5000, 5045)]

def row046_layer001_block004 : List ColouredInterval :=
  [(5, 5625, 5670), (5, 6250, 6295), (5, 6875, 6920), (5, 7500, 7545), (5, 8125, 8170), (5, 6250, 6295), (7, 4140, 4161), (7, 4459, 4504), (7, 4802, 4847), (7, 5145, 5190), (7, 5488, 5533), (7, 5831, 5876), (7, 6174, 6219), (7, 6517, 6562)]

def row046_layer001_block005 : List ColouredInterval :=
  [(7, 6860, 6905), (7, 7203, 7248), (7, 7546, 7591), (7, 7889, 7934), (7, 8232, 8277), (7, 4802, 4847), (7, 7203, 7248), (11, 4140, 4159), (11, 4235, 4280), (11, 4356, 4401), (11, 5324, 5369), (11, 6655, 6700), (11, 7986, 8031), (13, 4225, 4270)]

def row046_layer001_block006 : List ColouredInterval :=
  [(13, 4394, 4439), (13, 4563, 4608), (13, 4732, 4777), (13, 4901, 4946), (13, 5070, 5115), (13, 5239, 5284), (13, 5408, 5453), (13, 5577, 5622), (13, 5746, 5791), (13, 5915, 5960), (13, 6084, 6129), (13, 4394, 4439), (13, 6591, 6636), (17, 4335, 4380)]

def row046_layer001_block007 : List ColouredInterval :=
  [(17, 4624, 4669), (17, 4913, 4958), (17, 5202, 5247), (17, 5491, 5536), (17, 5780, 5825), (17, 6069, 6114), (17, 6358, 6403), (17, 6647, 6692), (17, 6936, 6981), (17, 7225, 7270), (17, 7514, 7559), (17, 7803, 7848), (17, 8092, 8137), (17, 4913, 4958)]

def row046_layer001_block008 : List ColouredInterval :=
  [(19, 4332, 4377), (19, 4693, 4738), (19, 5054, 5099), (19, 5415, 5460), (19, 5776, 5821), (19, 6137, 6182), (19, 6498, 6543), (19, 6859, 6904), (19, 7220, 7265), (19, 7581, 7626), (19, 7942, 7987), (19, 6859, 6904), (29, 4205, 4250), (29, 5046, 5091)]

def row046_layer001_block009 : List ColouredInterval :=
  [(29, 5887, 5932), (29, 6728, 6773), (29, 7569, 7614), (31, 4805, 4850), (31, 5766, 5811), (31, 6727, 6772), (31, 7688, 7733), (37, 4140, 4152), (37, 5476, 5521), (37, 6845, 6890), (37, 8214, 8259), (41, 5043, 5088), (41, 6724, 6769), (43, 5547, 5592)]

def row046_layer001_block010 : List ColouredInterval :=
  [(43, 7396, 7441)]

def row046_layer001_chunks : List (List ColouredInterval) :=
  [row046_layer001_block000, row046_layer001_block001, row046_layer001_block002, row046_layer001_block003, row046_layer001_block004, row046_layer001_block005, row046_layer001_block006, row046_layer001_block007, row046_layer001_block008, row046_layer001_block009, row046_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer001_arithmetic : LayerArithmeticValid row046.height { lower := 4140, upper := 8280, M := 36 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer001_enumeration :
    activePowerIntervalList 46 36 4140 8280 = row046_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer001_pairs000 :
    row046_layer001_block000.all (fun I => row046_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_pairs000
