import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer012_pairs001 :
    row047_layer012_block001.all (fun I => row047_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer012_pairs002 :
    row047_layer012_block002.all (fun I => row047_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer012_pairs003 :
    row047_layer012_block003.all (fun I => row047_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer012_pairs004 :
    row047_layer012_block004.all (fun I => row047_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer012_chunks_eq : row047_layer012_chunks.flatten = row047_layer012_intervals := by
  rfl

theorem row047_layer012_pairs : pairCoverCheck row047_layer012_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer012_chunks_eq
  intro block hblock
  simp only [row047_layer012_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row047_layer012_pairs000
  · exact row047_layer012_pairs001
  · exact row047_layer012_pairs002
  · exact row047_layer012_pairs003
  · exact row047_layer012_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer012_checked :
    coverLayerCheck row047.height row047.goods { lower := 8855552, upper := 17711104, M := 15 } = true := by
  exact coverLayerCheck_of_parts row047_layer012_arithmetic row047_layer012_enumeration row047_bounds_eq row047_layer012_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer013_intervals : List ColouredInterval :=
  [(2, 18874368, 18874414), (2, 20971520, 20971566), (2, 23068672, 23068718), (2, 25165824, 25165870), (2, 27262976, 27263022), (2, 29360128, 29360174), (2, 20971520, 20971566), (2, 25165824, 25165870), (2, 29360128, 29360174), (2, 33554432, 33554478), (2, 25165824, 25165870), (2, 33554432, 33554478), (2, 33554432, 33554478), (2, 33554432, 33554478), (3, 19131876, 19131922), (3, 20726199, 20726245), (3, 22320522, 22320568), (3, 19131876, 19131922), (3, 23914845, 23914891), (3, 28697814, 28697860), (3, 33480783, 33480829), (3, 28697814, 28697860), (5, 19531250, 19531296), (5, 21484375, 21484421), (5, 23437500, 23437546), (5, 25390625, 25390671), (5, 27343750, 27343796), (5, 19531250, 19531296), (5, 29296875, 29296921), (7, 23059204, 23059250), (7, 28824005, 28824051), (7, 34588806, 34588852), (11, 17715610, 17715656), (11, 19487171, 19487217), (11, 21258732, 21258778), (11, 23030293, 23030339), (11, 24801854, 24801900), (11, 19487171, 19487217), (13, 19307236, 19307282), (13, 24134045, 24134091), (13, 28960854, 28960900), (13, 33787663, 33787709), (17, 18458141, 18458187), (17, 19877998, 19878044), (17, 24137569, 24137615), (19, 19808792, 19808838), (19, 22284891, 22284937), (19, 24760990, 24761036), (19, 27237089, 27237135), (19, 29713188, 29713234), (19, 32189287, 32189333), (19, 34665386, 34665432), (23, 19309029, 19309075), (23, 25745372, 25745418), (23, 32181715, 32181761), (29, 20511149, 20511195), (31, 28629151, 28629197), (37, 18741610, 18741656), (37, 20615771, 20615817), (37, 22489932, 22489978), (37, 24364093, 24364139), (37, 26238254, 26238300), (41, 19780327, 19780373), (41, 22606088, 22606134), (41, 25431849, 25431895), (41, 28257610, 28257656), (41, 31083371, 31083417), (41, 33909132, 33909178), (43, 20512806, 20512852), (43, 23931607, 23931653), (43, 27350408, 27350454), (43, 30769209, 30769255), (43, 34188010, 34188056)]

def row047_layer013_block000 : List ColouredInterval :=
  [(2, 18874368, 18874414), (2, 20971520, 20971566), (2, 23068672, 23068718), (2, 25165824, 25165870), (2, 27262976, 27263022), (2, 29360128, 29360174), (2, 20971520, 20971566), (2, 25165824, 25165870), (2, 29360128, 29360174), (2, 33554432, 33554478), (2, 25165824, 25165870), (2, 33554432, 33554478), (2, 33554432, 33554478), (2, 33554432, 33554478), (3, 19131876, 19131922), (3, 20726199, 20726245)]

def row047_layer013_block001 : List ColouredInterval :=
  [(3, 22320522, 22320568), (3, 19131876, 19131922), (3, 23914845, 23914891), (3, 28697814, 28697860), (3, 33480783, 33480829), (3, 28697814, 28697860), (5, 19531250, 19531296), (5, 21484375, 21484421), (5, 23437500, 23437546), (5, 25390625, 25390671), (5, 27343750, 27343796), (5, 19531250, 19531296), (5, 29296875, 29296921), (7, 23059204, 23059250), (7, 28824005, 28824051), (7, 34588806, 34588852)]

def row047_layer013_block002 : List ColouredInterval :=
  [(11, 17715610, 17715656), (11, 19487171, 19487217), (11, 21258732, 21258778), (11, 23030293, 23030339), (11, 24801854, 24801900), (11, 19487171, 19487217), (13, 19307236, 19307282), (13, 24134045, 24134091), (13, 28960854, 28960900), (13, 33787663, 33787709), (17, 18458141, 18458187), (17, 19877998, 19878044), (17, 24137569, 24137615), (19, 19808792, 19808838), (19, 22284891, 22284937), (19, 24760990, 24761036)]

def row047_layer013_block003 : List ColouredInterval :=
  [(19, 27237089, 27237135), (19, 29713188, 29713234), (19, 32189287, 32189333), (19, 34665386, 34665432), (23, 19309029, 19309075), (23, 25745372, 25745418), (23, 32181715, 32181761), (29, 20511149, 20511195), (31, 28629151, 28629197), (37, 18741610, 18741656), (37, 20615771, 20615817), (37, 22489932, 22489978), (37, 24364093, 24364139), (37, 26238254, 26238300), (41, 19780327, 19780373), (41, 22606088, 22606134)]

def row047_layer013_block004 : List ColouredInterval :=
  [(41, 25431849, 25431895), (41, 28257610, 28257656), (41, 31083371, 31083417), (41, 33909132, 33909178), (43, 20512806, 20512852), (43, 23931607, 23931653), (43, 27350408, 27350454), (43, 30769209, 30769255), (43, 34188010, 34188056)]

def row047_layer013_chunks : List (List ColouredInterval) :=
  [row047_layer013_block000, row047_layer013_block001, row047_layer013_block002, row047_layer013_block003, row047_layer013_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer013_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer013_arithmetic : LayerArithmeticValid row047.height { lower := 17711104, upper := 35422208, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer013_arithmetic
