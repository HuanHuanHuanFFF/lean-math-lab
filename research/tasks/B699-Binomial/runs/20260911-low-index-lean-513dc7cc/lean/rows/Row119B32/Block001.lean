import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row119B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs008 :
    row119_layer000_block008.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs009 :
    row119_layer000_block009.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs010 :
    row119_layer000_block010.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_pairs011 :
    row119_layer000_block011.all (fun I => row119_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_chunks_eq : row119_layer000_chunks.flatten = row119_layer000_intervals := by
  rfl

theorem row119_layer000_pairs : pairCoverCheck row119_layer000_intervals row119_bounds = true := by
  apply pairCoverCheck_of_chunks row119_layer000_chunks_eq
  intro block hblock
  simp only [row119_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row119_layer000_pairs000
  · exact row119_layer000_pairs001
  · exact row119_layer000_pairs002
  · exact row119_layer000_pairs003
  · exact row119_layer000_pairs004
  · exact row119_layer000_pairs005
  · exact row119_layer000_pairs006
  · exact row119_layer000_pairs007
  · exact row119_layer000_pairs008
  · exact row119_layer000_pairs009
  · exact row119_layer000_pairs010
  · exact row119_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer000_checked :
    coverLayerCheck row119.height row119.goods { lower := 14042, upper := 28084, M := 23 } = true := by
  exact coverLayerCheck_of_parts row119_layer000_arithmetic row119_layer000_enumeration row119_bounds_eq row119_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row119_layer001_intervals : List ColouredInterval :=
  [(2, 28672, 28790), (2, 30720, 30838), (2, 32768, 32886), (2, 34816, 34934), (2, 36864, 36982), (2, 38912, 39030), (2, 28672, 28790), (2, 32768, 32886), (2, 36864, 36982), (2, 40960, 41078), (2, 45056, 45174), (2, 49152, 49270), (2, 53248, 53366), (2, 32768, 32886), (2, 40960, 41078), (2, 49152, 49270), (2, 32768, 32886), (2, 49152, 49270), (2, 32768, 32886), (3, 28431, 28549), (3, 30618, 30736), (3, 32805, 32923), (3, 34992, 35110), (3, 37179, 37297), (3, 39366, 39484), (3, 41553, 41671), (3, 32805, 32923), (3, 39366, 39484), (3, 45927, 46045), (3, 52488, 52606), (3, 39366, 39484), (5, 28125, 28243), (5, 31250, 31368), (5, 34375, 34493), (5, 37500, 37618), (5, 40625, 40743), (5, 43750, 43868), (5, 46875, 46993), (5, 50000, 50118), (5, 53125, 53243), (5, 31250, 31368), (5, 46875, 46993), (7, 33614, 33732), (11, 29282, 29400), (11, 43923, 44041), (13, 28561, 28679), (13, 30758, 30876), (13, 32955, 33073), (13, 35152, 35270), (13, 37349, 37467), (13, 39546, 39664), (13, 41743, 41861), (13, 28561, 28679), (19, 34295, 34413), (19, 41154, 41272), (19, 48013, 48131), (19, 54872, 54990), (23, 36501, 36619), (23, 48668, 48786), (29, 48778, 48896), (31, 29791, 29909), (37, 50653, 50771), (41, 28577, 28695), (41, 30258, 30376), (41, 31939, 32057), (43, 29584, 29702), (43, 31433, 31551), (43, 33282, 33400), (43, 35131, 35249), (47, 28717, 28835), (47, 30926, 31044), (47, 33135, 33253), (47, 35344, 35462), (47, 37553, 37671), (47, 39762, 39880), (47, 41971, 42089), (53, 28090, 28208), (53, 30899, 31017), (53, 33708, 33826), (53, 36517, 36635), (53, 39326, 39444), (53, 42135, 42253), (53, 44944, 45062), (53, 47753, 47871), (53, 50562, 50680), (53, 53371, 53489), (59, 31329, 31447), (59, 34810, 34928), (59, 38291, 38409), (59, 41772, 41890), (59, 45253, 45371), (59, 48734, 48852), (59, 52215, 52333), (59, 55696, 55814), (61, 29768, 29886), (61, 33489, 33607), (61, 37210, 37328), (61, 40931, 41049), (61, 44652, 44770), (61, 48373, 48491), (61, 52094, 52212), (61, 55815, 55933), (67, 31423, 31541), (67, 35912, 36030), (67, 40401, 40519), (67, 44890, 45008), (67, 49379, 49497), (67, 53868, 53986), (71, 30246, 30364), (71, 35287, 35405), (71, 40328, 40446), (71, 45369, 45487), (71, 50410, 50528), (71, 55451, 55569), (73, 31974, 32092), (73, 37303, 37421), (73, 42632, 42750), (73, 47961, 48079), (73, 53290, 53408), (79, 31205, 31323), (79, 37446, 37564), (79, 43687, 43805), (79, 49928, 50046), (83, 34445, 34563), (83, 41334, 41452), (83, 48223, 48341), (83, 55112, 55230), (89, 31684, 31802), (89, 39605, 39723), (89, 47526, 47644), (89, 55447, 55565), (97, 28227, 28345), (97, 37636, 37754), (97, 47045, 47163), (101, 30603, 30721), (101, 40804, 40922), (101, 51005, 51123), (103, 31827, 31945), (103, 42436, 42554), (103, 53045, 53163), (107, 34347, 34465), (107, 45796, 45914), (109, 35643, 35761), (109, 47524, 47642), (113, 38307, 38425), (113, 51076, 51194)]

def row119_layer001_block000 : List ColouredInterval :=
  [(2, 28672, 28790), (2, 30720, 30838), (2, 32768, 32886), (2, 34816, 34934), (2, 36864, 36982), (2, 38912, 39030), (2, 28672, 28790), (2, 32768, 32886), (2, 36864, 36982), (2, 40960, 41078), (2, 45056, 45174), (2, 49152, 49270), (2, 53248, 53366), (2, 32768, 32886)]

def row119_layer001_block001 : List ColouredInterval :=
  [(2, 40960, 41078), (2, 49152, 49270), (2, 32768, 32886), (2, 49152, 49270), (2, 32768, 32886), (3, 28431, 28549), (3, 30618, 30736), (3, 32805, 32923), (3, 34992, 35110), (3, 37179, 37297), (3, 39366, 39484), (3, 41553, 41671), (3, 32805, 32923), (3, 39366, 39484)]

def row119_layer001_block002 : List ColouredInterval :=
  [(3, 45927, 46045), (3, 52488, 52606), (3, 39366, 39484), (5, 28125, 28243), (5, 31250, 31368), (5, 34375, 34493), (5, 37500, 37618), (5, 40625, 40743), (5, 43750, 43868), (5, 46875, 46993), (5, 50000, 50118), (5, 53125, 53243), (5, 31250, 31368), (5, 46875, 46993)]

def row119_layer001_block003 : List ColouredInterval :=
  [(7, 33614, 33732), (11, 29282, 29400), (11, 43923, 44041), (13, 28561, 28679), (13, 30758, 30876), (13, 32955, 33073), (13, 35152, 35270), (13, 37349, 37467), (13, 39546, 39664), (13, 41743, 41861), (13, 28561, 28679), (19, 34295, 34413), (19, 41154, 41272), (19, 48013, 48131)]

def row119_layer001_block004 : List ColouredInterval :=
  [(19, 54872, 54990), (23, 36501, 36619), (23, 48668, 48786), (29, 48778, 48896), (31, 29791, 29909), (37, 50653, 50771), (41, 28577, 28695), (41, 30258, 30376), (41, 31939, 32057), (43, 29584, 29702), (43, 31433, 31551), (43, 33282, 33400), (43, 35131, 35249), (47, 28717, 28835)]

def row119_layer001_block005 : List ColouredInterval :=
  [(47, 30926, 31044), (47, 33135, 33253), (47, 35344, 35462), (47, 37553, 37671), (47, 39762, 39880), (47, 41971, 42089), (53, 28090, 28208), (53, 30899, 31017), (53, 33708, 33826), (53, 36517, 36635), (53, 39326, 39444), (53, 42135, 42253), (53, 44944, 45062), (53, 47753, 47871)]

def row119_layer001_block006 : List ColouredInterval :=
  [(53, 50562, 50680), (53, 53371, 53489), (59, 31329, 31447), (59, 34810, 34928), (59, 38291, 38409), (59, 41772, 41890), (59, 45253, 45371), (59, 48734, 48852), (59, 52215, 52333), (59, 55696, 55814), (61, 29768, 29886), (61, 33489, 33607), (61, 37210, 37328), (61, 40931, 41049)]

def row119_layer001_block007 : List ColouredInterval :=
  [(61, 44652, 44770), (61, 48373, 48491), (61, 52094, 52212), (61, 55815, 55933), (67, 31423, 31541), (67, 35912, 36030), (67, 40401, 40519), (67, 44890, 45008), (67, 49379, 49497), (67, 53868, 53986), (71, 30246, 30364), (71, 35287, 35405), (71, 40328, 40446), (71, 45369, 45487)]

def row119_layer001_block008 : List ColouredInterval :=
  [(71, 50410, 50528), (71, 55451, 55569), (73, 31974, 32092), (73, 37303, 37421), (73, 42632, 42750), (73, 47961, 48079), (73, 53290, 53408), (79, 31205, 31323), (79, 37446, 37564), (79, 43687, 43805), (79, 49928, 50046), (83, 34445, 34563), (83, 41334, 41452), (83, 48223, 48341)]

def row119_layer001_block009 : List ColouredInterval :=
  [(83, 55112, 55230), (89, 31684, 31802), (89, 39605, 39723), (89, 47526, 47644), (89, 55447, 55565), (97, 28227, 28345), (97, 37636, 37754), (97, 47045, 47163), (101, 30603, 30721), (101, 40804, 40922), (101, 51005, 51123), (103, 31827, 31945), (103, 42436, 42554), (103, 53045, 53163)]

def row119_layer001_block010 : List ColouredInterval :=
  [(107, 34347, 34465), (107, 45796, 45914), (109, 35643, 35761), (109, 47524, 47642), (113, 38307, 38425), (113, 51076, 51194)]

def row119_layer001_chunks : List (List ColouredInterval) :=
  [row119_layer001_block000, row119_layer001_block001, row119_layer001_block002, row119_layer001_block003, row119_layer001_block004, row119_layer001_block005, row119_layer001_block006, row119_layer001_block007, row119_layer001_block008, row119_layer001_block009, row119_layer001_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_arithmetic : LayerArithmeticValid row119.height { lower := 28084, upper := 56168, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_enumeration :
    activePowerIntervalList 119 19 28084 56168 = row119_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs000 :
    row119_layer001_block000.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs001 :
    row119_layer001_block001.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs002 :
    row119_layer001_block002.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs003 :
    row119_layer001_block003.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs004 :
    row119_layer001_block004.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs005 :
    row119_layer001_block005.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs006 :
    row119_layer001_block006.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs007 :
    row119_layer001_block007.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs008 :
    row119_layer001_block008.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs009 :
    row119_layer001_block009.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_pairs010 :
    row119_layer001_block010.all (fun I => row119_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_chunks_eq : row119_layer001_chunks.flatten = row119_layer001_intervals := by
  rfl

theorem row119_layer001_pairs : pairCoverCheck row119_layer001_intervals row119_bounds = true := by
  apply pairCoverCheck_of_chunks row119_layer001_chunks_eq
  intro block hblock
  simp only [row119_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row119_layer001_pairs000
  · exact row119_layer001_pairs001
  · exact row119_layer001_pairs002
  · exact row119_layer001_pairs003
  · exact row119_layer001_pairs004
  · exact row119_layer001_pairs005
  · exact row119_layer001_pairs006
  · exact row119_layer001_pairs007
  · exact row119_layer001_pairs008
  · exact row119_layer001_pairs009
  · exact row119_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer001_checked :
    coverLayerCheck row119.height row119.goods { lower := 28084, upper := 56168, M := 19 } = true := by
  exact coverLayerCheck_of_parts row119_layer001_arithmetic row119_layer001_enumeration row119_bounds_eq row119_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row119_layer002_intervals : List ColouredInterval :=
  [(2, 57344, 57462), (2, 61440, 61558), (2, 57344, 57462), (2, 65536, 65654), (2, 73728, 73846), (2, 81920, 82038), (2, 90112, 90230), (2, 98304, 98422), (2, 106496, 106614), (2, 65536, 65654), (2, 81920, 82038), (2, 98304, 98422), (2, 65536, 65654), (2, 98304, 98422), (2, 65536, 65654), (3, 59049, 59167), (3, 65610, 65728), (3, 72171, 72289), (3, 78732, 78850), (3, 85293, 85411), (3, 91854, 91972), (3, 98415, 98533), (3, 59049, 59167), (3, 78732, 78850), (3, 98415, 98533), (3, 59049, 59167), (5, 62500, 62618), (5, 78125, 78243), (5, 93750, 93868), (5, 109375, 109493), (5, 78125, 78243), (11, 58564, 58682), (11, 73205, 73323), (11, 87846, 87964), (11, 102487, 102605), (13, 57122, 57240), (13, 85683, 85801), (19, 61731, 61849), (19, 68590, 68708), (19, 75449, 75567), (19, 82308, 82426), (19, 89167, 89285), (19, 96026, 96144), (19, 102885, 103003), (23, 60835, 60953), (23, 73002, 73120), (23, 85169, 85287), (23, 97336, 97454), (23, 109503, 109621), (29, 73167, 73285), (29, 97556, 97674), (31, 59582, 59700), (31, 89373, 89491), (37, 101306, 101424), (41, 68921, 69039), (43, 79507, 79625), (47, 103823, 103941), (67, 58357, 58475), (67, 62846, 62964), (67, 67335, 67453), (71, 60492, 60610), (71, 65533, 65651), (71, 70574, 70692), (71, 75615, 75733), (73, 58619, 58737), (73, 63948, 64066), (73, 69277, 69395), (73, 74606, 74724), (73, 79935, 80053), (79, 56169, 56287), (79, 62410, 62528), (79, 68651, 68769), (79, 74892, 75010), (79, 81133, 81251), (79, 87374, 87492), (79, 93615, 93733), (83, 62001, 62119), (83, 68890, 69008), (83, 75779, 75897), (83, 82668, 82786), (83, 89557, 89675), (83, 96446, 96564), (83, 103335, 103453), (89, 63368, 63486), (89, 71289, 71407), (89, 79210, 79328), (89, 87131, 87249), (89, 95052, 95170), (89, 102973, 103091), (89, 110894, 111012), (97, 56454, 56572), (97, 65863, 65981), (97, 75272, 75390), (97, 84681, 84799), (97, 94090, 94208), (97, 103499, 103617), (101, 61206, 61324), (101, 71407, 71525), (101, 81608, 81726), (101, 91809, 91927), (101, 102010, 102128), (101, 112211, 112329), (103, 63654, 63772), (103, 74263, 74381), (103, 84872, 84990), (103, 95481, 95599), (103, 106090, 106208), (107, 57245, 57363), (107, 68694, 68812), (107, 80143, 80261), (107, 91592, 91710), (107, 103041, 103159), (109, 59405, 59523), (109, 71286, 71404), (109, 83167, 83285), (109, 95048, 95166), (109, 106929, 107047), (113, 63845, 63963), (113, 76614, 76732), (113, 89383, 89501), (113, 102152, 102270)]

def row119_layer002_block000 : List ColouredInterval :=
  [(2, 57344, 57462), (2, 61440, 61558), (2, 57344, 57462), (2, 65536, 65654), (2, 73728, 73846), (2, 81920, 82038), (2, 90112, 90230), (2, 98304, 98422), (2, 106496, 106614), (2, 65536, 65654), (2, 81920, 82038), (2, 98304, 98422), (2, 65536, 65654), (2, 98304, 98422), (2, 65536, 65654), (3, 59049, 59167)]

def row119_layer002_block001 : List ColouredInterval :=
  [(3, 65610, 65728), (3, 72171, 72289), (3, 78732, 78850), (3, 85293, 85411), (3, 91854, 91972), (3, 98415, 98533), (3, 59049, 59167), (3, 78732, 78850), (3, 98415, 98533), (3, 59049, 59167), (5, 62500, 62618), (5, 78125, 78243), (5, 93750, 93868), (5, 109375, 109493), (5, 78125, 78243), (11, 58564, 58682)]

def row119_layer002_block002 : List ColouredInterval :=
  [(11, 73205, 73323), (11, 87846, 87964), (11, 102487, 102605), (13, 57122, 57240), (13, 85683, 85801), (19, 61731, 61849), (19, 68590, 68708), (19, 75449, 75567), (19, 82308, 82426), (19, 89167, 89285), (19, 96026, 96144), (19, 102885, 103003), (23, 60835, 60953), (23, 73002, 73120), (23, 85169, 85287), (23, 97336, 97454)]

def row119_layer002_block003 : List ColouredInterval :=
  [(23, 109503, 109621), (29, 73167, 73285), (29, 97556, 97674), (31, 59582, 59700), (31, 89373, 89491), (37, 101306, 101424), (41, 68921, 69039), (43, 79507, 79625), (47, 103823, 103941), (67, 58357, 58475), (67, 62846, 62964), (67, 67335, 67453), (71, 60492, 60610), (71, 65533, 65651), (71, 70574, 70692), (71, 75615, 75733)]

def row119_layer002_block004 : List ColouredInterval :=
  [(73, 58619, 58737), (73, 63948, 64066), (73, 69277, 69395), (73, 74606, 74724), (73, 79935, 80053), (79, 56169, 56287), (79, 62410, 62528), (79, 68651, 68769), (79, 74892, 75010), (79, 81133, 81251), (79, 87374, 87492), (79, 93615, 93733), (83, 62001, 62119), (83, 68890, 69008), (83, 75779, 75897), (83, 82668, 82786)]

def row119_layer002_block005 : List ColouredInterval :=
  [(83, 89557, 89675), (83, 96446, 96564), (83, 103335, 103453), (89, 63368, 63486), (89, 71289, 71407), (89, 79210, 79328), (89, 87131, 87249), (89, 95052, 95170), (89, 102973, 103091), (89, 110894, 111012), (97, 56454, 56572), (97, 65863, 65981), (97, 75272, 75390), (97, 84681, 84799), (97, 94090, 94208), (97, 103499, 103617)]

def row119_layer002_block006 : List ColouredInterval :=
  [(101, 61206, 61324), (101, 71407, 71525), (101, 81608, 81726), (101, 91809, 91927), (101, 102010, 102128), (101, 112211, 112329), (103, 63654, 63772), (103, 74263, 74381), (103, 84872, 84990), (103, 95481, 95599), (103, 106090, 106208), (107, 57245, 57363), (107, 68694, 68812), (107, 80143, 80261), (107, 91592, 91710), (107, 103041, 103159)]

def row119_layer002_block007 : List ColouredInterval :=
  [(109, 59405, 59523), (109, 71286, 71404), (109, 83167, 83285), (109, 95048, 95166), (109, 106929, 107047), (113, 63845, 63963), (113, 76614, 76732), (113, 89383, 89501), (113, 102152, 102270)]

def row119_layer002_chunks : List (List ColouredInterval) :=
  [row119_layer002_block000, row119_layer002_block001, row119_layer002_block002, row119_layer002_block003, row119_layer002_block004, row119_layer002_block005, row119_layer002_block006, row119_layer002_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_arithmetic : LayerArithmeticValid row119.height { lower := 56168, upper := 112336, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_enumeration :
    activePowerIntervalList 119 15 56168 112336 = row119_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs000 :
    row119_layer002_block000.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs001 :
    row119_layer002_block001.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs002 :
    row119_layer002_block002.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs003 :
    row119_layer002_block003.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs004 :
    row119_layer002_block004.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs005 :
    row119_layer002_block005.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row119_layer002_pairs006 :
    row119_layer002_block006.all (fun I => row119_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row119_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row119_layer002_pairs006
