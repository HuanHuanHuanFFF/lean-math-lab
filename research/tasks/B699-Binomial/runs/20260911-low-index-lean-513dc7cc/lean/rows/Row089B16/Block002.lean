import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_checked :
    coverLayerCheck row089.height row089.goods { lower := 7832, upper := 15664, M := 23 } = true := by
  exact coverLayerCheck_of_parts row089_layer000_arithmetic row089_layer000_enumeration row089_bounds_eq row089_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_layer001_intervals : List ColouredInterval :=
  [(2, 16384, 16472), (2, 17408, 17496), (2, 18432, 18520), (2, 19456, 19544), (2, 16384, 16472), (2, 18432, 18520), (2, 20480, 20568), (2, 22528, 22616), (2, 24576, 24664), (2, 26624, 26712), (2, 28672, 28760), (2, 30720, 30808), (2, 16384, 16472), (2, 20480, 20568), (2, 24576, 24664), (2, 28672, 28760), (2, 16384, 16472), (2, 24576, 24664), (2, 16384, 16472), (3, 17496, 17584), (3, 19683, 19771), (3, 21870, 21958), (3, 24057, 24145), (3, 26244, 26332), (3, 28431, 28519), (3, 30618, 30706), (3, 19683, 19771), (3, 26244, 26332), (3, 19683, 19771), (5, 15664, 15713), (5, 18750, 18838), (5, 21875, 21963), (5, 25000, 25088), (5, 28125, 28213), (5, 31250, 31327), (5, 15664, 15713), (5, 31250, 31327), (7, 16807, 16895), (7, 19208, 19296), (7, 21609, 21697), (7, 24010, 24098), (7, 26411, 26499), (7, 28812, 28900), (7, 31213, 31301), (7, 16807, 16895), (11, 15972, 16060), (11, 17303, 17391), (11, 18634, 18722), (11, 19965, 20053), (11, 21296, 21384), (11, 22627, 22715), (11, 23958, 24046), (11, 25289, 25377), (11, 29282, 29370), (13, 17576, 17664), (13, 19773, 19861), (13, 21970, 22058), (13, 24167, 24255), (13, 26364, 26452), (13, 28561, 28649), (13, 30758, 30846), (13, 28561, 28649), (17, 19652, 19740), (17, 24565, 24653), (17, 29478, 29566), (19, 20577, 20665), (19, 27436, 27524), (23, 24334, 24422), (29, 15979, 16067), (29, 24389, 24477), (31, 16337, 16425), (31, 17298, 17386), (31, 18259, 18347), (31, 29791, 29879), (37, 16428, 16516), (37, 17797, 17885), (37, 19166, 19254), (37, 20535, 20623), (37, 21904, 21992), (37, 23273, 23361), (37, 24642, 24730), (37, 26011, 26099), (41, 16810, 16898), (41, 18491, 18579), (41, 20172, 20260), (41, 21853, 21941), (41, 23534, 23622), (41, 25215, 25303), (41, 26896, 26984), (41, 28577, 28665), (41, 30258, 30346), (43, 16641, 16729), (43, 18490, 18578), (43, 20339, 20427), (43, 22188, 22276), (43, 24037, 24125), (43, 25886, 25974), (43, 27735, 27823), (43, 29584, 29672), (47, 17672, 17760), (47, 19881, 19969), (47, 22090, 22178), (47, 24299, 24387), (47, 26508, 26596), (47, 28717, 28805), (47, 30926, 31014), (53, 16854, 16942), (53, 19663, 19751), (53, 22472, 22560), (53, 25281, 25369), (53, 28090, 28178), (53, 30899, 30987), (59, 17405, 17493), (59, 20886, 20974), (59, 24367, 24455), (59, 27848, 27936), (61, 18605, 18693), (61, 22326, 22414), (61, 26047, 26135), (61, 29768, 29856), (67, 17956, 18044), (67, 22445, 22533), (67, 26934, 27022), (71, 20164, 20252), (71, 25205, 25293), (71, 30246, 30334), (73, 15987, 16075), (73, 21316, 21404), (73, 26645, 26733), (79, 18723, 18811), (79, 24964, 25052), (79, 31205, 31293), (83, 20667, 20755), (83, 27556, 27644)]

def row089_layer001_block000 : List ColouredInterval :=
  [(2, 16384, 16472), (2, 17408, 17496), (2, 18432, 18520), (2, 19456, 19544), (2, 16384, 16472), (2, 18432, 18520), (2, 20480, 20568), (2, 22528, 22616), (2, 24576, 24664), (2, 26624, 26712), (2, 28672, 28760), (2, 30720, 30808), (2, 16384, 16472), (2, 20480, 20568), (2, 24576, 24664)]

def row089_layer001_block001 : List ColouredInterval :=
  [(2, 28672, 28760), (2, 16384, 16472), (2, 24576, 24664), (2, 16384, 16472), (3, 17496, 17584), (3, 19683, 19771), (3, 21870, 21958), (3, 24057, 24145), (3, 26244, 26332), (3, 28431, 28519), (3, 30618, 30706), (3, 19683, 19771), (3, 26244, 26332), (3, 19683, 19771), (5, 15664, 15713)]

def row089_layer001_block002 : List ColouredInterval :=
  [(5, 18750, 18838), (5, 21875, 21963), (5, 25000, 25088), (5, 28125, 28213), (5, 31250, 31327), (5, 15664, 15713), (5, 31250, 31327), (7, 16807, 16895), (7, 19208, 19296), (7, 21609, 21697), (7, 24010, 24098), (7, 26411, 26499), (7, 28812, 28900), (7, 31213, 31301), (7, 16807, 16895)]

def row089_layer001_block003 : List ColouredInterval :=
  [(11, 15972, 16060), (11, 17303, 17391), (11, 18634, 18722), (11, 19965, 20053), (11, 21296, 21384), (11, 22627, 22715), (11, 23958, 24046), (11, 25289, 25377), (11, 29282, 29370), (13, 17576, 17664), (13, 19773, 19861), (13, 21970, 22058), (13, 24167, 24255), (13, 26364, 26452), (13, 28561, 28649)]

def row089_layer001_block004 : List ColouredInterval :=
  [(13, 30758, 30846), (13, 28561, 28649), (17, 19652, 19740), (17, 24565, 24653), (17, 29478, 29566), (19, 20577, 20665), (19, 27436, 27524), (23, 24334, 24422), (29, 15979, 16067), (29, 24389, 24477), (31, 16337, 16425), (31, 17298, 17386), (31, 18259, 18347), (31, 29791, 29879), (37, 16428, 16516)]

def row089_layer001_block005 : List ColouredInterval :=
  [(37, 17797, 17885), (37, 19166, 19254), (37, 20535, 20623), (37, 21904, 21992), (37, 23273, 23361), (37, 24642, 24730), (37, 26011, 26099), (41, 16810, 16898), (41, 18491, 18579), (41, 20172, 20260), (41, 21853, 21941), (41, 23534, 23622), (41, 25215, 25303), (41, 26896, 26984), (41, 28577, 28665)]

def row089_layer001_block006 : List ColouredInterval :=
  [(41, 30258, 30346), (43, 16641, 16729), (43, 18490, 18578), (43, 20339, 20427), (43, 22188, 22276), (43, 24037, 24125), (43, 25886, 25974), (43, 27735, 27823), (43, 29584, 29672), (47, 17672, 17760), (47, 19881, 19969), (47, 22090, 22178), (47, 24299, 24387), (47, 26508, 26596), (47, 28717, 28805)]

def row089_layer001_block007 : List ColouredInterval :=
  [(47, 30926, 31014), (53, 16854, 16942), (53, 19663, 19751), (53, 22472, 22560), (53, 25281, 25369), (53, 28090, 28178), (53, 30899, 30987), (59, 17405, 17493), (59, 20886, 20974), (59, 24367, 24455), (59, 27848, 27936), (61, 18605, 18693), (61, 22326, 22414), (61, 26047, 26135), (61, 29768, 29856)]

def row089_layer001_block008 : List ColouredInterval :=
  [(67, 17956, 18044), (67, 22445, 22533), (67, 26934, 27022), (71, 20164, 20252), (71, 25205, 25293), (71, 30246, 30334), (73, 15987, 16075), (73, 21316, 21404), (73, 26645, 26733), (79, 18723, 18811), (79, 24964, 25052), (79, 31205, 31293), (83, 20667, 20755), (83, 27556, 27644)]

def row089_layer001_chunks : List (List ColouredInterval) :=
  [row089_layer001_block000, row089_layer001_block001, row089_layer001_block002, row089_layer001_block003, row089_layer001_block004, row089_layer001_block005, row089_layer001_block006, row089_layer001_block007, row089_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_arithmetic : LayerArithmeticValid row089.height { lower := 15664, upper := 31328, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_enumeration :
    activePowerIntervalList 89 19 15664 31328 = row089_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs000 :
    row089_layer001_block000.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs001 :
    row089_layer001_block001.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs002 :
    row089_layer001_block002.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs003 :
    row089_layer001_block003.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs004 :
    row089_layer001_block004.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs005 :
    row089_layer001_block005.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs006 :
    row089_layer001_block006.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs007 :
    row089_layer001_block007.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_pairs008 :
    row089_layer001_block008.all (fun I => row089_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_chunks_eq : row089_layer001_chunks.flatten = row089_layer001_intervals := by
  rfl

theorem row089_layer001_pairs : pairCoverCheck row089_layer001_intervals row089_bounds = true := by
  apply pairCoverCheck_of_chunks row089_layer001_chunks_eq
  intro block hblock
  simp only [row089_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row089_layer001_pairs000
  · exact row089_layer001_pairs001
  · exact row089_layer001_pairs002
  · exact row089_layer001_pairs003
  · exact row089_layer001_pairs004
  · exact row089_layer001_pairs005
  · exact row089_layer001_pairs006
  · exact row089_layer001_pairs007
  · exact row089_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer001_checked :
    coverLayerCheck row089.height row089.goods { lower := 15664, upper := 31328, M := 19 } = true := by
  exact coverLayerCheck_of_parts row089_layer001_arithmetic row089_layer001_enumeration row089_bounds_eq row089_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_layer002_intervals : List ColouredInterval :=
  [(2, 32768, 32856), (2, 32768, 32856), (2, 36864, 36952), (2, 40960, 41048), (2, 45056, 45144), (2, 49152, 49240), (2, 53248, 53336), (2, 57344, 57432), (2, 61440, 61528), (2, 32768, 32856), (2, 40960, 41048), (2, 49152, 49240), (2, 57344, 57432), (2, 32768, 32856), (2, 49152, 49240), (2, 32768, 32856), (3, 32805, 32893), (3, 34992, 35080), (3, 32805, 32893), (3, 39366, 39454), (3, 45927, 46015), (3, 52488, 52576), (3, 59049, 59137), (3, 39366, 39454), (3, 59049, 59137), (3, 59049, 59137), (5, 31328, 31338), (5, 34375, 34463), (5, 37500, 37588), (5, 40625, 40713), (5, 43750, 43838), (5, 46875, 46963), (5, 50000, 50088), (5, 31328, 31338), (5, 46875, 46963), (5, 62500, 62588), (7, 33614, 33702), (7, 36015, 36103), (7, 38416, 38504), (7, 33614, 33702), (7, 50421, 50509), (11, 43923, 44011), (11, 58564, 58652), (13, 32955, 33043), (13, 35152, 35240), (13, 57122, 57210), (17, 34391, 34479), (17, 39304, 39392), (17, 44217, 44305), (17, 49130, 49218), (17, 54043, 54131), (17, 58956, 59044), (19, 34295, 34383), (19, 41154, 41242), (19, 48013, 48101), (19, 54872, 54960), (19, 61731, 61819), (23, 36501, 36589), (23, 48668, 48756), (23, 60835, 60923), (29, 48778, 48866), (31, 59582, 59670), (37, 50653, 50741), (47, 33135, 33223), (47, 35344, 35432), (53, 33708, 33796), (53, 36517, 36605), (53, 39326, 39414), (53, 42135, 42223), (53, 44944, 45032), (59, 31329, 31417), (59, 34810, 34898), (59, 38291, 38379), (59, 41772, 41860), (59, 45253, 45341), (59, 48734, 48822), (59, 52215, 52303), (59, 55696, 55784), (61, 33489, 33577), (61, 37210, 37298), (61, 40931, 41019), (61, 44652, 44740), (61, 48373, 48461), (61, 52094, 52182), (61, 55815, 55903), (61, 59536, 59624), (67, 31423, 31511), (67, 35912, 36000), (67, 40401, 40489), (67, 44890, 44978), (67, 49379, 49467), (67, 53868, 53956), (67, 58357, 58445), (71, 35287, 35375), (71, 40328, 40416), (71, 45369, 45457), (71, 50410, 50498), (71, 55451, 55539), (71, 60492, 60580), (73, 31974, 32062), (73, 37303, 37391), (73, 42632, 42720), (73, 47961, 48049), (73, 53290, 53378), (73, 58619, 58707), (79, 37446, 37534), (79, 43687, 43775), (79, 49928, 50016), (79, 56169, 56257), (79, 62410, 62498), (83, 34445, 34533), (83, 41334, 41422), (83, 48223, 48311), (83, 55112, 55200), (83, 62001, 62089)]

def row089_layer002_block000 : List ColouredInterval :=
  [(2, 32768, 32856), (2, 32768, 32856), (2, 36864, 36952), (2, 40960, 41048), (2, 45056, 45144), (2, 49152, 49240), (2, 53248, 53336), (2, 57344, 57432), (2, 61440, 61528), (2, 32768, 32856), (2, 40960, 41048), (2, 49152, 49240), (2, 57344, 57432), (2, 32768, 32856), (2, 49152, 49240), (2, 32768, 32856)]

def row089_layer002_block001 : List ColouredInterval :=
  [(3, 32805, 32893), (3, 34992, 35080), (3, 32805, 32893), (3, 39366, 39454), (3, 45927, 46015), (3, 52488, 52576), (3, 59049, 59137), (3, 39366, 39454), (3, 59049, 59137), (3, 59049, 59137), (5, 31328, 31338), (5, 34375, 34463), (5, 37500, 37588), (5, 40625, 40713), (5, 43750, 43838), (5, 46875, 46963)]

def row089_layer002_block002 : List ColouredInterval :=
  [(5, 50000, 50088), (5, 31328, 31338), (5, 46875, 46963), (5, 62500, 62588), (7, 33614, 33702), (7, 36015, 36103), (7, 38416, 38504), (7, 33614, 33702), (7, 50421, 50509), (11, 43923, 44011), (11, 58564, 58652), (13, 32955, 33043), (13, 35152, 35240), (13, 57122, 57210), (17, 34391, 34479), (17, 39304, 39392)]

def row089_layer002_block003 : List ColouredInterval :=
  [(17, 44217, 44305), (17, 49130, 49218), (17, 54043, 54131), (17, 58956, 59044), (19, 34295, 34383), (19, 41154, 41242), (19, 48013, 48101), (19, 54872, 54960), (19, 61731, 61819), (23, 36501, 36589), (23, 48668, 48756), (23, 60835, 60923), (29, 48778, 48866), (31, 59582, 59670), (37, 50653, 50741), (47, 33135, 33223)]

def row089_layer002_block004 : List ColouredInterval :=
  [(47, 35344, 35432), (53, 33708, 33796), (53, 36517, 36605), (53, 39326, 39414), (53, 42135, 42223), (53, 44944, 45032), (59, 31329, 31417), (59, 34810, 34898), (59, 38291, 38379), (59, 41772, 41860), (59, 45253, 45341), (59, 48734, 48822), (59, 52215, 52303), (59, 55696, 55784), (61, 33489, 33577), (61, 37210, 37298)]

def row089_layer002_block005 : List ColouredInterval :=
  [(61, 40931, 41019), (61, 44652, 44740), (61, 48373, 48461), (61, 52094, 52182), (61, 55815, 55903), (61, 59536, 59624), (67, 31423, 31511), (67, 35912, 36000), (67, 40401, 40489), (67, 44890, 44978), (67, 49379, 49467), (67, 53868, 53956), (67, 58357, 58445), (71, 35287, 35375), (71, 40328, 40416), (71, 45369, 45457)]

def row089_layer002_block006 : List ColouredInterval :=
  [(71, 50410, 50498), (71, 55451, 55539), (71, 60492, 60580), (73, 31974, 32062), (73, 37303, 37391), (73, 42632, 42720), (73, 47961, 48049), (73, 53290, 53378), (73, 58619, 58707), (79, 37446, 37534), (79, 43687, 43775), (79, 49928, 50016), (79, 56169, 56257), (79, 62410, 62498), (83, 34445, 34533), (83, 41334, 41422)]

def row089_layer002_block007 : List ColouredInterval :=
  [(83, 48223, 48311), (83, 55112, 55200), (83, 62001, 62089)]

def row089_layer002_chunks : List (List ColouredInterval) :=
  [row089_layer002_block000, row089_layer002_block001, row089_layer002_block002, row089_layer002_block003, row089_layer002_block004, row089_layer002_block005, row089_layer002_block006, row089_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_intervals
