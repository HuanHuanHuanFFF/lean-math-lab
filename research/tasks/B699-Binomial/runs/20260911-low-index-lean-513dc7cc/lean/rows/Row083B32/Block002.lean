import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs008 :
    row083_layer002_block008.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_pairs009 :
    row083_layer002_block009.all (fun I => row083_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_chunks_eq : row083_layer002_chunks.flatten = row083_layer002_intervals := by
  rfl

theorem row083_layer002_pairs : pairCoverCheck row083_layer002_intervals row083_bounds = true := by
  apply pairCoverCheck_of_chunks row083_layer002_chunks_eq
  intro block hblock
  simp only [row083_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row083_layer002_pairs000
  · exact row083_layer002_pairs001
  · exact row083_layer002_pairs002
  · exact row083_layer002_pairs003
  · exact row083_layer002_pairs004
  · exact row083_layer002_pairs005
  · exact row083_layer002_pairs006
  · exact row083_layer002_pairs007
  · exact row083_layer002_pairs008
  · exact row083_layer002_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer002_checked :
    coverLayerCheck row083.height row083.goods { lower := 27224, upper := 54448, M := 19 } = true := by
  exact coverLayerCheck_of_parts row083_layer002_arithmetic row083_layer002_enumeration row083_bounds_eq row083_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row083_layer003_intervals : List ColouredInterval :=
  [(2, 57344, 57426), (2, 61440, 61522), (2, 65536, 65618), (2, 57344, 57426), (2, 65536, 65618), (2, 73728, 73810), (2, 81920, 82002), (2, 90112, 90194), (2, 98304, 98386), (2, 106496, 106578), (2, 65536, 65618), (2, 81920, 82002), (2, 98304, 98386), (2, 65536, 65618), (2, 98304, 98386), (2, 65536, 65618), (3, 59049, 59131), (3, 65610, 65692), (3, 72171, 72253), (3, 78732, 78814), (3, 85293, 85375), (3, 91854, 91936), (3, 98415, 98497), (3, 104976, 105058), (3, 59049, 59131), (3, 78732, 78814), (3, 98415, 98497), (3, 59049, 59131), (5, 62500, 62582), (5, 78125, 78207), (5, 93750, 93832), (5, 78125, 78207), (7, 67228, 67310), (7, 84035, 84117), (7, 100842, 100924), (11, 58564, 58646), (11, 73205, 73287), (11, 87846, 87928), (11, 102487, 102569), (13, 57122, 57204), (13, 85683, 85765), (17, 58956, 59038), (17, 63869, 63951), (17, 68782, 68864), (17, 73695, 73777), (17, 78608, 78690), (17, 83521, 83603), (19, 54872, 54954), (19, 61731, 61813), (19, 68590, 68672), (19, 75449, 75531), (19, 82308, 82390), (19, 89167, 89249), (19, 96026, 96108), (19, 102885, 102967), (23, 60835, 60917), (23, 73002, 73084), (23, 85169, 85251), (23, 97336, 97418), (29, 73167, 73249), (29, 97556, 97638), (31, 59582, 59664), (31, 89373, 89455), (37, 101306, 101388), (41, 68921, 69003), (43, 79507, 79589), (47, 103823, 103905), (59, 55696, 55778), (61, 55815, 55897), (61, 59536, 59618), (67, 58357, 58439), (67, 62846, 62928), (67, 67335, 67417), (67, 71824, 71906), (71, 55451, 55533), (71, 60492, 60574), (71, 65533, 65615), (71, 70574, 70656), (71, 75615, 75697), (71, 80656, 80738), (73, 58619, 58701), (73, 63948, 64030), (73, 69277, 69359), (73, 74606, 74688), (73, 79935, 80017), (73, 85264, 85346), (79, 56169, 56251), (79, 62410, 62492), (79, 68651, 68733), (79, 74892, 74974), (79, 81133, 81215), (79, 87374, 87456), (79, 93615, 93697), (79, 99856, 99938)]

def row083_layer003_block000 : List ColouredInterval :=
  [(2, 57344, 57426), (2, 61440, 61522), (2, 65536, 65618), (2, 57344, 57426), (2, 65536, 65618), (2, 73728, 73810), (2, 81920, 82002), (2, 90112, 90194), (2, 98304, 98386), (2, 106496, 106578), (2, 65536, 65618), (2, 81920, 82002), (2, 98304, 98386), (2, 65536, 65618), (2, 98304, 98386), (2, 65536, 65618)]

def row083_layer003_block001 : List ColouredInterval :=
  [(3, 59049, 59131), (3, 65610, 65692), (3, 72171, 72253), (3, 78732, 78814), (3, 85293, 85375), (3, 91854, 91936), (3, 98415, 98497), (3, 104976, 105058), (3, 59049, 59131), (3, 78732, 78814), (3, 98415, 98497), (3, 59049, 59131), (5, 62500, 62582), (5, 78125, 78207), (5, 93750, 93832), (5, 78125, 78207)]

def row083_layer003_block002 : List ColouredInterval :=
  [(7, 67228, 67310), (7, 84035, 84117), (7, 100842, 100924), (11, 58564, 58646), (11, 73205, 73287), (11, 87846, 87928), (11, 102487, 102569), (13, 57122, 57204), (13, 85683, 85765), (17, 58956, 59038), (17, 63869, 63951), (17, 68782, 68864), (17, 73695, 73777), (17, 78608, 78690), (17, 83521, 83603), (19, 54872, 54954)]

def row083_layer003_block003 : List ColouredInterval :=
  [(19, 61731, 61813), (19, 68590, 68672), (19, 75449, 75531), (19, 82308, 82390), (19, 89167, 89249), (19, 96026, 96108), (19, 102885, 102967), (23, 60835, 60917), (23, 73002, 73084), (23, 85169, 85251), (23, 97336, 97418), (29, 73167, 73249), (29, 97556, 97638), (31, 59582, 59664), (31, 89373, 89455), (37, 101306, 101388)]

def row083_layer003_block004 : List ColouredInterval :=
  [(41, 68921, 69003), (43, 79507, 79589), (47, 103823, 103905), (59, 55696, 55778), (61, 55815, 55897), (61, 59536, 59618), (67, 58357, 58439), (67, 62846, 62928), (67, 67335, 67417), (67, 71824, 71906), (71, 55451, 55533), (71, 60492, 60574), (71, 65533, 65615), (71, 70574, 70656), (71, 75615, 75697), (71, 80656, 80738)]

def row083_layer003_block005 : List ColouredInterval :=
  [(73, 58619, 58701), (73, 63948, 64030), (73, 69277, 69359), (73, 74606, 74688), (73, 79935, 80017), (73, 85264, 85346), (79, 56169, 56251), (79, 62410, 62492), (79, 68651, 68733), (79, 74892, 74974), (79, 81133, 81215), (79, 87374, 87456), (79, 93615, 93697), (79, 99856, 99938)]

def row083_layer003_chunks : List (List ColouredInterval) :=
  [row083_layer003_block000, row083_layer003_block001, row083_layer003_block002, row083_layer003_block003, row083_layer003_block004, row083_layer003_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_arithmetic : LayerArithmeticValid row083.height { lower := 54448, upper := 108896, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_enumeration :
    activePowerIntervalList 83 16 54448 108896 = row083_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_pairs000 :
    row083_layer003_block000.all (fun I => row083_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_pairs001 :
    row083_layer003_block001.all (fun I => row083_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_pairs002 :
    row083_layer003_block002.all (fun I => row083_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_pairs003 :
    row083_layer003_block003.all (fun I => row083_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_pairs004 :
    row083_layer003_block004.all (fun I => row083_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_pairs005 :
    row083_layer003_block005.all (fun I => row083_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_chunks_eq : row083_layer003_chunks.flatten = row083_layer003_intervals := by
  rfl

theorem row083_layer003_pairs : pairCoverCheck row083_layer003_intervals row083_bounds = true := by
  apply pairCoverCheck_of_chunks row083_layer003_chunks_eq
  intro block hblock
  simp only [row083_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row083_layer003_pairs000
  · exact row083_layer003_pairs001
  · exact row083_layer003_pairs002
  · exact row083_layer003_pairs003
  · exact row083_layer003_pairs004
  · exact row083_layer003_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer003_checked :
    coverLayerCheck row083.height row083.goods { lower := 54448, upper := 108896, M := 16 } = true := by
  exact coverLayerCheck_of_parts row083_layer003_arithmetic row083_layer003_enumeration row083_bounds_eq row083_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row083_layer004_intervals : List ColouredInterval :=
  [(2, 114688, 114770), (2, 131072, 131154), (2, 147456, 147538), (2, 163840, 163922), (2, 180224, 180306), (2, 196608, 196690), (2, 212992, 213074), (2, 131072, 131154), (2, 163840, 163922), (2, 196608, 196690), (2, 131072, 131154), (2, 196608, 196690), (2, 131072, 131154), (3, 118098, 118180), (3, 137781, 137863), (3, 157464, 157546), (3, 177147, 177229), (3, 196830, 196912), (3, 216513, 216595), (3, 118098, 118180), (3, 177147, 177229), (3, 177147, 177229), (5, 109375, 109457), (5, 125000, 125082), (5, 140625, 140707), (5, 156250, 156332), (5, 171875, 171957), (5, 187500, 187582), (5, 203125, 203207), (5, 156250, 156332), (7, 117649, 117731), (7, 134456, 134538), (7, 151263, 151345), (7, 168070, 168152), (7, 184877, 184959), (7, 201684, 201766), (7, 117649, 117731), (11, 117128, 117210), (11, 131769, 131851), (11, 146410, 146492), (11, 161051, 161133), (11, 175692, 175774), (11, 190333, 190415), (11, 161051, 161133), (13, 114244, 114326), (13, 142805, 142887), (13, 171366, 171448), (13, 199927, 200009), (17, 167042, 167124), (19, 130321, 130403), (23, 109503, 109585), (23, 121670, 121752), (23, 133837, 133919), (23, 146004, 146086), (23, 158171, 158253), (29, 121945, 122027), (29, 146334, 146416), (29, 170723, 170805), (29, 195112, 195194), (31, 119164, 119246), (31, 148955, 149037), (31, 178746, 178828), (31, 208537, 208619), (37, 151959, 152041), (37, 202612, 202694), (41, 137842, 137924), (41, 206763, 206845), (43, 159014, 159096), (47, 207646, 207728), (53, 148877, 148959), (59, 205379, 205461)]

def row083_layer004_block000 : List ColouredInterval :=
  [(2, 114688, 114770), (2, 131072, 131154), (2, 147456, 147538), (2, 163840, 163922), (2, 180224, 180306), (2, 196608, 196690), (2, 212992, 213074), (2, 131072, 131154), (2, 163840, 163922), (2, 196608, 196690), (2, 131072, 131154), (2, 196608, 196690), (2, 131072, 131154), (3, 118098, 118180), (3, 137781, 137863), (3, 157464, 157546)]

def row083_layer004_block001 : List ColouredInterval :=
  [(3, 177147, 177229), (3, 196830, 196912), (3, 216513, 216595), (3, 118098, 118180), (3, 177147, 177229), (3, 177147, 177229), (5, 109375, 109457), (5, 125000, 125082), (5, 140625, 140707), (5, 156250, 156332), (5, 171875, 171957), (5, 187500, 187582), (5, 203125, 203207), (5, 156250, 156332), (7, 117649, 117731), (7, 134456, 134538)]

def row083_layer004_block002 : List ColouredInterval :=
  [(7, 151263, 151345), (7, 168070, 168152), (7, 184877, 184959), (7, 201684, 201766), (7, 117649, 117731), (11, 117128, 117210), (11, 131769, 131851), (11, 146410, 146492), (11, 161051, 161133), (11, 175692, 175774), (11, 190333, 190415), (11, 161051, 161133), (13, 114244, 114326), (13, 142805, 142887), (13, 171366, 171448), (13, 199927, 200009)]

def row083_layer004_block003 : List ColouredInterval :=
  [(17, 167042, 167124), (19, 130321, 130403), (23, 109503, 109585), (23, 121670, 121752), (23, 133837, 133919), (23, 146004, 146086), (23, 158171, 158253), (29, 121945, 122027), (29, 146334, 146416), (29, 170723, 170805), (29, 195112, 195194), (31, 119164, 119246), (31, 148955, 149037), (31, 178746, 178828), (31, 208537, 208619), (37, 151959, 152041)]

def row083_layer004_block004 : List ColouredInterval :=
  [(37, 202612, 202694), (41, 137842, 137924), (41, 206763, 206845), (43, 159014, 159096), (47, 207646, 207728), (53, 148877, 148959), (59, 205379, 205461)]

def row083_layer004_chunks : List (List ColouredInterval) :=
  [row083_layer004_block000, row083_layer004_block001, row083_layer004_block002, row083_layer004_block003, row083_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_arithmetic : LayerArithmeticValid row083.height { lower := 108896, upper := 217792, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_enumeration :
    activePowerIntervalList 83 13 108896 217792 = row083_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_pairs000 :
    row083_layer004_block000.all (fun I => row083_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_pairs001 :
    row083_layer004_block001.all (fun I => row083_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_pairs002 :
    row083_layer004_block002.all (fun I => row083_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_pairs003 :
    row083_layer004_block003.all (fun I => row083_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_pairs004 :
    row083_layer004_block004.all (fun I => row083_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row083_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_chunks_eq : row083_layer004_chunks.flatten = row083_layer004_intervals := by
  rfl

theorem row083_layer004_pairs : pairCoverCheck row083_layer004_intervals row083_bounds = true := by
  apply pairCoverCheck_of_chunks row083_layer004_chunks_eq
  intro block hblock
  simp only [row083_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row083_layer004_pairs000
  · exact row083_layer004_pairs001
  · exact row083_layer004_pairs002
  · exact row083_layer004_pairs003
  · exact row083_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer004_checked :
    coverLayerCheck row083.height row083.goods { lower := 108896, upper := 217792, M := 13 } = true := by
  exact coverLayerCheck_of_parts row083_layer004_arithmetic row083_layer004_enumeration row083_bounds_eq row083_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer005_checked :
    coverLayerCheck row083.height row083.goods { lower := 217792, upper := 435584, M := 11 } = true := by
  decide +kernel

theorem row083_layer006_checked :
    coverLayerCheck row083.height row083.goods { lower := 435584, upper := 871168, M := 9 } = true := by
  decide +kernel

theorem row083_layer007_checked :
    coverLayerCheck row083.height row083.goods { lower := 871168, upper := 1742336, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer008_checked :
    coverLayerCheck row083.height row083.goods { lower := 1742336, upper := 3484672, M := 7 } = true := by
  decide +kernel

theorem row083_layer009_checked :
    coverLayerCheck row083.height row083.goods { lower := 3484672, upper := 6969344, M := 6 } = true := by
  decide +kernel

theorem row083_layer010_checked :
    coverLayerCheck row083.height row083.goods { lower := 6969344, upper := 13938688, M := 5 } = true := by
  decide +kernel

theorem row083_layer011_checked :
    coverLayerCheck row083.height row083.goods { lower := 13938688, upper := 27877376, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer012_checked :
    coverLayerCheck row083.height row083.goods { lower := 27877376, upper := 55754752, M := 4 } = true := by
  decide +kernel

theorem row083_layer013_checked :
    coverLayerCheck row083.height row083.goods { lower := 55754752, upper := 111509504, M := 3 } = true := by
  decide +kernel

theorem row083_layer014_checked :
    coverLayerCheck row083.height row083.goods { lower := 111509504, upper := 223019008, M := 3 } = true := by
  decide +kernel

theorem row083_layer015_checked :
    coverLayerCheck row083.height row083.goods { lower := 223019008, upper := 446038016, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer016_checked :
    coverLayerCheck row083.height row083.goods { lower := 446038016, upper := 892076032, M := 2 } = true := by
  decide +kernel

theorem row083_layer017_checked :
    coverLayerCheck row083.height row083.goods { lower := 892076032, upper := 1784152064, M := 2 } = true := by
  decide +kernel

theorem row083_layer018_checked :
    coverLayerCheck row083.height row083.goods { lower := 1784152064, upper := 3568304128, M := 2 } = true := by
  decide +kernel

theorem row083_layer019_checked :
    coverLayerCheck row083.height row083.goods { lower := 3568304128, upper := 7136608256, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layer020_checked :
    coverLayerCheck row083.height row083.goods { lower := 7136608256, upper := 10000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row083_layers_checked :
    row083.layers.all (coverLayerCheck row083.height row083.goods) = true := by
  change row083_layers.all (coverLayerCheck row083.height row083.goods) = true
  simp only [row083_layers, List.all_cons, List.all_nil,
    row083_layer000_checked,
    row083_layer001_checked,
    row083_layer002_checked,
    row083_layer003_checked,
    row083_layer004_checked,
    row083_layer005_checked,
    row083_layer006_checked,
    row083_layer007_checked,
    row083_layer008_checked,
    row083_layer009_checked,
    row083_layer010_checked,
    row083_layer011_checked,
    row083_layer012_checked,
    row083_layer013_checked,
    row083_layer014_checked,
    row083_layer015_checked,
    row083_layer016_checked,
    row083_layer017_checked,
    row083_layer018_checked,
    row083_layer019_checked,
    row083_layer020_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row083_layers_checked
