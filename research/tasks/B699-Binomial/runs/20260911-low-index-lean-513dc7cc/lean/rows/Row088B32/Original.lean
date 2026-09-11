import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row088B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_arithmetic : LayerArithmeticValid row088.height { lower := 15312, upper := 30624, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_enumeration :
    activePowerIntervalList 88 20 15312 30624 = row088_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_pairs000 :
    row088_layer001_block000.all (fun I => row088_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_pairs001 :
    row088_layer001_block001.all (fun I => row088_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_pairs002 :
    row088_layer001_block002.all (fun I => row088_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_pairs003 :
    row088_layer001_block003.all (fun I => row088_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_pairs004 :
    row088_layer001_block004.all (fun I => row088_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_pairs005 :
    row088_layer001_block005.all (fun I => row088_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_pairs006 :
    row088_layer001_block006.all (fun I => row088_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_chunks_eq : row088_layer001_chunks.flatten = row088_layer001_intervals := by
  rfl

theorem row088_layer001_pairs : pairCoverCheck row088_layer001_intervals row088_bounds = true := by
  apply pairCoverCheck_of_chunks row088_layer001_chunks_eq
  intro block hblock
  simp only [row088_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row088_layer001_pairs000
  · exact row088_layer001_pairs001
  · exact row088_layer001_pairs002
  · exact row088_layer001_pairs003
  · exact row088_layer001_pairs004
  · exact row088_layer001_pairs005
  · exact row088_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer001_checked :
    coverLayerCheck row088.height row088.goods { lower := 15312, upper := 30624, M := 20 } = true := by
  exact coverLayerCheck_of_parts row088_layer001_arithmetic row088_layer001_enumeration row088_bounds_eq row088_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row088_layer002_intervals : List ColouredInterval :=
  [(2, 32768, 32855), (2, 32768, 32855), (3, 30624, 30705), (3, 32805, 32892), (3, 34992, 35079), (3, 37179, 37266), (3, 32805, 32892), (3, 39366, 39453), (3, 45927, 46014), (3, 52488, 52575), (3, 59049, 59136), (3, 39366, 39453), (3, 59049, 59136), (3, 59049, 59136), (5, 31250, 31337), (5, 34375, 34462), (5, 37500, 37587), (5, 40625, 40712), (5, 43750, 43837), (5, 46875, 46962), (5, 50000, 50087), (5, 53125, 53212), (5, 31250, 31337), (5, 46875, 46962), (7, 31213, 31300), (7, 33614, 33701), (7, 36015, 36102), (7, 38416, 38503), (7, 40817, 40904), (7, 33614, 33701), (7, 50421, 50508), (13, 30758, 30845), (13, 32955, 33042), (13, 35152, 35239), (13, 37349, 37436), (13, 57122, 57209), (17, 34391, 34478), (17, 39304, 39391), (17, 44217, 44304), (17, 49130, 49217), (17, 54043, 54130), (17, 58956, 59043), (19, 34295, 34382), (19, 41154, 41241), (19, 48013, 48100), (19, 54872, 54959), (23, 36501, 36588), (23, 48668, 48755), (23, 60835, 60922), (29, 48778, 48865), (31, 59582, 59669), (37, 50653, 50740), (43, 31433, 31520), (47, 30926, 31013), (47, 33135, 33222), (47, 35344, 35431), (47, 37553, 37640), (53, 30899, 30986), (53, 33708, 33795), (53, 36517, 36604), (53, 39326, 39413), (53, 42135, 42222), (53, 44944, 45031), (53, 47753, 47840), (59, 31329, 31416), (59, 34810, 34897), (59, 38291, 38378), (59, 41772, 41859), (59, 45253, 45340), (59, 48734, 48821), (59, 52215, 52302), (59, 55696, 55783), (59, 59177, 59264), (61, 33489, 33576), (61, 37210, 37297), (61, 40931, 41018), (61, 44652, 44739), (61, 48373, 48460), (61, 52094, 52181), (61, 55815, 55902), (61, 59536, 59623), (67, 31423, 31510), (67, 35912, 35999), (67, 40401, 40488), (67, 44890, 44977), (67, 49379, 49466), (67, 53868, 53955), (67, 58357, 58444), (71, 35287, 35374), (71, 40328, 40415), (71, 45369, 45456), (71, 50410, 50497), (71, 55451, 55538), (71, 60492, 60579), (73, 31974, 32061), (73, 37303, 37390), (73, 42632, 42719), (73, 47961, 48048), (73, 53290, 53377), (73, 58619, 58706), (79, 31205, 31292), (79, 37446, 37533), (79, 43687, 43774), (79, 49928, 50015), (79, 56169, 56256), (83, 34445, 34532), (83, 41334, 41421), (83, 48223, 48310), (83, 55112, 55199)]

def row088_layer002_block000 : List ColouredInterval :=
  [(2, 32768, 32855), (2, 32768, 32855), (3, 30624, 30705), (3, 32805, 32892), (3, 34992, 35079), (3, 37179, 37266), (3, 32805, 32892), (3, 39366, 39453), (3, 45927, 46014), (3, 52488, 52575), (3, 59049, 59136), (3, 39366, 39453), (3, 59049, 59136), (3, 59049, 59136), (5, 31250, 31337), (5, 34375, 34462)]

def row088_layer002_block001 : List ColouredInterval :=
  [(5, 37500, 37587), (5, 40625, 40712), (5, 43750, 43837), (5, 46875, 46962), (5, 50000, 50087), (5, 53125, 53212), (5, 31250, 31337), (5, 46875, 46962), (7, 31213, 31300), (7, 33614, 33701), (7, 36015, 36102), (7, 38416, 38503), (7, 40817, 40904), (7, 33614, 33701), (7, 50421, 50508), (13, 30758, 30845)]

def row088_layer002_block002 : List ColouredInterval :=
  [(13, 32955, 33042), (13, 35152, 35239), (13, 37349, 37436), (13, 57122, 57209), (17, 34391, 34478), (17, 39304, 39391), (17, 44217, 44304), (17, 49130, 49217), (17, 54043, 54130), (17, 58956, 59043), (19, 34295, 34382), (19, 41154, 41241), (19, 48013, 48100), (19, 54872, 54959), (23, 36501, 36588), (23, 48668, 48755)]

def row088_layer002_block003 : List ColouredInterval :=
  [(23, 60835, 60922), (29, 48778, 48865), (31, 59582, 59669), (37, 50653, 50740), (43, 31433, 31520), (47, 30926, 31013), (47, 33135, 33222), (47, 35344, 35431), (47, 37553, 37640), (53, 30899, 30986), (53, 33708, 33795), (53, 36517, 36604), (53, 39326, 39413), (53, 42135, 42222), (53, 44944, 45031), (53, 47753, 47840)]

def row088_layer002_block004 : List ColouredInterval :=
  [(59, 31329, 31416), (59, 34810, 34897), (59, 38291, 38378), (59, 41772, 41859), (59, 45253, 45340), (59, 48734, 48821), (59, 52215, 52302), (59, 55696, 55783), (59, 59177, 59264), (61, 33489, 33576), (61, 37210, 37297), (61, 40931, 41018), (61, 44652, 44739), (61, 48373, 48460), (61, 52094, 52181), (61, 55815, 55902)]

def row088_layer002_block005 : List ColouredInterval :=
  [(61, 59536, 59623), (67, 31423, 31510), (67, 35912, 35999), (67, 40401, 40488), (67, 44890, 44977), (67, 49379, 49466), (67, 53868, 53955), (67, 58357, 58444), (71, 35287, 35374), (71, 40328, 40415), (71, 45369, 45456), (71, 50410, 50497), (71, 55451, 55538), (71, 60492, 60579), (73, 31974, 32061), (73, 37303, 37390)]

def row088_layer002_block006 : List ColouredInterval :=
  [(73, 42632, 42719), (73, 47961, 48048), (73, 53290, 53377), (73, 58619, 58706), (79, 31205, 31292), (79, 37446, 37533), (79, 43687, 43774), (79, 49928, 50015), (79, 56169, 56256), (83, 34445, 34532), (83, 41334, 41421), (83, 48223, 48310), (83, 55112, 55199)]

def row088_layer002_chunks : List (List ColouredInterval) :=
  [row088_layer002_block000, row088_layer002_block001, row088_layer002_block002, row088_layer002_block003, row088_layer002_block004, row088_layer002_block005, row088_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_arithmetic : LayerArithmeticValid row088.height { lower := 30624, upper := 61248, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_enumeration :
    activePowerIntervalList 88 17 30624 61248 = row088_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_pairs000 :
    row088_layer002_block000.all (fun I => row088_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_pairs001 :
    row088_layer002_block001.all (fun I => row088_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_pairs002 :
    row088_layer002_block002.all (fun I => row088_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_pairs003 :
    row088_layer002_block003.all (fun I => row088_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_pairs004 :
    row088_layer002_block004.all (fun I => row088_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_pairs005 :
    row088_layer002_block005.all (fun I => row088_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_pairs006 :
    row088_layer002_block006.all (fun I => row088_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row088_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_chunks_eq : row088_layer002_chunks.flatten = row088_layer002_intervals := by
  rfl

theorem row088_layer002_pairs : pairCoverCheck row088_layer002_intervals row088_bounds = true := by
  apply pairCoverCheck_of_chunks row088_layer002_chunks_eq
  intro block hblock
  simp only [row088_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row088_layer002_pairs000
  · exact row088_layer002_pairs001
  · exact row088_layer002_pairs002
  · exact row088_layer002_pairs003
  · exact row088_layer002_pairs004
  · exact row088_layer002_pairs005
  · exact row088_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer002_checked :
    coverLayerCheck row088.height row088.goods { lower := 30624, upper := 61248, M := 17 } = true := by
  exact coverLayerCheck_of_parts row088_layer002_arithmetic row088_layer002_enumeration row088_bounds_eq row088_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer003_checked :
    coverLayerCheck row088.height row088.goods { lower := 61248, upper := 122496, M := 14 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer004_checked :
    coverLayerCheck row088.height row088.goods { lower := 122496, upper := 244992, M := 12 } = true := by
  decide +kernel

theorem row088_layer005_checked :
    coverLayerCheck row088.height row088.goods { lower := 244992, upper := 489984, M := 10 } = true := by
  decide +kernel

theorem row088_layer006_checked :
    coverLayerCheck row088.height row088.goods { lower := 489984, upper := 979968, M := 8 } = true := by
  decide +kernel

theorem row088_layer007_checked :
    coverLayerCheck row088.height row088.goods { lower := 979968, upper := 1959936, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer008_checked :
    coverLayerCheck row088.height row088.goods { lower := 1959936, upper := 3919872, M := 6 } = true := by
  decide +kernel

theorem row088_layer009_checked :
    coverLayerCheck row088.height row088.goods { lower := 3919872, upper := 7839744, M := 5 } = true := by
  decide +kernel

theorem row088_layer010_checked :
    coverLayerCheck row088.height row088.goods { lower := 7839744, upper := 15679488, M := 4 } = true := by
  decide +kernel

theorem row088_layer011_checked :
    coverLayerCheck row088.height row088.goods { lower := 15679488, upper := 31358976, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer012_checked :
    coverLayerCheck row088.height row088.goods { lower := 31358976, upper := 62717952, M := 3 } = true := by
  decide +kernel

theorem row088_layer013_checked :
    coverLayerCheck row088.height row088.goods { lower := 62717952, upper := 125435904, M := 3 } = true := by
  decide +kernel

theorem row088_layer014_checked :
    coverLayerCheck row088.height row088.goods { lower := 125435904, upper := 250871808, M := 2 } = true := by
  decide +kernel

theorem row088_layer015_checked :
    coverLayerCheck row088.height row088.goods { lower := 250871808, upper := 501743616, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layer016_checked :
    coverLayerCheck row088.height row088.goods { lower := 501743616, upper := 1000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_layers_checked :
    row088.layers.all (coverLayerCheck row088.height row088.goods) = true := by
  change row088_layers.all (coverLayerCheck row088.height row088.goods) = true
  simp only [row088_layers, List.all_cons, List.all_nil,
    row088_layer000_checked,
    row088_layer001_checked,
    row088_layer002_checked,
    row088_layer003_checked,
    row088_layer004_checked,
    row088_layer005_checked,
    row088_layer006_checked,
    row088_layer007_checked,
    row088_layer008_checked,
    row088_layer009_checked,
    row088_layer010_checked,
    row088_layer011_checked,
    row088_layer012_checked,
    row088_layer013_checked,
    row088_layer014_checked,
    row088_layer015_checked,
    row088_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row088_checked : finiteCoverRowCheck row088 = true := by
  simp only [finiteCoverRowCheck, row088_registered, row088_goods_checked,
    row088_small_checked, row088_layerCover_checked, row088_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row088_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i088 :
    ∀ n j : ℕ, 1 ≤ 88 ∧ 88 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 88 ≤ p ∧ p ∣ Nat.choose n 88 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row088_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i088
