import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_arithmetic : LayerArithmeticValid row089.height { lower := 31328, upper := 62656, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_enumeration :
    activePowerIntervalList 89 16 31328 62656 = row089_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs000 :
    row089_layer002_block000.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs001 :
    row089_layer002_block001.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs002 :
    row089_layer002_block002.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs003 :
    row089_layer002_block003.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs004 :
    row089_layer002_block004.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs005 :
    row089_layer002_block005.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs006 :
    row089_layer002_block006.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_pairs007 :
    row089_layer002_block007.all (fun I => row089_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_chunks_eq : row089_layer002_chunks.flatten = row089_layer002_intervals := by
  rfl

theorem row089_layer002_pairs : pairCoverCheck row089_layer002_intervals row089_bounds = true := by
  apply pairCoverCheck_of_chunks row089_layer002_chunks_eq
  intro block hblock
  simp only [row089_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row089_layer002_pairs000
  · exact row089_layer002_pairs001
  · exact row089_layer002_pairs002
  · exact row089_layer002_pairs003
  · exact row089_layer002_pairs004
  · exact row089_layer002_pairs005
  · exact row089_layer002_pairs006
  · exact row089_layer002_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer002_checked :
    coverLayerCheck row089.height row089.goods { lower := 31328, upper := 62656, M := 16 } = true := by
  exact coverLayerCheck_of_parts row089_layer002_arithmetic row089_layer002_enumeration row089_bounds_eq row089_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_layer003_intervals : List ColouredInterval :=
  [(2, 65536, 65624), (2, 73728, 73816), (2, 81920, 82008), (2, 90112, 90200), (2, 98304, 98392), (2, 106496, 106584), (2, 65536, 65624), (2, 81920, 82008), (2, 98304, 98392), (2, 114688, 114776), (2, 65536, 65624), (2, 98304, 98392), (2, 65536, 65624), (3, 65610, 65698), (3, 72171, 72259), (3, 78732, 78820), (3, 85293, 85381), (3, 78732, 78820), (3, 98415, 98503), (3, 118098, 118186), (3, 118098, 118186), (5, 78125, 78213), (5, 93750, 93838), (5, 109375, 109463), (5, 125000, 125088), (5, 78125, 78213), (7, 67228, 67316), (7, 84035, 84123), (7, 100842, 100930), (7, 117649, 117737), (7, 117649, 117737), (11, 73205, 73293), (11, 87846, 87934), (11, 102487, 102575), (11, 117128, 117216), (13, 85683, 85771), (13, 114244, 114332), (17, 63869, 63957), (17, 83521, 83609), (19, 68590, 68678), (19, 75449, 75537), (19, 82308, 82396), (19, 89167, 89255), (23, 73002, 73090), (23, 85169, 85257), (23, 97336, 97424), (23, 109503, 109591), (23, 121670, 121758), (29, 73167, 73255), (29, 97556, 97644), (29, 121945, 122033), (31, 89373, 89461), (31, 119164, 119252), (37, 101306, 101394), (41, 68921, 69009), (43, 79507, 79595), (47, 103823, 103911), (71, 65533, 65621), (73, 63948, 64036), (73, 69277, 69365), (79, 68651, 68739), (79, 74892, 74980), (79, 81133, 81221), (83, 68890, 68978), (83, 75779, 75867), (83, 82668, 82756), (83, 89557, 89645)]

def row089_layer003_block000 : List ColouredInterval :=
  [(2, 65536, 65624), (2, 73728, 73816), (2, 81920, 82008), (2, 90112, 90200), (2, 98304, 98392), (2, 106496, 106584), (2, 65536, 65624), (2, 81920, 82008), (2, 98304, 98392), (2, 114688, 114776), (2, 65536, 65624), (2, 98304, 98392), (2, 65536, 65624), (3, 65610, 65698), (3, 72171, 72259), (3, 78732, 78820)]

def row089_layer003_block001 : List ColouredInterval :=
  [(3, 85293, 85381), (3, 78732, 78820), (3, 98415, 98503), (3, 118098, 118186), (3, 118098, 118186), (5, 78125, 78213), (5, 93750, 93838), (5, 109375, 109463), (5, 125000, 125088), (5, 78125, 78213), (7, 67228, 67316), (7, 84035, 84123), (7, 100842, 100930), (7, 117649, 117737), (7, 117649, 117737), (11, 73205, 73293)]

def row089_layer003_block002 : List ColouredInterval :=
  [(11, 87846, 87934), (11, 102487, 102575), (11, 117128, 117216), (13, 85683, 85771), (13, 114244, 114332), (17, 63869, 63957), (17, 83521, 83609), (19, 68590, 68678), (19, 75449, 75537), (19, 82308, 82396), (19, 89167, 89255), (23, 73002, 73090), (23, 85169, 85257), (23, 97336, 97424), (23, 109503, 109591), (23, 121670, 121758)]

def row089_layer003_block003 : List ColouredInterval :=
  [(29, 73167, 73255), (29, 97556, 97644), (29, 121945, 122033), (31, 89373, 89461), (31, 119164, 119252), (37, 101306, 101394), (41, 68921, 69009), (43, 79507, 79595), (47, 103823, 103911), (71, 65533, 65621), (73, 63948, 64036), (73, 69277, 69365), (79, 68651, 68739), (79, 74892, 74980), (79, 81133, 81221), (83, 68890, 68978)]

def row089_layer003_block004 : List ColouredInterval :=
  [(83, 75779, 75867), (83, 82668, 82756), (83, 89557, 89645)]

def row089_layer003_chunks : List (List ColouredInterval) :=
  [row089_layer003_block000, row089_layer003_block001, row089_layer003_block002, row089_layer003_block003, row089_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_arithmetic : LayerArithmeticValid row089.height { lower := 62656, upper := 125312, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_enumeration :
    activePowerIntervalList 89 13 62656 125312 = row089_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer003_pairs000 :
    row089_layer003_block000.all (fun I => row089_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer003_pairs000
