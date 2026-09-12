import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_chunks_eq : row115_layer003_chunks.flatten = row115_layer003_intervals := by
  rfl

theorem row115_layer003_pairs : pairCoverCheck row115_layer003_intervals row115_bounds = true := by
  apply pairCoverCheck_of_chunks row115_layer003_chunks_eq
  intro block hblock
  simp only [row115_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row115_layer003_pairs000
  · exact row115_layer003_pairs001
  · exact row115_layer003_pairs002
  · exact row115_layer003_pairs003
  · exact row115_layer003_pairs004
  · exact row115_layer003_pairs005
  · exact row115_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_checked :
    coverLayerCheck row115.height row115.goods { lower := 104880, upper := 209760, M := 16 } = true := by
  exact coverLayerCheck_of_parts row115_layer003_arithmetic row115_layer003_enumeration row115_bounds_eq row115_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row115_layer004_intervals : List ColouredInterval :=
  [(2, 212992, 213106), (2, 229376, 229490), (2, 229376, 229490), (2, 262144, 262258), (2, 294912, 295026), (2, 327680, 327794), (2, 360448, 360562), (2, 393216, 393330), (2, 262144, 262258), (2, 327680, 327794), (2, 393216, 393330), (2, 262144, 262258), (2, 393216, 393330), (2, 262144, 262258), (3, 216513, 216627), (3, 236196, 236310), (3, 255879, 255993), (3, 275562, 275676), (3, 236196, 236310), (3, 295245, 295359), (3, 354294, 354408), (3, 413343, 413457), (3, 354294, 354408), (5, 390625, 390739), (7, 218491, 218605), (7, 235298, 235412), (7, 235298, 235412), (7, 352947, 353061), (11, 322102, 322216), (13, 228488, 228602), (13, 257049, 257163), (13, 285610, 285724), (13, 314171, 314285), (13, 342732, 342846), (13, 371293, 371407), (13, 399854, 399968), (13, 371293, 371407), (17, 250563, 250677), (17, 334084, 334198), (17, 417605, 417719), (19, 260642, 260756), (19, 390963, 391077), (29, 219501, 219615), (29, 243890, 244004), (29, 268279, 268393), (29, 292668, 292782), (29, 317057, 317171), (29, 341446, 341560), (31, 238328, 238442), (31, 268119, 268233), (31, 297910, 298024), (31, 327701, 327815), (31, 357492, 357606), (31, 387283, 387397), (31, 417074, 417188), (37, 253265, 253379), (37, 303918, 304032), (37, 354571, 354685), (37, 405224, 405338), (41, 275684, 275798), (41, 344605, 344719), (41, 413526, 413640), (43, 238521, 238635), (43, 318028, 318142), (43, 397535, 397649), (47, 311469, 311583), (47, 415292, 415406), (53, 297754, 297868), (59, 410758, 410872), (61, 226981, 227095), (67, 300763, 300877), (71, 357911, 358025), (73, 389017, 389131)]

def row115_layer004_block000 : List ColouredInterval :=
  [(2, 212992, 213106), (2, 229376, 229490), (2, 229376, 229490), (2, 262144, 262258), (2, 294912, 295026), (2, 327680, 327794), (2, 360448, 360562), (2, 393216, 393330), (2, 262144, 262258), (2, 327680, 327794), (2, 393216, 393330), (2, 262144, 262258), (2, 393216, 393330), (2, 262144, 262258), (3, 216513, 216627), (3, 236196, 236310)]

def row115_layer004_block001 : List ColouredInterval :=
  [(3, 255879, 255993), (3, 275562, 275676), (3, 236196, 236310), (3, 295245, 295359), (3, 354294, 354408), (3, 413343, 413457), (3, 354294, 354408), (5, 390625, 390739), (7, 218491, 218605), (7, 235298, 235412), (7, 235298, 235412), (7, 352947, 353061), (11, 322102, 322216), (13, 228488, 228602), (13, 257049, 257163), (13, 285610, 285724)]

def row115_layer004_block002 : List ColouredInterval :=
  [(13, 314171, 314285), (13, 342732, 342846), (13, 371293, 371407), (13, 399854, 399968), (13, 371293, 371407), (17, 250563, 250677), (17, 334084, 334198), (17, 417605, 417719), (19, 260642, 260756), (19, 390963, 391077), (29, 219501, 219615), (29, 243890, 244004), (29, 268279, 268393), (29, 292668, 292782), (29, 317057, 317171), (29, 341446, 341560)]

def row115_layer004_block003 : List ColouredInterval :=
  [(31, 238328, 238442), (31, 268119, 268233), (31, 297910, 298024), (31, 327701, 327815), (31, 357492, 357606), (31, 387283, 387397), (31, 417074, 417188), (37, 253265, 253379), (37, 303918, 304032), (37, 354571, 354685), (37, 405224, 405338), (41, 275684, 275798), (41, 344605, 344719), (41, 413526, 413640), (43, 238521, 238635), (43, 318028, 318142)]

def row115_layer004_block004 : List ColouredInterval :=
  [(43, 397535, 397649), (47, 311469, 311583), (47, 415292, 415406), (53, 297754, 297868), (59, 410758, 410872), (61, 226981, 227095), (67, 300763, 300877), (71, 357911, 358025), (73, 389017, 389131)]

def row115_layer004_chunks : List (List ColouredInterval) :=
  [row115_layer004_block000, row115_layer004_block001, row115_layer004_block002, row115_layer004_block003, row115_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_arithmetic : LayerArithmeticValid row115.height { lower := 209760, upper := 419520, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_enumeration :
    activePowerIntervalList 115 14 209760 419520 = row115_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_pairs000 :
    row115_layer004_block000.all (fun I => row115_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_pairs001 :
    row115_layer004_block001.all (fun I => row115_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_pairs002 :
    row115_layer004_block002.all (fun I => row115_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_pairs003 :
    row115_layer004_block003.all (fun I => row115_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_pairs004 :
    row115_layer004_block004.all (fun I => row115_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_chunks_eq : row115_layer004_chunks.flatten = row115_layer004_intervals := by
  rfl

theorem row115_layer004_pairs : pairCoverCheck row115_layer004_intervals row115_bounds = true := by
  apply pairCoverCheck_of_chunks row115_layer004_chunks_eq
  intro block hblock
  simp only [row115_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row115_layer004_pairs000
  · exact row115_layer004_pairs001
  · exact row115_layer004_pairs002
  · exact row115_layer004_pairs003
  · exact row115_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer004_checked :
    coverLayerCheck row115.height row115.goods { lower := 209760, upper := 419520, M := 14 } = true := by
  exact coverLayerCheck_of_parts row115_layer004_arithmetic row115_layer004_enumeration row115_bounds_eq row115_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row115_layer005_intervals : List ColouredInterval :=
  [(2, 458752, 458866), (2, 524288, 524402), (2, 589824, 589938), (2, 655360, 655474), (2, 720896, 721010), (2, 524288, 524402), (2, 655360, 655474), (2, 786432, 786546), (2, 524288, 524402), (2, 786432, 786546), (2, 524288, 524402), (3, 472392, 472506), (3, 531441, 531555), (3, 590490, 590604), (3, 649539, 649653), (3, 531441, 531555), (3, 708588, 708702), (3, 531441, 531555), (5, 781250, 781364), (7, 470596, 470710), (7, 588245, 588359), (7, 705894, 706008), (7, 823543, 823657), (7, 823543, 823657), (11, 483153, 483267), (11, 644204, 644318), (11, 805255, 805369), (13, 742586, 742700), (17, 501126, 501240), (17, 584647, 584761), (17, 668168, 668282), (17, 751689, 751803), (17, 835210, 835324), (19, 521284, 521398), (19, 651605, 651719), (19, 781926, 782040), (29, 707281, 707395), (37, 455877, 455991), (37, 506530, 506644), (37, 557183, 557297), (41, 482447, 482561), (41, 551368, 551482), (41, 620289, 620403), (41, 689210, 689324), (41, 758131, 758245), (43, 477042, 477156), (43, 556549, 556663), (43, 636056, 636170), (43, 715563, 715677), (43, 795070, 795184), (47, 519115, 519229), (47, 622938, 623052), (47, 726761, 726875), (47, 830584, 830698), (53, 446631, 446745), (53, 595508, 595622), (53, 744385, 744499), (59, 616137, 616251), (59, 821516, 821630), (61, 453962, 454076), (61, 680943, 681057), (67, 601526, 601640), (71, 715822, 715936), (73, 778034, 778148), (79, 493039, 493153), (83, 571787, 571901), (89, 704969, 705083)]

def row115_layer005_block000 : List ColouredInterval :=
  [(2, 458752, 458866), (2, 524288, 524402), (2, 589824, 589938), (2, 655360, 655474), (2, 720896, 721010), (2, 524288, 524402), (2, 655360, 655474), (2, 786432, 786546), (2, 524288, 524402), (2, 786432, 786546), (2, 524288, 524402), (3, 472392, 472506), (3, 531441, 531555), (3, 590490, 590604), (3, 649539, 649653), (3, 531441, 531555)]

def row115_layer005_block001 : List ColouredInterval :=
  [(3, 708588, 708702), (3, 531441, 531555), (5, 781250, 781364), (7, 470596, 470710), (7, 588245, 588359), (7, 705894, 706008), (7, 823543, 823657), (7, 823543, 823657), (11, 483153, 483267), (11, 644204, 644318), (11, 805255, 805369), (13, 742586, 742700), (17, 501126, 501240), (17, 584647, 584761), (17, 668168, 668282), (17, 751689, 751803)]

def row115_layer005_block002 : List ColouredInterval :=
  [(17, 835210, 835324), (19, 521284, 521398), (19, 651605, 651719), (19, 781926, 782040), (29, 707281, 707395), (37, 455877, 455991), (37, 506530, 506644), (37, 557183, 557297), (41, 482447, 482561), (41, 551368, 551482), (41, 620289, 620403), (41, 689210, 689324), (41, 758131, 758245), (43, 477042, 477156), (43, 556549, 556663), (43, 636056, 636170)]

def row115_layer005_block003 : List ColouredInterval :=
  [(43, 715563, 715677), (43, 795070, 795184), (47, 519115, 519229), (47, 622938, 623052), (47, 726761, 726875), (47, 830584, 830698), (53, 446631, 446745), (53, 595508, 595622), (53, 744385, 744499), (59, 616137, 616251), (59, 821516, 821630), (61, 453962, 454076), (61, 680943, 681057), (67, 601526, 601640), (71, 715822, 715936), (73, 778034, 778148)]

def row115_layer005_block004 : List ColouredInterval :=
  [(79, 493039, 493153), (83, 571787, 571901), (89, 704969, 705083)]

def row115_layer005_chunks : List (List ColouredInterval) :=
  [row115_layer005_block000, row115_layer005_block001, row115_layer005_block002, row115_layer005_block003, row115_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_arithmetic : LayerArithmeticValid row115.height { lower := 419520, upper := 839040, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_enumeration :
    activePowerIntervalList 115 11 419520 839040 = row115_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_pairs000 :
    row115_layer005_block000.all (fun I => row115_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_pairs001 :
    row115_layer005_block001.all (fun I => row115_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_pairs002 :
    row115_layer005_block002.all (fun I => row115_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_pairs003 :
    row115_layer005_block003.all (fun I => row115_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_pairs004 :
    row115_layer005_block004.all (fun I => row115_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_chunks_eq : row115_layer005_chunks.flatten = row115_layer005_intervals := by
  rfl

theorem row115_layer005_pairs : pairCoverCheck row115_layer005_intervals row115_bounds = true := by
  apply pairCoverCheck_of_chunks row115_layer005_chunks_eq
  intro block hblock
  simp only [row115_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row115_layer005_pairs000
  · exact row115_layer005_pairs001
  · exact row115_layer005_pairs002
  · exact row115_layer005_pairs003
  · exact row115_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer005_checked :
    coverLayerCheck row115.height row115.goods { lower := 419520, upper := 839040, M := 11 } = true := by
  exact coverLayerCheck_of_parts row115_layer005_arithmetic row115_layer005_enumeration row115_bounds_eq row115_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer006_checked :
    coverLayerCheck row115.height row115.goods { lower := 839040, upper := 1678080, M := 9 } = true := by
  decide +kernel

theorem row115_layer007_checked :
    coverLayerCheck row115.height row115.goods { lower := 1678080, upper := 3356160, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer008_checked :
    coverLayerCheck row115.height row115.goods { lower := 3356160, upper := 6712320, M := 7 } = true := by
  decide +kernel

theorem row115_layer009_checked :
    coverLayerCheck row115.height row115.goods { lower := 6712320, upper := 13424640, M := 6 } = true := by
  decide +kernel

theorem row115_layer010_checked :
    coverLayerCheck row115.height row115.goods { lower := 13424640, upper := 26849280, M := 5 } = true := by
  decide +kernel

theorem row115_layer011_checked :
    coverLayerCheck row115.height row115.goods { lower := 26849280, upper := 53698560, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer012_checked :
    coverLayerCheck row115.height row115.goods { lower := 53698560, upper := 107397120, M := 3 } = true := by
  decide +kernel

theorem row115_layer013_checked :
    coverLayerCheck row115.height row115.goods { lower := 107397120, upper := 214794240, M := 3 } = true := by
  decide +kernel

theorem row115_layer014_checked :
    coverLayerCheck row115.height row115.goods { lower := 214794240, upper := 429588480, M := 2 } = true := by
  decide +kernel

theorem row115_layer015_checked :
    coverLayerCheck row115.height row115.goods { lower := 429588480, upper := 859176960, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer016_checked :
    coverLayerCheck row115.height row115.goods { lower := 859176960, upper := 1718353920, M := 2 } = true := by
  decide +kernel

theorem row115_layer017_checked :
    coverLayerCheck row115.height row115.goods { lower := 1718353920, upper := 3436707840, M := 2 } = true := by
  decide +kernel

theorem row115_layer018_checked :
    coverLayerCheck row115.height row115.goods { lower := 3436707840, upper := 6873415680, M := 1 } = true := by
  decide +kernel

theorem row115_layer019_checked :
    coverLayerCheck row115.height row115.goods { lower := 6873415680, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layers_checked :
    row115.layers.all (coverLayerCheck row115.height row115.goods) = true := by
  change row115_layers.all (coverLayerCheck row115.height row115.goods) = true
  simp only [row115_layers, List.all_cons, List.all_nil,
    row115_layer000_checked,
    row115_layer001_checked,
    row115_layer002_checked,
    row115_layer003_checked,
    row115_layer004_checked,
    row115_layer005_checked,
    row115_layer006_checked,
    row115_layer007_checked,
    row115_layer008_checked,
    row115_layer009_checked,
    row115_layer010_checked,
    row115_layer011_checked,
    row115_layer012_checked,
    row115_layer013_checked,
    row115_layer014_checked,
    row115_layer015_checked,
    row115_layer016_checked,
    row115_layer017_checked,
    row115_layer018_checked,
    row115_layer019_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_checked : finiteCoverRowCheck row115 = true := by
  simp only [finiteCoverRowCheck, row115_registered, row115_goods_checked,
    row115_small_checked, row115_layerCover_checked, row115_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i115 :
    ∀ n j : ℕ, 1 ≤ 115 ∧ 115 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 115 ≤ p ∧ p ∣ Nat.choose n 115 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row115_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i115
