import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block017
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer007_chunks_eq : row048_layer007_chunks.flatten = row048_layer007_intervals := by
  rfl

theorem row048_layer007_pairs : pairCoverCheck row048_layer007_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer007_chunks_eq
  intro block hblock
  simp only [row048_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer007_pairs000
  · exact row048_layer007_pairs001
  · exact row048_layer007_pairs002
  · exact row048_layer007_pairs003
  · exact row048_layer007_pairs004
  · exact row048_layer007_pairs005
  · exact row048_layer007_pairs006
  · exact row048_layer007_pairs007
  · exact row048_layer007_pairs008
  · exact row048_layer007_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer007_checked :
    coverLayerCheck row048.height row048.goods { lower := 288768, upper := 577536, M := 35 } = true := by
  exact coverLayerCheck_of_parts row048_layer007_arithmetic row048_layer007_enumeration row048_bounds_eq row048_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer008_intervals : List ColouredInterval :=
  [(2, 1048576, 1048623), (2, 1048576, 1048623), (3, 590490, 590537), (3, 649539, 649586), (3, 708588, 708635), (3, 885735, 885782), (3, 1062882, 1062929), (3, 1062882, 1062929), (5, 625000, 625047), (5, 703125, 703172), (5, 781250, 781297), (5, 859375, 859422), (5, 937500, 937547), (5, 1015625, 1015672), (5, 1093750, 1093797), (5, 781250, 781297), (7, 588245, 588292), (7, 705894, 705941), (7, 823543, 823590), (7, 941192, 941239), (7, 1058841, 1058888), (7, 823543, 823590), (11, 644204, 644251), (11, 805255, 805302), (11, 966306, 966353), (11, 1127357, 1127404), (13, 599781, 599828), (13, 628342, 628389), (13, 656903, 656950), (13, 685464, 685511), (13, 714025, 714072), (13, 742586, 742633), (13, 771147, 771194), (13, 799708, 799755), (13, 828269, 828316), (13, 856830, 856877), (13, 885391, 885438), (13, 913952, 913999), (13, 942513, 942560), (13, 971074, 971121), (13, 742586, 742633), (13, 1113879, 1113926), (17, 584647, 584694), (17, 668168, 668215), (17, 751689, 751736), (17, 835210, 835257), (17, 918731, 918778), (17, 1002252, 1002299), (17, 1085773, 1085820), (19, 651605, 651652), (19, 781926, 781973), (19, 912247, 912294), (19, 1042568, 1042615), (23, 839523, 839570), (23, 1119364, 1119411), (29, 585336, 585383), (29, 609725, 609772), (29, 634114, 634161), (29, 658503, 658550), (29, 682892, 682939), (29, 707281, 707328), (29, 731670, 731717), (29, 756059, 756106), (29, 780448, 780495), (29, 804837, 804884), (29, 829226, 829273), (29, 707281, 707328), (31, 595820, 595867), (31, 625611, 625658), (31, 655402, 655449), (31, 685193, 685240), (31, 714984, 715031), (31, 744775, 744822), (31, 774566, 774613), (31, 804357, 804404), (31, 834148, 834195), (31, 863939, 863986), (31, 893730, 893777), (31, 923521, 923568), (31, 953312, 953359), (31, 983103, 983150), (31, 1012894, 1012941), (31, 923521, 923568), (37, 607836, 607883), (37, 658489, 658536), (37, 709142, 709189), (37, 759795, 759842), (37, 810448, 810495), (37, 861101, 861148), (37, 911754, 911801), (37, 962407, 962454), (37, 1013060, 1013107), (37, 1063713, 1063760), (37, 1114366, 1114413), (41, 620289, 620336), (41, 689210, 689257), (41, 758131, 758178), (41, 827052, 827099), (41, 895973, 896020), (41, 964894, 964941), (41, 1033815, 1033862), (41, 1102736, 1102783), (43, 636056, 636103), (43, 715563, 715610), (43, 795070, 795117), (43, 874577, 874624), (43, 954084, 954131), (43, 1033591, 1033638), (43, 1113098, 1113145), (47, 622938, 622985), (47, 726761, 726808), (47, 830584, 830631), (47, 934407, 934454), (47, 1038230, 1038277), (47, 1142053, 1142100)]

def row048_layer008_block000 : List ColouredInterval :=
  [(2, 1048576, 1048623), (2, 1048576, 1048623), (3, 590490, 590537), (3, 649539, 649586), (3, 708588, 708635), (3, 885735, 885782), (3, 1062882, 1062929), (3, 1062882, 1062929), (5, 625000, 625047), (5, 703125, 703172), (5, 781250, 781297), (5, 859375, 859422), (5, 937500, 937547), (5, 1015625, 1015672), (5, 1093750, 1093797), (5, 781250, 781297)]

def row048_layer008_block001 : List ColouredInterval :=
  [(7, 588245, 588292), (7, 705894, 705941), (7, 823543, 823590), (7, 941192, 941239), (7, 1058841, 1058888), (7, 823543, 823590), (11, 644204, 644251), (11, 805255, 805302), (11, 966306, 966353), (11, 1127357, 1127404), (13, 599781, 599828), (13, 628342, 628389), (13, 656903, 656950), (13, 685464, 685511), (13, 714025, 714072), (13, 742586, 742633)]

def row048_layer008_block002 : List ColouredInterval :=
  [(13, 771147, 771194), (13, 799708, 799755), (13, 828269, 828316), (13, 856830, 856877), (13, 885391, 885438), (13, 913952, 913999), (13, 942513, 942560), (13, 971074, 971121), (13, 742586, 742633), (13, 1113879, 1113926), (17, 584647, 584694), (17, 668168, 668215), (17, 751689, 751736), (17, 835210, 835257), (17, 918731, 918778), (17, 1002252, 1002299)]

def row048_layer008_block003 : List ColouredInterval :=
  [(17, 1085773, 1085820), (19, 651605, 651652), (19, 781926, 781973), (19, 912247, 912294), (19, 1042568, 1042615), (23, 839523, 839570), (23, 1119364, 1119411), (29, 585336, 585383), (29, 609725, 609772), (29, 634114, 634161), (29, 658503, 658550), (29, 682892, 682939), (29, 707281, 707328), (29, 731670, 731717), (29, 756059, 756106), (29, 780448, 780495)]

def row048_layer008_block004 : List ColouredInterval :=
  [(29, 804837, 804884), (29, 829226, 829273), (29, 707281, 707328), (31, 595820, 595867), (31, 625611, 625658), (31, 655402, 655449), (31, 685193, 685240), (31, 714984, 715031), (31, 744775, 744822), (31, 774566, 774613), (31, 804357, 804404), (31, 834148, 834195), (31, 863939, 863986), (31, 893730, 893777), (31, 923521, 923568), (31, 953312, 953359)]

def row048_layer008_block005 : List ColouredInterval :=
  [(31, 983103, 983150), (31, 1012894, 1012941), (31, 923521, 923568), (37, 607836, 607883), (37, 658489, 658536), (37, 709142, 709189), (37, 759795, 759842), (37, 810448, 810495), (37, 861101, 861148), (37, 911754, 911801), (37, 962407, 962454), (37, 1013060, 1013107), (37, 1063713, 1063760), (37, 1114366, 1114413), (41, 620289, 620336), (41, 689210, 689257)]

def row048_layer008_block006 : List ColouredInterval :=
  [(41, 758131, 758178), (41, 827052, 827099), (41, 895973, 896020), (41, 964894, 964941), (41, 1033815, 1033862), (41, 1102736, 1102783), (43, 636056, 636103), (43, 715563, 715610), (43, 795070, 795117), (43, 874577, 874624), (43, 954084, 954131), (43, 1033591, 1033638), (43, 1113098, 1113145), (47, 622938, 622985), (47, 726761, 726808), (47, 830584, 830631)]

def row048_layer008_block007 : List ColouredInterval :=
  [(47, 934407, 934454), (47, 1038230, 1038277), (47, 1142053, 1142100)]

def row048_layer008_chunks : List (List ColouredInterval) :=
  [row048_layer008_block000, row048_layer008_block001, row048_layer008_block002, row048_layer008_block003, row048_layer008_block004, row048_layer008_block005, row048_layer008_block006, row048_layer008_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer008_arithmetic : LayerArithmeticValid row048.height { lower := 577536, upper := 1155072, M := 34 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer008_enumeration :
    activePowerIntervalList 48 34 577536 1155072 = row048_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer008_pairs000 :
    row048_layer008_block000.all (fun I => row048_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer008_pairs001 :
    row048_layer008_block001.all (fun I => row048_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer008_pairs001
