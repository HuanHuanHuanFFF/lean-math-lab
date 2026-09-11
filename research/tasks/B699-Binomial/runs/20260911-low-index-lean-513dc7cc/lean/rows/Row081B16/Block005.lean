import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B16.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B16.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B16.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row081B16.Block001

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
