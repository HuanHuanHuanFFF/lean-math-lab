import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row104B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs008 :
    row104_layer000_block008.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_pairs009 :
    row104_layer000_block009.all (fun I => row104_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_chunks_eq : row104_layer000_chunks.flatten = row104_layer000_intervals := by
  rfl

theorem row104_layer000_pairs : pairCoverCheck row104_layer000_intervals row104_bounds = true := by
  apply pairCoverCheck_of_chunks row104_layer000_chunks_eq
  intro block hblock
  simp only [row104_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row104_layer000_pairs000
  · exact row104_layer000_pairs001
  · exact row104_layer000_pairs002
  · exact row104_layer000_pairs003
  · exact row104_layer000_pairs004
  · exact row104_layer000_pairs005
  · exact row104_layer000_pairs006
  · exact row104_layer000_pairs007
  · exact row104_layer000_pairs008
  · exact row104_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer000_checked :
    coverLayerCheck row104.height row104.goods { lower := 10712, upper := 21424, M := 26 } = true := by
  exact coverLayerCheck_of_parts row104_layer000_arithmetic row104_layer000_enumeration row104_bounds_eq row104_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row104_layer001_intervals : List ColouredInterval :=
  [(2, 32768, 32871), (2, 32768, 32871), (3, 21870, 21973), (3, 24057, 24160), (3, 26244, 26347), (3, 28431, 28534), (3, 30618, 30721), (3, 32805, 32908), (3, 34992, 35095), (3, 37179, 37282), (3, 39366, 39469), (3, 41553, 41656), (3, 26244, 26347), (3, 32805, 32908), (3, 39366, 39469), (3, 39366, 39469), (5, 21875, 21978), (5, 25000, 25103), (5, 28125, 28228), (5, 31250, 31353), (5, 34375, 34478), (5, 37500, 37603), (5, 40625, 40728), (5, 31250, 31353), (7, 21609, 21712), (7, 24010, 24113), (7, 26411, 26514), (7, 28812, 28915), (7, 31213, 31316), (7, 33614, 33717), (7, 36015, 36118), (7, 38416, 38519), (7, 40817, 40920), (7, 33614, 33717), (11, 22627, 22730), (11, 23958, 24061), (11, 25289, 25392), (11, 26620, 26723), (11, 27951, 28054), (11, 29282, 29385), (11, 29282, 29385), (13, 28561, 28664), (17, 24565, 24668), (17, 29478, 29581), (17, 34391, 34494), (17, 39304, 39407), (19, 27436, 27539), (19, 34295, 34398), (19, 41154, 41257), (23, 24334, 24437), (23, 36501, 36604), (29, 24389, 24492), (31, 29791, 29894), (37, 21904, 22007), (37, 23273, 23376), (37, 24642, 24745), (37, 26011, 26114), (37, 27380, 27483), (37, 28749, 28852), (37, 30118, 30221), (41, 21853, 21956), (41, 23534, 23637), (41, 25215, 25318), (41, 26896, 26999), (41, 28577, 28680), (41, 30258, 30361), (41, 31939, 32042), (41, 33620, 33723), (41, 35301, 35404), (41, 36982, 37085), (43, 22188, 22291), (43, 24037, 24140), (43, 25886, 25989), (43, 27735, 27838), (43, 29584, 29687), (43, 31433, 31536), (43, 33282, 33385), (43, 35131, 35234), (43, 36980, 37083), (43, 38829, 38932), (43, 40678, 40781), (47, 22090, 22193), (47, 24299, 24402), (47, 26508, 26611), (47, 28717, 28820), (47, 30926, 31029), (47, 33135, 33238), (47, 35344, 35447), (47, 37553, 37656), (47, 39762, 39865), (47, 41971, 42074), (53, 22472, 22575), (53, 25281, 25384), (53, 28090, 28193), (53, 30899, 31002), (53, 33708, 33811), (53, 36517, 36620), (53, 39326, 39429), (53, 42135, 42238), (59, 24367, 24470), (59, 27848, 27951), (59, 31329, 31432), (59, 34810, 34913), (59, 38291, 38394), (59, 41772, 41875), (61, 22326, 22429), (61, 26047, 26150), (61, 29768, 29871), (61, 33489, 33592), (61, 37210, 37313), (61, 40931, 41034), (67, 22445, 22548), (67, 26934, 27037), (67, 31423, 31526), (67, 35912, 36015), (67, 40401, 40504), (71, 25205, 25308), (71, 30246, 30349), (71, 35287, 35390), (71, 40328, 40431), (73, 26645, 26748), (73, 31974, 32077), (73, 37303, 37406), (73, 42632, 42735), (79, 24964, 25067), (79, 31205, 31308), (79, 37446, 37549), (83, 27556, 27659), (83, 34445, 34548), (83, 41334, 41437), (89, 23763, 23866), (89, 31684, 31787), (89, 39605, 39708), (97, 28227, 28330), (97, 37636, 37739), (101, 30603, 30706), (101, 40804, 40907), (103, 31827, 31930), (103, 42436, 42539)]

def row104_layer001_block000 : List ColouredInterval :=
  [(2, 32768, 32871), (2, 32768, 32871), (3, 21870, 21973), (3, 24057, 24160), (3, 26244, 26347), (3, 28431, 28534), (3, 30618, 30721), (3, 32805, 32908), (3, 34992, 35095), (3, 37179, 37282), (3, 39366, 39469), (3, 41553, 41656), (3, 26244, 26347), (3, 32805, 32908)]

def row104_layer001_block001 : List ColouredInterval :=
  [(3, 39366, 39469), (3, 39366, 39469), (5, 21875, 21978), (5, 25000, 25103), (5, 28125, 28228), (5, 31250, 31353), (5, 34375, 34478), (5, 37500, 37603), (5, 40625, 40728), (5, 31250, 31353), (7, 21609, 21712), (7, 24010, 24113), (7, 26411, 26514), (7, 28812, 28915)]

def row104_layer001_block002 : List ColouredInterval :=
  [(7, 31213, 31316), (7, 33614, 33717), (7, 36015, 36118), (7, 38416, 38519), (7, 40817, 40920), (7, 33614, 33717), (11, 22627, 22730), (11, 23958, 24061), (11, 25289, 25392), (11, 26620, 26723), (11, 27951, 28054), (11, 29282, 29385), (11, 29282, 29385), (13, 28561, 28664)]

def row104_layer001_block003 : List ColouredInterval :=
  [(17, 24565, 24668), (17, 29478, 29581), (17, 34391, 34494), (17, 39304, 39407), (19, 27436, 27539), (19, 34295, 34398), (19, 41154, 41257), (23, 24334, 24437), (23, 36501, 36604), (29, 24389, 24492), (31, 29791, 29894), (37, 21904, 22007), (37, 23273, 23376), (37, 24642, 24745)]

def row104_layer001_block004 : List ColouredInterval :=
  [(37, 26011, 26114), (37, 27380, 27483), (37, 28749, 28852), (37, 30118, 30221), (41, 21853, 21956), (41, 23534, 23637), (41, 25215, 25318), (41, 26896, 26999), (41, 28577, 28680), (41, 30258, 30361), (41, 31939, 32042), (41, 33620, 33723), (41, 35301, 35404), (41, 36982, 37085)]

def row104_layer001_block005 : List ColouredInterval :=
  [(43, 22188, 22291), (43, 24037, 24140), (43, 25886, 25989), (43, 27735, 27838), (43, 29584, 29687), (43, 31433, 31536), (43, 33282, 33385), (43, 35131, 35234), (43, 36980, 37083), (43, 38829, 38932), (43, 40678, 40781), (47, 22090, 22193), (47, 24299, 24402), (47, 26508, 26611)]

def row104_layer001_block006 : List ColouredInterval :=
  [(47, 28717, 28820), (47, 30926, 31029), (47, 33135, 33238), (47, 35344, 35447), (47, 37553, 37656), (47, 39762, 39865), (47, 41971, 42074), (53, 22472, 22575), (53, 25281, 25384), (53, 28090, 28193), (53, 30899, 31002), (53, 33708, 33811), (53, 36517, 36620), (53, 39326, 39429)]

def row104_layer001_block007 : List ColouredInterval :=
  [(53, 42135, 42238), (59, 24367, 24470), (59, 27848, 27951), (59, 31329, 31432), (59, 34810, 34913), (59, 38291, 38394), (59, 41772, 41875), (61, 22326, 22429), (61, 26047, 26150), (61, 29768, 29871), (61, 33489, 33592), (61, 37210, 37313), (61, 40931, 41034), (67, 22445, 22548)]

def row104_layer001_block008 : List ColouredInterval :=
  [(67, 26934, 27037), (67, 31423, 31526), (67, 35912, 36015), (67, 40401, 40504), (71, 25205, 25308), (71, 30246, 30349), (71, 35287, 35390), (71, 40328, 40431), (73, 26645, 26748), (73, 31974, 32077), (73, 37303, 37406), (73, 42632, 42735), (79, 24964, 25067), (79, 31205, 31308)]

def row104_layer001_block009 : List ColouredInterval :=
  [(79, 37446, 37549), (83, 27556, 27659), (83, 34445, 34548), (83, 41334, 41437), (89, 23763, 23866), (89, 31684, 31787), (89, 39605, 39708), (97, 28227, 28330), (97, 37636, 37739), (101, 30603, 30706), (101, 40804, 40907), (103, 31827, 31930), (103, 42436, 42539)]

def row104_layer001_chunks : List (List ColouredInterval) :=
  [row104_layer001_block000, row104_layer001_block001, row104_layer001_block002, row104_layer001_block003, row104_layer001_block004, row104_layer001_block005, row104_layer001_block006, row104_layer001_block007, row104_layer001_block008, row104_layer001_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_arithmetic : LayerArithmeticValid row104.height { lower := 21424, upper := 42848, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_enumeration :
    activePowerIntervalList 104 22 21424 42848 = row104_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs000 :
    row104_layer001_block000.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs001 :
    row104_layer001_block001.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs002 :
    row104_layer001_block002.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs003 :
    row104_layer001_block003.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs004 :
    row104_layer001_block004.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs005 :
    row104_layer001_block005.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs006 :
    row104_layer001_block006.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs007 :
    row104_layer001_block007.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs008 :
    row104_layer001_block008.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_pairs009 :
    row104_layer001_block009.all (fun I => row104_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_chunks_eq : row104_layer001_chunks.flatten = row104_layer001_intervals := by
  rfl

theorem row104_layer001_pairs : pairCoverCheck row104_layer001_intervals row104_bounds = true := by
  apply pairCoverCheck_of_chunks row104_layer001_chunks_eq
  intro block hblock
  simp only [row104_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row104_layer001_pairs000
  · exact row104_layer001_pairs001
  · exact row104_layer001_pairs002
  · exact row104_layer001_pairs003
  · exact row104_layer001_pairs004
  · exact row104_layer001_pairs005
  · exact row104_layer001_pairs006
  · exact row104_layer001_pairs007
  · exact row104_layer001_pairs008
  · exact row104_layer001_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer001_checked :
    coverLayerCheck row104.height row104.goods { lower := 21424, upper := 42848, M := 22 } = true := by
  exact coverLayerCheck_of_parts row104_layer001_arithmetic row104_layer001_enumeration row104_bounds_eq row104_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row104_layer002_intervals : List ColouredInterval :=
  [(2, 65536, 65639), (2, 65536, 65639), (3, 45927, 46030), (3, 52488, 52591), (3, 59049, 59152), (3, 65610, 65713), (3, 72171, 72274), (3, 78732, 78835), (3, 85293, 85396), (3, 59049, 59152), (3, 78732, 78835), (3, 59049, 59152), (5, 43750, 43853), (5, 46875, 46978), (5, 50000, 50103), (5, 53125, 53228), (5, 56250, 56353), (5, 46875, 46978), (5, 62500, 62603), (5, 78125, 78228), (5, 78125, 78228), (7, 43218, 43321), (7, 50421, 50524), (7, 67228, 67331), (7, 84035, 84138), (11, 43923, 44026), (11, 58564, 58667), (11, 73205, 73308), (17, 44217, 44320), (17, 49130, 49233), (17, 54043, 54146), (17, 58956, 59059), (17, 63869, 63972), (17, 68782, 68885), (17, 73695, 73798), (17, 78608, 78711), (17, 83521, 83624), (17, 83521, 83624), (19, 48013, 48116), (19, 54872, 54975), (19, 61731, 61834), (19, 68590, 68693), (19, 75449, 75552), (19, 82308, 82411), (23, 48668, 48771), (23, 60835, 60938), (23, 73002, 73105), (23, 85169, 85272), (29, 48778, 48881), (29, 73167, 73270), (31, 59582, 59685), (37, 50653, 50756), (41, 68921, 69024), (43, 79507, 79610), (53, 44944, 45047), (53, 47753, 47856), (53, 50562, 50665), (59, 45253, 45356), (59, 48734, 48837), (59, 52215, 52318), (59, 55696, 55799), (59, 59177, 59280), (59, 62658, 62761), (61, 44652, 44755), (61, 48373, 48476), (61, 52094, 52197), (61, 55815, 55918), (61, 59536, 59639), (61, 63257, 63360), (61, 66978, 67081), (67, 44890, 44993), (67, 49379, 49482), (67, 53868, 53971), (67, 58357, 58460), (67, 62846, 62949), (67, 67335, 67438), (67, 71824, 71927), (67, 76313, 76416), (67, 80802, 80905), (71, 45369, 45472), (71, 50410, 50513), (71, 55451, 55554), (71, 60492, 60595), (71, 65533, 65636), (71, 70574, 70677), (71, 75615, 75718), (71, 80656, 80759), (73, 47961, 48064), (73, 53290, 53393), (73, 58619, 58722), (73, 63948, 64051), (73, 69277, 69380), (73, 74606, 74709), (73, 79935, 80038), (73, 85264, 85367), (79, 43687, 43790), (79, 49928, 50031), (79, 56169, 56272), (79, 62410, 62513), (79, 68651, 68754), (79, 74892, 74995), (79, 81133, 81236), (83, 48223, 48326), (83, 55112, 55215), (83, 62001, 62104), (83, 68890, 68993), (83, 75779, 75882), (83, 82668, 82771), (89, 47526, 47629), (89, 55447, 55550), (89, 63368, 63471), (89, 71289, 71392), (89, 79210, 79313), (97, 47045, 47148), (97, 56454, 56557), (97, 65863, 65966), (97, 75272, 75375), (97, 84681, 84784), (101, 51005, 51108), (101, 61206, 61309), (101, 71407, 71510), (101, 81608, 81711), (103, 53045, 53148), (103, 63654, 63757), (103, 74263, 74366), (103, 84872, 84975)]

def row104_layer002_block000 : List ColouredInterval :=
  [(2, 65536, 65639), (2, 65536, 65639), (3, 45927, 46030), (3, 52488, 52591), (3, 59049, 59152), (3, 65610, 65713), (3, 72171, 72274), (3, 78732, 78835), (3, 85293, 85396), (3, 59049, 59152), (3, 78732, 78835), (3, 59049, 59152), (5, 43750, 43853), (5, 46875, 46978), (5, 50000, 50103), (5, 53125, 53228)]

def row104_layer002_block001 : List ColouredInterval :=
  [(5, 56250, 56353), (5, 46875, 46978), (5, 62500, 62603), (5, 78125, 78228), (5, 78125, 78228), (7, 43218, 43321), (7, 50421, 50524), (7, 67228, 67331), (7, 84035, 84138), (11, 43923, 44026), (11, 58564, 58667), (11, 73205, 73308), (17, 44217, 44320), (17, 49130, 49233), (17, 54043, 54146), (17, 58956, 59059)]

def row104_layer002_block002 : List ColouredInterval :=
  [(17, 63869, 63972), (17, 68782, 68885), (17, 73695, 73798), (17, 78608, 78711), (17, 83521, 83624), (17, 83521, 83624), (19, 48013, 48116), (19, 54872, 54975), (19, 61731, 61834), (19, 68590, 68693), (19, 75449, 75552), (19, 82308, 82411), (23, 48668, 48771), (23, 60835, 60938), (23, 73002, 73105), (23, 85169, 85272)]

def row104_layer002_block003 : List ColouredInterval :=
  [(29, 48778, 48881), (29, 73167, 73270), (31, 59582, 59685), (37, 50653, 50756), (41, 68921, 69024), (43, 79507, 79610), (53, 44944, 45047), (53, 47753, 47856), (53, 50562, 50665), (59, 45253, 45356), (59, 48734, 48837), (59, 52215, 52318), (59, 55696, 55799), (59, 59177, 59280), (59, 62658, 62761), (61, 44652, 44755)]

def row104_layer002_block004 : List ColouredInterval :=
  [(61, 48373, 48476), (61, 52094, 52197), (61, 55815, 55918), (61, 59536, 59639), (61, 63257, 63360), (61, 66978, 67081), (67, 44890, 44993), (67, 49379, 49482), (67, 53868, 53971), (67, 58357, 58460), (67, 62846, 62949), (67, 67335, 67438), (67, 71824, 71927), (67, 76313, 76416), (67, 80802, 80905), (71, 45369, 45472)]

def row104_layer002_block005 : List ColouredInterval :=
  [(71, 50410, 50513), (71, 55451, 55554), (71, 60492, 60595), (71, 65533, 65636), (71, 70574, 70677), (71, 75615, 75718), (71, 80656, 80759), (73, 47961, 48064), (73, 53290, 53393), (73, 58619, 58722), (73, 63948, 64051), (73, 69277, 69380), (73, 74606, 74709), (73, 79935, 80038), (73, 85264, 85367), (79, 43687, 43790)]

def row104_layer002_block006 : List ColouredInterval :=
  [(79, 49928, 50031), (79, 56169, 56272), (79, 62410, 62513), (79, 68651, 68754), (79, 74892, 74995), (79, 81133, 81236), (83, 48223, 48326), (83, 55112, 55215), (83, 62001, 62104), (83, 68890, 68993), (83, 75779, 75882), (83, 82668, 82771), (89, 47526, 47629), (89, 55447, 55550), (89, 63368, 63471), (89, 71289, 71392)]

def row104_layer002_block007 : List ColouredInterval :=
  [(89, 79210, 79313), (97, 47045, 47148), (97, 56454, 56557), (97, 65863, 65966), (97, 75272, 75375), (97, 84681, 84784), (101, 51005, 51108), (101, 61206, 61309), (101, 71407, 71510), (101, 81608, 81711), (103, 53045, 53148), (103, 63654, 63757), (103, 74263, 74366), (103, 84872, 84975)]

def row104_layer002_chunks : List (List ColouredInterval) :=
  [row104_layer002_block000, row104_layer002_block001, row104_layer002_block002, row104_layer002_block003, row104_layer002_block004, row104_layer002_block005, row104_layer002_block006, row104_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_arithmetic : LayerArithmeticValid row104.height { lower := 42848, upper := 85696, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_enumeration :
    activePowerIntervalList 104 18 42848 85696 = row104_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs000 :
    row104_layer002_block000.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs001 :
    row104_layer002_block001.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs002 :
    row104_layer002_block002.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs003 :
    row104_layer002_block003.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs004 :
    row104_layer002_block004.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs005 :
    row104_layer002_block005.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs006 :
    row104_layer002_block006.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_pairs007 :
    row104_layer002_block007.all (fun I => row104_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row104_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_chunks_eq : row104_layer002_chunks.flatten = row104_layer002_intervals := by
  rfl

theorem row104_layer002_pairs : pairCoverCheck row104_layer002_intervals row104_bounds = true := by
  apply pairCoverCheck_of_chunks row104_layer002_chunks_eq
  intro block hblock
  simp only [row104_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row104_layer002_pairs000
  · exact row104_layer002_pairs001
  · exact row104_layer002_pairs002
  · exact row104_layer002_pairs003
  · exact row104_layer002_pairs004
  · exact row104_layer002_pairs005
  · exact row104_layer002_pairs006
  · exact row104_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row104_layer002_checked :
    coverLayerCheck row104.height row104.goods { lower := 42848, upper := 85696, M := 18 } = true := by
  exact coverLayerCheck_of_parts row104_layer002_arithmetic row104_layer002_enumeration row104_bounds_eq row104_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row104_layer002_checked
