import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row064B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs002 :
    row064_layer003_block002.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs003 :
    row064_layer003_block003.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs004 :
    row064_layer003_block004.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs005 :
    row064_layer003_block005.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs006 :
    row064_layer003_block006.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_pairs007 :
    row064_layer003_block007.all (fun I => row064_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_chunks_eq : row064_layer003_chunks.flatten = row064_layer003_intervals := by
  rfl

theorem row064_layer003_pairs : pairCoverCheck row064_layer003_intervals row064_bounds = true := by
  apply pairCoverCheck_of_chunks row064_layer003_chunks_eq
  intro block hblock
  simp only [row064_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row064_layer003_pairs000
  · exact row064_layer003_pairs001
  · exact row064_layer003_pairs002
  · exact row064_layer003_pairs003
  · exact row064_layer003_pairs004
  · exact row064_layer003_pairs005
  · exact row064_layer003_pairs006
  · exact row064_layer003_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer003_checked :
    coverLayerCheck row064.height row064.goods { lower := 32256, upper := 64512, M := 22 } = true := by
  exact coverLayerCheck_of_parts row064_layer003_arithmetic row064_layer003_enumeration row064_bounds_eq row064_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_layer005_intervals : List ColouredInterval :=
  [(3, 137781, 137844), (3, 157464, 157527), (3, 177147, 177210), (3, 196830, 196893), (3, 216513, 216576), (3, 236196, 236259), (3, 255879, 255942), (3, 177147, 177210), (3, 236196, 236259), (3, 177147, 177210), (5, 140625, 140688), (5, 156250, 156313), (5, 171875, 171938), (5, 187500, 187563), (5, 203125, 203188), (5, 218750, 218813), (5, 234375, 234438), (5, 250000, 250063), (5, 156250, 156313), (5, 234375, 234438), (7, 134456, 134519), (7, 151263, 151326), (7, 168070, 168133), (7, 184877, 184940), (7, 201684, 201747), (7, 218491, 218554), (7, 235298, 235361), (7, 252105, 252168), (7, 235298, 235361), (11, 131769, 131832), (11, 146410, 146473), (11, 161051, 161114), (11, 175692, 175755), (11, 190333, 190396), (11, 204974, 205037), (11, 219615, 219678), (11, 234256, 234319), (11, 248897, 248960), (11, 161051, 161114), (13, 142805, 142868), (13, 171366, 171429), (13, 199927, 199990), (13, 228488, 228551), (13, 257049, 257112), (17, 167042, 167105), (17, 250563, 250626), (19, 130321, 130384), (23, 133837, 133900), (23, 146004, 146067), (23, 158171, 158234), (23, 170338, 170401), (23, 182505, 182568), (23, 194672, 194735), (23, 206839, 206902), (29, 146334, 146397), (29, 170723, 170786), (29, 195112, 195175), (29, 219501, 219564), (29, 243890, 243953), (31, 148955, 149018), (31, 178746, 178809), (31, 208537, 208600), (31, 238328, 238391), (37, 151959, 152022), (37, 202612, 202675), (37, 253265, 253328), (41, 137842, 137905), (41, 206763, 206826), (43, 159014, 159077), (43, 238521, 238584), (47, 207646, 207709), (53, 148877, 148940), (59, 205379, 205442), (61, 226981, 227044)]

def row064_layer005_block000 : List ColouredInterval :=
  [(3, 137781, 137844), (3, 157464, 157527), (3, 177147, 177210), (3, 196830, 196893), (3, 216513, 216576), (3, 236196, 236259), (3, 255879, 255942), (3, 177147, 177210), (3, 236196, 236259), (3, 177147, 177210), (5, 140625, 140688), (5, 156250, 156313), (5, 171875, 171938), (5, 187500, 187563), (5, 203125, 203188), (5, 218750, 218813)]

def row064_layer005_block001 : List ColouredInterval :=
  [(5, 234375, 234438), (5, 250000, 250063), (5, 156250, 156313), (5, 234375, 234438), (7, 134456, 134519), (7, 151263, 151326), (7, 168070, 168133), (7, 184877, 184940), (7, 201684, 201747), (7, 218491, 218554), (7, 235298, 235361), (7, 252105, 252168), (7, 235298, 235361), (11, 131769, 131832), (11, 146410, 146473), (11, 161051, 161114)]

def row064_layer005_block002 : List ColouredInterval :=
  [(11, 175692, 175755), (11, 190333, 190396), (11, 204974, 205037), (11, 219615, 219678), (11, 234256, 234319), (11, 248897, 248960), (11, 161051, 161114), (13, 142805, 142868), (13, 171366, 171429), (13, 199927, 199990), (13, 228488, 228551), (13, 257049, 257112), (17, 167042, 167105), (17, 250563, 250626), (19, 130321, 130384), (23, 133837, 133900)]

def row064_layer005_block003 : List ColouredInterval :=
  [(23, 146004, 146067), (23, 158171, 158234), (23, 170338, 170401), (23, 182505, 182568), (23, 194672, 194735), (23, 206839, 206902), (29, 146334, 146397), (29, 170723, 170786), (29, 195112, 195175), (29, 219501, 219564), (29, 243890, 243953), (31, 148955, 149018), (31, 178746, 178809), (31, 208537, 208600), (31, 238328, 238391), (37, 151959, 152022)]

def row064_layer005_block004 : List ColouredInterval :=
  [(37, 202612, 202675), (37, 253265, 253328), (41, 137842, 137905), (41, 206763, 206826), (43, 159014, 159077), (43, 238521, 238584), (47, 207646, 207709), (53, 148877, 148940), (59, 205379, 205442), (61, 226981, 227044)]

def row064_layer005_chunks : List (List ColouredInterval) :=
  [row064_layer005_block000, row064_layer005_block001, row064_layer005_block002, row064_layer005_block003, row064_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_arithmetic : LayerArithmeticValid row064.height { lower := 129024, upper := 258048, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_enumeration :
    activePowerIntervalList 64 17 129024 258048 = row064_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_pairs000 :
    row064_layer005_block000.all (fun I => row064_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_pairs001 :
    row064_layer005_block001.all (fun I => row064_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_pairs002 :
    row064_layer005_block002.all (fun I => row064_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_pairs003 :
    row064_layer005_block003.all (fun I => row064_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_pairs004 :
    row064_layer005_block004.all (fun I => row064_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_chunks_eq : row064_layer005_chunks.flatten = row064_layer005_intervals := by
  rfl

theorem row064_layer005_pairs : pairCoverCheck row064_layer005_intervals row064_bounds = true := by
  apply pairCoverCheck_of_chunks row064_layer005_chunks_eq
  intro block hblock
  simp only [row064_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row064_layer005_pairs000
  · exact row064_layer005_pairs001
  · exact row064_layer005_pairs002
  · exact row064_layer005_pairs003
  · exact row064_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer005_checked :
    coverLayerCheck row064.height row064.goods { lower := 129024, upper := 258048, M := 17 } = true := by
  exact coverLayerCheck_of_parts row064_layer005_arithmetic row064_layer005_enumeration row064_bounds_eq row064_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row064_layer007_intervals : List ColouredInterval :=
  [(3, 531441, 531504), (3, 590490, 590553), (3, 649539, 649602), (3, 708588, 708651), (3, 767637, 767700), (3, 531441, 531504), (3, 708588, 708651), (3, 885735, 885798), (3, 531441, 531504), (5, 546875, 546938), (5, 625000, 625063), (5, 703125, 703188), (5, 781250, 781313), (5, 859375, 859438), (5, 937500, 937563), (5, 1015625, 1015688), (5, 781250, 781313), (7, 588245, 588308), (7, 705894, 705957), (7, 823543, 823606), (7, 941192, 941255), (7, 823543, 823606), (11, 644204, 644267), (11, 805255, 805318), (11, 966306, 966369), (13, 742586, 742649), (17, 584647, 584710), (17, 668168, 668231), (17, 751689, 751752), (17, 835210, 835273), (17, 918731, 918794), (17, 1002252, 1002315), (19, 521284, 521347), (19, 651605, 651668), (19, 781926, 781989), (19, 912247, 912310), (23, 559682, 559745), (23, 839523, 839586), (29, 707281, 707344), (31, 923521, 923584), (37, 557183, 557246), (37, 607836, 607899), (37, 658489, 658552), (41, 551368, 551431), (41, 620289, 620352), (41, 689210, 689273), (41, 758131, 758194), (41, 827052, 827115), (41, 895973, 896036), (43, 556549, 556612), (43, 636056, 636119), (43, 715563, 715626), (43, 795070, 795133), (43, 874577, 874640), (43, 954084, 954147), (47, 519115, 519178), (47, 622938, 623001), (47, 726761, 726824), (47, 830584, 830647), (47, 934407, 934470), (53, 595508, 595571), (53, 744385, 744448), (53, 893262, 893325), (59, 616137, 616200), (59, 821516, 821579), (59, 1026895, 1026958), (61, 680943, 681006), (61, 907924, 907987)]

def row064_layer007_block000 : List ColouredInterval :=
  [(3, 531441, 531504), (3, 590490, 590553), (3, 649539, 649602), (3, 708588, 708651), (3, 767637, 767700), (3, 531441, 531504), (3, 708588, 708651), (3, 885735, 885798), (3, 531441, 531504), (5, 546875, 546938), (5, 625000, 625063), (5, 703125, 703188), (5, 781250, 781313), (5, 859375, 859438), (5, 937500, 937563), (5, 1015625, 1015688)]

def row064_layer007_block001 : List ColouredInterval :=
  [(5, 781250, 781313), (7, 588245, 588308), (7, 705894, 705957), (7, 823543, 823606), (7, 941192, 941255), (7, 823543, 823606), (11, 644204, 644267), (11, 805255, 805318), (11, 966306, 966369), (13, 742586, 742649), (17, 584647, 584710), (17, 668168, 668231), (17, 751689, 751752), (17, 835210, 835273), (17, 918731, 918794), (17, 1002252, 1002315)]

def row064_layer007_block002 : List ColouredInterval :=
  [(19, 521284, 521347), (19, 651605, 651668), (19, 781926, 781989), (19, 912247, 912310), (23, 559682, 559745), (23, 839523, 839586), (29, 707281, 707344), (31, 923521, 923584), (37, 557183, 557246), (37, 607836, 607899), (37, 658489, 658552), (41, 551368, 551431), (41, 620289, 620352), (41, 689210, 689273), (41, 758131, 758194), (41, 827052, 827115)]

def row064_layer007_block003 : List ColouredInterval :=
  [(41, 895973, 896036), (43, 556549, 556612), (43, 636056, 636119), (43, 715563, 715626), (43, 795070, 795133), (43, 874577, 874640), (43, 954084, 954147), (47, 519115, 519178), (47, 622938, 623001), (47, 726761, 726824), (47, 830584, 830647), (47, 934407, 934470), (53, 595508, 595571), (53, 744385, 744448), (53, 893262, 893325), (59, 616137, 616200)]

def row064_layer007_block004 : List ColouredInterval :=
  [(59, 821516, 821579), (59, 1026895, 1026958), (61, 680943, 681006), (61, 907924, 907987)]

def row064_layer007_chunks : List (List ColouredInterval) :=
  [row064_layer007_block000, row064_layer007_block001, row064_layer007_block002, row064_layer007_block003, row064_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_arithmetic : LayerArithmeticValid row064.height { lower := 516096, upper := 1032192, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_enumeration :
    activePowerIntervalList 64 13 516096 1032192 = row064_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_pairs000 :
    row064_layer007_block000.all (fun I => row064_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_pairs001 :
    row064_layer007_block001.all (fun I => row064_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_pairs002 :
    row064_layer007_block002.all (fun I => row064_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_pairs003 :
    row064_layer007_block003.all (fun I => row064_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_pairs004 :
    row064_layer007_block004.all (fun I => row064_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row064_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_chunks_eq : row064_layer007_chunks.flatten = row064_layer007_intervals := by
  rfl

theorem row064_layer007_pairs : pairCoverCheck row064_layer007_intervals row064_bounds = true := by
  apply pairCoverCheck_of_chunks row064_layer007_chunks_eq
  intro block hblock
  simp only [row064_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row064_layer007_pairs000
  · exact row064_layer007_pairs001
  · exact row064_layer007_pairs002
  · exact row064_layer007_pairs003
  · exact row064_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer007_checked :
    coverLayerCheck row064.height row064.goods { lower := 516096, upper := 1032192, M := 13 } = true := by
  exact coverLayerCheck_of_parts row064_layer007_arithmetic row064_layer007_enumeration row064_bounds_eq row064_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer004_checked :
    coverLayerCheck row064.height row064.goods { lower := 64512, upper := 129024, M := 19 } = true := by
  decide +kernel

theorem row064_layer006_checked :
    coverLayerCheck row064.height row064.goods { lower := 258048, upper := 516096, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer008_checked :
    coverLayerCheck row064.height row064.goods { lower := 1032192, upper := 2064384, M := 12 } = true := by
  decide +kernel

theorem row064_layer009_checked :
    coverLayerCheck row064.height row064.goods { lower := 2064384, upper := 4128768, M := 11 } = true := by
  decide +kernel

theorem row064_layer010_checked :
    coverLayerCheck row064.height row064.goods { lower := 4128768, upper := 8257536, M := 10 } = true := by
  decide +kernel

theorem row064_layer011_checked :
    coverLayerCheck row064.height row064.goods { lower := 8257536, upper := 16515072, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer012_checked :
    coverLayerCheck row064.height row064.goods { lower := 16515072, upper := 33030144, M := 8 } = true := by
  decide +kernel

theorem row064_layer013_checked :
    coverLayerCheck row064.height row064.goods { lower := 33030144, upper := 66060288, M := 7 } = true := by
  decide +kernel

theorem row064_layer014_checked :
    coverLayerCheck row064.height row064.goods { lower := 66060288, upper := 132120576, M := 6 } = true := by
  decide +kernel

theorem row064_layer015_checked :
    coverLayerCheck row064.height row064.goods { lower := 132120576, upper := 264241152, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer016_checked :
    coverLayerCheck row064.height row064.goods { lower := 264241152, upper := 528482304, M := 5 } = true := by
  decide +kernel

theorem row064_layer017_checked :
    coverLayerCheck row064.height row064.goods { lower := 528482304, upper := 1056964608, M := 4 } = true := by
  decide +kernel

theorem row064_layer018_checked :
    coverLayerCheck row064.height row064.goods { lower := 1056964608, upper := 2113929216, M := 4 } = true := by
  decide +kernel

theorem row064_layer019_checked :
    coverLayerCheck row064.height row064.goods { lower := 2113929216, upper := 4227858432, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer020_checked :
    coverLayerCheck row064.height row064.goods { lower := 4227858432, upper := 8455716864, M := 3 } = true := by
  decide +kernel

theorem row064_layer021_checked :
    coverLayerCheck row064.height row064.goods { lower := 8455716864, upper := 16911433728, M := 3 } = true := by
  decide +kernel

theorem row064_layer022_checked :
    coverLayerCheck row064.height row064.goods { lower := 16911433728, upper := 33822867456, M := 3 } = true := by
  decide +kernel

theorem row064_layer023_checked :
    coverLayerCheck row064.height row064.goods { lower := 33822867456, upper := 67645734912, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layer024_checked :
    coverLayerCheck row064.height row064.goods { lower := 67645734912, upper := 135291469824, M := 2 } = true := by
  decide +kernel

theorem row064_layer025_checked :
    coverLayerCheck row064.height row064.goods { lower := 135291469824, upper := 270582939648, M := 2 } = true := by
  decide +kernel

theorem row064_layer026_checked :
    coverLayerCheck row064.height row064.goods { lower := 270582939648, upper := 541165879296, M := 2 } = true := by
  decide +kernel

theorem row064_layer027_checked :
    coverLayerCheck row064.height row064.goods { lower := 541165879296, upper := 1000000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_layers_checked :
    row064.layers.all (coverLayerCheck row064.height row064.goods) = true := by
  change row064_layers.all (coverLayerCheck row064.height row064.goods) = true
  simp only [row064_layers, List.all_cons, List.all_nil,
    row064_layer000_checked,
    row064_layer001_checked,
    row064_layer002_checked,
    row064_layer003_checked,
    row064_layer004_checked,
    row064_layer005_checked,
    row064_layer006_checked,
    row064_layer007_checked,
    row064_layer008_checked,
    row064_layer009_checked,
    row064_layer010_checked,
    row064_layer011_checked,
    row064_layer012_checked,
    row064_layer013_checked,
    row064_layer014_checked,
    row064_layer015_checked,
    row064_layer016_checked,
    row064_layer017_checked,
    row064_layer018_checked,
    row064_layer019_checked,
    row064_layer020_checked,
    row064_layer021_checked,
    row064_layer022_checked,
    row064_layer023_checked,
    row064_layer024_checked,
    row064_layer025_checked,
    row064_layer026_checked,
    row064_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row064_checked : finiteCoverRowCheck row064 = true := by
  simp only [finiteCoverRowCheck, row064_registered, row064_goods_checked,
    row064_small_checked, row064_layerCover_checked, row064_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row064_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i064 :
    ∀ n j : ℕ, 1 ≤ 64 ∧ 64 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 64 ≤ p ∧ p ∣ Nat.choose n 64 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row064_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i064
