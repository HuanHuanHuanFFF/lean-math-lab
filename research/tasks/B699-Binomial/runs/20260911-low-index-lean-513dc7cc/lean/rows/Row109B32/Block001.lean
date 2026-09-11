import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row109B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs006 :
    row109_layer000_block006.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs007 :
    row109_layer000_block007.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs008 :
    row109_layer000_block008.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs009 :
    row109_layer000_block009.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs010 :
    row109_layer000_block010.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs011 :
    row109_layer000_block011.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs012 :
    row109_layer000_block012.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_pairs013 :
    row109_layer000_block013.all (fun I => row109_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_chunks_eq : row109_layer000_chunks.flatten = row109_layer000_intervals := by
  rfl

theorem row109_layer000_pairs : pairCoverCheck row109_layer000_intervals row109_bounds = true := by
  apply pairCoverCheck_of_chunks row109_layer000_chunks_eq
  intro block hblock
  simp only [row109_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row109_layer000_pairs000
  · exact row109_layer000_pairs001
  · exact row109_layer000_pairs002
  · exact row109_layer000_pairs003
  · exact row109_layer000_pairs004
  · exact row109_layer000_pairs005
  · exact row109_layer000_pairs006
  · exact row109_layer000_pairs007
  · exact row109_layer000_pairs008
  · exact row109_layer000_pairs009
  · exact row109_layer000_pairs010
  · exact row109_layer000_pairs011
  · exact row109_layer000_pairs012
  · exact row109_layer000_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer000_checked :
    coverLayerCheck row109.height row109.goods { lower := 11772, upper := 23544, M := 25 } = true := by
  exact coverLayerCheck_of_parts row109_layer000_arithmetic row109_layer000_enumeration row109_bounds_eq row109_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row109_layer001_intervals : List ColouredInterval :=
  [(2, 24576, 24684), (2, 26624, 26732), (2, 28672, 28780), (2, 30720, 30828), (2, 32768, 32876), (2, 34816, 34924), (2, 36864, 36972), (2, 38912, 39020), (2, 40960, 41068), (2, 24576, 24684), (2, 28672, 28780), (2, 32768, 32876), (2, 36864, 36972), (2, 40960, 41068), (2, 45056, 45164), (2, 24576, 24684), (2, 32768, 32876), (2, 40960, 41068), (2, 32768, 32876), (2, 32768, 32876), (3, 24057, 24165), (3, 26244, 26352), (3, 28431, 28539), (3, 30618, 30726), (3, 32805, 32913), (3, 34992, 35100), (3, 37179, 37287), (3, 39366, 39474), (3, 41553, 41661), (3, 43740, 43848), (3, 26244, 26352), (3, 32805, 32913), (3, 39366, 39474), (3, 45927, 46035), (3, 39366, 39474), (5, 25000, 25108), (5, 28125, 28233), (5, 31250, 31358), (5, 34375, 34483), (5, 37500, 37608), (5, 40625, 40733), (5, 43750, 43858), (5, 46875, 46983), (5, 31250, 31358), (5, 46875, 46983), (7, 24010, 24118), (7, 26411, 26519), (7, 28812, 28920), (7, 31213, 31321), (7, 33614, 33722), (7, 36015, 36123), (7, 38416, 38524), (7, 40817, 40925), (7, 43218, 43326), (7, 45619, 45727), (7, 33614, 33722), (11, 23958, 24066), (11, 25289, 25397), (11, 26620, 26728), (11, 29282, 29390), (11, 43923, 44031), (13, 24167, 24275), (13, 26364, 26472), (13, 28561, 28669), (13, 30758, 30866), (13, 32955, 33063), (13, 35152, 35260), (13, 37349, 37457), (13, 39546, 39654), (13, 41743, 41851), (13, 43940, 44048), (13, 28561, 28669), (17, 24565, 24673), (17, 29478, 29586), (17, 34391, 34499), (17, 39304, 39412), (17, 44217, 44325), (19, 27436, 27544), (19, 34295, 34403), (19, 41154, 41262), (23, 24334, 24442), (23, 36501, 36609), (29, 24389, 24497), (31, 29791, 29899), (37, 24642, 24750), (37, 26011, 26119), (37, 27380, 27488), (41, 23544, 23642), (41, 25215, 25323), (41, 26896, 27004), (41, 28577, 28685), (41, 30258, 30366), (41, 31939, 32047), (41, 33620, 33728), (43, 24037, 24145), (43, 25886, 25994), (43, 27735, 27843), (43, 29584, 29692), (43, 31433, 31541), (43, 33282, 33390), (43, 35131, 35239), (43, 36980, 37088), (47, 24299, 24407), (47, 26508, 26616), (47, 28717, 28825), (47, 30926, 31034), (47, 33135, 33243), (47, 35344, 35452), (47, 37553, 37661), (47, 39762, 39870), (47, 41971, 42079), (47, 44180, 44288), (53, 25281, 25389), (53, 28090, 28198), (53, 30899, 31007), (53, 33708, 33816), (53, 36517, 36625), (53, 39326, 39434), (53, 42135, 42243), (53, 44944, 45052), (59, 24367, 24475), (59, 27848, 27956), (59, 31329, 31437), (59, 34810, 34918), (59, 38291, 38399), (59, 41772, 41880), (59, 45253, 45361), (61, 26047, 26155), (61, 29768, 29876), (61, 33489, 33597), (61, 37210, 37318), (61, 40931, 41039), (61, 44652, 44760), (67, 26934, 27042), (67, 31423, 31531), (67, 35912, 36020), (67, 40401, 40509), (67, 44890, 44998), (71, 25205, 25313), (71, 30246, 30354), (71, 35287, 35395), (71, 40328, 40436), (71, 45369, 45477), (73, 26645, 26753), (73, 31974, 32082), (73, 37303, 37411), (73, 42632, 42740), (79, 24964, 25072), (79, 31205, 31313), (79, 37446, 37554), (79, 43687, 43795), (83, 27556, 27664), (83, 34445, 34553), (83, 41334, 41442), (89, 23763, 23871), (89, 31684, 31792), (89, 39605, 39713), (97, 28227, 28335), (97, 37636, 37744), (97, 47045, 47087), (101, 30603, 30711), (101, 40804, 40912), (103, 31827, 31935), (103, 42436, 42544), (107, 34347, 34455), (107, 45796, 45904)]

def row109_layer001_block000 : List ColouredInterval :=
  [(2, 24576, 24684), (2, 26624, 26732), (2, 28672, 28780), (2, 30720, 30828), (2, 32768, 32876), (2, 34816, 34924), (2, 36864, 36972), (2, 38912, 39020), (2, 40960, 41068), (2, 24576, 24684), (2, 28672, 28780), (2, 32768, 32876)]

def row109_layer001_block001 : List ColouredInterval :=
  [(2, 36864, 36972), (2, 40960, 41068), (2, 45056, 45164), (2, 24576, 24684), (2, 32768, 32876), (2, 40960, 41068), (2, 32768, 32876), (2, 32768, 32876), (3, 24057, 24165), (3, 26244, 26352), (3, 28431, 28539), (3, 30618, 30726)]

def row109_layer001_block002 : List ColouredInterval :=
  [(3, 32805, 32913), (3, 34992, 35100), (3, 37179, 37287), (3, 39366, 39474), (3, 41553, 41661), (3, 43740, 43848), (3, 26244, 26352), (3, 32805, 32913), (3, 39366, 39474), (3, 45927, 46035), (3, 39366, 39474), (5, 25000, 25108)]

def row109_layer001_block003 : List ColouredInterval :=
  [(5, 28125, 28233), (5, 31250, 31358), (5, 34375, 34483), (5, 37500, 37608), (5, 40625, 40733), (5, 43750, 43858), (5, 46875, 46983), (5, 31250, 31358), (5, 46875, 46983), (7, 24010, 24118), (7, 26411, 26519), (7, 28812, 28920)]

def row109_layer001_block004 : List ColouredInterval :=
  [(7, 31213, 31321), (7, 33614, 33722), (7, 36015, 36123), (7, 38416, 38524), (7, 40817, 40925), (7, 43218, 43326), (7, 45619, 45727), (7, 33614, 33722), (11, 23958, 24066), (11, 25289, 25397), (11, 26620, 26728), (11, 29282, 29390)]

def row109_layer001_block005 : List ColouredInterval :=
  [(11, 43923, 44031), (13, 24167, 24275), (13, 26364, 26472), (13, 28561, 28669), (13, 30758, 30866), (13, 32955, 33063), (13, 35152, 35260), (13, 37349, 37457), (13, 39546, 39654), (13, 41743, 41851), (13, 43940, 44048), (13, 28561, 28669)]

def row109_layer001_block006 : List ColouredInterval :=
  [(17, 24565, 24673), (17, 29478, 29586), (17, 34391, 34499), (17, 39304, 39412), (17, 44217, 44325), (19, 27436, 27544), (19, 34295, 34403), (19, 41154, 41262), (23, 24334, 24442), (23, 36501, 36609), (29, 24389, 24497), (31, 29791, 29899)]

def row109_layer001_block007 : List ColouredInterval :=
  [(37, 24642, 24750), (37, 26011, 26119), (37, 27380, 27488), (41, 23544, 23642), (41, 25215, 25323), (41, 26896, 27004), (41, 28577, 28685), (41, 30258, 30366), (41, 31939, 32047), (41, 33620, 33728), (43, 24037, 24145), (43, 25886, 25994)]

def row109_layer001_block008 : List ColouredInterval :=
  [(43, 27735, 27843), (43, 29584, 29692), (43, 31433, 31541), (43, 33282, 33390), (43, 35131, 35239), (43, 36980, 37088), (47, 24299, 24407), (47, 26508, 26616), (47, 28717, 28825), (47, 30926, 31034), (47, 33135, 33243), (47, 35344, 35452)]

def row109_layer001_block009 : List ColouredInterval :=
  [(47, 37553, 37661), (47, 39762, 39870), (47, 41971, 42079), (47, 44180, 44288), (53, 25281, 25389), (53, 28090, 28198), (53, 30899, 31007), (53, 33708, 33816), (53, 36517, 36625), (53, 39326, 39434), (53, 42135, 42243), (53, 44944, 45052)]

def row109_layer001_block010 : List ColouredInterval :=
  [(59, 24367, 24475), (59, 27848, 27956), (59, 31329, 31437), (59, 34810, 34918), (59, 38291, 38399), (59, 41772, 41880), (59, 45253, 45361), (61, 26047, 26155), (61, 29768, 29876), (61, 33489, 33597), (61, 37210, 37318), (61, 40931, 41039)]

def row109_layer001_block011 : List ColouredInterval :=
  [(61, 44652, 44760), (67, 26934, 27042), (67, 31423, 31531), (67, 35912, 36020), (67, 40401, 40509), (67, 44890, 44998), (71, 25205, 25313), (71, 30246, 30354), (71, 35287, 35395), (71, 40328, 40436), (71, 45369, 45477), (73, 26645, 26753)]

def row109_layer001_block012 : List ColouredInterval :=
  [(73, 31974, 32082), (73, 37303, 37411), (73, 42632, 42740), (79, 24964, 25072), (79, 31205, 31313), (79, 37446, 37554), (79, 43687, 43795), (83, 27556, 27664), (83, 34445, 34553), (83, 41334, 41442), (89, 23763, 23871), (89, 31684, 31792)]

def row109_layer001_block013 : List ColouredInterval :=
  [(89, 39605, 39713), (97, 28227, 28335), (97, 37636, 37744), (97, 47045, 47087), (101, 30603, 30711), (101, 40804, 40912), (103, 31827, 31935), (103, 42436, 42544), (107, 34347, 34455), (107, 45796, 45904)]

def row109_layer001_chunks : List (List ColouredInterval) :=
  [row109_layer001_block000, row109_layer001_block001, row109_layer001_block002, row109_layer001_block003, row109_layer001_block004, row109_layer001_block005, row109_layer001_block006, row109_layer001_block007, row109_layer001_block008, row109_layer001_block009, row109_layer001_block010, row109_layer001_block011, row109_layer001_block012, row109_layer001_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_arithmetic : LayerArithmeticValid row109.height { lower := 23544, upper := 47088, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_enumeration :
    activePowerIntervalList 109 20 23544 47088 = row109_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs000 :
    row109_layer001_block000.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs001 :
    row109_layer001_block001.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs002 :
    row109_layer001_block002.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs003 :
    row109_layer001_block003.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs004 :
    row109_layer001_block004.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs005 :
    row109_layer001_block005.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs006 :
    row109_layer001_block006.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs007 :
    row109_layer001_block007.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs008 :
    row109_layer001_block008.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs009 :
    row109_layer001_block009.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs010 :
    row109_layer001_block010.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs011 :
    row109_layer001_block011.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs012 :
    row109_layer001_block012.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_pairs013 :
    row109_layer001_block013.all (fun I => row109_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row109_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_chunks_eq : row109_layer001_chunks.flatten = row109_layer001_intervals := by
  rfl

theorem row109_layer001_pairs : pairCoverCheck row109_layer001_intervals row109_bounds = true := by
  apply pairCoverCheck_of_chunks row109_layer001_chunks_eq
  intro block hblock
  simp only [row109_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row109_layer001_pairs000
  · exact row109_layer001_pairs001
  · exact row109_layer001_pairs002
  · exact row109_layer001_pairs003
  · exact row109_layer001_pairs004
  · exact row109_layer001_pairs005
  · exact row109_layer001_pairs006
  · exact row109_layer001_pairs007
  · exact row109_layer001_pairs008
  · exact row109_layer001_pairs009
  · exact row109_layer001_pairs010
  · exact row109_layer001_pairs011
  · exact row109_layer001_pairs012
  · exact row109_layer001_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer001_checked :
    coverLayerCheck row109.height row109.goods { lower := 23544, upper := 47088, M := 20 } = true := by
  exact coverLayerCheck_of_parts row109_layer001_arithmetic row109_layer001_enumeration row109_bounds_eq row109_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row109_layer002_intervals : List ColouredInterval :=
  [(2, 49152, 49260), (2, 53248, 53356), (2, 57344, 57452), (2, 61440, 61548), (2, 65536, 65644), (2, 69632, 69740), (2, 49152, 49260), (2, 57344, 57452), (2, 65536, 65644), (2, 73728, 73836), (2, 81920, 82028), (2, 90112, 90220), (2, 49152, 49260), (2, 65536, 65644), (2, 81920, 82028), (2, 65536, 65644), (2, 65536, 65644), (3, 52488, 52596), (3, 59049, 59157), (3, 65610, 65718), (3, 72171, 72279), (3, 78732, 78840), (3, 85293, 85401), (3, 91854, 91962), (3, 59049, 59157), (3, 78732, 78840), (3, 59049, 59157), (5, 50000, 50108), (5, 53125, 53233), (5, 62500, 62608), (5, 78125, 78233), (5, 93750, 93858), (5, 78125, 78233), (7, 50421, 50529), (7, 67228, 67336), (7, 84035, 84143), (11, 58564, 58672), (11, 73205, 73313), (11, 87846, 87954), (13, 57122, 57230), (13, 85683, 85791), (17, 49130, 49238), (17, 54043, 54151), (17, 58956, 59064), (17, 63869, 63977), (17, 68782, 68890), (17, 73695, 73803), (17, 78608, 78716), (17, 83521, 83629), (17, 83521, 83629), (19, 48013, 48121), (19, 54872, 54980), (19, 61731, 61839), (19, 68590, 68698), (19, 75449, 75557), (19, 82308, 82416), (19, 89167, 89275), (23, 48668, 48776), (23, 60835, 60943), (23, 73002, 73110), (23, 85169, 85277), (29, 48778, 48886), (29, 73167, 73275), (31, 59582, 59690), (31, 89373, 89481), (37, 50653, 50761), (41, 68921, 69029), (43, 79507, 79615), (53, 47753, 47861), (59, 48734, 48842), (59, 52215, 52323), (59, 55696, 55804), (59, 59177, 59285), (61, 48373, 48481), (61, 52094, 52202), (61, 55815, 55923), (61, 59536, 59644), (61, 63257, 63365), (67, 49379, 49487), (67, 53868, 53976), (67, 58357, 58465), (67, 62846, 62954), (67, 67335, 67443), (67, 71824, 71932), (67, 76313, 76421), (71, 50410, 50518), (71, 55451, 55559), (71, 60492, 60600), (71, 65533, 65641), (71, 70574, 70682), (71, 75615, 75723), (71, 80656, 80764), (71, 85697, 85805), (73, 47961, 48069), (73, 53290, 53398), (73, 58619, 58727), (73, 63948, 64056), (73, 69277, 69385), (73, 74606, 74714), (73, 79935, 80043), (73, 85264, 85372), (73, 90593, 90701), (79, 49928, 50036), (79, 56169, 56277), (79, 62410, 62518), (79, 68651, 68759), (79, 74892, 75000), (79, 81133, 81241), (79, 87374, 87482), (79, 93615, 93723), (83, 48223, 48331), (83, 55112, 55220), (83, 62001, 62109), (83, 68890, 68998), (83, 75779, 75887), (83, 82668, 82776), (83, 89557, 89665), (89, 47526, 47634), (89, 55447, 55555), (89, 63368, 63476), (89, 71289, 71397), (89, 79210, 79318), (89, 87131, 87239), (97, 47088, 47153), (97, 56454, 56562), (97, 65863, 65971), (97, 75272, 75380), (97, 84681, 84789), (97, 94090, 94175), (101, 51005, 51113), (101, 61206, 61314), (101, 71407, 71515), (101, 81608, 81716), (101, 91809, 91917), (103, 53045, 53153), (103, 63654, 63762), (103, 74263, 74371), (103, 84872, 84980), (107, 57245, 57353), (107, 68694, 68802), (107, 80143, 80251), (107, 91592, 91700)]

def row109_layer002_block000 : List ColouredInterval :=
  [(2, 49152, 49260), (2, 53248, 53356), (2, 57344, 57452), (2, 61440, 61548), (2, 65536, 65644), (2, 69632, 69740), (2, 49152, 49260), (2, 57344, 57452), (2, 65536, 65644), (2, 73728, 73836), (2, 81920, 82028), (2, 90112, 90220), (2, 49152, 49260), (2, 65536, 65644)]

def row109_layer002_block001 : List ColouredInterval :=
  [(2, 81920, 82028), (2, 65536, 65644), (2, 65536, 65644), (3, 52488, 52596), (3, 59049, 59157), (3, 65610, 65718), (3, 72171, 72279), (3, 78732, 78840), (3, 85293, 85401), (3, 91854, 91962), (3, 59049, 59157), (3, 78732, 78840), (3, 59049, 59157), (5, 50000, 50108)]

def row109_layer002_block002 : List ColouredInterval :=
  [(5, 53125, 53233), (5, 62500, 62608), (5, 78125, 78233), (5, 93750, 93858), (5, 78125, 78233), (7, 50421, 50529), (7, 67228, 67336), (7, 84035, 84143), (11, 58564, 58672), (11, 73205, 73313), (11, 87846, 87954), (13, 57122, 57230), (13, 85683, 85791), (17, 49130, 49238)]

def row109_layer002_block003 : List ColouredInterval :=
  [(17, 54043, 54151), (17, 58956, 59064), (17, 63869, 63977), (17, 68782, 68890), (17, 73695, 73803), (17, 78608, 78716), (17, 83521, 83629), (17, 83521, 83629), (19, 48013, 48121), (19, 54872, 54980), (19, 61731, 61839), (19, 68590, 68698), (19, 75449, 75557), (19, 82308, 82416)]

def row109_layer002_block004 : List ColouredInterval :=
  [(19, 89167, 89275), (23, 48668, 48776), (23, 60835, 60943), (23, 73002, 73110), (23, 85169, 85277), (29, 48778, 48886), (29, 73167, 73275), (31, 59582, 59690), (31, 89373, 89481), (37, 50653, 50761), (41, 68921, 69029), (43, 79507, 79615), (53, 47753, 47861), (59, 48734, 48842)]

def row109_layer002_block005 : List ColouredInterval :=
  [(59, 52215, 52323), (59, 55696, 55804), (59, 59177, 59285), (61, 48373, 48481), (61, 52094, 52202), (61, 55815, 55923), (61, 59536, 59644), (61, 63257, 63365), (67, 49379, 49487), (67, 53868, 53976), (67, 58357, 58465), (67, 62846, 62954), (67, 67335, 67443), (67, 71824, 71932)]

def row109_layer002_block006 : List ColouredInterval :=
  [(67, 76313, 76421), (71, 50410, 50518), (71, 55451, 55559), (71, 60492, 60600), (71, 65533, 65641), (71, 70574, 70682), (71, 75615, 75723), (71, 80656, 80764), (71, 85697, 85805), (73, 47961, 48069), (73, 53290, 53398), (73, 58619, 58727), (73, 63948, 64056), (73, 69277, 69385)]

def row109_layer002_block007 : List ColouredInterval :=
  [(73, 74606, 74714), (73, 79935, 80043), (73, 85264, 85372), (73, 90593, 90701), (79, 49928, 50036), (79, 56169, 56277), (79, 62410, 62518), (79, 68651, 68759), (79, 74892, 75000), (79, 81133, 81241), (79, 87374, 87482), (79, 93615, 93723), (83, 48223, 48331), (83, 55112, 55220)]

def row109_layer002_block008 : List ColouredInterval :=
  [(83, 62001, 62109), (83, 68890, 68998), (83, 75779, 75887), (83, 82668, 82776), (83, 89557, 89665), (89, 47526, 47634), (89, 55447, 55555), (89, 63368, 63476), (89, 71289, 71397), (89, 79210, 79318), (89, 87131, 87239), (97, 47088, 47153), (97, 56454, 56562), (97, 65863, 65971)]

def row109_layer002_block009 : List ColouredInterval :=
  [(97, 75272, 75380), (97, 84681, 84789), (97, 94090, 94175), (101, 51005, 51113), (101, 61206, 61314), (101, 71407, 71515), (101, 81608, 81716), (101, 91809, 91917), (103, 53045, 53153), (103, 63654, 63762), (103, 74263, 74371), (103, 84872, 84980), (107, 57245, 57353), (107, 68694, 68802)]

def row109_layer002_block010 : List ColouredInterval :=
  [(107, 80143, 80251), (107, 91592, 91700)]

def row109_layer002_chunks : List (List ColouredInterval) :=
  [row109_layer002_block000, row109_layer002_block001, row109_layer002_block002, row109_layer002_block003, row109_layer002_block004, row109_layer002_block005, row109_layer002_block006, row109_layer002_block007, row109_layer002_block008, row109_layer002_block009, row109_layer002_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer002_arithmetic : LayerArithmeticValid row109.height { lower := 47088, upper := 94176, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row109_layer002_enumeration :
    activePowerIntervalList 109 17 47088 94176 = row109_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row109_layer002_enumeration
