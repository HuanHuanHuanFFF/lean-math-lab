import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083B16.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row083B16.Block002

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
