import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row110B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs006 :
    row110_layer000_block006.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs007 :
    row110_layer000_block007.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs008 :
    row110_layer000_block008.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs009 :
    row110_layer000_block009.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs010 :
    row110_layer000_block010.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_pairs011 :
    row110_layer000_block011.all (fun I => row110_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_chunks_eq : row110_layer000_chunks.flatten = row110_layer000_intervals := by
  rfl

theorem row110_layer000_pairs : pairCoverCheck row110_layer000_intervals row110_bounds = true := by
  apply pairCoverCheck_of_chunks row110_layer000_chunks_eq
  intro block hblock
  simp only [row110_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row110_layer000_pairs000
  · exact row110_layer000_pairs001
  · exact row110_layer000_pairs002
  · exact row110_layer000_pairs003
  · exact row110_layer000_pairs004
  · exact row110_layer000_pairs005
  · exact row110_layer000_pairs006
  · exact row110_layer000_pairs007
  · exact row110_layer000_pairs008
  · exact row110_layer000_pairs009
  · exact row110_layer000_pairs010
  · exact row110_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer000_checked :
    coverLayerCheck row110.height row110.goods { lower := 11990, upper := 23980, M := 30 } = true := by
  exact coverLayerCheck_of_parts row110_layer000_arithmetic row110_layer000_enumeration row110_bounds_eq row110_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row110_layer001_intervals : List ColouredInterval :=
  [(2, 24576, 24685), (2, 24576, 24685), (2, 28672, 28781), (2, 32768, 32877), (2, 36864, 36973), (2, 40960, 41069), (2, 45056, 45165), (2, 24576, 24685), (2, 32768, 32877), (2, 40960, 41069), (2, 32768, 32877), (2, 32768, 32877), (3, 24057, 24166), (3, 26244, 26353), (3, 28431, 28540), (3, 30618, 30727), (3, 32805, 32914), (3, 34992, 35101), (3, 37179, 37288), (3, 39366, 39475), (3, 41553, 41662), (3, 43740, 43849), (3, 45927, 46036), (3, 26244, 26353), (3, 32805, 32914), (3, 39366, 39475), (3, 45927, 46036), (3, 39366, 39475), (5, 31250, 31359), (5, 46875, 46984), (7, 24010, 24119), (7, 26411, 26520), (7, 28812, 28921), (7, 31213, 31322), (7, 33614, 33723), (7, 36015, 36124), (7, 38416, 38525), (7, 40817, 40926), (7, 43218, 43327), (7, 45619, 45728), (7, 33614, 33723), (11, 29282, 29391), (13, 24167, 24276), (13, 26364, 26473), (13, 28561, 28670), (13, 30758, 30867), (13, 32955, 33064), (13, 35152, 35261), (13, 37349, 37458), (13, 39546, 39655), (13, 41743, 41852), (13, 43940, 44049), (13, 46137, 46246), (13, 28561, 28670), (17, 24565, 24674), (17, 29478, 29587), (17, 34391, 34500), (17, 39304, 39413), (17, 44217, 44326), (19, 27436, 27545), (19, 34295, 34404), (19, 41154, 41263), (23, 24334, 24443), (23, 36501, 36610), (29, 24389, 24498), (31, 24025, 24134), (31, 29791, 29900), (37, 24642, 24751), (37, 26011, 26120), (37, 27380, 27489), (37, 28749, 28858), (37, 30118, 30227), (37, 31487, 31596), (37, 32856, 32965), (37, 34225, 34334), (41, 25215, 25324), (41, 26896, 27005), (41, 28577, 28686), (41, 30258, 30367), (41, 31939, 32048), (41, 33620, 33729), (41, 35301, 35410), (41, 36982, 37091), (41, 38663, 38772), (41, 40344, 40453), (41, 42025, 42134), (43, 24037, 24146), (43, 25886, 25995), (43, 27735, 27844), (43, 29584, 29693), (43, 31433, 31542), (43, 33282, 33391), (43, 35131, 35240), (43, 36980, 37089), (43, 38829, 38938), (43, 40678, 40787), (43, 42527, 42636), (43, 44376, 44485), (43, 46225, 46334), (47, 24299, 24408), (47, 26508, 26617), (47, 28717, 28826), (47, 30926, 31035), (47, 33135, 33244), (47, 35344, 35453), (47, 37553, 37662), (47, 39762, 39871), (47, 41971, 42080), (47, 44180, 44289), (47, 46389, 46498), (53, 25281, 25390), (53, 28090, 28199), (53, 30899, 31008), (53, 33708, 33817), (53, 36517, 36626), (53, 39326, 39435), (53, 42135, 42244), (53, 44944, 45053), (53, 47753, 47862), (59, 24367, 24476), (59, 27848, 27957), (59, 31329, 31438), (59, 34810, 34919), (59, 38291, 38400), (59, 41772, 41881), (59, 45253, 45362), (61, 26047, 26156), (61, 29768, 29877), (61, 33489, 33598), (61, 37210, 37319), (61, 40931, 41040), (61, 44652, 44761), (67, 26934, 27043), (67, 31423, 31532), (67, 35912, 36021), (67, 40401, 40510), (67, 44890, 44999), (71, 25205, 25314), (71, 30246, 30355), (71, 35287, 35396), (71, 40328, 40437), (71, 45369, 45478), (73, 26645, 26754), (73, 31974, 32083), (73, 37303, 37412), (73, 42632, 42741), (79, 24964, 25073), (79, 31205, 31314), (79, 37446, 37555), (79, 43687, 43796), (83, 27556, 27665), (83, 34445, 34554), (83, 41334, 41443), (89, 31684, 31793), (89, 39605, 39714), (89, 47526, 47635), (97, 28227, 28336), (97, 37636, 37745), (97, 47045, 47154), (101, 30603, 30712), (101, 40804, 40913), (103, 31827, 31936), (103, 42436, 42545), (107, 34347, 34456), (107, 45796, 45905), (109, 35643, 35752), (109, 47524, 47633)]

def row110_layer001_block000 : List ColouredInterval :=
  [(2, 24576, 24685), (2, 24576, 24685), (2, 28672, 28781), (2, 32768, 32877), (2, 36864, 36973), (2, 40960, 41069), (2, 45056, 45165), (2, 24576, 24685), (2, 32768, 32877), (2, 40960, 41069), (2, 32768, 32877), (2, 32768, 32877)]

def row110_layer001_block001 : List ColouredInterval :=
  [(3, 24057, 24166), (3, 26244, 26353), (3, 28431, 28540), (3, 30618, 30727), (3, 32805, 32914), (3, 34992, 35101), (3, 37179, 37288), (3, 39366, 39475), (3, 41553, 41662), (3, 43740, 43849), (3, 45927, 46036), (3, 26244, 26353)]

def row110_layer001_block002 : List ColouredInterval :=
  [(3, 32805, 32914), (3, 39366, 39475), (3, 45927, 46036), (3, 39366, 39475), (5, 31250, 31359), (5, 46875, 46984), (7, 24010, 24119), (7, 26411, 26520), (7, 28812, 28921), (7, 31213, 31322), (7, 33614, 33723), (7, 36015, 36124)]

def row110_layer001_block003 : List ColouredInterval :=
  [(7, 38416, 38525), (7, 40817, 40926), (7, 43218, 43327), (7, 45619, 45728), (7, 33614, 33723), (11, 29282, 29391), (13, 24167, 24276), (13, 26364, 26473), (13, 28561, 28670), (13, 30758, 30867), (13, 32955, 33064), (13, 35152, 35261)]

def row110_layer001_block004 : List ColouredInterval :=
  [(13, 37349, 37458), (13, 39546, 39655), (13, 41743, 41852), (13, 43940, 44049), (13, 46137, 46246), (13, 28561, 28670), (17, 24565, 24674), (17, 29478, 29587), (17, 34391, 34500), (17, 39304, 39413), (17, 44217, 44326), (19, 27436, 27545)]

def row110_layer001_block005 : List ColouredInterval :=
  [(19, 34295, 34404), (19, 41154, 41263), (23, 24334, 24443), (23, 36501, 36610), (29, 24389, 24498), (31, 24025, 24134), (31, 29791, 29900), (37, 24642, 24751), (37, 26011, 26120), (37, 27380, 27489), (37, 28749, 28858), (37, 30118, 30227)]

def row110_layer001_block006 : List ColouredInterval :=
  [(37, 31487, 31596), (37, 32856, 32965), (37, 34225, 34334), (41, 25215, 25324), (41, 26896, 27005), (41, 28577, 28686), (41, 30258, 30367), (41, 31939, 32048), (41, 33620, 33729), (41, 35301, 35410), (41, 36982, 37091), (41, 38663, 38772)]

def row110_layer001_block007 : List ColouredInterval :=
  [(41, 40344, 40453), (41, 42025, 42134), (43, 24037, 24146), (43, 25886, 25995), (43, 27735, 27844), (43, 29584, 29693), (43, 31433, 31542), (43, 33282, 33391), (43, 35131, 35240), (43, 36980, 37089), (43, 38829, 38938), (43, 40678, 40787)]

def row110_layer001_block008 : List ColouredInterval :=
  [(43, 42527, 42636), (43, 44376, 44485), (43, 46225, 46334), (47, 24299, 24408), (47, 26508, 26617), (47, 28717, 28826), (47, 30926, 31035), (47, 33135, 33244), (47, 35344, 35453), (47, 37553, 37662), (47, 39762, 39871), (47, 41971, 42080)]

def row110_layer001_block009 : List ColouredInterval :=
  [(47, 44180, 44289), (47, 46389, 46498), (53, 25281, 25390), (53, 28090, 28199), (53, 30899, 31008), (53, 33708, 33817), (53, 36517, 36626), (53, 39326, 39435), (53, 42135, 42244), (53, 44944, 45053), (53, 47753, 47862), (59, 24367, 24476)]

def row110_layer001_block010 : List ColouredInterval :=
  [(59, 27848, 27957), (59, 31329, 31438), (59, 34810, 34919), (59, 38291, 38400), (59, 41772, 41881), (59, 45253, 45362), (61, 26047, 26156), (61, 29768, 29877), (61, 33489, 33598), (61, 37210, 37319), (61, 40931, 41040), (61, 44652, 44761)]

def row110_layer001_block011 : List ColouredInterval :=
  [(67, 26934, 27043), (67, 31423, 31532), (67, 35912, 36021), (67, 40401, 40510), (67, 44890, 44999), (71, 25205, 25314), (71, 30246, 30355), (71, 35287, 35396), (71, 40328, 40437), (71, 45369, 45478), (73, 26645, 26754), (73, 31974, 32083)]

def row110_layer001_block012 : List ColouredInterval :=
  [(73, 37303, 37412), (73, 42632, 42741), (79, 24964, 25073), (79, 31205, 31314), (79, 37446, 37555), (79, 43687, 43796), (83, 27556, 27665), (83, 34445, 34554), (83, 41334, 41443), (89, 31684, 31793), (89, 39605, 39714), (89, 47526, 47635)]

def row110_layer001_block013 : List ColouredInterval :=
  [(97, 28227, 28336), (97, 37636, 37745), (97, 47045, 47154), (101, 30603, 30712), (101, 40804, 40913), (103, 31827, 31936), (103, 42436, 42545), (107, 34347, 34456), (107, 45796, 45905), (109, 35643, 35752), (109, 47524, 47633)]

def row110_layer001_chunks : List (List ColouredInterval) :=
  [row110_layer001_block000, row110_layer001_block001, row110_layer001_block002, row110_layer001_block003, row110_layer001_block004, row110_layer001_block005, row110_layer001_block006, row110_layer001_block007, row110_layer001_block008, row110_layer001_block009, row110_layer001_block010, row110_layer001_block011, row110_layer001_block012, row110_layer001_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_arithmetic : LayerArithmeticValid row110.height { lower := 23980, upper := 47960, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_enumeration :
    activePowerIntervalList 110 25 23980 47960 = row110_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs000 :
    row110_layer001_block000.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs001 :
    row110_layer001_block001.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs002 :
    row110_layer001_block002.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs003 :
    row110_layer001_block003.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs004 :
    row110_layer001_block004.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs005 :
    row110_layer001_block005.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs006 :
    row110_layer001_block006.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs007 :
    row110_layer001_block007.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs008 :
    row110_layer001_block008.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs009 :
    row110_layer001_block009.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs010 :
    row110_layer001_block010.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs011 :
    row110_layer001_block011.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs012 :
    row110_layer001_block012.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_pairs013 :
    row110_layer001_block013.all (fun I => row110_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_chunks_eq : row110_layer001_chunks.flatten = row110_layer001_intervals := by
  rfl

theorem row110_layer001_pairs : pairCoverCheck row110_layer001_intervals row110_bounds = true := by
  apply pairCoverCheck_of_chunks row110_layer001_chunks_eq
  intro block hblock
  simp only [row110_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row110_layer001_pairs000
  · exact row110_layer001_pairs001
  · exact row110_layer001_pairs002
  · exact row110_layer001_pairs003
  · exact row110_layer001_pairs004
  · exact row110_layer001_pairs005
  · exact row110_layer001_pairs006
  · exact row110_layer001_pairs007
  · exact row110_layer001_pairs008
  · exact row110_layer001_pairs009
  · exact row110_layer001_pairs010
  · exact row110_layer001_pairs011
  · exact row110_layer001_pairs012
  · exact row110_layer001_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer001_checked :
    coverLayerCheck row110.height row110.goods { lower := 23980, upper := 47960, M := 25 } = true := by
  exact coverLayerCheck_of_parts row110_layer001_arithmetic row110_layer001_enumeration row110_bounds_eq row110_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row110_layer002_intervals : List ColouredInterval :=
  [(2, 49152, 49261), (2, 57344, 57453), (2, 65536, 65645), (2, 73728, 73837), (2, 81920, 82029), (2, 49152, 49261), (2, 65536, 65645), (2, 81920, 82029), (2, 65536, 65645), (2, 65536, 65645), (3, 52488, 52597), (3, 59049, 59158), (3, 65610, 65719), (3, 72171, 72280), (3, 78732, 78841), (3, 85293, 85402), (3, 91854, 91963), (3, 59049, 59158), (3, 78732, 78841), (3, 59049, 59158), (5, 62500, 62609), (5, 78125, 78234), (7, 48020, 48129), (7, 50421, 50530), (7, 50421, 50530), (7, 67228, 67337), (7, 84035, 84144), (13, 57122, 57231), (13, 85683, 85792), (17, 49130, 49239), (17, 54043, 54152), (17, 58956, 59065), (17, 63869, 63978), (17, 68782, 68891), (17, 73695, 73804), (17, 78608, 78717), (17, 83521, 83630), (17, 88434, 88543), (17, 93347, 93456), (17, 83521, 83630), (19, 48013, 48122), (19, 54872, 54981), (19, 61731, 61840), (19, 68590, 68699), (19, 75449, 75558), (19, 82308, 82417), (19, 89167, 89276), (23, 48668, 48777), (23, 60835, 60944), (23, 73002, 73111), (23, 85169, 85278), (29, 48778, 48887), (29, 73167, 73276), (31, 59582, 59691), (31, 89373, 89482), (37, 50653, 50762), (41, 68921, 69030), (43, 79507, 79616), (53, 50562, 50671), (53, 53371, 53480), (53, 56180, 56289), (53, 58989, 59098), (59, 48734, 48843), (59, 52215, 52324), (59, 55696, 55805), (59, 59177, 59286), (59, 62658, 62767), (59, 66139, 66248), (59, 69620, 69729), (59, 73101, 73210), (61, 48373, 48482), (61, 52094, 52203), (61, 55815, 55924), (61, 59536, 59645), (61, 63257, 63366), (61, 66978, 67087), (61, 70699, 70808), (61, 74420, 74529), (61, 78141, 78250), (67, 49379, 49488), (67, 53868, 53977), (67, 58357, 58466), (67, 62846, 62955), (67, 67335, 67444), (67, 71824, 71933), (67, 76313, 76422), (67, 80802, 80911), (67, 85291, 85400), (67, 89780, 89889), (67, 94269, 94378), (71, 50410, 50519), (71, 55451, 55560), (71, 60492, 60601), (71, 65533, 65642), (71, 70574, 70683), (71, 75615, 75724), (71, 80656, 80765), (71, 85697, 85806), (71, 90738, 90847), (71, 95779, 95888), (73, 47961, 48070), (73, 53290, 53399), (73, 58619, 58728), (73, 63948, 64057), (73, 69277, 69386), (73, 74606, 74715), (73, 79935, 80044), (73, 85264, 85373), (73, 90593, 90702), (79, 49928, 50037), (79, 56169, 56278), (79, 62410, 62519), (79, 68651, 68760), (79, 74892, 75001), (79, 81133, 81242), (79, 87374, 87483), (79, 93615, 93724), (83, 48223, 48332), (83, 55112, 55221), (83, 62001, 62110), (83, 68890, 68999), (83, 75779, 75888), (83, 82668, 82777), (83, 89557, 89666), (89, 55447, 55556), (89, 63368, 63477), (89, 71289, 71398), (89, 79210, 79319), (89, 87131, 87240), (89, 95052, 95161), (97, 56454, 56563), (97, 65863, 65972), (97, 75272, 75381), (97, 84681, 84790), (97, 94090, 94199), (101, 51005, 51114), (101, 61206, 61315), (101, 71407, 71516), (101, 81608, 81717), (101, 91809, 91918), (103, 53045, 53154), (103, 63654, 63763), (103, 74263, 74372), (103, 84872, 84981), (103, 95481, 95590), (107, 57245, 57354), (107, 68694, 68803), (107, 80143, 80252), (107, 91592, 91701), (109, 59405, 59514), (109, 71286, 71395), (109, 83167, 83276), (109, 95048, 95157)]

def row110_layer002_block000 : List ColouredInterval :=
  [(2, 49152, 49261), (2, 57344, 57453), (2, 65536, 65645), (2, 73728, 73837), (2, 81920, 82029), (2, 49152, 49261), (2, 65536, 65645), (2, 81920, 82029), (2, 65536, 65645), (2, 65536, 65645), (3, 52488, 52597), (3, 59049, 59158), (3, 65610, 65719)]

def row110_layer002_block001 : List ColouredInterval :=
  [(3, 72171, 72280), (3, 78732, 78841), (3, 85293, 85402), (3, 91854, 91963), (3, 59049, 59158), (3, 78732, 78841), (3, 59049, 59158), (5, 62500, 62609), (5, 78125, 78234), (7, 48020, 48129), (7, 50421, 50530), (7, 50421, 50530), (7, 67228, 67337)]

def row110_layer002_block002 : List ColouredInterval :=
  [(7, 84035, 84144), (13, 57122, 57231), (13, 85683, 85792), (17, 49130, 49239), (17, 54043, 54152), (17, 58956, 59065), (17, 63869, 63978), (17, 68782, 68891), (17, 73695, 73804), (17, 78608, 78717), (17, 83521, 83630), (17, 88434, 88543), (17, 93347, 93456)]

def row110_layer002_block003 : List ColouredInterval :=
  [(17, 83521, 83630), (19, 48013, 48122), (19, 54872, 54981), (19, 61731, 61840), (19, 68590, 68699), (19, 75449, 75558), (19, 82308, 82417), (19, 89167, 89276), (23, 48668, 48777), (23, 60835, 60944), (23, 73002, 73111), (23, 85169, 85278), (29, 48778, 48887)]

def row110_layer002_block004 : List ColouredInterval :=
  [(29, 73167, 73276), (31, 59582, 59691), (31, 89373, 89482), (37, 50653, 50762), (41, 68921, 69030), (43, 79507, 79616), (53, 50562, 50671), (53, 53371, 53480), (53, 56180, 56289), (53, 58989, 59098), (59, 48734, 48843), (59, 52215, 52324), (59, 55696, 55805)]

def row110_layer002_block005 : List ColouredInterval :=
  [(59, 59177, 59286), (59, 62658, 62767), (59, 66139, 66248), (59, 69620, 69729), (59, 73101, 73210), (61, 48373, 48482), (61, 52094, 52203), (61, 55815, 55924), (61, 59536, 59645), (61, 63257, 63366), (61, 66978, 67087), (61, 70699, 70808), (61, 74420, 74529)]

def row110_layer002_block006 : List ColouredInterval :=
  [(61, 78141, 78250), (67, 49379, 49488), (67, 53868, 53977), (67, 58357, 58466), (67, 62846, 62955), (67, 67335, 67444), (67, 71824, 71933), (67, 76313, 76422), (67, 80802, 80911), (67, 85291, 85400), (67, 89780, 89889), (67, 94269, 94378), (71, 50410, 50519)]

def row110_layer002_block007 : List ColouredInterval :=
  [(71, 55451, 55560), (71, 60492, 60601), (71, 65533, 65642), (71, 70574, 70683), (71, 75615, 75724), (71, 80656, 80765), (71, 85697, 85806), (71, 90738, 90847), (71, 95779, 95888), (73, 47961, 48070), (73, 53290, 53399), (73, 58619, 58728), (73, 63948, 64057)]

def row110_layer002_block008 : List ColouredInterval :=
  [(73, 69277, 69386), (73, 74606, 74715), (73, 79935, 80044), (73, 85264, 85373), (73, 90593, 90702), (79, 49928, 50037), (79, 56169, 56278), (79, 62410, 62519), (79, 68651, 68760), (79, 74892, 75001), (79, 81133, 81242), (79, 87374, 87483), (79, 93615, 93724)]

def row110_layer002_block009 : List ColouredInterval :=
  [(83, 48223, 48332), (83, 55112, 55221), (83, 62001, 62110), (83, 68890, 68999), (83, 75779, 75888), (83, 82668, 82777), (83, 89557, 89666), (89, 55447, 55556), (89, 63368, 63477), (89, 71289, 71398), (89, 79210, 79319), (89, 87131, 87240), (89, 95052, 95161)]

def row110_layer002_block010 : List ColouredInterval :=
  [(97, 56454, 56563), (97, 65863, 65972), (97, 75272, 75381), (97, 84681, 84790), (97, 94090, 94199), (101, 51005, 51114), (101, 61206, 61315), (101, 71407, 71516), (101, 81608, 81717), (101, 91809, 91918), (103, 53045, 53154), (103, 63654, 63763), (103, 74263, 74372)]

def row110_layer002_block011 : List ColouredInterval :=
  [(103, 84872, 84981), (103, 95481, 95590), (107, 57245, 57354), (107, 68694, 68803), (107, 80143, 80252), (107, 91592, 91701), (109, 59405, 59514), (109, 71286, 71395), (109, 83167, 83276), (109, 95048, 95157)]

def row110_layer002_chunks : List (List ColouredInterval) :=
  [row110_layer002_block000, row110_layer002_block001, row110_layer002_block002, row110_layer002_block003, row110_layer002_block004, row110_layer002_block005, row110_layer002_block006, row110_layer002_block007, row110_layer002_block008, row110_layer002_block009, row110_layer002_block010, row110_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer002_arithmetic : LayerArithmeticValid row110.height { lower := 47960, upper := 95920, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer002_enumeration :
    activePowerIntervalList 110 21 47960 95920 = row110_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer002_pairs000 :
    row110_layer002_block000.all (fun I => row110_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row110_layer002_pairs001 :
    row110_layer002_block001.all (fun I => row110_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row110_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row110_layer002_pairs001
