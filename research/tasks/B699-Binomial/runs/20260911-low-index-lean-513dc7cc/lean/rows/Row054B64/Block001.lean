import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row054B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs001 :
    row054_layer003_block001.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs002 :
    row054_layer003_block002.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs003 :
    row054_layer003_block003.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs004 :
    row054_layer003_block004.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs005 :
    row054_layer003_block005.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs006 :
    row054_layer003_block006.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs007 :
    row054_layer003_block007.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_pairs008 :
    row054_layer003_block008.all (fun I => row054_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_chunks_eq : row054_layer003_chunks.flatten = row054_layer003_intervals := by
  rfl

theorem row054_layer003_pairs : pairCoverCheck row054_layer003_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer003_chunks_eq
  intro block hblock
  simp only [row054_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row054_layer003_pairs000
  · exact row054_layer003_pairs001
  · exact row054_layer003_pairs002
  · exact row054_layer003_pairs003
  · exact row054_layer003_pairs004
  · exact row054_layer003_pairs005
  · exact row054_layer003_pairs006
  · exact row054_layer003_pairs007
  · exact row054_layer003_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer003_checked :
    coverLayerCheck row054.height row054.goods { lower := 22896, upper := 45792, M := 29 } = true := by
  exact coverLayerCheck_of_parts row054_layer003_arithmetic row054_layer003_enumeration row054_bounds_eq row054_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer004_intervals : List ColouredInterval :=
  [(2, 49152, 49205), (2, 53248, 53301), (2, 49152, 49205), (2, 57344, 57397), (2, 65536, 65589), (2, 73728, 73781), (2, 81920, 81973), (2, 90112, 90165), (2, 49152, 49205), (2, 65536, 65589), (2, 81920, 81973), (2, 65536, 65589), (2, 65536, 65589), (3, 59049, 59102), (5, 46875, 46928), (5, 50000, 50053), (5, 53125, 53178), (5, 56250, 56303), (5, 59375, 59428), (5, 62500, 62553), (5, 65625, 65678), (5, 68750, 68803), (5, 71875, 71928), (5, 75000, 75053), (5, 78125, 78178), (5, 81250, 81303), (5, 84375, 84428), (5, 46875, 46928), (5, 62500, 62553), (5, 78125, 78178), (5, 78125, 78178), (7, 48020, 48073), (7, 50421, 50474), (7, 52822, 52875), (7, 55223, 55276), (7, 57624, 57677), (7, 60025, 60078), (7, 62426, 62479), (7, 64827, 64880), (7, 50421, 50474), (7, 67228, 67281), (7, 84035, 84088), (11, 58564, 58617), (11, 73205, 73258), (11, 87846, 87899), (13, 46137, 46190), (13, 48334, 48387), (13, 50531, 50584), (13, 52728, 52781), (13, 54925, 54978), (13, 57122, 57175), (13, 59319, 59372), (13, 57122, 57175), (13, 85683, 85736), (17, 49130, 49183), (17, 54043, 54096), (17, 58956, 59009), (17, 63869, 63922), (17, 68782, 68835), (17, 73695, 73748), (17, 78608, 78661), (17, 83521, 83574), (17, 88434, 88487), (17, 83521, 83574), (19, 48013, 48066), (19, 54872, 54925), (19, 61731, 61784), (19, 68590, 68643), (19, 75449, 75502), (19, 82308, 82361), (19, 89167, 89220), (23, 48668, 48721), (23, 60835, 60888), (23, 73002, 73055), (23, 85169, 85222), (29, 48778, 48831), (29, 73167, 73220), (31, 59582, 59635), (31, 89373, 89426), (37, 50653, 50706), (41, 68921, 68974), (43, 46225, 46278), (43, 48074, 48127), (43, 49923, 49976), (43, 79507, 79560), (47, 46389, 46442), (47, 48598, 48651), (47, 50807, 50860), (47, 53016, 53069), (47, 55225, 55278), (47, 57434, 57487), (47, 59643, 59696), (53, 47753, 47806), (53, 50562, 50615), (53, 53371, 53424), (53, 56180, 56233), (53, 58989, 59042), (53, 61798, 61851), (53, 64607, 64660), (53, 67416, 67469), (53, 70225, 70278), (53, 73034, 73087), (53, 75843, 75896)]

def row054_layer004_block000 : List ColouredInterval :=
  [(2, 49152, 49205), (2, 53248, 53301), (2, 49152, 49205), (2, 57344, 57397), (2, 65536, 65589), (2, 73728, 73781), (2, 81920, 81973), (2, 90112, 90165), (2, 49152, 49205), (2, 65536, 65589), (2, 81920, 81973), (2, 65536, 65589), (2, 65536, 65589), (3, 59049, 59102), (5, 46875, 46928), (5, 50000, 50053)]

def row054_layer004_block001 : List ColouredInterval :=
  [(5, 53125, 53178), (5, 56250, 56303), (5, 59375, 59428), (5, 62500, 62553), (5, 65625, 65678), (5, 68750, 68803), (5, 71875, 71928), (5, 75000, 75053), (5, 78125, 78178), (5, 81250, 81303), (5, 84375, 84428), (5, 46875, 46928), (5, 62500, 62553), (5, 78125, 78178), (5, 78125, 78178), (7, 48020, 48073)]

def row054_layer004_block002 : List ColouredInterval :=
  [(7, 50421, 50474), (7, 52822, 52875), (7, 55223, 55276), (7, 57624, 57677), (7, 60025, 60078), (7, 62426, 62479), (7, 64827, 64880), (7, 50421, 50474), (7, 67228, 67281), (7, 84035, 84088), (11, 58564, 58617), (11, 73205, 73258), (11, 87846, 87899), (13, 46137, 46190), (13, 48334, 48387), (13, 50531, 50584)]

def row054_layer004_block003 : List ColouredInterval :=
  [(13, 52728, 52781), (13, 54925, 54978), (13, 57122, 57175), (13, 59319, 59372), (13, 57122, 57175), (13, 85683, 85736), (17, 49130, 49183), (17, 54043, 54096), (17, 58956, 59009), (17, 63869, 63922), (17, 68782, 68835), (17, 73695, 73748), (17, 78608, 78661), (17, 83521, 83574), (17, 88434, 88487), (17, 83521, 83574)]

def row054_layer004_block004 : List ColouredInterval :=
  [(19, 48013, 48066), (19, 54872, 54925), (19, 61731, 61784), (19, 68590, 68643), (19, 75449, 75502), (19, 82308, 82361), (19, 89167, 89220), (23, 48668, 48721), (23, 60835, 60888), (23, 73002, 73055), (23, 85169, 85222), (29, 48778, 48831), (29, 73167, 73220), (31, 59582, 59635), (31, 89373, 89426), (37, 50653, 50706)]

def row054_layer004_block005 : List ColouredInterval :=
  [(41, 68921, 68974), (43, 46225, 46278), (43, 48074, 48127), (43, 49923, 49976), (43, 79507, 79560), (47, 46389, 46442), (47, 48598, 48651), (47, 50807, 50860), (47, 53016, 53069), (47, 55225, 55278), (47, 57434, 57487), (47, 59643, 59696), (53, 47753, 47806), (53, 50562, 50615), (53, 53371, 53424), (53, 56180, 56233)]

def row054_layer004_block006 : List ColouredInterval :=
  [(53, 58989, 59042), (53, 61798, 61851), (53, 64607, 64660), (53, 67416, 67469), (53, 70225, 70278), (53, 73034, 73087), (53, 75843, 75896)]

def row054_layer004_chunks : List (List ColouredInterval) :=
  [row054_layer004_block000, row054_layer004_block001, row054_layer004_block002, row054_layer004_block003, row054_layer004_block004, row054_layer004_block005, row054_layer004_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_arithmetic : LayerArithmeticValid row054.height { lower := 45792, upper := 91584, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_enumeration :
    activePowerIntervalList 54 27 45792 91584 = row054_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_pairs000 :
    row054_layer004_block000.all (fun I => row054_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_pairs001 :
    row054_layer004_block001.all (fun I => row054_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_pairs002 :
    row054_layer004_block002.all (fun I => row054_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_pairs003 :
    row054_layer004_block003.all (fun I => row054_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_pairs004 :
    row054_layer004_block004.all (fun I => row054_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_pairs005 :
    row054_layer004_block005.all (fun I => row054_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_pairs006 :
    row054_layer004_block006.all (fun I => row054_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_chunks_eq : row054_layer004_chunks.flatten = row054_layer004_intervals := by
  rfl

theorem row054_layer004_pairs : pairCoverCheck row054_layer004_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer004_chunks_eq
  intro block hblock
  simp only [row054_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row054_layer004_pairs000
  · exact row054_layer004_pairs001
  · exact row054_layer004_pairs002
  · exact row054_layer004_pairs003
  · exact row054_layer004_pairs004
  · exact row054_layer004_pairs005
  · exact row054_layer004_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer004_checked :
    coverLayerCheck row054.height row054.goods { lower := 45792, upper := 91584, M := 27 } = true := by
  exact coverLayerCheck_of_parts row054_layer004_arithmetic row054_layer004_enumeration row054_bounds_eq row054_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer005_intervals : List ColouredInterval :=
  [(2, 98304, 98357), (2, 98304, 98357), (2, 114688, 114741), (2, 131072, 131125), (2, 147456, 147509), (2, 163840, 163893), (2, 180224, 180277), (2, 98304, 98357), (2, 131072, 131125), (2, 163840, 163893), (2, 131072, 131125), (2, 131072, 131125), (5, 93750, 93803), (5, 109375, 109428), (5, 125000, 125053), (5, 140625, 140678), (5, 156250, 156303), (5, 171875, 171928), (5, 156250, 156303), (7, 100842, 100895), (7, 117649, 117702), (7, 134456, 134509), (7, 151263, 151316), (7, 168070, 168123), (7, 117649, 117702), (11, 102487, 102540), (11, 117128, 117181), (11, 131769, 131822), (11, 146410, 146463), (11, 161051, 161104), (11, 175692, 175745), (11, 161051, 161104), (13, 114244, 114297), (13, 142805, 142858), (13, 171366, 171419), (17, 93347, 93400), (17, 98260, 98313), (17, 103173, 103226), (17, 108086, 108139), (17, 112999, 113052), (17, 117912, 117965), (17, 122825, 122878), (17, 167042, 167095), (19, 96026, 96079), (19, 102885, 102938), (19, 109744, 109797), (19, 116603, 116656), (19, 123462, 123515), (19, 130321, 130374), (19, 137180, 137233), (19, 144039, 144092), (19, 150898, 150951), (19, 157757, 157810), (19, 164616, 164669), (19, 171475, 171528), (19, 130321, 130374), (23, 97336, 97389), (23, 109503, 109556), (23, 121670, 121723), (23, 133837, 133890), (23, 146004, 146057), (23, 158171, 158224), (23, 170338, 170391), (23, 182505, 182558), (29, 97556, 97609), (29, 121945, 121998), (29, 146334, 146387), (29, 170723, 170776), (31, 119164, 119217), (31, 148955, 149008), (31, 178746, 178799), (37, 101306, 101359), (37, 151959, 152012), (41, 137842, 137895), (43, 159014, 159067), (47, 103823, 103876), (53, 148877, 148930)]

def row054_layer005_block000 : List ColouredInterval :=
  [(2, 98304, 98357), (2, 98304, 98357), (2, 114688, 114741), (2, 131072, 131125), (2, 147456, 147509), (2, 163840, 163893), (2, 180224, 180277), (2, 98304, 98357), (2, 131072, 131125), (2, 163840, 163893), (2, 131072, 131125), (2, 131072, 131125), (5, 93750, 93803), (5, 109375, 109428), (5, 125000, 125053), (5, 140625, 140678)]

def row054_layer005_block001 : List ColouredInterval :=
  [(5, 156250, 156303), (5, 171875, 171928), (5, 156250, 156303), (7, 100842, 100895), (7, 117649, 117702), (7, 134456, 134509), (7, 151263, 151316), (7, 168070, 168123), (7, 117649, 117702), (11, 102487, 102540), (11, 117128, 117181), (11, 131769, 131822), (11, 146410, 146463), (11, 161051, 161104), (11, 175692, 175745), (11, 161051, 161104)]

def row054_layer005_block002 : List ColouredInterval :=
  [(13, 114244, 114297), (13, 142805, 142858), (13, 171366, 171419), (17, 93347, 93400), (17, 98260, 98313), (17, 103173, 103226), (17, 108086, 108139), (17, 112999, 113052), (17, 117912, 117965), (17, 122825, 122878), (17, 167042, 167095), (19, 96026, 96079), (19, 102885, 102938), (19, 109744, 109797), (19, 116603, 116656), (19, 123462, 123515)]

def row054_layer005_block003 : List ColouredInterval :=
  [(19, 130321, 130374), (19, 137180, 137233), (19, 144039, 144092), (19, 150898, 150951), (19, 157757, 157810), (19, 164616, 164669), (19, 171475, 171528), (19, 130321, 130374), (23, 97336, 97389), (23, 109503, 109556), (23, 121670, 121723), (23, 133837, 133890), (23, 146004, 146057), (23, 158171, 158224), (23, 170338, 170391), (23, 182505, 182558)]

def row054_layer005_block004 : List ColouredInterval :=
  [(29, 97556, 97609), (29, 121945, 121998), (29, 146334, 146387), (29, 170723, 170776), (31, 119164, 119217), (31, 148955, 149008), (31, 178746, 178799), (37, 101306, 101359), (37, 151959, 152012), (41, 137842, 137895), (43, 159014, 159067), (47, 103823, 103876), (53, 148877, 148930)]

def row054_layer005_chunks : List (List ColouredInterval) :=
  [row054_layer005_block000, row054_layer005_block001, row054_layer005_block002, row054_layer005_block003, row054_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_arithmetic : LayerArithmeticValid row054.height { lower := 91584, upper := 183168, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_enumeration :
    activePowerIntervalList 54 25 91584 183168 = row054_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_pairs000 :
    row054_layer005_block000.all (fun I => row054_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_pairs001 :
    row054_layer005_block001.all (fun I => row054_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_pairs002 :
    row054_layer005_block002.all (fun I => row054_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_pairs003 :
    row054_layer005_block003.all (fun I => row054_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_pairs004 :
    row054_layer005_block004.all (fun I => row054_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_chunks_eq : row054_layer005_chunks.flatten = row054_layer005_intervals := by
  rfl

theorem row054_layer005_pairs : pairCoverCheck row054_layer005_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer005_chunks_eq
  intro block hblock
  simp only [row054_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row054_layer005_pairs000
  · exact row054_layer005_pairs001
  · exact row054_layer005_pairs002
  · exact row054_layer005_pairs003
  · exact row054_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer005_checked :
    coverLayerCheck row054.height row054.goods { lower := 91584, upper := 183168, M := 25 } = true := by
  exact coverLayerCheck_of_parts row054_layer005_arithmetic row054_layer005_enumeration row054_bounds_eq row054_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer006_intervals : List ColouredInterval :=
  [(2, 196608, 196661), (2, 229376, 229429), (2, 262144, 262197), (2, 294912, 294965), (2, 327680, 327733), (2, 360448, 360501), (2, 196608, 196661), (2, 262144, 262197), (2, 327680, 327733), (2, 262144, 262197), (2, 262144, 262197), (5, 187500, 187553), (5, 203125, 203178), (5, 218750, 218803), (5, 234375, 234428), (5, 250000, 250053), (5, 265625, 265678), (5, 281250, 281303), (5, 296875, 296928), (5, 312500, 312553), (5, 328125, 328178), (5, 343750, 343803), (5, 359375, 359428), (5, 234375, 234428), (5, 312500, 312553), (7, 184877, 184930), (7, 201684, 201737), (7, 218491, 218544), (7, 235298, 235351), (7, 252105, 252158), (7, 268912, 268965), (7, 285719, 285772), (7, 302526, 302579), (7, 319333, 319386), (7, 336140, 336193), (7, 352947, 353000), (7, 235298, 235351), (7, 352947, 353000), (11, 190333, 190386), (11, 204974, 205027), (11, 219615, 219668), (11, 234256, 234309), (11, 248897, 248950), (11, 263538, 263591), (11, 278179, 278232), (11, 292820, 292873), (11, 307461, 307514), (11, 322102, 322155), (11, 336743, 336796), (11, 322102, 322155), (13, 199927, 199980), (13, 228488, 228541), (13, 257049, 257102), (13, 285610, 285663), (13, 314171, 314224), (13, 342732, 342785), (17, 250563, 250616), (17, 334084, 334137), (19, 260642, 260695), (23, 194672, 194725), (23, 206839, 206892), (23, 219006, 219059), (23, 231173, 231226), (23, 243340, 243393), (23, 255507, 255560), (23, 267674, 267727), (23, 279841, 279894), (23, 279841, 279894), (29, 195112, 195165), (29, 219501, 219554), (29, 243890, 243943), (29, 268279, 268332), (29, 292668, 292721), (29, 317057, 317110), (29, 341446, 341499), (29, 365835, 365888), (31, 208537, 208590), (31, 238328, 238381), (31, 268119, 268172), (31, 297910, 297963), (31, 327701, 327754), (31, 357492, 357545), (37, 202612, 202665), (37, 253265, 253318), (37, 303918, 303971), (37, 354571, 354624), (41, 206763, 206816), (41, 275684, 275737), (41, 344605, 344658), (43, 238521, 238574), (43, 318028, 318081), (47, 207646, 207699), (47, 311469, 311522), (53, 297754, 297807)]

def row054_layer006_block000 : List ColouredInterval :=
  [(2, 196608, 196661), (2, 229376, 229429), (2, 262144, 262197), (2, 294912, 294965), (2, 327680, 327733), (2, 360448, 360501), (2, 196608, 196661), (2, 262144, 262197), (2, 327680, 327733), (2, 262144, 262197), (2, 262144, 262197), (5, 187500, 187553), (5, 203125, 203178), (5, 218750, 218803), (5, 234375, 234428), (5, 250000, 250053)]

def row054_layer006_block001 : List ColouredInterval :=
  [(5, 265625, 265678), (5, 281250, 281303), (5, 296875, 296928), (5, 312500, 312553), (5, 328125, 328178), (5, 343750, 343803), (5, 359375, 359428), (5, 234375, 234428), (5, 312500, 312553), (7, 184877, 184930), (7, 201684, 201737), (7, 218491, 218544), (7, 235298, 235351), (7, 252105, 252158), (7, 268912, 268965), (7, 285719, 285772)]

def row054_layer006_block002 : List ColouredInterval :=
  [(7, 302526, 302579), (7, 319333, 319386), (7, 336140, 336193), (7, 352947, 353000), (7, 235298, 235351), (7, 352947, 353000), (11, 190333, 190386), (11, 204974, 205027), (11, 219615, 219668), (11, 234256, 234309), (11, 248897, 248950), (11, 263538, 263591), (11, 278179, 278232), (11, 292820, 292873), (11, 307461, 307514), (11, 322102, 322155)]

def row054_layer006_block003 : List ColouredInterval :=
  [(11, 336743, 336796), (11, 322102, 322155), (13, 199927, 199980), (13, 228488, 228541), (13, 257049, 257102), (13, 285610, 285663), (13, 314171, 314224), (13, 342732, 342785), (17, 250563, 250616), (17, 334084, 334137), (19, 260642, 260695), (23, 194672, 194725), (23, 206839, 206892), (23, 219006, 219059), (23, 231173, 231226), (23, 243340, 243393)]

def row054_layer006_block004 : List ColouredInterval :=
  [(23, 255507, 255560), (23, 267674, 267727), (23, 279841, 279894), (23, 279841, 279894), (29, 195112, 195165), (29, 219501, 219554), (29, 243890, 243943), (29, 268279, 268332), (29, 292668, 292721), (29, 317057, 317110), (29, 341446, 341499), (29, 365835, 365888), (31, 208537, 208590), (31, 238328, 238381), (31, 268119, 268172), (31, 297910, 297963)]

def row054_layer006_block005 : List ColouredInterval :=
  [(31, 327701, 327754), (31, 357492, 357545), (37, 202612, 202665), (37, 253265, 253318), (37, 303918, 303971), (37, 354571, 354624), (41, 206763, 206816), (41, 275684, 275737), (41, 344605, 344658), (43, 238521, 238574), (43, 318028, 318081), (47, 207646, 207699), (47, 311469, 311522), (53, 297754, 297807)]

def row054_layer006_chunks : List (List ColouredInterval) :=
  [row054_layer006_block000, row054_layer006_block001, row054_layer006_block002, row054_layer006_block003, row054_layer006_block004, row054_layer006_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_arithmetic : LayerArithmeticValid row054.height { lower := 183168, upper := 366336, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_enumeration :
    activePowerIntervalList 54 23 183168 366336 = row054_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_pairs000 :
    row054_layer006_block000.all (fun I => row054_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_pairs001 :
    row054_layer006_block001.all (fun I => row054_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_pairs002 :
    row054_layer006_block002.all (fun I => row054_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_pairs003 :
    row054_layer006_block003.all (fun I => row054_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_pairs004 :
    row054_layer006_block004.all (fun I => row054_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_pairs005 :
    row054_layer006_block005.all (fun I => row054_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_chunks_eq : row054_layer006_chunks.flatten = row054_layer006_intervals := by
  rfl

theorem row054_layer006_pairs : pairCoverCheck row054_layer006_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer006_chunks_eq
  intro block hblock
  simp only [row054_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row054_layer006_pairs000
  · exact row054_layer006_pairs001
  · exact row054_layer006_pairs002
  · exact row054_layer006_pairs003
  · exact row054_layer006_pairs004
  · exact row054_layer006_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer006_checked :
    coverLayerCheck row054.height row054.goods { lower := 183168, upper := 366336, M := 23 } = true := by
  exact coverLayerCheck_of_parts row054_layer006_arithmetic row054_layer006_enumeration row054_bounds_eq row054_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer007_intervals : List ColouredInterval :=
  [(2, 393216, 393269), (2, 458752, 458805), (2, 524288, 524341), (2, 589824, 589877), (2, 655360, 655413), (2, 393216, 393269), (2, 524288, 524341), (2, 655360, 655413), (2, 524288, 524341), (2, 524288, 524341), (5, 390625, 390678), (5, 468750, 468803), (5, 546875, 546928), (5, 625000, 625053), (5, 703125, 703178), (5, 390625, 390678), (7, 470596, 470649), (7, 588245, 588298), (7, 705894, 705947), (11, 483153, 483206), (11, 644204, 644257), (13, 371293, 371346), (13, 399854, 399907), (13, 428415, 428468), (13, 456976, 457029), (13, 485537, 485590), (13, 514098, 514151), (13, 542659, 542712), (13, 571220, 571273), (13, 599781, 599834), (13, 371293, 371346), (17, 417605, 417658), (17, 501126, 501179), (17, 584647, 584700), (17, 668168, 668221), (19, 390963, 391016), (19, 521284, 521337), (19, 651605, 651658), (23, 559682, 559735), (29, 390224, 390277), (29, 414613, 414666), (29, 439002, 439055), (29, 463391, 463444), (29, 487780, 487833), (29, 512169, 512222), (29, 707281, 707334), (31, 387283, 387336), (31, 417074, 417127), (31, 446865, 446918), (31, 476656, 476709), (31, 506447, 506500), (31, 536238, 536291), (31, 566029, 566082), (31, 595820, 595873), (31, 625611, 625664), (37, 405224, 405277), (37, 455877, 455930), (37, 506530, 506583), (37, 557183, 557236), (37, 607836, 607889), (37, 658489, 658542), (37, 709142, 709195), (41, 413526, 413579), (41, 482447, 482500), (41, 551368, 551421), (41, 620289, 620342), (41, 689210, 689263), (43, 397535, 397588), (43, 477042, 477095), (43, 556549, 556602), (43, 636056, 636109), (43, 715563, 715616), (47, 415292, 415345), (47, 519115, 519168), (47, 622938, 622991), (47, 726761, 726814), (53, 446631, 446684), (53, 595508, 595561)]

def row054_layer007_block000 : List ColouredInterval :=
  [(2, 393216, 393269), (2, 458752, 458805), (2, 524288, 524341), (2, 589824, 589877), (2, 655360, 655413), (2, 393216, 393269), (2, 524288, 524341), (2, 655360, 655413), (2, 524288, 524341), (2, 524288, 524341), (5, 390625, 390678), (5, 468750, 468803), (5, 546875, 546928), (5, 625000, 625053), (5, 703125, 703178), (5, 390625, 390678)]

def row054_layer007_block001 : List ColouredInterval :=
  [(7, 470596, 470649), (7, 588245, 588298), (7, 705894, 705947), (11, 483153, 483206), (11, 644204, 644257), (13, 371293, 371346), (13, 399854, 399907), (13, 428415, 428468), (13, 456976, 457029), (13, 485537, 485590), (13, 514098, 514151), (13, 542659, 542712), (13, 571220, 571273), (13, 599781, 599834), (13, 371293, 371346), (17, 417605, 417658)]

def row054_layer007_block002 : List ColouredInterval :=
  [(17, 501126, 501179), (17, 584647, 584700), (17, 668168, 668221), (19, 390963, 391016), (19, 521284, 521337), (19, 651605, 651658), (23, 559682, 559735), (29, 390224, 390277), (29, 414613, 414666), (29, 439002, 439055), (29, 463391, 463444), (29, 487780, 487833), (29, 512169, 512222), (29, 707281, 707334), (31, 387283, 387336), (31, 417074, 417127)]

def row054_layer007_block003 : List ColouredInterval :=
  [(31, 446865, 446918), (31, 476656, 476709), (31, 506447, 506500), (31, 536238, 536291), (31, 566029, 566082), (31, 595820, 595873), (31, 625611, 625664), (37, 405224, 405277), (37, 455877, 455930), (37, 506530, 506583), (37, 557183, 557236), (37, 607836, 607889), (37, 658489, 658542), (37, 709142, 709195), (41, 413526, 413579), (41, 482447, 482500)]

def row054_layer007_block004 : List ColouredInterval :=
  [(41, 551368, 551421), (41, 620289, 620342), (41, 689210, 689263), (43, 397535, 397588), (43, 477042, 477095), (43, 556549, 556602), (43, 636056, 636109), (43, 715563, 715616), (47, 415292, 415345), (47, 519115, 519168), (47, 622938, 622991), (47, 726761, 726814), (53, 446631, 446684), (53, 595508, 595561)]

def row054_layer007_chunks : List (List ColouredInterval) :=
  [row054_layer007_block000, row054_layer007_block001, row054_layer007_block002, row054_layer007_block003, row054_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_arithmetic : LayerArithmeticValid row054.height { lower := 366336, upper := 732672, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_enumeration :
    activePowerIntervalList 54 21 366336 732672 = row054_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_pairs000 :
    row054_layer007_block000.all (fun I => row054_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_pairs001 :
    row054_layer007_block001.all (fun I => row054_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_pairs002 :
    row054_layer007_block002.all (fun I => row054_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_pairs003 :
    row054_layer007_block003.all (fun I => row054_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_pairs004 :
    row054_layer007_block004.all (fun I => row054_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_chunks_eq : row054_layer007_chunks.flatten = row054_layer007_intervals := by
  rfl

theorem row054_layer007_pairs : pairCoverCheck row054_layer007_intervals row054_bounds = true := by
  apply pairCoverCheck_of_chunks row054_layer007_chunks_eq
  intro block hblock
  simp only [row054_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row054_layer007_pairs000
  · exact row054_layer007_pairs001
  · exact row054_layer007_pairs002
  · exact row054_layer007_pairs003
  · exact row054_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer007_checked :
    coverLayerCheck row054.height row054.goods { lower := 366336, upper := 732672, M := 21 } = true := by
  exact coverLayerCheck_of_parts row054_layer007_arithmetic row054_layer007_enumeration row054_bounds_eq row054_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row054_layer008_intervals : List ColouredInterval :=
  [(2, 786432, 786485), (2, 917504, 917557), (2, 1048576, 1048629), (2, 1179648, 1179701), (2, 1310720, 1310773), (2, 786432, 786485), (2, 1048576, 1048629), (2, 1310720, 1310773), (2, 1048576, 1048629), (2, 1048576, 1048629), (5, 781250, 781303), (5, 859375, 859428), (5, 937500, 937553), (5, 1015625, 1015678), (5, 1093750, 1093803), (5, 1171875, 1171928), (5, 1250000, 1250053), (5, 1328125, 1328178), (5, 1406250, 1406303), (5, 781250, 781303), (5, 1171875, 1171928), (7, 823543, 823596), (7, 941192, 941245), (7, 1058841, 1058894), (7, 1176490, 1176543), (7, 1294139, 1294192), (7, 1411788, 1411841), (7, 823543, 823596), (11, 805255, 805308), (11, 966306, 966359), (11, 1127357, 1127410), (11, 1288408, 1288461), (11, 1449459, 1449512), (13, 742586, 742639), (13, 1113879, 1113932), (17, 751689, 751742), (17, 835210, 835263), (17, 918731, 918784), (17, 1002252, 1002305), (17, 1085773, 1085826), (17, 1169294, 1169347), (17, 1252815, 1252868), (17, 1336336, 1336389), (17, 1419857, 1419910), (17, 1419857, 1419910), (19, 781926, 781979), (19, 912247, 912300), (19, 1042568, 1042621), (19, 1172889, 1172942), (19, 1303210, 1303263), (19, 1433531, 1433584), (23, 839523, 839576), (23, 1119364, 1119417), (23, 1399205, 1399258), (29, 1414562, 1414615), (31, 923521, 923574), (37, 759795, 759848), (37, 810448, 810501), (37, 861101, 861154), (37, 911754, 911807), (37, 962407, 962460), (37, 1013060, 1013113), (41, 758131, 758184), (41, 827052, 827105), (41, 895973, 896026), (41, 964894, 964947), (41, 1033815, 1033868), (41, 1102736, 1102789), (41, 1171657, 1171710), (41, 1240578, 1240631), (41, 1309499, 1309552), (41, 1378420, 1378473), (43, 795070, 795123), (43, 874577, 874630), (43, 954084, 954137), (43, 1033591, 1033644), (43, 1113098, 1113151), (43, 1192605, 1192658), (43, 1272112, 1272165), (43, 1351619, 1351672), (43, 1431126, 1431179), (47, 830584, 830637), (47, 934407, 934460), (47, 1038230, 1038283), (47, 1142053, 1142106), (47, 1245876, 1245929), (47, 1349699, 1349752), (47, 1453522, 1453575), (53, 744385, 744438), (53, 893262, 893315), (53, 1042139, 1042192), (53, 1191016, 1191069), (53, 1339893, 1339946)]

def row054_layer008_block000 : List ColouredInterval :=
  [(2, 786432, 786485), (2, 917504, 917557), (2, 1048576, 1048629), (2, 1179648, 1179701), (2, 1310720, 1310773), (2, 786432, 786485), (2, 1048576, 1048629), (2, 1310720, 1310773), (2, 1048576, 1048629), (2, 1048576, 1048629), (5, 781250, 781303), (5, 859375, 859428), (5, 937500, 937553), (5, 1015625, 1015678), (5, 1093750, 1093803), (5, 1171875, 1171928)]

def row054_layer008_block001 : List ColouredInterval :=
  [(5, 1250000, 1250053), (5, 1328125, 1328178), (5, 1406250, 1406303), (5, 781250, 781303), (5, 1171875, 1171928), (7, 823543, 823596), (7, 941192, 941245), (7, 1058841, 1058894), (7, 1176490, 1176543), (7, 1294139, 1294192), (7, 1411788, 1411841), (7, 823543, 823596), (11, 805255, 805308), (11, 966306, 966359), (11, 1127357, 1127410), (11, 1288408, 1288461)]

def row054_layer008_block002 : List ColouredInterval :=
  [(11, 1449459, 1449512), (13, 742586, 742639), (13, 1113879, 1113932), (17, 751689, 751742), (17, 835210, 835263), (17, 918731, 918784), (17, 1002252, 1002305), (17, 1085773, 1085826), (17, 1169294, 1169347), (17, 1252815, 1252868), (17, 1336336, 1336389), (17, 1419857, 1419910), (17, 1419857, 1419910), (19, 781926, 781979), (19, 912247, 912300), (19, 1042568, 1042621)]

def row054_layer008_block003 : List ColouredInterval :=
  [(19, 1172889, 1172942), (19, 1303210, 1303263), (19, 1433531, 1433584), (23, 839523, 839576), (23, 1119364, 1119417), (23, 1399205, 1399258), (29, 1414562, 1414615), (31, 923521, 923574), (37, 759795, 759848), (37, 810448, 810501), (37, 861101, 861154), (37, 911754, 911807), (37, 962407, 962460), (37, 1013060, 1013113), (41, 758131, 758184), (41, 827052, 827105)]

def row054_layer008_block004 : List ColouredInterval :=
  [(41, 895973, 896026), (41, 964894, 964947), (41, 1033815, 1033868), (41, 1102736, 1102789), (41, 1171657, 1171710), (41, 1240578, 1240631), (41, 1309499, 1309552), (41, 1378420, 1378473), (43, 795070, 795123), (43, 874577, 874630), (43, 954084, 954137), (43, 1033591, 1033644), (43, 1113098, 1113151), (43, 1192605, 1192658), (43, 1272112, 1272165), (43, 1351619, 1351672)]

def row054_layer008_block005 : List ColouredInterval :=
  [(43, 1431126, 1431179), (47, 830584, 830637), (47, 934407, 934460), (47, 1038230, 1038283), (47, 1142053, 1142106), (47, 1245876, 1245929), (47, 1349699, 1349752), (47, 1453522, 1453575), (53, 744385, 744438), (53, 893262, 893315), (53, 1042139, 1042192), (53, 1191016, 1191069), (53, 1339893, 1339946)]

def row054_layer008_chunks : List (List ColouredInterval) :=
  [row054_layer008_block000, row054_layer008_block001, row054_layer008_block002, row054_layer008_block003, row054_layer008_block004, row054_layer008_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_arithmetic : LayerArithmeticValid row054.height { lower := 732672, upper := 1465344, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_enumeration :
    activePowerIntervalList 54 20 732672 1465344 = row054_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_pairs000 :
    row054_layer008_block000.all (fun I => row054_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_pairs001 :
    row054_layer008_block001.all (fun I => row054_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_pairs002 :
    row054_layer008_block002.all (fun I => row054_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_pairs003 :
    row054_layer008_block003.all (fun I => row054_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_pairs004 :
    row054_layer008_block004.all (fun I => row054_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row054_layer008_pairs005 :
    row054_layer008_block005.all (fun I => row054_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row054_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row054_layer008_pairs005
