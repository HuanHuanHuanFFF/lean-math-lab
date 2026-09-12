import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B16.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_arithmetic : LayerArithmeticValid row077.height { lower := 187264, upper := 374528, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_enumeration :
    activePowerIntervalList 77 14 187264 374528 = row077_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs000 :
    row077_layer005_block000.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs001 :
    row077_layer005_block001.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs002 :
    row077_layer005_block002.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs003 :
    row077_layer005_block003.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs004 :
    row077_layer005_block004.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_chunks_eq : row077_layer005_chunks.flatten = row077_layer005_intervals := by
  rfl

theorem row077_layer005_pairs : pairCoverCheck row077_layer005_intervals row077_bounds = true := by
  apply pairCoverCheck_of_chunks row077_layer005_chunks_eq
  intro block hblock
  simp only [row077_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row077_layer005_pairs000
  · exact row077_layer005_pairs001
  · exact row077_layer005_pairs002
  · exact row077_layer005_pairs003
  · exact row077_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_checked :
    coverLayerCheck row077.height row077.goods { lower := 187264, upper := 374528, M := 14 } = true := by
  exact coverLayerCheck_of_parts row077_layer005_arithmetic row077_layer005_enumeration row077_bounds_eq row077_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer006_intervals : List ColouredInterval :=
  [(2, 393216, 393292), (2, 393216, 393292), (2, 458752, 458828), (2, 524288, 524364), (2, 589824, 589900), (2, 655360, 655436), (2, 720896, 720972), (2, 393216, 393292), (2, 524288, 524364), (2, 655360, 655436), (2, 524288, 524364), (2, 524288, 524364), (3, 413343, 413419), (3, 472392, 472468), (3, 531441, 531517), (3, 590490, 590566), (3, 649539, 649615), (3, 708588, 708664), (3, 531441, 531517), (3, 708588, 708664), (3, 531441, 531517), (5, 390625, 390701), (5, 468750, 468826), (5, 546875, 546951), (5, 625000, 625076), (5, 703125, 703201), (5, 390625, 390701), (13, 742586, 742662), (17, 417605, 417681), (17, 501126, 501202), (17, 584647, 584723), (17, 668168, 668244), (19, 390963, 391039), (19, 521284, 521360), (19, 651605, 651681), (23, 559682, 559758), (29, 707281, 707357), (37, 405224, 405300), (37, 455877, 455953), (37, 506530, 506606), (37, 557183, 557259), (37, 607836, 607912), (41, 413526, 413602), (41, 482447, 482523), (41, 551368, 551444), (41, 620289, 620365), (41, 689210, 689286), (43, 397535, 397611), (43, 477042, 477118), (43, 556549, 556625), (43, 636056, 636132), (43, 715563, 715639), (47, 415292, 415368), (47, 519115, 519191), (47, 622938, 623014), (47, 726761, 726837), (53, 446631, 446707), (53, 595508, 595584), (53, 744385, 744461), (59, 410758, 410834), (59, 616137, 616213), (61, 453962, 454038), (61, 680943, 681019), (67, 601526, 601602), (71, 715822, 715898), (73, 389017, 389093)]

def row077_layer006_block000 : List ColouredInterval :=
  [(2, 393216, 393292), (2, 393216, 393292), (2, 458752, 458828), (2, 524288, 524364), (2, 589824, 589900), (2, 655360, 655436), (2, 720896, 720972), (2, 393216, 393292), (2, 524288, 524364), (2, 655360, 655436), (2, 524288, 524364), (2, 524288, 524364), (3, 413343, 413419), (3, 472392, 472468), (3, 531441, 531517), (3, 590490, 590566)]

def row077_layer006_block001 : List ColouredInterval :=
  [(3, 649539, 649615), (3, 708588, 708664), (3, 531441, 531517), (3, 708588, 708664), (3, 531441, 531517), (5, 390625, 390701), (5, 468750, 468826), (5, 546875, 546951), (5, 625000, 625076), (5, 703125, 703201), (5, 390625, 390701), (13, 742586, 742662), (17, 417605, 417681), (17, 501126, 501202), (17, 584647, 584723), (17, 668168, 668244)]

def row077_layer006_block002 : List ColouredInterval :=
  [(19, 390963, 391039), (19, 521284, 521360), (19, 651605, 651681), (23, 559682, 559758), (29, 707281, 707357), (37, 405224, 405300), (37, 455877, 455953), (37, 506530, 506606), (37, 557183, 557259), (37, 607836, 607912), (41, 413526, 413602), (41, 482447, 482523), (41, 551368, 551444), (41, 620289, 620365), (41, 689210, 689286), (43, 397535, 397611)]

def row077_layer006_block003 : List ColouredInterval :=
  [(43, 477042, 477118), (43, 556549, 556625), (43, 636056, 636132), (43, 715563, 715639), (47, 415292, 415368), (47, 519115, 519191), (47, 622938, 623014), (47, 726761, 726837), (53, 446631, 446707), (53, 595508, 595584), (53, 744385, 744461), (59, 410758, 410834), (59, 616137, 616213), (61, 453962, 454038), (61, 680943, 681019), (67, 601526, 601602)]

def row077_layer006_block004 : List ColouredInterval :=
  [(71, 715822, 715898), (73, 389017, 389093)]

def row077_layer006_chunks : List (List ColouredInterval) :=
  [row077_layer006_block000, row077_layer006_block001, row077_layer006_block002, row077_layer006_block003, row077_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_arithmetic : LayerArithmeticValid row077.height { lower := 374528, upper := 749056, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_enumeration :
    activePowerIntervalList 77 12 374528 749056 = row077_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs000 :
    row077_layer006_block000.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs001 :
    row077_layer006_block001.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs002 :
    row077_layer006_block002.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs003 :
    row077_layer006_block003.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs003
