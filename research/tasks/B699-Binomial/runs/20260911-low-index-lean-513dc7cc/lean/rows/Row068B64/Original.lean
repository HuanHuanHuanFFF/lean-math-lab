import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row068B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_pairs002 :
    row068_layer003_block002.all (fun I => row068_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_pairs003 :
    row068_layer003_block003.all (fun I => row068_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_pairs004 :
    row068_layer003_block004.all (fun I => row068_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_pairs005 :
    row068_layer003_block005.all (fun I => row068_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_pairs006 :
    row068_layer003_block006.all (fun I => row068_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_chunks_eq : row068_layer003_chunks.flatten = row068_layer003_intervals := by
  rfl

theorem row068_layer003_pairs : pairCoverCheck row068_layer003_intervals row068_bounds = true := by
  apply pairCoverCheck_of_chunks row068_layer003_chunks_eq
  intro block hblock
  simp only [row068_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row068_layer003_pairs000
  · exact row068_layer003_pairs001
  · exact row068_layer003_pairs002
  · exact row068_layer003_pairs003
  · exact row068_layer003_pairs004
  · exact row068_layer003_pairs005
  · exact row068_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer003_checked :
    coverLayerCheck row068.height row068.goods { lower := 36448, upper := 72896, M := 21 } = true := by
  exact coverLayerCheck_of_parts row068_layer003_arithmetic row068_layer003_enumeration row068_bounds_eq row068_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_layer004_intervals : List ColouredInterval :=
  [(2, 98304, 98371), (2, 131072, 131139), (2, 131072, 131139), (2, 131072, 131139), (3, 78732, 78799), (3, 85293, 85360), (3, 91854, 91921), (3, 98415, 98482), (3, 104976, 105043), (3, 111537, 111604), (3, 118098, 118165), (3, 124659, 124726), (3, 78732, 78799), (3, 98415, 98482), (3, 118098, 118165), (3, 137781, 137848), (3, 118098, 118165), (5, 78125, 78192), (5, 93750, 93817), (5, 109375, 109442), (5, 125000, 125067), (5, 140625, 140692), (5, 78125, 78192), (7, 84035, 84102), (7, 100842, 100909), (7, 117649, 117716), (7, 134456, 134523), (7, 117649, 117716), (11, 73205, 73272), (11, 87846, 87913), (11, 102487, 102554), (11, 117128, 117195), (11, 131769, 131836), (13, 85683, 85750), (13, 114244, 114311), (13, 142805, 142872), (17, 83521, 83588), (19, 75449, 75516), (19, 82308, 82375), (19, 89167, 89234), (19, 96026, 96093), (19, 102885, 102952), (19, 109744, 109811), (19, 116603, 116670), (19, 123462, 123529), (19, 130321, 130388), (19, 130321, 130388), (23, 73002, 73069), (23, 85169, 85236), (23, 97336, 97403), (23, 109503, 109570), (23, 121670, 121737), (23, 133837, 133904), (29, 73167, 73234), (29, 97556, 97623), (29, 121945, 122012), (31, 89373, 89440), (31, 119164, 119231), (37, 101306, 101373), (41, 137842, 137909), (43, 79507, 79574), (47, 103823, 103890), (67, 76313, 76380), (67, 80802, 80869), (67, 85291, 85358)]

def row068_layer004_block000 : List ColouredInterval :=
  [(2, 98304, 98371), (2, 131072, 131139), (2, 131072, 131139), (2, 131072, 131139), (3, 78732, 78799), (3, 85293, 85360), (3, 91854, 91921), (3, 98415, 98482), (3, 104976, 105043), (3, 111537, 111604), (3, 118098, 118165), (3, 124659, 124726), (3, 78732, 78799), (3, 98415, 98482), (3, 118098, 118165), (3, 137781, 137848)]

def row068_layer004_block001 : List ColouredInterval :=
  [(3, 118098, 118165), (5, 78125, 78192), (5, 93750, 93817), (5, 109375, 109442), (5, 125000, 125067), (5, 140625, 140692), (5, 78125, 78192), (7, 84035, 84102), (7, 100842, 100909), (7, 117649, 117716), (7, 134456, 134523), (7, 117649, 117716), (11, 73205, 73272), (11, 87846, 87913), (11, 102487, 102554), (11, 117128, 117195)]

def row068_layer004_block002 : List ColouredInterval :=
  [(11, 131769, 131836), (13, 85683, 85750), (13, 114244, 114311), (13, 142805, 142872), (17, 83521, 83588), (19, 75449, 75516), (19, 82308, 82375), (19, 89167, 89234), (19, 96026, 96093), (19, 102885, 102952), (19, 109744, 109811), (19, 116603, 116670), (19, 123462, 123529), (19, 130321, 130388), (19, 130321, 130388), (23, 73002, 73069)]

def row068_layer004_block003 : List ColouredInterval :=
  [(23, 85169, 85236), (23, 97336, 97403), (23, 109503, 109570), (23, 121670, 121737), (23, 133837, 133904), (29, 73167, 73234), (29, 97556, 97623), (29, 121945, 122012), (31, 89373, 89440), (31, 119164, 119231), (37, 101306, 101373), (41, 137842, 137909), (43, 79507, 79574), (47, 103823, 103890), (67, 76313, 76380), (67, 80802, 80869)]

def row068_layer004_block004 : List ColouredInterval :=
  [(67, 85291, 85358)]

def row068_layer004_chunks : List (List ColouredInterval) :=
  [row068_layer004_block000, row068_layer004_block001, row068_layer004_block002, row068_layer004_block003, row068_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_arithmetic : LayerArithmeticValid row068.height { lower := 72896, upper := 145792, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_enumeration :
    activePowerIntervalList 68 19 72896 145792 = row068_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_pairs000 :
    row068_layer004_block000.all (fun I => row068_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_pairs001 :
    row068_layer004_block001.all (fun I => row068_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_pairs002 :
    row068_layer004_block002.all (fun I => row068_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_pairs003 :
    row068_layer004_block003.all (fun I => row068_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_pairs004 :
    row068_layer004_block004.all (fun I => row068_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_chunks_eq : row068_layer004_chunks.flatten = row068_layer004_intervals := by
  rfl

theorem row068_layer004_pairs : pairCoverCheck row068_layer004_intervals row068_bounds = true := by
  apply pairCoverCheck_of_chunks row068_layer004_chunks_eq
  intro block hblock
  simp only [row068_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row068_layer004_pairs000
  · exact row068_layer004_pairs001
  · exact row068_layer004_pairs002
  · exact row068_layer004_pairs003
  · exact row068_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer004_checked :
    coverLayerCheck row068.height row068.goods { lower := 72896, upper := 145792, M := 19 } = true := by
  exact coverLayerCheck_of_parts row068_layer004_arithmetic row068_layer004_enumeration row068_bounds_eq row068_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_layer005_intervals : List ColouredInterval :=
  [(2, 196608, 196675), (2, 262144, 262211), (2, 262144, 262211), (2, 262144, 262211), (3, 157464, 157531), (3, 177147, 177214), (3, 196830, 196897), (3, 216513, 216580), (3, 236196, 236263), (3, 255879, 255946), (3, 275562, 275629), (3, 177147, 177214), (3, 236196, 236263), (3, 177147, 177214), (5, 156250, 156317), (5, 171875, 171942), (5, 187500, 187567), (5, 203125, 203192), (5, 218750, 218817), (5, 234375, 234442), (5, 250000, 250067), (5, 156250, 156317), (5, 234375, 234442), (7, 151263, 151330), (7, 168070, 168137), (7, 184877, 184944), (7, 201684, 201751), (7, 218491, 218558), (7, 235298, 235365), (7, 252105, 252172), (7, 268912, 268979), (7, 235298, 235365), (11, 146410, 146477), (11, 161051, 161118), (11, 175692, 175759), (11, 190333, 190400), (11, 204974, 205041), (11, 219615, 219682), (11, 234256, 234323), (11, 161051, 161118), (13, 171366, 171433), (13, 199927, 199994), (13, 228488, 228555), (13, 257049, 257116), (13, 285610, 285677), (19, 260642, 260709), (23, 146004, 146071), (23, 158171, 158238), (23, 170338, 170405), (23, 182505, 182572), (23, 194672, 194739), (23, 279841, 279908), (29, 146334, 146401), (29, 170723, 170790), (29, 195112, 195179), (29, 219501, 219568), (29, 243890, 243957), (29, 268279, 268346), (31, 148955, 149022), (31, 178746, 178813), (31, 208537, 208604), (31, 238328, 238395), (31, 268119, 268186), (37, 151959, 152026), (37, 202612, 202679), (37, 253265, 253332), (41, 206763, 206830), (41, 275684, 275751), (43, 159014, 159081), (43, 238521, 238588), (47, 207646, 207713), (53, 148877, 148944), (59, 205379, 205446), (61, 226981, 227048)]

def row068_layer005_block000 : List ColouredInterval :=
  [(2, 196608, 196675), (2, 262144, 262211), (2, 262144, 262211), (2, 262144, 262211), (3, 157464, 157531), (3, 177147, 177214), (3, 196830, 196897), (3, 216513, 216580), (3, 236196, 236263), (3, 255879, 255946), (3, 275562, 275629), (3, 177147, 177214), (3, 236196, 236263), (3, 177147, 177214), (5, 156250, 156317), (5, 171875, 171942)]

def row068_layer005_block001 : List ColouredInterval :=
  [(5, 187500, 187567), (5, 203125, 203192), (5, 218750, 218817), (5, 234375, 234442), (5, 250000, 250067), (5, 156250, 156317), (5, 234375, 234442), (7, 151263, 151330), (7, 168070, 168137), (7, 184877, 184944), (7, 201684, 201751), (7, 218491, 218558), (7, 235298, 235365), (7, 252105, 252172), (7, 268912, 268979), (7, 235298, 235365)]

def row068_layer005_block002 : List ColouredInterval :=
  [(11, 146410, 146477), (11, 161051, 161118), (11, 175692, 175759), (11, 190333, 190400), (11, 204974, 205041), (11, 219615, 219682), (11, 234256, 234323), (11, 161051, 161118), (13, 171366, 171433), (13, 199927, 199994), (13, 228488, 228555), (13, 257049, 257116), (13, 285610, 285677), (19, 260642, 260709), (23, 146004, 146071), (23, 158171, 158238)]

def row068_layer005_block003 : List ColouredInterval :=
  [(23, 170338, 170405), (23, 182505, 182572), (23, 194672, 194739), (23, 279841, 279908), (29, 146334, 146401), (29, 170723, 170790), (29, 195112, 195179), (29, 219501, 219568), (29, 243890, 243957), (29, 268279, 268346), (31, 148955, 149022), (31, 178746, 178813), (31, 208537, 208604), (31, 238328, 238395), (31, 268119, 268186), (37, 151959, 152026)]

def row068_layer005_block004 : List ColouredInterval :=
  [(37, 202612, 202679), (37, 253265, 253332), (41, 206763, 206830), (41, 275684, 275751), (43, 159014, 159081), (43, 238521, 238588), (47, 207646, 207713), (53, 148877, 148944), (59, 205379, 205446), (61, 226981, 227048)]

def row068_layer005_chunks : List (List ColouredInterval) :=
  [row068_layer005_block000, row068_layer005_block001, row068_layer005_block002, row068_layer005_block003, row068_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_arithmetic : LayerArithmeticValid row068.height { lower := 145792, upper := 291584, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_enumeration :
    activePowerIntervalList 68 16 145792 291584 = row068_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_pairs000 :
    row068_layer005_block000.all (fun I => row068_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_pairs001 :
    row068_layer005_block001.all (fun I => row068_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_pairs002 :
    row068_layer005_block002.all (fun I => row068_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_pairs003 :
    row068_layer005_block003.all (fun I => row068_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_pairs004 :
    row068_layer005_block004.all (fun I => row068_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_chunks_eq : row068_layer005_chunks.flatten = row068_layer005_intervals := by
  rfl

theorem row068_layer005_pairs : pairCoverCheck row068_layer005_intervals row068_bounds = true := by
  apply pairCoverCheck_of_chunks row068_layer005_chunks_eq
  intro block hblock
  simp only [row068_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row068_layer005_pairs000
  · exact row068_layer005_pairs001
  · exact row068_layer005_pairs002
  · exact row068_layer005_pairs003
  · exact row068_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer005_checked :
    coverLayerCheck row068.height row068.goods { lower := 145792, upper := 291584, M := 16 } = true := by
  exact coverLayerCheck_of_parts row068_layer005_arithmetic row068_layer005_enumeration row068_bounds_eq row068_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row068_layer007_intervals : List ColouredInterval :=
  [(2, 786432, 786499), (2, 1048576, 1048643), (2, 1048576, 1048643), (3, 590490, 590557), (3, 649539, 649606), (3, 708588, 708655), (3, 767637, 767704), (3, 708588, 708655), (3, 885735, 885802), (3, 1062882, 1062949), (3, 1062882, 1062949), (5, 625000, 625067), (5, 703125, 703192), (5, 781250, 781317), (5, 859375, 859442), (5, 937500, 937567), (5, 1015625, 1015692), (5, 781250, 781317), (7, 588245, 588312), (7, 705894, 705961), (7, 823543, 823610), (7, 941192, 941259), (7, 1058841, 1058908), (7, 823543, 823610), (11, 644204, 644271), (11, 805255, 805322), (11, 966306, 966373), (11, 1127357, 1127424), (13, 742586, 742653), (13, 1113879, 1113946), (19, 651605, 651672), (19, 781926, 781993), (19, 912247, 912314), (19, 1042568, 1042635), (23, 839523, 839590), (23, 1119364, 1119431), (29, 707281, 707348), (31, 923521, 923588), (37, 607836, 607903), (37, 658489, 658556), (41, 620289, 620356), (41, 689210, 689277), (41, 758131, 758198), (41, 827052, 827119), (41, 895973, 896040), (43, 636056, 636123), (43, 715563, 715630), (43, 795070, 795137), (43, 874577, 874644), (43, 954084, 954151), (43, 1033591, 1033658), (47, 622938, 623005), (47, 726761, 726828), (47, 830584, 830651), (47, 934407, 934474), (47, 1038230, 1038297), (47, 1142053, 1142120), (53, 595508, 595575), (53, 744385, 744452), (53, 893262, 893329), (53, 1042139, 1042206), (59, 616137, 616204), (59, 821516, 821583), (59, 1026895, 1026962), (61, 680943, 681010), (61, 907924, 907991), (61, 1134905, 1134972), (67, 601526, 601593), (67, 902289, 902356)]

def row068_layer007_block000 : List ColouredInterval :=
  [(2, 786432, 786499), (2, 1048576, 1048643), (2, 1048576, 1048643), (3, 590490, 590557), (3, 649539, 649606), (3, 708588, 708655), (3, 767637, 767704), (3, 708588, 708655), (3, 885735, 885802), (3, 1062882, 1062949), (3, 1062882, 1062949), (5, 625000, 625067), (5, 703125, 703192), (5, 781250, 781317), (5, 859375, 859442), (5, 937500, 937567)]

def row068_layer007_block001 : List ColouredInterval :=
  [(5, 1015625, 1015692), (5, 781250, 781317), (7, 588245, 588312), (7, 705894, 705961), (7, 823543, 823610), (7, 941192, 941259), (7, 1058841, 1058908), (7, 823543, 823610), (11, 644204, 644271), (11, 805255, 805322), (11, 966306, 966373), (11, 1127357, 1127424), (13, 742586, 742653), (13, 1113879, 1113946), (19, 651605, 651672), (19, 781926, 781993)]

def row068_layer007_block002 : List ColouredInterval :=
  [(19, 912247, 912314), (19, 1042568, 1042635), (23, 839523, 839590), (23, 1119364, 1119431), (29, 707281, 707348), (31, 923521, 923588), (37, 607836, 607903), (37, 658489, 658556), (41, 620289, 620356), (41, 689210, 689277), (41, 758131, 758198), (41, 827052, 827119), (41, 895973, 896040), (43, 636056, 636123), (43, 715563, 715630), (43, 795070, 795137)]

def row068_layer007_block003 : List ColouredInterval :=
  [(43, 874577, 874644), (43, 954084, 954151), (43, 1033591, 1033658), (47, 622938, 623005), (47, 726761, 726828), (47, 830584, 830651), (47, 934407, 934474), (47, 1038230, 1038297), (47, 1142053, 1142120), (53, 595508, 595575), (53, 744385, 744452), (53, 893262, 893329), (53, 1042139, 1042206), (59, 616137, 616204), (59, 821516, 821583), (59, 1026895, 1026962)]

def row068_layer007_block004 : List ColouredInterval :=
  [(61, 680943, 681010), (61, 907924, 907991), (61, 1134905, 1134972), (67, 601526, 601593), (67, 902289, 902356)]

def row068_layer007_chunks : List (List ColouredInterval) :=
  [row068_layer007_block000, row068_layer007_block001, row068_layer007_block002, row068_layer007_block003, row068_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_arithmetic : LayerArithmeticValid row068.height { lower := 583168, upper := 1166336, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_enumeration :
    activePowerIntervalList 68 13 583168 1166336 = row068_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_pairs000 :
    row068_layer007_block000.all (fun I => row068_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_pairs001 :
    row068_layer007_block001.all (fun I => row068_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_pairs002 :
    row068_layer007_block002.all (fun I => row068_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_pairs003 :
    row068_layer007_block003.all (fun I => row068_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_pairs004 :
    row068_layer007_block004.all (fun I => row068_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row068_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_chunks_eq : row068_layer007_chunks.flatten = row068_layer007_intervals := by
  rfl

theorem row068_layer007_pairs : pairCoverCheck row068_layer007_intervals row068_bounds = true := by
  apply pairCoverCheck_of_chunks row068_layer007_chunks_eq
  intro block hblock
  simp only [row068_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row068_layer007_pairs000
  · exact row068_layer007_pairs001
  · exact row068_layer007_pairs002
  · exact row068_layer007_pairs003
  · exact row068_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer007_checked :
    coverLayerCheck row068.height row068.goods { lower := 583168, upper := 1166336, M := 13 } = true := by
  exact coverLayerCheck_of_parts row068_layer007_arithmetic row068_layer007_enumeration row068_bounds_eq row068_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer006_checked :
    coverLayerCheck row068.height row068.goods { lower := 291584, upper := 583168, M := 15 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer008_checked :
    coverLayerCheck row068.height row068.goods { lower := 1166336, upper := 2332672, M := 11 } = true := by
  decide +kernel

theorem row068_layer009_checked :
    coverLayerCheck row068.height row068.goods { lower := 2332672, upper := 4665344, M := 10 } = true := by
  decide +kernel

theorem row068_layer010_checked :
    coverLayerCheck row068.height row068.goods { lower := 4665344, upper := 9330688, M := 9 } = true := by
  decide +kernel

theorem row068_layer011_checked :
    coverLayerCheck row068.height row068.goods { lower := 9330688, upper := 18661376, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer012_checked :
    coverLayerCheck row068.height row068.goods { lower := 18661376, upper := 37322752, M := 7 } = true := by
  decide +kernel

theorem row068_layer013_checked :
    coverLayerCheck row068.height row068.goods { lower := 37322752, upper := 74645504, M := 6 } = true := by
  decide +kernel

theorem row068_layer014_checked :
    coverLayerCheck row068.height row068.goods { lower := 74645504, upper := 149291008, M := 6 } = true := by
  decide +kernel

theorem row068_layer015_checked :
    coverLayerCheck row068.height row068.goods { lower := 149291008, upper := 298582016, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer016_checked :
    coverLayerCheck row068.height row068.goods { lower := 298582016, upper := 597164032, M := 4 } = true := by
  decide +kernel

theorem row068_layer017_checked :
    coverLayerCheck row068.height row068.goods { lower := 597164032, upper := 1194328064, M := 4 } = true := by
  decide +kernel

theorem row068_layer018_checked :
    coverLayerCheck row068.height row068.goods { lower := 1194328064, upper := 2388656128, M := 4 } = true := by
  decide +kernel

theorem row068_layer019_checked :
    coverLayerCheck row068.height row068.goods { lower := 2388656128, upper := 4777312256, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer020_checked :
    coverLayerCheck row068.height row068.goods { lower := 4777312256, upper := 9554624512, M := 3 } = true := by
  decide +kernel

theorem row068_layer021_checked :
    coverLayerCheck row068.height row068.goods { lower := 9554624512, upper := 19109249024, M := 3 } = true := by
  decide +kernel

theorem row068_layer022_checked :
    coverLayerCheck row068.height row068.goods { lower := 19109249024, upper := 38218498048, M := 2 } = true := by
  decide +kernel

theorem row068_layer023_checked :
    coverLayerCheck row068.height row068.goods { lower := 38218498048, upper := 76436996096, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layer024_checked :
    coverLayerCheck row068.height row068.goods { lower := 76436996096, upper := 152873992192, M := 2 } = true := by
  decide +kernel

theorem row068_layer025_checked :
    coverLayerCheck row068.height row068.goods { lower := 152873992192, upper := 305747984384, M := 2 } = true := by
  decide +kernel

theorem row068_layer026_checked :
    coverLayerCheck row068.height row068.goods { lower := 305747984384, upper := 611495968768, M := 2 } = true := by
  decide +kernel

theorem row068_layer027_checked :
    coverLayerCheck row068.height row068.goods { lower := 611495968768, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_layers_checked :
    row068.layers.all (coverLayerCheck row068.height row068.goods) = true := by
  change row068_layers.all (coverLayerCheck row068.height row068.goods) = true
  simp only [row068_layers, List.all_cons, List.all_nil,
    row068_layer000_checked,
    row068_layer001_checked,
    row068_layer002_checked,
    row068_layer003_checked,
    row068_layer004_checked,
    row068_layer005_checked,
    row068_layer006_checked,
    row068_layer007_checked,
    row068_layer008_checked,
    row068_layer009_checked,
    row068_layer010_checked,
    row068_layer011_checked,
    row068_layer012_checked,
    row068_layer013_checked,
    row068_layer014_checked,
    row068_layer015_checked,
    row068_layer016_checked,
    row068_layer017_checked,
    row068_layer018_checked,
    row068_layer019_checked,
    row068_layer020_checked,
    row068_layer021_checked,
    row068_layer022_checked,
    row068_layer023_checked,
    row068_layer024_checked,
    row068_layer025_checked,
    row068_layer026_checked,
    row068_layer027_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row068_checked : finiteCoverRowCheck row068 = true := by
  simp only [finiteCoverRowCheck, row068_registered, row068_goods_checked,
    row068_small_checked, row068_layerCover_checked, row068_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row068_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i068 :
    ∀ n j : ℕ, 1 ≤ 68 ∧ 68 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 68 ≤ p ∧ p ∣ Nat.choose n 68 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row068_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i068
