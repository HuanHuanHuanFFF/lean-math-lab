import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row065B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_pairs002 :
    row065_layer003_block002.all (fun I => row065_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_pairs003 :
    row065_layer003_block003.all (fun I => row065_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_pairs004 :
    row065_layer003_block004.all (fun I => row065_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_pairs005 :
    row065_layer003_block005.all (fun I => row065_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_chunks_eq : row065_layer003_chunks.flatten = row065_layer003_intervals := by
  rfl

theorem row065_layer003_pairs : pairCoverCheck row065_layer003_intervals row065_bounds = true := by
  apply pairCoverCheck_of_chunks row065_layer003_chunks_eq
  intro block hblock
  simp only [row065_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row065_layer003_pairs000
  · exact row065_layer003_pairs001
  · exact row065_layer003_pairs002
  · exact row065_layer003_pairs003
  · exact row065_layer003_pairs004
  · exact row065_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer003_checked :
    coverLayerCheck row065.height row065.goods { lower := 33280, upper := 66560, M := 19 } = true := by
  exact coverLayerCheck_of_parts row065_layer003_arithmetic row065_layer003_enumeration row065_bounds_eq row065_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row065_layer004_intervals : List ColouredInterval :=
  [(2, 69632, 69696), (2, 73728, 73792), (2, 81920, 81984), (2, 90112, 90176), (2, 98304, 98368), (2, 106496, 106560), (2, 114688, 114752), (2, 122880, 122944), (2, 131072, 131136), (2, 81920, 81984), (2, 98304, 98368), (2, 114688, 114752), (2, 131072, 131136), (2, 98304, 98368), (2, 131072, 131136), (2, 131072, 131136), (2, 131072, 131136), (3, 72171, 72235), (3, 78732, 78796), (3, 85293, 85357), (3, 91854, 91918), (3, 98415, 98479), (3, 104976, 105040), (3, 111537, 111601), (3, 78732, 78796), (3, 98415, 98479), (3, 118098, 118162), (3, 118098, 118162), (5, 78125, 78189), (7, 67228, 67292), (7, 84035, 84099), (7, 100842, 100906), (7, 117649, 117713), (7, 117649, 117713), (11, 73205, 73269), (11, 87846, 87910), (11, 102487, 102551), (11, 117128, 117192), (11, 131769, 131833), (17, 68782, 68846), (17, 73695, 73759), (17, 78608, 78672), (17, 83521, 83585), (17, 83521, 83585), (19, 68590, 68654), (19, 75449, 75513), (19, 82308, 82372), (19, 89167, 89231), (19, 96026, 96090), (19, 102885, 102949), (19, 109744, 109808), (19, 116603, 116667), (19, 130321, 130385), (23, 73002, 73066), (23, 85169, 85233), (23, 97336, 97400), (23, 109503, 109567), (23, 121670, 121734), (29, 73167, 73231), (29, 97556, 97620), (29, 121945, 122009), (31, 89373, 89437), (31, 119164, 119228), (37, 101306, 101370), (41, 68921, 68985), (43, 79507, 79571), (47, 103823, 103887)]

def row065_layer004_block000 : List ColouredInterval :=
  [(2, 69632, 69696), (2, 73728, 73792), (2, 81920, 81984), (2, 90112, 90176), (2, 98304, 98368), (2, 106496, 106560), (2, 114688, 114752), (2, 122880, 122944), (2, 131072, 131136), (2, 81920, 81984), (2, 98304, 98368), (2, 114688, 114752), (2, 131072, 131136), (2, 98304, 98368), (2, 131072, 131136), (2, 131072, 131136)]

def row065_layer004_block001 : List ColouredInterval :=
  [(2, 131072, 131136), (3, 72171, 72235), (3, 78732, 78796), (3, 85293, 85357), (3, 91854, 91918), (3, 98415, 98479), (3, 104976, 105040), (3, 111537, 111601), (3, 78732, 78796), (3, 98415, 98479), (3, 118098, 118162), (3, 118098, 118162), (5, 78125, 78189), (7, 67228, 67292), (7, 84035, 84099), (7, 100842, 100906)]

def row065_layer004_block002 : List ColouredInterval :=
  [(7, 117649, 117713), (7, 117649, 117713), (11, 73205, 73269), (11, 87846, 87910), (11, 102487, 102551), (11, 117128, 117192), (11, 131769, 131833), (17, 68782, 68846), (17, 73695, 73759), (17, 78608, 78672), (17, 83521, 83585), (17, 83521, 83585), (19, 68590, 68654), (19, 75449, 75513), (19, 82308, 82372), (19, 89167, 89231)]

def row065_layer004_block003 : List ColouredInterval :=
  [(19, 96026, 96090), (19, 102885, 102949), (19, 109744, 109808), (19, 116603, 116667), (19, 130321, 130385), (23, 73002, 73066), (23, 85169, 85233), (23, 97336, 97400), (23, 109503, 109567), (23, 121670, 121734), (29, 73167, 73231), (29, 97556, 97620), (29, 121945, 122009), (31, 89373, 89437), (31, 119164, 119228), (37, 101306, 101370)]

def row065_layer004_block004 : List ColouredInterval :=
  [(41, 68921, 68985), (43, 79507, 79571), (47, 103823, 103887)]

def row065_layer004_chunks : List (List ColouredInterval) :=
  [row065_layer004_block000, row065_layer004_block001, row065_layer004_block002, row065_layer004_block003, row065_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_arithmetic : LayerArithmeticValid row065.height { lower := 66560, upper := 133120, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_enumeration :
    activePowerIntervalList 65 17 66560 133120 = row065_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_pairs000 :
    row065_layer004_block000.all (fun I => row065_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_pairs001 :
    row065_layer004_block001.all (fun I => row065_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_pairs002 :
    row065_layer004_block002.all (fun I => row065_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_pairs003 :
    row065_layer004_block003.all (fun I => row065_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_pairs004 :
    row065_layer004_block004.all (fun I => row065_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_chunks_eq : row065_layer004_chunks.flatten = row065_layer004_intervals := by
  rfl

theorem row065_layer004_pairs : pairCoverCheck row065_layer004_intervals row065_bounds = true := by
  apply pairCoverCheck_of_chunks row065_layer004_chunks_eq
  intro block hblock
  simp only [row065_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row065_layer004_pairs000
  · exact row065_layer004_pairs001
  · exact row065_layer004_pairs002
  · exact row065_layer004_pairs003
  · exact row065_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer004_checked :
    coverLayerCheck row065.height row065.goods { lower := 66560, upper := 133120, M := 17 } = true := by
  exact coverLayerCheck_of_parts row065_layer004_arithmetic row065_layer004_enumeration row065_bounds_eq row065_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row065_layer005_intervals : List ColouredInterval :=
  [(2, 147456, 147520), (2, 163840, 163904), (2, 180224, 180288), (2, 196608, 196672), (2, 212992, 213056), (2, 229376, 229440), (2, 245760, 245824), (2, 163840, 163904), (2, 196608, 196672), (2, 229376, 229440), (2, 262144, 262208), (2, 196608, 196672), (2, 262144, 262208), (2, 262144, 262208), (2, 262144, 262208), (3, 137781, 137845), (3, 157464, 157528), (3, 177147, 177211), (3, 196830, 196894), (3, 216513, 216577), (3, 236196, 236260), (3, 255879, 255943), (3, 177147, 177211), (3, 236196, 236260), (3, 177147, 177211), (5, 156250, 156314), (5, 234375, 234439), (7, 134456, 134520), (7, 151263, 151327), (7, 168070, 168134), (7, 184877, 184941), (7, 201684, 201748), (7, 218491, 218555), (7, 235298, 235362), (7, 252105, 252169), (7, 235298, 235362), (11, 146410, 146474), (11, 161051, 161115), (11, 175692, 175756), (11, 190333, 190397), (11, 204974, 205038), (11, 219615, 219679), (11, 161051, 161115), (17, 167042, 167106), (17, 250563, 250627), (19, 260642, 260706), (23, 133837, 133901), (23, 146004, 146068), (23, 158171, 158235), (23, 170338, 170402), (23, 182505, 182569), (29, 146334, 146398), (29, 170723, 170787), (29, 195112, 195176), (29, 219501, 219565), (29, 243890, 243954), (31, 148955, 149019), (31, 178746, 178810), (31, 208537, 208601), (31, 238328, 238392), (37, 151959, 152023), (37, 202612, 202676), (37, 253265, 253329), (41, 137842, 137906), (41, 206763, 206827), (43, 159014, 159078), (43, 238521, 238585), (47, 207646, 207710), (53, 148877, 148941), (59, 205379, 205443), (61, 226981, 227045)]

def row065_layer005_block000 : List ColouredInterval :=
  [(2, 147456, 147520), (2, 163840, 163904), (2, 180224, 180288), (2, 196608, 196672), (2, 212992, 213056), (2, 229376, 229440), (2, 245760, 245824), (2, 163840, 163904), (2, 196608, 196672), (2, 229376, 229440), (2, 262144, 262208), (2, 196608, 196672), (2, 262144, 262208), (2, 262144, 262208), (2, 262144, 262208), (3, 137781, 137845)]

def row065_layer005_block001 : List ColouredInterval :=
  [(3, 157464, 157528), (3, 177147, 177211), (3, 196830, 196894), (3, 216513, 216577), (3, 236196, 236260), (3, 255879, 255943), (3, 177147, 177211), (3, 236196, 236260), (3, 177147, 177211), (5, 156250, 156314), (5, 234375, 234439), (7, 134456, 134520), (7, 151263, 151327), (7, 168070, 168134), (7, 184877, 184941), (7, 201684, 201748)]

def row065_layer005_block002 : List ColouredInterval :=
  [(7, 218491, 218555), (7, 235298, 235362), (7, 252105, 252169), (7, 235298, 235362), (11, 146410, 146474), (11, 161051, 161115), (11, 175692, 175756), (11, 190333, 190397), (11, 204974, 205038), (11, 219615, 219679), (11, 161051, 161115), (17, 167042, 167106), (17, 250563, 250627), (19, 260642, 260706), (23, 133837, 133901), (23, 146004, 146068)]

def row065_layer005_block003 : List ColouredInterval :=
  [(23, 158171, 158235), (23, 170338, 170402), (23, 182505, 182569), (29, 146334, 146398), (29, 170723, 170787), (29, 195112, 195176), (29, 219501, 219565), (29, 243890, 243954), (31, 148955, 149019), (31, 178746, 178810), (31, 208537, 208601), (31, 238328, 238392), (37, 151959, 152023), (37, 202612, 202676), (37, 253265, 253329), (41, 137842, 137906)]

def row065_layer005_block004 : List ColouredInterval :=
  [(41, 206763, 206827), (43, 159014, 159078), (43, 238521, 238585), (47, 207646, 207710), (53, 148877, 148941), (59, 205379, 205443), (61, 226981, 227045)]

def row065_layer005_chunks : List (List ColouredInterval) :=
  [row065_layer005_block000, row065_layer005_block001, row065_layer005_block002, row065_layer005_block003, row065_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_arithmetic : LayerArithmeticValid row065.height { lower := 133120, upper := 266240, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_enumeration :
    activePowerIntervalList 65 15 133120 266240 = row065_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_pairs000 :
    row065_layer005_block000.all (fun I => row065_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_pairs001 :
    row065_layer005_block001.all (fun I => row065_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_pairs002 :
    row065_layer005_block002.all (fun I => row065_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_pairs003 :
    row065_layer005_block003.all (fun I => row065_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_pairs004 :
    row065_layer005_block004.all (fun I => row065_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row065_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_chunks_eq : row065_layer005_chunks.flatten = row065_layer005_intervals := by
  rfl

theorem row065_layer005_pairs : pairCoverCheck row065_layer005_intervals row065_bounds = true := by
  apply pairCoverCheck_of_chunks row065_layer005_chunks_eq
  intro block hblock
  simp only [row065_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row065_layer005_pairs000
  · exact row065_layer005_pairs001
  · exact row065_layer005_pairs002
  · exact row065_layer005_pairs003
  · exact row065_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer005_checked :
    coverLayerCheck row065.height row065.goods { lower := 133120, upper := 266240, M := 15 } = true := by
  exact coverLayerCheck_of_parts row065_layer005_arithmetic row065_layer005_enumeration row065_bounds_eq row065_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer006_checked :
    coverLayerCheck row065.height row065.goods { lower := 266240, upper := 532480, M := 13 } = true := by
  decide +kernel

theorem row065_layer007_checked :
    coverLayerCheck row065.height row065.goods { lower := 532480, upper := 1064960, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer008_checked :
    coverLayerCheck row065.height row065.goods { lower := 1064960, upper := 2129920, M := 10 } = true := by
  decide +kernel

theorem row065_layer009_checked :
    coverLayerCheck row065.height row065.goods { lower := 2129920, upper := 4259840, M := 9 } = true := by
  decide +kernel

theorem row065_layer010_checked :
    coverLayerCheck row065.height row065.goods { lower := 4259840, upper := 8519680, M := 8 } = true := by
  decide +kernel

theorem row065_layer011_checked :
    coverLayerCheck row065.height row065.goods { lower := 8519680, upper := 17039360, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer012_checked :
    coverLayerCheck row065.height row065.goods { lower := 17039360, upper := 34078720, M := 6 } = true := by
  decide +kernel

theorem row065_layer013_checked :
    coverLayerCheck row065.height row065.goods { lower := 34078720, upper := 68157440, M := 5 } = true := by
  decide +kernel

theorem row065_layer014_checked :
    coverLayerCheck row065.height row065.goods { lower := 68157440, upper := 136314880, M := 5 } = true := by
  decide +kernel

theorem row065_layer015_checked :
    coverLayerCheck row065.height row065.goods { lower := 136314880, upper := 272629760, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer016_checked :
    coverLayerCheck row065.height row065.goods { lower := 272629760, upper := 545259520, M := 4 } = true := by
  decide +kernel

theorem row065_layer017_checked :
    coverLayerCheck row065.height row065.goods { lower := 545259520, upper := 1090519040, M := 3 } = true := by
  decide +kernel

theorem row065_layer018_checked :
    coverLayerCheck row065.height row065.goods { lower := 1090519040, upper := 2181038080, M := 3 } = true := by
  decide +kernel

theorem row065_layer019_checked :
    coverLayerCheck row065.height row065.goods { lower := 2181038080, upper := 4362076160, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer020_checked :
    coverLayerCheck row065.height row065.goods { lower := 4362076160, upper := 8724152320, M := 2 } = true := by
  decide +kernel

theorem row065_layer021_checked :
    coverLayerCheck row065.height row065.goods { lower := 8724152320, upper := 17448304640, M := 2 } = true := by
  decide +kernel

theorem row065_layer022_checked :
    coverLayerCheck row065.height row065.goods { lower := 17448304640, upper := 34896609280, M := 2 } = true := by
  decide +kernel

theorem row065_layer023_checked :
    coverLayerCheck row065.height row065.goods { lower := 34896609280, upper := 69793218560, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layer024_checked :
    coverLayerCheck row065.height row065.goods { lower := 69793218560, upper := 100000000000, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layer024_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_layers_checked :
    row065.layers.all (coverLayerCheck row065.height row065.goods) = true := by
  change row065_layers.all (coverLayerCheck row065.height row065.goods) = true
  simp only [row065_layers, List.all_cons, List.all_nil,
    row065_layer000_checked,
    row065_layer001_checked,
    row065_layer002_checked,
    row065_layer003_checked,
    row065_layer004_checked,
    row065_layer005_checked,
    row065_layer006_checked,
    row065_layer007_checked,
    row065_layer008_checked,
    row065_layer009_checked,
    row065_layer010_checked,
    row065_layer011_checked,
    row065_layer012_checked,
    row065_layer013_checked,
    row065_layer014_checked,
    row065_layer015_checked,
    row065_layer016_checked,
    row065_layer017_checked,
    row065_layer018_checked,
    row065_layer019_checked,
    row065_layer020_checked,
    row065_layer021_checked,
    row065_layer022_checked,
    row065_layer023_checked,
    row065_layer024_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row065_checked : finiteCoverRowCheck row065 = true := by
  simp only [finiteCoverRowCheck, row065_registered, row065_goods_checked,
    row065_small_checked, row065_layerCover_checked, row065_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row065_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i065 :
    ∀ n j : ℕ, 1 ≤ 65 ∧ 65 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 65 ≤ p ∧ p ∣ Nat.choose n 65 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row065_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i065
