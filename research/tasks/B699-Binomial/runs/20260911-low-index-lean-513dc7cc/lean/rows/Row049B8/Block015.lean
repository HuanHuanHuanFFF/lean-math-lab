import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block014
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_chunks_eq : row049_layer004_chunks.flatten = row049_layer004_intervals := by
  rfl

theorem row049_layer004_pairs : pairCoverCheck row049_layer004_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer004_chunks_eq
  intro block hblock
  simp only [row049_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer004_pairs000
  · exact row049_layer004_pairs001
  · exact row049_layer004_pairs002
  · exact row049_layer004_pairs003
  · exact row049_layer004_pairs004
  · exact row049_layer004_pairs005
  · exact row049_layer004_pairs006
  · exact row049_layer004_pairs007
  · exact row049_layer004_pairs008
  · exact row049_layer004_pairs009
  · exact row049_layer004_pairs010
  · exact row049_layer004_pairs011
  · exact row049_layer004_pairs012
  · exact row049_layer004_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer004_checked :
    coverLayerCheck row049.height row049.goods { lower := 37632, upper := 75264, M := 33 } = true := by
  exact coverLayerCheck_of_parts row049_layer004_arithmetic row049_layer004_enumeration row049_bounds_eq row049_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer005_intervals : List ColouredInterval :=
  [(2, 77824, 77872), (2, 81920, 81968), (2, 86016, 86064), (2, 90112, 90160), (2, 94208, 94256), (2, 98304, 98352), (2, 102400, 102448), (2, 106496, 106544), (2, 110592, 110640), (2, 114688, 114736), (2, 118784, 118832), (2, 122880, 122928), (2, 126976, 127024), (2, 81920, 81968), (2, 90112, 90160), (2, 98304, 98352), (2, 106496, 106544), (2, 114688, 114736), (2, 122880, 122928), (2, 131072, 131120), (2, 139264, 139312), (2, 147456, 147504), (2, 81920, 81968), (2, 98304, 98352), (2, 114688, 114736), (2, 131072, 131120), (2, 147456, 147504), (2, 98304, 98352), (2, 131072, 131120), (2, 131072, 131120), (2, 131072, 131120), (3, 78732, 78780), (3, 85293, 85341), (3, 91854, 91902), (3, 98415, 98463), (3, 104976, 105024), (3, 111537, 111585), (3, 118098, 118146), (3, 124659, 124707), (3, 131220, 131268), (3, 137781, 137829), (3, 144342, 144390), (3, 78732, 78780), (3, 98415, 98463), (3, 118098, 118146), (3, 137781, 137829), (3, 118098, 118146), (5, 78125, 78173), (5, 81250, 81298), (5, 84375, 84423), (5, 87500, 87548), (5, 90625, 90673), (5, 93750, 93798), (5, 96875, 96923), (5, 78125, 78173), (5, 93750, 93798), (5, 109375, 109423), (5, 125000, 125048), (5, 140625, 140673), (5, 78125, 78173), (11, 87846, 87894), (11, 102487, 102535), (11, 117128, 117176), (11, 131769, 131817), (11, 146410, 146458), (13, 85683, 85731), (13, 114244, 114292), (13, 142805, 142853), (17, 78608, 78656), (17, 83521, 83569), (17, 88434, 88482), (17, 93347, 93395), (17, 98260, 98308), (17, 103173, 103221), (17, 108086, 108134), (17, 112999, 113047), (17, 117912, 117960), (17, 122825, 122873), (17, 127738, 127786), (17, 132651, 132699), (17, 137564, 137612), (17, 142477, 142525), (17, 147390, 147438), (17, 83521, 83569), (19, 75449, 75497), (19, 82308, 82356), (19, 89167, 89215), (19, 96026, 96074), (19, 102885, 102933), (19, 109744, 109792), (19, 116603, 116651), (19, 123462, 123510), (19, 130321, 130369), (19, 137180, 137228), (19, 144039, 144087), (19, 130321, 130369), (23, 85169, 85217), (23, 97336, 97384), (23, 109503, 109551), (23, 121670, 121718), (23, 133837, 133885), (23, 146004, 146052), (29, 97556, 97604), (29, 121945, 121993), (29, 146334, 146382), (31, 89373, 89421), (31, 119164, 119212), (31, 148955, 149003), (37, 101306, 101354), (41, 137842, 137890), (43, 79507, 79555), (47, 103823, 103871)]

def row049_layer005_block000 : List ColouredInterval :=
  [(2, 77824, 77872), (2, 81920, 81968), (2, 86016, 86064), (2, 90112, 90160), (2, 94208, 94256), (2, 98304, 98352), (2, 102400, 102448), (2, 106496, 106544), (2, 110592, 110640), (2, 114688, 114736), (2, 118784, 118832), (2, 122880, 122928), (2, 126976, 127024), (2, 81920, 81968), (2, 90112, 90160), (2, 98304, 98352)]

def row049_layer005_block001 : List ColouredInterval :=
  [(2, 106496, 106544), (2, 114688, 114736), (2, 122880, 122928), (2, 131072, 131120), (2, 139264, 139312), (2, 147456, 147504), (2, 81920, 81968), (2, 98304, 98352), (2, 114688, 114736), (2, 131072, 131120), (2, 147456, 147504), (2, 98304, 98352), (2, 131072, 131120), (2, 131072, 131120), (2, 131072, 131120), (3, 78732, 78780)]

def row049_layer005_block002 : List ColouredInterval :=
  [(3, 85293, 85341), (3, 91854, 91902), (3, 98415, 98463), (3, 104976, 105024), (3, 111537, 111585), (3, 118098, 118146), (3, 124659, 124707), (3, 131220, 131268), (3, 137781, 137829), (3, 144342, 144390), (3, 78732, 78780), (3, 98415, 98463), (3, 118098, 118146), (3, 137781, 137829), (3, 118098, 118146), (5, 78125, 78173)]

def row049_layer005_block003 : List ColouredInterval :=
  [(5, 81250, 81298), (5, 84375, 84423), (5, 87500, 87548), (5, 90625, 90673), (5, 93750, 93798), (5, 96875, 96923), (5, 78125, 78173), (5, 93750, 93798), (5, 109375, 109423), (5, 125000, 125048), (5, 140625, 140673), (5, 78125, 78173), (11, 87846, 87894), (11, 102487, 102535), (11, 117128, 117176), (11, 131769, 131817)]

def row049_layer005_block004 : List ColouredInterval :=
  [(11, 146410, 146458), (13, 85683, 85731), (13, 114244, 114292), (13, 142805, 142853), (17, 78608, 78656), (17, 83521, 83569), (17, 88434, 88482), (17, 93347, 93395), (17, 98260, 98308), (17, 103173, 103221), (17, 108086, 108134), (17, 112999, 113047), (17, 117912, 117960), (17, 122825, 122873), (17, 127738, 127786), (17, 132651, 132699)]

def row049_layer005_block005 : List ColouredInterval :=
  [(17, 137564, 137612), (17, 142477, 142525), (17, 147390, 147438), (17, 83521, 83569), (19, 75449, 75497), (19, 82308, 82356), (19, 89167, 89215), (19, 96026, 96074), (19, 102885, 102933), (19, 109744, 109792), (19, 116603, 116651), (19, 123462, 123510), (19, 130321, 130369), (19, 137180, 137228), (19, 144039, 144087), (19, 130321, 130369)]

def row049_layer005_block006 : List ColouredInterval :=
  [(23, 85169, 85217), (23, 97336, 97384), (23, 109503, 109551), (23, 121670, 121718), (23, 133837, 133885), (23, 146004, 146052), (29, 97556, 97604), (29, 121945, 121993), (29, 146334, 146382), (31, 89373, 89421), (31, 119164, 119212), (31, 148955, 149003), (37, 101306, 101354), (41, 137842, 137890), (43, 79507, 79555), (47, 103823, 103871)]

def row049_layer005_chunks : List (List ColouredInterval) :=
  [row049_layer005_block000, row049_layer005_block001, row049_layer005_block002, row049_layer005_block003, row049_layer005_block004, row049_layer005_block005, row049_layer005_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_arithmetic : LayerArithmeticValid row049.height { lower := 75264, upper := 150528, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_enumeration :
    activePowerIntervalList 49 31 75264 150528 = row049_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs000 :
    row049_layer005_block000.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs001 :
    row049_layer005_block001.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs002 :
    row049_layer005_block002.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs002
