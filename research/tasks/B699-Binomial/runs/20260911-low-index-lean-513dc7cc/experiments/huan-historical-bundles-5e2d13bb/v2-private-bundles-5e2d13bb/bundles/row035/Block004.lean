import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row035.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row035.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs002 :
    row035_layer008_block002.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs003 :
    row035_layer008_block003.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs004 :
    row035_layer008_block004.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs005 :
    row035_layer008_block005.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs006 :
    row035_layer008_block006.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs007 :
    row035_layer008_block007.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_chunks_eq : row035_layer008_chunks.flatten = row035_layer008_intervals := by
  rfl

theorem row035_layer008_pairs : pairCoverCheck row035_layer008_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer008_chunks_eq
  intro block hblock
  simp only [row035_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer008_pairs000
  · exact row035_layer008_pairs001
  · exact row035_layer008_pairs002
  · exact row035_layer008_pairs003
  · exact row035_layer008_pairs004
  · exact row035_layer008_pairs005
  · exact row035_layer008_pairs006
  · exact row035_layer008_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_checked :
    coverLayerCheck row035.height row035.goods { lower := 304640, upper := 609280, M := 31 } = true := by
  exact coverLayerCheck_of_parts row035_layer008_arithmetic row035_layer008_enumeration row035_bounds_eq row035_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer009_intervals : List ColouredInterval :=
  [(2, 622592, 622626), (2, 655360, 655394), (2, 688128, 688162), (2, 720896, 720930), (2, 753664, 753698), (2, 786432, 786466), (2, 819200, 819234), (2, 851968, 852002), (2, 884736, 884770), (2, 917504, 917538), (2, 950272, 950306), (2, 983040, 983074), (2, 1015808, 1015842), (2, 655360, 655394), (2, 720896, 720930), (2, 786432, 786466), (2, 851968, 852002), (2, 917504, 917538), (2, 983040, 983074), (2, 1048576, 1048610), (2, 1114112, 1114146), (2, 1179648, 1179682), (2, 655360, 655394), (2, 786432, 786466), (2, 917504, 917538), (2, 1048576, 1048610), (2, 1179648, 1179682), (2, 786432, 786466), (2, 1048576, 1048610), (2, 1048576, 1048610), (2, 1048576, 1048610), (3, 610173, 610207), (3, 649539, 649573), (3, 708588, 708622), (3, 767637, 767671), (3, 826686, 826720), (3, 885735, 885769), (3, 944784, 944818), (3, 1003833, 1003867), (3, 1062882, 1062916), (3, 1121931, 1121965), (3, 1180980, 1181014), (3, 708588, 708622), (3, 885735, 885769), (3, 1062882, 1062916), (3, 1062882, 1062916), (5, 781250, 781284), (5, 1171875, 1171909), (7, 823543, 823577), (11, 644204, 644238), (11, 805255, 805289), (11, 966306, 966340), (11, 1127357, 1127391), (13, 628342, 628376), (13, 656903, 656937), (13, 685464, 685498), (13, 714025, 714059), (13, 742586, 742620), (13, 771147, 771181), (13, 799708, 799742), (13, 828269, 828303), (13, 856830, 856864), (13, 885391, 885425), (13, 742586, 742620), (13, 1113879, 1113913), (17, 668168, 668202), (17, 751689, 751723), (17, 835210, 835244), (17, 918731, 918765), (17, 1002252, 1002286), (17, 1085773, 1085807), (17, 1169294, 1169328), (19, 651605, 651639), (19, 781926, 781960), (19, 912247, 912281), (19, 1042568, 1042602), (19, 1172889, 1172923), (23, 839523, 839557), (23, 1119364, 1119398), (29, 609725, 609759), (29, 634114, 634148), (29, 658503, 658537), (29, 682892, 682926), (29, 707281, 707315), (29, 731670, 731704), (29, 756059, 756093), (29, 707281, 707315), (31, 625611, 625645), (31, 655402, 655436), (31, 685193, 685227), (31, 714984, 715018), (31, 744775, 744809), (31, 774566, 774600), (31, 804357, 804391), (31, 834148, 834182), (31, 863939, 863973), (31, 893730, 893764), (31, 923521, 923555), (31, 923521, 923555)]

def row035_layer009_block000 : List ColouredInterval :=
  [(2, 622592, 622626), (2, 655360, 655394), (2, 688128, 688162), (2, 720896, 720930), (2, 753664, 753698), (2, 786432, 786466), (2, 819200, 819234), (2, 851968, 852002), (2, 884736, 884770), (2, 917504, 917538), (2, 950272, 950306), (2, 983040, 983074), (2, 1015808, 1015842), (2, 655360, 655394), (2, 720896, 720930), (2, 786432, 786466)]

def row035_layer009_block001 : List ColouredInterval :=
  [(2, 851968, 852002), (2, 917504, 917538), (2, 983040, 983074), (2, 1048576, 1048610), (2, 1114112, 1114146), (2, 1179648, 1179682), (2, 655360, 655394), (2, 786432, 786466), (2, 917504, 917538), (2, 1048576, 1048610), (2, 1179648, 1179682), (2, 786432, 786466), (2, 1048576, 1048610), (2, 1048576, 1048610), (2, 1048576, 1048610), (3, 610173, 610207)]

def row035_layer009_block002 : List ColouredInterval :=
  [(3, 649539, 649573), (3, 708588, 708622), (3, 767637, 767671), (3, 826686, 826720), (3, 885735, 885769), (3, 944784, 944818), (3, 1003833, 1003867), (3, 1062882, 1062916), (3, 1121931, 1121965), (3, 1180980, 1181014), (3, 708588, 708622), (3, 885735, 885769), (3, 1062882, 1062916), (3, 1062882, 1062916), (5, 781250, 781284), (5, 1171875, 1171909)]

def row035_layer009_block003 : List ColouredInterval :=
  [(7, 823543, 823577), (11, 644204, 644238), (11, 805255, 805289), (11, 966306, 966340), (11, 1127357, 1127391), (13, 628342, 628376), (13, 656903, 656937), (13, 685464, 685498), (13, 714025, 714059), (13, 742586, 742620), (13, 771147, 771181), (13, 799708, 799742), (13, 828269, 828303), (13, 856830, 856864), (13, 885391, 885425), (13, 742586, 742620)]

def row035_layer009_block004 : List ColouredInterval :=
  [(13, 1113879, 1113913), (17, 668168, 668202), (17, 751689, 751723), (17, 835210, 835244), (17, 918731, 918765), (17, 1002252, 1002286), (17, 1085773, 1085807), (17, 1169294, 1169328), (19, 651605, 651639), (19, 781926, 781960), (19, 912247, 912281), (19, 1042568, 1042602), (19, 1172889, 1172923), (23, 839523, 839557), (23, 1119364, 1119398), (29, 609725, 609759)]

def row035_layer009_block005 : List ColouredInterval :=
  [(29, 634114, 634148), (29, 658503, 658537), (29, 682892, 682926), (29, 707281, 707315), (29, 731670, 731704), (29, 756059, 756093), (29, 707281, 707315), (31, 625611, 625645), (31, 655402, 655436), (31, 685193, 685227), (31, 714984, 715018), (31, 744775, 744809), (31, 774566, 774600), (31, 804357, 804391), (31, 834148, 834182), (31, 863939, 863973)]

def row035_layer009_block006 : List ColouredInterval :=
  [(31, 893730, 893764), (31, 923521, 923555), (31, 923521, 923555)]

def row035_layer009_chunks : List (List ColouredInterval) :=
  [row035_layer009_block000, row035_layer009_block001, row035_layer009_block002, row035_layer009_block003, row035_layer009_block004, row035_layer009_block005, row035_layer009_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_arithmetic : LayerArithmeticValid row035.height { lower := 609280, upper := 1218560, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_enumeration :
    activePowerIntervalList 35 31 609280 1218560 = row035_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_pairs000 :
    row035_layer009_block000.all (fun I => row035_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_pairs001 :
    row035_layer009_block001.all (fun I => row035_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_pairs002 :
    row035_layer009_block002.all (fun I => row035_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_pairs003 :
    row035_layer009_block003.all (fun I => row035_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_pairs004 :
    row035_layer009_block004.all (fun I => row035_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_pairs005 :
    row035_layer009_block005.all (fun I => row035_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_pairs006 :
    row035_layer009_block006.all (fun I => row035_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_chunks_eq : row035_layer009_chunks.flatten = row035_layer009_intervals := by
  rfl

theorem row035_layer009_pairs : pairCoverCheck row035_layer009_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer009_chunks_eq
  intro block hblock
  simp only [row035_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer009_pairs000
  · exact row035_layer009_pairs001
  · exact row035_layer009_pairs002
  · exact row035_layer009_pairs003
  · exact row035_layer009_pairs004
  · exact row035_layer009_pairs005
  · exact row035_layer009_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer009_checked :
    coverLayerCheck row035.height row035.goods { lower := 609280, upper := 1218560, M := 31 } = true := by
  exact coverLayerCheck_of_parts row035_layer009_arithmetic row035_layer009_enumeration row035_bounds_eq row035_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer010_intervals : List ColouredInterval :=
  [(2, 1245184, 1245218), (2, 1310720, 1310754), (2, 1376256, 1376290), (2, 1441792, 1441826), (2, 1507328, 1507362), (2, 1572864, 1572898), (2, 1638400, 1638434), (2, 1703936, 1703970), (2, 1769472, 1769506), (2, 1835008, 1835042), (2, 1900544, 1900578), (2, 1966080, 1966114), (2, 1310720, 1310754), (2, 1441792, 1441826), (2, 1572864, 1572898), (2, 1703936, 1703970), (2, 1835008, 1835042), (2, 1966080, 1966114), (2, 2097152, 2097186), (2, 2228224, 2228258), (2, 2359296, 2359330), (2, 1310720, 1310754), (2, 1572864, 1572898), (2, 1835008, 1835042), (2, 2097152, 2097186), (2, 2359296, 2359330), (2, 1572864, 1572898), (2, 2097152, 2097186), (2, 2097152, 2097186), (2, 2097152, 2097186), (3, 1240029, 1240063), (3, 1299078, 1299112), (3, 1358127, 1358161), (3, 1417176, 1417210), (3, 1476225, 1476259), (3, 1535274, 1535308), (3, 1594323, 1594357), (3, 1653372, 1653406), (3, 1712421, 1712455), (3, 1771470, 1771504), (3, 1240029, 1240063), (3, 1417176, 1417210), (3, 1594323, 1594357), (3, 1771470, 1771504), (3, 1948617, 1948651), (3, 2125764, 2125798), (3, 2302911, 2302945), (3, 1594323, 1594357), (3, 2125764, 2125798), (3, 1594323, 1594357), (5, 1562500, 1562534), (5, 1953125, 1953159), (5, 2343750, 2343784), (5, 1953125, 1953159), (7, 1647086, 1647120), (11, 1288408, 1288442), (11, 1449459, 1449493), (11, 1610510, 1610544), (11, 1771561, 1771595), (11, 1932612, 1932646), (11, 2093663, 2093697), (11, 2254714, 2254748), (11, 2415765, 2415799), (11, 1771561, 1771595), (13, 1485172, 1485206), (13, 1856465, 1856499), (13, 2227758, 2227792), (17, 1252815, 1252849), (17, 1336336, 1336370), (17, 1419857, 1419891), (17, 1503378, 1503412), (17, 1586899, 1586933), (17, 1670420, 1670454), (17, 1753941, 1753975), (17, 1837462, 1837496), (17, 1920983, 1921017), (17, 2004504, 2004538), (17, 2088025, 2088059), (17, 2171546, 2171580), (17, 2255067, 2255101), (17, 2338588, 2338622), (17, 2422109, 2422143), (17, 1419857, 1419891), (19, 1303210, 1303244), (19, 1433531, 1433565), (19, 1563852, 1563886), (19, 1694173, 1694207), (19, 1824494, 1824528), (19, 1954815, 1954849), (19, 2085136, 2085170), (19, 2215457, 2215491), (19, 2345778, 2345812), (23, 1399205, 1399239), (23, 1679046, 1679080), (23, 1958887, 1958921), (23, 2238728, 2238762), (29, 1414562, 1414596), (29, 2121843, 2121877), (31, 1847042, 1847076)]

def row035_layer010_block000 : List ColouredInterval :=
  [(2, 1245184, 1245218), (2, 1310720, 1310754), (2, 1376256, 1376290), (2, 1441792, 1441826), (2, 1507328, 1507362), (2, 1572864, 1572898), (2, 1638400, 1638434), (2, 1703936, 1703970), (2, 1769472, 1769506), (2, 1835008, 1835042), (2, 1900544, 1900578), (2, 1966080, 1966114), (2, 1310720, 1310754), (2, 1441792, 1441826), (2, 1572864, 1572898), (2, 1703936, 1703970)]

def row035_layer010_block001 : List ColouredInterval :=
  [(2, 1835008, 1835042), (2, 1966080, 1966114), (2, 2097152, 2097186), (2, 2228224, 2228258), (2, 2359296, 2359330), (2, 1310720, 1310754), (2, 1572864, 1572898), (2, 1835008, 1835042), (2, 2097152, 2097186), (2, 2359296, 2359330), (2, 1572864, 1572898), (2, 2097152, 2097186), (2, 2097152, 2097186), (2, 2097152, 2097186), (3, 1240029, 1240063), (3, 1299078, 1299112)]

def row035_layer010_block002 : List ColouredInterval :=
  [(3, 1358127, 1358161), (3, 1417176, 1417210), (3, 1476225, 1476259), (3, 1535274, 1535308), (3, 1594323, 1594357), (3, 1653372, 1653406), (3, 1712421, 1712455), (3, 1771470, 1771504), (3, 1240029, 1240063), (3, 1417176, 1417210), (3, 1594323, 1594357), (3, 1771470, 1771504), (3, 1948617, 1948651), (3, 2125764, 2125798), (3, 2302911, 2302945), (3, 1594323, 1594357)]

def row035_layer010_block003 : List ColouredInterval :=
  [(3, 2125764, 2125798), (3, 1594323, 1594357), (5, 1562500, 1562534), (5, 1953125, 1953159), (5, 2343750, 2343784), (5, 1953125, 1953159), (7, 1647086, 1647120), (11, 1288408, 1288442), (11, 1449459, 1449493), (11, 1610510, 1610544), (11, 1771561, 1771595), (11, 1932612, 1932646), (11, 2093663, 2093697), (11, 2254714, 2254748), (11, 2415765, 2415799), (11, 1771561, 1771595)]

def row035_layer010_block004 : List ColouredInterval :=
  [(13, 1485172, 1485206), (13, 1856465, 1856499), (13, 2227758, 2227792), (17, 1252815, 1252849), (17, 1336336, 1336370), (17, 1419857, 1419891), (17, 1503378, 1503412), (17, 1586899, 1586933), (17, 1670420, 1670454), (17, 1753941, 1753975), (17, 1837462, 1837496), (17, 1920983, 1921017), (17, 2004504, 2004538), (17, 2088025, 2088059), (17, 2171546, 2171580), (17, 2255067, 2255101)]

def row035_layer010_block005 : List ColouredInterval :=
  [(17, 2338588, 2338622), (17, 2422109, 2422143), (17, 1419857, 1419891), (19, 1303210, 1303244), (19, 1433531, 1433565), (19, 1563852, 1563886), (19, 1694173, 1694207), (19, 1824494, 1824528), (19, 1954815, 1954849), (19, 2085136, 2085170), (19, 2215457, 2215491), (19, 2345778, 2345812), (23, 1399205, 1399239), (23, 1679046, 1679080), (23, 1958887, 1958921), (23, 2238728, 2238762)]

def row035_layer010_block006 : List ColouredInterval :=
  [(29, 1414562, 1414596), (29, 2121843, 2121877), (31, 1847042, 1847076)]

def row035_layer010_chunks : List (List ColouredInterval) :=
  [row035_layer010_block000, row035_layer010_block001, row035_layer010_block002, row035_layer010_block003, row035_layer010_block004, row035_layer010_block005, row035_layer010_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_arithmetic : LayerArithmeticValid row035.height { lower := 1218560, upper := 2437120, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_enumeration :
    activePowerIntervalList 35 30 1218560 2437120 = row035_layer010_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_pairs000 :
    row035_layer010_block000.all (fun I => row035_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_pairs001 :
    row035_layer010_block001.all (fun I => row035_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_pairs002 :
    row035_layer010_block002.all (fun I => row035_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_pairs003 :
    row035_layer010_block003.all (fun I => row035_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_pairs004 :
    row035_layer010_block004.all (fun I => row035_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_pairs005 :
    row035_layer010_block005.all (fun I => row035_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_pairs006 :
    row035_layer010_block006.all (fun I => row035_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_chunks_eq : row035_layer010_chunks.flatten = row035_layer010_intervals := by
  rfl

theorem row035_layer010_pairs : pairCoverCheck row035_layer010_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer010_chunks_eq
  intro block hblock
  simp only [row035_layer010_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer010_pairs000
  · exact row035_layer010_pairs001
  · exact row035_layer010_pairs002
  · exact row035_layer010_pairs003
  · exact row035_layer010_pairs004
  · exact row035_layer010_pairs005
  · exact row035_layer010_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer010_checked :
    coverLayerCheck row035.height row035.goods { lower := 1218560, upper := 2437120, M := 30 } = true := by
  exact coverLayerCheck_of_parts row035_layer010_arithmetic row035_layer010_enumeration row035_bounds_eq row035_layer010_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer010_checked
