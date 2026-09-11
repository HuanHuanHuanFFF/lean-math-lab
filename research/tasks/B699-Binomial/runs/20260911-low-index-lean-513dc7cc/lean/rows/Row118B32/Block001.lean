import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row118B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs007 :
    row118_layer000_block007.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs008 :
    row118_layer000_block008.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs009 :
    row118_layer000_block009.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs010 :
    row118_layer000_block010.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_pairs011 :
    row118_layer000_block011.all (fun I => row118_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_chunks_eq : row118_layer000_chunks.flatten = row118_layer000_intervals := by
  rfl

theorem row118_layer000_pairs : pairCoverCheck row118_layer000_intervals row118_bounds = true := by
  apply pairCoverCheck_of_chunks row118_layer000_chunks_eq
  intro block hblock
  simp only [row118_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row118_layer000_pairs000
  · exact row118_layer000_pairs001
  · exact row118_layer000_pairs002
  · exact row118_layer000_pairs003
  · exact row118_layer000_pairs004
  · exact row118_layer000_pairs005
  · exact row118_layer000_pairs006
  · exact row118_layer000_pairs007
  · exact row118_layer000_pairs008
  · exact row118_layer000_pairs009
  · exact row118_layer000_pairs010
  · exact row118_layer000_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer000_checked :
    coverLayerCheck row118.height row118.goods { lower := 13806, upper := 27612, M := 24 } = true := by
  exact coverLayerCheck_of_parts row118_layer000_arithmetic row118_layer000_enumeration row118_bounds_eq row118_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row118_layer001_intervals : List ColouredInterval :=
  [(2, 28672, 28789), (2, 32768, 32885), (2, 36864, 36981), (2, 40960, 41077), (2, 32768, 32885), (2, 40960, 41077), (2, 49152, 49269), (2, 32768, 32885), (2, 49152, 49269), (2, 32768, 32885), (3, 28431, 28548), (3, 30618, 30735), (3, 32805, 32922), (3, 34992, 35109), (3, 37179, 37296), (3, 39366, 39483), (3, 41553, 41670), (3, 43740, 43857), (3, 32805, 32922), (3, 39366, 39483), (3, 45927, 46044), (3, 52488, 52605), (3, 39366, 39483), (5, 28125, 28242), (5, 31250, 31367), (5, 34375, 34492), (5, 37500, 37617), (5, 40625, 40742), (5, 43750, 43867), (5, 46875, 46992), (5, 50000, 50117), (5, 53125, 53242), (5, 31250, 31367), (5, 46875, 46992), (7, 28812, 28929), (7, 31213, 31330), (7, 33614, 33731), (7, 36015, 36132), (7, 38416, 38533), (7, 40817, 40934), (7, 43218, 43335), (7, 45619, 45736), (7, 48020, 48137), (7, 33614, 33731), (7, 50421, 50538), (11, 29282, 29399), (11, 43923, 44040), (13, 28561, 28678), (13, 30758, 30875), (13, 32955, 33072), (13, 35152, 35269), (13, 37349, 37466), (13, 39546, 39663), (13, 41743, 41860), (13, 43940, 44057), (13, 28561, 28678), (17, 29478, 29595), (17, 34391, 34508), (17, 39304, 39421), (17, 44217, 44334), (17, 49130, 49247), (17, 54043, 54160), (19, 34295, 34412), (19, 41154, 41271), (19, 48013, 48130), (19, 54872, 54989), (23, 36501, 36618), (23, 48668, 48785), (29, 48778, 48895), (31, 29791, 29908), (37, 50653, 50770), (41, 28577, 28694), (41, 30258, 30375), (41, 31939, 32056), (41, 33620, 33737), (43, 27735, 27852), (43, 29584, 29701), (43, 31433, 31550), (43, 33282, 33399), (43, 35131, 35248), (43, 36980, 37097), (47, 28717, 28834), (47, 30926, 31043), (47, 33135, 33252), (47, 35344, 35461), (47, 37553, 37670), (47, 39762, 39879), (47, 41971, 42088), (47, 44180, 44297), (53, 28090, 28207), (53, 30899, 31016), (53, 33708, 33825), (53, 36517, 36634), (53, 39326, 39443), (53, 42135, 42252), (53, 44944, 45061), (53, 47753, 47870), (53, 50562, 50679), (53, 53371, 53488), (61, 29768, 29885), (61, 33489, 33606), (61, 37210, 37327), (61, 40931, 41048), (61, 44652, 44769), (61, 48373, 48490), (61, 52094, 52211), (67, 31423, 31540), (67, 35912, 36029), (67, 40401, 40518), (67, 44890, 45007), (67, 49379, 49496), (67, 53868, 53985), (71, 30246, 30363), (71, 35287, 35404), (71, 40328, 40445), (71, 45369, 45486), (71, 50410, 50527), (73, 31974, 32091), (73, 37303, 37420), (73, 42632, 42749), (73, 47961, 48078), (73, 53290, 53407), (79, 31205, 31322), (79, 37446, 37563), (79, 43687, 43804), (79, 49928, 50045), (83, 27612, 27673), (83, 34445, 34562), (83, 41334, 41451), (83, 48223, 48340), (83, 55112, 55223), (89, 31684, 31801), (89, 39605, 39722), (89, 47526, 47643), (97, 28227, 28344), (97, 37636, 37753), (97, 47045, 47162), (101, 30603, 30720), (101, 40804, 40921), (101, 51005, 51122), (103, 31827, 31944), (103, 42436, 42553), (103, 53045, 53162), (107, 34347, 34464), (107, 45796, 45913), (109, 35643, 35760), (109, 47524, 47641), (113, 38307, 38424), (113, 51076, 51193)]

def row118_layer001_block000 : List ColouredInterval :=
  [(2, 28672, 28789), (2, 32768, 32885), (2, 36864, 36981), (2, 40960, 41077), (2, 32768, 32885), (2, 40960, 41077), (2, 49152, 49269), (2, 32768, 32885), (2, 49152, 49269), (2, 32768, 32885), (3, 28431, 28548), (3, 30618, 30735), (3, 32805, 32922)]

def row118_layer001_block001 : List ColouredInterval :=
  [(3, 34992, 35109), (3, 37179, 37296), (3, 39366, 39483), (3, 41553, 41670), (3, 43740, 43857), (3, 32805, 32922), (3, 39366, 39483), (3, 45927, 46044), (3, 52488, 52605), (3, 39366, 39483), (5, 28125, 28242), (5, 31250, 31367), (5, 34375, 34492)]

def row118_layer001_block002 : List ColouredInterval :=
  [(5, 37500, 37617), (5, 40625, 40742), (5, 43750, 43867), (5, 46875, 46992), (5, 50000, 50117), (5, 53125, 53242), (5, 31250, 31367), (5, 46875, 46992), (7, 28812, 28929), (7, 31213, 31330), (7, 33614, 33731), (7, 36015, 36132), (7, 38416, 38533)]

def row118_layer001_block003 : List ColouredInterval :=
  [(7, 40817, 40934), (7, 43218, 43335), (7, 45619, 45736), (7, 48020, 48137), (7, 33614, 33731), (7, 50421, 50538), (11, 29282, 29399), (11, 43923, 44040), (13, 28561, 28678), (13, 30758, 30875), (13, 32955, 33072), (13, 35152, 35269), (13, 37349, 37466)]

def row118_layer001_block004 : List ColouredInterval :=
  [(13, 39546, 39663), (13, 41743, 41860), (13, 43940, 44057), (13, 28561, 28678), (17, 29478, 29595), (17, 34391, 34508), (17, 39304, 39421), (17, 44217, 44334), (17, 49130, 49247), (17, 54043, 54160), (19, 34295, 34412), (19, 41154, 41271), (19, 48013, 48130)]

def row118_layer001_block005 : List ColouredInterval :=
  [(19, 54872, 54989), (23, 36501, 36618), (23, 48668, 48785), (29, 48778, 48895), (31, 29791, 29908), (37, 50653, 50770), (41, 28577, 28694), (41, 30258, 30375), (41, 31939, 32056), (41, 33620, 33737), (43, 27735, 27852), (43, 29584, 29701), (43, 31433, 31550)]

def row118_layer001_block006 : List ColouredInterval :=
  [(43, 33282, 33399), (43, 35131, 35248), (43, 36980, 37097), (47, 28717, 28834), (47, 30926, 31043), (47, 33135, 33252), (47, 35344, 35461), (47, 37553, 37670), (47, 39762, 39879), (47, 41971, 42088), (47, 44180, 44297), (53, 28090, 28207), (53, 30899, 31016)]

def row118_layer001_block007 : List ColouredInterval :=
  [(53, 33708, 33825), (53, 36517, 36634), (53, 39326, 39443), (53, 42135, 42252), (53, 44944, 45061), (53, 47753, 47870), (53, 50562, 50679), (53, 53371, 53488), (61, 29768, 29885), (61, 33489, 33606), (61, 37210, 37327), (61, 40931, 41048), (61, 44652, 44769)]

def row118_layer001_block008 : List ColouredInterval :=
  [(61, 48373, 48490), (61, 52094, 52211), (67, 31423, 31540), (67, 35912, 36029), (67, 40401, 40518), (67, 44890, 45007), (67, 49379, 49496), (67, 53868, 53985), (71, 30246, 30363), (71, 35287, 35404), (71, 40328, 40445), (71, 45369, 45486), (71, 50410, 50527)]

def row118_layer001_block009 : List ColouredInterval :=
  [(73, 31974, 32091), (73, 37303, 37420), (73, 42632, 42749), (73, 47961, 48078), (73, 53290, 53407), (79, 31205, 31322), (79, 37446, 37563), (79, 43687, 43804), (79, 49928, 50045), (83, 27612, 27673), (83, 34445, 34562), (83, 41334, 41451), (83, 48223, 48340)]

def row118_layer001_block010 : List ColouredInterval :=
  [(83, 55112, 55223), (89, 31684, 31801), (89, 39605, 39722), (89, 47526, 47643), (97, 28227, 28344), (97, 37636, 37753), (97, 47045, 47162), (101, 30603, 30720), (101, 40804, 40921), (101, 51005, 51122), (103, 31827, 31944), (103, 42436, 42553), (103, 53045, 53162)]

def row118_layer001_block011 : List ColouredInterval :=
  [(107, 34347, 34464), (107, 45796, 45913), (109, 35643, 35760), (109, 47524, 47641), (113, 38307, 38424), (113, 51076, 51193)]

def row118_layer001_chunks : List (List ColouredInterval) :=
  [row118_layer001_block000, row118_layer001_block001, row118_layer001_block002, row118_layer001_block003, row118_layer001_block004, row118_layer001_block005, row118_layer001_block006, row118_layer001_block007, row118_layer001_block008, row118_layer001_block009, row118_layer001_block010, row118_layer001_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_arithmetic : LayerArithmeticValid row118.height { lower := 27612, upper := 55224, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_enumeration :
    activePowerIntervalList 118 20 27612 55224 = row118_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs000 :
    row118_layer001_block000.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs001 :
    row118_layer001_block001.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs002 :
    row118_layer001_block002.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs003 :
    row118_layer001_block003.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs004 :
    row118_layer001_block004.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs005 :
    row118_layer001_block005.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs006 :
    row118_layer001_block006.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs007 :
    row118_layer001_block007.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs008 :
    row118_layer001_block008.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs009 :
    row118_layer001_block009.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs010 :
    row118_layer001_block010.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_pairs011 :
    row118_layer001_block011.all (fun I => row118_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_chunks_eq : row118_layer001_chunks.flatten = row118_layer001_intervals := by
  rfl

theorem row118_layer001_pairs : pairCoverCheck row118_layer001_intervals row118_bounds = true := by
  apply pairCoverCheck_of_chunks row118_layer001_chunks_eq
  intro block hblock
  simp only [row118_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row118_layer001_pairs000
  · exact row118_layer001_pairs001
  · exact row118_layer001_pairs002
  · exact row118_layer001_pairs003
  · exact row118_layer001_pairs004
  · exact row118_layer001_pairs005
  · exact row118_layer001_pairs006
  · exact row118_layer001_pairs007
  · exact row118_layer001_pairs008
  · exact row118_layer001_pairs009
  · exact row118_layer001_pairs010
  · exact row118_layer001_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer001_checked :
    coverLayerCheck row118.height row118.goods { lower := 27612, upper := 55224, M := 20 } = true := by
  exact coverLayerCheck_of_parts row118_layer001_arithmetic row118_layer001_enumeration row118_bounds_eq row118_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row118_layer002_intervals : List ColouredInterval :=
  [(2, 57344, 57461), (2, 65536, 65653), (2, 65536, 65653), (2, 81920, 82037), (2, 98304, 98421), (2, 65536, 65653), (2, 98304, 98421), (2, 65536, 65653), (3, 59049, 59166), (3, 65610, 65727), (3, 72171, 72288), (3, 78732, 78849), (3, 85293, 85410), (3, 91854, 91971), (3, 98415, 98532), (3, 104976, 105093), (3, 59049, 59166), (3, 78732, 78849), (3, 98415, 98532), (3, 59049, 59166), (5, 62500, 62617), (5, 78125, 78242), (5, 93750, 93867), (5, 109375, 109492), (5, 78125, 78242), (7, 67228, 67345), (7, 84035, 84152), (7, 100842, 100959), (11, 58564, 58681), (11, 73205, 73322), (11, 87846, 87963), (11, 102487, 102604), (13, 57122, 57239), (13, 85683, 85800), (17, 58956, 59073), (17, 63869, 63986), (17, 68782, 68899), (17, 73695, 73812), (17, 78608, 78725), (17, 83521, 83638), (19, 61731, 61848), (19, 68590, 68707), (19, 75449, 75566), (19, 82308, 82425), (19, 89167, 89284), (19, 96026, 96143), (19, 102885, 103002), (19, 109744, 109861), (23, 60835, 60952), (23, 73002, 73119), (23, 85169, 85286), (23, 97336, 97453), (23, 109503, 109620), (29, 73167, 73284), (29, 97556, 97673), (31, 59582, 59699), (31, 89373, 89490), (37, 101306, 101423), (41, 68921, 69038), (43, 79507, 79624), (47, 103823, 103940), (61, 55815, 55932), (61, 59536, 59653), (67, 58357, 58474), (67, 62846, 62963), (67, 67335, 67452), (67, 71824, 71941), (71, 55451, 55568), (71, 60492, 60609), (71, 65533, 65650), (71, 70574, 70691), (71, 75615, 75732), (71, 80656, 80773), (73, 58619, 58736), (73, 63948, 64065), (73, 69277, 69394), (73, 74606, 74723), (73, 79935, 80052), (73, 85264, 85381), (79, 56169, 56286), (79, 62410, 62527), (79, 68651, 68768), (79, 74892, 75009), (79, 81133, 81250), (79, 87374, 87491), (79, 93615, 93732), (79, 99856, 99973), (83, 55224, 55229), (83, 62001, 62118), (83, 68890, 69007), (83, 75779, 75896), (83, 82668, 82785), (83, 89557, 89674), (83, 96446, 96563), (83, 103335, 103452), (83, 110224, 110341), (89, 55447, 55564), (89, 63368, 63485), (89, 71289, 71406), (89, 79210, 79327), (89, 87131, 87248), (89, 95052, 95169), (89, 102973, 103090), (97, 56454, 56571), (97, 65863, 65980), (97, 75272, 75389), (97, 84681, 84798), (97, 94090, 94207), (97, 103499, 103616), (101, 61206, 61323), (101, 71407, 71524), (101, 81608, 81725), (101, 91809, 91926), (101, 102010, 102127), (103, 63654, 63771), (103, 74263, 74380), (103, 84872, 84989), (103, 95481, 95598), (103, 106090, 106207), (107, 57245, 57362), (107, 68694, 68811), (107, 80143, 80260), (107, 91592, 91709), (107, 103041, 103158), (109, 59405, 59522), (109, 71286, 71403), (109, 83167, 83284), (109, 95048, 95165), (109, 106929, 107046), (113, 63845, 63962), (113, 76614, 76731), (113, 89383, 89500), (113, 102152, 102269)]

def row118_layer002_block000 : List ColouredInterval :=
  [(2, 57344, 57461), (2, 65536, 65653), (2, 65536, 65653), (2, 81920, 82037), (2, 98304, 98421), (2, 65536, 65653), (2, 98304, 98421), (2, 65536, 65653), (3, 59049, 59166), (3, 65610, 65727), (3, 72171, 72288), (3, 78732, 78849), (3, 85293, 85410), (3, 91854, 91971), (3, 98415, 98532)]

def row118_layer002_block001 : List ColouredInterval :=
  [(3, 104976, 105093), (3, 59049, 59166), (3, 78732, 78849), (3, 98415, 98532), (3, 59049, 59166), (5, 62500, 62617), (5, 78125, 78242), (5, 93750, 93867), (5, 109375, 109492), (5, 78125, 78242), (7, 67228, 67345), (7, 84035, 84152), (7, 100842, 100959), (11, 58564, 58681), (11, 73205, 73322)]

def row118_layer002_block002 : List ColouredInterval :=
  [(11, 87846, 87963), (11, 102487, 102604), (13, 57122, 57239), (13, 85683, 85800), (17, 58956, 59073), (17, 63869, 63986), (17, 68782, 68899), (17, 73695, 73812), (17, 78608, 78725), (17, 83521, 83638), (19, 61731, 61848), (19, 68590, 68707), (19, 75449, 75566), (19, 82308, 82425), (19, 89167, 89284)]

def row118_layer002_block003 : List ColouredInterval :=
  [(19, 96026, 96143), (19, 102885, 103002), (19, 109744, 109861), (23, 60835, 60952), (23, 73002, 73119), (23, 85169, 85286), (23, 97336, 97453), (23, 109503, 109620), (29, 73167, 73284), (29, 97556, 97673), (31, 59582, 59699), (31, 89373, 89490), (37, 101306, 101423), (41, 68921, 69038), (43, 79507, 79624)]

def row118_layer002_block004 : List ColouredInterval :=
  [(47, 103823, 103940), (61, 55815, 55932), (61, 59536, 59653), (67, 58357, 58474), (67, 62846, 62963), (67, 67335, 67452), (67, 71824, 71941), (71, 55451, 55568), (71, 60492, 60609), (71, 65533, 65650), (71, 70574, 70691), (71, 75615, 75732), (71, 80656, 80773), (73, 58619, 58736), (73, 63948, 64065)]

def row118_layer002_block005 : List ColouredInterval :=
  [(73, 69277, 69394), (73, 74606, 74723), (73, 79935, 80052), (73, 85264, 85381), (79, 56169, 56286), (79, 62410, 62527), (79, 68651, 68768), (79, 74892, 75009), (79, 81133, 81250), (79, 87374, 87491), (79, 93615, 93732), (79, 99856, 99973), (83, 55224, 55229), (83, 62001, 62118), (83, 68890, 69007)]

def row118_layer002_block006 : List ColouredInterval :=
  [(83, 75779, 75896), (83, 82668, 82785), (83, 89557, 89674), (83, 96446, 96563), (83, 103335, 103452), (83, 110224, 110341), (89, 55447, 55564), (89, 63368, 63485), (89, 71289, 71406), (89, 79210, 79327), (89, 87131, 87248), (89, 95052, 95169), (89, 102973, 103090), (97, 56454, 56571), (97, 65863, 65980)]

def row118_layer002_block007 : List ColouredInterval :=
  [(97, 75272, 75389), (97, 84681, 84798), (97, 94090, 94207), (97, 103499, 103616), (101, 61206, 61323), (101, 71407, 71524), (101, 81608, 81725), (101, 91809, 91926), (101, 102010, 102127), (103, 63654, 63771), (103, 74263, 74380), (103, 84872, 84989), (103, 95481, 95598), (103, 106090, 106207), (107, 57245, 57362)]

def row118_layer002_block008 : List ColouredInterval :=
  [(107, 68694, 68811), (107, 80143, 80260), (107, 91592, 91709), (107, 103041, 103158), (109, 59405, 59522), (109, 71286, 71403), (109, 83167, 83284), (109, 95048, 95165), (109, 106929, 107046), (113, 63845, 63962), (113, 76614, 76731), (113, 89383, 89500), (113, 102152, 102269)]

def row118_layer002_chunks : List (List ColouredInterval) :=
  [row118_layer002_block000, row118_layer002_block001, row118_layer002_block002, row118_layer002_block003, row118_layer002_block004, row118_layer002_block005, row118_layer002_block006, row118_layer002_block007, row118_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_arithmetic : LayerArithmeticValid row118.height { lower := 55224, upper := 110448, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_enumeration :
    activePowerIntervalList 118 16 55224 110448 = row118_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs000 :
    row118_layer002_block000.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs001 :
    row118_layer002_block001.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs002 :
    row118_layer002_block002.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs003 :
    row118_layer002_block003.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row118_layer002_pairs004 :
    row118_layer002_block004.all (fun I => row118_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row118_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row118_layer002_pairs004
