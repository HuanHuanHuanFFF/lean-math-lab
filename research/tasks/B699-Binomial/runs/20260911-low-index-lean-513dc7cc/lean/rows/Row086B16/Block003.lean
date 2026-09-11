import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row086B16.Block001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_chunks_eq : row086_layer001_chunks.flatten = row086_layer001_intervals := by
  rfl

theorem row086_layer001_pairs : pairCoverCheck row086_layer001_intervals row086_bounds = true := by
  apply pairCoverCheck_of_chunks row086_layer001_chunks_eq
  intro block hblock
  simp only [row086_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row086_layer001_pairs000
  · exact row086_layer001_pairs001
  · exact row086_layer001_pairs002
  · exact row086_layer001_pairs003
  · exact row086_layer001_pairs004
  · exact row086_layer001_pairs005
  · exact row086_layer001_pairs006
  · exact row086_layer001_pairs007
  · exact row086_layer001_pairs008
  · exact row086_layer001_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer001_checked :
    coverLayerCheck row086.height row086.goods { lower := 14620, upper := 29240, M := 24 } = true := by
  exact coverLayerCheck_of_parts row086_layer001_arithmetic row086_layer001_enumeration row086_bounds_eq row086_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row086_layer002_intervals : List ColouredInterval :=
  [(2, 32768, 32853), (2, 36864, 36949), (2, 40960, 41045), (2, 32768, 32853), (2, 40960, 41045), (2, 49152, 49237), (2, 57344, 57429), (2, 32768, 32853), (2, 49152, 49237), (2, 32768, 32853), (3, 30618, 30703), (3, 32805, 32890), (3, 34992, 35077), (3, 37179, 37264), (3, 39366, 39451), (3, 41553, 41638), (3, 43740, 43825), (3, 32805, 32890), (3, 39366, 39451), (3, 45927, 46012), (3, 52488, 52573), (3, 39366, 39451), (5, 31250, 31335), (5, 34375, 34460), (5, 37500, 37585), (5, 40625, 40710), (5, 43750, 43835), (5, 46875, 46960), (5, 50000, 50085), (5, 53125, 53210), (5, 56250, 56335), (5, 31250, 31335), (5, 46875, 46960), (7, 31213, 31298), (7, 33614, 33699), (7, 36015, 36100), (7, 38416, 38501), (7, 40817, 40902), (7, 43218, 43303), (7, 45619, 45704), (7, 48020, 48105), (7, 33614, 33699), (7, 50421, 50506), (11, 29282, 29367), (11, 43923, 44008), (13, 30758, 30843), (13, 32955, 33040), (13, 35152, 35237), (13, 37349, 37434), (13, 39546, 39631), (13, 41743, 41828), (13, 43940, 44025), (13, 57122, 57207), (17, 29478, 29563), (17, 34391, 34476), (17, 39304, 39389), (17, 44217, 44302), (17, 49130, 49215), (17, 54043, 54128), (19, 34295, 34380), (19, 41154, 41239), (19, 48013, 48098), (19, 54872, 54957), (23, 36501, 36586), (23, 48668, 48753), (29, 48778, 48863), (31, 29791, 29876), (37, 50653, 50738), (41, 30258, 30343), (41, 31939, 32024), (41, 33620, 33705), (47, 30926, 31011), (47, 33135, 33220), (47, 35344, 35429), (47, 37553, 37638), (47, 39762, 39847), (47, 41971, 42056), (47, 44180, 44265), (53, 30899, 30984), (53, 33708, 33793), (53, 36517, 36602), (53, 39326, 39411), (53, 42135, 42220), (53, 44944, 45029), (53, 47753, 47838), (53, 50562, 50647), (53, 53371, 53456), (53, 56180, 56265), (59, 31329, 31414), (59, 34810, 34895), (59, 38291, 38376), (59, 41772, 41857), (59, 45253, 45338), (59, 48734, 48819), (59, 52215, 52300), (59, 55696, 55781), (61, 29768, 29853), (61, 33489, 33574), (61, 37210, 37295), (61, 40931, 41016), (61, 44652, 44737), (61, 48373, 48458), (61, 52094, 52179), (61, 55815, 55900), (67, 31423, 31508), (67, 35912, 35997), (67, 40401, 40486), (67, 44890, 44975), (67, 49379, 49464), (67, 53868, 53953), (67, 58357, 58442), (71, 30246, 30331), (71, 35287, 35372), (71, 40328, 40413), (71, 45369, 45454), (71, 50410, 50495), (71, 55451, 55536), (73, 31974, 32059), (73, 37303, 37388), (73, 42632, 42717), (73, 47961, 48046), (73, 53290, 53375), (79, 31205, 31290), (79, 37446, 37531), (79, 43687, 43772), (79, 49928, 50013), (79, 56169, 56254), (83, 34445, 34530), (83, 41334, 41419), (83, 48223, 48308), (83, 55112, 55197)]

def row086_layer002_block000 : List ColouredInterval :=
  [(2, 32768, 32853), (2, 36864, 36949), (2, 40960, 41045), (2, 32768, 32853), (2, 40960, 41045), (2, 49152, 49237), (2, 57344, 57429), (2, 32768, 32853), (2, 49152, 49237), (2, 32768, 32853), (3, 30618, 30703), (3, 32805, 32890), (3, 34992, 35077), (3, 37179, 37264), (3, 39366, 39451)]

def row086_layer002_block001 : List ColouredInterval :=
  [(3, 41553, 41638), (3, 43740, 43825), (3, 32805, 32890), (3, 39366, 39451), (3, 45927, 46012), (3, 52488, 52573), (3, 39366, 39451), (5, 31250, 31335), (5, 34375, 34460), (5, 37500, 37585), (5, 40625, 40710), (5, 43750, 43835), (5, 46875, 46960), (5, 50000, 50085), (5, 53125, 53210)]

def row086_layer002_block002 : List ColouredInterval :=
  [(5, 56250, 56335), (5, 31250, 31335), (5, 46875, 46960), (7, 31213, 31298), (7, 33614, 33699), (7, 36015, 36100), (7, 38416, 38501), (7, 40817, 40902), (7, 43218, 43303), (7, 45619, 45704), (7, 48020, 48105), (7, 33614, 33699), (7, 50421, 50506), (11, 29282, 29367), (11, 43923, 44008)]

def row086_layer002_block003 : List ColouredInterval :=
  [(13, 30758, 30843), (13, 32955, 33040), (13, 35152, 35237), (13, 37349, 37434), (13, 39546, 39631), (13, 41743, 41828), (13, 43940, 44025), (13, 57122, 57207), (17, 29478, 29563), (17, 34391, 34476), (17, 39304, 39389), (17, 44217, 44302), (17, 49130, 49215), (17, 54043, 54128), (19, 34295, 34380)]

def row086_layer002_block004 : List ColouredInterval :=
  [(19, 41154, 41239), (19, 48013, 48098), (19, 54872, 54957), (23, 36501, 36586), (23, 48668, 48753), (29, 48778, 48863), (31, 29791, 29876), (37, 50653, 50738), (41, 30258, 30343), (41, 31939, 32024), (41, 33620, 33705), (47, 30926, 31011), (47, 33135, 33220), (47, 35344, 35429), (47, 37553, 37638)]

def row086_layer002_block005 : List ColouredInterval :=
  [(47, 39762, 39847), (47, 41971, 42056), (47, 44180, 44265), (53, 30899, 30984), (53, 33708, 33793), (53, 36517, 36602), (53, 39326, 39411), (53, 42135, 42220), (53, 44944, 45029), (53, 47753, 47838), (53, 50562, 50647), (53, 53371, 53456), (53, 56180, 56265), (59, 31329, 31414), (59, 34810, 34895)]

def row086_layer002_block006 : List ColouredInterval :=
  [(59, 38291, 38376), (59, 41772, 41857), (59, 45253, 45338), (59, 48734, 48819), (59, 52215, 52300), (59, 55696, 55781), (61, 29768, 29853), (61, 33489, 33574), (61, 37210, 37295), (61, 40931, 41016), (61, 44652, 44737), (61, 48373, 48458), (61, 52094, 52179), (61, 55815, 55900), (67, 31423, 31508)]

def row086_layer002_block007 : List ColouredInterval :=
  [(67, 35912, 35997), (67, 40401, 40486), (67, 44890, 44975), (67, 49379, 49464), (67, 53868, 53953), (67, 58357, 58442), (71, 30246, 30331), (71, 35287, 35372), (71, 40328, 40413), (71, 45369, 45454), (71, 50410, 50495), (71, 55451, 55536), (73, 31974, 32059), (73, 37303, 37388), (73, 42632, 42717)]

def row086_layer002_block008 : List ColouredInterval :=
  [(73, 47961, 48046), (73, 53290, 53375), (79, 31205, 31290), (79, 37446, 37531), (79, 43687, 43772), (79, 49928, 50013), (79, 56169, 56254), (83, 34445, 34530), (83, 41334, 41419), (83, 48223, 48308), (83, 55112, 55197)]

def row086_layer002_chunks : List (List ColouredInterval) :=
  [row086_layer002_block000, row086_layer002_block001, row086_layer002_block002, row086_layer002_block003, row086_layer002_block004, row086_layer002_block005, row086_layer002_block006, row086_layer002_block007, row086_layer002_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_arithmetic : LayerArithmeticValid row086.height { lower := 29240, upper := 58480, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_enumeration :
    activePowerIntervalList 86 20 29240 58480 = row086_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs000 :
    row086_layer002_block000.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs001 :
    row086_layer002_block001.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs002 :
    row086_layer002_block002.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs003 :
    row086_layer002_block003.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs004 :
    row086_layer002_block004.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs005 :
    row086_layer002_block005.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs006 :
    row086_layer002_block006.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs007 :
    row086_layer002_block007.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_pairs008 :
    row086_layer002_block008.all (fun I => row086_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row086_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_chunks_eq : row086_layer002_chunks.flatten = row086_layer002_intervals := by
  rfl

theorem row086_layer002_pairs : pairCoverCheck row086_layer002_intervals row086_bounds = true := by
  apply pairCoverCheck_of_chunks row086_layer002_chunks_eq
  intro block hblock
  simp only [row086_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row086_layer002_pairs000
  · exact row086_layer002_pairs001
  · exact row086_layer002_pairs002
  · exact row086_layer002_pairs003
  · exact row086_layer002_pairs004
  · exact row086_layer002_pairs005
  · exact row086_layer002_pairs006
  · exact row086_layer002_pairs007
  · exact row086_layer002_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row086_layer002_checked :
    coverLayerCheck row086.height row086.goods { lower := 29240, upper := 58480, M := 20 } = true := by
  exact coverLayerCheck_of_parts row086_layer002_arithmetic row086_layer002_enumeration row086_bounds_eq row086_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row086_layer002_checked
