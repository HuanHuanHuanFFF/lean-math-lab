import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row073B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs008 :
    row073_layer000_block008.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs009 :
    row073_layer000_block009.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs010 :
    row073_layer000_block010.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_pairs011 :
    row073_layer000_block011.all (fun I => row073_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_chunks_eq : row073_layer000_chunks.flatten = row073_layer000_intervals := by
  rfl

theorem row073_layer000_pairs : pairCoverCheck row073_layer000_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer000_chunks_eq
  intro block hblock
  simp only [row073_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row073_layer000_pairs000
  · exact row073_layer000_pairs001
  · exact row073_layer000_pairs002
  · exact row073_layer000_pairs003
  · exact row073_layer000_pairs004
  · exact row073_layer000_pairs005
  · exact row073_layer000_pairs006
  · exact row073_layer000_pairs007
  · exact row073_layer000_pairs008
  · exact row073_layer000_pairs009
  · exact row073_layer000_pairs010
  · exact row073_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer000_checked :
    coverLayerCheck row073.height row073.goods { lower := 5256, upper := 10512, M := 29 } = true := by
  exact coverLayerCheck_of_parts row073_layer000_arithmetic row073_layer000_enumeration row073_bounds_eq row073_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer001_intervals : List ColouredInterval :=
  [(2, 10752, 10824), (2, 11264, 11336), (2, 11776, 11848), (2, 12288, 12360), (2, 12800, 12872), (2, 11264, 11336), (2, 12288, 12360), (2, 13312, 13384), (2, 14336, 14408), (2, 15360, 15432), (2, 16384, 16456), (2, 17408, 17480), (2, 18432, 18504), (2, 19456, 19528), (2, 20480, 20552), (2, 12288, 12360), (2, 14336, 14408), (2, 16384, 16456), (2, 18432, 18504), (2, 20480, 20552), (2, 12288, 12360), (2, 16384, 16456), (2, 20480, 20552), (2, 16384, 16456), (2, 16384, 16456), (3, 10935, 11007), (3, 11664, 11736), (3, 12393, 12465), (3, 13122, 13194), (3, 13851, 13923), (3, 14580, 14652), (3, 15309, 15381), (3, 16038, 16110), (3, 16767, 16839), (3, 17496, 17568), (3, 18225, 18297), (3, 10935, 11007), (3, 13122, 13194), (3, 15309, 15381), (3, 17496, 17568), (3, 19683, 19755), (3, 13122, 13194), (3, 19683, 19755), (3, 19683, 19755), (5, 10625, 10697), (5, 11250, 11322), (5, 11875, 11947), (5, 12500, 12572), (5, 13125, 13197), (5, 13750, 13822), (5, 14375, 14447), (5, 15000, 15072), (5, 15625, 15697), (5, 12500, 12572), (5, 15625, 15697), (5, 18750, 18822), (5, 15625, 15697), (7, 12005, 12077), (7, 14406, 14478), (7, 16807, 16879), (7, 19208, 19280), (7, 16807, 16879), (11, 10648, 10720), (11, 11979, 12051), (11, 13310, 13382), (11, 14641, 14713), (11, 15972, 16044), (11, 17303, 17375), (11, 18634, 18706), (11, 19965, 20037), (11, 14641, 14713), (13, 10985, 11057), (13, 13182, 13254), (13, 15379, 15451), (13, 17576, 17648), (13, 19773, 19845), (17, 14739, 14811), (17, 19652, 19724), (19, 13718, 13790), (19, 20577, 20649), (23, 10580, 10652), (23, 11109, 11181), (23, 11638, 11710), (23, 12167, 12239), (23, 12696, 12768), (23, 13225, 13297), (23, 12167, 12239), (29, 10933, 11005), (29, 11774, 11846), (29, 12615, 12687), (29, 13456, 13528), (29, 14297, 14369), (29, 15138, 15210), (29, 15979, 16051), (29, 16820, 16892), (29, 17661, 17733), (29, 18502, 18574), (29, 19343, 19415), (29, 20184, 20256), (31, 10571, 10643), (31, 11532, 11604), (31, 12493, 12565), (31, 13454, 13526), (31, 14415, 14487), (31, 15376, 15448), (31, 16337, 16409), (31, 17298, 17370), (31, 18259, 18331), (31, 19220, 19292), (31, 20181, 20253), (37, 10952, 11024), (37, 12321, 12393), (37, 13690, 13762), (37, 15059, 15131), (37, 16428, 16500), (37, 17797, 17869), (37, 19166, 19238), (37, 20535, 20607), (41, 11767, 11839), (41, 13448, 13520), (41, 15129, 15201), (41, 16810, 16882), (41, 18491, 18563), (41, 20172, 20244), (43, 11094, 11166), (43, 12943, 13015), (43, 14792, 14864), (43, 16641, 16713), (43, 18490, 18562), (43, 20339, 20411), (47, 11045, 11117), (47, 13254, 13326), (47, 15463, 15535), (47, 17672, 17744), (47, 19881, 19953), (53, 11236, 11308), (53, 14045, 14117), (53, 16854, 16926), (53, 19663, 19735), (59, 10512, 10515), (59, 13924, 13996), (59, 17405, 17477), (59, 20886, 20958), (61, 11163, 11235), (61, 14884, 14956), (61, 18605, 18677), (67, 13467, 13539), (67, 17956, 18028), (71, 15123, 15195), (71, 20164, 20236)]

def row073_layer001_block000 : List ColouredInterval :=
  [(2, 10752, 10824), (2, 11264, 11336), (2, 11776, 11848), (2, 12288, 12360), (2, 12800, 12872), (2, 11264, 11336), (2, 12288, 12360), (2, 13312, 13384), (2, 14336, 14408), (2, 15360, 15432), (2, 16384, 16456), (2, 17408, 17480), (2, 18432, 18504)]

def row073_layer001_block001 : List ColouredInterval :=
  [(2, 19456, 19528), (2, 20480, 20552), (2, 12288, 12360), (2, 14336, 14408), (2, 16384, 16456), (2, 18432, 18504), (2, 20480, 20552), (2, 12288, 12360), (2, 16384, 16456), (2, 20480, 20552), (2, 16384, 16456), (2, 16384, 16456), (3, 10935, 11007)]

def row073_layer001_block002 : List ColouredInterval :=
  [(3, 11664, 11736), (3, 12393, 12465), (3, 13122, 13194), (3, 13851, 13923), (3, 14580, 14652), (3, 15309, 15381), (3, 16038, 16110), (3, 16767, 16839), (3, 17496, 17568), (3, 18225, 18297), (3, 10935, 11007), (3, 13122, 13194), (3, 15309, 15381)]

def row073_layer001_block003 : List ColouredInterval :=
  [(3, 17496, 17568), (3, 19683, 19755), (3, 13122, 13194), (3, 19683, 19755), (3, 19683, 19755), (5, 10625, 10697), (5, 11250, 11322), (5, 11875, 11947), (5, 12500, 12572), (5, 13125, 13197), (5, 13750, 13822), (5, 14375, 14447), (5, 15000, 15072)]

def row073_layer001_block004 : List ColouredInterval :=
  [(5, 15625, 15697), (5, 12500, 12572), (5, 15625, 15697), (5, 18750, 18822), (5, 15625, 15697), (7, 12005, 12077), (7, 14406, 14478), (7, 16807, 16879), (7, 19208, 19280), (7, 16807, 16879), (11, 10648, 10720), (11, 11979, 12051), (11, 13310, 13382)]

def row073_layer001_block005 : List ColouredInterval :=
  [(11, 14641, 14713), (11, 15972, 16044), (11, 17303, 17375), (11, 18634, 18706), (11, 19965, 20037), (11, 14641, 14713), (13, 10985, 11057), (13, 13182, 13254), (13, 15379, 15451), (13, 17576, 17648), (13, 19773, 19845), (17, 14739, 14811), (17, 19652, 19724)]

def row073_layer001_block006 : List ColouredInterval :=
  [(19, 13718, 13790), (19, 20577, 20649), (23, 10580, 10652), (23, 11109, 11181), (23, 11638, 11710), (23, 12167, 12239), (23, 12696, 12768), (23, 13225, 13297), (23, 12167, 12239), (29, 10933, 11005), (29, 11774, 11846), (29, 12615, 12687), (29, 13456, 13528)]

def row073_layer001_block007 : List ColouredInterval :=
  [(29, 14297, 14369), (29, 15138, 15210), (29, 15979, 16051), (29, 16820, 16892), (29, 17661, 17733), (29, 18502, 18574), (29, 19343, 19415), (29, 20184, 20256), (31, 10571, 10643), (31, 11532, 11604), (31, 12493, 12565), (31, 13454, 13526), (31, 14415, 14487)]

def row073_layer001_block008 : List ColouredInterval :=
  [(31, 15376, 15448), (31, 16337, 16409), (31, 17298, 17370), (31, 18259, 18331), (31, 19220, 19292), (31, 20181, 20253), (37, 10952, 11024), (37, 12321, 12393), (37, 13690, 13762), (37, 15059, 15131), (37, 16428, 16500), (37, 17797, 17869), (37, 19166, 19238)]

def row073_layer001_block009 : List ColouredInterval :=
  [(37, 20535, 20607), (41, 11767, 11839), (41, 13448, 13520), (41, 15129, 15201), (41, 16810, 16882), (41, 18491, 18563), (41, 20172, 20244), (43, 11094, 11166), (43, 12943, 13015), (43, 14792, 14864), (43, 16641, 16713), (43, 18490, 18562), (43, 20339, 20411)]

def row073_layer001_block010 : List ColouredInterval :=
  [(47, 11045, 11117), (47, 13254, 13326), (47, 15463, 15535), (47, 17672, 17744), (47, 19881, 19953), (53, 11236, 11308), (53, 14045, 14117), (53, 16854, 16926), (53, 19663, 19735), (59, 10512, 10515), (59, 13924, 13996), (59, 17405, 17477), (59, 20886, 20958)]

def row073_layer001_block011 : List ColouredInterval :=
  [(61, 11163, 11235), (61, 14884, 14956), (61, 18605, 18677), (67, 13467, 13539), (67, 17956, 18028), (71, 15123, 15195), (71, 20164, 20236)]

def row073_layer001_chunks : List (List ColouredInterval) :=
  [row073_layer001_block000, row073_layer001_block001, row073_layer001_block002, row073_layer001_block003, row073_layer001_block004, row073_layer001_block005, row073_layer001_block006, row073_layer001_block007, row073_layer001_block008, row073_layer001_block009, row073_layer001_block010, row073_layer001_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_arithmetic : LayerArithmeticValid row073.height { lower := 10512, upper := 21024, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_enumeration :
    activePowerIntervalList 73 25 10512 21024 = row073_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs000 :
    row073_layer001_block000.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs001 :
    row073_layer001_block001.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs002 :
    row073_layer001_block002.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs003 :
    row073_layer001_block003.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs004 :
    row073_layer001_block004.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs005 :
    row073_layer001_block005.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs006 :
    row073_layer001_block006.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs007 :
    row073_layer001_block007.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs008 :
    row073_layer001_block008.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs009 :
    row073_layer001_block009.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs010 :
    row073_layer001_block010.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_pairs011 :
    row073_layer001_block011.all (fun I => row073_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_chunks_eq : row073_layer001_chunks.flatten = row073_layer001_intervals := by
  rfl

theorem row073_layer001_pairs : pairCoverCheck row073_layer001_intervals row073_bounds = true := by
  apply pairCoverCheck_of_chunks row073_layer001_chunks_eq
  intro block hblock
  simp only [row073_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row073_layer001_pairs000
  · exact row073_layer001_pairs001
  · exact row073_layer001_pairs002
  · exact row073_layer001_pairs003
  · exact row073_layer001_pairs004
  · exact row073_layer001_pairs005
  · exact row073_layer001_pairs006
  · exact row073_layer001_pairs007
  · exact row073_layer001_pairs008
  · exact row073_layer001_pairs009
  · exact row073_layer001_pairs010
  · exact row073_layer001_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer001_checked :
    coverLayerCheck row073.height row073.goods { lower := 10512, upper := 21024, M := 25 } = true := by
  exact coverLayerCheck_of_parts row073_layer001_arithmetic row073_layer001_enumeration row073_bounds_eq row073_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row073_layer002_intervals : List ColouredInterval :=
  [(2, 21504, 21576), (2, 22528, 22600), (2, 22528, 22600), (2, 24576, 24648), (2, 26624, 26696), (2, 28672, 28744), (2, 30720, 30792), (2, 32768, 32840), (2, 34816, 34888), (2, 36864, 36936), (2, 38912, 38984), (2, 40960, 41032), (2, 24576, 24648), (2, 28672, 28744), (2, 32768, 32840), (2, 36864, 36936), (2, 40960, 41032), (2, 24576, 24648), (2, 32768, 32840), (2, 40960, 41032), (2, 32768, 32840), (2, 32768, 32840), (3, 21870, 21942), (3, 24057, 24129), (3, 26244, 26316), (3, 28431, 28503), (3, 30618, 30690), (3, 32805, 32877), (3, 34992, 35064), (3, 37179, 37251), (3, 39366, 39438), (3, 41553, 41625), (3, 26244, 26316), (3, 32805, 32877), (3, 39366, 39438), (3, 39366, 39438), (5, 21875, 21947), (5, 25000, 25072), (5, 28125, 28197), (5, 31250, 31322), (5, 34375, 34447), (5, 37500, 37572), (5, 40625, 40697), (5, 31250, 31322), (7, 21609, 21681), (7, 24010, 24082), (7, 26411, 26483), (7, 28812, 28884), (7, 31213, 31285), (7, 33614, 33686), (7, 36015, 36087), (7, 38416, 38488), (7, 40817, 40889), (7, 33614, 33686), (11, 21296, 21368), (11, 22627, 22699), (11, 23958, 24030), (11, 25289, 25361), (11, 26620, 26692), (11, 27951, 28023), (11, 29282, 29354), (11, 29282, 29354), (13, 21970, 22042), (13, 24167, 24239), (13, 26364, 26436), (13, 28561, 28633), (13, 30758, 30830), (13, 32955, 33027), (13, 35152, 35224), (13, 37349, 37421), (13, 39546, 39618), (13, 41743, 41815), (13, 28561, 28633), (17, 24565, 24637), (17, 29478, 29550), (17, 34391, 34463), (17, 39304, 39376), (19, 27436, 27508), (19, 34295, 34367), (19, 41154, 41226), (23, 24334, 24406), (23, 36501, 36573), (29, 24389, 24461), (31, 21142, 21214), (31, 29791, 29863), (37, 21904, 21976), (37, 23273, 23345), (37, 24642, 24714), (37, 26011, 26083), (37, 27380, 27452), (37, 28749, 28821), (37, 30118, 30190), (41, 21853, 21925), (41, 23534, 23606), (41, 25215, 25287), (41, 26896, 26968), (41, 28577, 28649), (41, 30258, 30330), (41, 31939, 32011), (41, 33620, 33692), (41, 35301, 35373), (41, 36982, 37054), (43, 22188, 22260), (43, 24037, 24109), (43, 25886, 25958), (43, 27735, 27807), (43, 29584, 29656), (43, 31433, 31505), (43, 33282, 33354), (43, 35131, 35203), (43, 36980, 37052), (43, 38829, 38901), (43, 40678, 40750), (47, 22090, 22162), (47, 24299, 24371), (47, 26508, 26580), (47, 28717, 28789), (47, 30926, 30998), (47, 33135, 33207), (47, 35344, 35416), (47, 37553, 37625), (47, 39762, 39834), (47, 41971, 42043), (53, 22472, 22544), (53, 25281, 25353), (53, 28090, 28162), (53, 30899, 30971), (53, 33708, 33780), (53, 36517, 36589), (53, 39326, 39398), (59, 24367, 24439), (59, 27848, 27920), (59, 31329, 31401), (59, 34810, 34882), (59, 38291, 38363), (59, 41772, 41844), (61, 22326, 22398), (61, 26047, 26119), (61, 29768, 29840), (61, 33489, 33561), (61, 37210, 37282), (61, 40931, 41003), (67, 22445, 22517), (67, 26934, 27006), (67, 31423, 31495), (67, 35912, 35984), (67, 40401, 40473), (71, 25205, 25277), (71, 30246, 30318), (71, 35287, 35359), (71, 40328, 40400)]

def row073_layer002_block000 : List ColouredInterval :=
  [(2, 21504, 21576), (2, 22528, 22600), (2, 22528, 22600), (2, 24576, 24648), (2, 26624, 26696), (2, 28672, 28744), (2, 30720, 30792), (2, 32768, 32840), (2, 34816, 34888), (2, 36864, 36936), (2, 38912, 38984), (2, 40960, 41032), (2, 24576, 24648)]

def row073_layer002_block001 : List ColouredInterval :=
  [(2, 28672, 28744), (2, 32768, 32840), (2, 36864, 36936), (2, 40960, 41032), (2, 24576, 24648), (2, 32768, 32840), (2, 40960, 41032), (2, 32768, 32840), (2, 32768, 32840), (3, 21870, 21942), (3, 24057, 24129), (3, 26244, 26316), (3, 28431, 28503)]

def row073_layer002_block002 : List ColouredInterval :=
  [(3, 30618, 30690), (3, 32805, 32877), (3, 34992, 35064), (3, 37179, 37251), (3, 39366, 39438), (3, 41553, 41625), (3, 26244, 26316), (3, 32805, 32877), (3, 39366, 39438), (3, 39366, 39438), (5, 21875, 21947), (5, 25000, 25072), (5, 28125, 28197)]

def row073_layer002_block003 : List ColouredInterval :=
  [(5, 31250, 31322), (5, 34375, 34447), (5, 37500, 37572), (5, 40625, 40697), (5, 31250, 31322), (7, 21609, 21681), (7, 24010, 24082), (7, 26411, 26483), (7, 28812, 28884), (7, 31213, 31285), (7, 33614, 33686), (7, 36015, 36087), (7, 38416, 38488)]

def row073_layer002_block004 : List ColouredInterval :=
  [(7, 40817, 40889), (7, 33614, 33686), (11, 21296, 21368), (11, 22627, 22699), (11, 23958, 24030), (11, 25289, 25361), (11, 26620, 26692), (11, 27951, 28023), (11, 29282, 29354), (11, 29282, 29354), (13, 21970, 22042), (13, 24167, 24239), (13, 26364, 26436)]

def row073_layer002_block005 : List ColouredInterval :=
  [(13, 28561, 28633), (13, 30758, 30830), (13, 32955, 33027), (13, 35152, 35224), (13, 37349, 37421), (13, 39546, 39618), (13, 41743, 41815), (13, 28561, 28633), (17, 24565, 24637), (17, 29478, 29550), (17, 34391, 34463), (17, 39304, 39376), (19, 27436, 27508)]

def row073_layer002_block006 : List ColouredInterval :=
  [(19, 34295, 34367), (19, 41154, 41226), (23, 24334, 24406), (23, 36501, 36573), (29, 24389, 24461), (31, 21142, 21214), (31, 29791, 29863), (37, 21904, 21976), (37, 23273, 23345), (37, 24642, 24714), (37, 26011, 26083), (37, 27380, 27452), (37, 28749, 28821)]

def row073_layer002_block007 : List ColouredInterval :=
  [(37, 30118, 30190), (41, 21853, 21925), (41, 23534, 23606), (41, 25215, 25287), (41, 26896, 26968), (41, 28577, 28649), (41, 30258, 30330), (41, 31939, 32011), (41, 33620, 33692), (41, 35301, 35373), (41, 36982, 37054), (43, 22188, 22260), (43, 24037, 24109)]

def row073_layer002_block008 : List ColouredInterval :=
  [(43, 25886, 25958), (43, 27735, 27807), (43, 29584, 29656), (43, 31433, 31505), (43, 33282, 33354), (43, 35131, 35203), (43, 36980, 37052), (43, 38829, 38901), (43, 40678, 40750), (47, 22090, 22162), (47, 24299, 24371), (47, 26508, 26580), (47, 28717, 28789)]

def row073_layer002_block009 : List ColouredInterval :=
  [(47, 30926, 30998), (47, 33135, 33207), (47, 35344, 35416), (47, 37553, 37625), (47, 39762, 39834), (47, 41971, 42043), (53, 22472, 22544), (53, 25281, 25353), (53, 28090, 28162), (53, 30899, 30971), (53, 33708, 33780), (53, 36517, 36589), (53, 39326, 39398)]

def row073_layer002_block010 : List ColouredInterval :=
  [(59, 24367, 24439), (59, 27848, 27920), (59, 31329, 31401), (59, 34810, 34882), (59, 38291, 38363), (59, 41772, 41844), (61, 22326, 22398), (61, 26047, 26119), (61, 29768, 29840), (61, 33489, 33561), (61, 37210, 37282), (61, 40931, 41003), (67, 22445, 22517)]

def row073_layer002_block011 : List ColouredInterval :=
  [(67, 26934, 27006), (67, 31423, 31495), (67, 35912, 35984), (67, 40401, 40473), (71, 25205, 25277), (71, 30246, 30318), (71, 35287, 35359), (71, 40328, 40400)]

def row073_layer002_chunks : List (List ColouredInterval) :=
  [row073_layer002_block000, row073_layer002_block001, row073_layer002_block002, row073_layer002_block003, row073_layer002_block004, row073_layer002_block005, row073_layer002_block006, row073_layer002_block007, row073_layer002_block008, row073_layer002_block009, row073_layer002_block010, row073_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_arithmetic : LayerArithmeticValid row073.height { lower := 21024, upper := 42048, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_enumeration :
    activePowerIntervalList 73 22 21024 42048 = row073_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs000 :
    row073_layer002_block000.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs001 :
    row073_layer002_block001.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs002 :
    row073_layer002_block002.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs003 :
    row073_layer002_block003.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs004 :
    row073_layer002_block004.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row073_layer002_pairs005 :
    row073_layer002_block005.all (fun I => row073_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row073_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row073_layer002_pairs005
