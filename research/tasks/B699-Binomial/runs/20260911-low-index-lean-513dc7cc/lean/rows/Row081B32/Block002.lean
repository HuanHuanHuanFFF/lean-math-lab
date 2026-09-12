import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs008 :
    row081_layer002_block008.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs009 :
    row081_layer002_block009.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs010 :
    row081_layer002_block010.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_pairs011 :
    row081_layer002_block011.all (fun I => row081_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_chunks_eq : row081_layer002_chunks.flatten = row081_layer002_intervals := by
  rfl

theorem row081_layer002_pairs : pairCoverCheck row081_layer002_intervals row081_bounds = true := by
  apply pairCoverCheck_of_chunks row081_layer002_chunks_eq
  intro block hblock
  simp only [row081_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row081_layer002_pairs000
  · exact row081_layer002_pairs001
  · exact row081_layer002_pairs002
  · exact row081_layer002_pairs003
  · exact row081_layer002_pairs004
  · exact row081_layer002_pairs005
  · exact row081_layer002_pairs006
  · exact row081_layer002_pairs007
  · exact row081_layer002_pairs008
  · exact row081_layer002_pairs009
  · exact row081_layer002_pairs010
  · exact row081_layer002_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer002_checked :
    coverLayerCheck row081.height row081.goods { lower := 25920, upper := 51840, M := 22 } = true := by
  exact coverLayerCheck_of_parts row081_layer002_arithmetic row081_layer002_enumeration row081_bounds_eq row081_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row081_layer003_intervals : List ColouredInterval :=
  [(2, 53248, 53328), (2, 57344, 57424), (2, 61440, 61520), (2, 65536, 65616), (2, 69632, 69712), (2, 73728, 73808), (2, 77824, 77904), (2, 57344, 57424), (2, 65536, 65616), (2, 73728, 73808), (2, 81920, 82000), (2, 90112, 90192), (2, 98304, 98384), (2, 65536, 65616), (2, 81920, 82000), (2, 98304, 98384), (2, 65536, 65616), (2, 98304, 98384), (2, 65536, 65616), (5, 53125, 53205), (5, 56250, 56330), (5, 59375, 59455), (5, 62500, 62580), (5, 78125, 78205), (5, 93750, 93830), (5, 78125, 78205), (7, 67228, 67308), (7, 84035, 84115), (7, 100842, 100922), (11, 58564, 58644), (11, 73205, 73285), (11, 87846, 87926), (11, 102487, 102567), (13, 57122, 57202), (13, 85683, 85763), (17, 54043, 54123), (17, 58956, 59036), (17, 63869, 63949), (17, 68782, 68862), (17, 73695, 73775), (17, 78608, 78688), (17, 83521, 83601), (17, 88434, 88514), (17, 93347, 93427), (17, 83521, 83601), (19, 54872, 54952), (19, 61731, 61811), (19, 68590, 68670), (19, 75449, 75529), (19, 82308, 82388), (19, 89167, 89247), (19, 96026, 96106), (19, 102885, 102965), (23, 60835, 60915), (23, 73002, 73082), (23, 85169, 85249), (23, 97336, 97416), (29, 73167, 73247), (29, 97556, 97636), (31, 59582, 59662), (31, 89373, 89453), (37, 101306, 101386), (41, 68921, 69001), (43, 79507, 79587), (53, 53371, 53451), (59, 52215, 52295), (59, 55696, 55776), (59, 59177, 59257), (59, 62658, 62738), (59, 66139, 66219), (61, 52094, 52174), (61, 55815, 55895), (61, 59536, 59616), (61, 63257, 63337), (61, 66978, 67058), (61, 70699, 70779), (67, 53868, 53948), (67, 58357, 58437), (67, 62846, 62926), (67, 67335, 67415), (67, 71824, 71904), (67, 76313, 76393), (67, 80802, 80882), (67, 85291, 85371), (71, 55451, 55531), (71, 60492, 60572), (71, 65533, 65613), (71, 70574, 70654), (71, 75615, 75695), (71, 80656, 80736), (71, 85697, 85777), (71, 90738, 90818), (71, 95779, 95859), (73, 53290, 53370), (73, 58619, 58699), (73, 63948, 64028), (73, 69277, 69357), (73, 74606, 74686), (73, 79935, 80015), (73, 85264, 85344), (73, 90593, 90673), (73, 95922, 96002), (73, 101251, 101331), (79, 56169, 56249), (79, 62410, 62490), (79, 68651, 68731), (79, 74892, 74972), (79, 81133, 81213), (79, 87374, 87454), (79, 93615, 93695), (79, 99856, 99936)]

def row081_layer003_block000 : List ColouredInterval :=
  [(2, 53248, 53328), (2, 57344, 57424), (2, 61440, 61520), (2, 65536, 65616), (2, 69632, 69712), (2, 73728, 73808), (2, 77824, 77904), (2, 57344, 57424), (2, 65536, 65616), (2, 73728, 73808), (2, 81920, 82000), (2, 90112, 90192), (2, 98304, 98384), (2, 65536, 65616), (2, 81920, 82000), (2, 98304, 98384)]

def row081_layer003_block001 : List ColouredInterval :=
  [(2, 65536, 65616), (2, 98304, 98384), (2, 65536, 65616), (5, 53125, 53205), (5, 56250, 56330), (5, 59375, 59455), (5, 62500, 62580), (5, 78125, 78205), (5, 93750, 93830), (5, 78125, 78205), (7, 67228, 67308), (7, 84035, 84115), (7, 100842, 100922), (11, 58564, 58644), (11, 73205, 73285), (11, 87846, 87926)]

def row081_layer003_block002 : List ColouredInterval :=
  [(11, 102487, 102567), (13, 57122, 57202), (13, 85683, 85763), (17, 54043, 54123), (17, 58956, 59036), (17, 63869, 63949), (17, 68782, 68862), (17, 73695, 73775), (17, 78608, 78688), (17, 83521, 83601), (17, 88434, 88514), (17, 93347, 93427), (17, 83521, 83601), (19, 54872, 54952), (19, 61731, 61811), (19, 68590, 68670)]

def row081_layer003_block003 : List ColouredInterval :=
  [(19, 75449, 75529), (19, 82308, 82388), (19, 89167, 89247), (19, 96026, 96106), (19, 102885, 102965), (23, 60835, 60915), (23, 73002, 73082), (23, 85169, 85249), (23, 97336, 97416), (29, 73167, 73247), (29, 97556, 97636), (31, 59582, 59662), (31, 89373, 89453), (37, 101306, 101386), (41, 68921, 69001), (43, 79507, 79587)]

def row081_layer003_block004 : List ColouredInterval :=
  [(53, 53371, 53451), (59, 52215, 52295), (59, 55696, 55776), (59, 59177, 59257), (59, 62658, 62738), (59, 66139, 66219), (61, 52094, 52174), (61, 55815, 55895), (61, 59536, 59616), (61, 63257, 63337), (61, 66978, 67058), (61, 70699, 70779), (67, 53868, 53948), (67, 58357, 58437), (67, 62846, 62926), (67, 67335, 67415)]

def row081_layer003_block005 : List ColouredInterval :=
  [(67, 71824, 71904), (67, 76313, 76393), (67, 80802, 80882), (67, 85291, 85371), (71, 55451, 55531), (71, 60492, 60572), (71, 65533, 65613), (71, 70574, 70654), (71, 75615, 75695), (71, 80656, 80736), (71, 85697, 85777), (71, 90738, 90818), (71, 95779, 95859), (73, 53290, 53370), (73, 58619, 58699), (73, 63948, 64028)]

def row081_layer003_block006 : List ColouredInterval :=
  [(73, 69277, 69357), (73, 74606, 74686), (73, 79935, 80015), (73, 85264, 85344), (73, 90593, 90673), (73, 95922, 96002), (73, 101251, 101331), (79, 56169, 56249), (79, 62410, 62490), (79, 68651, 68731), (79, 74892, 74972), (79, 81133, 81213), (79, 87374, 87454), (79, 93615, 93695), (79, 99856, 99936)]

def row081_layer003_chunks : List (List ColouredInterval) :=
  [row081_layer003_block000, row081_layer003_block001, row081_layer003_block002, row081_layer003_block003, row081_layer003_block004, row081_layer003_block005, row081_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_arithmetic : LayerArithmeticValid row081.height { lower := 51840, upper := 103680, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_enumeration :
    activePowerIntervalList 81 19 51840 103680 = row081_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_pairs000 :
    row081_layer003_block000.all (fun I => row081_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_pairs001 :
    row081_layer003_block001.all (fun I => row081_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_pairs002 :
    row081_layer003_block002.all (fun I => row081_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_pairs003 :
    row081_layer003_block003.all (fun I => row081_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_pairs004 :
    row081_layer003_block004.all (fun I => row081_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_pairs005 :
    row081_layer003_block005.all (fun I => row081_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_pairs006 :
    row081_layer003_block006.all (fun I => row081_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_chunks_eq : row081_layer003_chunks.flatten = row081_layer003_intervals := by
  rfl

theorem row081_layer003_pairs : pairCoverCheck row081_layer003_intervals row081_bounds = true := by
  apply pairCoverCheck_of_chunks row081_layer003_chunks_eq
  intro block hblock
  simp only [row081_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row081_layer003_pairs000
  · exact row081_layer003_pairs001
  · exact row081_layer003_pairs002
  · exact row081_layer003_pairs003
  · exact row081_layer003_pairs004
  · exact row081_layer003_pairs005
  · exact row081_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer003_checked :
    coverLayerCheck row081.height row081.goods { lower := 51840, upper := 103680, M := 19 } = true := by
  exact coverLayerCheck_of_parts row081_layer003_arithmetic row081_layer003_enumeration row081_bounds_eq row081_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row081_layer004_intervals : List ColouredInterval :=
  [(2, 106496, 106576), (2, 114688, 114768), (2, 122880, 122960), (2, 131072, 131152), (2, 114688, 114768), (2, 131072, 131152), (2, 147456, 147536), (2, 163840, 163920), (2, 180224, 180304), (2, 196608, 196688), (2, 131072, 131152), (2, 163840, 163920), (2, 196608, 196688), (2, 131072, 131152), (2, 196608, 196688), (2, 131072, 131152), (5, 109375, 109455), (5, 125000, 125080), (5, 140625, 140705), (5, 156250, 156330), (5, 171875, 171955), (5, 187500, 187580), (5, 203125, 203205), (5, 156250, 156330), (7, 117649, 117729), (7, 134456, 134536), (7, 151263, 151343), (7, 168070, 168150), (7, 184877, 184957), (7, 201684, 201764), (7, 117649, 117729), (11, 117128, 117208), (11, 131769, 131849), (11, 146410, 146490), (11, 161051, 161131), (11, 175692, 175772), (11, 190333, 190413), (11, 204974, 205054), (11, 161051, 161131), (13, 114244, 114324), (13, 142805, 142885), (13, 171366, 171446), (13, 199927, 200007), (17, 167042, 167122), (19, 109744, 109824), (19, 130321, 130401), (23, 109503, 109583), (23, 121670, 121750), (23, 133837, 133917), (23, 146004, 146084), (23, 158171, 158251), (23, 170338, 170418), (23, 182505, 182585), (23, 194672, 194752), (29, 121945, 122025), (29, 146334, 146414), (29, 170723, 170803), (29, 195112, 195192), (31, 119164, 119244), (31, 148955, 149035), (31, 178746, 178826), (37, 151959, 152039), (37, 202612, 202692), (41, 137842, 137922), (41, 206763, 206843), (43, 159014, 159094), (47, 103823, 103903), (53, 148877, 148957), (59, 205379, 205459)]

def row081_layer004_block000 : List ColouredInterval :=
  [(2, 106496, 106576), (2, 114688, 114768), (2, 122880, 122960), (2, 131072, 131152), (2, 114688, 114768), (2, 131072, 131152), (2, 147456, 147536), (2, 163840, 163920), (2, 180224, 180304), (2, 196608, 196688), (2, 131072, 131152), (2, 163840, 163920), (2, 196608, 196688), (2, 131072, 131152), (2, 196608, 196688), (2, 131072, 131152)]

def row081_layer004_block001 : List ColouredInterval :=
  [(5, 109375, 109455), (5, 125000, 125080), (5, 140625, 140705), (5, 156250, 156330), (5, 171875, 171955), (5, 187500, 187580), (5, 203125, 203205), (5, 156250, 156330), (7, 117649, 117729), (7, 134456, 134536), (7, 151263, 151343), (7, 168070, 168150), (7, 184877, 184957), (7, 201684, 201764), (7, 117649, 117729), (11, 117128, 117208)]

def row081_layer004_block002 : List ColouredInterval :=
  [(11, 131769, 131849), (11, 146410, 146490), (11, 161051, 161131), (11, 175692, 175772), (11, 190333, 190413), (11, 204974, 205054), (11, 161051, 161131), (13, 114244, 114324), (13, 142805, 142885), (13, 171366, 171446), (13, 199927, 200007), (17, 167042, 167122), (19, 109744, 109824), (19, 130321, 130401), (23, 109503, 109583), (23, 121670, 121750)]

def row081_layer004_block003 : List ColouredInterval :=
  [(23, 133837, 133917), (23, 146004, 146084), (23, 158171, 158251), (23, 170338, 170418), (23, 182505, 182585), (23, 194672, 194752), (29, 121945, 122025), (29, 146334, 146414), (29, 170723, 170803), (29, 195112, 195192), (31, 119164, 119244), (31, 148955, 149035), (31, 178746, 178826), (37, 151959, 152039), (37, 202612, 202692), (41, 137842, 137922)]

def row081_layer004_block004 : List ColouredInterval :=
  [(41, 206763, 206843), (43, 159014, 159094), (47, 103823, 103903), (53, 148877, 148957), (59, 205379, 205459)]

def row081_layer004_chunks : List (List ColouredInterval) :=
  [row081_layer004_block000, row081_layer004_block001, row081_layer004_block002, row081_layer004_block003, row081_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_arithmetic : LayerArithmeticValid row081.height { lower := 103680, upper := 207360, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_enumeration :
    activePowerIntervalList 81 16 103680 207360 = row081_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_pairs000 :
    row081_layer004_block000.all (fun I => row081_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_pairs001 :
    row081_layer004_block001.all (fun I => row081_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_pairs002 :
    row081_layer004_block002.all (fun I => row081_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_pairs003 :
    row081_layer004_block003.all (fun I => row081_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_pairs004 :
    row081_layer004_block004.all (fun I => row081_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row081_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_chunks_eq : row081_layer004_chunks.flatten = row081_layer004_intervals := by
  rfl

theorem row081_layer004_pairs : pairCoverCheck row081_layer004_intervals row081_bounds = true := by
  apply pairCoverCheck_of_chunks row081_layer004_chunks_eq
  intro block hblock
  simp only [row081_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row081_layer004_pairs000
  · exact row081_layer004_pairs001
  · exact row081_layer004_pairs002
  · exact row081_layer004_pairs003
  · exact row081_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer004_checked :
    coverLayerCheck row081.height row081.goods { lower := 103680, upper := 207360, M := 16 } = true := by
  exact coverLayerCheck_of_parts row081_layer004_arithmetic row081_layer004_enumeration row081_bounds_eq row081_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row081_layer005_intervals : List ColouredInterval :=
  [(2, 212992, 213072), (2, 229376, 229456), (2, 229376, 229456), (2, 262144, 262224), (2, 294912, 294992), (2, 327680, 327760), (2, 360448, 360528), (2, 393216, 393296), (2, 262144, 262224), (2, 327680, 327760), (2, 393216, 393296), (2, 262144, 262224), (2, 393216, 393296), (2, 262144, 262224), (5, 218750, 218830), (5, 234375, 234455), (5, 312500, 312580), (5, 390625, 390705), (5, 390625, 390705), (7, 218491, 218571), (7, 235298, 235378), (7, 235298, 235378), (7, 352947, 353027), (11, 322102, 322182), (13, 228488, 228568), (13, 257049, 257129), (13, 285610, 285690), (13, 314171, 314251), (13, 342732, 342812), (13, 371293, 371373), (13, 399854, 399934), (13, 371293, 371373), (17, 250563, 250643), (17, 334084, 334164), (19, 260642, 260722), (19, 390963, 391043), (23, 279841, 279921), (29, 219501, 219581), (29, 243890, 243970), (29, 268279, 268359), (29, 292668, 292748), (29, 317057, 317137), (29, 341446, 341526), (31, 208537, 208617), (31, 238328, 238408), (31, 268119, 268199), (31, 297910, 297990), (31, 327701, 327781), (31, 357492, 357572), (31, 387283, 387363), (37, 253265, 253345), (37, 303918, 303998), (37, 354571, 354651), (37, 405224, 405304), (41, 275684, 275764), (41, 344605, 344685), (41, 413526, 413606), (43, 238521, 238601), (43, 318028, 318108), (43, 397535, 397615), (47, 207646, 207726), (47, 311469, 311549), (53, 297754, 297834), (59, 410758, 410838), (61, 226981, 227061), (67, 300763, 300843), (71, 357911, 357991), (73, 389017, 389097)]

def row081_layer005_block000 : List ColouredInterval :=
  [(2, 212992, 213072), (2, 229376, 229456), (2, 229376, 229456), (2, 262144, 262224), (2, 294912, 294992), (2, 327680, 327760), (2, 360448, 360528), (2, 393216, 393296), (2, 262144, 262224), (2, 327680, 327760), (2, 393216, 393296), (2, 262144, 262224), (2, 393216, 393296), (2, 262144, 262224), (5, 218750, 218830), (5, 234375, 234455)]

def row081_layer005_block001 : List ColouredInterval :=
  [(5, 312500, 312580), (5, 390625, 390705), (5, 390625, 390705), (7, 218491, 218571), (7, 235298, 235378), (7, 235298, 235378), (7, 352947, 353027), (11, 322102, 322182), (13, 228488, 228568), (13, 257049, 257129), (13, 285610, 285690), (13, 314171, 314251), (13, 342732, 342812), (13, 371293, 371373), (13, 399854, 399934), (13, 371293, 371373)]

def row081_layer005_block002 : List ColouredInterval :=
  [(17, 250563, 250643), (17, 334084, 334164), (19, 260642, 260722), (19, 390963, 391043), (23, 279841, 279921), (29, 219501, 219581), (29, 243890, 243970), (29, 268279, 268359), (29, 292668, 292748), (29, 317057, 317137), (29, 341446, 341526), (31, 208537, 208617), (31, 238328, 238408), (31, 268119, 268199), (31, 297910, 297990), (31, 327701, 327781)]

def row081_layer005_block003 : List ColouredInterval :=
  [(31, 357492, 357572), (31, 387283, 387363), (37, 253265, 253345), (37, 303918, 303998), (37, 354571, 354651), (37, 405224, 405304), (41, 275684, 275764), (41, 344605, 344685), (41, 413526, 413606), (43, 238521, 238601), (43, 318028, 318108), (43, 397535, 397615), (47, 207646, 207726), (47, 311469, 311549), (53, 297754, 297834), (59, 410758, 410838)]

def row081_layer005_block004 : List ColouredInterval :=
  [(61, 226981, 227061), (67, 300763, 300843), (71, 357911, 357991), (73, 389017, 389097)]

def row081_layer005_chunks : List (List ColouredInterval) :=
  [row081_layer005_block000, row081_layer005_block001, row081_layer005_block002, row081_layer005_block003, row081_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_arithmetic : LayerArithmeticValid row081.height { lower := 207360, upper := 414720, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row081_layer005_enumeration :
    activePowerIntervalList 81 14 207360 414720 = row081_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row081_layer005_enumeration
