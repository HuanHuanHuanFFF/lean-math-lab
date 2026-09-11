import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row062B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs006 :
    row062_layer002_block006.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs007 :
    row062_layer002_block007.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs008 :
    row062_layer002_block008.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs009 :
    row062_layer002_block009.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_pairs010 :
    row062_layer002_block010.all (fun I => row062_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_chunks_eq : row062_layer002_chunks.flatten = row062_layer002_intervals := by
  rfl

theorem row062_layer002_pairs : pairCoverCheck row062_layer002_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer002_chunks_eq
  intro block hblock
  simp only [row062_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer002_pairs000
  · exact row062_layer002_pairs001
  · exact row062_layer002_pairs002
  · exact row062_layer002_pairs003
  · exact row062_layer002_pairs004
  · exact row062_layer002_pairs005
  · exact row062_layer002_pairs006
  · exact row062_layer002_pairs007
  · exact row062_layer002_pairs008
  · exact row062_layer002_pairs009
  · exact row062_layer002_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer002_checked :
    coverLayerCheck row062.height row062.goods { lower := 15128, upper := 30256, M := 30 } = true := by
  exact coverLayerCheck_of_parts row062_layer002_arithmetic row062_layer002_enumeration row062_bounds_eq row062_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer003_intervals : List ColouredInterval :=
  [(2, 32768, 32829), (2, 36864, 36925), (2, 40960, 41021), (2, 45056, 45117), (2, 49152, 49213), (2, 53248, 53309), (2, 32768, 32829), (2, 40960, 41021), (2, 49152, 49213), (2, 57344, 57405), (2, 32768, 32829), (2, 49152, 49213), (2, 32768, 32829), (3, 30618, 30679), (3, 32805, 32866), (3, 34992, 35053), (3, 37179, 37240), (3, 39366, 39427), (3, 41553, 41614), (3, 43740, 43801), (3, 45927, 45988), (3, 48114, 48175), (3, 50301, 50362), (3, 52488, 52549), (3, 54675, 54736), (3, 56862, 56923), (3, 59049, 59110), (3, 32805, 32866), (3, 39366, 39427), (3, 45927, 45988), (3, 52488, 52549), (3, 59049, 59110), (3, 39366, 39427), (3, 59049, 59110), (3, 59049, 59110), (5, 31250, 31311), (5, 34375, 34436), (5, 37500, 37561), (5, 40625, 40686), (5, 43750, 43811), (5, 46875, 46936), (5, 50000, 50061), (5, 53125, 53186), (5, 56250, 56311), (5, 59375, 59436), (5, 31250, 31311), (5, 46875, 46936), (7, 31213, 31274), (7, 33614, 33675), (7, 36015, 36076), (7, 38416, 38477), (7, 40817, 40878), (7, 43218, 43279), (7, 45619, 45680), (7, 48020, 48081), (7, 50421, 50482), (7, 52822, 52883), (7, 55223, 55284), (7, 57624, 57685), (7, 60025, 60086), (7, 33614, 33675), (7, 50421, 50482), (11, 30613, 30674), (11, 31944, 32005), (11, 33275, 33336), (11, 34606, 34667), (11, 35937, 35998), (11, 43923, 43984), (11, 58564, 58625), (13, 30758, 30819), (13, 32955, 33016), (13, 35152, 35213), (13, 37349, 37410), (13, 39546, 39607), (13, 41743, 41804), (13, 43940, 44001), (13, 46137, 46198), (13, 48334, 48395), (13, 50531, 50592), (13, 52728, 52789), (13, 54925, 54986), (13, 57122, 57183), (13, 59319, 59380), (13, 57122, 57183), (17, 34391, 34452), (17, 39304, 39365), (17, 44217, 44278), (17, 49130, 49191), (17, 54043, 54104), (17, 58956, 59017), (19, 34295, 34356), (19, 41154, 41215), (19, 48013, 48074), (19, 54872, 54933), (23, 36501, 36562), (23, 48668, 48729), (29, 48778, 48839), (37, 31487, 31548), (37, 32856, 32917), (37, 34225, 34286), (37, 35594, 35655), (37, 36963, 37024), (37, 50653, 50714), (41, 30258, 30319), (41, 31939, 32000), (41, 33620, 33681), (41, 35301, 35362), (41, 36982, 37043), (41, 38663, 38724), (41, 40344, 40405), (41, 42025, 42086), (41, 43706, 43767), (41, 45387, 45448), (43, 31433, 31494), (43, 33282, 33343), (43, 35131, 35192), (43, 36980, 37041), (43, 38829, 38890), (43, 40678, 40739), (43, 42527, 42588), (43, 44376, 44437), (43, 46225, 46286), (43, 48074, 48135), (43, 49923, 49984), (47, 30926, 30987), (47, 33135, 33196), (47, 35344, 35405), (47, 37553, 37614), (47, 39762, 39823), (47, 41971, 42032), (47, 44180, 44241), (47, 46389, 46450), (47, 48598, 48659), (47, 50807, 50868), (47, 53016, 53077), (47, 55225, 55286), (47, 57434, 57495), (47, 59643, 59704), (53, 30899, 30960), (53, 33708, 33769), (53, 36517, 36578), (53, 39326, 39387), (53, 42135, 42196), (53, 44944, 45005), (53, 47753, 47814), (53, 50562, 50623), (53, 53371, 53432), (53, 56180, 56241), (53, 58989, 59050), (59, 31329, 31390), (59, 34810, 34871), (59, 38291, 38352), (59, 41772, 41833), (59, 45253, 45314), (59, 48734, 48795), (59, 52215, 52276), (59, 55696, 55757), (59, 59177, 59238), (61, 33489, 33550), (61, 37210, 37271), (61, 40931, 40992), (61, 44652, 44713), (61, 48373, 48434), (61, 52094, 52155), (61, 55815, 55876), (61, 59536, 59597)]

def row062_layer003_block000 : List ColouredInterval :=
  [(2, 32768, 32829), (2, 36864, 36925), (2, 40960, 41021), (2, 45056, 45117), (2, 49152, 49213), (2, 53248, 53309), (2, 32768, 32829), (2, 40960, 41021), (2, 49152, 49213), (2, 57344, 57405), (2, 32768, 32829), (2, 49152, 49213)]

def row062_layer003_block001 : List ColouredInterval :=
  [(2, 32768, 32829), (3, 30618, 30679), (3, 32805, 32866), (3, 34992, 35053), (3, 37179, 37240), (3, 39366, 39427), (3, 41553, 41614), (3, 43740, 43801), (3, 45927, 45988), (3, 48114, 48175), (3, 50301, 50362), (3, 52488, 52549)]

def row062_layer003_block002 : List ColouredInterval :=
  [(3, 54675, 54736), (3, 56862, 56923), (3, 59049, 59110), (3, 32805, 32866), (3, 39366, 39427), (3, 45927, 45988), (3, 52488, 52549), (3, 59049, 59110), (3, 39366, 39427), (3, 59049, 59110), (3, 59049, 59110), (5, 31250, 31311)]

def row062_layer003_block003 : List ColouredInterval :=
  [(5, 34375, 34436), (5, 37500, 37561), (5, 40625, 40686), (5, 43750, 43811), (5, 46875, 46936), (5, 50000, 50061), (5, 53125, 53186), (5, 56250, 56311), (5, 59375, 59436), (5, 31250, 31311), (5, 46875, 46936), (7, 31213, 31274)]

def row062_layer003_block004 : List ColouredInterval :=
  [(7, 33614, 33675), (7, 36015, 36076), (7, 38416, 38477), (7, 40817, 40878), (7, 43218, 43279), (7, 45619, 45680), (7, 48020, 48081), (7, 50421, 50482), (7, 52822, 52883), (7, 55223, 55284), (7, 57624, 57685), (7, 60025, 60086)]

def row062_layer003_block005 : List ColouredInterval :=
  [(7, 33614, 33675), (7, 50421, 50482), (11, 30613, 30674), (11, 31944, 32005), (11, 33275, 33336), (11, 34606, 34667), (11, 35937, 35998), (11, 43923, 43984), (11, 58564, 58625), (13, 30758, 30819), (13, 32955, 33016), (13, 35152, 35213)]

def row062_layer003_block006 : List ColouredInterval :=
  [(13, 37349, 37410), (13, 39546, 39607), (13, 41743, 41804), (13, 43940, 44001), (13, 46137, 46198), (13, 48334, 48395), (13, 50531, 50592), (13, 52728, 52789), (13, 54925, 54986), (13, 57122, 57183), (13, 59319, 59380), (13, 57122, 57183)]

def row062_layer003_block007 : List ColouredInterval :=
  [(17, 34391, 34452), (17, 39304, 39365), (17, 44217, 44278), (17, 49130, 49191), (17, 54043, 54104), (17, 58956, 59017), (19, 34295, 34356), (19, 41154, 41215), (19, 48013, 48074), (19, 54872, 54933), (23, 36501, 36562), (23, 48668, 48729)]

def row062_layer003_block008 : List ColouredInterval :=
  [(29, 48778, 48839), (37, 31487, 31548), (37, 32856, 32917), (37, 34225, 34286), (37, 35594, 35655), (37, 36963, 37024), (37, 50653, 50714), (41, 30258, 30319), (41, 31939, 32000), (41, 33620, 33681), (41, 35301, 35362), (41, 36982, 37043)]

def row062_layer003_block009 : List ColouredInterval :=
  [(41, 38663, 38724), (41, 40344, 40405), (41, 42025, 42086), (41, 43706, 43767), (41, 45387, 45448), (43, 31433, 31494), (43, 33282, 33343), (43, 35131, 35192), (43, 36980, 37041), (43, 38829, 38890), (43, 40678, 40739), (43, 42527, 42588)]

def row062_layer003_block010 : List ColouredInterval :=
  [(43, 44376, 44437), (43, 46225, 46286), (43, 48074, 48135), (43, 49923, 49984), (47, 30926, 30987), (47, 33135, 33196), (47, 35344, 35405), (47, 37553, 37614), (47, 39762, 39823), (47, 41971, 42032), (47, 44180, 44241), (47, 46389, 46450)]

def row062_layer003_block011 : List ColouredInterval :=
  [(47, 48598, 48659), (47, 50807, 50868), (47, 53016, 53077), (47, 55225, 55286), (47, 57434, 57495), (47, 59643, 59704), (53, 30899, 30960), (53, 33708, 33769), (53, 36517, 36578), (53, 39326, 39387), (53, 42135, 42196), (53, 44944, 45005)]

def row062_layer003_block012 : List ColouredInterval :=
  [(53, 47753, 47814), (53, 50562, 50623), (53, 53371, 53432), (53, 56180, 56241), (53, 58989, 59050), (59, 31329, 31390), (59, 34810, 34871), (59, 38291, 38352), (59, 41772, 41833), (59, 45253, 45314), (59, 48734, 48795), (59, 52215, 52276)]

def row062_layer003_block013 : List ColouredInterval :=
  [(59, 55696, 55757), (59, 59177, 59238), (61, 33489, 33550), (61, 37210, 37271), (61, 40931, 40992), (61, 44652, 44713), (61, 48373, 48434), (61, 52094, 52155), (61, 55815, 55876), (61, 59536, 59597)]

def row062_layer003_chunks : List (List ColouredInterval) :=
  [row062_layer003_block000, row062_layer003_block001, row062_layer003_block002, row062_layer003_block003, row062_layer003_block004, row062_layer003_block005, row062_layer003_block006, row062_layer003_block007, row062_layer003_block008, row062_layer003_block009, row062_layer003_block010, row062_layer003_block011, row062_layer003_block012, row062_layer003_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_arithmetic : LayerArithmeticValid row062.height { lower := 30256, upper := 60512, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_enumeration :
    activePowerIntervalList 62 27 30256 60512 = row062_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs000 :
    row062_layer003_block000.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs001 :
    row062_layer003_block001.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs002 :
    row062_layer003_block002.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs003 :
    row062_layer003_block003.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs004 :
    row062_layer003_block004.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs005 :
    row062_layer003_block005.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs006 :
    row062_layer003_block006.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs007 :
    row062_layer003_block007.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs008 :
    row062_layer003_block008.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs009 :
    row062_layer003_block009.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs010 :
    row062_layer003_block010.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs011 :
    row062_layer003_block011.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs012 :
    row062_layer003_block012.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_pairs013 :
    row062_layer003_block013.all (fun I => row062_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_chunks_eq : row062_layer003_chunks.flatten = row062_layer003_intervals := by
  rfl

theorem row062_layer003_pairs : pairCoverCheck row062_layer003_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer003_chunks_eq
  intro block hblock
  simp only [row062_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer003_pairs000
  · exact row062_layer003_pairs001
  · exact row062_layer003_pairs002
  · exact row062_layer003_pairs003
  · exact row062_layer003_pairs004
  · exact row062_layer003_pairs005
  · exact row062_layer003_pairs006
  · exact row062_layer003_pairs007
  · exact row062_layer003_pairs008
  · exact row062_layer003_pairs009
  · exact row062_layer003_pairs010
  · exact row062_layer003_pairs011
  · exact row062_layer003_pairs012
  · exact row062_layer003_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer003_checked :
    coverLayerCheck row062.height row062.goods { lower := 30256, upper := 60512, M := 27 } = true := by
  exact coverLayerCheck_of_parts row062_layer003_arithmetic row062_layer003_enumeration row062_bounds_eq row062_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer004_intervals : List ColouredInterval :=
  [(2, 65536, 65597), (2, 73728, 73789), (2, 81920, 81981), (2, 90112, 90173), (2, 98304, 98365), (2, 65536, 65597), (2, 81920, 81981), (2, 98304, 98365), (2, 114688, 114749), (2, 65536, 65597), (2, 98304, 98365), (2, 65536, 65597), (3, 65610, 65671), (3, 72171, 72232), (3, 78732, 78793), (3, 85293, 85354), (3, 91854, 91915), (3, 98415, 98476), (3, 104976, 105037), (3, 111537, 111598), (3, 118098, 118159), (3, 78732, 78793), (3, 98415, 98476), (3, 118098, 118159), (3, 118098, 118159), (5, 62500, 62561), (5, 65625, 65686), (5, 68750, 68811), (5, 71875, 71936), (5, 75000, 75061), (5, 78125, 78186), (5, 62500, 62561), (5, 78125, 78186), (5, 93750, 93811), (5, 109375, 109436), (5, 78125, 78186), (7, 67228, 67289), (7, 84035, 84096), (7, 100842, 100903), (7, 117649, 117710), (7, 117649, 117710), (11, 73205, 73266), (11, 87846, 87907), (11, 102487, 102548), (11, 117128, 117189), (13, 85683, 85744), (13, 114244, 114305), (17, 63869, 63930), (17, 68782, 68843), (17, 73695, 73756), (17, 78608, 78669), (17, 83521, 83582), (17, 88434, 88495), (17, 93347, 93408), (17, 98260, 98321), (17, 103173, 103234), (17, 108086, 108147), (17, 112999, 113060), (17, 117912, 117973), (17, 83521, 83582), (19, 61731, 61792), (19, 68590, 68651), (19, 75449, 75510), (19, 82308, 82369), (19, 89167, 89228), (19, 96026, 96087), (19, 102885, 102946), (19, 109744, 109805), (19, 116603, 116664), (23, 60835, 60896), (23, 73002, 73063), (23, 85169, 85230), (23, 97336, 97397), (23, 109503, 109564), (29, 73167, 73228), (29, 97556, 97617), (37, 101306, 101367), (41, 68921, 68982), (43, 79507, 79568), (47, 103823, 103884), (53, 61798, 61859), (53, 64607, 64668), (53, 67416, 67477), (53, 70225, 70286), (59, 62658, 62719), (59, 66139, 66200), (59, 69620, 69681), (59, 73101, 73162), (59, 76582, 76643), (59, 80063, 80124), (59, 83544, 83605), (59, 87025, 87086), (61, 63257, 63318), (61, 66978, 67039), (61, 70699, 70760), (61, 74420, 74481), (61, 78141, 78202), (61, 81862, 81923), (61, 85583, 85644), (61, 89304, 89365), (61, 93025, 93086)]

def row062_layer004_block000 : List ColouredInterval :=
  [(2, 65536, 65597), (2, 73728, 73789), (2, 81920, 81981), (2, 90112, 90173), (2, 98304, 98365), (2, 65536, 65597), (2, 81920, 81981), (2, 98304, 98365), (2, 114688, 114749), (2, 65536, 65597), (2, 98304, 98365), (2, 65536, 65597), (3, 65610, 65671), (3, 72171, 72232), (3, 78732, 78793), (3, 85293, 85354)]

def row062_layer004_block001 : List ColouredInterval :=
  [(3, 91854, 91915), (3, 98415, 98476), (3, 104976, 105037), (3, 111537, 111598), (3, 118098, 118159), (3, 78732, 78793), (3, 98415, 98476), (3, 118098, 118159), (3, 118098, 118159), (5, 62500, 62561), (5, 65625, 65686), (5, 68750, 68811), (5, 71875, 71936), (5, 75000, 75061), (5, 78125, 78186), (5, 62500, 62561)]

def row062_layer004_block002 : List ColouredInterval :=
  [(5, 78125, 78186), (5, 93750, 93811), (5, 109375, 109436), (5, 78125, 78186), (7, 67228, 67289), (7, 84035, 84096), (7, 100842, 100903), (7, 117649, 117710), (7, 117649, 117710), (11, 73205, 73266), (11, 87846, 87907), (11, 102487, 102548), (11, 117128, 117189), (13, 85683, 85744), (13, 114244, 114305), (17, 63869, 63930)]

def row062_layer004_block003 : List ColouredInterval :=
  [(17, 68782, 68843), (17, 73695, 73756), (17, 78608, 78669), (17, 83521, 83582), (17, 88434, 88495), (17, 93347, 93408), (17, 98260, 98321), (17, 103173, 103234), (17, 108086, 108147), (17, 112999, 113060), (17, 117912, 117973), (17, 83521, 83582), (19, 61731, 61792), (19, 68590, 68651), (19, 75449, 75510), (19, 82308, 82369)]

def row062_layer004_block004 : List ColouredInterval :=
  [(19, 89167, 89228), (19, 96026, 96087), (19, 102885, 102946), (19, 109744, 109805), (19, 116603, 116664), (23, 60835, 60896), (23, 73002, 73063), (23, 85169, 85230), (23, 97336, 97397), (23, 109503, 109564), (29, 73167, 73228), (29, 97556, 97617), (37, 101306, 101367), (41, 68921, 68982), (43, 79507, 79568), (47, 103823, 103884)]

def row062_layer004_block005 : List ColouredInterval :=
  [(53, 61798, 61859), (53, 64607, 64668), (53, 67416, 67477), (53, 70225, 70286), (59, 62658, 62719), (59, 66139, 66200), (59, 69620, 69681), (59, 73101, 73162), (59, 76582, 76643), (59, 80063, 80124), (59, 83544, 83605), (59, 87025, 87086), (61, 63257, 63318), (61, 66978, 67039), (61, 70699, 70760), (61, 74420, 74481)]

def row062_layer004_block006 : List ColouredInterval :=
  [(61, 78141, 78202), (61, 81862, 81923), (61, 85583, 85644), (61, 89304, 89365), (61, 93025, 93086)]

def row062_layer004_chunks : List (List ColouredInterval) :=
  [row062_layer004_block000, row062_layer004_block001, row062_layer004_block002, row062_layer004_block003, row062_layer004_block004, row062_layer004_block005, row062_layer004_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_arithmetic : LayerArithmeticValid row062.height { lower := 60512, upper := 121024, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_enumeration :
    activePowerIntervalList 62 25 60512 121024 = row062_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_pairs000 :
    row062_layer004_block000.all (fun I => row062_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_pairs001 :
    row062_layer004_block001.all (fun I => row062_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_pairs002 :
    row062_layer004_block002.all (fun I => row062_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_pairs003 :
    row062_layer004_block003.all (fun I => row062_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_pairs004 :
    row062_layer004_block004.all (fun I => row062_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_pairs005 :
    row062_layer004_block005.all (fun I => row062_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_pairs006 :
    row062_layer004_block006.all (fun I => row062_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_chunks_eq : row062_layer004_chunks.flatten = row062_layer004_intervals := by
  rfl

theorem row062_layer004_pairs : pairCoverCheck row062_layer004_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer004_chunks_eq
  intro block hblock
  simp only [row062_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer004_pairs000
  · exact row062_layer004_pairs001
  · exact row062_layer004_pairs002
  · exact row062_layer004_pairs003
  · exact row062_layer004_pairs004
  · exact row062_layer004_pairs005
  · exact row062_layer004_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer004_checked :
    coverLayerCheck row062.height row062.goods { lower := 60512, upper := 121024, M := 25 } = true := by
  exact coverLayerCheck_of_parts row062_layer004_arithmetic row062_layer004_enumeration row062_bounds_eq row062_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer005_intervals : List ColouredInterval :=
  [(2, 131072, 131133), (2, 147456, 147517), (2, 163840, 163901), (2, 180224, 180285), (2, 131072, 131133), (2, 163840, 163901), (2, 196608, 196669), (2, 229376, 229437), (2, 131072, 131133), (2, 196608, 196669), (2, 131072, 131133), (3, 124659, 124720), (3, 131220, 131281), (3, 137781, 137842), (3, 144342, 144403), (3, 150903, 150964), (3, 137781, 137842), (3, 157464, 157525), (3, 177147, 177208), (3, 196830, 196891), (3, 216513, 216574), (3, 236196, 236257), (3, 177147, 177208), (3, 236196, 236257), (3, 177147, 177208), (5, 125000, 125061), (5, 140625, 140686), (5, 156250, 156311), (5, 171875, 171936), (5, 187500, 187561), (5, 203125, 203186), (5, 218750, 218811), (5, 234375, 234436), (5, 156250, 156311), (5, 234375, 234436), (7, 134456, 134517), (7, 151263, 151324), (7, 168070, 168131), (7, 184877, 184938), (7, 201684, 201745), (7, 218491, 218552), (7, 235298, 235359), (7, 235298, 235359), (11, 131769, 131830), (11, 146410, 146471), (11, 161051, 161112), (11, 175692, 175753), (11, 190333, 190394), (11, 204974, 205035), (11, 219615, 219676), (11, 234256, 234317), (11, 161051, 161112), (13, 142805, 142866), (13, 171366, 171427), (13, 199927, 199988), (13, 228488, 228549), (17, 167042, 167103), (19, 123462, 123523), (19, 130321, 130382), (19, 137180, 137241), (19, 144039, 144100), (19, 150898, 150959), (19, 157757, 157818), (19, 130321, 130382), (23, 121670, 121731), (23, 133837, 133898), (23, 146004, 146065), (23, 158171, 158232), (23, 170338, 170399), (23, 182505, 182566), (23, 194672, 194733), (23, 206839, 206900), (23, 219006, 219067), (23, 231173, 231234), (29, 121945, 122006), (29, 146334, 146395), (29, 170723, 170784), (29, 195112, 195173), (29, 219501, 219562), (37, 151959, 152020), (37, 202612, 202673), (41, 137842, 137903), (41, 206763, 206824), (43, 159014, 159075), (43, 238521, 238582), (47, 207646, 207707), (53, 148877, 148938), (59, 205379, 205440), (61, 226981, 227042)]

def row062_layer005_block000 : List ColouredInterval :=
  [(2, 131072, 131133), (2, 147456, 147517), (2, 163840, 163901), (2, 180224, 180285), (2, 131072, 131133), (2, 163840, 163901), (2, 196608, 196669), (2, 229376, 229437), (2, 131072, 131133), (2, 196608, 196669), (2, 131072, 131133), (3, 124659, 124720), (3, 131220, 131281), (3, 137781, 137842), (3, 144342, 144403), (3, 150903, 150964)]

def row062_layer005_block001 : List ColouredInterval :=
  [(3, 137781, 137842), (3, 157464, 157525), (3, 177147, 177208), (3, 196830, 196891), (3, 216513, 216574), (3, 236196, 236257), (3, 177147, 177208), (3, 236196, 236257), (3, 177147, 177208), (5, 125000, 125061), (5, 140625, 140686), (5, 156250, 156311), (5, 171875, 171936), (5, 187500, 187561), (5, 203125, 203186), (5, 218750, 218811)]

def row062_layer005_block002 : List ColouredInterval :=
  [(5, 234375, 234436), (5, 156250, 156311), (5, 234375, 234436), (7, 134456, 134517), (7, 151263, 151324), (7, 168070, 168131), (7, 184877, 184938), (7, 201684, 201745), (7, 218491, 218552), (7, 235298, 235359), (7, 235298, 235359), (11, 131769, 131830), (11, 146410, 146471), (11, 161051, 161112), (11, 175692, 175753), (11, 190333, 190394)]

def row062_layer005_block003 : List ColouredInterval :=
  [(11, 204974, 205035), (11, 219615, 219676), (11, 234256, 234317), (11, 161051, 161112), (13, 142805, 142866), (13, 171366, 171427), (13, 199927, 199988), (13, 228488, 228549), (17, 167042, 167103), (19, 123462, 123523), (19, 130321, 130382), (19, 137180, 137241), (19, 144039, 144100), (19, 150898, 150959), (19, 157757, 157818), (19, 130321, 130382)]

def row062_layer005_block004 : List ColouredInterval :=
  [(23, 121670, 121731), (23, 133837, 133898), (23, 146004, 146065), (23, 158171, 158232), (23, 170338, 170399), (23, 182505, 182566), (23, 194672, 194733), (23, 206839, 206900), (23, 219006, 219067), (23, 231173, 231234), (29, 121945, 122006), (29, 146334, 146395), (29, 170723, 170784), (29, 195112, 195173), (29, 219501, 219562), (37, 151959, 152020)]

def row062_layer005_block005 : List ColouredInterval :=
  [(37, 202612, 202673), (41, 137842, 137903), (41, 206763, 206824), (43, 159014, 159075), (43, 238521, 238582), (47, 207646, 207707), (53, 148877, 148938), (59, 205379, 205440), (61, 226981, 227042)]

def row062_layer005_chunks : List (List ColouredInterval) :=
  [row062_layer005_block000, row062_layer005_block001, row062_layer005_block002, row062_layer005_block003, row062_layer005_block004, row062_layer005_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_arithmetic : LayerArithmeticValid row062.height { lower := 121024, upper := 242048, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_enumeration :
    activePowerIntervalList 62 23 121024 242048 = row062_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_pairs000 :
    row062_layer005_block000.all (fun I => row062_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_pairs001 :
    row062_layer005_block001.all (fun I => row062_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_pairs002 :
    row062_layer005_block002.all (fun I => row062_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_pairs003 :
    row062_layer005_block003.all (fun I => row062_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_pairs004 :
    row062_layer005_block004.all (fun I => row062_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_pairs005 :
    row062_layer005_block005.all (fun I => row062_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_chunks_eq : row062_layer005_chunks.flatten = row062_layer005_intervals := by
  rfl

theorem row062_layer005_pairs : pairCoverCheck row062_layer005_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer005_chunks_eq
  intro block hblock
  simp only [row062_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer005_pairs000
  · exact row062_layer005_pairs001
  · exact row062_layer005_pairs002
  · exact row062_layer005_pairs003
  · exact row062_layer005_pairs004
  · exact row062_layer005_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer005_checked :
    coverLayerCheck row062.height row062.goods { lower := 121024, upper := 242048, M := 23 } = true := by
  exact coverLayerCheck_of_parts row062_layer005_arithmetic row062_layer005_enumeration row062_bounds_eq row062_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer006_intervals : List ColouredInterval :=
  [(2, 262144, 262205), (2, 294912, 294973), (2, 327680, 327741), (2, 262144, 262205), (2, 327680, 327741), (2, 393216, 393277), (2, 458752, 458813), (2, 262144, 262205), (2, 393216, 393277), (2, 262144, 262205), (3, 255879, 255940), (3, 275562, 275623), (3, 295245, 295306), (3, 314928, 314989), (3, 334611, 334672), (3, 354294, 354355), (3, 373977, 374038), (3, 393660, 393721), (3, 413343, 413404), (3, 295245, 295306), (3, 354294, 354355), (3, 413343, 413404), (3, 472392, 472453), (3, 354294, 354355), (5, 250000, 250061), (5, 265625, 265686), (5, 281250, 281311), (5, 296875, 296936), (5, 312500, 312561), (5, 328125, 328186), (5, 312500, 312561), (5, 390625, 390686), (5, 468750, 468811), (5, 390625, 390686), (7, 252105, 252166), (7, 268912, 268973), (7, 285719, 285780), (7, 302526, 302587), (7, 319333, 319394), (7, 336140, 336201), (7, 352947, 353008), (7, 352947, 353008), (7, 470596, 470657), (11, 248897, 248958), (11, 263538, 263599), (11, 278179, 278240), (11, 292820, 292881), (11, 307461, 307522), (11, 322102, 322163), (11, 483153, 483214), (13, 257049, 257110), (13, 285610, 285671), (13, 314171, 314232), (13, 342732, 342793), (13, 371293, 371354), (13, 399854, 399915), (13, 428415, 428476), (13, 456976, 457037), (13, 371293, 371354), (17, 250563, 250624), (17, 334084, 334145), (17, 417605, 417666), (19, 260642, 260703), (19, 390963, 391024), (23, 243340, 243401), (23, 255507, 255568), (23, 279841, 279902), (29, 243890, 243951), (29, 268279, 268340), (29, 292668, 292729), (29, 317057, 317118), (29, 341446, 341507), (29, 365835, 365896), (29, 390224, 390285), (29, 414613, 414674), (29, 439002, 439063), (29, 463391, 463452), (37, 253265, 253326), (37, 303918, 303979), (37, 354571, 354632), (37, 405224, 405285), (37, 455877, 455938), (41, 275684, 275745), (41, 344605, 344666), (41, 413526, 413587), (41, 482447, 482508), (43, 318028, 318089), (43, 397535, 397596), (43, 477042, 477103), (47, 311469, 311530), (47, 415292, 415353), (53, 297754, 297815), (53, 446631, 446692), (59, 410758, 410819), (61, 453962, 454023)]

def row062_layer006_block000 : List ColouredInterval :=
  [(2, 262144, 262205), (2, 294912, 294973), (2, 327680, 327741), (2, 262144, 262205), (2, 327680, 327741), (2, 393216, 393277), (2, 458752, 458813), (2, 262144, 262205), (2, 393216, 393277), (2, 262144, 262205), (3, 255879, 255940), (3, 275562, 275623), (3, 295245, 295306), (3, 314928, 314989), (3, 334611, 334672), (3, 354294, 354355)]

def row062_layer006_block001 : List ColouredInterval :=
  [(3, 373977, 374038), (3, 393660, 393721), (3, 413343, 413404), (3, 295245, 295306), (3, 354294, 354355), (3, 413343, 413404), (3, 472392, 472453), (3, 354294, 354355), (5, 250000, 250061), (5, 265625, 265686), (5, 281250, 281311), (5, 296875, 296936), (5, 312500, 312561), (5, 328125, 328186), (5, 312500, 312561), (5, 390625, 390686)]

def row062_layer006_block002 : List ColouredInterval :=
  [(5, 468750, 468811), (5, 390625, 390686), (7, 252105, 252166), (7, 268912, 268973), (7, 285719, 285780), (7, 302526, 302587), (7, 319333, 319394), (7, 336140, 336201), (7, 352947, 353008), (7, 352947, 353008), (7, 470596, 470657), (11, 248897, 248958), (11, 263538, 263599), (11, 278179, 278240), (11, 292820, 292881), (11, 307461, 307522)]

def row062_layer006_block003 : List ColouredInterval :=
  [(11, 322102, 322163), (11, 483153, 483214), (13, 257049, 257110), (13, 285610, 285671), (13, 314171, 314232), (13, 342732, 342793), (13, 371293, 371354), (13, 399854, 399915), (13, 428415, 428476), (13, 456976, 457037), (13, 371293, 371354), (17, 250563, 250624), (17, 334084, 334145), (17, 417605, 417666), (19, 260642, 260703), (19, 390963, 391024)]

def row062_layer006_block004 : List ColouredInterval :=
  [(23, 243340, 243401), (23, 255507, 255568), (23, 279841, 279902), (29, 243890, 243951), (29, 268279, 268340), (29, 292668, 292729), (29, 317057, 317118), (29, 341446, 341507), (29, 365835, 365896), (29, 390224, 390285), (29, 414613, 414674), (29, 439002, 439063), (29, 463391, 463452), (37, 253265, 253326), (37, 303918, 303979), (37, 354571, 354632)]

def row062_layer006_block005 : List ColouredInterval :=
  [(37, 405224, 405285), (37, 455877, 455938), (41, 275684, 275745), (41, 344605, 344666), (41, 413526, 413587), (41, 482447, 482508), (43, 318028, 318089), (43, 397535, 397596), (43, 477042, 477103), (47, 311469, 311530), (47, 415292, 415353), (53, 297754, 297815), (53, 446631, 446692), (59, 410758, 410819), (61, 453962, 454023)]

def row062_layer006_chunks : List (List ColouredInterval) :=
  [row062_layer006_block000, row062_layer006_block001, row062_layer006_block002, row062_layer006_block003, row062_layer006_block004, row062_layer006_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_arithmetic : LayerArithmeticValid row062.height { lower := 242048, upper := 484096, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_enumeration :
    activePowerIntervalList 62 21 242048 484096 = row062_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_pairs000 :
    row062_layer006_block000.all (fun I => row062_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_pairs001 :
    row062_layer006_block001.all (fun I => row062_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_pairs002 :
    row062_layer006_block002.all (fun I => row062_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_pairs003 :
    row062_layer006_block003.all (fun I => row062_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_pairs004 :
    row062_layer006_block004.all (fun I => row062_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_pairs005 :
    row062_layer006_block005.all (fun I => row062_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row062_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_chunks_eq : row062_layer006_chunks.flatten = row062_layer006_intervals := by
  rfl

theorem row062_layer006_pairs : pairCoverCheck row062_layer006_intervals row062_bounds = true := by
  apply pairCoverCheck_of_chunks row062_layer006_chunks_eq
  intro block hblock
  simp only [row062_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row062_layer006_pairs000
  · exact row062_layer006_pairs001
  · exact row062_layer006_pairs002
  · exact row062_layer006_pairs003
  · exact row062_layer006_pairs004
  · exact row062_layer006_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer006_checked :
    coverLayerCheck row062.height row062.goods { lower := 242048, upper := 484096, M := 21 } = true := by
  exact coverLayerCheck_of_parts row062_layer006_arithmetic row062_layer006_enumeration row062_bounds_eq row062_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row062_layer007_intervals : List ColouredInterval :=
  [(2, 524288, 524349), (2, 589824, 589885), (2, 524288, 524349), (2, 655360, 655421), (2, 786432, 786493), (2, 917504, 917565), (2, 524288, 524349), (2, 786432, 786493), (2, 524288, 524349), (3, 531441, 531502), (3, 590490, 590551), (3, 649539, 649600), (3, 708588, 708649), (3, 767637, 767698), (3, 826686, 826747), (3, 885735, 885796), (3, 944784, 944845), (3, 531441, 531502), (3, 708588, 708649), (3, 885735, 885796), (3, 531441, 531502), (5, 546875, 546936), (5, 625000, 625061), (5, 703125, 703186), (5, 781250, 781311), (5, 859375, 859436), (5, 937500, 937561), (5, 781250, 781311), (7, 588245, 588306), (7, 705894, 705955), (7, 823543, 823604), (7, 941192, 941253), (7, 823543, 823604), (11, 644204, 644265), (11, 805255, 805316), (11, 966306, 966367), (13, 485537, 485598), (13, 514098, 514159), (13, 542659, 542720), (13, 742586, 742647), (17, 501126, 501187), (17, 584647, 584708), (17, 668168, 668229), (17, 751689, 751750), (17, 835210, 835271), (17, 918731, 918792), (19, 521284, 521345), (19, 651605, 651666), (19, 781926, 781987), (19, 912247, 912308), (23, 559682, 559743), (23, 839523, 839584), (29, 707281, 707342), (37, 506530, 506591), (37, 557183, 557244), (37, 607836, 607897), (37, 658489, 658550), (37, 709142, 709203), (37, 759795, 759856), (37, 810448, 810509), (37, 861101, 861162), (37, 911754, 911815), (37, 962407, 962468), (41, 551368, 551429), (41, 620289, 620350), (41, 689210, 689271), (41, 758131, 758192), (41, 827052, 827113), (41, 895973, 896034), (41, 964894, 964955), (43, 556549, 556610), (43, 636056, 636117), (43, 715563, 715624), (43, 795070, 795131), (43, 874577, 874638), (43, 954084, 954145), (47, 519115, 519176), (47, 622938, 622999), (47, 726761, 726822), (47, 830584, 830645), (47, 934407, 934468), (53, 595508, 595569), (53, 744385, 744446), (53, 893262, 893323), (59, 616137, 616198), (59, 821516, 821577), (61, 680943, 681004), (61, 907924, 907985)]

def row062_layer007_block000 : List ColouredInterval :=
  [(2, 524288, 524349), (2, 589824, 589885), (2, 524288, 524349), (2, 655360, 655421), (2, 786432, 786493), (2, 917504, 917565), (2, 524288, 524349), (2, 786432, 786493), (2, 524288, 524349), (3, 531441, 531502), (3, 590490, 590551), (3, 649539, 649600), (3, 708588, 708649), (3, 767637, 767698), (3, 826686, 826747), (3, 885735, 885796)]

def row062_layer007_block001 : List ColouredInterval :=
  [(3, 944784, 944845), (3, 531441, 531502), (3, 708588, 708649), (3, 885735, 885796), (3, 531441, 531502), (5, 546875, 546936), (5, 625000, 625061), (5, 703125, 703186), (5, 781250, 781311), (5, 859375, 859436), (5, 937500, 937561), (5, 781250, 781311), (7, 588245, 588306), (7, 705894, 705955), (7, 823543, 823604), (7, 941192, 941253)]

def row062_layer007_block002 : List ColouredInterval :=
  [(7, 823543, 823604), (11, 644204, 644265), (11, 805255, 805316), (11, 966306, 966367), (13, 485537, 485598), (13, 514098, 514159), (13, 542659, 542720), (13, 742586, 742647), (17, 501126, 501187), (17, 584647, 584708), (17, 668168, 668229), (17, 751689, 751750), (17, 835210, 835271), (17, 918731, 918792), (19, 521284, 521345), (19, 651605, 651666)]

def row062_layer007_block003 : List ColouredInterval :=
  [(19, 781926, 781987), (19, 912247, 912308), (23, 559682, 559743), (23, 839523, 839584), (29, 707281, 707342), (37, 506530, 506591), (37, 557183, 557244), (37, 607836, 607897), (37, 658489, 658550), (37, 709142, 709203), (37, 759795, 759856), (37, 810448, 810509), (37, 861101, 861162), (37, 911754, 911815), (37, 962407, 962468), (41, 551368, 551429)]

def row062_layer007_block004 : List ColouredInterval :=
  [(41, 620289, 620350), (41, 689210, 689271), (41, 758131, 758192), (41, 827052, 827113), (41, 895973, 896034), (41, 964894, 964955), (43, 556549, 556610), (43, 636056, 636117), (43, 715563, 715624), (43, 795070, 795131), (43, 874577, 874638), (43, 954084, 954145), (47, 519115, 519176), (47, 622938, 622999), (47, 726761, 726822), (47, 830584, 830645)]

def row062_layer007_block005 : List ColouredInterval :=
  [(47, 934407, 934468), (53, 595508, 595569), (53, 744385, 744446), (53, 893262, 893323), (59, 616137, 616198), (59, 821516, 821577), (61, 680943, 681004), (61, 907924, 907985)]

def row062_layer007_chunks : List (List ColouredInterval) :=
  [row062_layer007_block000, row062_layer007_block001, row062_layer007_block002, row062_layer007_block003, row062_layer007_block004, row062_layer007_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_arithmetic : LayerArithmeticValid row062.height { lower := 484096, upper := 968192, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row062_layer007_enumeration :
    activePowerIntervalList 62 19 484096 968192 = row062_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row062_layer007_enumeration
