import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer002_chunks_eq : row046_layer002_chunks.flatten = row046_layer002_intervals := by
  rfl

theorem row046_layer002_pairs : pairCoverCheck row046_layer002_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer002_chunks_eq
  intro block hblock
  simp only [row046_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer002_pairs000
  · exact row046_layer002_pairs001
  · exact row046_layer002_pairs002
  · exact row046_layer002_pairs003
  · exact row046_layer002_pairs004
  · exact row046_layer002_pairs005
  · exact row046_layer002_pairs006
  · exact row046_layer002_pairs007
  · exact row046_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer002_checked :
    coverLayerCheck row046.height row046.goods { lower := 8280, upper := 16560, M := 34 } = true := by
  exact coverLayerCheck_of_parts row046_layer002_arithmetic row046_layer002_enumeration row046_bounds_eq row046_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_layer003_intervals : List ColouredInterval :=
  [(2, 18432, 18477), (2, 20480, 20525), (2, 22528, 22573), (2, 24576, 24621), (2, 26624, 26669), (2, 28672, 28717), (2, 30720, 30765), (2, 32768, 32813), (2, 20480, 20525), (2, 24576, 24621), (2, 28672, 28717), (2, 32768, 32813), (2, 24576, 24621), (2, 32768, 32813), (2, 32768, 32813), (2, 32768, 32813), (3, 16767, 16812), (3, 17496, 17541), (3, 18225, 18270), (3, 18954, 18999), (3, 19683, 19728), (3, 20412, 20457), (3, 21141, 21186), (3, 21870, 21915), (3, 22599, 22644), (3, 23328, 23373), (3, 17496, 17541), (3, 19683, 19728), (3, 21870, 21915), (3, 24057, 24102), (3, 26244, 26289), (3, 28431, 28476), (3, 30618, 30663), (3, 32805, 32850), (3, 19683, 19728), (3, 26244, 26289), (3, 32805, 32850), (3, 19683, 19728), (5, 16875, 16920), (5, 17500, 17545), (5, 18125, 18170), (5, 18750, 18795), (5, 19375, 19420), (5, 20000, 20045), (5, 18750, 18795), (5, 21875, 21920), (5, 25000, 25045), (5, 28125, 28170), (5, 31250, 31295), (5, 31250, 31295), (7, 16807, 16852), (7, 19208, 19253), (7, 21609, 21654), (7, 24010, 24055), (7, 26411, 26456), (7, 28812, 28857), (7, 31213, 31258), (7, 16807, 16852), (11, 17303, 17348), (11, 18634, 18679), (11, 19965, 20010), (11, 21296, 21341), (11, 22627, 22672), (11, 23958, 24003), (11, 25289, 25334), (11, 26620, 26665), (11, 27951, 27996), (11, 29282, 29327), (11, 30613, 30658), (11, 31944, 31989), (11, 29282, 29327), (13, 17576, 17621), (13, 19773, 19818), (13, 21970, 22015), (13, 24167, 24212), (13, 26364, 26409), (13, 28561, 28606), (13, 30758, 30803), (13, 32955, 33000), (13, 28561, 28606), (17, 19652, 19697), (17, 24565, 24610), (17, 29478, 29523), (19, 20577, 20622), (19, 27436, 27481), (29, 16820, 16865), (29, 17661, 17706), (29, 18502, 18547), (29, 19343, 19388), (29, 20184, 20229), (29, 21025, 21070), (29, 21866, 21911), (29, 22707, 22752), (29, 23548, 23593), (29, 24389, 24434), (29, 25230, 25275), (29, 26071, 26116), (29, 26912, 26957), (29, 24389, 24434), (31, 17298, 17343), (31, 18259, 18304), (31, 19220, 19265), (31, 20181, 20226), (31, 21142, 21187), (31, 22103, 22148), (31, 23064, 23109), (31, 24025, 24070), (31, 24986, 25031), (31, 25947, 25992), (31, 26908, 26953), (31, 27869, 27914), (31, 28830, 28875), (31, 29791, 29836), (31, 30752, 30797), (31, 29791, 29836), (37, 17797, 17842), (37, 19166, 19211), (37, 20535, 20580), (37, 21904, 21949), (37, 23273, 23318), (37, 24642, 24687), (37, 26011, 26056), (37, 27380, 27425), (37, 28749, 28794), (37, 30118, 30163), (37, 31487, 31532), (37, 32856, 32901), (41, 16810, 16855), (41, 18491, 18536), (41, 20172, 20217), (41, 21853, 21898), (41, 23534, 23579), (41, 25215, 25260), (41, 26896, 26941), (41, 28577, 28622), (41, 30258, 30303), (41, 31939, 31984), (43, 16641, 16686), (43, 18490, 18535), (43, 20339, 20384), (43, 22188, 22233), (43, 24037, 24082), (43, 25886, 25931), (43, 27735, 27780), (43, 29584, 29629), (43, 31433, 31478)]

def row046_layer003_block000 : List ColouredInterval :=
  [(2, 18432, 18477), (2, 20480, 20525), (2, 22528, 22573), (2, 24576, 24621), (2, 26624, 26669), (2, 28672, 28717), (2, 30720, 30765), (2, 32768, 32813), (2, 20480, 20525), (2, 24576, 24621), (2, 28672, 28717), (2, 32768, 32813), (2, 24576, 24621), (2, 32768, 32813)]

def row046_layer003_block001 : List ColouredInterval :=
  [(2, 32768, 32813), (2, 32768, 32813), (3, 16767, 16812), (3, 17496, 17541), (3, 18225, 18270), (3, 18954, 18999), (3, 19683, 19728), (3, 20412, 20457), (3, 21141, 21186), (3, 21870, 21915), (3, 22599, 22644), (3, 23328, 23373), (3, 17496, 17541), (3, 19683, 19728)]

def row046_layer003_block002 : List ColouredInterval :=
  [(3, 21870, 21915), (3, 24057, 24102), (3, 26244, 26289), (3, 28431, 28476), (3, 30618, 30663), (3, 32805, 32850), (3, 19683, 19728), (3, 26244, 26289), (3, 32805, 32850), (3, 19683, 19728), (5, 16875, 16920), (5, 17500, 17545), (5, 18125, 18170), (5, 18750, 18795)]

def row046_layer003_block003 : List ColouredInterval :=
  [(5, 19375, 19420), (5, 20000, 20045), (5, 18750, 18795), (5, 21875, 21920), (5, 25000, 25045), (5, 28125, 28170), (5, 31250, 31295), (5, 31250, 31295), (7, 16807, 16852), (7, 19208, 19253), (7, 21609, 21654), (7, 24010, 24055), (7, 26411, 26456), (7, 28812, 28857)]

def row046_layer003_block004 : List ColouredInterval :=
  [(7, 31213, 31258), (7, 16807, 16852), (11, 17303, 17348), (11, 18634, 18679), (11, 19965, 20010), (11, 21296, 21341), (11, 22627, 22672), (11, 23958, 24003), (11, 25289, 25334), (11, 26620, 26665), (11, 27951, 27996), (11, 29282, 29327), (11, 30613, 30658), (11, 31944, 31989)]

def row046_layer003_block005 : List ColouredInterval :=
  [(11, 29282, 29327), (13, 17576, 17621), (13, 19773, 19818), (13, 21970, 22015), (13, 24167, 24212), (13, 26364, 26409), (13, 28561, 28606), (13, 30758, 30803), (13, 32955, 33000), (13, 28561, 28606), (17, 19652, 19697), (17, 24565, 24610), (17, 29478, 29523), (19, 20577, 20622)]

def row046_layer003_block006 : List ColouredInterval :=
  [(19, 27436, 27481), (29, 16820, 16865), (29, 17661, 17706), (29, 18502, 18547), (29, 19343, 19388), (29, 20184, 20229), (29, 21025, 21070), (29, 21866, 21911), (29, 22707, 22752), (29, 23548, 23593), (29, 24389, 24434), (29, 25230, 25275), (29, 26071, 26116), (29, 26912, 26957)]

def row046_layer003_block007 : List ColouredInterval :=
  [(29, 24389, 24434), (31, 17298, 17343), (31, 18259, 18304), (31, 19220, 19265), (31, 20181, 20226), (31, 21142, 21187), (31, 22103, 22148), (31, 23064, 23109), (31, 24025, 24070), (31, 24986, 25031), (31, 25947, 25992), (31, 26908, 26953), (31, 27869, 27914), (31, 28830, 28875)]

def row046_layer003_block008 : List ColouredInterval :=
  [(31, 29791, 29836), (31, 30752, 30797), (31, 29791, 29836), (37, 17797, 17842), (37, 19166, 19211), (37, 20535, 20580), (37, 21904, 21949), (37, 23273, 23318), (37, 24642, 24687), (37, 26011, 26056), (37, 27380, 27425), (37, 28749, 28794), (37, 30118, 30163), (37, 31487, 31532)]

def row046_layer003_block009 : List ColouredInterval :=
  [(37, 32856, 32901), (41, 16810, 16855), (41, 18491, 18536), (41, 20172, 20217), (41, 21853, 21898), (41, 23534, 23579), (41, 25215, 25260), (41, 26896, 26941), (41, 28577, 28622), (41, 30258, 30303), (41, 31939, 31984), (43, 16641, 16686), (43, 18490, 18535), (43, 20339, 20384)]

def row046_layer003_block010 : List ColouredInterval :=
  [(43, 22188, 22233), (43, 24037, 24082), (43, 25886, 25931), (43, 27735, 27780), (43, 29584, 29629), (43, 31433, 31478)]

def row046_layer003_chunks : List (List ColouredInterval) :=
  [row046_layer003_block000, row046_layer003_block001, row046_layer003_block002, row046_layer003_block003, row046_layer003_block004, row046_layer003_block005, row046_layer003_block006, row046_layer003_block007, row046_layer003_block008, row046_layer003_block009, row046_layer003_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer003_arithmetic : LayerArithmeticValid row046.height { lower := 16560, upper := 33120, M := 32 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer003_enumeration :
    activePowerIntervalList 46 32 16560 33120 = row046_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer003_pairs000 :
    row046_layer003_block000.all (fun I => row046_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer003_pairs001 :
    row046_layer003_block001.all (fun I => row046_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer003_pairs002 :
    row046_layer003_block002.all (fun I => row046_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_pairs002
