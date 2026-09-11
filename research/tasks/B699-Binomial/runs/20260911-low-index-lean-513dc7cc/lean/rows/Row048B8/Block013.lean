import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block011
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer004_pairs013 :
    row048_layer004_block013.all (fun I => row048_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer004_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer004_chunks_eq : row048_layer004_chunks.flatten = row048_layer004_intervals := by
  rfl

theorem row048_layer004_pairs : pairCoverCheck row048_layer004_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer004_chunks_eq
  intro block hblock
  simp only [row048_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer004_pairs000
  · exact row048_layer004_pairs001
  · exact row048_layer004_pairs002
  · exact row048_layer004_pairs003
  · exact row048_layer004_pairs004
  · exact row048_layer004_pairs005
  · exact row048_layer004_pairs006
  · exact row048_layer004_pairs007
  · exact row048_layer004_pairs008
  · exact row048_layer004_pairs009
  · exact row048_layer004_pairs010
  · exact row048_layer004_pairs011
  · exact row048_layer004_pairs012
  · exact row048_layer004_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer004_checked :
    coverLayerCheck row048.height row048.goods { lower := 36096, upper := 72192, M := 39 } = true := by
  exact coverLayerCheck_of_parts row048_layer004_arithmetic row048_layer004_enumeration row048_bounds_eq row048_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer005_intervals : List ColouredInterval :=
  [(2, 131072, 131119), (2, 131072, 131119), (3, 72192, 72218), (3, 78732, 78779), (3, 78732, 78779), (3, 98415, 98462), (3, 118098, 118145), (3, 137781, 137828), (3, 118098, 118145), (5, 75000, 75047), (5, 78125, 78172), (5, 81250, 81297), (5, 84375, 84422), (5, 87500, 87547), (5, 90625, 90672), (5, 93750, 93797), (5, 96875, 96922), (5, 100000, 100047), (5, 103125, 103172), (5, 106250, 106297), (5, 109375, 109422), (5, 112500, 112547), (5, 115625, 115672), (5, 78125, 78172), (5, 93750, 93797), (5, 109375, 109422), (5, 125000, 125047), (5, 140625, 140672), (5, 78125, 78172), (7, 74431, 74478), (7, 76832, 76879), (7, 79233, 79280), (7, 81634, 81681), (7, 84035, 84082), (7, 86436, 86483), (7, 88837, 88884), (7, 84035, 84082), (7, 100842, 100889), (7, 117649, 117696), (7, 134456, 134503), (7, 117649, 117696), (11, 73205, 73252), (11, 87846, 87893), (11, 102487, 102534), (11, 117128, 117175), (11, 131769, 131816), (13, 72501, 72548), (13, 74698, 74745), (13, 76895, 76942), (13, 79092, 79139), (13, 81289, 81336), (13, 85683, 85730), (13, 114244, 114291), (13, 142805, 142852), (17, 73695, 73742), (17, 78608, 78655), (17, 83521, 83568), (17, 88434, 88481), (17, 93347, 93394), (17, 98260, 98307), (17, 103173, 103220), (17, 108086, 108133), (17, 112999, 113046), (17, 117912, 117959), (17, 122825, 122872), (17, 127738, 127785), (17, 132651, 132698), (17, 137564, 137611), (17, 142477, 142524), (17, 83521, 83568), (19, 75449, 75496), (19, 82308, 82355), (19, 89167, 89214), (19, 96026, 96073), (19, 102885, 102932), (19, 109744, 109791), (19, 116603, 116650), (19, 123462, 123509), (19, 130321, 130368), (19, 137180, 137227), (19, 144039, 144086), (19, 130321, 130368), (23, 73002, 73049), (23, 85169, 85216), (23, 97336, 97383), (23, 109503, 109550), (23, 121670, 121717), (23, 133837, 133884), (29, 73167, 73214), (29, 97556, 97603), (29, 121945, 121992), (31, 89373, 89420), (31, 119164, 119211), (37, 101306, 101353), (41, 137842, 137889), (43, 79507, 79554), (47, 72897, 72944), (47, 75106, 75153), (47, 77315, 77362), (47, 79524, 79571), (47, 81733, 81780), (47, 103823, 103870)]

def row048_layer005_block000 : List ColouredInterval :=
  [(2, 131072, 131119), (2, 131072, 131119), (3, 72192, 72218), (3, 78732, 78779), (3, 78732, 78779), (3, 98415, 98462), (3, 118098, 118145), (3, 137781, 137828), (3, 118098, 118145), (5, 75000, 75047), (5, 78125, 78172), (5, 81250, 81297), (5, 84375, 84422), (5, 87500, 87547), (5, 90625, 90672), (5, 93750, 93797)]

def row048_layer005_block001 : List ColouredInterval :=
  [(5, 96875, 96922), (5, 100000, 100047), (5, 103125, 103172), (5, 106250, 106297), (5, 109375, 109422), (5, 112500, 112547), (5, 115625, 115672), (5, 78125, 78172), (5, 93750, 93797), (5, 109375, 109422), (5, 125000, 125047), (5, 140625, 140672), (5, 78125, 78172), (7, 74431, 74478), (7, 76832, 76879), (7, 79233, 79280)]

def row048_layer005_block002 : List ColouredInterval :=
  [(7, 81634, 81681), (7, 84035, 84082), (7, 86436, 86483), (7, 88837, 88884), (7, 84035, 84082), (7, 100842, 100889), (7, 117649, 117696), (7, 134456, 134503), (7, 117649, 117696), (11, 73205, 73252), (11, 87846, 87893), (11, 102487, 102534), (11, 117128, 117175), (11, 131769, 131816), (13, 72501, 72548), (13, 74698, 74745)]

def row048_layer005_block003 : List ColouredInterval :=
  [(13, 76895, 76942), (13, 79092, 79139), (13, 81289, 81336), (13, 85683, 85730), (13, 114244, 114291), (13, 142805, 142852), (17, 73695, 73742), (17, 78608, 78655), (17, 83521, 83568), (17, 88434, 88481), (17, 93347, 93394), (17, 98260, 98307), (17, 103173, 103220), (17, 108086, 108133), (17, 112999, 113046), (17, 117912, 117959)]

def row048_layer005_block004 : List ColouredInterval :=
  [(17, 122825, 122872), (17, 127738, 127785), (17, 132651, 132698), (17, 137564, 137611), (17, 142477, 142524), (17, 83521, 83568), (19, 75449, 75496), (19, 82308, 82355), (19, 89167, 89214), (19, 96026, 96073), (19, 102885, 102932), (19, 109744, 109791), (19, 116603, 116650), (19, 123462, 123509), (19, 130321, 130368), (19, 137180, 137227)]

def row048_layer005_block005 : List ColouredInterval :=
  [(19, 144039, 144086), (19, 130321, 130368), (23, 73002, 73049), (23, 85169, 85216), (23, 97336, 97383), (23, 109503, 109550), (23, 121670, 121717), (23, 133837, 133884), (29, 73167, 73214), (29, 97556, 97603), (29, 121945, 121992), (31, 89373, 89420), (31, 119164, 119211), (37, 101306, 101353), (41, 137842, 137889), (43, 79507, 79554)]

def row048_layer005_block006 : List ColouredInterval :=
  [(47, 72897, 72944), (47, 75106, 75153), (47, 77315, 77362), (47, 79524, 79571), (47, 81733, 81780), (47, 103823, 103870)]

def row048_layer005_chunks : List (List ColouredInterval) :=
  [row048_layer005_block000, row048_layer005_block001, row048_layer005_block002, row048_layer005_block003, row048_layer005_block004, row048_layer005_block005, row048_layer005_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_arithmetic : LayerArithmeticValid row048.height { lower := 72192, upper := 144384, M := 37 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_enumeration :
    activePowerIntervalList 48 37 72192 144384 = row048_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_pairs000 :
    row048_layer005_block000.all (fun I => row048_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_pairs001 :
    row048_layer005_block001.all (fun I => row048_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs001
