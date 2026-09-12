import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037J32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037J32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_pairs001 :
    row037_layer006_block001.all (fun I => row037_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_pairs002 :
    row037_layer006_block002.all (fun I => row037_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_pairs003 :
    row037_layer006_block003.all (fun I => row037_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_pairs004 :
    row037_layer006_block004.all (fun I => row037_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_pairs005 :
    row037_layer006_block005.all (fun I => row037_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_chunks_eq : row037_layer006_chunks.flatten = row037_layer006_intervals := by
  rfl

theorem row037_layer006_pairs : pairCoverCheck row037_layer006_intervals row037_bounds = true := by
  apply pairCoverCheck_of_chunks row037_layer006_chunks_eq
  intro block hblock
  simp only [row037_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row037_layer006_pairs000
  · exact row037_layer006_pairs001
  · exact row037_layer006_pairs002
  · exact row037_layer006_pairs003
  · exact row037_layer006_pairs004
  · exact row037_layer006_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer006_checked :
    coverLayerCheck row037.height row037.goods { lower := 85248, upper := 170496, M := 20 } = true := by
  exact coverLayerCheck_of_parts row037_layer006_arithmetic row037_layer006_enumeration row037_bounds_eq row037_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer007_intervals : List ColouredInterval :=
  [(2, 180224, 180260), (2, 196608, 196644), (2, 212992, 213028), (2, 229376, 229412), (2, 245760, 245796), (2, 262144, 262180), (2, 278528, 278564), (2, 294912, 294948), (2, 196608, 196644), (2, 229376, 229412), (2, 262144, 262180), (2, 294912, 294948), (2, 327680, 327716), (2, 196608, 196644), (2, 262144, 262180), (2, 327680, 327716), (2, 262144, 262180), (2, 262144, 262180), (3, 177147, 177183), (3, 196830, 196866), (3, 216513, 216549), (3, 236196, 236232), (3, 255879, 255915), (3, 275562, 275598), (3, 295245, 295281), (3, 314928, 314964), (3, 334611, 334647), (3, 177147, 177183), (3, 236196, 236232), (3, 295245, 295281), (3, 177147, 177183), (5, 171875, 171911), (5, 187500, 187536), (5, 203125, 203161), (5, 218750, 218786), (5, 234375, 234411), (5, 250000, 250036), (5, 265625, 265661), (5, 281250, 281286), (5, 234375, 234411), (5, 312500, 312536), (7, 184877, 184913), (7, 201684, 201720), (7, 218491, 218527), (7, 235298, 235334), (7, 252105, 252141), (7, 268912, 268948), (7, 285719, 285755), (7, 302526, 302562), (7, 235298, 235334), (11, 175692, 175728), (11, 190333, 190369), (11, 204974, 205010), (11, 219615, 219651), (11, 234256, 234292), (11, 248897, 248933), (11, 263538, 263574), (11, 322102, 322138), (13, 171366, 171402), (13, 199927, 199963), (13, 228488, 228524), (13, 257049, 257085), (13, 285610, 285646), (13, 314171, 314207), (17, 250563, 250599), (17, 334084, 334120), (19, 260642, 260678), (23, 182505, 182541), (23, 194672, 194708), (23, 206839, 206875), (23, 219006, 219042), (23, 279841, 279877), (29, 170723, 170759), (29, 195112, 195148), (29, 219501, 219537), (29, 243890, 243926), (29, 268279, 268315), (29, 292668, 292704), (29, 317057, 317093), (31, 178746, 178782), (31, 208537, 208573), (31, 238328, 238364), (31, 268119, 268155), (31, 297910, 297946), (31, 327701, 327737)]

def row037_layer007_block000 : List ColouredInterval :=
  [(2, 180224, 180260), (2, 196608, 196644), (2, 212992, 213028), (2, 229376, 229412), (2, 245760, 245796), (2, 262144, 262180), (2, 278528, 278564), (2, 294912, 294948), (2, 196608, 196644), (2, 229376, 229412), (2, 262144, 262180), (2, 294912, 294948), (2, 327680, 327716), (2, 196608, 196644), (2, 262144, 262180), (2, 327680, 327716)]

def row037_layer007_block001 : List ColouredInterval :=
  [(2, 262144, 262180), (2, 262144, 262180), (3, 177147, 177183), (3, 196830, 196866), (3, 216513, 216549), (3, 236196, 236232), (3, 255879, 255915), (3, 275562, 275598), (3, 295245, 295281), (3, 314928, 314964), (3, 334611, 334647), (3, 177147, 177183), (3, 236196, 236232), (3, 295245, 295281), (3, 177147, 177183), (5, 171875, 171911)]

def row037_layer007_block002 : List ColouredInterval :=
  [(5, 187500, 187536), (5, 203125, 203161), (5, 218750, 218786), (5, 234375, 234411), (5, 250000, 250036), (5, 265625, 265661), (5, 281250, 281286), (5, 234375, 234411), (5, 312500, 312536), (7, 184877, 184913), (7, 201684, 201720), (7, 218491, 218527), (7, 235298, 235334), (7, 252105, 252141), (7, 268912, 268948), (7, 285719, 285755)]

def row037_layer007_block003 : List ColouredInterval :=
  [(7, 302526, 302562), (7, 235298, 235334), (11, 175692, 175728), (11, 190333, 190369), (11, 204974, 205010), (11, 219615, 219651), (11, 234256, 234292), (11, 248897, 248933), (11, 263538, 263574), (11, 322102, 322138), (13, 171366, 171402), (13, 199927, 199963), (13, 228488, 228524), (13, 257049, 257085), (13, 285610, 285646), (13, 314171, 314207)]

def row037_layer007_block004 : List ColouredInterval :=
  [(17, 250563, 250599), (17, 334084, 334120), (19, 260642, 260678), (23, 182505, 182541), (23, 194672, 194708), (23, 206839, 206875), (23, 219006, 219042), (23, 279841, 279877), (29, 170723, 170759), (29, 195112, 195148), (29, 219501, 219537), (29, 243890, 243926), (29, 268279, 268315), (29, 292668, 292704), (29, 317057, 317093), (31, 178746, 178782)]

def row037_layer007_block005 : List ColouredInterval :=
  [(31, 208537, 208573), (31, 238328, 238364), (31, 268119, 268155), (31, 297910, 297946), (31, 327701, 327737)]

def row037_layer007_chunks : List (List ColouredInterval) :=
  [row037_layer007_block000, row037_layer007_block001, row037_layer007_block002, row037_layer007_block003, row037_layer007_block004, row037_layer007_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_arithmetic : LayerArithmeticValid row037.height { lower := 170496, upper := 340992, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_enumeration :
    activePowerIntervalList 37 18 170496 340992 = row037_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_pairs000 :
    row037_layer007_block000.all (fun I => row037_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_pairs001 :
    row037_layer007_block001.all (fun I => row037_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_pairs002 :
    row037_layer007_block002.all (fun I => row037_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_pairs003 :
    row037_layer007_block003.all (fun I => row037_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_pairs004 :
    row037_layer007_block004.all (fun I => row037_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_pairs005 :
    row037_layer007_block005.all (fun I => row037_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_chunks_eq : row037_layer007_chunks.flatten = row037_layer007_intervals := by
  rfl

theorem row037_layer007_pairs : pairCoverCheck row037_layer007_intervals row037_bounds = true := by
  apply pairCoverCheck_of_chunks row037_layer007_chunks_eq
  intro block hblock
  simp only [row037_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row037_layer007_pairs000
  · exact row037_layer007_pairs001
  · exact row037_layer007_pairs002
  · exact row037_layer007_pairs003
  · exact row037_layer007_pairs004
  · exact row037_layer007_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer007_checked :
    coverLayerCheck row037.height row037.goods { lower := 170496, upper := 340992, M := 18 } = true := by
  exact coverLayerCheck_of_parts row037_layer007_arithmetic row037_layer007_enumeration row037_bounds_eq row037_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer008_intervals : List ColouredInterval :=
  [(2, 360448, 360484), (2, 393216, 393252), (2, 425984, 426020), (2, 458752, 458788), (2, 491520, 491556), (2, 524288, 524324), (2, 557056, 557092), (2, 393216, 393252), (2, 458752, 458788), (2, 524288, 524324), (2, 589824, 589860), (2, 655360, 655396), (2, 393216, 393252), (2, 524288, 524324), (2, 655360, 655396), (2, 524288, 524324), (2, 524288, 524324), (3, 354294, 354330), (3, 413343, 413379), (3, 472392, 472428), (3, 531441, 531477), (3, 590490, 590526), (3, 649539, 649575), (3, 354294, 354330), (3, 531441, 531477), (3, 531441, 531477), (5, 390625, 390661), (5, 468750, 468786), (5, 546875, 546911), (5, 625000, 625036), (5, 390625, 390661), (7, 352947, 352983), (7, 470596, 470632), (7, 588245, 588281), (11, 483153, 483189), (11, 644204, 644240), (13, 342732, 342768), (13, 371293, 371329), (13, 399854, 399890), (13, 428415, 428451), (13, 456976, 457012), (13, 485537, 485573), (13, 371293, 371329), (17, 417605, 417641), (17, 501126, 501162), (17, 584647, 584683), (17, 668168, 668204), (19, 390963, 390999), (19, 521284, 521320), (19, 651605, 651641), (23, 559682, 559718), (29, 341446, 341482), (29, 365835, 365871), (29, 390224, 390260), (29, 414613, 414649), (31, 357492, 357528), (31, 387283, 387319), (31, 417074, 417110), (31, 446865, 446901), (31, 476656, 476692), (31, 506447, 506483)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer008_arithmetic : LayerArithmeticValid row037.height { lower := 340992, upper := 681984, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer008_enumeration :
    activePowerIntervalList 37 17 340992 681984 = row037_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer008_pairs : pairCoverCheck row037_layer008_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer008_checked :
    coverLayerCheck row037.height row037.goods { lower := 340992, upper := 681984, M := 17 } = true := by
  exact coverLayerCheck_of_parts row037_layer008_arithmetic row037_layer008_enumeration row037_bounds_eq row037_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer009_intervals : List ColouredInterval :=
  [(2, 720896, 720932), (2, 786432, 786468), (2, 851968, 852004), (2, 917504, 917540), (2, 983040, 983076), (2, 1048576, 1048612), (2, 786432, 786468), (2, 917504, 917540), (2, 1048576, 1048612), (2, 1179648, 1179684), (2, 1310720, 1310756), (2, 786432, 786468), (2, 1048576, 1048612), (2, 1310720, 1310756), (2, 1048576, 1048612), (2, 1048576, 1048612), (3, 708588, 708624), (3, 767637, 767673), (3, 826686, 826722), (3, 885735, 885771), (3, 944784, 944820), (3, 708588, 708624), (3, 885735, 885771), (3, 1062882, 1062918), (3, 1240029, 1240065), (3, 1062882, 1062918), (5, 703125, 703161), (5, 781250, 781286), (5, 859375, 859411), (5, 937500, 937536), (5, 1015625, 1015661), (5, 1093750, 1093786), (5, 1171875, 1171911), (5, 1250000, 1250036), (5, 781250, 781286), (5, 1171875, 1171911), (7, 705894, 705930), (7, 823543, 823579), (7, 941192, 941228), (7, 1058841, 1058877), (7, 1176490, 1176526), (7, 1294139, 1294175), (7, 823543, 823579), (11, 805255, 805291), (11, 966306, 966342), (11, 1127357, 1127393), (11, 1288408, 1288444), (13, 742586, 742622), (13, 1113879, 1113915), (17, 751689, 751725), (17, 835210, 835246), (17, 918731, 918767), (17, 1002252, 1002288), (17, 1085773, 1085809), (17, 1169294, 1169330), (17, 1252815, 1252851), (17, 1336336, 1336372), (19, 781926, 781962), (19, 912247, 912283), (19, 1042568, 1042604), (19, 1172889, 1172925), (19, 1303210, 1303246), (23, 839523, 839559), (23, 1119364, 1119400), (29, 707281, 707317), (31, 923521, 923557)]

def row037_layer009_block000 : List ColouredInterval :=
  [(2, 720896, 720932), (2, 786432, 786468), (2, 851968, 852004), (2, 917504, 917540), (2, 983040, 983076), (2, 1048576, 1048612), (2, 786432, 786468), (2, 917504, 917540), (2, 1048576, 1048612), (2, 1179648, 1179684), (2, 1310720, 1310756), (2, 786432, 786468), (2, 1048576, 1048612), (2, 1310720, 1310756), (2, 1048576, 1048612), (2, 1048576, 1048612)]

def row037_layer009_block001 : List ColouredInterval :=
  [(3, 708588, 708624), (3, 767637, 767673), (3, 826686, 826722), (3, 885735, 885771), (3, 944784, 944820), (3, 708588, 708624), (3, 885735, 885771), (3, 1062882, 1062918), (3, 1240029, 1240065), (3, 1062882, 1062918), (5, 703125, 703161), (5, 781250, 781286), (5, 859375, 859411), (5, 937500, 937536), (5, 1015625, 1015661), (5, 1093750, 1093786)]

def row037_layer009_block002 : List ColouredInterval :=
  [(5, 1171875, 1171911), (5, 1250000, 1250036), (5, 781250, 781286), (5, 1171875, 1171911), (7, 705894, 705930), (7, 823543, 823579), (7, 941192, 941228), (7, 1058841, 1058877), (7, 1176490, 1176526), (7, 1294139, 1294175), (7, 823543, 823579), (11, 805255, 805291), (11, 966306, 966342), (11, 1127357, 1127393), (11, 1288408, 1288444), (13, 742586, 742622)]

def row037_layer009_block003 : List ColouredInterval :=
  [(13, 1113879, 1113915), (17, 751689, 751725), (17, 835210, 835246), (17, 918731, 918767), (17, 1002252, 1002288), (17, 1085773, 1085809), (17, 1169294, 1169330), (17, 1252815, 1252851), (17, 1336336, 1336372), (19, 781926, 781962), (19, 912247, 912283), (19, 1042568, 1042604), (19, 1172889, 1172925), (19, 1303210, 1303246), (23, 839523, 839559), (23, 1119364, 1119400)]

def row037_layer009_block004 : List ColouredInterval :=
  [(29, 707281, 707317), (31, 923521, 923557)]

def row037_layer009_chunks : List (List ColouredInterval) :=
  [row037_layer009_block000, row037_layer009_block001, row037_layer009_block002, row037_layer009_block003, row037_layer009_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_arithmetic : LayerArithmeticValid row037.height { lower := 681984, upper := 1363968, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_enumeration :
    activePowerIntervalList 37 16 681984 1363968 = row037_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_pairs000 :
    row037_layer009_block000.all (fun I => row037_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_pairs001 :
    row037_layer009_block001.all (fun I => row037_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_pairs002 :
    row037_layer009_block002.all (fun I => row037_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_pairs003 :
    row037_layer009_block003.all (fun I => row037_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_pairs004 :
    row037_layer009_block004.all (fun I => row037_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row037_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_pairs004
