import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row076B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_pairs007 :
    row076_layer000_block007.all (fun I => row076_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_chunks_eq : row076_layer000_chunks.flatten = row076_layer000_intervals := by
  rfl

theorem row076_layer000_pairs : pairCoverCheck row076_layer000_intervals row076_bounds = true := by
  apply pairCoverCheck_of_chunks row076_layer000_chunks_eq
  intro block hblock
  simp only [row076_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row076_layer000_pairs000
  · exact row076_layer000_pairs001
  · exact row076_layer000_pairs002
  · exact row076_layer000_pairs003
  · exact row076_layer000_pairs004
  · exact row076_layer000_pairs005
  · exact row076_layer000_pairs006
  · exact row076_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer000_checked :
    coverLayerCheck row076.height row076.goods { lower := 5700, upper := 11400, M := 32 } = true := by
  exact coverLayerCheck_of_parts row076_layer000_arithmetic row076_layer000_enumeration row076_bounds_eq row076_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row076_layer001_intervals : List ColouredInterval :=
  [(2, 12288, 12363), (2, 14336, 14411), (2, 12288, 12363), (2, 16384, 16459), (2, 20480, 20555), (2, 16384, 16459), (2, 16384, 16459), (3, 11664, 11739), (3, 12393, 12468), (3, 13122, 13197), (3, 13851, 13926), (3, 14580, 14655), (3, 15309, 15384), (3, 16038, 16113), (3, 16767, 16842), (3, 17496, 17571), (3, 18225, 18300), (3, 18954, 19029), (3, 19683, 19758), (3, 20412, 20487), (3, 13122, 13197), (3, 15309, 15384), (3, 17496, 17571), (3, 19683, 19758), (3, 21870, 21945), (3, 13122, 13197), (3, 19683, 19758), (3, 19683, 19758), (5, 11875, 11950), (5, 12500, 12575), (5, 13125, 13200), (5, 13750, 13825), (5, 14375, 14450), (5, 15000, 15075), (5, 15625, 15700), (5, 16250, 16325), (5, 16875, 16950), (5, 17500, 17575), (5, 12500, 12575), (5, 15625, 15700), (5, 18750, 18825), (5, 21875, 21950), (5, 15625, 15700), (7, 12005, 12080), (7, 14406, 14481), (7, 16807, 16882), (7, 19208, 19283), (7, 21609, 21684), (7, 16807, 16882), (11, 11979, 12054), (11, 13310, 13385), (11, 14641, 14716), (11, 15972, 16047), (11, 17303, 17378), (11, 18634, 18709), (11, 19965, 20040), (11, 21296, 21371), (11, 22627, 22702), (11, 14641, 14716), (13, 13182, 13257), (13, 15379, 15454), (13, 17576, 17651), (13, 19773, 19848), (13, 21970, 22045), (17, 14739, 14814), (17, 19652, 19727), (23, 11638, 11713), (23, 12167, 12242), (23, 12696, 12771), (23, 13225, 13300), (23, 13754, 13829), (23, 14283, 14358), (23, 14812, 14887), (23, 12167, 12242), (29, 11774, 11849), (29, 12615, 12690), (29, 13456, 13531), (29, 14297, 14372), (29, 15138, 15213), (29, 15979, 16054), (29, 16820, 16895), (29, 17661, 17736), (29, 18502, 18577), (29, 19343, 19418), (29, 20184, 20259), (29, 21025, 21100), (29, 21866, 21941), (29, 22707, 22782), (31, 11532, 11607), (31, 12493, 12568), (31, 13454, 13529), (31, 14415, 14490), (31, 15376, 15451), (31, 16337, 16412), (31, 17298, 17373), (31, 18259, 18334), (31, 19220, 19295), (31, 20181, 20256), (31, 21142, 21217), (31, 22103, 22178), (37, 12321, 12396), (37, 13690, 13765), (37, 15059, 15134), (37, 16428, 16503), (37, 17797, 17872), (37, 19166, 19241), (37, 20535, 20610), (37, 21904, 21979), (41, 11767, 11842), (41, 13448, 13523), (41, 15129, 15204), (41, 16810, 16885), (41, 18491, 18566), (41, 20172, 20247), (41, 21853, 21928), (43, 12943, 13018), (43, 14792, 14867), (43, 16641, 16716), (43, 18490, 18565), (43, 20339, 20414), (43, 22188, 22263), (47, 13254, 13329), (47, 15463, 15538), (47, 17672, 17747), (47, 19881, 19956), (47, 22090, 22165), (53, 14045, 14120), (53, 16854, 16929), (53, 19663, 19738), (53, 22472, 22547), (59, 13924, 13999), (59, 17405, 17480), (59, 20886, 20961), (61, 14884, 14959), (61, 18605, 18680), (61, 22326, 22401), (67, 13467, 13542), (67, 17956, 18031), (67, 22445, 22520), (71, 15123, 15198), (71, 20164, 20239), (73, 15987, 16062), (73, 21316, 21391)]

def row076_layer001_block000 : List ColouredInterval :=
  [(2, 12288, 12363), (2, 14336, 14411), (2, 12288, 12363), (2, 16384, 16459), (2, 20480, 20555), (2, 16384, 16459), (2, 16384, 16459), (3, 11664, 11739), (3, 12393, 12468), (3, 13122, 13197), (3, 13851, 13926), (3, 14580, 14655), (3, 15309, 15384), (3, 16038, 16113)]

def row076_layer001_block001 : List ColouredInterval :=
  [(3, 16767, 16842), (3, 17496, 17571), (3, 18225, 18300), (3, 18954, 19029), (3, 19683, 19758), (3, 20412, 20487), (3, 13122, 13197), (3, 15309, 15384), (3, 17496, 17571), (3, 19683, 19758), (3, 21870, 21945), (3, 13122, 13197), (3, 19683, 19758), (3, 19683, 19758)]

def row076_layer001_block002 : List ColouredInterval :=
  [(5, 11875, 11950), (5, 12500, 12575), (5, 13125, 13200), (5, 13750, 13825), (5, 14375, 14450), (5, 15000, 15075), (5, 15625, 15700), (5, 16250, 16325), (5, 16875, 16950), (5, 17500, 17575), (5, 12500, 12575), (5, 15625, 15700), (5, 18750, 18825), (5, 21875, 21950)]

def row076_layer001_block003 : List ColouredInterval :=
  [(5, 15625, 15700), (7, 12005, 12080), (7, 14406, 14481), (7, 16807, 16882), (7, 19208, 19283), (7, 21609, 21684), (7, 16807, 16882), (11, 11979, 12054), (11, 13310, 13385), (11, 14641, 14716), (11, 15972, 16047), (11, 17303, 17378), (11, 18634, 18709), (11, 19965, 20040)]

def row076_layer001_block004 : List ColouredInterval :=
  [(11, 21296, 21371), (11, 22627, 22702), (11, 14641, 14716), (13, 13182, 13257), (13, 15379, 15454), (13, 17576, 17651), (13, 19773, 19848), (13, 21970, 22045), (17, 14739, 14814), (17, 19652, 19727), (23, 11638, 11713), (23, 12167, 12242), (23, 12696, 12771), (23, 13225, 13300)]

def row076_layer001_block005 : List ColouredInterval :=
  [(23, 13754, 13829), (23, 14283, 14358), (23, 14812, 14887), (23, 12167, 12242), (29, 11774, 11849), (29, 12615, 12690), (29, 13456, 13531), (29, 14297, 14372), (29, 15138, 15213), (29, 15979, 16054), (29, 16820, 16895), (29, 17661, 17736), (29, 18502, 18577), (29, 19343, 19418)]

def row076_layer001_block006 : List ColouredInterval :=
  [(29, 20184, 20259), (29, 21025, 21100), (29, 21866, 21941), (29, 22707, 22782), (31, 11532, 11607), (31, 12493, 12568), (31, 13454, 13529), (31, 14415, 14490), (31, 15376, 15451), (31, 16337, 16412), (31, 17298, 17373), (31, 18259, 18334), (31, 19220, 19295), (31, 20181, 20256)]

def row076_layer001_block007 : List ColouredInterval :=
  [(31, 21142, 21217), (31, 22103, 22178), (37, 12321, 12396), (37, 13690, 13765), (37, 15059, 15134), (37, 16428, 16503), (37, 17797, 17872), (37, 19166, 19241), (37, 20535, 20610), (37, 21904, 21979), (41, 11767, 11842), (41, 13448, 13523), (41, 15129, 15204), (41, 16810, 16885)]

def row076_layer001_block008 : List ColouredInterval :=
  [(41, 18491, 18566), (41, 20172, 20247), (41, 21853, 21928), (43, 12943, 13018), (43, 14792, 14867), (43, 16641, 16716), (43, 18490, 18565), (43, 20339, 20414), (43, 22188, 22263), (47, 13254, 13329), (47, 15463, 15538), (47, 17672, 17747), (47, 19881, 19956), (47, 22090, 22165)]

def row076_layer001_block009 : List ColouredInterval :=
  [(53, 14045, 14120), (53, 16854, 16929), (53, 19663, 19738), (53, 22472, 22547), (59, 13924, 13999), (59, 17405, 17480), (59, 20886, 20961), (61, 14884, 14959), (61, 18605, 18680), (61, 22326, 22401), (67, 13467, 13542), (67, 17956, 18031), (67, 22445, 22520), (71, 15123, 15198)]

def row076_layer001_block010 : List ColouredInterval :=
  [(71, 20164, 20239), (73, 15987, 16062), (73, 21316, 21391)]

def row076_layer001_chunks : List (List ColouredInterval) :=
  [row076_layer001_block000, row076_layer001_block001, row076_layer001_block002, row076_layer001_block003, row076_layer001_block004, row076_layer001_block005, row076_layer001_block006, row076_layer001_block007, row076_layer001_block008, row076_layer001_block009, row076_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_arithmetic : LayerArithmeticValid row076.height { lower := 11400, upper := 22800, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_enumeration :
    activePowerIntervalList 76 28 11400 22800 = row076_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs000 :
    row076_layer001_block000.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs001 :
    row076_layer001_block001.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs002 :
    row076_layer001_block002.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs003 :
    row076_layer001_block003.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs004 :
    row076_layer001_block004.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs005 :
    row076_layer001_block005.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs006 :
    row076_layer001_block006.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs007 :
    row076_layer001_block007.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs008 :
    row076_layer001_block008.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row076_layer001_pairs009 :
    row076_layer001_block009.all (fun I => row076_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row076_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row076_layer001_pairs009
