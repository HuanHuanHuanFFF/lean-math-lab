import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_pairs010 :
    row048_layer002_block010.all (fun I => row048_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_pairs011 :
    row048_layer002_block011.all (fun I => row048_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_chunks_eq : row048_layer002_chunks.flatten = row048_layer002_intervals := by
  rfl

theorem row048_layer002_pairs : pairCoverCheck row048_layer002_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer002_chunks_eq
  intro block hblock
  simp only [row048_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer002_pairs000
  · exact row048_layer002_pairs001
  · exact row048_layer002_pairs002
  · exact row048_layer002_pairs003
  · exact row048_layer002_pairs004
  · exact row048_layer002_pairs005
  · exact row048_layer002_pairs006
  · exact row048_layer002_pairs007
  · exact row048_layer002_pairs008
  · exact row048_layer002_pairs009
  · exact row048_layer002_pairs010
  · exact row048_layer002_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_checked :
    coverLayerCheck row048.height row048.goods { lower := 9024, upper := 18048, M := 41 } = true := by
  exact coverLayerCheck_of_parts row048_layer002_arithmetic row048_layer002_enumeration row048_bounds_eq row048_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer003_intervals : List ColouredInterval :=
  [(2, 32768, 32815), (2, 32768, 32815), (3, 19683, 19730), (3, 21870, 21917), (3, 24057, 24104), (3, 26244, 26291), (3, 28431, 28478), (3, 19683, 19730), (3, 26244, 26291), (3, 32805, 32852), (3, 19683, 19730), (5, 18125, 18172), (5, 18750, 18797), (5, 19375, 19422), (5, 20000, 20047), (5, 20625, 20672), (5, 21250, 21297), (5, 21875, 21922), (5, 22500, 22547), (5, 23125, 23172), (5, 23750, 23797), (5, 24375, 24422), (5, 25000, 25047), (5, 18750, 18797), (5, 21875, 21922), (5, 25000, 25047), (5, 28125, 28172), (5, 31250, 31297), (5, 34375, 34422), (5, 31250, 31297), (7, 19208, 19255), (7, 21609, 21656), (7, 24010, 24057), (7, 26411, 26458), (7, 28812, 28859), (7, 31213, 31260), (7, 33614, 33661), (7, 36015, 36062), (7, 33614, 33661), (11, 18634, 18681), (11, 19965, 20012), (11, 21296, 21343), (11, 22627, 22674), (11, 23958, 24005), (11, 25289, 25336), (11, 26620, 26667), (11, 27951, 27998), (11, 29282, 29329), (11, 30613, 30660), (11, 31944, 31991), (11, 33275, 33322), (11, 34606, 34653), (11, 35937, 35984), (11, 29282, 29329), (13, 19773, 19820), (13, 21970, 22017), (13, 24167, 24214), (13, 26364, 26411), (13, 28561, 28608), (13, 30758, 30805), (13, 32955, 33002), (13, 35152, 35199), (13, 28561, 28608), (17, 19652, 19699), (17, 24565, 24612), (17, 29478, 29525), (17, 34391, 34438), (19, 20577, 20624), (19, 27436, 27483), (19, 34295, 34342), (23, 18515, 18562), (23, 19044, 19091), (23, 19573, 19620), (23, 20102, 20149), (23, 20631, 20678), (23, 21160, 21207), (23, 24334, 24381), (29, 18502, 18549), (29, 19343, 19390), (29, 20184, 20231), (29, 21025, 21072), (29, 21866, 21913), (29, 22707, 22754), (29, 23548, 23595), (29, 24389, 24436), (29, 25230, 25277), (29, 26071, 26118), (29, 26912, 26959), (29, 27753, 27800), (29, 28594, 28641), (29, 29435, 29482), (29, 30276, 30323), (29, 31117, 31164), (29, 31958, 32005), (29, 32799, 32846), (29, 33640, 33687), (29, 24389, 24436), (31, 18259, 18306), (31, 19220, 19267), (31, 20181, 20228), (31, 21142, 21189), (31, 22103, 22150), (31, 23064, 23111), (31, 24025, 24072), (31, 24986, 25033), (31, 25947, 25994), (31, 26908, 26955), (31, 27869, 27916), (31, 28830, 28877), (31, 29791, 29838), (31, 30752, 30799), (31, 31713, 31760), (31, 32674, 32721), (31, 33635, 33682), (31, 34596, 34643), (31, 35557, 35604), (31, 29791, 29838), (37, 19166, 19213), (37, 20535, 20582), (37, 21904, 21951), (37, 23273, 23320), (37, 24642, 24689), (37, 26011, 26058), (37, 27380, 27427), (37, 28749, 28796), (37, 30118, 30165), (37, 31487, 31534), (37, 32856, 32903), (37, 34225, 34272), (37, 35594, 35641), (41, 18491, 18538), (41, 20172, 20219), (41, 21853, 21900), (41, 23534, 23581), (41, 25215, 25262), (41, 26896, 26943), (41, 28577, 28624), (41, 30258, 30305), (41, 31939, 31986), (41, 33620, 33667), (41, 35301, 35348), (43, 18490, 18537), (43, 20339, 20386), (43, 22188, 22235), (43, 24037, 24084), (43, 25886, 25933), (43, 27735, 27782), (43, 29584, 29631), (43, 31433, 31480), (43, 33282, 33329), (43, 35131, 35178), (47, 19881, 19928), (47, 22090, 22137), (47, 24299, 24346), (47, 26508, 26555), (47, 28717, 28764), (47, 30926, 30973), (47, 33135, 33182), (47, 35344, 35391)]

def row048_layer003_block000 : List ColouredInterval :=
  [(2, 32768, 32815), (2, 32768, 32815), (3, 19683, 19730), (3, 21870, 21917), (3, 24057, 24104), (3, 26244, 26291), (3, 28431, 28478), (3, 19683, 19730), (3, 26244, 26291), (3, 32805, 32852), (3, 19683, 19730), (5, 18125, 18172)]

def row048_layer003_block001 : List ColouredInterval :=
  [(5, 18750, 18797), (5, 19375, 19422), (5, 20000, 20047), (5, 20625, 20672), (5, 21250, 21297), (5, 21875, 21922), (5, 22500, 22547), (5, 23125, 23172), (5, 23750, 23797), (5, 24375, 24422), (5, 25000, 25047), (5, 18750, 18797)]

def row048_layer003_block002 : List ColouredInterval :=
  [(5, 21875, 21922), (5, 25000, 25047), (5, 28125, 28172), (5, 31250, 31297), (5, 34375, 34422), (5, 31250, 31297), (7, 19208, 19255), (7, 21609, 21656), (7, 24010, 24057), (7, 26411, 26458), (7, 28812, 28859), (7, 31213, 31260)]

def row048_layer003_block003 : List ColouredInterval :=
  [(7, 33614, 33661), (7, 36015, 36062), (7, 33614, 33661), (11, 18634, 18681), (11, 19965, 20012), (11, 21296, 21343), (11, 22627, 22674), (11, 23958, 24005), (11, 25289, 25336), (11, 26620, 26667), (11, 27951, 27998), (11, 29282, 29329)]

def row048_layer003_block004 : List ColouredInterval :=
  [(11, 30613, 30660), (11, 31944, 31991), (11, 33275, 33322), (11, 34606, 34653), (11, 35937, 35984), (11, 29282, 29329), (13, 19773, 19820), (13, 21970, 22017), (13, 24167, 24214), (13, 26364, 26411), (13, 28561, 28608), (13, 30758, 30805)]

def row048_layer003_block005 : List ColouredInterval :=
  [(13, 32955, 33002), (13, 35152, 35199), (13, 28561, 28608), (17, 19652, 19699), (17, 24565, 24612), (17, 29478, 29525), (17, 34391, 34438), (19, 20577, 20624), (19, 27436, 27483), (19, 34295, 34342), (23, 18515, 18562), (23, 19044, 19091)]

def row048_layer003_block006 : List ColouredInterval :=
  [(23, 19573, 19620), (23, 20102, 20149), (23, 20631, 20678), (23, 21160, 21207), (23, 24334, 24381), (29, 18502, 18549), (29, 19343, 19390), (29, 20184, 20231), (29, 21025, 21072), (29, 21866, 21913), (29, 22707, 22754), (29, 23548, 23595)]

def row048_layer003_block007 : List ColouredInterval :=
  [(29, 24389, 24436), (29, 25230, 25277), (29, 26071, 26118), (29, 26912, 26959), (29, 27753, 27800), (29, 28594, 28641), (29, 29435, 29482), (29, 30276, 30323), (29, 31117, 31164), (29, 31958, 32005), (29, 32799, 32846), (29, 33640, 33687)]

def row048_layer003_block008 : List ColouredInterval :=
  [(29, 24389, 24436), (31, 18259, 18306), (31, 19220, 19267), (31, 20181, 20228), (31, 21142, 21189), (31, 22103, 22150), (31, 23064, 23111), (31, 24025, 24072), (31, 24986, 25033), (31, 25947, 25994), (31, 26908, 26955), (31, 27869, 27916)]

def row048_layer003_block009 : List ColouredInterval :=
  [(31, 28830, 28877), (31, 29791, 29838), (31, 30752, 30799), (31, 31713, 31760), (31, 32674, 32721), (31, 33635, 33682), (31, 34596, 34643), (31, 35557, 35604), (31, 29791, 29838), (37, 19166, 19213), (37, 20535, 20582), (37, 21904, 21951)]

def row048_layer003_block010 : List ColouredInterval :=
  [(37, 23273, 23320), (37, 24642, 24689), (37, 26011, 26058), (37, 27380, 27427), (37, 28749, 28796), (37, 30118, 30165), (37, 31487, 31534), (37, 32856, 32903), (37, 34225, 34272), (37, 35594, 35641), (41, 18491, 18538), (41, 20172, 20219)]

def row048_layer003_block011 : List ColouredInterval :=
  [(41, 21853, 21900), (41, 23534, 23581), (41, 25215, 25262), (41, 26896, 26943), (41, 28577, 28624), (41, 30258, 30305), (41, 31939, 31986), (41, 33620, 33667), (41, 35301, 35348), (43, 18490, 18537), (43, 20339, 20386), (43, 22188, 22235)]

def row048_layer003_block012 : List ColouredInterval :=
  [(43, 24037, 24084), (43, 25886, 25933), (43, 27735, 27782), (43, 29584, 29631), (43, 31433, 31480), (43, 33282, 33329), (43, 35131, 35178), (47, 19881, 19928), (47, 22090, 22137), (47, 24299, 24346), (47, 26508, 26555), (47, 28717, 28764)]

def row048_layer003_block013 : List ColouredInterval :=
  [(47, 30926, 30973), (47, 33135, 33182), (47, 35344, 35391)]

def row048_layer003_chunks : List (List ColouredInterval) :=
  [row048_layer003_block000, row048_layer003_block001, row048_layer003_block002, row048_layer003_block003, row048_layer003_block004, row048_layer003_block005, row048_layer003_block006, row048_layer003_block007, row048_layer003_block008, row048_layer003_block009, row048_layer003_block010, row048_layer003_block011, row048_layer003_block012, row048_layer003_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_arithmetic : LayerArithmeticValid row048.height { lower := 18048, upper := 36096, M := 40 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_enumeration :
    activePowerIntervalList 48 40 18048 36096 = row048_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer003_pairs000 :
    row048_layer003_block000.all (fun I => row048_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer003_pairs000
