import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row069B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_pairs002 :
    row069_layer003_block002.all (fun I => row069_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_pairs003 :
    row069_layer003_block003.all (fun I => row069_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_pairs004 :
    row069_layer003_block004.all (fun I => row069_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_pairs005 :
    row069_layer003_block005.all (fun I => row069_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_pairs006 :
    row069_layer003_block006.all (fun I => row069_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_chunks_eq : row069_layer003_chunks.flatten = row069_layer003_intervals := by
  rfl

theorem row069_layer003_pairs : pairCoverCheck row069_layer003_intervals row069_bounds = true := by
  apply pairCoverCheck_of_chunks row069_layer003_chunks_eq
  intro block hblock
  simp only [row069_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row069_layer003_pairs000
  · exact row069_layer003_pairs001
  · exact row069_layer003_pairs002
  · exact row069_layer003_pairs003
  · exact row069_layer003_pairs004
  · exact row069_layer003_pairs005
  · exact row069_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer003_checked :
    coverLayerCheck row069.height row069.goods { lower := 37536, upper := 75072, M := 19 } = true := by
  exact coverLayerCheck_of_parts row069_layer003_arithmetic row069_layer003_enumeration row069_bounds_eq row069_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row069_layer005_intervals : List ColouredInterval :=
  [(2, 163840, 163908), (2, 180224, 180292), (2, 196608, 196676), (2, 212992, 213060), (2, 229376, 229444), (2, 245760, 245828), (2, 163840, 163908), (2, 196608, 196676), (2, 229376, 229444), (2, 262144, 262212), (2, 294912, 294980), (2, 196608, 196676), (2, 262144, 262212), (2, 262144, 262212), (2, 262144, 262212), (3, 177147, 177215), (3, 236196, 236264), (3, 295245, 295313), (3, 177147, 177215), (5, 156250, 156318), (5, 171875, 171943), (5, 187500, 187568), (5, 203125, 203193), (5, 218750, 218818), (5, 234375, 234443), (5, 156250, 156318), (5, 234375, 234443), (7, 151263, 151331), (7, 168070, 168138), (7, 184877, 184945), (7, 201684, 201752), (7, 218491, 218559), (7, 235298, 235366), (7, 252105, 252173), (7, 235298, 235366), (11, 161051, 161119), (11, 175692, 175760), (11, 190333, 190401), (11, 204974, 205042), (11, 219615, 219683), (11, 161051, 161119), (13, 171366, 171434), (13, 199927, 199995), (13, 228488, 228556), (13, 257049, 257117), (13, 285610, 285678), (17, 167042, 167110), (17, 250563, 250631), (19, 260642, 260710), (29, 170723, 170791), (29, 195112, 195180), (29, 219501, 219569), (29, 243890, 243958), (29, 268279, 268347), (29, 292668, 292736), (31, 178746, 178814), (31, 208537, 208605), (31, 238328, 238396), (31, 268119, 268187), (31, 297910, 297978), (37, 151959, 152027), (37, 202612, 202680), (37, 253265, 253333), (41, 206763, 206831), (41, 275684, 275752), (43, 159014, 159082), (43, 238521, 238589), (47, 207646, 207714), (53, 297754, 297822), (59, 205379, 205447), (61, 226981, 227049)]

def row069_layer005_block000 : List ColouredInterval :=
  [(2, 163840, 163908), (2, 180224, 180292), (2, 196608, 196676), (2, 212992, 213060), (2, 229376, 229444), (2, 245760, 245828), (2, 163840, 163908), (2, 196608, 196676), (2, 229376, 229444), (2, 262144, 262212), (2, 294912, 294980), (2, 196608, 196676), (2, 262144, 262212), (2, 262144, 262212), (2, 262144, 262212), (3, 177147, 177215)]

def row069_layer005_block001 : List ColouredInterval :=
  [(3, 236196, 236264), (3, 295245, 295313), (3, 177147, 177215), (5, 156250, 156318), (5, 171875, 171943), (5, 187500, 187568), (5, 203125, 203193), (5, 218750, 218818), (5, 234375, 234443), (5, 156250, 156318), (5, 234375, 234443), (7, 151263, 151331), (7, 168070, 168138), (7, 184877, 184945), (7, 201684, 201752), (7, 218491, 218559)]

def row069_layer005_block002 : List ColouredInterval :=
  [(7, 235298, 235366), (7, 252105, 252173), (7, 235298, 235366), (11, 161051, 161119), (11, 175692, 175760), (11, 190333, 190401), (11, 204974, 205042), (11, 219615, 219683), (11, 161051, 161119), (13, 171366, 171434), (13, 199927, 199995), (13, 228488, 228556), (13, 257049, 257117), (13, 285610, 285678), (17, 167042, 167110), (17, 250563, 250631)]

def row069_layer005_block003 : List ColouredInterval :=
  [(19, 260642, 260710), (29, 170723, 170791), (29, 195112, 195180), (29, 219501, 219569), (29, 243890, 243958), (29, 268279, 268347), (29, 292668, 292736), (31, 178746, 178814), (31, 208537, 208605), (31, 238328, 238396), (31, 268119, 268187), (31, 297910, 297978), (37, 151959, 152027), (37, 202612, 202680), (37, 253265, 253333), (41, 206763, 206831)]

def row069_layer005_block004 : List ColouredInterval :=
  [(41, 275684, 275752), (43, 159014, 159082), (43, 238521, 238589), (47, 207646, 207714), (53, 297754, 297822), (59, 205379, 205447), (61, 226981, 227049)]

def row069_layer005_chunks : List (List ColouredInterval) :=
  [row069_layer005_block000, row069_layer005_block001, row069_layer005_block002, row069_layer005_block003, row069_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_arithmetic : LayerArithmeticValid row069.height { lower := 150144, upper := 300288, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_enumeration :
    activePowerIntervalList 69 15 150144 300288 = row069_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_pairs000 :
    row069_layer005_block000.all (fun I => row069_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_pairs001 :
    row069_layer005_block001.all (fun I => row069_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_pairs002 :
    row069_layer005_block002.all (fun I => row069_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_pairs003 :
    row069_layer005_block003.all (fun I => row069_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_pairs004 :
    row069_layer005_block004.all (fun I => row069_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_chunks_eq : row069_layer005_chunks.flatten = row069_layer005_intervals := by
  rfl

theorem row069_layer005_pairs : pairCoverCheck row069_layer005_intervals row069_bounds = true := by
  apply pairCoverCheck_of_chunks row069_layer005_chunks_eq
  intro block hblock
  simp only [row069_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row069_layer005_pairs000
  · exact row069_layer005_pairs001
  · exact row069_layer005_pairs002
  · exact row069_layer005_pairs003
  · exact row069_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer005_checked :
    coverLayerCheck row069.height row069.goods { lower := 150144, upper := 300288, M := 15 } = true := by
  exact coverLayerCheck_of_parts row069_layer005_arithmetic row069_layer005_enumeration row069_bounds_eq row069_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row069_layer007_intervals : List ColouredInterval :=
  [(2, 655360, 655428), (2, 720896, 720964), (2, 655360, 655428), (2, 786432, 786500), (2, 917504, 917572), (2, 1048576, 1048644), (2, 1179648, 1179716), (2, 786432, 786500), (2, 1048576, 1048644), (2, 1048576, 1048644), (2, 1048576, 1048644), (3, 1062882, 1062950), (5, 625000, 625068), (5, 703125, 703193), (5, 781250, 781318), (5, 859375, 859443), (5, 781250, 781318), (5, 1171875, 1171943), (7, 705894, 705962), (7, 823543, 823611), (7, 941192, 941260), (7, 1058841, 1058909), (7, 1176490, 1176558), (7, 823543, 823611), (11, 644204, 644272), (11, 805255, 805323), (11, 966306, 966374), (11, 1127357, 1127425), (13, 742586, 742654), (13, 1113879, 1113947), (17, 668168, 668236), (17, 751689, 751757), (17, 835210, 835278), (17, 918731, 918799), (19, 651605, 651673), (19, 781926, 781994), (19, 912247, 912315), (19, 1042568, 1042636), (19, 1172889, 1172957), (29, 707281, 707349), (31, 923521, 923589), (41, 620289, 620357), (41, 689210, 689278), (41, 758131, 758199), (43, 636056, 636124), (43, 715563, 715631), (43, 795070, 795138), (43, 874577, 874645), (47, 622938, 623006), (47, 726761, 726829), (47, 830584, 830652), (47, 934407, 934475), (47, 1038230, 1038298), (47, 1142053, 1142121), (53, 744385, 744453), (53, 893262, 893330), (53, 1042139, 1042207), (53, 1191016, 1191084), (59, 616137, 616205), (59, 821516, 821584), (59, 1026895, 1026963), (61, 680943, 681011), (61, 907924, 907992), (61, 1134905, 1134973), (67, 601526, 601594), (67, 902289, 902357)]

def row069_layer007_block000 : List ColouredInterval :=
  [(2, 655360, 655428), (2, 720896, 720964), (2, 655360, 655428), (2, 786432, 786500), (2, 917504, 917572), (2, 1048576, 1048644), (2, 1179648, 1179716), (2, 786432, 786500), (2, 1048576, 1048644), (2, 1048576, 1048644), (2, 1048576, 1048644), (3, 1062882, 1062950), (5, 625000, 625068), (5, 703125, 703193), (5, 781250, 781318), (5, 859375, 859443)]

def row069_layer007_block001 : List ColouredInterval :=
  [(5, 781250, 781318), (5, 1171875, 1171943), (7, 705894, 705962), (7, 823543, 823611), (7, 941192, 941260), (7, 1058841, 1058909), (7, 1176490, 1176558), (7, 823543, 823611), (11, 644204, 644272), (11, 805255, 805323), (11, 966306, 966374), (11, 1127357, 1127425), (13, 742586, 742654), (13, 1113879, 1113947), (17, 668168, 668236), (17, 751689, 751757)]

def row069_layer007_block002 : List ColouredInterval :=
  [(17, 835210, 835278), (17, 918731, 918799), (19, 651605, 651673), (19, 781926, 781994), (19, 912247, 912315), (19, 1042568, 1042636), (19, 1172889, 1172957), (29, 707281, 707349), (31, 923521, 923589), (41, 620289, 620357), (41, 689210, 689278), (41, 758131, 758199), (43, 636056, 636124), (43, 715563, 715631), (43, 795070, 795138), (43, 874577, 874645)]

def row069_layer007_block003 : List ColouredInterval :=
  [(47, 622938, 623006), (47, 726761, 726829), (47, 830584, 830652), (47, 934407, 934475), (47, 1038230, 1038298), (47, 1142053, 1142121), (53, 744385, 744453), (53, 893262, 893330), (53, 1042139, 1042207), (53, 1191016, 1191084), (59, 616137, 616205), (59, 821516, 821584), (59, 1026895, 1026963), (61, 680943, 681011), (61, 907924, 907992), (61, 1134905, 1134973)]

def row069_layer007_block004 : List ColouredInterval :=
  [(67, 601526, 601594), (67, 902289, 902357)]

def row069_layer007_chunks : List (List ColouredInterval) :=
  [row069_layer007_block000, row069_layer007_block001, row069_layer007_block002, row069_layer007_block003, row069_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_arithmetic : LayerArithmeticValid row069.height { lower := 600576, upper := 1201152, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_enumeration :
    activePowerIntervalList 69 11 600576 1201152 = row069_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_pairs000 :
    row069_layer007_block000.all (fun I => row069_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_pairs001 :
    row069_layer007_block001.all (fun I => row069_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_pairs002 :
    row069_layer007_block002.all (fun I => row069_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_pairs003 :
    row069_layer007_block003.all (fun I => row069_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_pairs004 :
    row069_layer007_block004.all (fun I => row069_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row069_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_chunks_eq : row069_layer007_chunks.flatten = row069_layer007_intervals := by
  rfl

theorem row069_layer007_pairs : pairCoverCheck row069_layer007_intervals row069_bounds = true := by
  apply pairCoverCheck_of_chunks row069_layer007_chunks_eq
  intro block hblock
  simp only [row069_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row069_layer007_pairs000
  · exact row069_layer007_pairs001
  · exact row069_layer007_pairs002
  · exact row069_layer007_pairs003
  · exact row069_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer007_checked :
    coverLayerCheck row069.height row069.goods { lower := 600576, upper := 1201152, M := 11 } = true := by
  exact coverLayerCheck_of_parts row069_layer007_arithmetic row069_layer007_enumeration row069_bounds_eq row069_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer004_checked :
    coverLayerCheck row069.height row069.goods { lower := 75072, upper := 150144, M := 17 } = true := by
  decide +kernel

theorem row069_layer006_checked :
    coverLayerCheck row069.height row069.goods { lower := 300288, upper := 600576, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer008_checked :
    coverLayerCheck row069.height row069.goods { lower := 1201152, upper := 2402304, M := 10 } = true := by
  decide +kernel

theorem row069_layer009_checked :
    coverLayerCheck row069.height row069.goods { lower := 2402304, upper := 4804608, M := 9 } = true := by
  decide +kernel

theorem row069_layer010_checked :
    coverLayerCheck row069.height row069.goods { lower := 4804608, upper := 9609216, M := 8 } = true := by
  decide +kernel

theorem row069_layer011_checked :
    coverLayerCheck row069.height row069.goods { lower := 9609216, upper := 19218432, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer012_checked :
    coverLayerCheck row069.height row069.goods { lower := 19218432, upper := 38436864, M := 6 } = true := by
  decide +kernel

theorem row069_layer013_checked :
    coverLayerCheck row069.height row069.goods { lower := 38436864, upper := 76873728, M := 5 } = true := by
  decide +kernel

theorem row069_layer014_checked :
    coverLayerCheck row069.height row069.goods { lower := 76873728, upper := 153747456, M := 5 } = true := by
  decide +kernel

theorem row069_layer015_checked :
    coverLayerCheck row069.height row069.goods { lower := 153747456, upper := 307494912, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer016_checked :
    coverLayerCheck row069.height row069.goods { lower := 307494912, upper := 614989824, M := 4 } = true := by
  decide +kernel

theorem row069_layer017_checked :
    coverLayerCheck row069.height row069.goods { lower := 614989824, upper := 1229979648, M := 3 } = true := by
  decide +kernel

theorem row069_layer018_checked :
    coverLayerCheck row069.height row069.goods { lower := 1229979648, upper := 2459959296, M := 3 } = true := by
  decide +kernel

theorem row069_layer019_checked :
    coverLayerCheck row069.height row069.goods { lower := 2459959296, upper := 4919918592, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer020_checked :
    coverLayerCheck row069.height row069.goods { lower := 4919918592, upper := 9839837184, M := 2 } = true := by
  decide +kernel

theorem row069_layer021_checked :
    coverLayerCheck row069.height row069.goods { lower := 9839837184, upper := 19679674368, M := 2 } = true := by
  decide +kernel

theorem row069_layer022_checked :
    coverLayerCheck row069.height row069.goods { lower := 19679674368, upper := 39359348736, M := 2 } = true := by
  decide +kernel

theorem row069_layer023_checked :
    coverLayerCheck row069.height row069.goods { lower := 39359348736, upper := 78718697472, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layer024_checked :
    coverLayerCheck row069.height row069.goods { lower := 78718697472, upper := 100000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layer024_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_layers_checked :
    row069.layers.all (coverLayerCheck row069.height row069.goods) = true := by
  change row069_layers.all (coverLayerCheck row069.height row069.goods) = true
  simp only [row069_layers, List.all_cons, List.all_nil,
    row069_layer000_checked,
    row069_layer001_checked,
    row069_layer002_checked,
    row069_layer003_checked,
    row069_layer004_checked,
    row069_layer005_checked,
    row069_layer006_checked,
    row069_layer007_checked,
    row069_layer008_checked,
    row069_layer009_checked,
    row069_layer010_checked,
    row069_layer011_checked,
    row069_layer012_checked,
    row069_layer013_checked,
    row069_layer014_checked,
    row069_layer015_checked,
    row069_layer016_checked,
    row069_layer017_checked,
    row069_layer018_checked,
    row069_layer019_checked,
    row069_layer020_checked,
    row069_layer021_checked,
    row069_layer022_checked,
    row069_layer023_checked,
    row069_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row069_checked : finiteCoverRowCheck row069 = true := by
  simp only [finiteCoverRowCheck, row069_registered, row069_goods_checked,
    row069_small_checked, row069_layerCover_checked, row069_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row069_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i069 :
    ∀ n j : ℕ, 1 ≤ 69 ∧ 69 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 69 ≤ p ∧ p ∣ Nat.choose n 69 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row069_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i069
