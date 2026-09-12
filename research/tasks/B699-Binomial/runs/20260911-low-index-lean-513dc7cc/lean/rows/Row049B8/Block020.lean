import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block018
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block019
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block015
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block016
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_chunks_eq : row049_layer007_chunks.flatten = row049_layer007_intervals := by
  rfl

theorem row049_layer007_pairs : pairCoverCheck row049_layer007_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer007_chunks_eq
  intro block hblock
  simp only [row049_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer007_pairs000
  · exact row049_layer007_pairs001
  · exact row049_layer007_pairs002
  · exact row049_layer007_pairs003
  · exact row049_layer007_pairs004
  · exact row049_layer007_pairs005
  · exact row049_layer007_pairs006
  · exact row049_layer007_pairs007
  · exact row049_layer007_pairs008
  · exact row049_layer007_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_checked :
    coverLayerCheck row049.height row049.goods { lower := 301056, upper := 602112, M := 29 } = true := by
  exact coverLayerCheck_of_parts row049_layer007_arithmetic row049_layer007_enumeration row049_bounds_eq row049_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer008_intervals : List ColouredInterval :=
  [(2, 622592, 622640), (2, 655360, 655408), (2, 688128, 688176), (2, 720896, 720944), (2, 753664, 753712), (2, 786432, 786480), (2, 819200, 819248), (2, 851968, 852016), (2, 884736, 884784), (2, 655360, 655408), (2, 720896, 720944), (2, 786432, 786480), (2, 851968, 852016), (2, 917504, 917552), (2, 983040, 983088), (2, 1048576, 1048624), (2, 1114112, 1114160), (2, 1179648, 1179696), (2, 655360, 655408), (2, 786432, 786480), (2, 917504, 917552), (2, 1048576, 1048624), (2, 1179648, 1179696), (2, 786432, 786480), (2, 1048576, 1048624), (2, 1048576, 1048624), (2, 1048576, 1048624), (3, 649539, 649587), (3, 708588, 708636), (3, 767637, 767685), (3, 826686, 826734), (3, 885735, 885783), (3, 944784, 944832), (3, 1003833, 1003881), (3, 1062882, 1062930), (3, 1121931, 1121979), (3, 1180980, 1181028), (3, 708588, 708636), (3, 885735, 885783), (3, 1062882, 1062930), (3, 1062882, 1062930), (5, 625000, 625048), (5, 703125, 703173), (5, 781250, 781298), (5, 859375, 859423), (5, 937500, 937548), (5, 1015625, 1015673), (5, 1093750, 1093798), (5, 1171875, 1171923), (5, 781250, 781298), (5, 1171875, 1171923), (11, 644204, 644252), (11, 805255, 805303), (11, 966306, 966354), (11, 1127357, 1127405), (13, 628342, 628390), (13, 656903, 656951), (13, 685464, 685512), (13, 714025, 714073), (13, 742586, 742634), (13, 771147, 771195), (13, 742586, 742634), (13, 1113879, 1113927), (17, 668168, 668216), (17, 751689, 751737), (17, 835210, 835258), (17, 918731, 918779), (17, 1002252, 1002300), (17, 1085773, 1085821), (17, 1169294, 1169342), (19, 651605, 651653), (19, 781926, 781974), (19, 912247, 912295), (19, 1042568, 1042616), (19, 1172889, 1172937), (23, 839523, 839571), (23, 1119364, 1119412), (29, 609725, 609773), (29, 634114, 634162), (29, 658503, 658551), (29, 707281, 707329), (31, 625611, 625659), (31, 655402, 655450), (31, 685193, 685241), (31, 714984, 715032), (31, 744775, 744823), (31, 774566, 774614), (31, 804357, 804405), (31, 923521, 923569), (37, 607836, 607884), (37, 658489, 658537), (37, 709142, 709190), (37, 759795, 759843), (37, 810448, 810496), (37, 861101, 861149), (37, 911754, 911802), (37, 962407, 962455), (37, 1013060, 1013108), (37, 1063713, 1063761), (37, 1114366, 1114414), (37, 1165019, 1165067), (41, 620289, 620337), (41, 689210, 689258), (41, 758131, 758179), (41, 827052, 827100), (41, 895973, 896021), (41, 964894, 964942), (41, 1033815, 1033863), (41, 1102736, 1102784), (41, 1171657, 1171705), (43, 636056, 636104), (43, 715563, 715611), (43, 795070, 795118), (43, 874577, 874625), (43, 954084, 954132), (43, 1033591, 1033639), (43, 1113098, 1113146), (43, 1192605, 1192653), (47, 622938, 622986), (47, 726761, 726809), (47, 830584, 830632), (47, 934407, 934455), (47, 1038230, 1038278), (47, 1142053, 1142101)]

def row049_layer008_block000 : List ColouredInterval :=
  [(2, 622592, 622640), (2, 655360, 655408), (2, 688128, 688176), (2, 720896, 720944), (2, 753664, 753712), (2, 786432, 786480), (2, 819200, 819248), (2, 851968, 852016), (2, 884736, 884784), (2, 655360, 655408), (2, 720896, 720944), (2, 786432, 786480), (2, 851968, 852016), (2, 917504, 917552), (2, 983040, 983088), (2, 1048576, 1048624)]

def row049_layer008_block001 : List ColouredInterval :=
  [(2, 1114112, 1114160), (2, 1179648, 1179696), (2, 655360, 655408), (2, 786432, 786480), (2, 917504, 917552), (2, 1048576, 1048624), (2, 1179648, 1179696), (2, 786432, 786480), (2, 1048576, 1048624), (2, 1048576, 1048624), (2, 1048576, 1048624), (3, 649539, 649587), (3, 708588, 708636), (3, 767637, 767685), (3, 826686, 826734), (3, 885735, 885783)]

def row049_layer008_block002 : List ColouredInterval :=
  [(3, 944784, 944832), (3, 1003833, 1003881), (3, 1062882, 1062930), (3, 1121931, 1121979), (3, 1180980, 1181028), (3, 708588, 708636), (3, 885735, 885783), (3, 1062882, 1062930), (3, 1062882, 1062930), (5, 625000, 625048), (5, 703125, 703173), (5, 781250, 781298), (5, 859375, 859423), (5, 937500, 937548), (5, 1015625, 1015673), (5, 1093750, 1093798)]

def row049_layer008_block003 : List ColouredInterval :=
  [(5, 1171875, 1171923), (5, 781250, 781298), (5, 1171875, 1171923), (11, 644204, 644252), (11, 805255, 805303), (11, 966306, 966354), (11, 1127357, 1127405), (13, 628342, 628390), (13, 656903, 656951), (13, 685464, 685512), (13, 714025, 714073), (13, 742586, 742634), (13, 771147, 771195), (13, 742586, 742634), (13, 1113879, 1113927), (17, 668168, 668216)]

def row049_layer008_block004 : List ColouredInterval :=
  [(17, 751689, 751737), (17, 835210, 835258), (17, 918731, 918779), (17, 1002252, 1002300), (17, 1085773, 1085821), (17, 1169294, 1169342), (19, 651605, 651653), (19, 781926, 781974), (19, 912247, 912295), (19, 1042568, 1042616), (19, 1172889, 1172937), (23, 839523, 839571), (23, 1119364, 1119412), (29, 609725, 609773), (29, 634114, 634162), (29, 658503, 658551)]

def row049_layer008_block005 : List ColouredInterval :=
  [(29, 707281, 707329), (31, 625611, 625659), (31, 655402, 655450), (31, 685193, 685241), (31, 714984, 715032), (31, 744775, 744823), (31, 774566, 774614), (31, 804357, 804405), (31, 923521, 923569), (37, 607836, 607884), (37, 658489, 658537), (37, 709142, 709190), (37, 759795, 759843), (37, 810448, 810496), (37, 861101, 861149), (37, 911754, 911802)]

def row049_layer008_block006 : List ColouredInterval :=
  [(37, 962407, 962455), (37, 1013060, 1013108), (37, 1063713, 1063761), (37, 1114366, 1114414), (37, 1165019, 1165067), (41, 620289, 620337), (41, 689210, 689258), (41, 758131, 758179), (41, 827052, 827100), (41, 895973, 896021), (41, 964894, 964942), (41, 1033815, 1033863), (41, 1102736, 1102784), (41, 1171657, 1171705), (43, 636056, 636104), (43, 715563, 715611)]

def row049_layer008_block007 : List ColouredInterval :=
  [(43, 795070, 795118), (43, 874577, 874625), (43, 954084, 954132), (43, 1033591, 1033639), (43, 1113098, 1113146), (43, 1192605, 1192653), (47, 622938, 622986), (47, 726761, 726809), (47, 830584, 830632), (47, 934407, 934455), (47, 1038230, 1038278), (47, 1142053, 1142101)]

def row049_layer008_chunks : List (List ColouredInterval) :=
  [row049_layer008_block000, row049_layer008_block001, row049_layer008_block002, row049_layer008_block003, row049_layer008_block004, row049_layer008_block005, row049_layer008_block006, row049_layer008_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_arithmetic : LayerArithmeticValid row049.height { lower := 602112, upper := 1204224, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_enumeration :
    activePowerIntervalList 49 27 602112 1204224 = row049_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs000 :
    row049_layer008_block000.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs001 :
    row049_layer008_block001.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs001
