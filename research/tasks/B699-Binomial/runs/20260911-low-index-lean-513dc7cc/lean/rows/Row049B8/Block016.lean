import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block015
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs003 :
    row049_layer005_block003.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs004 :
    row049_layer005_block004.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs005 :
    row049_layer005_block005.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_pairs006 :
    row049_layer005_block006.all (fun I => row049_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_chunks_eq : row049_layer005_chunks.flatten = row049_layer005_intervals := by
  rfl

theorem row049_layer005_pairs : pairCoverCheck row049_layer005_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer005_chunks_eq
  intro block hblock
  simp only [row049_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer005_pairs000
  · exact row049_layer005_pairs001
  · exact row049_layer005_pairs002
  · exact row049_layer005_pairs003
  · exact row049_layer005_pairs004
  · exact row049_layer005_pairs005
  · exact row049_layer005_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer005_checked :
    coverLayerCheck row049.height row049.goods { lower := 75264, upper := 150528, M := 31 } = true := by
  exact coverLayerCheck_of_parts row049_layer005_arithmetic row049_layer005_enumeration row049_bounds_eq row049_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer006_intervals : List ColouredInterval :=
  [(2, 155648, 155696), (2, 163840, 163888), (2, 172032, 172080), (2, 180224, 180272), (2, 188416, 188464), (2, 196608, 196656), (2, 204800, 204848), (2, 212992, 213040), (2, 221184, 221232), (2, 229376, 229424), (2, 237568, 237616), (2, 245760, 245808), (2, 163840, 163888), (2, 180224, 180272), (2, 196608, 196656), (2, 212992, 213040), (2, 229376, 229424), (2, 245760, 245808), (2, 262144, 262192), (2, 278528, 278576), (2, 294912, 294960), (2, 163840, 163888), (2, 196608, 196656), (2, 229376, 229424), (2, 262144, 262192), (2, 294912, 294960), (2, 196608, 196656), (2, 262144, 262192), (2, 262144, 262192), (2, 262144, 262192), (3, 150903, 150951), (3, 157464, 157512), (3, 164025, 164073), (3, 170586, 170634), (3, 177147, 177195), (3, 183708, 183756), (3, 190269, 190317), (3, 196830, 196878), (3, 157464, 157512), (3, 177147, 177195), (3, 196830, 196878), (3, 216513, 216561), (3, 236196, 236244), (3, 255879, 255927), (3, 275562, 275610), (3, 295245, 295293), (3, 177147, 177195), (3, 236196, 236244), (3, 295245, 295293), (3, 177147, 177195), (5, 156250, 156298), (5, 171875, 171923), (5, 187500, 187548), (5, 203125, 203173), (5, 218750, 218798), (5, 234375, 234423), (5, 250000, 250048), (5, 265625, 265673), (5, 281250, 281298), (5, 296875, 296923), (5, 156250, 156298), (5, 234375, 234423), (11, 161051, 161099), (11, 175692, 175740), (11, 190333, 190381), (11, 204974, 205022), (11, 219615, 219663), (11, 234256, 234304), (11, 248897, 248945), (11, 263538, 263586), (11, 278179, 278227), (11, 292820, 292868), (11, 161051, 161099), (13, 171366, 171414), (13, 199927, 199975), (13, 228488, 228536), (13, 257049, 257097), (13, 285610, 285658), (17, 167042, 167090), (17, 250563, 250611), (19, 150898, 150946), (19, 157757, 157805), (19, 164616, 164664), (19, 171475, 171523), (19, 178334, 178382), (19, 185193, 185241), (19, 192052, 192100), (19, 198911, 198959), (19, 205770, 205818), (19, 260642, 260690), (23, 158171, 158219), (23, 170338, 170386), (23, 182505, 182553), (23, 194672, 194720), (23, 206839, 206887), (23, 219006, 219054), (23, 231173, 231221), (23, 243340, 243388), (23, 255507, 255555), (23, 267674, 267722), (23, 279841, 279889), (23, 292008, 292056), (23, 279841, 279889), (29, 170723, 170771), (29, 195112, 195160), (29, 219501, 219549), (29, 243890, 243938), (29, 268279, 268327), (29, 292668, 292716), (31, 178746, 178794), (31, 208537, 208585), (31, 238328, 238376), (31, 268119, 268167), (31, 297910, 297958), (37, 151959, 152007), (37, 202612, 202660), (37, 253265, 253313), (41, 206763, 206811), (41, 275684, 275732), (43, 159014, 159062), (43, 238521, 238569), (47, 207646, 207694)]

def row049_layer006_block000 : List ColouredInterval :=
  [(2, 155648, 155696), (2, 163840, 163888), (2, 172032, 172080), (2, 180224, 180272), (2, 188416, 188464), (2, 196608, 196656), (2, 204800, 204848), (2, 212992, 213040), (2, 221184, 221232), (2, 229376, 229424), (2, 237568, 237616), (2, 245760, 245808), (2, 163840, 163888), (2, 180224, 180272), (2, 196608, 196656), (2, 212992, 213040)]

def row049_layer006_block001 : List ColouredInterval :=
  [(2, 229376, 229424), (2, 245760, 245808), (2, 262144, 262192), (2, 278528, 278576), (2, 294912, 294960), (2, 163840, 163888), (2, 196608, 196656), (2, 229376, 229424), (2, 262144, 262192), (2, 294912, 294960), (2, 196608, 196656), (2, 262144, 262192), (2, 262144, 262192), (2, 262144, 262192), (3, 150903, 150951), (3, 157464, 157512)]

def row049_layer006_block002 : List ColouredInterval :=
  [(3, 164025, 164073), (3, 170586, 170634), (3, 177147, 177195), (3, 183708, 183756), (3, 190269, 190317), (3, 196830, 196878), (3, 157464, 157512), (3, 177147, 177195), (3, 196830, 196878), (3, 216513, 216561), (3, 236196, 236244), (3, 255879, 255927), (3, 275562, 275610), (3, 295245, 295293), (3, 177147, 177195), (3, 236196, 236244)]

def row049_layer006_block003 : List ColouredInterval :=
  [(3, 295245, 295293), (3, 177147, 177195), (5, 156250, 156298), (5, 171875, 171923), (5, 187500, 187548), (5, 203125, 203173), (5, 218750, 218798), (5, 234375, 234423), (5, 250000, 250048), (5, 265625, 265673), (5, 281250, 281298), (5, 296875, 296923), (5, 156250, 156298), (5, 234375, 234423), (11, 161051, 161099), (11, 175692, 175740)]

def row049_layer006_block004 : List ColouredInterval :=
  [(11, 190333, 190381), (11, 204974, 205022), (11, 219615, 219663), (11, 234256, 234304), (11, 248897, 248945), (11, 263538, 263586), (11, 278179, 278227), (11, 292820, 292868), (11, 161051, 161099), (13, 171366, 171414), (13, 199927, 199975), (13, 228488, 228536), (13, 257049, 257097), (13, 285610, 285658), (17, 167042, 167090), (17, 250563, 250611)]

def row049_layer006_block005 : List ColouredInterval :=
  [(19, 150898, 150946), (19, 157757, 157805), (19, 164616, 164664), (19, 171475, 171523), (19, 178334, 178382), (19, 185193, 185241), (19, 192052, 192100), (19, 198911, 198959), (19, 205770, 205818), (19, 260642, 260690), (23, 158171, 158219), (23, 170338, 170386), (23, 182505, 182553), (23, 194672, 194720), (23, 206839, 206887), (23, 219006, 219054)]

def row049_layer006_block006 : List ColouredInterval :=
  [(23, 231173, 231221), (23, 243340, 243388), (23, 255507, 255555), (23, 267674, 267722), (23, 279841, 279889), (23, 292008, 292056), (23, 279841, 279889), (29, 170723, 170771), (29, 195112, 195160), (29, 219501, 219549), (29, 243890, 243938), (29, 268279, 268327), (29, 292668, 292716), (31, 178746, 178794), (31, 208537, 208585), (31, 238328, 238376)]

def row049_layer006_block007 : List ColouredInterval :=
  [(31, 268119, 268167), (31, 297910, 297958), (37, 151959, 152007), (37, 202612, 202660), (37, 253265, 253313), (41, 206763, 206811), (41, 275684, 275732), (43, 159014, 159062), (43, 238521, 238569), (47, 207646, 207694)]

def row049_layer006_chunks : List (List ColouredInterval) :=
  [row049_layer006_block000, row049_layer006_block001, row049_layer006_block002, row049_layer006_block003, row049_layer006_block004, row049_layer006_block005, row049_layer006_block006, row049_layer006_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_arithmetic : LayerArithmeticValid row049.height { lower := 150528, upper := 301056, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_arithmetic
