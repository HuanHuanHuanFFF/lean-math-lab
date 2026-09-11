import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row063B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_arithmetic : LayerArithmeticValid row063.height { lower := 31248, upper := 62496, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_enumeration :
    activePowerIntervalList 63 24 31248 62496 = row063_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs000 :
    row063_layer003_block000.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs001 :
    row063_layer003_block001.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs002 :
    row063_layer003_block002.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs003 :
    row063_layer003_block003.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs004 :
    row063_layer003_block004.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs005 :
    row063_layer003_block005.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs006 :
    row063_layer003_block006.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_pairs007 :
    row063_layer003_block007.all (fun I => row063_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_chunks_eq : row063_layer003_chunks.flatten = row063_layer003_intervals := by
  rfl

theorem row063_layer003_pairs : pairCoverCheck row063_layer003_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer003_chunks_eq
  intro block hblock
  simp only [row063_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row063_layer003_pairs000
  · exact row063_layer003_pairs001
  · exact row063_layer003_pairs002
  · exact row063_layer003_pairs003
  · exact row063_layer003_pairs004
  · exact row063_layer003_pairs005
  · exact row063_layer003_pairs006
  · exact row063_layer003_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer003_checked :
    coverLayerCheck row063.height row063.goods { lower := 31248, upper := 62496, M := 24 } = true := by
  exact coverLayerCheck_of_parts row063_layer003_arithmetic row063_layer003_enumeration row063_bounds_eq row063_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer004_intervals : List ColouredInterval :=
  [(2, 65536, 65598), (2, 69632, 69694), (2, 73728, 73790), (2, 77824, 77886), (2, 81920, 81982), (2, 86016, 86078), (2, 90112, 90174), (2, 65536, 65598), (2, 73728, 73790), (2, 81920, 81982), (2, 90112, 90174), (2, 98304, 98366), (2, 106496, 106558), (2, 114688, 114750), (2, 122880, 122942), (2, 65536, 65598), (2, 81920, 81982), (2, 98304, 98366), (2, 114688, 114750), (2, 65536, 65598), (2, 98304, 98366), (2, 65536, 65598), (3, 118098, 118160), (5, 62500, 62562), (5, 65625, 65687), (5, 68750, 68812), (5, 62500, 62562), (5, 78125, 78187), (5, 93750, 93812), (5, 109375, 109437), (5, 78125, 78187), (7, 117649, 117711), (11, 73205, 73267), (11, 87846, 87908), (11, 102487, 102549), (11, 117128, 117190), (13, 85683, 85745), (13, 114244, 114306), (17, 63869, 63931), (17, 68782, 68844), (17, 73695, 73757), (17, 78608, 78670), (17, 83521, 83583), (17, 88434, 88496), (17, 93347, 93409), (17, 98260, 98322), (17, 103173, 103235), (17, 108086, 108148), (17, 83521, 83583), (19, 68590, 68652), (19, 75449, 75511), (19, 82308, 82370), (19, 89167, 89229), (19, 96026, 96088), (19, 102885, 102947), (19, 109744, 109806), (19, 116603, 116665), (19, 123462, 123524), (23, 73002, 73064), (23, 85169, 85231), (23, 97336, 97398), (23, 109503, 109565), (23, 121670, 121732), (29, 73167, 73229), (29, 97556, 97618), (29, 121945, 122007), (31, 89373, 89435), (31, 119164, 119226), (37, 101306, 101368), (41, 68921, 68983), (43, 79507, 79569), (47, 103823, 103885), (59, 62658, 62720), (59, 66139, 66201), (59, 69620, 69682), (59, 73101, 73163), (59, 76582, 76644), (61, 63257, 63319), (61, 66978, 67040), (61, 70699, 70761), (61, 74420, 74482), (61, 78141, 78203), (61, 81862, 81924)]

def row063_layer004_block000 : List ColouredInterval :=
  [(2, 65536, 65598), (2, 69632, 69694), (2, 73728, 73790), (2, 77824, 77886), (2, 81920, 81982), (2, 86016, 86078), (2, 90112, 90174), (2, 65536, 65598), (2, 73728, 73790), (2, 81920, 81982), (2, 90112, 90174), (2, 98304, 98366), (2, 106496, 106558), (2, 114688, 114750), (2, 122880, 122942), (2, 65536, 65598)]

def row063_layer004_block001 : List ColouredInterval :=
  [(2, 81920, 81982), (2, 98304, 98366), (2, 114688, 114750), (2, 65536, 65598), (2, 98304, 98366), (2, 65536, 65598), (3, 118098, 118160), (5, 62500, 62562), (5, 65625, 65687), (5, 68750, 68812), (5, 62500, 62562), (5, 78125, 78187), (5, 93750, 93812), (5, 109375, 109437), (5, 78125, 78187), (7, 117649, 117711)]

def row063_layer004_block002 : List ColouredInterval :=
  [(11, 73205, 73267), (11, 87846, 87908), (11, 102487, 102549), (11, 117128, 117190), (13, 85683, 85745), (13, 114244, 114306), (17, 63869, 63931), (17, 68782, 68844), (17, 73695, 73757), (17, 78608, 78670), (17, 83521, 83583), (17, 88434, 88496), (17, 93347, 93409), (17, 98260, 98322), (17, 103173, 103235), (17, 108086, 108148)]

def row063_layer004_block003 : List ColouredInterval :=
  [(17, 83521, 83583), (19, 68590, 68652), (19, 75449, 75511), (19, 82308, 82370), (19, 89167, 89229), (19, 96026, 96088), (19, 102885, 102947), (19, 109744, 109806), (19, 116603, 116665), (19, 123462, 123524), (23, 73002, 73064), (23, 85169, 85231), (23, 97336, 97398), (23, 109503, 109565), (23, 121670, 121732), (29, 73167, 73229)]

def row063_layer004_block004 : List ColouredInterval :=
  [(29, 97556, 97618), (29, 121945, 122007), (31, 89373, 89435), (31, 119164, 119226), (37, 101306, 101368), (41, 68921, 68983), (43, 79507, 79569), (47, 103823, 103885), (59, 62658, 62720), (59, 66139, 66201), (59, 69620, 69682), (59, 73101, 73163), (59, 76582, 76644), (61, 63257, 63319), (61, 66978, 67040), (61, 70699, 70761)]

def row063_layer004_block005 : List ColouredInterval :=
  [(61, 74420, 74482), (61, 78141, 78203), (61, 81862, 81924)]

def row063_layer004_chunks : List (List ColouredInterval) :=
  [row063_layer004_block000, row063_layer004_block001, row063_layer004_block002, row063_layer004_block003, row063_layer004_block004, row063_layer004_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_arithmetic : LayerArithmeticValid row063.height { lower := 62496, upper := 124992, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_enumeration :
    activePowerIntervalList 63 22 62496 124992 = row063_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_pairs000 :
    row063_layer004_block000.all (fun I => row063_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_pairs001 :
    row063_layer004_block001.all (fun I => row063_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_pairs002 :
    row063_layer004_block002.all (fun I => row063_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_pairs003 :
    row063_layer004_block003.all (fun I => row063_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_pairs004 :
    row063_layer004_block004.all (fun I => row063_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_pairs005 :
    row063_layer004_block005.all (fun I => row063_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_chunks_eq : row063_layer004_chunks.flatten = row063_layer004_intervals := by
  rfl

theorem row063_layer004_pairs : pairCoverCheck row063_layer004_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer004_chunks_eq
  intro block hblock
  simp only [row063_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row063_layer004_pairs000
  · exact row063_layer004_pairs001
  · exact row063_layer004_pairs002
  · exact row063_layer004_pairs003
  · exact row063_layer004_pairs004
  · exact row063_layer004_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer004_checked :
    coverLayerCheck row063.height row063.goods { lower := 62496, upper := 124992, M := 22 } = true := by
  exact coverLayerCheck_of_parts row063_layer004_arithmetic row063_layer004_enumeration row063_bounds_eq row063_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer005_intervals : List ColouredInterval :=
  [(2, 131072, 131134), (2, 139264, 139326), (2, 147456, 147518), (2, 155648, 155710), (2, 163840, 163902), (2, 131072, 131134), (2, 147456, 147518), (2, 163840, 163902), (2, 180224, 180286), (2, 196608, 196670), (2, 212992, 213054), (2, 229376, 229438), (2, 245760, 245822), (2, 131072, 131134), (2, 163840, 163902), (2, 196608, 196670), (2, 229376, 229438), (2, 131072, 131134), (2, 196608, 196670), (2, 131072, 131134), (3, 177147, 177209), (5, 125000, 125062), (5, 140625, 140687), (5, 156250, 156312), (5, 171875, 171937), (5, 187500, 187562), (5, 203125, 203187), (5, 218750, 218812), (5, 234375, 234437), (5, 156250, 156312), (5, 234375, 234437), (7, 235298, 235360), (11, 131769, 131831), (11, 146410, 146472), (11, 161051, 161113), (11, 175692, 175754), (11, 190333, 190395), (11, 204974, 205036), (11, 219615, 219677), (11, 234256, 234318), (11, 248897, 248959), (11, 161051, 161113), (13, 142805, 142867), (13, 171366, 171428), (13, 199927, 199989), (13, 228488, 228550), (17, 167042, 167104), (19, 130321, 130383), (19, 137180, 137242), (19, 130321, 130383), (23, 133837, 133899), (23, 146004, 146066), (23, 158171, 158233), (23, 170338, 170400), (23, 182505, 182567), (23, 194672, 194734), (23, 206839, 206901), (23, 219006, 219068), (23, 231173, 231235), (23, 243340, 243402), (29, 146334, 146396), (29, 170723, 170785), (29, 195112, 195174), (29, 219501, 219563), (29, 243890, 243952), (31, 148955, 149017), (31, 178746, 178808), (31, 208537, 208599), (31, 238328, 238390), (37, 151959, 152021), (37, 202612, 202674), (41, 137842, 137904), (41, 206763, 206825), (43, 159014, 159076), (43, 238521, 238583), (47, 207646, 207708), (53, 148877, 148939), (59, 205379, 205441), (61, 226981, 227043)]

def row063_layer005_block000 : List ColouredInterval :=
  [(2, 131072, 131134), (2, 139264, 139326), (2, 147456, 147518), (2, 155648, 155710), (2, 163840, 163902), (2, 131072, 131134), (2, 147456, 147518), (2, 163840, 163902), (2, 180224, 180286), (2, 196608, 196670), (2, 212992, 213054), (2, 229376, 229438), (2, 245760, 245822), (2, 131072, 131134), (2, 163840, 163902), (2, 196608, 196670)]

def row063_layer005_block001 : List ColouredInterval :=
  [(2, 229376, 229438), (2, 131072, 131134), (2, 196608, 196670), (2, 131072, 131134), (3, 177147, 177209), (5, 125000, 125062), (5, 140625, 140687), (5, 156250, 156312), (5, 171875, 171937), (5, 187500, 187562), (5, 203125, 203187), (5, 218750, 218812), (5, 234375, 234437), (5, 156250, 156312), (5, 234375, 234437), (7, 235298, 235360)]

def row063_layer005_block002 : List ColouredInterval :=
  [(11, 131769, 131831), (11, 146410, 146472), (11, 161051, 161113), (11, 175692, 175754), (11, 190333, 190395), (11, 204974, 205036), (11, 219615, 219677), (11, 234256, 234318), (11, 248897, 248959), (11, 161051, 161113), (13, 142805, 142867), (13, 171366, 171428), (13, 199927, 199989), (13, 228488, 228550), (17, 167042, 167104), (19, 130321, 130383)]

def row063_layer005_block003 : List ColouredInterval :=
  [(19, 137180, 137242), (19, 130321, 130383), (23, 133837, 133899), (23, 146004, 146066), (23, 158171, 158233), (23, 170338, 170400), (23, 182505, 182567), (23, 194672, 194734), (23, 206839, 206901), (23, 219006, 219068), (23, 231173, 231235), (23, 243340, 243402), (29, 146334, 146396), (29, 170723, 170785), (29, 195112, 195174), (29, 219501, 219563)]

def row063_layer005_block004 : List ColouredInterval :=
  [(29, 243890, 243952), (31, 148955, 149017), (31, 178746, 178808), (31, 208537, 208599), (31, 238328, 238390), (37, 151959, 152021), (37, 202612, 202674), (41, 137842, 137904), (41, 206763, 206825), (43, 159014, 159076), (43, 238521, 238583), (47, 207646, 207708), (53, 148877, 148939), (59, 205379, 205441), (61, 226981, 227043)]

def row063_layer005_chunks : List (List ColouredInterval) :=
  [row063_layer005_block000, row063_layer005_block001, row063_layer005_block002, row063_layer005_block003, row063_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_arithmetic : LayerArithmeticValid row063.height { lower := 124992, upper := 249984, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_enumeration :
    activePowerIntervalList 63 20 124992 249984 = row063_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_pairs000 :
    row063_layer005_block000.all (fun I => row063_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_pairs001 :
    row063_layer005_block001.all (fun I => row063_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_pairs002 :
    row063_layer005_block002.all (fun I => row063_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_pairs003 :
    row063_layer005_block003.all (fun I => row063_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_pairs004 :
    row063_layer005_block004.all (fun I => row063_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_chunks_eq : row063_layer005_chunks.flatten = row063_layer005_intervals := by
  rfl

theorem row063_layer005_pairs : pairCoverCheck row063_layer005_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer005_chunks_eq
  intro block hblock
  simp only [row063_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row063_layer005_pairs000
  · exact row063_layer005_pairs001
  · exact row063_layer005_pairs002
  · exact row063_layer005_pairs003
  · exact row063_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer005_checked :
    coverLayerCheck row063.height row063.goods { lower := 124992, upper := 249984, M := 20 } = true := by
  exact coverLayerCheck_of_parts row063_layer005_arithmetic row063_layer005_enumeration row063_bounds_eq row063_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer006_intervals : List ColouredInterval :=
  [(2, 262144, 262206), (2, 278528, 278590), (2, 294912, 294974), (2, 262144, 262206), (2, 294912, 294974), (2, 327680, 327742), (2, 360448, 360510), (2, 393216, 393278), (2, 425984, 426046), (2, 458752, 458814), (2, 491520, 491582), (2, 262144, 262206), (2, 327680, 327742), (2, 393216, 393278), (2, 458752, 458814), (2, 262144, 262206), (2, 393216, 393278), (2, 262144, 262206), (3, 354294, 354356), (5, 250000, 250062), (5, 265625, 265687), (5, 281250, 281312), (5, 312500, 312562), (5, 390625, 390687), (5, 468750, 468812), (5, 390625, 390687), (11, 263538, 263600), (11, 322102, 322164), (11, 483153, 483215), (13, 257049, 257111), (13, 285610, 285672), (13, 314171, 314233), (13, 342732, 342794), (13, 371293, 371355), (13, 399854, 399916), (13, 428415, 428477), (13, 456976, 457038), (13, 485537, 485599), (13, 371293, 371355), (17, 250563, 250625), (17, 334084, 334146), (17, 417605, 417667), (19, 260642, 260704), (19, 390963, 391025), (23, 279841, 279903), (29, 268279, 268341), (29, 292668, 292730), (29, 317057, 317119), (29, 341446, 341508), (29, 365835, 365897), (29, 390224, 390286), (29, 414613, 414675), (29, 439002, 439064), (31, 268119, 268181), (31, 297910, 297972), (31, 327701, 327763), (31, 357492, 357554), (31, 387283, 387345), (31, 417074, 417136), (31, 446865, 446927), (31, 476656, 476718), (37, 253265, 253327), (37, 303918, 303980), (37, 354571, 354633), (37, 405224, 405286), (37, 455877, 455939), (41, 275684, 275746), (41, 344605, 344667), (41, 413526, 413588), (41, 482447, 482509), (43, 318028, 318090), (43, 397535, 397597), (43, 477042, 477104), (47, 311469, 311531), (47, 415292, 415354), (53, 297754, 297816), (53, 446631, 446693), (59, 410758, 410820), (61, 453962, 454024)]

def row063_layer006_block000 : List ColouredInterval :=
  [(2, 262144, 262206), (2, 278528, 278590), (2, 294912, 294974), (2, 262144, 262206), (2, 294912, 294974), (2, 327680, 327742), (2, 360448, 360510), (2, 393216, 393278), (2, 425984, 426046), (2, 458752, 458814), (2, 491520, 491582), (2, 262144, 262206), (2, 327680, 327742), (2, 393216, 393278), (2, 458752, 458814), (2, 262144, 262206)]

def row063_layer006_block001 : List ColouredInterval :=
  [(2, 393216, 393278), (2, 262144, 262206), (3, 354294, 354356), (5, 250000, 250062), (5, 265625, 265687), (5, 281250, 281312), (5, 312500, 312562), (5, 390625, 390687), (5, 468750, 468812), (5, 390625, 390687), (11, 263538, 263600), (11, 322102, 322164), (11, 483153, 483215), (13, 257049, 257111), (13, 285610, 285672), (13, 314171, 314233)]

def row063_layer006_block002 : List ColouredInterval :=
  [(13, 342732, 342794), (13, 371293, 371355), (13, 399854, 399916), (13, 428415, 428477), (13, 456976, 457038), (13, 485537, 485599), (13, 371293, 371355), (17, 250563, 250625), (17, 334084, 334146), (17, 417605, 417667), (19, 260642, 260704), (19, 390963, 391025), (23, 279841, 279903), (29, 268279, 268341), (29, 292668, 292730), (29, 317057, 317119)]

def row063_layer006_block003 : List ColouredInterval :=
  [(29, 341446, 341508), (29, 365835, 365897), (29, 390224, 390286), (29, 414613, 414675), (29, 439002, 439064), (31, 268119, 268181), (31, 297910, 297972), (31, 327701, 327763), (31, 357492, 357554), (31, 387283, 387345), (31, 417074, 417136), (31, 446865, 446927), (31, 476656, 476718), (37, 253265, 253327), (37, 303918, 303980), (37, 354571, 354633)]

def row063_layer006_block004 : List ColouredInterval :=
  [(37, 405224, 405286), (37, 455877, 455939), (41, 275684, 275746), (41, 344605, 344667), (41, 413526, 413588), (41, 482447, 482509), (43, 318028, 318090), (43, 397535, 397597), (43, 477042, 477104), (47, 311469, 311531), (47, 415292, 415354), (53, 297754, 297816), (53, 446631, 446693), (59, 410758, 410820), (61, 453962, 454024)]

def row063_layer006_chunks : List (List ColouredInterval) :=
  [row063_layer006_block000, row063_layer006_block001, row063_layer006_block002, row063_layer006_block003, row063_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_arithmetic : LayerArithmeticValid row063.height { lower := 249984, upper := 499968, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_enumeration :
    activePowerIntervalList 63 18 249984 499968 = row063_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_pairs000 :
    row063_layer006_block000.all (fun I => row063_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_pairs001 :
    row063_layer006_block001.all (fun I => row063_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_pairs002 :
    row063_layer006_block002.all (fun I => row063_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_pairs003 :
    row063_layer006_block003.all (fun I => row063_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_pairs004 :
    row063_layer006_block004.all (fun I => row063_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_chunks_eq : row063_layer006_chunks.flatten = row063_layer006_intervals := by
  rfl

theorem row063_layer006_pairs : pairCoverCheck row063_layer006_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer006_chunks_eq
  intro block hblock
  simp only [row063_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row063_layer006_pairs000
  · exact row063_layer006_pairs001
  · exact row063_layer006_pairs002
  · exact row063_layer006_pairs003
  · exact row063_layer006_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer006_checked :
    coverLayerCheck row063.height row063.goods { lower := 249984, upper := 499968, M := 18 } = true := by
  exact coverLayerCheck_of_parts row063_layer006_arithmetic row063_layer006_enumeration row063_bounds_eq row063_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer007_intervals : List ColouredInterval :=
  [(2, 524288, 524350), (2, 524288, 524350), (2, 589824, 589886), (2, 655360, 655422), (2, 720896, 720958), (2, 786432, 786494), (2, 851968, 852030), (2, 917504, 917566), (2, 983040, 983102), (2, 524288, 524350), (2, 655360, 655422), (2, 786432, 786494), (2, 917504, 917566), (2, 524288, 524350), (2, 786432, 786494), (2, 524288, 524350), (3, 531441, 531503), (5, 546875, 546937), (5, 625000, 625062), (5, 703125, 703187), (5, 781250, 781312), (5, 859375, 859437), (5, 937500, 937562), (5, 781250, 781312), (7, 823543, 823605), (11, 644204, 644266), (11, 805255, 805317), (11, 966306, 966368), (13, 742586, 742648), (17, 501126, 501188), (17, 584647, 584709), (17, 668168, 668230), (17, 751689, 751751), (17, 835210, 835272), (17, 918731, 918793), (19, 521284, 521346), (19, 651605, 651667), (19, 781926, 781988), (19, 912247, 912309), (23, 559682, 559744), (23, 839523, 839585), (29, 707281, 707343), (31, 923521, 923583), (37, 506530, 506592), (37, 557183, 557245), (37, 607836, 607898), (37, 658489, 658551), (37, 709142, 709204), (37, 759795, 759857), (37, 810448, 810510), (41, 551368, 551430), (41, 620289, 620351), (41, 689210, 689272), (41, 758131, 758193), (41, 827052, 827114), (41, 895973, 896035), (41, 964894, 964956), (43, 556549, 556611), (43, 636056, 636118), (43, 715563, 715625), (43, 795070, 795132), (43, 874577, 874639), (43, 954084, 954146), (47, 519115, 519177), (47, 622938, 623000), (47, 726761, 726823), (47, 830584, 830646), (47, 934407, 934469), (53, 595508, 595570), (53, 744385, 744447), (53, 893262, 893324), (59, 616137, 616199), (59, 821516, 821578), (61, 680943, 681005), (61, 907924, 907986)]

def row063_layer007_block000 : List ColouredInterval :=
  [(2, 524288, 524350), (2, 524288, 524350), (2, 589824, 589886), (2, 655360, 655422), (2, 720896, 720958), (2, 786432, 786494), (2, 851968, 852030), (2, 917504, 917566), (2, 983040, 983102), (2, 524288, 524350), (2, 655360, 655422), (2, 786432, 786494), (2, 917504, 917566), (2, 524288, 524350), (2, 786432, 786494), (2, 524288, 524350)]

def row063_layer007_block001 : List ColouredInterval :=
  [(3, 531441, 531503), (5, 546875, 546937), (5, 625000, 625062), (5, 703125, 703187), (5, 781250, 781312), (5, 859375, 859437), (5, 937500, 937562), (5, 781250, 781312), (7, 823543, 823605), (11, 644204, 644266), (11, 805255, 805317), (11, 966306, 966368), (13, 742586, 742648), (17, 501126, 501188), (17, 584647, 584709), (17, 668168, 668230)]

def row063_layer007_block002 : List ColouredInterval :=
  [(17, 751689, 751751), (17, 835210, 835272), (17, 918731, 918793), (19, 521284, 521346), (19, 651605, 651667), (19, 781926, 781988), (19, 912247, 912309), (23, 559682, 559744), (23, 839523, 839585), (29, 707281, 707343), (31, 923521, 923583), (37, 506530, 506592), (37, 557183, 557245), (37, 607836, 607898), (37, 658489, 658551), (37, 709142, 709204)]

def row063_layer007_block003 : List ColouredInterval :=
  [(37, 759795, 759857), (37, 810448, 810510), (41, 551368, 551430), (41, 620289, 620351), (41, 689210, 689272), (41, 758131, 758193), (41, 827052, 827114), (41, 895973, 896035), (41, 964894, 964956), (43, 556549, 556611), (43, 636056, 636118), (43, 715563, 715625), (43, 795070, 795132), (43, 874577, 874639), (43, 954084, 954146), (47, 519115, 519177)]

def row063_layer007_block004 : List ColouredInterval :=
  [(47, 622938, 623000), (47, 726761, 726823), (47, 830584, 830646), (47, 934407, 934469), (53, 595508, 595570), (53, 744385, 744447), (53, 893262, 893324), (59, 616137, 616199), (59, 821516, 821578), (61, 680943, 681005), (61, 907924, 907986)]

def row063_layer007_chunks : List (List ColouredInterval) :=
  [row063_layer007_block000, row063_layer007_block001, row063_layer007_block002, row063_layer007_block003, row063_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_arithmetic : LayerArithmeticValid row063.height { lower := 499968, upper := 999936, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_enumeration :
    activePowerIntervalList 63 16 499968 999936 = row063_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_pairs000 :
    row063_layer007_block000.all (fun I => row063_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_pairs001 :
    row063_layer007_block001.all (fun I => row063_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_pairs002 :
    row063_layer007_block002.all (fun I => row063_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_pairs003 :
    row063_layer007_block003.all (fun I => row063_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_pairs004 :
    row063_layer007_block004.all (fun I => row063_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_chunks_eq : row063_layer007_chunks.flatten = row063_layer007_intervals := by
  rfl

theorem row063_layer007_pairs : pairCoverCheck row063_layer007_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer007_chunks_eq
  intro block hblock
  simp only [row063_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row063_layer007_pairs000
  · exact row063_layer007_pairs001
  · exact row063_layer007_pairs002
  · exact row063_layer007_pairs003
  · exact row063_layer007_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer007_checked :
    coverLayerCheck row063.height row063.goods { lower := 499968, upper := 999936, M := 16 } = true := by
  exact coverLayerCheck_of_parts row063_layer007_arithmetic row063_layer007_enumeration row063_bounds_eq row063_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row063_layer008_intervals : List ColouredInterval :=
  [(2, 1048576, 1048638), (2, 1179648, 1179710), (2, 1310720, 1310782), (2, 1441792, 1441854), (2, 1572864, 1572926), (2, 1703936, 1703998), (2, 1835008, 1835070), (2, 1048576, 1048638), (2, 1310720, 1310782), (2, 1572864, 1572926), (2, 1835008, 1835070), (2, 1048576, 1048638), (2, 1572864, 1572926), (2, 1048576, 1048638), (3, 1594323, 1594385), (5, 1015625, 1015687), (5, 1093750, 1093812), (5, 1171875, 1171937), (5, 1562500, 1562562), (5, 1953125, 1953187), (5, 1953125, 1953187), (7, 1647086, 1647148), (11, 1127357, 1127419), (11, 1288408, 1288470), (11, 1449459, 1449521), (11, 1610510, 1610572), (11, 1771561, 1771623), (11, 1932612, 1932674), (11, 1771561, 1771623), (13, 1113879, 1113941), (13, 1485172, 1485234), (13, 1856465, 1856527), (17, 1002252, 1002314), (17, 1085773, 1085835), (17, 1169294, 1169356), (17, 1419857, 1419919), (19, 1042568, 1042630), (19, 1172889, 1172951), (19, 1303210, 1303272), (19, 1433531, 1433593), (19, 1563852, 1563914), (19, 1694173, 1694235), (19, 1824494, 1824556), (23, 1119364, 1119426), (23, 1399205, 1399267), (23, 1679046, 1679108), (23, 1958887, 1958949), (29, 1414562, 1414624), (31, 1847042, 1847104), (37, 1874161, 1874223), (43, 1033591, 1033653), (43, 1113098, 1113160), (47, 1038230, 1038292), (47, 1142053, 1142115), (47, 1245876, 1245938), (47, 1349699, 1349761), (47, 1453522, 1453584), (53, 1042139, 1042201), (53, 1191016, 1191078), (53, 1339893, 1339955), (53, 1488770, 1488832), (53, 1637647, 1637709), (53, 1786524, 1786586), (53, 1935401, 1935463), (59, 1026895, 1026957), (59, 1232274, 1232336), (59, 1437653, 1437715), (59, 1643032, 1643094), (59, 1848411, 1848473), (61, 1134905, 1134967), (61, 1361886, 1361948), (61, 1588867, 1588929), (61, 1815848, 1815910)]

def row063_layer008_block000 : List ColouredInterval :=
  [(2, 1048576, 1048638), (2, 1179648, 1179710), (2, 1310720, 1310782), (2, 1441792, 1441854), (2, 1572864, 1572926), (2, 1703936, 1703998), (2, 1835008, 1835070), (2, 1048576, 1048638), (2, 1310720, 1310782), (2, 1572864, 1572926), (2, 1835008, 1835070), (2, 1048576, 1048638), (2, 1572864, 1572926), (2, 1048576, 1048638), (3, 1594323, 1594385), (5, 1015625, 1015687)]

def row063_layer008_block001 : List ColouredInterval :=
  [(5, 1093750, 1093812), (5, 1171875, 1171937), (5, 1562500, 1562562), (5, 1953125, 1953187), (5, 1953125, 1953187), (7, 1647086, 1647148), (11, 1127357, 1127419), (11, 1288408, 1288470), (11, 1449459, 1449521), (11, 1610510, 1610572), (11, 1771561, 1771623), (11, 1932612, 1932674), (11, 1771561, 1771623), (13, 1113879, 1113941), (13, 1485172, 1485234), (13, 1856465, 1856527)]

def row063_layer008_block002 : List ColouredInterval :=
  [(17, 1002252, 1002314), (17, 1085773, 1085835), (17, 1169294, 1169356), (17, 1419857, 1419919), (19, 1042568, 1042630), (19, 1172889, 1172951), (19, 1303210, 1303272), (19, 1433531, 1433593), (19, 1563852, 1563914), (19, 1694173, 1694235), (19, 1824494, 1824556), (23, 1119364, 1119426), (23, 1399205, 1399267), (23, 1679046, 1679108), (23, 1958887, 1958949), (29, 1414562, 1414624)]

def row063_layer008_block003 : List ColouredInterval :=
  [(31, 1847042, 1847104), (37, 1874161, 1874223), (43, 1033591, 1033653), (43, 1113098, 1113160), (47, 1038230, 1038292), (47, 1142053, 1142115), (47, 1245876, 1245938), (47, 1349699, 1349761), (47, 1453522, 1453584), (53, 1042139, 1042201), (53, 1191016, 1191078), (53, 1339893, 1339955), (53, 1488770, 1488832), (53, 1637647, 1637709), (53, 1786524, 1786586), (53, 1935401, 1935463)]

def row063_layer008_block004 : List ColouredInterval :=
  [(59, 1026895, 1026957), (59, 1232274, 1232336), (59, 1437653, 1437715), (59, 1643032, 1643094), (59, 1848411, 1848473), (61, 1134905, 1134967), (61, 1361886, 1361948), (61, 1588867, 1588929), (61, 1815848, 1815910)]

def row063_layer008_chunks : List (List ColouredInterval) :=
  [row063_layer008_block000, row063_layer008_block001, row063_layer008_block002, row063_layer008_block003, row063_layer008_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_arithmetic : LayerArithmeticValid row063.height { lower := 999936, upper := 1999872, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_enumeration :
    activePowerIntervalList 63 14 999936 1999872 = row063_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_pairs000 :
    row063_layer008_block000.all (fun I => row063_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_pairs001 :
    row063_layer008_block001.all (fun I => row063_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_pairs002 :
    row063_layer008_block002.all (fun I => row063_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_pairs003 :
    row063_layer008_block003.all (fun I => row063_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_pairs004 :
    row063_layer008_block004.all (fun I => row063_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row063_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row063_layer008_chunks_eq : row063_layer008_chunks.flatten = row063_layer008_intervals := by
  rfl

theorem row063_layer008_pairs : pairCoverCheck row063_layer008_intervals row063_bounds = true := by
  apply pairCoverCheck_of_chunks row063_layer008_chunks_eq
  intro block hblock
  simp only [row063_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row063_layer008_pairs000
  · exact row063_layer008_pairs001
  · exact row063_layer008_pairs002
  · exact row063_layer008_pairs003
  · exact row063_layer008_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row063_layer008_pairs
