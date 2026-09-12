import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row074B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs005 :
    row074_layer000_block005.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs006 :
    row074_layer000_block006.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs007 :
    row074_layer000_block007.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs008 :
    row074_layer000_block008.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs009 :
    row074_layer000_block009.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs010 :
    row074_layer000_block010.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_pairs011 :
    row074_layer000_block011.all (fun I => row074_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_chunks_eq : row074_layer000_chunks.flatten = row074_layer000_intervals := by
  rfl

theorem row074_layer000_pairs : pairCoverCheck row074_layer000_intervals row074_bounds = true := by
  apply pairCoverCheck_of_chunks row074_layer000_chunks_eq
  intro block hblock
  simp only [row074_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row074_layer000_pairs000
  · exact row074_layer000_pairs001
  · exact row074_layer000_pairs002
  · exact row074_layer000_pairs003
  · exact row074_layer000_pairs004
  · exact row074_layer000_pairs005
  · exact row074_layer000_pairs006
  · exact row074_layer000_pairs007
  · exact row074_layer000_pairs008
  · exact row074_layer000_pairs009
  · exact row074_layer000_pairs010
  · exact row074_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer000_checked :
    coverLayerCheck row074.height row074.goods { lower := 5402, upper := 10804, M := 35 } = true := by
  exact coverLayerCheck_of_parts row074_layer000_arithmetic row074_layer000_enumeration row074_bounds_eq row074_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_layer001_intervals : List ColouredInterval :=
  [(2, 11264, 11337), (2, 12288, 12361), (2, 13312, 13385), (2, 14336, 14409), (2, 15360, 15433), (2, 12288, 12361), (2, 14336, 14409), (2, 16384, 16457), (2, 18432, 18505), (2, 20480, 20553), (2, 12288, 12361), (2, 16384, 16457), (2, 20480, 20553), (2, 16384, 16457), (2, 16384, 16457), (3, 10935, 11008), (3, 11664, 11737), (3, 12393, 12466), (3, 13122, 13195), (3, 13851, 13924), (3, 14580, 14653), (3, 15309, 15382), (3, 16038, 16111), (3, 16767, 16840), (3, 17496, 17569), (3, 18225, 18298), (3, 18954, 19027), (3, 19683, 19756), (3, 20412, 20485), (3, 21141, 21214), (3, 10935, 11008), (3, 13122, 13195), (3, 15309, 15382), (3, 17496, 17569), (3, 19683, 19756), (3, 13122, 13195), (3, 19683, 19756), (3, 19683, 19756), (5, 11250, 11323), (5, 11875, 11948), (5, 12500, 12573), (5, 13125, 13198), (5, 13750, 13823), (5, 14375, 14448), (5, 15000, 15073), (5, 15625, 15698), (5, 16250, 16323), (5, 16875, 16948), (5, 17500, 17573), (5, 18125, 18198), (5, 18750, 18823), (5, 19375, 19448), (5, 12500, 12573), (5, 15625, 15698), (5, 18750, 18823), (5, 15625, 15698), (7, 12005, 12078), (7, 14406, 14479), (7, 16807, 16880), (7, 19208, 19281), (7, 16807, 16880), (11, 11979, 12052), (11, 13310, 13383), (11, 14641, 14714), (11, 15972, 16045), (11, 17303, 17376), (11, 18634, 18707), (11, 19965, 20038), (11, 21296, 21369), (11, 14641, 14714), (13, 10985, 11058), (13, 13182, 13255), (13, 15379, 15452), (13, 17576, 17649), (13, 19773, 19846), (17, 14739, 14812), (17, 19652, 19725), (19, 10830, 10903), (19, 11191, 11264), (19, 13718, 13791), (19, 20577, 20650), (23, 11109, 11182), (23, 11638, 11711), (23, 12167, 12240), (23, 12696, 12769), (23, 13225, 13298), (23, 13754, 13827), (23, 14283, 14356), (23, 14812, 14885), (23, 15341, 15414), (23, 15870, 15943), (23, 16399, 16472), (23, 12167, 12240), (29, 10933, 11006), (29, 11774, 11847), (29, 12615, 12688), (29, 13456, 13529), (29, 14297, 14370), (29, 15138, 15211), (29, 15979, 16052), (29, 16820, 16893), (29, 17661, 17734), (29, 18502, 18575), (29, 19343, 19416), (29, 20184, 20257), (29, 21025, 21098), (31, 11532, 11605), (31, 12493, 12566), (31, 13454, 13527), (31, 14415, 14488), (31, 15376, 15449), (31, 16337, 16410), (31, 17298, 17371), (31, 18259, 18332), (31, 19220, 19293), (31, 20181, 20254), (31, 21142, 21215), (41, 11767, 11840), (41, 13448, 13521), (41, 15129, 15202), (41, 16810, 16883), (41, 18491, 18564), (41, 20172, 20245), (43, 11094, 11167), (43, 12943, 13016), (43, 14792, 14865), (43, 16641, 16714), (43, 18490, 18563), (43, 20339, 20412), (47, 11045, 11118), (47, 13254, 13327), (47, 15463, 15536), (47, 17672, 17745), (47, 19881, 19954), (53, 11236, 11309), (53, 14045, 14118), (53, 16854, 16927), (53, 19663, 19736), (59, 13924, 13997), (59, 17405, 17478), (59, 20886, 20959), (61, 11163, 11236), (61, 14884, 14957), (61, 18605, 18678), (67, 13467, 13540), (67, 17956, 18029), (71, 15123, 15196), (71, 20164, 20237), (73, 15987, 16060), (73, 21316, 21389)]

def row074_layer001_block000 : List ColouredInterval :=
  [(2, 11264, 11337), (2, 12288, 12361), (2, 13312, 13385), (2, 14336, 14409), (2, 15360, 15433), (2, 12288, 12361), (2, 14336, 14409), (2, 16384, 16457), (2, 18432, 18505), (2, 20480, 20553), (2, 12288, 12361), (2, 16384, 16457), (2, 20480, 20553)]

def row074_layer001_block001 : List ColouredInterval :=
  [(2, 16384, 16457), (2, 16384, 16457), (3, 10935, 11008), (3, 11664, 11737), (3, 12393, 12466), (3, 13122, 13195), (3, 13851, 13924), (3, 14580, 14653), (3, 15309, 15382), (3, 16038, 16111), (3, 16767, 16840), (3, 17496, 17569), (3, 18225, 18298)]

def row074_layer001_block002 : List ColouredInterval :=
  [(3, 18954, 19027), (3, 19683, 19756), (3, 20412, 20485), (3, 21141, 21214), (3, 10935, 11008), (3, 13122, 13195), (3, 15309, 15382), (3, 17496, 17569), (3, 19683, 19756), (3, 13122, 13195), (3, 19683, 19756), (3, 19683, 19756), (5, 11250, 11323)]

def row074_layer001_block003 : List ColouredInterval :=
  [(5, 11875, 11948), (5, 12500, 12573), (5, 13125, 13198), (5, 13750, 13823), (5, 14375, 14448), (5, 15000, 15073), (5, 15625, 15698), (5, 16250, 16323), (5, 16875, 16948), (5, 17500, 17573), (5, 18125, 18198), (5, 18750, 18823), (5, 19375, 19448)]

def row074_layer001_block004 : List ColouredInterval :=
  [(5, 12500, 12573), (5, 15625, 15698), (5, 18750, 18823), (5, 15625, 15698), (7, 12005, 12078), (7, 14406, 14479), (7, 16807, 16880), (7, 19208, 19281), (7, 16807, 16880), (11, 11979, 12052), (11, 13310, 13383), (11, 14641, 14714), (11, 15972, 16045)]

def row074_layer001_block005 : List ColouredInterval :=
  [(11, 17303, 17376), (11, 18634, 18707), (11, 19965, 20038), (11, 21296, 21369), (11, 14641, 14714), (13, 10985, 11058), (13, 13182, 13255), (13, 15379, 15452), (13, 17576, 17649), (13, 19773, 19846), (17, 14739, 14812), (17, 19652, 19725), (19, 10830, 10903)]

def row074_layer001_block006 : List ColouredInterval :=
  [(19, 11191, 11264), (19, 13718, 13791), (19, 20577, 20650), (23, 11109, 11182), (23, 11638, 11711), (23, 12167, 12240), (23, 12696, 12769), (23, 13225, 13298), (23, 13754, 13827), (23, 14283, 14356), (23, 14812, 14885), (23, 15341, 15414), (23, 15870, 15943)]

def row074_layer001_block007 : List ColouredInterval :=
  [(23, 16399, 16472), (23, 12167, 12240), (29, 10933, 11006), (29, 11774, 11847), (29, 12615, 12688), (29, 13456, 13529), (29, 14297, 14370), (29, 15138, 15211), (29, 15979, 16052), (29, 16820, 16893), (29, 17661, 17734), (29, 18502, 18575), (29, 19343, 19416)]

def row074_layer001_block008 : List ColouredInterval :=
  [(29, 20184, 20257), (29, 21025, 21098), (31, 11532, 11605), (31, 12493, 12566), (31, 13454, 13527), (31, 14415, 14488), (31, 15376, 15449), (31, 16337, 16410), (31, 17298, 17371), (31, 18259, 18332), (31, 19220, 19293), (31, 20181, 20254), (31, 21142, 21215)]

def row074_layer001_block009 : List ColouredInterval :=
  [(41, 11767, 11840), (41, 13448, 13521), (41, 15129, 15202), (41, 16810, 16883), (41, 18491, 18564), (41, 20172, 20245), (43, 11094, 11167), (43, 12943, 13016), (43, 14792, 14865), (43, 16641, 16714), (43, 18490, 18563), (43, 20339, 20412), (47, 11045, 11118)]

def row074_layer001_block010 : List ColouredInterval :=
  [(47, 13254, 13327), (47, 15463, 15536), (47, 17672, 17745), (47, 19881, 19954), (53, 11236, 11309), (53, 14045, 14118), (53, 16854, 16927), (53, 19663, 19736), (59, 13924, 13997), (59, 17405, 17478), (59, 20886, 20959), (61, 11163, 11236), (61, 14884, 14957)]

def row074_layer001_block011 : List ColouredInterval :=
  [(61, 18605, 18678), (67, 13467, 13540), (67, 17956, 18029), (71, 15123, 15196), (71, 20164, 20237), (73, 15987, 16060), (73, 21316, 21389)]

def row074_layer001_chunks : List (List ColouredInterval) :=
  [row074_layer001_block000, row074_layer001_block001, row074_layer001_block002, row074_layer001_block003, row074_layer001_block004, row074_layer001_block005, row074_layer001_block006, row074_layer001_block007, row074_layer001_block008, row074_layer001_block009, row074_layer001_block010, row074_layer001_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_arithmetic : LayerArithmeticValid row074.height { lower := 10804, upper := 21608, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_enumeration :
    activePowerIntervalList 74 31 10804 21608 = row074_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs000 :
    row074_layer001_block000.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs001 :
    row074_layer001_block001.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs002 :
    row074_layer001_block002.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs003 :
    row074_layer001_block003.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs004 :
    row074_layer001_block004.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs005 :
    row074_layer001_block005.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs006 :
    row074_layer001_block006.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs007 :
    row074_layer001_block007.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs008 :
    row074_layer001_block008.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs009 :
    row074_layer001_block009.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs010 :
    row074_layer001_block010.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_pairs011 :
    row074_layer001_block011.all (fun I => row074_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_chunks_eq : row074_layer001_chunks.flatten = row074_layer001_intervals := by
  rfl

theorem row074_layer001_pairs : pairCoverCheck row074_layer001_intervals row074_bounds = true := by
  apply pairCoverCheck_of_chunks row074_layer001_chunks_eq
  intro block hblock
  simp only [row074_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row074_layer001_pairs000
  · exact row074_layer001_pairs001
  · exact row074_layer001_pairs002
  · exact row074_layer001_pairs003
  · exact row074_layer001_pairs004
  · exact row074_layer001_pairs005
  · exact row074_layer001_pairs006
  · exact row074_layer001_pairs007
  · exact row074_layer001_pairs008
  · exact row074_layer001_pairs009
  · exact row074_layer001_pairs010
  · exact row074_layer001_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer001_checked :
    coverLayerCheck row074.height row074.goods { lower := 10804, upper := 21608, M := 31 } = true := by
  exact coverLayerCheck_of_parts row074_layer001_arithmetic row074_layer001_enumeration row074_bounds_eq row074_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row074_layer002_intervals : List ColouredInterval :=
  [(2, 22528, 22601), (2, 24576, 24649), (2, 26624, 26697), (2, 28672, 28745), (2, 24576, 24649), (2, 28672, 28745), (2, 32768, 32841), (2, 36864, 36937), (2, 40960, 41033), (2, 24576, 24649), (2, 32768, 32841), (2, 40960, 41033), (2, 32768, 32841), (2, 32768, 32841), (3, 21870, 21943), (3, 24057, 24130), (3, 26244, 26317), (3, 28431, 28504), (3, 30618, 30691), (3, 32805, 32878), (3, 34992, 35065), (3, 37179, 37252), (3, 39366, 39439), (3, 41553, 41626), (3, 26244, 26317), (3, 32805, 32878), (3, 39366, 39439), (3, 39366, 39439), (5, 21875, 21948), (5, 25000, 25073), (5, 28125, 28198), (5, 31250, 31323), (5, 34375, 34448), (5, 37500, 37573), (5, 40625, 40698), (5, 31250, 31323), (7, 21609, 21682), (7, 24010, 24083), (7, 26411, 26484), (7, 28812, 28885), (7, 31213, 31286), (7, 33614, 33687), (7, 36015, 36088), (7, 38416, 38489), (7, 40817, 40890), (7, 33614, 33687), (11, 22627, 22700), (11, 23958, 24031), (11, 25289, 25362), (11, 26620, 26693), (11, 27951, 28024), (11, 29282, 29355), (11, 30613, 30686), (11, 31944, 32017), (11, 33275, 33348), (11, 34606, 34679), (11, 35937, 36010), (11, 37268, 37341), (11, 29282, 29355), (13, 21970, 22043), (13, 24167, 24240), (13, 26364, 26437), (13, 28561, 28634), (13, 30758, 30831), (13, 32955, 33028), (13, 35152, 35225), (13, 37349, 37422), (13, 39546, 39619), (13, 41743, 41816), (13, 28561, 28634), (17, 24565, 24638), (17, 29478, 29551), (17, 34391, 34464), (17, 39304, 39377), (19, 27436, 27509), (19, 34295, 34368), (19, 41154, 41227), (23, 24334, 24407), (23, 36501, 36574), (29, 21866, 21939), (29, 22707, 22780), (29, 23548, 23621), (29, 24389, 24462), (31, 22103, 22176), (31, 23064, 23137), (31, 24025, 24098), (31, 24986, 25059), (31, 25947, 26020), (31, 26908, 26981), (31, 29791, 29864), (41, 21853, 21926), (41, 23534, 23607), (41, 25215, 25288), (41, 26896, 26969), (41, 28577, 28650), (41, 30258, 30331), (41, 31939, 32012), (41, 33620, 33693), (41, 35301, 35374), (41, 36982, 37055), (41, 38663, 38736), (41, 40344, 40417), (41, 42025, 42098), (43, 22188, 22261), (43, 24037, 24110), (43, 25886, 25959), (43, 27735, 27808), (43, 29584, 29657), (43, 31433, 31506), (43, 33282, 33355), (43, 35131, 35204), (43, 36980, 37053), (43, 38829, 38902), (43, 40678, 40751), (43, 42527, 42600), (47, 22090, 22163), (47, 24299, 24372), (47, 26508, 26581), (47, 28717, 28790), (47, 30926, 30999), (47, 33135, 33208), (47, 35344, 35417), (47, 37553, 37626), (47, 39762, 39835), (47, 41971, 42044), (53, 22472, 22545), (53, 25281, 25354), (53, 28090, 28163), (53, 30899, 30972), (53, 33708, 33781), (53, 36517, 36590), (53, 39326, 39399), (53, 42135, 42208), (59, 24367, 24440), (59, 27848, 27921), (59, 31329, 31402), (59, 34810, 34883), (59, 38291, 38364), (59, 41772, 41845), (61, 22326, 22399), (61, 26047, 26120), (61, 29768, 29841), (61, 33489, 33562), (61, 37210, 37283), (61, 40931, 41004), (67, 22445, 22518), (67, 26934, 27007), (67, 31423, 31496), (67, 35912, 35985), (67, 40401, 40474), (71, 25205, 25278), (71, 30246, 30319), (71, 35287, 35360), (71, 40328, 40401), (73, 26645, 26718), (73, 31974, 32047), (73, 37303, 37376), (73, 42632, 42705)]

def row074_layer002_block000 : List ColouredInterval :=
  [(2, 22528, 22601), (2, 24576, 24649), (2, 26624, 26697), (2, 28672, 28745), (2, 24576, 24649), (2, 28672, 28745), (2, 32768, 32841), (2, 36864, 36937), (2, 40960, 41033), (2, 24576, 24649), (2, 32768, 32841), (2, 40960, 41033)]

def row074_layer002_block001 : List ColouredInterval :=
  [(2, 32768, 32841), (2, 32768, 32841), (3, 21870, 21943), (3, 24057, 24130), (3, 26244, 26317), (3, 28431, 28504), (3, 30618, 30691), (3, 32805, 32878), (3, 34992, 35065), (3, 37179, 37252), (3, 39366, 39439), (3, 41553, 41626)]

def row074_layer002_block002 : List ColouredInterval :=
  [(3, 26244, 26317), (3, 32805, 32878), (3, 39366, 39439), (3, 39366, 39439), (5, 21875, 21948), (5, 25000, 25073), (5, 28125, 28198), (5, 31250, 31323), (5, 34375, 34448), (5, 37500, 37573), (5, 40625, 40698), (5, 31250, 31323)]

def row074_layer002_block003 : List ColouredInterval :=
  [(7, 21609, 21682), (7, 24010, 24083), (7, 26411, 26484), (7, 28812, 28885), (7, 31213, 31286), (7, 33614, 33687), (7, 36015, 36088), (7, 38416, 38489), (7, 40817, 40890), (7, 33614, 33687), (11, 22627, 22700), (11, 23958, 24031)]

def row074_layer002_block004 : List ColouredInterval :=
  [(11, 25289, 25362), (11, 26620, 26693), (11, 27951, 28024), (11, 29282, 29355), (11, 30613, 30686), (11, 31944, 32017), (11, 33275, 33348), (11, 34606, 34679), (11, 35937, 36010), (11, 37268, 37341), (11, 29282, 29355), (13, 21970, 22043)]

def row074_layer002_block005 : List ColouredInterval :=
  [(13, 24167, 24240), (13, 26364, 26437), (13, 28561, 28634), (13, 30758, 30831), (13, 32955, 33028), (13, 35152, 35225), (13, 37349, 37422), (13, 39546, 39619), (13, 41743, 41816), (13, 28561, 28634), (17, 24565, 24638), (17, 29478, 29551)]

def row074_layer002_block006 : List ColouredInterval :=
  [(17, 34391, 34464), (17, 39304, 39377), (19, 27436, 27509), (19, 34295, 34368), (19, 41154, 41227), (23, 24334, 24407), (23, 36501, 36574), (29, 21866, 21939), (29, 22707, 22780), (29, 23548, 23621), (29, 24389, 24462), (31, 22103, 22176)]

def row074_layer002_block007 : List ColouredInterval :=
  [(31, 23064, 23137), (31, 24025, 24098), (31, 24986, 25059), (31, 25947, 26020), (31, 26908, 26981), (31, 29791, 29864), (41, 21853, 21926), (41, 23534, 23607), (41, 25215, 25288), (41, 26896, 26969), (41, 28577, 28650), (41, 30258, 30331)]

def row074_layer002_block008 : List ColouredInterval :=
  [(41, 31939, 32012), (41, 33620, 33693), (41, 35301, 35374), (41, 36982, 37055), (41, 38663, 38736), (41, 40344, 40417), (41, 42025, 42098), (43, 22188, 22261), (43, 24037, 24110), (43, 25886, 25959), (43, 27735, 27808), (43, 29584, 29657)]

def row074_layer002_block009 : List ColouredInterval :=
  [(43, 31433, 31506), (43, 33282, 33355), (43, 35131, 35204), (43, 36980, 37053), (43, 38829, 38902), (43, 40678, 40751), (43, 42527, 42600), (47, 22090, 22163), (47, 24299, 24372), (47, 26508, 26581), (47, 28717, 28790), (47, 30926, 30999)]

def row074_layer002_block010 : List ColouredInterval :=
  [(47, 33135, 33208), (47, 35344, 35417), (47, 37553, 37626), (47, 39762, 39835), (47, 41971, 42044), (53, 22472, 22545), (53, 25281, 25354), (53, 28090, 28163), (53, 30899, 30972), (53, 33708, 33781), (53, 36517, 36590), (53, 39326, 39399)]

def row074_layer002_block011 : List ColouredInterval :=
  [(53, 42135, 42208), (59, 24367, 24440), (59, 27848, 27921), (59, 31329, 31402), (59, 34810, 34883), (59, 38291, 38364), (59, 41772, 41845), (61, 22326, 22399), (61, 26047, 26120), (61, 29768, 29841), (61, 33489, 33562), (61, 37210, 37283)]

def row074_layer002_block012 : List ColouredInterval :=
  [(61, 40931, 41004), (67, 22445, 22518), (67, 26934, 27007), (67, 31423, 31496), (67, 35912, 35985), (67, 40401, 40474), (71, 25205, 25278), (71, 30246, 30319), (71, 35287, 35360), (71, 40328, 40401), (73, 26645, 26718), (73, 31974, 32047)]

def row074_layer002_block013 : List ColouredInterval :=
  [(73, 37303, 37376), (73, 42632, 42705)]

def row074_layer002_chunks : List (List ColouredInterval) :=
  [row074_layer002_block000, row074_layer002_block001, row074_layer002_block002, row074_layer002_block003, row074_layer002_block004, row074_layer002_block005, row074_layer002_block006, row074_layer002_block007, row074_layer002_block008, row074_layer002_block009, row074_layer002_block010, row074_layer002_block011, row074_layer002_block012, row074_layer002_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer002_arithmetic : LayerArithmeticValid row074.height { lower := 21608, upper := 43216, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer002_enumeration :
    activePowerIntervalList 74 28 21608 43216 = row074_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer002_pairs000 :
    row074_layer002_block000.all (fun I => row074_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer002_pairs001 :
    row074_layer002_block001.all (fun I => row074_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row074_layer002_pairs002 :
    row074_layer002_block002.all (fun I => row074_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row074_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row074_layer002_pairs002
