import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs005 :
    row113_layer000_block005.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs006 :
    row113_layer000_block006.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs007 :
    row113_layer000_block007.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs008 :
    row113_layer000_block008.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs009 :
    row113_layer000_block009.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs010 :
    row113_layer000_block010.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs011 :
    row113_layer000_block011.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs012 :
    row113_layer000_block012.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs013 :
    row113_layer000_block013.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_chunks_eq : row113_layer000_chunks.flatten = row113_layer000_intervals := by
  rfl

theorem row113_layer000_pairs : pairCoverCheck row113_layer000_intervals row113_bounds = true := by
  apply pairCoverCheck_of_chunks row113_layer000_chunks_eq
  intro block hblock
  simp only [row113_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row113_layer000_pairs000
  · exact row113_layer000_pairs001
  · exact row113_layer000_pairs002
  · exact row113_layer000_pairs003
  · exact row113_layer000_pairs004
  · exact row113_layer000_pairs005
  · exact row113_layer000_pairs006
  · exact row113_layer000_pairs007
  · exact row113_layer000_pairs008
  · exact row113_layer000_pairs009
  · exact row113_layer000_pairs010
  · exact row113_layer000_pairs011
  · exact row113_layer000_pairs012
  · exact row113_layer000_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_checked :
    coverLayerCheck row113.height row113.goods { lower := 12656, upper := 25312, M := 25 } = true := by
  exact coverLayerCheck_of_parts row113_layer000_arithmetic row113_layer000_enumeration row113_bounds_eq row113_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row113_layer001_intervals : List ColouredInterval :=
  [(2, 26624, 26736), (2, 28672, 28784), (2, 30720, 30832), (2, 32768, 32880), (2, 34816, 34928), (2, 36864, 36976), (2, 38912, 39024), (2, 40960, 41072), (2, 43008, 43120), (2, 28672, 28784), (2, 32768, 32880), (2, 36864, 36976), (2, 40960, 41072), (2, 45056, 45168), (2, 49152, 49264), (2, 32768, 32880), (2, 40960, 41072), (2, 49152, 49264), (2, 32768, 32880), (2, 49152, 49264), (2, 32768, 32880), (3, 26244, 26356), (3, 28431, 28543), (3, 30618, 30730), (3, 32805, 32917), (3, 34992, 35104), (3, 37179, 37291), (3, 39366, 39478), (3, 41553, 41665), (3, 43740, 43852), (3, 45927, 46039), (3, 26244, 26356), (3, 32805, 32917), (3, 39366, 39478), (3, 45927, 46039), (3, 39366, 39478), (5, 28125, 28237), (5, 31250, 31362), (5, 34375, 34487), (5, 37500, 37612), (5, 40625, 40737), (5, 43750, 43862), (5, 46875, 46987), (5, 50000, 50112), (5, 31250, 31362), (5, 46875, 46987), (7, 26411, 26523), (7, 28812, 28924), (7, 31213, 31325), (7, 33614, 33726), (7, 36015, 36127), (7, 38416, 38528), (7, 40817, 40929), (7, 43218, 43330), (7, 45619, 45731), (7, 48020, 48132), (7, 50421, 50533), (7, 33614, 33726), (7, 50421, 50533), (11, 25312, 25401), (11, 26620, 26732), (11, 27951, 28063), (11, 29282, 29394), (11, 43923, 44035), (13, 26364, 26476), (13, 28561, 28673), (13, 30758, 30870), (13, 32955, 33067), (13, 35152, 35264), (13, 37349, 37461), (13, 39546, 39658), (13, 41743, 41855), (13, 43940, 44052), (13, 46137, 46249), (13, 28561, 28673), (17, 29478, 29590), (17, 34391, 34503), (17, 39304, 39416), (17, 44217, 44329), (17, 49130, 49242), (19, 27436, 27548), (19, 34295, 34407), (19, 41154, 41266), (19, 48013, 48125), (23, 36501, 36613), (23, 48668, 48780), (29, 48778, 48890), (31, 29791, 29903), (37, 26011, 26123), (37, 27380, 27492), (37, 28749, 28861), (41, 25312, 25327), (41, 26896, 27008), (41, 28577, 28689), (41, 30258, 30370), (41, 31939, 32051), (41, 33620, 33732), (41, 35301, 35413), (43, 25886, 25998), (43, 27735, 27847), (43, 29584, 29696), (43, 31433, 31545), (43, 33282, 33394), (43, 35131, 35243), (43, 36980, 37092), (43, 38829, 38941), (47, 26508, 26620), (47, 28717, 28829), (47, 30926, 31038), (47, 33135, 33247), (47, 35344, 35456), (47, 37553, 37665), (47, 39762, 39874), (47, 41971, 42083), (47, 44180, 44292), (47, 46389, 46501), (53, 25312, 25393), (53, 28090, 28202), (53, 30899, 31011), (53, 33708, 33820), (53, 36517, 36629), (53, 39326, 39438), (53, 42135, 42247), (53, 44944, 45056), (53, 47753, 47865), (53, 50562, 50623), (59, 27848, 27960), (59, 31329, 31441), (59, 34810, 34922), (59, 38291, 38403), (59, 41772, 41884), (59, 45253, 45365), (59, 48734, 48846), (61, 26047, 26159), (61, 29768, 29880), (61, 33489, 33601), (61, 37210, 37322), (61, 40931, 41043), (61, 44652, 44764), (61, 48373, 48485), (67, 26934, 27046), (67, 31423, 31535), (67, 35912, 36024), (67, 40401, 40513), (67, 44890, 45002), (67, 49379, 49491), (71, 25312, 25317), (71, 30246, 30358), (71, 35287, 35399), (71, 40328, 40440), (71, 45369, 45481), (71, 50410, 50522), (73, 26645, 26757), (73, 31974, 32086), (73, 37303, 37415), (73, 42632, 42744), (73, 47961, 48073), (79, 31205, 31317), (79, 37446, 37558), (79, 43687, 43799), (79, 49928, 50040), (83, 27556, 27668), (83, 34445, 34557), (83, 41334, 41446), (83, 48223, 48335), (89, 31684, 31796), (89, 39605, 39717), (89, 47526, 47638), (97, 28227, 28339), (97, 37636, 37748), (97, 47045, 47157), (101, 30603, 30715), (101, 40804, 40916), (103, 31827, 31939), (103, 42436, 42548), (107, 34347, 34459), (107, 45796, 45908), (109, 35643, 35755), (109, 47524, 47636)]

def row113_layer001_block000 : List ColouredInterval :=
  [(2, 26624, 26736), (2, 28672, 28784), (2, 30720, 30832), (2, 32768, 32880), (2, 34816, 34928), (2, 36864, 36976), (2, 38912, 39024), (2, 40960, 41072), (2, 43008, 43120), (2, 28672, 28784), (2, 32768, 32880)]

def row113_layer001_block001 : List ColouredInterval :=
  [(2, 36864, 36976), (2, 40960, 41072), (2, 45056, 45168), (2, 49152, 49264), (2, 32768, 32880), (2, 40960, 41072), (2, 49152, 49264), (2, 32768, 32880), (2, 49152, 49264), (2, 32768, 32880), (3, 26244, 26356)]

def row113_layer001_block002 : List ColouredInterval :=
  [(3, 28431, 28543), (3, 30618, 30730), (3, 32805, 32917), (3, 34992, 35104), (3, 37179, 37291), (3, 39366, 39478), (3, 41553, 41665), (3, 43740, 43852), (3, 45927, 46039), (3, 26244, 26356), (3, 32805, 32917)]

def row113_layer001_block003 : List ColouredInterval :=
  [(3, 39366, 39478), (3, 45927, 46039), (3, 39366, 39478), (5, 28125, 28237), (5, 31250, 31362), (5, 34375, 34487), (5, 37500, 37612), (5, 40625, 40737), (5, 43750, 43862), (5, 46875, 46987), (5, 50000, 50112)]

def row113_layer001_block004 : List ColouredInterval :=
  [(5, 31250, 31362), (5, 46875, 46987), (7, 26411, 26523), (7, 28812, 28924), (7, 31213, 31325), (7, 33614, 33726), (7, 36015, 36127), (7, 38416, 38528), (7, 40817, 40929), (7, 43218, 43330), (7, 45619, 45731)]

def row113_layer001_block005 : List ColouredInterval :=
  [(7, 48020, 48132), (7, 50421, 50533), (7, 33614, 33726), (7, 50421, 50533), (11, 25312, 25401), (11, 26620, 26732), (11, 27951, 28063), (11, 29282, 29394), (11, 43923, 44035), (13, 26364, 26476), (13, 28561, 28673)]

def row113_layer001_block006 : List ColouredInterval :=
  [(13, 30758, 30870), (13, 32955, 33067), (13, 35152, 35264), (13, 37349, 37461), (13, 39546, 39658), (13, 41743, 41855), (13, 43940, 44052), (13, 46137, 46249), (13, 28561, 28673), (17, 29478, 29590), (17, 34391, 34503)]

def row113_layer001_block007 : List ColouredInterval :=
  [(17, 39304, 39416), (17, 44217, 44329), (17, 49130, 49242), (19, 27436, 27548), (19, 34295, 34407), (19, 41154, 41266), (19, 48013, 48125), (23, 36501, 36613), (23, 48668, 48780), (29, 48778, 48890), (31, 29791, 29903)]

def row113_layer001_block008 : List ColouredInterval :=
  [(37, 26011, 26123), (37, 27380, 27492), (37, 28749, 28861), (41, 25312, 25327), (41, 26896, 27008), (41, 28577, 28689), (41, 30258, 30370), (41, 31939, 32051), (41, 33620, 33732), (41, 35301, 35413), (43, 25886, 25998)]

def row113_layer001_block009 : List ColouredInterval :=
  [(43, 27735, 27847), (43, 29584, 29696), (43, 31433, 31545), (43, 33282, 33394), (43, 35131, 35243), (43, 36980, 37092), (43, 38829, 38941), (47, 26508, 26620), (47, 28717, 28829), (47, 30926, 31038), (47, 33135, 33247)]

def row113_layer001_block010 : List ColouredInterval :=
  [(47, 35344, 35456), (47, 37553, 37665), (47, 39762, 39874), (47, 41971, 42083), (47, 44180, 44292), (47, 46389, 46501), (53, 25312, 25393), (53, 28090, 28202), (53, 30899, 31011), (53, 33708, 33820), (53, 36517, 36629)]

def row113_layer001_block011 : List ColouredInterval :=
  [(53, 39326, 39438), (53, 42135, 42247), (53, 44944, 45056), (53, 47753, 47865), (53, 50562, 50623), (59, 27848, 27960), (59, 31329, 31441), (59, 34810, 34922), (59, 38291, 38403), (59, 41772, 41884), (59, 45253, 45365)]

def row113_layer001_block012 : List ColouredInterval :=
  [(59, 48734, 48846), (61, 26047, 26159), (61, 29768, 29880), (61, 33489, 33601), (61, 37210, 37322), (61, 40931, 41043), (61, 44652, 44764), (61, 48373, 48485), (67, 26934, 27046), (67, 31423, 31535), (67, 35912, 36024)]

def row113_layer001_block013 : List ColouredInterval :=
  [(67, 40401, 40513), (67, 44890, 45002), (67, 49379, 49491), (71, 25312, 25317), (71, 30246, 30358), (71, 35287, 35399), (71, 40328, 40440), (71, 45369, 45481), (71, 50410, 50522), (73, 26645, 26757), (73, 31974, 32086)]

def row113_layer001_block014 : List ColouredInterval :=
  [(73, 37303, 37415), (73, 42632, 42744), (73, 47961, 48073), (79, 31205, 31317), (79, 37446, 37558), (79, 43687, 43799), (79, 49928, 50040), (83, 27556, 27668), (83, 34445, 34557), (83, 41334, 41446), (83, 48223, 48335)]

def row113_layer001_block015 : List ColouredInterval :=
  [(89, 31684, 31796), (89, 39605, 39717), (89, 47526, 47638), (97, 28227, 28339), (97, 37636, 37748), (97, 47045, 47157), (101, 30603, 30715), (101, 40804, 40916), (103, 31827, 31939), (103, 42436, 42548), (107, 34347, 34459)]

def row113_layer001_block016 : List ColouredInterval :=
  [(107, 45796, 45908), (109, 35643, 35755), (109, 47524, 47636)]

def row113_layer001_chunks : List (List ColouredInterval) :=
  [row113_layer001_block000, row113_layer001_block001, row113_layer001_block002, row113_layer001_block003, row113_layer001_block004, row113_layer001_block005, row113_layer001_block006, row113_layer001_block007, row113_layer001_block008, row113_layer001_block009, row113_layer001_block010, row113_layer001_block011, row113_layer001_block012, row113_layer001_block013, row113_layer001_block014, row113_layer001_block015, row113_layer001_block016]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_arithmetic : LayerArithmeticValid row113.height { lower := 25312, upper := 50624, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_enumeration :
    activePowerIntervalList 113 21 25312 50624 = row113_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs000 :
    row113_layer001_block000.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs001 :
    row113_layer001_block001.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs002 :
    row113_layer001_block002.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs003 :
    row113_layer001_block003.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs004 :
    row113_layer001_block004.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs005 :
    row113_layer001_block005.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs006 :
    row113_layer001_block006.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs007 :
    row113_layer001_block007.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs008 :
    row113_layer001_block008.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs009 :
    row113_layer001_block009.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs010 :
    row113_layer001_block010.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs011 :
    row113_layer001_block011.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs012 :
    row113_layer001_block012.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs013 :
    row113_layer001_block013.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs014 :
    row113_layer001_block014.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs014

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs015 :
    row113_layer001_block015.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs015

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_pairs016 :
    row113_layer001_block016.all (fun I => row113_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_chunks_eq : row113_layer001_chunks.flatten = row113_layer001_intervals := by
  rfl

theorem row113_layer001_pairs : pairCoverCheck row113_layer001_intervals row113_bounds = true := by
  apply pairCoverCheck_of_chunks row113_layer001_chunks_eq
  intro block hblock
  simp only [row113_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row113_layer001_pairs000
  · exact row113_layer001_pairs001
  · exact row113_layer001_pairs002
  · exact row113_layer001_pairs003
  · exact row113_layer001_pairs004
  · exact row113_layer001_pairs005
  · exact row113_layer001_pairs006
  · exact row113_layer001_pairs007
  · exact row113_layer001_pairs008
  · exact row113_layer001_pairs009
  · exact row113_layer001_pairs010
  · exact row113_layer001_pairs011
  · exact row113_layer001_pairs012
  · exact row113_layer001_pairs013
  · exact row113_layer001_pairs014
  · exact row113_layer001_pairs015
  · exact row113_layer001_pairs016

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_pairs
