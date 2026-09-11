import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row075B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_pairs005 :
    row075_layer004_block005.all (fun I => row075_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_chunks_eq : row075_layer004_chunks.flatten = row075_layer004_intervals := by
  rfl

theorem row075_layer004_pairs : pairCoverCheck row075_layer004_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer004_chunks_eq
  intro block hblock
  simp only [row075_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row075_layer004_pairs000
  · exact row075_layer004_pairs001
  · exact row075_layer004_pairs002
  · exact row075_layer004_pairs003
  · exact row075_layer004_pairs004
  · exact row075_layer004_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer004_checked :
    coverLayerCheck row075.height row075.goods { lower := 88800, upper := 177600, M := 21 } = true := by
  exact coverLayerCheck_of_parts row075_layer004_arithmetic row075_layer004_enumeration row075_bounds_eq row075_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer005_intervals : List ColouredInterval :=
  [(2, 180224, 180298), (2, 196608, 196682), (2, 212992, 213066), (2, 229376, 229450), (2, 245760, 245834), (2, 262144, 262218), (2, 278528, 278602), (2, 294912, 294986), (2, 196608, 196682), (2, 229376, 229450), (2, 262144, 262218), (2, 294912, 294986), (2, 327680, 327754), (2, 196608, 196682), (2, 262144, 262218), (2, 327680, 327754), (2, 262144, 262218), (2, 262144, 262218), (3, 236196, 236270), (3, 295245, 295319), (3, 354294, 354368), (3, 354294, 354368), (7, 184877, 184951), (7, 201684, 201758), (7, 218491, 218565), (7, 235298, 235372), (7, 252105, 252179), (7, 268912, 268986), (7, 285719, 285793), (7, 302526, 302600), (7, 235298, 235372), (7, 352947, 353021), (11, 190333, 190407), (11, 204974, 205048), (11, 219615, 219689), (11, 234256, 234330), (11, 248897, 248971), (11, 263538, 263612), (11, 322102, 322176), (13, 199927, 200001), (13, 228488, 228562), (13, 257049, 257123), (13, 285610, 285684), (13, 314171, 314245), (13, 342732, 342806), (17, 250563, 250637), (17, 334084, 334158), (19, 260642, 260716), (23, 182505, 182579), (23, 194672, 194746), (23, 206839, 206913), (23, 219006, 219080), (23, 279841, 279915), (29, 195112, 195186), (29, 219501, 219575), (29, 243890, 243964), (29, 268279, 268353), (29, 292668, 292742), (29, 317057, 317131), (29, 341446, 341520), (31, 178746, 178820), (31, 208537, 208611), (31, 238328, 238402), (31, 268119, 268193), (31, 297910, 297984), (31, 327701, 327775), (37, 202612, 202686), (37, 253265, 253339), (37, 303918, 303992), (37, 354571, 354645), (41, 206763, 206837), (41, 275684, 275758), (41, 344605, 344679), (43, 238521, 238595), (43, 318028, 318102), (47, 207646, 207720), (47, 311469, 311543), (53, 297754, 297828), (59, 205379, 205453), (61, 226981, 227055), (67, 300763, 300837)]

def row075_layer005_block000 : List ColouredInterval :=
  [(2, 180224, 180298), (2, 196608, 196682), (2, 212992, 213066), (2, 229376, 229450), (2, 245760, 245834), (2, 262144, 262218), (2, 278528, 278602), (2, 294912, 294986), (2, 196608, 196682), (2, 229376, 229450), (2, 262144, 262218), (2, 294912, 294986), (2, 327680, 327754), (2, 196608, 196682), (2, 262144, 262218), (2, 327680, 327754)]

def row075_layer005_block001 : List ColouredInterval :=
  [(2, 262144, 262218), (2, 262144, 262218), (3, 236196, 236270), (3, 295245, 295319), (3, 354294, 354368), (3, 354294, 354368), (7, 184877, 184951), (7, 201684, 201758), (7, 218491, 218565), (7, 235298, 235372), (7, 252105, 252179), (7, 268912, 268986), (7, 285719, 285793), (7, 302526, 302600), (7, 235298, 235372), (7, 352947, 353021)]

def row075_layer005_block002 : List ColouredInterval :=
  [(11, 190333, 190407), (11, 204974, 205048), (11, 219615, 219689), (11, 234256, 234330), (11, 248897, 248971), (11, 263538, 263612), (11, 322102, 322176), (13, 199927, 200001), (13, 228488, 228562), (13, 257049, 257123), (13, 285610, 285684), (13, 314171, 314245), (13, 342732, 342806), (17, 250563, 250637), (17, 334084, 334158), (19, 260642, 260716)]

def row075_layer005_block003 : List ColouredInterval :=
  [(23, 182505, 182579), (23, 194672, 194746), (23, 206839, 206913), (23, 219006, 219080), (23, 279841, 279915), (29, 195112, 195186), (29, 219501, 219575), (29, 243890, 243964), (29, 268279, 268353), (29, 292668, 292742), (29, 317057, 317131), (29, 341446, 341520), (31, 178746, 178820), (31, 208537, 208611), (31, 238328, 238402), (31, 268119, 268193)]

def row075_layer005_block004 : List ColouredInterval :=
  [(31, 297910, 297984), (31, 327701, 327775), (37, 202612, 202686), (37, 253265, 253339), (37, 303918, 303992), (37, 354571, 354645), (41, 206763, 206837), (41, 275684, 275758), (41, 344605, 344679), (43, 238521, 238595), (43, 318028, 318102), (47, 207646, 207720), (47, 311469, 311543), (53, 297754, 297828), (59, 205379, 205453), (61, 226981, 227055)]

def row075_layer005_block005 : List ColouredInterval :=
  [(67, 300763, 300837)]

def row075_layer005_chunks : List (List ColouredInterval) :=
  [row075_layer005_block000, row075_layer005_block001, row075_layer005_block002, row075_layer005_block003, row075_layer005_block004, row075_layer005_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_arithmetic : LayerArithmeticValid row075.height { lower := 177600, upper := 355200, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_enumeration :
    activePowerIntervalList 75 18 177600 355200 = row075_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_pairs000 :
    row075_layer005_block000.all (fun I => row075_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_pairs001 :
    row075_layer005_block001.all (fun I => row075_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_pairs002 :
    row075_layer005_block002.all (fun I => row075_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_pairs003 :
    row075_layer005_block003.all (fun I => row075_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_pairs004 :
    row075_layer005_block004.all (fun I => row075_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_pairs005 :
    row075_layer005_block005.all (fun I => row075_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_chunks_eq : row075_layer005_chunks.flatten = row075_layer005_intervals := by
  rfl

theorem row075_layer005_pairs : pairCoverCheck row075_layer005_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer005_chunks_eq
  intro block hblock
  simp only [row075_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row075_layer005_pairs000
  · exact row075_layer005_pairs001
  · exact row075_layer005_pairs002
  · exact row075_layer005_pairs003
  · exact row075_layer005_pairs004
  · exact row075_layer005_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer005_checked :
    coverLayerCheck row075.height row075.goods { lower := 177600, upper := 355200, M := 18 } = true := by
  exact coverLayerCheck_of_parts row075_layer005_arithmetic row075_layer005_enumeration row075_bounds_eq row075_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer006_intervals : List ColouredInterval :=
  [(2, 360448, 360522), (2, 393216, 393290), (2, 425984, 426058), (2, 458752, 458826), (2, 491520, 491594), (2, 524288, 524362), (2, 393216, 393290), (2, 458752, 458826), (2, 524288, 524362), (2, 589824, 589898), (2, 655360, 655434), (2, 393216, 393290), (2, 524288, 524362), (2, 655360, 655434), (2, 524288, 524362), (2, 524288, 524362), (3, 531441, 531515), (3, 708588, 708662), (3, 531441, 531515), (7, 470596, 470670), (7, 588245, 588319), (7, 705894, 705968), (11, 483153, 483227), (11, 644204, 644278), (13, 371293, 371367), (13, 399854, 399928), (13, 428415, 428489), (13, 456976, 457050), (13, 371293, 371367), (17, 417605, 417679), (17, 501126, 501200), (17, 584647, 584721), (17, 668168, 668242), (19, 390963, 391037), (19, 521284, 521358), (19, 651605, 651679), (23, 559682, 559756), (29, 365835, 365909), (29, 390224, 390298), (29, 707281, 707355), (31, 357492, 357566), (31, 387283, 387357), (31, 417074, 417148), (31, 446865, 446939), (31, 476656, 476730), (37, 405224, 405298), (37, 455877, 455951), (37, 506530, 506604), (37, 557183, 557257), (37, 607836, 607910), (37, 658489, 658563), (37, 709142, 709216), (41, 413526, 413600), (41, 482447, 482521), (41, 551368, 551442), (41, 620289, 620363), (41, 689210, 689284), (43, 397535, 397609), (43, 477042, 477116), (43, 556549, 556623), (43, 636056, 636130), (47, 415292, 415366), (47, 519115, 519189), (47, 622938, 623012), (53, 446631, 446705), (53, 595508, 595582), (59, 410758, 410832), (59, 616137, 616211), (61, 453962, 454036), (61, 680943, 681017), (67, 601526, 601600), (71, 357911, 357985), (73, 389017, 389091)]

def row075_layer006_block000 : List ColouredInterval :=
  [(2, 360448, 360522), (2, 393216, 393290), (2, 425984, 426058), (2, 458752, 458826), (2, 491520, 491594), (2, 524288, 524362), (2, 393216, 393290), (2, 458752, 458826), (2, 524288, 524362), (2, 589824, 589898), (2, 655360, 655434), (2, 393216, 393290), (2, 524288, 524362), (2, 655360, 655434), (2, 524288, 524362), (2, 524288, 524362)]

def row075_layer006_block001 : List ColouredInterval :=
  [(3, 531441, 531515), (3, 708588, 708662), (3, 531441, 531515), (7, 470596, 470670), (7, 588245, 588319), (7, 705894, 705968), (11, 483153, 483227), (11, 644204, 644278), (13, 371293, 371367), (13, 399854, 399928), (13, 428415, 428489), (13, 456976, 457050), (13, 371293, 371367), (17, 417605, 417679), (17, 501126, 501200), (17, 584647, 584721)]

def row075_layer006_block002 : List ColouredInterval :=
  [(17, 668168, 668242), (19, 390963, 391037), (19, 521284, 521358), (19, 651605, 651679), (23, 559682, 559756), (29, 365835, 365909), (29, 390224, 390298), (29, 707281, 707355), (31, 357492, 357566), (31, 387283, 387357), (31, 417074, 417148), (31, 446865, 446939), (31, 476656, 476730), (37, 405224, 405298), (37, 455877, 455951), (37, 506530, 506604)]

def row075_layer006_block003 : List ColouredInterval :=
  [(37, 557183, 557257), (37, 607836, 607910), (37, 658489, 658563), (37, 709142, 709216), (41, 413526, 413600), (41, 482447, 482521), (41, 551368, 551442), (41, 620289, 620363), (41, 689210, 689284), (43, 397535, 397609), (43, 477042, 477116), (43, 556549, 556623), (43, 636056, 636130), (47, 415292, 415366), (47, 519115, 519189), (47, 622938, 623012)]

def row075_layer006_block004 : List ColouredInterval :=
  [(53, 446631, 446705), (53, 595508, 595582), (59, 410758, 410832), (59, 616137, 616211), (61, 453962, 454036), (61, 680943, 681017), (67, 601526, 601600), (71, 357911, 357985), (73, 389017, 389091)]

def row075_layer006_chunks : List (List ColouredInterval) :=
  [row075_layer006_block000, row075_layer006_block001, row075_layer006_block002, row075_layer006_block003, row075_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_arithmetic : LayerArithmeticValid row075.height { lower := 355200, upper := 710400, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_enumeration :
    activePowerIntervalList 75 16 355200 710400 = row075_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_pairs000 :
    row075_layer006_block000.all (fun I => row075_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_pairs001 :
    row075_layer006_block001.all (fun I => row075_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_pairs002 :
    row075_layer006_block002.all (fun I => row075_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_pairs003 :
    row075_layer006_block003.all (fun I => row075_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_pairs004 :
    row075_layer006_block004.all (fun I => row075_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_chunks_eq : row075_layer006_chunks.flatten = row075_layer006_intervals := by
  rfl

theorem row075_layer006_pairs : pairCoverCheck row075_layer006_intervals row075_bounds = true := by
  apply pairCoverCheck_of_chunks row075_layer006_chunks_eq
  intro block hblock
  simp only [row075_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row075_layer006_pairs000
  · exact row075_layer006_pairs001
  · exact row075_layer006_pairs002
  · exact row075_layer006_pairs003
  · exact row075_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer006_checked :
    coverLayerCheck row075.height row075.goods { lower := 355200, upper := 710400, M := 16 } = true := by
  exact coverLayerCheck_of_parts row075_layer006_arithmetic row075_layer006_enumeration row075_bounds_eq row075_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row075_layer007_intervals : List ColouredInterval :=
  [(2, 720896, 720970), (2, 786432, 786506), (2, 851968, 852042), (2, 917504, 917578), (2, 786432, 786506), (2, 917504, 917578), (2, 1048576, 1048650), (2, 1179648, 1179722), (2, 1310720, 1310794), (2, 786432, 786506), (2, 1048576, 1048650), (2, 1310720, 1310794), (2, 1048576, 1048650), (2, 1048576, 1048650), (3, 1062882, 1062956), (7, 823543, 823617), (7, 941192, 941266), (7, 1058841, 1058915), (7, 1176490, 1176564), (7, 1294139, 1294213), (7, 1411788, 1411862), (7, 823543, 823617), (11, 805255, 805329), (11, 966306, 966380), (11, 1127357, 1127431), (11, 1288408, 1288482), (13, 742586, 742660), (13, 1113879, 1113953), (17, 751689, 751763), (17, 835210, 835284), (17, 918731, 918805), (17, 1002252, 1002326), (17, 1085773, 1085847), (17, 1169294, 1169368), (17, 1419857, 1419931), (19, 781926, 782000), (19, 912247, 912321), (19, 1042568, 1042642), (19, 1172889, 1172963), (19, 1303210, 1303284), (23, 839523, 839597), (23, 1119364, 1119438), (23, 1399205, 1399279), (29, 1414562, 1414636), (31, 923521, 923595), (41, 758131, 758205), (41, 827052, 827126), (41, 895973, 896047), (41, 964894, 964968), (43, 715563, 715637), (43, 795070, 795144), (43, 874577, 874651), (43, 954084, 954158), (43, 1033591, 1033665), (43, 1113098, 1113172), (47, 726761, 726835), (47, 830584, 830658), (47, 934407, 934481), (47, 1038230, 1038304), (47, 1142053, 1142127), (47, 1245876, 1245950), (47, 1349699, 1349773), (53, 744385, 744459), (53, 893262, 893336), (53, 1042139, 1042213), (53, 1191016, 1191090), (53, 1339893, 1339967), (59, 821516, 821590), (59, 1026895, 1026969), (59, 1232274, 1232348), (61, 907924, 907998), (61, 1134905, 1134979), (61, 1361886, 1361960), (67, 902289, 902363), (67, 1203052, 1203126), (71, 715822, 715896), (71, 1073733, 1073807), (73, 778034, 778108), (73, 1167051, 1167125)]

def row075_layer007_block000 : List ColouredInterval :=
  [(2, 720896, 720970), (2, 786432, 786506), (2, 851968, 852042), (2, 917504, 917578), (2, 786432, 786506), (2, 917504, 917578), (2, 1048576, 1048650), (2, 1179648, 1179722), (2, 1310720, 1310794), (2, 786432, 786506), (2, 1048576, 1048650), (2, 1310720, 1310794), (2, 1048576, 1048650), (2, 1048576, 1048650), (3, 1062882, 1062956), (7, 823543, 823617)]

def row075_layer007_block001 : List ColouredInterval :=
  [(7, 941192, 941266), (7, 1058841, 1058915), (7, 1176490, 1176564), (7, 1294139, 1294213), (7, 1411788, 1411862), (7, 823543, 823617), (11, 805255, 805329), (11, 966306, 966380), (11, 1127357, 1127431), (11, 1288408, 1288482), (13, 742586, 742660), (13, 1113879, 1113953), (17, 751689, 751763), (17, 835210, 835284), (17, 918731, 918805), (17, 1002252, 1002326)]

def row075_layer007_block002 : List ColouredInterval :=
  [(17, 1085773, 1085847), (17, 1169294, 1169368), (17, 1419857, 1419931), (19, 781926, 782000), (19, 912247, 912321), (19, 1042568, 1042642), (19, 1172889, 1172963), (19, 1303210, 1303284), (23, 839523, 839597), (23, 1119364, 1119438), (23, 1399205, 1399279), (29, 1414562, 1414636), (31, 923521, 923595), (41, 758131, 758205), (41, 827052, 827126), (41, 895973, 896047)]

def row075_layer007_block003 : List ColouredInterval :=
  [(41, 964894, 964968), (43, 715563, 715637), (43, 795070, 795144), (43, 874577, 874651), (43, 954084, 954158), (43, 1033591, 1033665), (43, 1113098, 1113172), (47, 726761, 726835), (47, 830584, 830658), (47, 934407, 934481), (47, 1038230, 1038304), (47, 1142053, 1142127), (47, 1245876, 1245950), (47, 1349699, 1349773), (53, 744385, 744459), (53, 893262, 893336)]

def row075_layer007_block004 : List ColouredInterval :=
  [(53, 1042139, 1042213), (53, 1191016, 1191090), (53, 1339893, 1339967), (59, 821516, 821590), (59, 1026895, 1026969), (59, 1232274, 1232348), (61, 907924, 907998), (61, 1134905, 1134979), (61, 1361886, 1361960), (67, 902289, 902363), (67, 1203052, 1203126), (71, 715822, 715896), (71, 1073733, 1073807), (73, 778034, 778108), (73, 1167051, 1167125)]

def row075_layer007_chunks : List (List ColouredInterval) :=
  [row075_layer007_block000, row075_layer007_block001, row075_layer007_block002, row075_layer007_block003, row075_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_arithmetic : LayerArithmeticValid row075.height { lower := 710400, upper := 1420800, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_enumeration :
    activePowerIntervalList 75 14 710400 1420800 = row075_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_pairs000 :
    row075_layer007_block000.all (fun I => row075_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_pairs001 :
    row075_layer007_block001.all (fun I => row075_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_pairs002 :
    row075_layer007_block002.all (fun I => row075_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_pairs003 :
    row075_layer007_block003.all (fun I => row075_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row075_layer007_pairs004 :
    row075_layer007_block004.all (fun I => row075_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row075_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row075_layer007_pairs004
