import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer006_pairs005 :
    row047_layer006_block005.all (fun I => row047_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer006_pairs006 :
    row047_layer006_block006.all (fun I => row047_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer006_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer006_chunks_eq : row047_layer006_chunks.flatten = row047_layer006_intervals := by
  rfl

theorem row047_layer006_pairs : pairCoverCheck row047_layer006_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer006_chunks_eq
  intro block hblock
  simp only [row047_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row047_layer006_pairs000
  · exact row047_layer006_pairs001
  · exact row047_layer006_pairs002
  · exact row047_layer006_pairs003
  · exact row047_layer006_pairs004
  · exact row047_layer006_pairs005
  · exact row047_layer006_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer006_checked :
    coverLayerCheck row047.height row047.goods { lower := 138368, upper := 276736, M := 22 } = true := by
  exact coverLayerCheck_of_parts row047_layer006_arithmetic row047_layer006_enumeration row047_bounds_eq row047_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer007_intervals : List ColouredInterval :=
  [(2, 278528, 278574), (2, 294912, 294958), (2, 311296, 311342), (2, 327680, 327726), (2, 344064, 344110), (2, 294912, 294958), (2, 327680, 327726), (2, 360448, 360494), (2, 393216, 393262), (2, 425984, 426030), (2, 458752, 458798), (2, 491520, 491566), (2, 524288, 524334), (2, 327680, 327726), (2, 393216, 393262), (2, 458752, 458798), (2, 524288, 524334), (2, 393216, 393262), (2, 524288, 524334), (2, 524288, 524334), (2, 524288, 524334), (3, 295245, 295291), (3, 314928, 314974), (3, 334611, 334657), (3, 354294, 354340), (3, 373977, 374023), (3, 393660, 393706), (3, 413343, 413389), (3, 295245, 295291), (3, 354294, 354340), (3, 413343, 413389), (3, 472392, 472438), (3, 531441, 531487), (3, 354294, 354340), (3, 531441, 531487), (3, 531441, 531487), (5, 281250, 281296), (5, 296875, 296921), (5, 312500, 312546), (5, 328125, 328171), (5, 312500, 312546), (5, 390625, 390671), (5, 468750, 468796), (5, 546875, 546921), (5, 390625, 390671), (7, 285719, 285765), (7, 302526, 302572), (7, 319333, 319379), (7, 336140, 336186), (7, 352947, 352993), (7, 352947, 352993), (7, 470596, 470642), (11, 278179, 278225), (11, 292820, 292866), (11, 307461, 307507), (11, 322102, 322148), (11, 483153, 483199), (13, 285610, 285656), (13, 314171, 314217), (13, 342732, 342778), (13, 371293, 371339), (13, 399854, 399900), (13, 428415, 428461), (13, 456976, 457022), (13, 485537, 485583), (13, 514098, 514144), (13, 542659, 542705), (13, 371293, 371339), (17, 334084, 334130), (17, 417605, 417651), (17, 501126, 501172), (19, 390963, 391009), (19, 521284, 521330), (23, 279841, 279887), (29, 292668, 292714), (29, 317057, 317103), (29, 341446, 341492), (29, 365835, 365881), (29, 390224, 390270), (29, 414613, 414659), (29, 439002, 439048), (29, 463391, 463437), (29, 487780, 487826), (29, 512169, 512215), (31, 297910, 297956), (31, 327701, 327747), (31, 357492, 357538), (31, 387283, 387329), (31, 417074, 417120), (31, 446865, 446911), (31, 476656, 476702), (31, 506447, 506493), (31, 536238, 536284), (37, 303918, 303964), (37, 354571, 354617), (37, 405224, 405270), (37, 455877, 455923), (37, 506530, 506576), (41, 344605, 344651), (41, 413526, 413572), (41, 482447, 482493), (41, 551368, 551414), (43, 318028, 318074), (43, 397535, 397581), (43, 477042, 477088)]

def row047_layer007_block000 : List ColouredInterval :=
  [(2, 278528, 278574), (2, 294912, 294958), (2, 311296, 311342), (2, 327680, 327726), (2, 344064, 344110), (2, 294912, 294958), (2, 327680, 327726), (2, 360448, 360494), (2, 393216, 393262), (2, 425984, 426030), (2, 458752, 458798), (2, 491520, 491566), (2, 524288, 524334), (2, 327680, 327726), (2, 393216, 393262), (2, 458752, 458798)]

def row047_layer007_block001 : List ColouredInterval :=
  [(2, 524288, 524334), (2, 393216, 393262), (2, 524288, 524334), (2, 524288, 524334), (2, 524288, 524334), (3, 295245, 295291), (3, 314928, 314974), (3, 334611, 334657), (3, 354294, 354340), (3, 373977, 374023), (3, 393660, 393706), (3, 413343, 413389), (3, 295245, 295291), (3, 354294, 354340), (3, 413343, 413389), (3, 472392, 472438)]

def row047_layer007_block002 : List ColouredInterval :=
  [(3, 531441, 531487), (3, 354294, 354340), (3, 531441, 531487), (3, 531441, 531487), (5, 281250, 281296), (5, 296875, 296921), (5, 312500, 312546), (5, 328125, 328171), (5, 312500, 312546), (5, 390625, 390671), (5, 468750, 468796), (5, 546875, 546921), (5, 390625, 390671), (7, 285719, 285765), (7, 302526, 302572), (7, 319333, 319379)]

def row047_layer007_block003 : List ColouredInterval :=
  [(7, 336140, 336186), (7, 352947, 352993), (7, 352947, 352993), (7, 470596, 470642), (11, 278179, 278225), (11, 292820, 292866), (11, 307461, 307507), (11, 322102, 322148), (11, 483153, 483199), (13, 285610, 285656), (13, 314171, 314217), (13, 342732, 342778), (13, 371293, 371339), (13, 399854, 399900), (13, 428415, 428461), (13, 456976, 457022)]

def row047_layer007_block004 : List ColouredInterval :=
  [(13, 485537, 485583), (13, 514098, 514144), (13, 542659, 542705), (13, 371293, 371339), (17, 334084, 334130), (17, 417605, 417651), (17, 501126, 501172), (19, 390963, 391009), (19, 521284, 521330), (23, 279841, 279887), (29, 292668, 292714), (29, 317057, 317103), (29, 341446, 341492), (29, 365835, 365881), (29, 390224, 390270), (29, 414613, 414659)]

def row047_layer007_block005 : List ColouredInterval :=
  [(29, 439002, 439048), (29, 463391, 463437), (29, 487780, 487826), (29, 512169, 512215), (31, 297910, 297956), (31, 327701, 327747), (31, 357492, 357538), (31, 387283, 387329), (31, 417074, 417120), (31, 446865, 446911), (31, 476656, 476702), (31, 506447, 506493), (31, 536238, 536284), (37, 303918, 303964), (37, 354571, 354617), (37, 405224, 405270)]

def row047_layer007_block006 : List ColouredInterval :=
  [(37, 455877, 455923), (37, 506530, 506576), (41, 344605, 344651), (41, 413526, 413572), (41, 482447, 482493), (41, 551368, 551414), (43, 318028, 318074), (43, 397535, 397581), (43, 477042, 477088)]

def row047_layer007_chunks : List (List ColouredInterval) :=
  [row047_layer007_block000, row047_layer007_block001, row047_layer007_block002, row047_layer007_block003, row047_layer007_block004, row047_layer007_block005, row047_layer007_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer007_arithmetic : LayerArithmeticValid row047.height { lower := 276736, upper := 553472, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer007_enumeration :
    activePowerIntervalList 47 21 276736 553472 = row047_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer007_pairs000 :
    row047_layer007_block000.all (fun I => row047_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer007_pairs000
