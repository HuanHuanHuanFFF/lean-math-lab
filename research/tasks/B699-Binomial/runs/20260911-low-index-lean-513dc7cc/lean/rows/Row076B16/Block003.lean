import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs010 :
    row076_layer001_block010.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_chunks_eq : row076_layer001_chunks.flatten = row076_layer001_intervals := by
  rfl

theorem row076_layer001_pairs : pairCoverCheck row076_layer001_intervals row076_bounds = true := by
  apply pairCoverCheck_of_chunks row076_layer001_chunks_eq
  intro block hblock
  simp only [row076_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row076_layer001_pairs000
  · exact row076_layer001_pairs001
  · exact row076_layer001_pairs002
  · exact row076_layer001_pairs003
  · exact row076_layer001_pairs004
  · exact row076_layer001_pairs005
  · exact row076_layer001_pairs006
  · exact row076_layer001_pairs007
  · exact row076_layer001_pairs008
  · exact row076_layer001_pairs009
  · exact row076_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_checked :
    coverLayerCheck row076.height row076.goods { lower := 11400, upper := 22800, M := 28 } = true := by
  exact coverLayerCheck_of_parts row076_layer001_arithmetic row076_layer001_enumeration row076_bounds_eq row076_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_layer002_intervals : List ColouredInterval :=
  [(2, 24576, 24651), (2, 24576, 24651), (2, 32768, 32843), (2, 40960, 41035), (2, 32768, 32843), (2, 32768, 32843), (3, 24057, 24132), (3, 26244, 26319), (3, 28431, 28506), (3, 30618, 30693), (3, 32805, 32880), (3, 34992, 35067), (3, 37179, 37254), (3, 39366, 39441), (3, 41553, 41628), (3, 43740, 43815), (3, 26244, 26319), (3, 32805, 32880), (3, 39366, 39441), (3, 39366, 39441), (5, 25000, 25075), (5, 28125, 28200), (5, 31250, 31325), (5, 34375, 34450), (5, 37500, 37575), (5, 40625, 40700), (5, 43750, 43825), (5, 31250, 31325), (7, 24010, 24085), (7, 26411, 26486), (7, 28812, 28887), (7, 31213, 31288), (7, 33614, 33689), (7, 36015, 36090), (7, 38416, 38491), (7, 40817, 40892), (7, 43218, 43293), (7, 33614, 33689), (11, 23958, 24033), (11, 25289, 25364), (11, 26620, 26695), (11, 27951, 28026), (11, 29282, 29357), (11, 30613, 30688), (11, 31944, 32019), (11, 29282, 29357), (11, 43923, 43998), (13, 24167, 24242), (13, 26364, 26439), (13, 28561, 28636), (13, 30758, 30833), (13, 32955, 33030), (13, 35152, 35227), (13, 37349, 37424), (13, 39546, 39621), (13, 41743, 41818), (13, 43940, 44015), (13, 28561, 28636), (17, 24565, 24640), (17, 29478, 29553), (17, 34391, 34466), (17, 39304, 39379), (17, 44217, 44292), (23, 24334, 24409), (23, 36501, 36576), (29, 24389, 24464), (31, 23064, 23139), (31, 29791, 29866), (37, 23273, 23348), (37, 24642, 24717), (37, 26011, 26086), (37, 27380, 27455), (37, 28749, 28824), (37, 30118, 30193), (37, 31487, 31562), (37, 32856, 32931), (41, 23534, 23609), (41, 25215, 25290), (41, 26896, 26971), (41, 28577, 28652), (41, 30258, 30333), (41, 31939, 32014), (41, 33620, 33695), (41, 35301, 35376), (41, 36982, 37057), (41, 38663, 38738), (41, 40344, 40419), (43, 24037, 24112), (43, 25886, 25961), (43, 27735, 27810), (43, 29584, 29659), (43, 31433, 31508), (43, 33282, 33357), (43, 35131, 35206), (43, 36980, 37055), (43, 38829, 38904), (43, 40678, 40753), (43, 42527, 42602), (43, 44376, 44451), (47, 24299, 24374), (47, 26508, 26583), (47, 28717, 28792), (47, 30926, 31001), (47, 33135, 33210), (47, 35344, 35419), (47, 37553, 37628), (47, 39762, 39837), (47, 41971, 42046), (47, 44180, 44255), (53, 25281, 25356), (53, 28090, 28165), (53, 30899, 30974), (53, 33708, 33783), (53, 36517, 36592), (53, 39326, 39401), (53, 42135, 42210), (53, 44944, 45019), (59, 24367, 24442), (59, 27848, 27923), (59, 31329, 31404), (59, 34810, 34885), (59, 38291, 38366), (59, 41772, 41847), (59, 45253, 45328), (61, 26047, 26122), (61, 29768, 29843), (61, 33489, 33564), (61, 37210, 37285), (61, 40931, 41006), (61, 44652, 44727), (67, 26934, 27009), (67, 31423, 31498), (67, 35912, 35987), (67, 40401, 40476), (67, 44890, 44965), (71, 25205, 25280), (71, 30246, 30321), (71, 35287, 35362), (71, 40328, 40403), (71, 45369, 45444), (73, 26645, 26720), (73, 31974, 32049), (73, 37303, 37378), (73, 42632, 42707)]

def row076_layer002_block000 : List ColouredInterval :=
  [(2, 24576, 24651), (2, 24576, 24651), (2, 32768, 32843), (2, 40960, 41035), (2, 32768, 32843), (2, 32768, 32843), (3, 24057, 24132), (3, 26244, 26319), (3, 28431, 28506), (3, 30618, 30693), (3, 32805, 32880), (3, 34992, 35067), (3, 37179, 37254), (3, 39366, 39441)]

def row076_layer002_block001 : List ColouredInterval :=
  [(3, 41553, 41628), (3, 43740, 43815), (3, 26244, 26319), (3, 32805, 32880), (3, 39366, 39441), (3, 39366, 39441), (5, 25000, 25075), (5, 28125, 28200), (5, 31250, 31325), (5, 34375, 34450), (5, 37500, 37575), (5, 40625, 40700), (5, 43750, 43825), (5, 31250, 31325)]

def row076_layer002_block002 : List ColouredInterval :=
  [(7, 24010, 24085), (7, 26411, 26486), (7, 28812, 28887), (7, 31213, 31288), (7, 33614, 33689), (7, 36015, 36090), (7, 38416, 38491), (7, 40817, 40892), (7, 43218, 43293), (7, 33614, 33689), (11, 23958, 24033), (11, 25289, 25364), (11, 26620, 26695), (11, 27951, 28026)]

def row076_layer002_block003 : List ColouredInterval :=
  [(11, 29282, 29357), (11, 30613, 30688), (11, 31944, 32019), (11, 29282, 29357), (11, 43923, 43998), (13, 24167, 24242), (13, 26364, 26439), (13, 28561, 28636), (13, 30758, 30833), (13, 32955, 33030), (13, 35152, 35227), (13, 37349, 37424), (13, 39546, 39621), (13, 41743, 41818)]

def row076_layer002_block004 : List ColouredInterval :=
  [(13, 43940, 44015), (13, 28561, 28636), (17, 24565, 24640), (17, 29478, 29553), (17, 34391, 34466), (17, 39304, 39379), (17, 44217, 44292), (23, 24334, 24409), (23, 36501, 36576), (29, 24389, 24464), (31, 23064, 23139), (31, 29791, 29866), (37, 23273, 23348), (37, 24642, 24717)]

def row076_layer002_block005 : List ColouredInterval :=
  [(37, 26011, 26086), (37, 27380, 27455), (37, 28749, 28824), (37, 30118, 30193), (37, 31487, 31562), (37, 32856, 32931), (41, 23534, 23609), (41, 25215, 25290), (41, 26896, 26971), (41, 28577, 28652), (41, 30258, 30333), (41, 31939, 32014), (41, 33620, 33695), (41, 35301, 35376)]

def row076_layer002_block006 : List ColouredInterval :=
  [(41, 36982, 37057), (41, 38663, 38738), (41, 40344, 40419), (43, 24037, 24112), (43, 25886, 25961), (43, 27735, 27810), (43, 29584, 29659), (43, 31433, 31508), (43, 33282, 33357), (43, 35131, 35206), (43, 36980, 37055), (43, 38829, 38904), (43, 40678, 40753), (43, 42527, 42602)]

def row076_layer002_block007 : List ColouredInterval :=
  [(43, 44376, 44451), (47, 24299, 24374), (47, 26508, 26583), (47, 28717, 28792), (47, 30926, 31001), (47, 33135, 33210), (47, 35344, 35419), (47, 37553, 37628), (47, 39762, 39837), (47, 41971, 42046), (47, 44180, 44255), (53, 25281, 25356), (53, 28090, 28165), (53, 30899, 30974)]

def row076_layer002_block008 : List ColouredInterval :=
  [(53, 33708, 33783), (53, 36517, 36592), (53, 39326, 39401), (53, 42135, 42210), (53, 44944, 45019), (59, 24367, 24442), (59, 27848, 27923), (59, 31329, 31404), (59, 34810, 34885), (59, 38291, 38366), (59, 41772, 41847), (59, 45253, 45328), (61, 26047, 26122), (61, 29768, 29843)]

def row076_layer002_block009 : List ColouredInterval :=
  [(61, 33489, 33564), (61, 37210, 37285), (61, 40931, 41006), (61, 44652, 44727), (67, 26934, 27009), (67, 31423, 31498), (67, 35912, 35987), (67, 40401, 40476), (67, 44890, 44965), (71, 25205, 25280), (71, 30246, 30321), (71, 35287, 35362), (71, 40328, 40403), (71, 45369, 45444)]

def row076_layer002_block010 : List ColouredInterval :=
  [(73, 26645, 26720), (73, 31974, 32049), (73, 37303, 37378), (73, 42632, 42707)]

def row076_layer002_chunks : List (List ColouredInterval) :=
  [row076_layer002_block000, row076_layer002_block001, row076_layer002_block002, row076_layer002_block003, row076_layer002_block004, row076_layer002_block005, row076_layer002_block006, row076_layer002_block007, row076_layer002_block008, row076_layer002_block009, row076_layer002_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_arithmetic : LayerArithmeticValid row076.height { lower := 22800, upper := 45600, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_enumeration :
    activePowerIntervalList 76 24 22800 45600 = row076_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs000 :
    row076_layer002_block000.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs001 :
    row076_layer002_block001.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs002 :
    row076_layer002_block002.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs003 :
    row076_layer002_block003.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs004 :
    row076_layer002_block004.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs005 :
    row076_layer002_block005.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs006 :
    row076_layer002_block006.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs007 :
    row076_layer002_block007.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs008 :
    row076_layer002_block008.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer002_pairs009 :
    row076_layer002_block009.all (fun I => row076_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer002_pairs009
