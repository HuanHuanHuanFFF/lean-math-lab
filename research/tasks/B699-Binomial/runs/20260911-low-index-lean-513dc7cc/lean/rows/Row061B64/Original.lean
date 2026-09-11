import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row061B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_pairs000 :
    row061_layer003_block000.all (fun I => row061_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_pairs001 :
    row061_layer003_block001.all (fun I => row061_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_pairs002 :
    row061_layer003_block002.all (fun I => row061_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_pairs003 :
    row061_layer003_block003.all (fun I => row061_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_pairs004 :
    row061_layer003_block004.all (fun I => row061_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_pairs005 :
    row061_layer003_block005.all (fun I => row061_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_pairs006 :
    row061_layer003_block006.all (fun I => row061_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_chunks_eq : row061_layer003_chunks.flatten = row061_layer003_intervals := by
  rfl

theorem row061_layer003_pairs : pairCoverCheck row061_layer003_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer003_chunks_eq
  intro block hblock
  simp only [row061_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row061_layer003_pairs000
  · exact row061_layer003_pairs001
  · exact row061_layer003_pairs002
  · exact row061_layer003_pairs003
  · exact row061_layer003_pairs004
  · exact row061_layer003_pairs005
  · exact row061_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer003_checked :
    coverLayerCheck row061.height row061.goods { lower := 29280, upper := 58560, M := 20 } = true := by
  exact coverLayerCheck_of_parts row061_layer003_arithmetic row061_layer003_enumeration row061_bounds_eq row061_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer004_intervals : List ColouredInterval :=
  [(2, 61440, 61500), (2, 65536, 65596), (2, 69632, 69692), (2, 65536, 65596), (2, 73728, 73788), (2, 81920, 81980), (2, 90112, 90172), (2, 98304, 98364), (2, 106496, 106556), (2, 114688, 114748), (2, 65536, 65596), (2, 81920, 81980), (2, 98304, 98364), (2, 114688, 114748), (2, 65536, 65596), (2, 98304, 98364), (2, 65536, 65596), (3, 59049, 59109), (3, 65610, 65670), (3, 72171, 72231), (3, 78732, 78792), (3, 85293, 85353), (3, 91854, 91914), (3, 98415, 98475), (3, 104976, 105036), (3, 111537, 111597), (3, 59049, 59109), (3, 78732, 78792), (3, 98415, 98475), (3, 59049, 59109), (5, 62500, 62560), (5, 78125, 78185), (5, 93750, 93810), (5, 109375, 109435), (5, 78125, 78185), (7, 67228, 67288), (7, 84035, 84095), (7, 100842, 100902), (11, 58564, 58624), (11, 73205, 73265), (11, 87846, 87906), (11, 102487, 102547), (13, 85683, 85743), (13, 114244, 114304), (17, 58956, 59016), (17, 63869, 63929), (17, 68782, 68842), (17, 73695, 73755), (17, 78608, 78668), (17, 83521, 83581), (17, 83521, 83581), (19, 61731, 61791), (19, 68590, 68650), (19, 75449, 75509), (19, 82308, 82368), (19, 89167, 89227), (19, 96026, 96086), (19, 102885, 102945), (19, 109744, 109804), (19, 116603, 116663), (23, 60835, 60895), (23, 73002, 73062), (23, 85169, 85229), (23, 97336, 97396), (23, 109503, 109563), (29, 73167, 73227), (29, 97556, 97616), (31, 59582, 59642), (31, 89373, 89433), (37, 101306, 101366), (41, 68921, 68981), (43, 79507, 79567), (47, 103823, 103883), (59, 59177, 59237)]

def row061_layer004_block000 : List ColouredInterval :=
  [(2, 61440, 61500), (2, 65536, 65596), (2, 69632, 69692), (2, 65536, 65596), (2, 73728, 73788), (2, 81920, 81980), (2, 90112, 90172), (2, 98304, 98364), (2, 106496, 106556), (2, 114688, 114748), (2, 65536, 65596), (2, 81920, 81980), (2, 98304, 98364), (2, 114688, 114748), (2, 65536, 65596), (2, 98304, 98364)]

def row061_layer004_block001 : List ColouredInterval :=
  [(2, 65536, 65596), (3, 59049, 59109), (3, 65610, 65670), (3, 72171, 72231), (3, 78732, 78792), (3, 85293, 85353), (3, 91854, 91914), (3, 98415, 98475), (3, 104976, 105036), (3, 111537, 111597), (3, 59049, 59109), (3, 78732, 78792), (3, 98415, 98475), (3, 59049, 59109), (5, 62500, 62560), (5, 78125, 78185)]

def row061_layer004_block002 : List ColouredInterval :=
  [(5, 93750, 93810), (5, 109375, 109435), (5, 78125, 78185), (7, 67228, 67288), (7, 84035, 84095), (7, 100842, 100902), (11, 58564, 58624), (11, 73205, 73265), (11, 87846, 87906), (11, 102487, 102547), (13, 85683, 85743), (13, 114244, 114304), (17, 58956, 59016), (17, 63869, 63929), (17, 68782, 68842), (17, 73695, 73755)]

def row061_layer004_block003 : List ColouredInterval :=
  [(17, 78608, 78668), (17, 83521, 83581), (17, 83521, 83581), (19, 61731, 61791), (19, 68590, 68650), (19, 75449, 75509), (19, 82308, 82368), (19, 89167, 89227), (19, 96026, 96086), (19, 102885, 102945), (19, 109744, 109804), (19, 116603, 116663), (23, 60835, 60895), (23, 73002, 73062), (23, 85169, 85229), (23, 97336, 97396)]

def row061_layer004_block004 : List ColouredInterval :=
  [(23, 109503, 109563), (29, 73167, 73227), (29, 97556, 97616), (31, 59582, 59642), (31, 89373, 89433), (37, 101306, 101366), (41, 68921, 68981), (43, 79507, 79567), (47, 103823, 103883), (59, 59177, 59237)]

def row061_layer004_chunks : List (List ColouredInterval) :=
  [row061_layer004_block000, row061_layer004_block001, row061_layer004_block002, row061_layer004_block003, row061_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_arithmetic : LayerArithmeticValid row061.height { lower := 58560, upper := 117120, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_enumeration :
    activePowerIntervalList 61 17 58560 117120 = row061_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_pairs000 :
    row061_layer004_block000.all (fun I => row061_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_pairs001 :
    row061_layer004_block001.all (fun I => row061_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_pairs002 :
    row061_layer004_block002.all (fun I => row061_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_pairs003 :
    row061_layer004_block003.all (fun I => row061_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_pairs004 :
    row061_layer004_block004.all (fun I => row061_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_chunks_eq : row061_layer004_chunks.flatten = row061_layer004_intervals := by
  rfl

theorem row061_layer004_pairs : pairCoverCheck row061_layer004_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer004_chunks_eq
  intro block hblock
  simp only [row061_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row061_layer004_pairs000
  · exact row061_layer004_pairs001
  · exact row061_layer004_pairs002
  · exact row061_layer004_pairs003
  · exact row061_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer004_checked :
    coverLayerCheck row061.height row061.goods { lower := 58560, upper := 117120, M := 17 } = true := by
  exact coverLayerCheck_of_parts row061_layer004_arithmetic row061_layer004_enumeration row061_bounds_eq row061_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer005_intervals : List ColouredInterval :=
  [(2, 122880, 122940), (2, 131072, 131132), (2, 147456, 147516), (2, 163840, 163900), (2, 180224, 180284), (2, 196608, 196668), (2, 212992, 213052), (2, 229376, 229436), (2, 131072, 131132), (2, 163840, 163900), (2, 196608, 196668), (2, 229376, 229436), (2, 131072, 131132), (2, 196608, 196668), (2, 131072, 131132), (3, 118098, 118158), (3, 137781, 137841), (3, 157464, 157524), (3, 177147, 177207), (3, 196830, 196890), (3, 216513, 216573), (3, 118098, 118158), (3, 177147, 177207), (3, 177147, 177207), (5, 125000, 125060), (5, 140625, 140685), (5, 156250, 156310), (5, 171875, 171935), (5, 187500, 187560), (5, 203125, 203185), (5, 218750, 218810), (5, 156250, 156310), (7, 117649, 117709), (7, 134456, 134516), (7, 151263, 151323), (7, 168070, 168130), (7, 184877, 184937), (7, 201684, 201744), (7, 218491, 218551), (7, 117649, 117709), (11, 117128, 117188), (11, 131769, 131829), (11, 146410, 146470), (11, 161051, 161111), (11, 175692, 175752), (11, 190333, 190393), (11, 204974, 205034), (11, 219615, 219675), (11, 161051, 161111), (13, 142805, 142865), (13, 171366, 171426), (13, 199927, 199987), (13, 228488, 228548), (17, 167042, 167102), (19, 130321, 130381), (23, 121670, 121730), (23, 133837, 133897), (23, 146004, 146064), (23, 158171, 158231), (23, 170338, 170398), (23, 182505, 182565), (29, 121945, 122005), (29, 146334, 146394), (29, 170723, 170783), (29, 195112, 195172), (29, 219501, 219561), (31, 119164, 119224), (31, 148955, 149015), (31, 178746, 178806), (31, 208537, 208597), (37, 151959, 152019), (37, 202612, 202672), (41, 137842, 137902), (41, 206763, 206823), (43, 159014, 159074), (47, 207646, 207706), (53, 148877, 148937), (59, 205379, 205439)]

def row061_layer005_block000 : List ColouredInterval :=
  [(2, 122880, 122940), (2, 131072, 131132), (2, 147456, 147516), (2, 163840, 163900), (2, 180224, 180284), (2, 196608, 196668), (2, 212992, 213052), (2, 229376, 229436), (2, 131072, 131132), (2, 163840, 163900), (2, 196608, 196668), (2, 229376, 229436), (2, 131072, 131132), (2, 196608, 196668), (2, 131072, 131132), (3, 118098, 118158)]

def row061_layer005_block001 : List ColouredInterval :=
  [(3, 137781, 137841), (3, 157464, 157524), (3, 177147, 177207), (3, 196830, 196890), (3, 216513, 216573), (3, 118098, 118158), (3, 177147, 177207), (3, 177147, 177207), (5, 125000, 125060), (5, 140625, 140685), (5, 156250, 156310), (5, 171875, 171935), (5, 187500, 187560), (5, 203125, 203185), (5, 218750, 218810), (5, 156250, 156310)]

def row061_layer005_block002 : List ColouredInterval :=
  [(7, 117649, 117709), (7, 134456, 134516), (7, 151263, 151323), (7, 168070, 168130), (7, 184877, 184937), (7, 201684, 201744), (7, 218491, 218551), (7, 117649, 117709), (11, 117128, 117188), (11, 131769, 131829), (11, 146410, 146470), (11, 161051, 161111), (11, 175692, 175752), (11, 190333, 190393), (11, 204974, 205034), (11, 219615, 219675)]

def row061_layer005_block003 : List ColouredInterval :=
  [(11, 161051, 161111), (13, 142805, 142865), (13, 171366, 171426), (13, 199927, 199987), (13, 228488, 228548), (17, 167042, 167102), (19, 130321, 130381), (23, 121670, 121730), (23, 133837, 133897), (23, 146004, 146064), (23, 158171, 158231), (23, 170338, 170398), (23, 182505, 182565), (29, 121945, 122005), (29, 146334, 146394), (29, 170723, 170783)]

def row061_layer005_block004 : List ColouredInterval :=
  [(29, 195112, 195172), (29, 219501, 219561), (31, 119164, 119224), (31, 148955, 149015), (31, 178746, 178806), (31, 208537, 208597), (37, 151959, 152019), (37, 202612, 202672), (41, 137842, 137902), (41, 206763, 206823), (43, 159014, 159074), (47, 207646, 207706), (53, 148877, 148937), (59, 205379, 205439)]

def row061_layer005_chunks : List (List ColouredInterval) :=
  [row061_layer005_block000, row061_layer005_block001, row061_layer005_block002, row061_layer005_block003, row061_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_arithmetic : LayerArithmeticValid row061.height { lower := 117120, upper := 234240, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_enumeration :
    activePowerIntervalList 61 15 117120 234240 = row061_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_pairs000 :
    row061_layer005_block000.all (fun I => row061_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_pairs001 :
    row061_layer005_block001.all (fun I => row061_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_pairs002 :
    row061_layer005_block002.all (fun I => row061_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_pairs003 :
    row061_layer005_block003.all (fun I => row061_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_pairs004 :
    row061_layer005_block004.all (fun I => row061_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_chunks_eq : row061_layer005_chunks.flatten = row061_layer005_intervals := by
  rfl

theorem row061_layer005_pairs : pairCoverCheck row061_layer005_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer005_chunks_eq
  intro block hblock
  simp only [row061_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row061_layer005_pairs000
  · exact row061_layer005_pairs001
  · exact row061_layer005_pairs002
  · exact row061_layer005_pairs003
  · exact row061_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer005_checked :
    coverLayerCheck row061.height row061.goods { lower := 117120, upper := 234240, M := 15 } = true := by
  exact coverLayerCheck_of_parts row061_layer005_arithmetic row061_layer005_enumeration row061_bounds_eq row061_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer006_intervals : List ColouredInterval :=
  [(2, 262144, 262204), (2, 294912, 294972), (2, 327680, 327740), (2, 360448, 360508), (2, 393216, 393276), (2, 425984, 426044), (2, 262144, 262204), (2, 327680, 327740), (2, 393216, 393276), (2, 458752, 458812), (2, 262144, 262204), (2, 393216, 393276), (2, 262144, 262204), (3, 236196, 236256), (3, 255879, 255939), (3, 236196, 236256), (3, 295245, 295305), (3, 354294, 354354), (3, 413343, 413403), (3, 354294, 354354), (5, 234375, 234435), (5, 312500, 312560), (5, 390625, 390685), (5, 390625, 390685), (7, 235298, 235358), (7, 352947, 353007), (11, 322102, 322162), (13, 257049, 257109), (13, 285610, 285670), (13, 314171, 314231), (13, 342732, 342792), (13, 371293, 371353), (13, 371293, 371353), (17, 250563, 250623), (17, 334084, 334144), (17, 417605, 417665), (19, 260642, 260702), (19, 390963, 391023), (23, 279841, 279901), (29, 243890, 243950), (29, 268279, 268339), (29, 292668, 292728), (29, 317057, 317117), (31, 238328, 238388), (31, 268119, 268179), (31, 297910, 297970), (31, 327701, 327761), (31, 357492, 357552), (31, 387283, 387343), (37, 253265, 253325), (37, 303918, 303978), (37, 354571, 354631), (37, 405224, 405284), (37, 455877, 455937), (41, 275684, 275744), (41, 344605, 344665), (41, 413526, 413586), (43, 238521, 238581), (43, 318028, 318088), (43, 397535, 397595), (47, 311469, 311529), (47, 415292, 415352), (53, 297754, 297814), (53, 446631, 446691), (59, 410758, 410818)]

def row061_layer006_block000 : List ColouredInterval :=
  [(2, 262144, 262204), (2, 294912, 294972), (2, 327680, 327740), (2, 360448, 360508), (2, 393216, 393276), (2, 425984, 426044), (2, 262144, 262204), (2, 327680, 327740), (2, 393216, 393276), (2, 458752, 458812), (2, 262144, 262204), (2, 393216, 393276), (2, 262144, 262204), (3, 236196, 236256), (3, 255879, 255939), (3, 236196, 236256)]

def row061_layer006_block001 : List ColouredInterval :=
  [(3, 295245, 295305), (3, 354294, 354354), (3, 413343, 413403), (3, 354294, 354354), (5, 234375, 234435), (5, 312500, 312560), (5, 390625, 390685), (5, 390625, 390685), (7, 235298, 235358), (7, 352947, 353007), (11, 322102, 322162), (13, 257049, 257109), (13, 285610, 285670), (13, 314171, 314231), (13, 342732, 342792), (13, 371293, 371353)]

def row061_layer006_block002 : List ColouredInterval :=
  [(13, 371293, 371353), (17, 250563, 250623), (17, 334084, 334144), (17, 417605, 417665), (19, 260642, 260702), (19, 390963, 391023), (23, 279841, 279901), (29, 243890, 243950), (29, 268279, 268339), (29, 292668, 292728), (29, 317057, 317117), (31, 238328, 238388), (31, 268119, 268179), (31, 297910, 297970), (31, 327701, 327761), (31, 357492, 357552)]

def row061_layer006_block003 : List ColouredInterval :=
  [(31, 387283, 387343), (37, 253265, 253325), (37, 303918, 303978), (37, 354571, 354631), (37, 405224, 405284), (37, 455877, 455937), (41, 275684, 275744), (41, 344605, 344665), (41, 413526, 413586), (43, 238521, 238581), (43, 318028, 318088), (43, 397535, 397595), (47, 311469, 311529), (47, 415292, 415352), (53, 297754, 297814), (53, 446631, 446691)]

def row061_layer006_block004 : List ColouredInterval :=
  [(59, 410758, 410818)]

def row061_layer006_chunks : List (List ColouredInterval) :=
  [row061_layer006_block000, row061_layer006_block001, row061_layer006_block002, row061_layer006_block003, row061_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_arithmetic : LayerArithmeticValid row061.height { lower := 234240, upper := 468480, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_enumeration :
    activePowerIntervalList 61 13 234240 468480 = row061_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_pairs000 :
    row061_layer006_block000.all (fun I => row061_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_pairs001 :
    row061_layer006_block001.all (fun I => row061_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_pairs002 :
    row061_layer006_block002.all (fun I => row061_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_pairs003 :
    row061_layer006_block003.all (fun I => row061_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_pairs004 :
    row061_layer006_block004.all (fun I => row061_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_chunks_eq : row061_layer006_chunks.flatten = row061_layer006_intervals := by
  rfl

theorem row061_layer006_pairs : pairCoverCheck row061_layer006_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer006_chunks_eq
  intro block hblock
  simp only [row061_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row061_layer006_pairs000
  · exact row061_layer006_pairs001
  · exact row061_layer006_pairs002
  · exact row061_layer006_pairs003
  · exact row061_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer006_checked :
    coverLayerCheck row061.height row061.goods { lower := 234240, upper := 468480, M := 13 } = true := by
  exact coverLayerCheck_of_parts row061_layer006_arithmetic row061_layer006_enumeration row061_bounds_eq row061_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row061_layer007_intervals : List ColouredInterval :=
  [(2, 524288, 524348), (2, 589824, 589884), (2, 655360, 655420), (2, 720896, 720956), (2, 786432, 786492), (2, 524288, 524348), (2, 655360, 655420), (2, 786432, 786492), (2, 917504, 917564), (2, 524288, 524348), (2, 786432, 786492), (2, 524288, 524348), (3, 472392, 472452), (3, 531441, 531501), (3, 590490, 590550), (3, 649539, 649599), (3, 708588, 708648), (3, 531441, 531501), (3, 708588, 708648), (3, 885735, 885795), (3, 531441, 531501), (5, 468750, 468810), (5, 546875, 546935), (5, 625000, 625060), (5, 703125, 703185), (5, 781250, 781310), (5, 859375, 859435), (5, 781250, 781310), (7, 470596, 470656), (7, 588245, 588305), (7, 705894, 705954), (7, 823543, 823603), (7, 823543, 823603), (11, 483153, 483213), (11, 644204, 644264), (11, 805255, 805315), (13, 742586, 742646), (17, 501126, 501186), (17, 584647, 584707), (17, 668168, 668228), (17, 751689, 751749), (17, 835210, 835270), (17, 918731, 918791), (19, 521284, 521344), (19, 651605, 651665), (19, 781926, 781986), (19, 912247, 912307), (23, 559682, 559742), (23, 839523, 839583), (29, 707281, 707341), (31, 923521, 923581), (37, 506530, 506590), (37, 557183, 557243), (37, 607836, 607896), (41, 482447, 482507), (41, 551368, 551428), (41, 620289, 620349), (41, 689210, 689270), (41, 758131, 758191), (41, 827052, 827112), (43, 477042, 477102), (43, 556549, 556609), (43, 636056, 636116), (43, 715563, 715623), (43, 795070, 795130), (43, 874577, 874637), (47, 519115, 519175), (47, 622938, 622998), (47, 726761, 726821), (47, 830584, 830644), (47, 934407, 934467), (53, 595508, 595568), (53, 744385, 744445), (53, 893262, 893322), (59, 616137, 616197), (59, 821516, 821576)]

def row061_layer007_block000 : List ColouredInterval :=
  [(2, 524288, 524348), (2, 589824, 589884), (2, 655360, 655420), (2, 720896, 720956), (2, 786432, 786492), (2, 524288, 524348), (2, 655360, 655420), (2, 786432, 786492), (2, 917504, 917564), (2, 524288, 524348), (2, 786432, 786492), (2, 524288, 524348), (3, 472392, 472452), (3, 531441, 531501), (3, 590490, 590550), (3, 649539, 649599)]

def row061_layer007_block001 : List ColouredInterval :=
  [(3, 708588, 708648), (3, 531441, 531501), (3, 708588, 708648), (3, 885735, 885795), (3, 531441, 531501), (5, 468750, 468810), (5, 546875, 546935), (5, 625000, 625060), (5, 703125, 703185), (5, 781250, 781310), (5, 859375, 859435), (5, 781250, 781310), (7, 470596, 470656), (7, 588245, 588305), (7, 705894, 705954), (7, 823543, 823603)]

def row061_layer007_block002 : List ColouredInterval :=
  [(7, 823543, 823603), (11, 483153, 483213), (11, 644204, 644264), (11, 805255, 805315), (13, 742586, 742646), (17, 501126, 501186), (17, 584647, 584707), (17, 668168, 668228), (17, 751689, 751749), (17, 835210, 835270), (17, 918731, 918791), (19, 521284, 521344), (19, 651605, 651665), (19, 781926, 781986), (19, 912247, 912307), (23, 559682, 559742)]

def row061_layer007_block003 : List ColouredInterval :=
  [(23, 839523, 839583), (29, 707281, 707341), (31, 923521, 923581), (37, 506530, 506590), (37, 557183, 557243), (37, 607836, 607896), (41, 482447, 482507), (41, 551368, 551428), (41, 620289, 620349), (41, 689210, 689270), (41, 758131, 758191), (41, 827052, 827112), (43, 477042, 477102), (43, 556549, 556609), (43, 636056, 636116), (43, 715563, 715623)]

def row061_layer007_block004 : List ColouredInterval :=
  [(43, 795070, 795130), (43, 874577, 874637), (47, 519115, 519175), (47, 622938, 622998), (47, 726761, 726821), (47, 830584, 830644), (47, 934407, 934467), (53, 595508, 595568), (53, 744385, 744445), (53, 893262, 893322), (59, 616137, 616197), (59, 821516, 821576)]

def row061_layer007_chunks : List (List ColouredInterval) :=
  [row061_layer007_block000, row061_layer007_block001, row061_layer007_block002, row061_layer007_block003, row061_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_arithmetic : LayerArithmeticValid row061.height { lower := 468480, upper := 936960, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_enumeration :
    activePowerIntervalList 61 12 468480 936960 = row061_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_pairs000 :
    row061_layer007_block000.all (fun I => row061_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_pairs001 :
    row061_layer007_block001.all (fun I => row061_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_pairs002 :
    row061_layer007_block002.all (fun I => row061_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_pairs003 :
    row061_layer007_block003.all (fun I => row061_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_pairs004 :
    row061_layer007_block004.all (fun I => row061_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row061_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_chunks_eq : row061_layer007_chunks.flatten = row061_layer007_intervals := by
  rfl

theorem row061_layer007_pairs : pairCoverCheck row061_layer007_intervals row061_bounds = true := by
  apply pairCoverCheck_of_chunks row061_layer007_chunks_eq
  intro block hblock
  simp only [row061_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row061_layer007_pairs000
  · exact row061_layer007_pairs001
  · exact row061_layer007_pairs002
  · exact row061_layer007_pairs003
  · exact row061_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer007_checked :
    coverLayerCheck row061.height row061.goods { lower := 468480, upper := 936960, M := 12 } = true := by
  exact coverLayerCheck_of_parts row061_layer007_arithmetic row061_layer007_enumeration row061_bounds_eq row061_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer008_checked :
    coverLayerCheck row061.height row061.goods { lower := 936960, upper := 1873920, M := 11 } = true := by
  decide +kernel

theorem row061_layer009_checked :
    coverLayerCheck row061.height row061.goods { lower := 1873920, upper := 3747840, M := 9 } = true := by
  decide +kernel

theorem row061_layer010_checked :
    coverLayerCheck row061.height row061.goods { lower := 3747840, upper := 7495680, M := 8 } = true := by
  decide +kernel

theorem row061_layer011_checked :
    coverLayerCheck row061.height row061.goods { lower := 7495680, upper := 14991360, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer012_checked :
    coverLayerCheck row061.height row061.goods { lower := 14991360, upper := 29982720, M := 6 } = true := by
  decide +kernel

theorem row061_layer013_checked :
    coverLayerCheck row061.height row061.goods { lower := 29982720, upper := 59965440, M := 6 } = true := by
  decide +kernel

theorem row061_layer014_checked :
    coverLayerCheck row061.height row061.goods { lower := 59965440, upper := 119930880, M := 5 } = true := by
  decide +kernel

theorem row061_layer015_checked :
    coverLayerCheck row061.height row061.goods { lower := 119930880, upper := 239861760, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer016_checked :
    coverLayerCheck row061.height row061.goods { lower := 239861760, upper := 479723520, M := 4 } = true := by
  decide +kernel

theorem row061_layer017_checked :
    coverLayerCheck row061.height row061.goods { lower := 479723520, upper := 959447040, M := 4 } = true := by
  decide +kernel

theorem row061_layer018_checked :
    coverLayerCheck row061.height row061.goods { lower := 959447040, upper := 1918894080, M := 3 } = true := by
  decide +kernel

theorem row061_layer019_checked :
    coverLayerCheck row061.height row061.goods { lower := 1918894080, upper := 3837788160, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer020_checked :
    coverLayerCheck row061.height row061.goods { lower := 3837788160, upper := 7675576320, M := 3 } = true := by
  decide +kernel

theorem row061_layer021_checked :
    coverLayerCheck row061.height row061.goods { lower := 7675576320, upper := 15351152640, M := 2 } = true := by
  decide +kernel

theorem row061_layer022_checked :
    coverLayerCheck row061.height row061.goods { lower := 15351152640, upper := 30702305280, M := 2 } = true := by
  decide +kernel

theorem row061_layer023_checked :
    coverLayerCheck row061.height row061.goods { lower := 30702305280, upper := 61404610560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer024_checked :
    coverLayerCheck row061.height row061.goods { lower := 61404610560, upper := 122809221120, M := 2 } = true := by
  decide +kernel

theorem row061_layer025_checked :
    coverLayerCheck row061.height row061.goods { lower := 122809221120, upper := 245618442240, M := 2 } = true := by
  decide +kernel

theorem row061_layer026_checked :
    coverLayerCheck row061.height row061.goods { lower := 245618442240, upper := 491236884480, M := 1 } = true := by
  decide +kernel

theorem row061_layer027_checked :
    coverLayerCheck row061.height row061.goods { lower := 491236884480, upper := 982473768960, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layer028_checked :
    coverLayerCheck row061.height row061.goods { lower := 982473768960, upper := 1000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layer028_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_layers_checked :
    row061.layers.all (coverLayerCheck row061.height row061.goods) = true := by
  change row061_layers.all (coverLayerCheck row061.height row061.goods) = true
  simp only [row061_layers, List.all_cons, List.all_nil,
    row061_layer000_checked,
    row061_layer001_checked,
    row061_layer002_checked,
    row061_layer003_checked,
    row061_layer004_checked,
    row061_layer005_checked,
    row061_layer006_checked,
    row061_layer007_checked,
    row061_layer008_checked,
    row061_layer009_checked,
    row061_layer010_checked,
    row061_layer011_checked,
    row061_layer012_checked,
    row061_layer013_checked,
    row061_layer014_checked,
    row061_layer015_checked,
    row061_layer016_checked,
    row061_layer017_checked,
    row061_layer018_checked,
    row061_layer019_checked,
    row061_layer020_checked,
    row061_layer021_checked,
    row061_layer022_checked,
    row061_layer023_checked,
    row061_layer024_checked,
    row061_layer025_checked,
    row061_layer026_checked,
    row061_layer027_checked,
    row061_layer028_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row061_checked : finiteCoverRowCheck row061 = true := by
  simp only [finiteCoverRowCheck, row061_registered, row061_goods_checked,
    row061_small_checked, row061_layerCover_checked, row061_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row061_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i061 :
    ∀ n j : ℕ, 1 ≤ 61 ∧ 61 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 61 ≤ p ∧ p ∣ Nat.choose n 61 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row061_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i061
