import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs007 :
    row075_layer000_block007.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs008 :
    row075_layer000_block008.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs009 :
    row075_layer000_block009.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs010 :
    row075_layer000_block010.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_pairs011 :
    row075_layer000_block011.all (fun I => row075_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_chunks_eq : row075_layer000_chunks.flatten = row075_layer000_intervals := by
  rfl

theorem row075_layer000_pairs : pairCoverCheck row075_layer000_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer000_chunks_eq
  intro block hblock
  simp only [row075_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row075_layer000_pairs000
  · exact row075_layer000_pairs001
  · exact row075_layer000_pairs002
  · exact row075_layer000_pairs003
  · exact row075_layer000_pairs004
  · exact row075_layer000_pairs005
  · exact row075_layer000_pairs006
  · exact row075_layer000_pairs007
  · exact row075_layer000_pairs008
  · exact row075_layer000_pairs009
  · exact row075_layer000_pairs010
  · exact row075_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer000_checked :
    coverLayerCheck row075.height row075.goods { lower := 5550, upper := 11100, M := 34 } = true := by
  exact coverLayerCheck_of_parts row075_layer000_arithmetic row075_layer000_enumeration row075_bounds_eq row075_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer001_intervals : List ColouredInterval :=
  [(2, 11264, 11338), (2, 11776, 11850), (2, 12288, 12362), (2, 12800, 12874), (2, 13312, 13386), (2, 13824, 13898), (2, 14336, 14410), (2, 14848, 14922), (2, 15360, 15434), (2, 11264, 11338), (2, 12288, 12362), (2, 13312, 13386), (2, 14336, 14410), (2, 15360, 15434), (2, 16384, 16458), (2, 17408, 17482), (2, 18432, 18506), (2, 19456, 19530), (2, 20480, 20554), (2, 21504, 21578), (2, 12288, 12362), (2, 14336, 14410), (2, 16384, 16458), (2, 18432, 18506), (2, 20480, 20554), (2, 12288, 12362), (2, 16384, 16458), (2, 20480, 20554), (2, 16384, 16458), (2, 16384, 16458), (3, 13122, 13196), (3, 15309, 15383), (3, 17496, 17570), (3, 19683, 19757), (3, 21870, 21944), (3, 13122, 13196), (3, 19683, 19757), (3, 19683, 19757), (5, 15625, 15699), (7, 12005, 12079), (7, 14406, 14480), (7, 16807, 16881), (7, 19208, 19282), (7, 21609, 21683), (7, 16807, 16881), (11, 11979, 12053), (11, 13310, 13384), (11, 14641, 14715), (11, 15972, 16046), (11, 17303, 17377), (11, 18634, 18708), (11, 19965, 20039), (11, 21296, 21370), (11, 14641, 14715), (13, 13182, 13256), (13, 15379, 15453), (13, 17576, 17650), (13, 19773, 19847), (13, 21970, 22044), (17, 14739, 14813), (17, 19652, 19726), (19, 13718, 13792), (19, 20577, 20651), (23, 11109, 11183), (23, 11638, 11712), (23, 12167, 12241), (23, 12696, 12770), (23, 13225, 13299), (23, 13754, 13828), (23, 14283, 14357), (23, 14812, 14886), (23, 15341, 15415), (23, 15870, 15944), (23, 12167, 12241), (29, 11774, 11848), (29, 12615, 12689), (29, 13456, 13530), (29, 14297, 14371), (29, 15138, 15212), (29, 15979, 16053), (29, 16820, 16894), (29, 17661, 17735), (29, 18502, 18576), (29, 19343, 19417), (29, 20184, 20258), (29, 21025, 21099), (29, 21866, 21940), (31, 11532, 11606), (31, 12493, 12567), (31, 13454, 13528), (31, 14415, 14489), (31, 15376, 15450), (31, 16337, 16411), (31, 17298, 17372), (31, 18259, 18333), (31, 19220, 19294), (31, 20181, 20255), (31, 21142, 21216), (31, 22103, 22177), (37, 12321, 12395), (37, 13690, 13764), (37, 15059, 15133), (37, 16428, 16502), (37, 17797, 17871), (37, 19166, 19240), (37, 20535, 20609), (37, 21904, 21978), (41, 11767, 11841), (41, 13448, 13522), (41, 15129, 15203), (41, 16810, 16884), (41, 18491, 18565), (41, 20172, 20246), (41, 21853, 21927), (43, 11100, 11168), (43, 12943, 13017), (43, 14792, 14866), (43, 16641, 16715), (43, 18490, 18564), (43, 20339, 20413), (43, 22188, 22199), (47, 11100, 11119), (47, 13254, 13328), (47, 15463, 15537), (47, 17672, 17746), (47, 19881, 19955), (47, 22090, 22164), (53, 11236, 11310), (53, 14045, 14119), (53, 16854, 16928), (53, 19663, 19737), (59, 13924, 13998), (59, 17405, 17479), (59, 20886, 20960), (61, 11163, 11237), (61, 14884, 14958), (61, 18605, 18679), (67, 13467, 13541), (67, 17956, 18030), (71, 15123, 15197), (71, 20164, 20238), (73, 15987, 16061), (73, 21316, 21390)]

def row075_layer001_block000 : List ColouredInterval :=
  [(2, 11264, 11338), (2, 11776, 11850), (2, 12288, 12362), (2, 12800, 12874), (2, 13312, 13386), (2, 13824, 13898), (2, 14336, 14410), (2, 14848, 14922), (2, 15360, 15434), (2, 11264, 11338), (2, 12288, 12362), (2, 13312, 13386), (2, 14336, 14410), (2, 15360, 15434)]

def row075_layer001_block001 : List ColouredInterval :=
  [(2, 16384, 16458), (2, 17408, 17482), (2, 18432, 18506), (2, 19456, 19530), (2, 20480, 20554), (2, 21504, 21578), (2, 12288, 12362), (2, 14336, 14410), (2, 16384, 16458), (2, 18432, 18506), (2, 20480, 20554), (2, 12288, 12362), (2, 16384, 16458), (2, 20480, 20554)]

def row075_layer001_block002 : List ColouredInterval :=
  [(2, 16384, 16458), (2, 16384, 16458), (3, 13122, 13196), (3, 15309, 15383), (3, 17496, 17570), (3, 19683, 19757), (3, 21870, 21944), (3, 13122, 13196), (3, 19683, 19757), (3, 19683, 19757), (5, 15625, 15699), (7, 12005, 12079), (7, 14406, 14480), (7, 16807, 16881)]

def row075_layer001_block003 : List ColouredInterval :=
  [(7, 19208, 19282), (7, 21609, 21683), (7, 16807, 16881), (11, 11979, 12053), (11, 13310, 13384), (11, 14641, 14715), (11, 15972, 16046), (11, 17303, 17377), (11, 18634, 18708), (11, 19965, 20039), (11, 21296, 21370), (11, 14641, 14715), (13, 13182, 13256), (13, 15379, 15453)]

def row075_layer001_block004 : List ColouredInterval :=
  [(13, 17576, 17650), (13, 19773, 19847), (13, 21970, 22044), (17, 14739, 14813), (17, 19652, 19726), (19, 13718, 13792), (19, 20577, 20651), (23, 11109, 11183), (23, 11638, 11712), (23, 12167, 12241), (23, 12696, 12770), (23, 13225, 13299), (23, 13754, 13828), (23, 14283, 14357)]

def row075_layer001_block005 : List ColouredInterval :=
  [(23, 14812, 14886), (23, 15341, 15415), (23, 15870, 15944), (23, 12167, 12241), (29, 11774, 11848), (29, 12615, 12689), (29, 13456, 13530), (29, 14297, 14371), (29, 15138, 15212), (29, 15979, 16053), (29, 16820, 16894), (29, 17661, 17735), (29, 18502, 18576), (29, 19343, 19417)]

def row075_layer001_block006 : List ColouredInterval :=
  [(29, 20184, 20258), (29, 21025, 21099), (29, 21866, 21940), (31, 11532, 11606), (31, 12493, 12567), (31, 13454, 13528), (31, 14415, 14489), (31, 15376, 15450), (31, 16337, 16411), (31, 17298, 17372), (31, 18259, 18333), (31, 19220, 19294), (31, 20181, 20255), (31, 21142, 21216)]

def row075_layer001_block007 : List ColouredInterval :=
  [(31, 22103, 22177), (37, 12321, 12395), (37, 13690, 13764), (37, 15059, 15133), (37, 16428, 16502), (37, 17797, 17871), (37, 19166, 19240), (37, 20535, 20609), (37, 21904, 21978), (41, 11767, 11841), (41, 13448, 13522), (41, 15129, 15203), (41, 16810, 16884), (41, 18491, 18565)]

def row075_layer001_block008 : List ColouredInterval :=
  [(41, 20172, 20246), (41, 21853, 21927), (43, 11100, 11168), (43, 12943, 13017), (43, 14792, 14866), (43, 16641, 16715), (43, 18490, 18564), (43, 20339, 20413), (43, 22188, 22199), (47, 11100, 11119), (47, 13254, 13328), (47, 15463, 15537), (47, 17672, 17746), (47, 19881, 19955)]

def row075_layer001_block009 : List ColouredInterval :=
  [(47, 22090, 22164), (53, 11236, 11310), (53, 14045, 14119), (53, 16854, 16928), (53, 19663, 19737), (59, 13924, 13998), (59, 17405, 17479), (59, 20886, 20960), (61, 11163, 11237), (61, 14884, 14958), (61, 18605, 18679), (67, 13467, 13541), (67, 17956, 18030), (71, 15123, 15197)]

def row075_layer001_block010 : List ColouredInterval :=
  [(71, 20164, 20238), (73, 15987, 16061), (73, 21316, 21390)]

def row075_layer001_chunks : List (List ColouredInterval) :=
  [row075_layer001_block000, row075_layer001_block001, row075_layer001_block002, row075_layer001_block003, row075_layer001_block004, row075_layer001_block005, row075_layer001_block006, row075_layer001_block007, row075_layer001_block008, row075_layer001_block009, row075_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_arithmetic : LayerArithmeticValid row075.height { lower := 11100, upper := 22200, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_enumeration :
    activePowerIntervalList 75 30 11100 22200 = row075_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs000 :
    row075_layer001_block000.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs001 :
    row075_layer001_block001.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs002 :
    row075_layer001_block002.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs003 :
    row075_layer001_block003.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs004 :
    row075_layer001_block004.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs005 :
    row075_layer001_block005.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs006 :
    row075_layer001_block006.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs007 :
    row075_layer001_block007.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs008 :
    row075_layer001_block008.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs009 :
    row075_layer001_block009.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_pairs010 :
    row075_layer001_block010.all (fun I => row075_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_chunks_eq : row075_layer001_chunks.flatten = row075_layer001_intervals := by
  rfl

theorem row075_layer001_pairs : pairCoverCheck row075_layer001_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer001_chunks_eq
  intro block hblock
  simp only [row075_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row075_layer001_pairs000
  · exact row075_layer001_pairs001
  · exact row075_layer001_pairs002
  · exact row075_layer001_pairs003
  · exact row075_layer001_pairs004
  · exact row075_layer001_pairs005
  · exact row075_layer001_pairs006
  · exact row075_layer001_pairs007
  · exact row075_layer001_pairs008
  · exact row075_layer001_pairs009
  · exact row075_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer001_checked :
    coverLayerCheck row075.height row075.goods { lower := 11100, upper := 22200, M := 30 } = true := by
  exact coverLayerCheck_of_parts row075_layer001_arithmetic row075_layer001_enumeration row075_bounds_eq row075_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer002_intervals : List ColouredInterval :=
  [(2, 22528, 22602), (2, 23552, 23626), (2, 24576, 24650), (2, 25600, 25674), (2, 26624, 26698), (2, 22528, 22602), (2, 24576, 24650), (2, 26624, 26698), (2, 28672, 28746), (2, 30720, 30794), (2, 32768, 32842), (2, 34816, 34890), (2, 36864, 36938), (2, 38912, 38986), (2, 40960, 41034), (2, 43008, 43082), (2, 24576, 24650), (2, 28672, 28746), (2, 32768, 32842), (2, 36864, 36938), (2, 40960, 41034), (2, 24576, 24650), (2, 32768, 32842), (2, 40960, 41034), (2, 32768, 32842), (2, 32768, 32842), (3, 26244, 26318), (3, 32805, 32879), (3, 39366, 39440), (3, 39366, 39440), (7, 24010, 24084), (7, 26411, 26485), (7, 28812, 28886), (7, 31213, 31287), (7, 33614, 33688), (7, 36015, 36089), (7, 38416, 38490), (7, 40817, 40891), (7, 43218, 43292), (7, 33614, 33688), (11, 22627, 22701), (11, 23958, 24032), (11, 25289, 25363), (11, 26620, 26694), (11, 27951, 28025), (11, 29282, 29356), (11, 30613, 30687), (11, 31944, 32018), (11, 33275, 33349), (11, 34606, 34680), (11, 29282, 29356), (11, 43923, 43997), (13, 24167, 24241), (13, 26364, 26438), (13, 28561, 28635), (13, 30758, 30832), (13, 32955, 33029), (13, 35152, 35226), (13, 37349, 37423), (13, 39546, 39620), (13, 41743, 41817), (13, 43940, 44014), (13, 28561, 28635), (17, 24565, 24639), (17, 29478, 29552), (17, 34391, 34465), (17, 39304, 39378), (17, 44217, 44291), (19, 27436, 27510), (19, 34295, 34369), (19, 41154, 41228), (23, 24334, 24408), (23, 36501, 36575), (29, 24389, 24463), (31, 23064, 23138), (31, 24025, 24099), (31, 24986, 25060), (31, 29791, 29865), (37, 23273, 23347), (37, 24642, 24716), (37, 26011, 26085), (37, 27380, 27454), (37, 28749, 28823), (37, 30118, 30192), (37, 31487, 31561), (37, 32856, 32930), (37, 34225, 34299), (37, 35594, 35668), (41, 23534, 23608), (41, 25215, 25289), (41, 26896, 26970), (41, 28577, 28651), (41, 30258, 30332), (41, 31939, 32013), (41, 33620, 33694), (41, 35301, 35375), (41, 36982, 37056), (41, 38663, 38737), (41, 40344, 40418), (41, 42025, 42099), (41, 43706, 43780), (43, 22200, 22262), (43, 24037, 24111), (43, 25886, 25960), (43, 27735, 27809), (43, 29584, 29658), (43, 31433, 31507), (43, 33282, 33356), (43, 35131, 35205), (43, 36980, 37054), (43, 38829, 38903), (43, 40678, 40752), (43, 42527, 42601), (43, 44376, 44399), (47, 24299, 24373), (47, 26508, 26582), (47, 28717, 28791), (47, 30926, 31000), (47, 33135, 33209), (47, 35344, 35418), (47, 37553, 37627), (47, 39762, 39836), (47, 41971, 42045), (47, 44180, 44254), (53, 22472, 22546), (53, 25281, 25355), (53, 28090, 28164), (53, 30899, 30973), (53, 33708, 33782), (53, 36517, 36591), (53, 39326, 39400), (53, 42135, 42209), (59, 24367, 24441), (59, 27848, 27922), (59, 31329, 31403), (59, 34810, 34884), (59, 38291, 38365), (59, 41772, 41846), (61, 22326, 22400), (61, 26047, 26121), (61, 29768, 29842), (61, 33489, 33563), (61, 37210, 37284), (61, 40931, 41005), (67, 22445, 22519), (67, 26934, 27008), (67, 31423, 31497), (67, 35912, 35986), (67, 40401, 40475), (71, 25205, 25279), (71, 30246, 30320), (71, 35287, 35361), (71, 40328, 40402), (73, 26645, 26719), (73, 31974, 32048), (73, 37303, 37377), (73, 42632, 42706)]

def row075_layer002_block000 : List ColouredInterval :=
  [(2, 22528, 22602), (2, 23552, 23626), (2, 24576, 24650), (2, 25600, 25674), (2, 26624, 26698), (2, 22528, 22602), (2, 24576, 24650), (2, 26624, 26698), (2, 28672, 28746), (2, 30720, 30794), (2, 32768, 32842), (2, 34816, 34890), (2, 36864, 36938)]

def row075_layer002_block001 : List ColouredInterval :=
  [(2, 38912, 38986), (2, 40960, 41034), (2, 43008, 43082), (2, 24576, 24650), (2, 28672, 28746), (2, 32768, 32842), (2, 36864, 36938), (2, 40960, 41034), (2, 24576, 24650), (2, 32768, 32842), (2, 40960, 41034), (2, 32768, 32842), (2, 32768, 32842)]

def row075_layer002_block002 : List ColouredInterval :=
  [(3, 26244, 26318), (3, 32805, 32879), (3, 39366, 39440), (3, 39366, 39440), (7, 24010, 24084), (7, 26411, 26485), (7, 28812, 28886), (7, 31213, 31287), (7, 33614, 33688), (7, 36015, 36089), (7, 38416, 38490), (7, 40817, 40891), (7, 43218, 43292)]

def row075_layer002_block003 : List ColouredInterval :=
  [(7, 33614, 33688), (11, 22627, 22701), (11, 23958, 24032), (11, 25289, 25363), (11, 26620, 26694), (11, 27951, 28025), (11, 29282, 29356), (11, 30613, 30687), (11, 31944, 32018), (11, 33275, 33349), (11, 34606, 34680), (11, 29282, 29356), (11, 43923, 43997)]

def row075_layer002_block004 : List ColouredInterval :=
  [(13, 24167, 24241), (13, 26364, 26438), (13, 28561, 28635), (13, 30758, 30832), (13, 32955, 33029), (13, 35152, 35226), (13, 37349, 37423), (13, 39546, 39620), (13, 41743, 41817), (13, 43940, 44014), (13, 28561, 28635), (17, 24565, 24639), (17, 29478, 29552)]

def row075_layer002_block005 : List ColouredInterval :=
  [(17, 34391, 34465), (17, 39304, 39378), (17, 44217, 44291), (19, 27436, 27510), (19, 34295, 34369), (19, 41154, 41228), (23, 24334, 24408), (23, 36501, 36575), (29, 24389, 24463), (31, 23064, 23138), (31, 24025, 24099), (31, 24986, 25060), (31, 29791, 29865)]

def row075_layer002_block006 : List ColouredInterval :=
  [(37, 23273, 23347), (37, 24642, 24716), (37, 26011, 26085), (37, 27380, 27454), (37, 28749, 28823), (37, 30118, 30192), (37, 31487, 31561), (37, 32856, 32930), (37, 34225, 34299), (37, 35594, 35668), (41, 23534, 23608), (41, 25215, 25289), (41, 26896, 26970)]

def row075_layer002_block007 : List ColouredInterval :=
  [(41, 28577, 28651), (41, 30258, 30332), (41, 31939, 32013), (41, 33620, 33694), (41, 35301, 35375), (41, 36982, 37056), (41, 38663, 38737), (41, 40344, 40418), (41, 42025, 42099), (41, 43706, 43780), (43, 22200, 22262), (43, 24037, 24111), (43, 25886, 25960)]

def row075_layer002_block008 : List ColouredInterval :=
  [(43, 27735, 27809), (43, 29584, 29658), (43, 31433, 31507), (43, 33282, 33356), (43, 35131, 35205), (43, 36980, 37054), (43, 38829, 38903), (43, 40678, 40752), (43, 42527, 42601), (43, 44376, 44399), (47, 24299, 24373), (47, 26508, 26582), (47, 28717, 28791)]

def row075_layer002_block009 : List ColouredInterval :=
  [(47, 30926, 31000), (47, 33135, 33209), (47, 35344, 35418), (47, 37553, 37627), (47, 39762, 39836), (47, 41971, 42045), (47, 44180, 44254), (53, 22472, 22546), (53, 25281, 25355), (53, 28090, 28164), (53, 30899, 30973), (53, 33708, 33782), (53, 36517, 36591)]

def row075_layer002_block010 : List ColouredInterval :=
  [(53, 39326, 39400), (53, 42135, 42209), (59, 24367, 24441), (59, 27848, 27922), (59, 31329, 31403), (59, 34810, 34884), (59, 38291, 38365), (59, 41772, 41846), (61, 22326, 22400), (61, 26047, 26121), (61, 29768, 29842), (61, 33489, 33563), (61, 37210, 37284)]

def row075_layer002_block011 : List ColouredInterval :=
  [(61, 40931, 41005), (67, 22445, 22519), (67, 26934, 27008), (67, 31423, 31497), (67, 35912, 35986), (67, 40401, 40475), (71, 25205, 25279), (71, 30246, 30320), (71, 35287, 35361), (71, 40328, 40402), (73, 26645, 26719), (73, 31974, 32048), (73, 37303, 37377)]

def row075_layer002_block012 : List ColouredInterval :=
  [(73, 42632, 42706)]

def row075_layer002_chunks : List (List ColouredInterval) :=
  [row075_layer002_block000, row075_layer002_block001, row075_layer002_block002, row075_layer002_block003, row075_layer002_block004, row075_layer002_block005, row075_layer002_block006, row075_layer002_block007, row075_layer002_block008, row075_layer002_block009, row075_layer002_block010, row075_layer002_block011, row075_layer002_block012]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_arithmetic : LayerArithmeticValid row075.height { lower := 22200, upper := 44400, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_enumeration :
    activePowerIntervalList 75 26 22200 44400 = row075_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs000 :
    row075_layer002_block000.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs001 :
    row075_layer002_block001.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs002 :
    row075_layer002_block002.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs003 :
    row075_layer002_block003.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs004 :
    row075_layer002_block004.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer002_pairs005 :
    row075_layer002_block005.all (fun I => row075_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer002_pairs005
