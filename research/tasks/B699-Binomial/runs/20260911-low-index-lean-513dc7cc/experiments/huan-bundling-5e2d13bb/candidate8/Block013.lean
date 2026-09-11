import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block012
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-bundling-5e2d13bb».candidate8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer005_pairs003 :
    row046_layer005_block003.all (fun I => row046_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer005_pairs004 :
    row046_layer005_block004.all (fun I => row046_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer005_pairs005 :
    row046_layer005_block005.all (fun I => row046_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer005_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer005_chunks_eq : row046_layer005_chunks.flatten = row046_layer005_intervals := by
  rfl

theorem row046_layer005_pairs : pairCoverCheck row046_layer005_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer005_chunks_eq
  intro block hblock
  simp only [row046_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer005_pairs000
  · exact row046_layer005_pairs001
  · exact row046_layer005_pairs002
  · exact row046_layer005_pairs003
  · exact row046_layer005_pairs004
  · exact row046_layer005_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer005_checked :
    coverLayerCheck row046.height row046.goods { lower := 66240, upper := 132480, M := 29 } = true := by
  exact coverLayerCheck_of_parts row046_layer005_arithmetic row046_layer005_enumeration row046_bounds_eq row046_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_layer006_intervals : List ColouredInterval :=
  [(2, 147456, 147501), (2, 163840, 163885), (2, 180224, 180269), (2, 196608, 196653), (2, 212992, 213037), (2, 163840, 163885), (2, 196608, 196653), (2, 229376, 229421), (2, 262144, 262189), (2, 196608, 196653), (2, 262144, 262189), (2, 262144, 262189), (2, 262144, 262189), (3, 137781, 137826), (3, 144342, 144387), (3, 150903, 150948), (3, 157464, 157509), (3, 164025, 164070), (3, 170586, 170631), (3, 177147, 177192), (3, 137781, 137826), (3, 157464, 157509), (3, 177147, 177192), (3, 196830, 196875), (3, 216513, 216558), (3, 236196, 236241), (3, 255879, 255924), (3, 177147, 177192), (3, 236196, 236241), (3, 177147, 177192), (5, 140625, 140670), (5, 156250, 156295), (5, 171875, 171920), (5, 187500, 187545), (5, 203125, 203170), (5, 218750, 218795), (5, 234375, 234420), (5, 250000, 250045), (5, 156250, 156295), (5, 234375, 234420), (7, 134456, 134501), (7, 151263, 151308), (7, 168070, 168115), (7, 184877, 184922), (7, 201684, 201729), (7, 218491, 218536), (7, 235298, 235343), (7, 252105, 252150), (7, 235298, 235343), (11, 146410, 146455), (11, 161051, 161096), (11, 175692, 175737), (11, 190333, 190378), (11, 204974, 205019), (11, 219615, 219660), (11, 234256, 234301), (11, 248897, 248942), (11, 263538, 263583), (11, 161051, 161096), (13, 142805, 142850), (13, 171366, 171411), (13, 199927, 199972), (13, 228488, 228533), (13, 257049, 257094), (17, 132651, 132696), (17, 167042, 167087), (17, 250563, 250608), (19, 137180, 137225), (19, 144039, 144084), (19, 150898, 150943), (19, 157757, 157802), (19, 164616, 164661), (19, 171475, 171520), (19, 178334, 178379), (19, 185193, 185238), (19, 260642, 260687), (29, 146334, 146379), (29, 170723, 170768), (29, 195112, 195157), (29, 219501, 219546), (29, 243890, 243935), (31, 148955, 149000), (31, 178746, 178791), (31, 208537, 208582), (31, 238328, 238373), (37, 151959, 152004), (37, 202612, 202657), (37, 253265, 253310), (41, 137842, 137887), (41, 206763, 206808), (43, 159014, 159059), (43, 238521, 238566)]

def row046_layer006_block000 : List ColouredInterval :=
  [(2, 147456, 147501), (2, 163840, 163885), (2, 180224, 180269), (2, 196608, 196653), (2, 212992, 213037), (2, 163840, 163885), (2, 196608, 196653), (2, 229376, 229421), (2, 262144, 262189), (2, 196608, 196653), (2, 262144, 262189), (2, 262144, 262189), (2, 262144, 262189), (3, 137781, 137826), (3, 144342, 144387), (3, 150903, 150948)]

def row046_layer006_block001 : List ColouredInterval :=
  [(3, 157464, 157509), (3, 164025, 164070), (3, 170586, 170631), (3, 177147, 177192), (3, 137781, 137826), (3, 157464, 157509), (3, 177147, 177192), (3, 196830, 196875), (3, 216513, 216558), (3, 236196, 236241), (3, 255879, 255924), (3, 177147, 177192), (3, 236196, 236241), (3, 177147, 177192), (5, 140625, 140670), (5, 156250, 156295)]

def row046_layer006_block002 : List ColouredInterval :=
  [(5, 171875, 171920), (5, 187500, 187545), (5, 203125, 203170), (5, 218750, 218795), (5, 234375, 234420), (5, 250000, 250045), (5, 156250, 156295), (5, 234375, 234420), (7, 134456, 134501), (7, 151263, 151308), (7, 168070, 168115), (7, 184877, 184922), (7, 201684, 201729), (7, 218491, 218536), (7, 235298, 235343), (7, 252105, 252150)]

def row046_layer006_block003 : List ColouredInterval :=
  [(7, 235298, 235343), (11, 146410, 146455), (11, 161051, 161096), (11, 175692, 175737), (11, 190333, 190378), (11, 204974, 205019), (11, 219615, 219660), (11, 234256, 234301), (11, 248897, 248942), (11, 263538, 263583), (11, 161051, 161096), (13, 142805, 142850), (13, 171366, 171411), (13, 199927, 199972), (13, 228488, 228533), (13, 257049, 257094)]

def row046_layer006_block004 : List ColouredInterval :=
  [(17, 132651, 132696), (17, 167042, 167087), (17, 250563, 250608), (19, 137180, 137225), (19, 144039, 144084), (19, 150898, 150943), (19, 157757, 157802), (19, 164616, 164661), (19, 171475, 171520), (19, 178334, 178379), (19, 185193, 185238), (19, 260642, 260687), (29, 146334, 146379), (29, 170723, 170768), (29, 195112, 195157), (29, 219501, 219546)]

def row046_layer006_block005 : List ColouredInterval :=
  [(29, 243890, 243935), (31, 148955, 149000), (31, 178746, 178791), (31, 208537, 208582), (31, 238328, 238373), (37, 151959, 152004), (37, 202612, 202657), (37, 253265, 253310), (41, 137842, 137887), (41, 206763, 206808), (43, 159014, 159059), (43, 238521, 238566)]

def row046_layer006_chunks : List (List ColouredInterval) :=
  [row046_layer006_block000, row046_layer006_block001, row046_layer006_block002, row046_layer006_block003, row046_layer006_block004, row046_layer006_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer006_arithmetic : LayerArithmeticValid row046.height { lower := 132480, upper := 264960, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer006_enumeration :
    activePowerIntervalList 46 27 132480 264960 = row046_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer006_enumeration
