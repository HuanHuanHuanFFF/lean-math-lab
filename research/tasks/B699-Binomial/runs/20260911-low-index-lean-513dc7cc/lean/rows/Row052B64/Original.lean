import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row052B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_pairs004 :
    row052_layer003_block004.all (fun I => row052_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_pairs005 :
    row052_layer003_block005.all (fun I => row052_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_pairs006 :
    row052_layer003_block006.all (fun I => row052_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_chunks_eq : row052_layer003_chunks.flatten = row052_layer003_intervals := by
  rfl

theorem row052_layer003_pairs : pairCoverCheck row052_layer003_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer003_chunks_eq
  intro block hblock
  simp only [row052_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row052_layer003_pairs000
  · exact row052_layer003_pairs001
  · exact row052_layer003_pairs002
  · exact row052_layer003_pairs003
  · exact row052_layer003_pairs004
  · exact row052_layer003_pairs005
  · exact row052_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer003_checked :
    coverLayerCheck row052.height row052.goods { lower := 21216, upper := 42432, M := 24 } = true := by
  exact coverLayerCheck_of_parts row052_layer003_arithmetic row052_layer003_enumeration row052_bounds_eq row052_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer004_intervals : List ColouredInterval :=
  [(2, 49152, 49203), (2, 65536, 65587), (2, 81920, 81971), (2, 65536, 65587), (2, 65536, 65587), (3, 43740, 43791), (3, 45927, 45978), (3, 48114, 48165), (3, 45927, 45978), (3, 52488, 52539), (3, 59049, 59100), (3, 65610, 65661), (3, 72171, 72222), (3, 78732, 78783), (3, 59049, 59100), (3, 78732, 78783), (3, 59049, 59100), (5, 43750, 43801), (5, 46875, 46926), (5, 50000, 50051), (5, 53125, 53176), (5, 56250, 56301), (5, 59375, 59426), (5, 62500, 62551), (5, 65625, 65676), (5, 68750, 68801), (5, 46875, 46926), (5, 62500, 62551), (5, 78125, 78176), (5, 78125, 78176), (7, 43218, 43269), (7, 45619, 45670), (7, 48020, 48071), (7, 50421, 50472), (7, 52822, 52873), (7, 50421, 50472), (7, 67228, 67279), (7, 84035, 84086), (11, 43923, 43974), (11, 58564, 58615), (11, 73205, 73256), (17, 44217, 44268), (17, 49130, 49181), (17, 54043, 54094), (17, 58956, 59007), (17, 63869, 63920), (17, 68782, 68833), (17, 73695, 73746), (17, 78608, 78659), (17, 83521, 83572), (17, 83521, 83572), (19, 48013, 48064), (19, 54872, 54923), (19, 61731, 61782), (19, 68590, 68641), (19, 75449, 75500), (19, 82308, 82359), (23, 48668, 48719), (23, 60835, 60886), (23, 73002, 73053), (29, 48778, 48829), (29, 73167, 73218), (31, 59582, 59633), (37, 50653, 50704), (41, 68921, 68972), (43, 79507, 79558), (47, 44180, 44231), (47, 46389, 46440), (47, 48598, 48649)]

def row052_layer004_block000 : List ColouredInterval :=
  [(2, 49152, 49203), (2, 65536, 65587), (2, 81920, 81971), (2, 65536, 65587), (2, 65536, 65587), (3, 43740, 43791), (3, 45927, 45978), (3, 48114, 48165), (3, 45927, 45978), (3, 52488, 52539), (3, 59049, 59100), (3, 65610, 65661), (3, 72171, 72222), (3, 78732, 78783), (3, 59049, 59100), (3, 78732, 78783)]

def row052_layer004_block001 : List ColouredInterval :=
  [(3, 59049, 59100), (5, 43750, 43801), (5, 46875, 46926), (5, 50000, 50051), (5, 53125, 53176), (5, 56250, 56301), (5, 59375, 59426), (5, 62500, 62551), (5, 65625, 65676), (5, 68750, 68801), (5, 46875, 46926), (5, 62500, 62551), (5, 78125, 78176), (5, 78125, 78176), (7, 43218, 43269), (7, 45619, 45670)]

def row052_layer004_block002 : List ColouredInterval :=
  [(7, 48020, 48071), (7, 50421, 50472), (7, 52822, 52873), (7, 50421, 50472), (7, 67228, 67279), (7, 84035, 84086), (11, 43923, 43974), (11, 58564, 58615), (11, 73205, 73256), (17, 44217, 44268), (17, 49130, 49181), (17, 54043, 54094), (17, 58956, 59007), (17, 63869, 63920), (17, 68782, 68833), (17, 73695, 73746)]

def row052_layer004_block003 : List ColouredInterval :=
  [(17, 78608, 78659), (17, 83521, 83572), (17, 83521, 83572), (19, 48013, 48064), (19, 54872, 54923), (19, 61731, 61782), (19, 68590, 68641), (19, 75449, 75500), (19, 82308, 82359), (23, 48668, 48719), (23, 60835, 60886), (23, 73002, 73053), (29, 48778, 48829), (29, 73167, 73218), (31, 59582, 59633), (37, 50653, 50704)]

def row052_layer004_block004 : List ColouredInterval :=
  [(41, 68921, 68972), (43, 79507, 79558), (47, 44180, 44231), (47, 46389, 46440), (47, 48598, 48649)]

def row052_layer004_chunks : List (List ColouredInterval) :=
  [row052_layer004_block000, row052_layer004_block001, row052_layer004_block002, row052_layer004_block003, row052_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_arithmetic : LayerArithmeticValid row052.height { lower := 42432, upper := 84864, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_enumeration :
    activePowerIntervalList 52 22 42432 84864 = row052_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_pairs000 :
    row052_layer004_block000.all (fun I => row052_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_pairs001 :
    row052_layer004_block001.all (fun I => row052_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_pairs002 :
    row052_layer004_block002.all (fun I => row052_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_pairs003 :
    row052_layer004_block003.all (fun I => row052_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_pairs004 :
    row052_layer004_block004.all (fun I => row052_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_chunks_eq : row052_layer004_chunks.flatten = row052_layer004_intervals := by
  rfl

theorem row052_layer004_pairs : pairCoverCheck row052_layer004_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer004_chunks_eq
  intro block hblock
  simp only [row052_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row052_layer004_pairs000
  · exact row052_layer004_pairs001
  · exact row052_layer004_pairs002
  · exact row052_layer004_pairs003
  · exact row052_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer004_checked :
    coverLayerCheck row052.height row052.goods { lower := 42432, upper := 84864, M := 22 } = true := by
  exact coverLayerCheck_of_parts row052_layer004_arithmetic row052_layer004_enumeration row052_bounds_eq row052_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer005_intervals : List ColouredInterval :=
  [(2, 98304, 98355), (2, 131072, 131123), (2, 163840, 163891), (2, 131072, 131123), (2, 131072, 131123), (3, 85293, 85344), (3, 91854, 91905), (3, 98415, 98466), (3, 104976, 105027), (3, 111537, 111588), (3, 118098, 118149), (3, 124659, 124710), (3, 131220, 131271), (3, 98415, 98466), (3, 118098, 118149), (3, 137781, 137832), (3, 157464, 157515), (3, 118098, 118149), (5, 93750, 93801), (5, 109375, 109426), (5, 125000, 125051), (5, 140625, 140676), (5, 156250, 156301), (5, 156250, 156301), (7, 100842, 100893), (7, 117649, 117700), (7, 134456, 134507), (7, 151263, 151314), (7, 168070, 168121), (7, 117649, 117700), (11, 87846, 87897), (11, 102487, 102538), (11, 117128, 117179), (11, 131769, 131820), (11, 146410, 146461), (11, 161051, 161102), (11, 161051, 161102), (17, 88434, 88485), (17, 93347, 93398), (17, 98260, 98311), (17, 167042, 167093), (19, 89167, 89218), (19, 96026, 96077), (19, 102885, 102936), (19, 109744, 109795), (19, 116603, 116654), (19, 123462, 123513), (19, 130321, 130372), (19, 137180, 137231), (19, 130321, 130372), (23, 85169, 85220), (23, 97336, 97387), (23, 109503, 109554), (23, 121670, 121721), (23, 133837, 133888), (23, 146004, 146055), (23, 158171, 158222), (29, 97556, 97607), (29, 121945, 121996), (29, 146334, 146385), (31, 89373, 89424), (31, 119164, 119215), (31, 148955, 149006), (37, 101306, 101357), (37, 151959, 152010), (41, 137842, 137893), (43, 159014, 159065), (47, 103823, 103874)]

def row052_layer005_block000 : List ColouredInterval :=
  [(2, 98304, 98355), (2, 131072, 131123), (2, 163840, 163891), (2, 131072, 131123), (2, 131072, 131123), (3, 85293, 85344), (3, 91854, 91905), (3, 98415, 98466), (3, 104976, 105027), (3, 111537, 111588), (3, 118098, 118149), (3, 124659, 124710), (3, 131220, 131271), (3, 98415, 98466), (3, 118098, 118149), (3, 137781, 137832)]

def row052_layer005_block001 : List ColouredInterval :=
  [(3, 157464, 157515), (3, 118098, 118149), (5, 93750, 93801), (5, 109375, 109426), (5, 125000, 125051), (5, 140625, 140676), (5, 156250, 156301), (5, 156250, 156301), (7, 100842, 100893), (7, 117649, 117700), (7, 134456, 134507), (7, 151263, 151314), (7, 168070, 168121), (7, 117649, 117700), (11, 87846, 87897), (11, 102487, 102538)]

def row052_layer005_block002 : List ColouredInterval :=
  [(11, 117128, 117179), (11, 131769, 131820), (11, 146410, 146461), (11, 161051, 161102), (11, 161051, 161102), (17, 88434, 88485), (17, 93347, 93398), (17, 98260, 98311), (17, 167042, 167093), (19, 89167, 89218), (19, 96026, 96077), (19, 102885, 102936), (19, 109744, 109795), (19, 116603, 116654), (19, 123462, 123513), (19, 130321, 130372)]

def row052_layer005_block003 : List ColouredInterval :=
  [(19, 137180, 137231), (19, 130321, 130372), (23, 85169, 85220), (23, 97336, 97387), (23, 109503, 109554), (23, 121670, 121721), (23, 133837, 133888), (23, 146004, 146055), (23, 158171, 158222), (29, 97556, 97607), (29, 121945, 121996), (29, 146334, 146385), (31, 89373, 89424), (31, 119164, 119215), (31, 148955, 149006), (37, 101306, 101357)]

def row052_layer005_block004 : List ColouredInterval :=
  [(37, 151959, 152010), (41, 137842, 137893), (43, 159014, 159065), (47, 103823, 103874)]

def row052_layer005_chunks : List (List ColouredInterval) :=
  [row052_layer005_block000, row052_layer005_block001, row052_layer005_block002, row052_layer005_block003, row052_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_arithmetic : LayerArithmeticValid row052.height { lower := 84864, upper := 169728, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_enumeration :
    activePowerIntervalList 52 20 84864 169728 = row052_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_pairs000 :
    row052_layer005_block000.all (fun I => row052_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_pairs001 :
    row052_layer005_block001.all (fun I => row052_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_pairs002 :
    row052_layer005_block002.all (fun I => row052_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_pairs003 :
    row052_layer005_block003.all (fun I => row052_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_pairs004 :
    row052_layer005_block004.all (fun I => row052_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_chunks_eq : row052_layer005_chunks.flatten = row052_layer005_intervals := by
  rfl

theorem row052_layer005_pairs : pairCoverCheck row052_layer005_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer005_chunks_eq
  intro block hblock
  simp only [row052_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row052_layer005_pairs000
  · exact row052_layer005_pairs001
  · exact row052_layer005_pairs002
  · exact row052_layer005_pairs003
  · exact row052_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer005_checked :
    coverLayerCheck row052.height row052.goods { lower := 84864, upper := 169728, M := 20 } = true := by
  exact coverLayerCheck_of_parts row052_layer005_arithmetic row052_layer005_enumeration row052_bounds_eq row052_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer006_intervals : List ColouredInterval :=
  [(2, 196608, 196659), (2, 262144, 262195), (2, 262144, 262195), (2, 262144, 262195), (3, 177147, 177198), (3, 196830, 196881), (3, 216513, 216564), (3, 236196, 236247), (3, 255879, 255930), (3, 275562, 275613), (3, 295245, 295296), (3, 314928, 314979), (3, 334611, 334662), (3, 177147, 177198), (3, 236196, 236247), (3, 295245, 295296), (3, 177147, 177198), (5, 171875, 171926), (5, 187500, 187551), (5, 203125, 203176), (5, 218750, 218801), (5, 234375, 234426), (5, 250000, 250051), (5, 265625, 265676), (5, 281250, 281301), (5, 234375, 234426), (5, 312500, 312551), (7, 184877, 184928), (7, 201684, 201735), (7, 218491, 218542), (7, 235298, 235349), (7, 252105, 252156), (7, 268912, 268963), (7, 285719, 285770), (7, 302526, 302577), (7, 235298, 235349), (11, 175692, 175743), (11, 190333, 190384), (11, 204974, 205025), (11, 219615, 219666), (11, 234256, 234307), (11, 248897, 248948), (11, 263538, 263589), (11, 322102, 322153), (17, 250563, 250614), (17, 334084, 334135), (19, 260642, 260693), (23, 170338, 170389), (23, 182505, 182556), (23, 194672, 194723), (23, 206839, 206890), (23, 219006, 219057), (23, 279841, 279892), (29, 170723, 170774), (29, 195112, 195163), (29, 219501, 219552), (29, 243890, 243941), (29, 268279, 268330), (29, 292668, 292719), (29, 317057, 317108), (31, 178746, 178797), (31, 208537, 208588), (31, 238328, 238379), (31, 268119, 268170), (31, 297910, 297961), (31, 327701, 327752), (37, 202612, 202663), (37, 253265, 253316), (37, 303918, 303969), (41, 206763, 206814), (41, 275684, 275735), (43, 238521, 238572), (43, 318028, 318079), (47, 207646, 207697), (47, 311469, 311520)]

def row052_layer006_block000 : List ColouredInterval :=
  [(2, 196608, 196659), (2, 262144, 262195), (2, 262144, 262195), (2, 262144, 262195), (3, 177147, 177198), (3, 196830, 196881), (3, 216513, 216564), (3, 236196, 236247), (3, 255879, 255930), (3, 275562, 275613), (3, 295245, 295296), (3, 314928, 314979), (3, 334611, 334662), (3, 177147, 177198), (3, 236196, 236247), (3, 295245, 295296)]

def row052_layer006_block001 : List ColouredInterval :=
  [(3, 177147, 177198), (5, 171875, 171926), (5, 187500, 187551), (5, 203125, 203176), (5, 218750, 218801), (5, 234375, 234426), (5, 250000, 250051), (5, 265625, 265676), (5, 281250, 281301), (5, 234375, 234426), (5, 312500, 312551), (7, 184877, 184928), (7, 201684, 201735), (7, 218491, 218542), (7, 235298, 235349), (7, 252105, 252156)]

def row052_layer006_block002 : List ColouredInterval :=
  [(7, 268912, 268963), (7, 285719, 285770), (7, 302526, 302577), (7, 235298, 235349), (11, 175692, 175743), (11, 190333, 190384), (11, 204974, 205025), (11, 219615, 219666), (11, 234256, 234307), (11, 248897, 248948), (11, 263538, 263589), (11, 322102, 322153), (17, 250563, 250614), (17, 334084, 334135), (19, 260642, 260693), (23, 170338, 170389)]

def row052_layer006_block003 : List ColouredInterval :=
  [(23, 182505, 182556), (23, 194672, 194723), (23, 206839, 206890), (23, 219006, 219057), (23, 279841, 279892), (29, 170723, 170774), (29, 195112, 195163), (29, 219501, 219552), (29, 243890, 243941), (29, 268279, 268330), (29, 292668, 292719), (29, 317057, 317108), (31, 178746, 178797), (31, 208537, 208588), (31, 238328, 238379), (31, 268119, 268170)]

def row052_layer006_block004 : List ColouredInterval :=
  [(31, 297910, 297961), (31, 327701, 327752), (37, 202612, 202663), (37, 253265, 253316), (37, 303918, 303969), (41, 206763, 206814), (41, 275684, 275735), (43, 238521, 238572), (43, 318028, 318079), (47, 207646, 207697), (47, 311469, 311520)]

def row052_layer006_chunks : List (List ColouredInterval) :=
  [row052_layer006_block000, row052_layer006_block001, row052_layer006_block002, row052_layer006_block003, row052_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_arithmetic : LayerArithmeticValid row052.height { lower := 169728, upper := 339456, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_enumeration :
    activePowerIntervalList 52 18 169728 339456 = row052_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_pairs000 :
    row052_layer006_block000.all (fun I => row052_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_pairs001 :
    row052_layer006_block001.all (fun I => row052_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_pairs002 :
    row052_layer006_block002.all (fun I => row052_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_pairs003 :
    row052_layer006_block003.all (fun I => row052_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_pairs004 :
    row052_layer006_block004.all (fun I => row052_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_chunks_eq : row052_layer006_chunks.flatten = row052_layer006_intervals := by
  rfl

theorem row052_layer006_pairs : pairCoverCheck row052_layer006_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer006_chunks_eq
  intro block hblock
  simp only [row052_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row052_layer006_pairs000
  · exact row052_layer006_pairs001
  · exact row052_layer006_pairs002
  · exact row052_layer006_pairs003
  · exact row052_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer006_checked :
    coverLayerCheck row052.height row052.goods { lower := 169728, upper := 339456, M := 18 } = true := by
  exact coverLayerCheck_of_parts row052_layer006_arithmetic row052_layer006_enumeration row052_bounds_eq row052_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer007_checked :
    coverLayerCheck row052.height row052.goods { lower := 339456, upper := 678912, M := 16 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row052_layer008_intervals : List ColouredInterval :=
  [(2, 786432, 786483), (2, 1048576, 1048627), (2, 1048576, 1048627), (3, 708588, 708639), (3, 767637, 767688), (3, 826686, 826737), (3, 885735, 885786), (3, 708588, 708639), (3, 885735, 885786), (3, 1062882, 1062933), (3, 1240029, 1240080), (3, 1062882, 1062933), (5, 703125, 703176), (5, 781250, 781301), (5, 859375, 859426), (5, 937500, 937551), (5, 1015625, 1015676), (5, 1093750, 1093801), (5, 1171875, 1171926), (5, 781250, 781301), (5, 1171875, 1171926), (7, 705894, 705945), (7, 823543, 823594), (7, 941192, 941243), (7, 1058841, 1058892), (7, 1176490, 1176541), (7, 1294139, 1294190), (7, 823543, 823594), (11, 805255, 805306), (11, 966306, 966357), (11, 1127357, 1127408), (11, 1288408, 1288459), (17, 751689, 751740), (17, 835210, 835261), (17, 918731, 918782), (17, 1002252, 1002303), (17, 1085773, 1085824), (17, 1169294, 1169345), (17, 1252815, 1252866), (19, 781926, 781977), (19, 912247, 912298), (19, 1042568, 1042619), (19, 1172889, 1172940), (19, 1303210, 1303261), (23, 839523, 839574), (23, 1119364, 1119415), (29, 707281, 707332), (31, 923521, 923572), (37, 709142, 709193), (37, 759795, 759846), (41, 689210, 689261), (41, 758131, 758182), (41, 827052, 827103), (41, 895973, 896024), (41, 964894, 964945), (41, 1033815, 1033866), (43, 715563, 715614), (43, 795070, 795121), (43, 874577, 874628), (43, 954084, 954135), (43, 1033591, 1033642), (43, 1113098, 1113149), (43, 1192605, 1192656), (47, 726761, 726812), (47, 830584, 830635), (47, 934407, 934458), (47, 1038230, 1038281), (47, 1142053, 1142104), (47, 1245876, 1245927), (47, 1349699, 1349750)]

def row052_layer008_block000 : List ColouredInterval :=
  [(2, 786432, 786483), (2, 1048576, 1048627), (2, 1048576, 1048627), (3, 708588, 708639), (3, 767637, 767688), (3, 826686, 826737), (3, 885735, 885786), (3, 708588, 708639), (3, 885735, 885786), (3, 1062882, 1062933), (3, 1240029, 1240080), (3, 1062882, 1062933), (5, 703125, 703176), (5, 781250, 781301), (5, 859375, 859426), (5, 937500, 937551)]

def row052_layer008_block001 : List ColouredInterval :=
  [(5, 1015625, 1015676), (5, 1093750, 1093801), (5, 1171875, 1171926), (5, 781250, 781301), (5, 1171875, 1171926), (7, 705894, 705945), (7, 823543, 823594), (7, 941192, 941243), (7, 1058841, 1058892), (7, 1176490, 1176541), (7, 1294139, 1294190), (7, 823543, 823594), (11, 805255, 805306), (11, 966306, 966357), (11, 1127357, 1127408), (11, 1288408, 1288459)]

def row052_layer008_block002 : List ColouredInterval :=
  [(17, 751689, 751740), (17, 835210, 835261), (17, 918731, 918782), (17, 1002252, 1002303), (17, 1085773, 1085824), (17, 1169294, 1169345), (17, 1252815, 1252866), (19, 781926, 781977), (19, 912247, 912298), (19, 1042568, 1042619), (19, 1172889, 1172940), (19, 1303210, 1303261), (23, 839523, 839574), (23, 1119364, 1119415), (29, 707281, 707332), (31, 923521, 923572)]

def row052_layer008_block003 : List ColouredInterval :=
  [(37, 709142, 709193), (37, 759795, 759846), (41, 689210, 689261), (41, 758131, 758182), (41, 827052, 827103), (41, 895973, 896024), (41, 964894, 964945), (41, 1033815, 1033866), (43, 715563, 715614), (43, 795070, 795121), (43, 874577, 874628), (43, 954084, 954135), (43, 1033591, 1033642), (43, 1113098, 1113149), (43, 1192605, 1192656), (47, 726761, 726812)]

def row052_layer008_block004 : List ColouredInterval :=
  [(47, 830584, 830635), (47, 934407, 934458), (47, 1038230, 1038281), (47, 1142053, 1142104), (47, 1245876, 1245927), (47, 1349699, 1349750)]

def row052_layer008_chunks : List (List ColouredInterval) :=
  [row052_layer008_block000, row052_layer008_block001, row052_layer008_block002, row052_layer008_block003, row052_layer008_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_arithmetic : LayerArithmeticValid row052.height { lower := 678912, upper := 1357824, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_enumeration :
    activePowerIntervalList 52 15 678912 1357824 = row052_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_pairs000 :
    row052_layer008_block000.all (fun I => row052_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_pairs001 :
    row052_layer008_block001.all (fun I => row052_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_pairs002 :
    row052_layer008_block002.all (fun I => row052_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_pairs003 :
    row052_layer008_block003.all (fun I => row052_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_pairs004 :
    row052_layer008_block004.all (fun I => row052_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row052_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_chunks_eq : row052_layer008_chunks.flatten = row052_layer008_intervals := by
  rfl

theorem row052_layer008_pairs : pairCoverCheck row052_layer008_intervals row052_bounds = true := by
  apply pairCoverCheck_of_chunks row052_layer008_chunks_eq
  intro block hblock
  simp only [row052_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row052_layer008_pairs000
  · exact row052_layer008_pairs001
  · exact row052_layer008_pairs002
  · exact row052_layer008_pairs003
  · exact row052_layer008_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer008_checked :
    coverLayerCheck row052.height row052.goods { lower := 678912, upper := 1357824, M := 15 } = true := by
  exact coverLayerCheck_of_parts row052_layer008_arithmetic row052_layer008_enumeration row052_bounds_eq row052_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer009_checked :
    coverLayerCheck row052.height row052.goods { lower := 1357824, upper := 2715648, M := 13 } = true := by
  decide +kernel

theorem row052_layer010_checked :
    coverLayerCheck row052.height row052.goods { lower := 2715648, upper := 5431296, M := 12 } = true := by
  decide +kernel

theorem row052_layer011_checked :
    coverLayerCheck row052.height row052.goods { lower := 5431296, upper := 10862592, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer012_checked :
    coverLayerCheck row052.height row052.goods { lower := 10862592, upper := 21725184, M := 10 } = true := by
  decide +kernel

theorem row052_layer013_checked :
    coverLayerCheck row052.height row052.goods { lower := 21725184, upper := 43450368, M := 9 } = true := by
  decide +kernel

theorem row052_layer014_checked :
    coverLayerCheck row052.height row052.goods { lower := 43450368, upper := 86900736, M := 8 } = true := by
  decide +kernel

theorem row052_layer015_checked :
    coverLayerCheck row052.height row052.goods { lower := 86900736, upper := 173801472, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer016_checked :
    coverLayerCheck row052.height row052.goods { lower := 173801472, upper := 347602944, M := 7 } = true := by
  decide +kernel

theorem row052_layer017_checked :
    coverLayerCheck row052.height row052.goods { lower := 347602944, upper := 695205888, M := 6 } = true := by
  decide +kernel

theorem row052_layer018_checked :
    coverLayerCheck row052.height row052.goods { lower := 695205888, upper := 1390411776, M := 6 } = true := by
  decide +kernel

theorem row052_layer019_checked :
    coverLayerCheck row052.height row052.goods { lower := 1390411776, upper := 2780823552, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer020_checked :
    coverLayerCheck row052.height row052.goods { lower := 2780823552, upper := 5561647104, M := 5 } = true := by
  decide +kernel

theorem row052_layer021_checked :
    coverLayerCheck row052.height row052.goods { lower := 5561647104, upper := 11123294208, M := 4 } = true := by
  decide +kernel

theorem row052_layer022_checked :
    coverLayerCheck row052.height row052.goods { lower := 11123294208, upper := 22246588416, M := 4 } = true := by
  decide +kernel

theorem row052_layer023_checked :
    coverLayerCheck row052.height row052.goods { lower := 22246588416, upper := 44493176832, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer024_checked :
    coverLayerCheck row052.height row052.goods { lower := 44493176832, upper := 88986353664, M := 3 } = true := by
  decide +kernel

theorem row052_layer025_checked :
    coverLayerCheck row052.height row052.goods { lower := 88986353664, upper := 177972707328, M := 3 } = true := by
  decide +kernel

theorem row052_layer026_checked :
    coverLayerCheck row052.height row052.goods { lower := 177972707328, upper := 355945414656, M := 3 } = true := by
  decide +kernel

theorem row052_layer027_checked :
    coverLayerCheck row052.height row052.goods { lower := 355945414656, upper := 711890829312, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer028_checked :
    coverLayerCheck row052.height row052.goods { lower := 711890829312, upper := 1423781658624, M := 2 } = true := by
  decide +kernel

theorem row052_layer029_checked :
    coverLayerCheck row052.height row052.goods { lower := 1423781658624, upper := 2847563317248, M := 2 } = true := by
  decide +kernel

theorem row052_layer030_checked :
    coverLayerCheck row052.height row052.goods { lower := 2847563317248, upper := 5695126634496, M := 2 } = true := by
  decide +kernel

theorem row052_layer031_checked :
    coverLayerCheck row052.height row052.goods { lower := 5695126634496, upper := 11390253268992, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layer032_checked :
    coverLayerCheck row052.height row052.goods { lower := 11390253268992, upper := 22780506537984, M := 2 } = true := by
  decide +kernel

theorem row052_layer033_checked :
    coverLayerCheck row052.height row052.goods { lower := 22780506537984, upper := 45561013075968, M := 2 } = true := by
  decide +kernel

theorem row052_layer034_checked :
    coverLayerCheck row052.height row052.goods { lower := 45561013075968, upper := 91122026151936, M := 2 } = true := by
  decide +kernel

theorem row052_layer035_checked :
    coverLayerCheck row052.height row052.goods { lower := 91122026151936, upper := 100000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_layers_checked :
    row052.layers.all (coverLayerCheck row052.height row052.goods) = true := by
  change row052_layers.all (coverLayerCheck row052.height row052.goods) = true
  simp only [row052_layers, List.all_cons, List.all_nil,
    row052_layer000_checked,
    row052_layer001_checked,
    row052_layer002_checked,
    row052_layer003_checked,
    row052_layer004_checked,
    row052_layer005_checked,
    row052_layer006_checked,
    row052_layer007_checked,
    row052_layer008_checked,
    row052_layer009_checked,
    row052_layer010_checked,
    row052_layer011_checked,
    row052_layer012_checked,
    row052_layer013_checked,
    row052_layer014_checked,
    row052_layer015_checked,
    row052_layer016_checked,
    row052_layer017_checked,
    row052_layer018_checked,
    row052_layer019_checked,
    row052_layer020_checked,
    row052_layer021_checked,
    row052_layer022_checked,
    row052_layer023_checked,
    row052_layer024_checked,
    row052_layer025_checked,
    row052_layer026_checked,
    row052_layer027_checked,
    row052_layer028_checked,
    row052_layer029_checked,
    row052_layer030_checked,
    row052_layer031_checked,
    row052_layer032_checked,
    row052_layer033_checked,
    row052_layer034_checked,
    row052_layer035_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row052_checked : finiteCoverRowCheck row052 = true := by
  simp only [finiteCoverRowCheck, row052_registered, row052_goods_checked,
    row052_small_checked, row052_layerCover_checked, row052_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row052_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i052 :
    ∀ n j : ℕ, 1 ≤ 52 ∧ 52 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 52 ≤ p ∧ p ∣ Nat.choose n 52 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row052_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i052
