import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block000

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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_enumeration :
    activePowerIntervalList 49 30 150528 301056 = row049_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs000 :
    row049_layer006_block000.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs001 :
    row049_layer006_block001.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs002 :
    row049_layer006_block002.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs003 :
    row049_layer006_block003.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs004 :
    row049_layer006_block004.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs005 :
    row049_layer006_block005.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs006 :
    row049_layer006_block006.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_pairs007 :
    row049_layer006_block007.all (fun I => row049_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_chunks_eq : row049_layer006_chunks.flatten = row049_layer006_intervals := by
  rfl

theorem row049_layer006_pairs : pairCoverCheck row049_layer006_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer006_chunks_eq
  intro block hblock
  simp only [row049_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer006_pairs000
  · exact row049_layer006_pairs001
  · exact row049_layer006_pairs002
  · exact row049_layer006_pairs003
  · exact row049_layer006_pairs004
  · exact row049_layer006_pairs005
  · exact row049_layer006_pairs006
  · exact row049_layer006_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer006_checked :
    coverLayerCheck row049.height row049.goods { lower := 150528, upper := 301056, M := 30 } = true := by
  exact coverLayerCheck_of_parts row049_layer006_arithmetic row049_layer006_enumeration row049_bounds_eq row049_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer007_intervals : List ColouredInterval :=
  [(2, 311296, 311344), (2, 327680, 327728), (2, 344064, 344112), (2, 360448, 360496), (2, 376832, 376880), (2, 393216, 393264), (2, 409600, 409648), (2, 425984, 426032), (2, 442368, 442416), (2, 458752, 458800), (2, 475136, 475184), (2, 327680, 327728), (2, 360448, 360496), (2, 393216, 393264), (2, 425984, 426032), (2, 458752, 458800), (2, 491520, 491568), (2, 524288, 524336), (2, 557056, 557104), (2, 589824, 589872), (2, 327680, 327728), (2, 393216, 393264), (2, 458752, 458800), (2, 524288, 524336), (2, 589824, 589872), (2, 393216, 393264), (2, 524288, 524336), (2, 524288, 524336), (2, 524288, 524336), (3, 314928, 314976), (3, 334611, 334659), (3, 354294, 354342), (3, 373977, 374025), (3, 393660, 393708), (3, 413343, 413391), (3, 433026, 433074), (3, 452709, 452757), (3, 472392, 472440), (3, 492075, 492123), (3, 511758, 511806), (3, 531441, 531489), (3, 551124, 551172), (3, 570807, 570855), (3, 354294, 354342), (3, 413343, 413391), (3, 472392, 472440), (3, 531441, 531489), (3, 590490, 590538), (3, 354294, 354342), (3, 531441, 531489), (3, 531441, 531489), (5, 312500, 312548), (5, 328125, 328173), (5, 343750, 343798), (5, 359375, 359423), (5, 375000, 375048), (5, 390625, 390673), (5, 406250, 406298), (5, 421875, 421923), (5, 437500, 437548), (5, 453125, 453173), (5, 312500, 312548), (5, 390625, 390673), (5, 468750, 468798), (5, 546875, 546923), (5, 390625, 390673), (11, 307461, 307509), (11, 322102, 322150), (11, 336743, 336791), (11, 351384, 351432), (11, 366025, 366073), (11, 380666, 380714), (11, 395307, 395355), (11, 409948, 409996), (11, 424589, 424637), (11, 322102, 322150), (11, 483153, 483201), (13, 314171, 314219), (13, 342732, 342780), (13, 371293, 371341), (13, 399854, 399902), (13, 428415, 428463), (13, 456976, 457024), (13, 485537, 485585), (13, 514098, 514146), (13, 542659, 542707), (13, 571220, 571268), (13, 599781, 599829), (13, 371293, 371341), (17, 334084, 334132), (17, 417605, 417653), (17, 501126, 501174), (17, 584647, 584695), (19, 390963, 391011), (19, 521284, 521332), (23, 304175, 304223), (23, 316342, 316390), (23, 328509, 328557), (23, 340676, 340724), (23, 352843, 352891), (23, 559682, 559730), (29, 317057, 317105), (29, 341446, 341494), (29, 365835, 365883), (29, 390224, 390272), (29, 414613, 414661), (29, 439002, 439050), (29, 463391, 463439), (29, 487780, 487828), (29, 512169, 512217), (29, 536558, 536606), (29, 560947, 560995), (29, 585336, 585384), (31, 327701, 327749), (31, 357492, 357540), (31, 387283, 387331), (31, 417074, 417122), (31, 446865, 446913), (31, 476656, 476704), (31, 506447, 506495), (31, 536238, 536286), (31, 566029, 566077), (31, 595820, 595868), (37, 303918, 303966), (37, 354571, 354619), (37, 405224, 405272), (37, 455877, 455925), (37, 506530, 506578), (37, 557183, 557231), (41, 344605, 344653), (41, 413526, 413574), (41, 482447, 482495), (41, 551368, 551416), (43, 318028, 318076), (43, 397535, 397583), (43, 477042, 477090), (43, 556549, 556597), (47, 311469, 311517), (47, 415292, 415340), (47, 519115, 519163)]

def row049_layer007_block000 : List ColouredInterval :=
  [(2, 311296, 311344), (2, 327680, 327728), (2, 344064, 344112), (2, 360448, 360496), (2, 376832, 376880), (2, 393216, 393264), (2, 409600, 409648), (2, 425984, 426032), (2, 442368, 442416), (2, 458752, 458800), (2, 475136, 475184), (2, 327680, 327728), (2, 360448, 360496), (2, 393216, 393264)]

def row049_layer007_block001 : List ColouredInterval :=
  [(2, 425984, 426032), (2, 458752, 458800), (2, 491520, 491568), (2, 524288, 524336), (2, 557056, 557104), (2, 589824, 589872), (2, 327680, 327728), (2, 393216, 393264), (2, 458752, 458800), (2, 524288, 524336), (2, 589824, 589872), (2, 393216, 393264), (2, 524288, 524336), (2, 524288, 524336)]

def row049_layer007_block002 : List ColouredInterval :=
  [(2, 524288, 524336), (3, 314928, 314976), (3, 334611, 334659), (3, 354294, 354342), (3, 373977, 374025), (3, 393660, 393708), (3, 413343, 413391), (3, 433026, 433074), (3, 452709, 452757), (3, 472392, 472440), (3, 492075, 492123), (3, 511758, 511806), (3, 531441, 531489), (3, 551124, 551172)]

def row049_layer007_block003 : List ColouredInterval :=
  [(3, 570807, 570855), (3, 354294, 354342), (3, 413343, 413391), (3, 472392, 472440), (3, 531441, 531489), (3, 590490, 590538), (3, 354294, 354342), (3, 531441, 531489), (3, 531441, 531489), (5, 312500, 312548), (5, 328125, 328173), (5, 343750, 343798), (5, 359375, 359423), (5, 375000, 375048)]

def row049_layer007_block004 : List ColouredInterval :=
  [(5, 390625, 390673), (5, 406250, 406298), (5, 421875, 421923), (5, 437500, 437548), (5, 453125, 453173), (5, 312500, 312548), (5, 390625, 390673), (5, 468750, 468798), (5, 546875, 546923), (5, 390625, 390673), (11, 307461, 307509), (11, 322102, 322150), (11, 336743, 336791), (11, 351384, 351432)]

def row049_layer007_block005 : List ColouredInterval :=
  [(11, 366025, 366073), (11, 380666, 380714), (11, 395307, 395355), (11, 409948, 409996), (11, 424589, 424637), (11, 322102, 322150), (11, 483153, 483201), (13, 314171, 314219), (13, 342732, 342780), (13, 371293, 371341), (13, 399854, 399902), (13, 428415, 428463), (13, 456976, 457024), (13, 485537, 485585)]

def row049_layer007_block006 : List ColouredInterval :=
  [(13, 514098, 514146), (13, 542659, 542707), (13, 571220, 571268), (13, 599781, 599829), (13, 371293, 371341), (17, 334084, 334132), (17, 417605, 417653), (17, 501126, 501174), (17, 584647, 584695), (19, 390963, 391011), (19, 521284, 521332), (23, 304175, 304223), (23, 316342, 316390), (23, 328509, 328557)]

def row049_layer007_block007 : List ColouredInterval :=
  [(23, 340676, 340724), (23, 352843, 352891), (23, 559682, 559730), (29, 317057, 317105), (29, 341446, 341494), (29, 365835, 365883), (29, 390224, 390272), (29, 414613, 414661), (29, 439002, 439050), (29, 463391, 463439), (29, 487780, 487828), (29, 512169, 512217), (29, 536558, 536606), (29, 560947, 560995)]

def row049_layer007_block008 : List ColouredInterval :=
  [(29, 585336, 585384), (31, 327701, 327749), (31, 357492, 357540), (31, 387283, 387331), (31, 417074, 417122), (31, 446865, 446913), (31, 476656, 476704), (31, 506447, 506495), (31, 536238, 536286), (31, 566029, 566077), (31, 595820, 595868), (37, 303918, 303966), (37, 354571, 354619), (37, 405224, 405272)]

def row049_layer007_block009 : List ColouredInterval :=
  [(37, 455877, 455925), (37, 506530, 506578), (37, 557183, 557231), (41, 344605, 344653), (41, 413526, 413574), (41, 482447, 482495), (41, 551368, 551416), (43, 318028, 318076), (43, 397535, 397583), (43, 477042, 477090), (43, 556549, 556597), (47, 311469, 311517), (47, 415292, 415340), (47, 519115, 519163)]

def row049_layer007_chunks : List (List ColouredInterval) :=
  [row049_layer007_block000, row049_layer007_block001, row049_layer007_block002, row049_layer007_block003, row049_layer007_block004, row049_layer007_block005, row049_layer007_block006, row049_layer007_block007, row049_layer007_block008, row049_layer007_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_arithmetic : LayerArithmeticValid row049.height { lower := 301056, upper := 602112, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_enumeration :
    activePowerIntervalList 49 29 301056 602112 = row049_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs000 :
    row049_layer007_block000.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs001 :
    row049_layer007_block001.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs002 :
    row049_layer007_block002.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs003 :
    row049_layer007_block003.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs004 :
    row049_layer007_block004.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs005 :
    row049_layer007_block005.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs006 :
    row049_layer007_block006.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs007 :
    row049_layer007_block007.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs008 :
    row049_layer007_block008.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_pairs009 :
    row049_layer007_block009.all (fun I => row049_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_chunks_eq : row049_layer007_chunks.flatten = row049_layer007_intervals := by
  rfl

theorem row049_layer007_pairs : pairCoverCheck row049_layer007_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer007_chunks_eq
  intro block hblock
  simp only [row049_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer007_pairs000
  · exact row049_layer007_pairs001
  · exact row049_layer007_pairs002
  · exact row049_layer007_pairs003
  · exact row049_layer007_pairs004
  · exact row049_layer007_pairs005
  · exact row049_layer007_pairs006
  · exact row049_layer007_pairs007
  · exact row049_layer007_pairs008
  · exact row049_layer007_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer007_checked :
    coverLayerCheck row049.height row049.goods { lower := 301056, upper := 602112, M := 29 } = true := by
  exact coverLayerCheck_of_parts row049_layer007_arithmetic row049_layer007_enumeration row049_bounds_eq row049_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer008_intervals : List ColouredInterval :=
  [(2, 622592, 622640), (2, 655360, 655408), (2, 688128, 688176), (2, 720896, 720944), (2, 753664, 753712), (2, 786432, 786480), (2, 819200, 819248), (2, 851968, 852016), (2, 884736, 884784), (2, 655360, 655408), (2, 720896, 720944), (2, 786432, 786480), (2, 851968, 852016), (2, 917504, 917552), (2, 983040, 983088), (2, 1048576, 1048624), (2, 1114112, 1114160), (2, 1179648, 1179696), (2, 655360, 655408), (2, 786432, 786480), (2, 917504, 917552), (2, 1048576, 1048624), (2, 1179648, 1179696), (2, 786432, 786480), (2, 1048576, 1048624), (2, 1048576, 1048624), (2, 1048576, 1048624), (3, 649539, 649587), (3, 708588, 708636), (3, 767637, 767685), (3, 826686, 826734), (3, 885735, 885783), (3, 944784, 944832), (3, 1003833, 1003881), (3, 1062882, 1062930), (3, 1121931, 1121979), (3, 1180980, 1181028), (3, 708588, 708636), (3, 885735, 885783), (3, 1062882, 1062930), (3, 1062882, 1062930), (5, 625000, 625048), (5, 703125, 703173), (5, 781250, 781298), (5, 859375, 859423), (5, 937500, 937548), (5, 1015625, 1015673), (5, 1093750, 1093798), (5, 1171875, 1171923), (5, 781250, 781298), (5, 1171875, 1171923), (11, 644204, 644252), (11, 805255, 805303), (11, 966306, 966354), (11, 1127357, 1127405), (13, 628342, 628390), (13, 656903, 656951), (13, 685464, 685512), (13, 714025, 714073), (13, 742586, 742634), (13, 771147, 771195), (13, 742586, 742634), (13, 1113879, 1113927), (17, 668168, 668216), (17, 751689, 751737), (17, 835210, 835258), (17, 918731, 918779), (17, 1002252, 1002300), (17, 1085773, 1085821), (17, 1169294, 1169342), (19, 651605, 651653), (19, 781926, 781974), (19, 912247, 912295), (19, 1042568, 1042616), (19, 1172889, 1172937), (23, 839523, 839571), (23, 1119364, 1119412), (29, 609725, 609773), (29, 634114, 634162), (29, 658503, 658551), (29, 707281, 707329), (31, 625611, 625659), (31, 655402, 655450), (31, 685193, 685241), (31, 714984, 715032), (31, 744775, 744823), (31, 774566, 774614), (31, 804357, 804405), (31, 923521, 923569), (37, 607836, 607884), (37, 658489, 658537), (37, 709142, 709190), (37, 759795, 759843), (37, 810448, 810496), (37, 861101, 861149), (37, 911754, 911802), (37, 962407, 962455), (37, 1013060, 1013108), (37, 1063713, 1063761), (37, 1114366, 1114414), (37, 1165019, 1165067), (41, 620289, 620337), (41, 689210, 689258), (41, 758131, 758179), (41, 827052, 827100), (41, 895973, 896021), (41, 964894, 964942), (41, 1033815, 1033863), (41, 1102736, 1102784), (41, 1171657, 1171705), (43, 636056, 636104), (43, 715563, 715611), (43, 795070, 795118), (43, 874577, 874625), (43, 954084, 954132), (43, 1033591, 1033639), (43, 1113098, 1113146), (43, 1192605, 1192653), (47, 622938, 622986), (47, 726761, 726809), (47, 830584, 830632), (47, 934407, 934455), (47, 1038230, 1038278), (47, 1142053, 1142101)]

def row049_layer008_block000 : List ColouredInterval :=
  [(2, 622592, 622640), (2, 655360, 655408), (2, 688128, 688176), (2, 720896, 720944), (2, 753664, 753712), (2, 786432, 786480), (2, 819200, 819248), (2, 851968, 852016), (2, 884736, 884784), (2, 655360, 655408), (2, 720896, 720944), (2, 786432, 786480), (2, 851968, 852016), (2, 917504, 917552), (2, 983040, 983088), (2, 1048576, 1048624)]

def row049_layer008_block001 : List ColouredInterval :=
  [(2, 1114112, 1114160), (2, 1179648, 1179696), (2, 655360, 655408), (2, 786432, 786480), (2, 917504, 917552), (2, 1048576, 1048624), (2, 1179648, 1179696), (2, 786432, 786480), (2, 1048576, 1048624), (2, 1048576, 1048624), (2, 1048576, 1048624), (3, 649539, 649587), (3, 708588, 708636), (3, 767637, 767685), (3, 826686, 826734), (3, 885735, 885783)]

def row049_layer008_block002 : List ColouredInterval :=
  [(3, 944784, 944832), (3, 1003833, 1003881), (3, 1062882, 1062930), (3, 1121931, 1121979), (3, 1180980, 1181028), (3, 708588, 708636), (3, 885735, 885783), (3, 1062882, 1062930), (3, 1062882, 1062930), (5, 625000, 625048), (5, 703125, 703173), (5, 781250, 781298), (5, 859375, 859423), (5, 937500, 937548), (5, 1015625, 1015673), (5, 1093750, 1093798)]

def row049_layer008_block003 : List ColouredInterval :=
  [(5, 1171875, 1171923), (5, 781250, 781298), (5, 1171875, 1171923), (11, 644204, 644252), (11, 805255, 805303), (11, 966306, 966354), (11, 1127357, 1127405), (13, 628342, 628390), (13, 656903, 656951), (13, 685464, 685512), (13, 714025, 714073), (13, 742586, 742634), (13, 771147, 771195), (13, 742586, 742634), (13, 1113879, 1113927), (17, 668168, 668216)]

def row049_layer008_block004 : List ColouredInterval :=
  [(17, 751689, 751737), (17, 835210, 835258), (17, 918731, 918779), (17, 1002252, 1002300), (17, 1085773, 1085821), (17, 1169294, 1169342), (19, 651605, 651653), (19, 781926, 781974), (19, 912247, 912295), (19, 1042568, 1042616), (19, 1172889, 1172937), (23, 839523, 839571), (23, 1119364, 1119412), (29, 609725, 609773), (29, 634114, 634162), (29, 658503, 658551)]

def row049_layer008_block005 : List ColouredInterval :=
  [(29, 707281, 707329), (31, 625611, 625659), (31, 655402, 655450), (31, 685193, 685241), (31, 714984, 715032), (31, 744775, 744823), (31, 774566, 774614), (31, 804357, 804405), (31, 923521, 923569), (37, 607836, 607884), (37, 658489, 658537), (37, 709142, 709190), (37, 759795, 759843), (37, 810448, 810496), (37, 861101, 861149), (37, 911754, 911802)]

def row049_layer008_block006 : List ColouredInterval :=
  [(37, 962407, 962455), (37, 1013060, 1013108), (37, 1063713, 1063761), (37, 1114366, 1114414), (37, 1165019, 1165067), (41, 620289, 620337), (41, 689210, 689258), (41, 758131, 758179), (41, 827052, 827100), (41, 895973, 896021), (41, 964894, 964942), (41, 1033815, 1033863), (41, 1102736, 1102784), (41, 1171657, 1171705), (43, 636056, 636104), (43, 715563, 715611)]

def row049_layer008_block007 : List ColouredInterval :=
  [(43, 795070, 795118), (43, 874577, 874625), (43, 954084, 954132), (43, 1033591, 1033639), (43, 1113098, 1113146), (43, 1192605, 1192653), (47, 622938, 622986), (47, 726761, 726809), (47, 830584, 830632), (47, 934407, 934455), (47, 1038230, 1038278), (47, 1142053, 1142101)]

def row049_layer008_chunks : List (List ColouredInterval) :=
  [row049_layer008_block000, row049_layer008_block001, row049_layer008_block002, row049_layer008_block003, row049_layer008_block004, row049_layer008_block005, row049_layer008_block006, row049_layer008_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_arithmetic : LayerArithmeticValid row049.height { lower := 602112, upper := 1204224, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_enumeration :
    activePowerIntervalList 49 27 602112 1204224 = row049_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs000 :
    row049_layer008_block000.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs001 :
    row049_layer008_block001.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs002 :
    row049_layer008_block002.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs003 :
    row049_layer008_block003.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs004 :
    row049_layer008_block004.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs005 :
    row049_layer008_block005.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs006 :
    row049_layer008_block006.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_pairs007 :
    row049_layer008_block007.all (fun I => row049_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_chunks_eq : row049_layer008_chunks.flatten = row049_layer008_intervals := by
  rfl

theorem row049_layer008_pairs : pairCoverCheck row049_layer008_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer008_chunks_eq
  intro block hblock
  simp only [row049_layer008_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer008_pairs000
  · exact row049_layer008_pairs001
  · exact row049_layer008_pairs002
  · exact row049_layer008_pairs003
  · exact row049_layer008_pairs004
  · exact row049_layer008_pairs005
  · exact row049_layer008_pairs006
  · exact row049_layer008_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer008_checked :
    coverLayerCheck row049.height row049.goods { lower := 602112, upper := 1204224, M := 27 } = true := by
  exact coverLayerCheck_of_parts row049_layer008_arithmetic row049_layer008_enumeration row049_bounds_eq row049_layer008_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer009_intervals : List ColouredInterval :=
  [(2, 1245184, 1245232), (2, 1310720, 1310768), (2, 1376256, 1376304), (2, 1441792, 1441840), (2, 1507328, 1507376), (2, 1572864, 1572912), (2, 1638400, 1638448), (2, 1703936, 1703984), (2, 1310720, 1310768), (2, 1441792, 1441840), (2, 1572864, 1572912), (2, 1703936, 1703984), (2, 1835008, 1835056), (2, 1966080, 1966128), (2, 2097152, 2097200), (2, 2228224, 2228272), (2, 2359296, 2359344), (2, 1310720, 1310768), (2, 1572864, 1572912), (2, 1835008, 1835056), (2, 2097152, 2097200), (2, 2359296, 2359344), (2, 1572864, 1572912), (2, 2097152, 2097200), (2, 2097152, 2097200), (2, 2097152, 2097200), (3, 1240029, 1240077), (3, 1299078, 1299126), (3, 1358127, 1358175), (3, 1417176, 1417224), (3, 1476225, 1476273), (3, 1535274, 1535322), (3, 1240029, 1240077), (3, 1417176, 1417224), (3, 1594323, 1594371), (3, 1771470, 1771518), (3, 1948617, 1948665), (3, 2125764, 2125812), (3, 2302911, 2302959), (3, 1594323, 1594371), (3, 2125764, 2125812), (3, 1594323, 1594371), (5, 1250000, 1250048), (5, 1328125, 1328173), (5, 1406250, 1406298), (5, 1484375, 1484423), (5, 1562500, 1562548), (5, 1640625, 1640673), (5, 1718750, 1718798), (5, 1796875, 1796923), (5, 1875000, 1875048), (5, 1953125, 1953173), (5, 2031250, 2031298), (5, 1562500, 1562548), (5, 1953125, 1953173), (5, 2343750, 2343798), (5, 1953125, 1953173), (11, 1288408, 1288456), (11, 1449459, 1449507), (11, 1610510, 1610558), (11, 1771561, 1771609), (11, 1932612, 1932660), (11, 2093663, 2093711), (11, 2254714, 2254762), (11, 1771561, 1771609), (13, 1485172, 1485220), (13, 1856465, 1856513), (13, 2227758, 2227806), (17, 1252815, 1252863), (17, 1336336, 1336384), (17, 1419857, 1419905), (17, 1503378, 1503426), (17, 1586899, 1586947), (17, 1670420, 1670468), (17, 1753941, 1753989), (17, 1837462, 1837510), (17, 1920983, 1921031), (17, 2004504, 2004552), (17, 2088025, 2088073), (17, 2171546, 2171594), (17, 1419857, 1419905), (19, 1303210, 1303258), (19, 1433531, 1433579), (19, 1563852, 1563900), (19, 1694173, 1694221), (19, 1824494, 1824542), (19, 1954815, 1954863), (19, 2085136, 2085184), (19, 2215457, 2215505), (19, 2345778, 2345826), (23, 1399205, 1399253), (23, 1679046, 1679094), (23, 1958887, 1958935), (23, 2238728, 2238776), (29, 1414562, 1414610), (29, 2121843, 2121891), (31, 1847042, 1847090), (37, 1215672, 1215720), (37, 1266325, 1266373), (37, 1316978, 1317026), (37, 1874161, 1874209), (41, 1240578, 1240626), (41, 1309499, 1309547), (41, 1378420, 1378468), (41, 1447341, 1447389), (41, 1516262, 1516310), (41, 1585183, 1585231), (41, 1654104, 1654152), (41, 1723025, 1723073), (41, 1791946, 1791994), (43, 1272112, 1272160), (43, 1351619, 1351667), (43, 1431126, 1431174), (43, 1510633, 1510681), (43, 1590140, 1590188), (43, 1669647, 1669695), (43, 1749154, 1749202), (43, 1828661, 1828709), (43, 1908168, 1908216), (43, 1987675, 1987723), (43, 2067182, 2067230), (47, 1245876, 1245924), (47, 1349699, 1349747), (47, 1453522, 1453570), (47, 1557345, 1557393), (47, 1661168, 1661216), (47, 1764991, 1765039), (47, 1868814, 1868862), (47, 1972637, 1972685), (47, 2076460, 2076508), (47, 2180283, 2180331), (47, 2284106, 2284154), (47, 2387929, 2387977)]

def row049_layer009_block000 : List ColouredInterval :=
  [(2, 1245184, 1245232), (2, 1310720, 1310768), (2, 1376256, 1376304), (2, 1441792, 1441840), (2, 1507328, 1507376), (2, 1572864, 1572912), (2, 1638400, 1638448), (2, 1703936, 1703984), (2, 1310720, 1310768), (2, 1441792, 1441840), (2, 1572864, 1572912), (2, 1703936, 1703984), (2, 1835008, 1835056), (2, 1966080, 1966128), (2, 2097152, 2097200)]

def row049_layer009_block001 : List ColouredInterval :=
  [(2, 2228224, 2228272), (2, 2359296, 2359344), (2, 1310720, 1310768), (2, 1572864, 1572912), (2, 1835008, 1835056), (2, 2097152, 2097200), (2, 2359296, 2359344), (2, 1572864, 1572912), (2, 2097152, 2097200), (2, 2097152, 2097200), (2, 2097152, 2097200), (3, 1240029, 1240077), (3, 1299078, 1299126), (3, 1358127, 1358175), (3, 1417176, 1417224)]

def row049_layer009_block002 : List ColouredInterval :=
  [(3, 1476225, 1476273), (3, 1535274, 1535322), (3, 1240029, 1240077), (3, 1417176, 1417224), (3, 1594323, 1594371), (3, 1771470, 1771518), (3, 1948617, 1948665), (3, 2125764, 2125812), (3, 2302911, 2302959), (3, 1594323, 1594371), (3, 2125764, 2125812), (3, 1594323, 1594371), (5, 1250000, 1250048), (5, 1328125, 1328173), (5, 1406250, 1406298)]

def row049_layer009_block003 : List ColouredInterval :=
  [(5, 1484375, 1484423), (5, 1562500, 1562548), (5, 1640625, 1640673), (5, 1718750, 1718798), (5, 1796875, 1796923), (5, 1875000, 1875048), (5, 1953125, 1953173), (5, 2031250, 2031298), (5, 1562500, 1562548), (5, 1953125, 1953173), (5, 2343750, 2343798), (5, 1953125, 1953173), (11, 1288408, 1288456), (11, 1449459, 1449507), (11, 1610510, 1610558)]

def row049_layer009_block004 : List ColouredInterval :=
  [(11, 1771561, 1771609), (11, 1932612, 1932660), (11, 2093663, 2093711), (11, 2254714, 2254762), (11, 1771561, 1771609), (13, 1485172, 1485220), (13, 1856465, 1856513), (13, 2227758, 2227806), (17, 1252815, 1252863), (17, 1336336, 1336384), (17, 1419857, 1419905), (17, 1503378, 1503426), (17, 1586899, 1586947), (17, 1670420, 1670468), (17, 1753941, 1753989)]

def row049_layer009_block005 : List ColouredInterval :=
  [(17, 1837462, 1837510), (17, 1920983, 1921031), (17, 2004504, 2004552), (17, 2088025, 2088073), (17, 2171546, 2171594), (17, 1419857, 1419905), (19, 1303210, 1303258), (19, 1433531, 1433579), (19, 1563852, 1563900), (19, 1694173, 1694221), (19, 1824494, 1824542), (19, 1954815, 1954863), (19, 2085136, 2085184), (19, 2215457, 2215505), (19, 2345778, 2345826)]

def row049_layer009_block006 : List ColouredInterval :=
  [(23, 1399205, 1399253), (23, 1679046, 1679094), (23, 1958887, 1958935), (23, 2238728, 2238776), (29, 1414562, 1414610), (29, 2121843, 2121891), (31, 1847042, 1847090), (37, 1215672, 1215720), (37, 1266325, 1266373), (37, 1316978, 1317026), (37, 1874161, 1874209), (41, 1240578, 1240626), (41, 1309499, 1309547), (41, 1378420, 1378468), (41, 1447341, 1447389)]

def row049_layer009_block007 : List ColouredInterval :=
  [(41, 1516262, 1516310), (41, 1585183, 1585231), (41, 1654104, 1654152), (41, 1723025, 1723073), (41, 1791946, 1791994), (43, 1272112, 1272160), (43, 1351619, 1351667), (43, 1431126, 1431174), (43, 1510633, 1510681), (43, 1590140, 1590188), (43, 1669647, 1669695), (43, 1749154, 1749202), (43, 1828661, 1828709), (43, 1908168, 1908216), (43, 1987675, 1987723)]

def row049_layer009_block008 : List ColouredInterval :=
  [(43, 2067182, 2067230), (47, 1245876, 1245924), (47, 1349699, 1349747), (47, 1453522, 1453570), (47, 1557345, 1557393), (47, 1661168, 1661216), (47, 1764991, 1765039), (47, 1868814, 1868862), (47, 1972637, 1972685), (47, 2076460, 2076508), (47, 2180283, 2180331), (47, 2284106, 2284154), (47, 2387929, 2387977)]

def row049_layer009_chunks : List (List ColouredInterval) :=
  [row049_layer009_block000, row049_layer009_block001, row049_layer009_block002, row049_layer009_block003, row049_layer009_block004, row049_layer009_block005, row049_layer009_block006, row049_layer009_block007, row049_layer009_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_arithmetic : LayerArithmeticValid row049.height { lower := 1204224, upper := 2408448, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_enumeration :
    activePowerIntervalList 49 26 1204224 2408448 = row049_layer009_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs000 :
    row049_layer009_block000.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs001 :
    row049_layer009_block001.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs002 :
    row049_layer009_block002.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs003 :
    row049_layer009_block003.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs004 :
    row049_layer009_block004.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs005 :
    row049_layer009_block005.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs006 :
    row049_layer009_block006.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs007 :
    row049_layer009_block007.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs008 :
    row049_layer009_block008.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_chunks_eq : row049_layer009_chunks.flatten = row049_layer009_intervals := by
  rfl

theorem row049_layer009_pairs : pairCoverCheck row049_layer009_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer009_chunks_eq
  intro block hblock
  simp only [row049_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer009_pairs000
  · exact row049_layer009_pairs001
  · exact row049_layer009_pairs002
  · exact row049_layer009_pairs003
  · exact row049_layer009_pairs004
  · exact row049_layer009_pairs005
  · exact row049_layer009_pairs006
  · exact row049_layer009_pairs007
  · exact row049_layer009_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_checked :
    coverLayerCheck row049.height row049.goods { lower := 1204224, upper := 2408448, M := 26 } = true := by
  exact coverLayerCheck_of_parts row049_layer009_arithmetic row049_layer009_enumeration row049_bounds_eq row049_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer010_intervals : List ColouredInterval :=
  [(2, 2490368, 2490416), (2, 2621440, 2621488), (2, 2752512, 2752560), (2, 2883584, 2883632), (2, 3014656, 3014704), (2, 3145728, 3145776), (2, 3276800, 3276848), (2, 2621440, 2621488), (2, 2883584, 2883632), (2, 3145728, 3145776), (2, 3407872, 3407920), (2, 3670016, 3670064), (2, 3932160, 3932208), (2, 4194304, 4194352), (2, 4456448, 4456496), (2, 4718592, 4718640), (2, 2621440, 2621488), (2, 3145728, 3145776), (2, 3670016, 3670064), (2, 4194304, 4194352), (2, 4718592, 4718640), (2, 3145728, 3145776), (2, 4194304, 4194352), (2, 4194304, 4194352), (2, 4194304, 4194352), (3, 2480058, 2480106), (3, 2657205, 2657253), (3, 2834352, 2834400), (3, 3011499, 3011547), (3, 3188646, 3188694), (3, 3365793, 3365841), (3, 3542940, 3542988), (3, 3720087, 3720135), (3, 3897234, 3897282), (3, 4074381, 4074429), (3, 4251528, 4251576), (3, 4428675, 4428723), (3, 2657205, 2657253), (3, 3188646, 3188694), (3, 3720087, 3720135), (3, 4251528, 4251576), (3, 4782969, 4783017), (3, 3188646, 3188694), (3, 4782969, 4783017), (3, 4782969, 4783017), (5, 2734375, 2734423), (5, 3125000, 3125048), (5, 3515625, 3515673), (5, 3906250, 3906298), (5, 4296875, 4296923), (5, 4687500, 4687548), (5, 3906250, 3906298), (11, 2415765, 2415813), (11, 2576816, 2576864), (11, 2737867, 2737915), (11, 2898918, 2898966), (11, 3059969, 3060017), (11, 3221020, 3221068), (11, 3382071, 3382119), (11, 3543122, 3543170), (11, 3704173, 3704221), (11, 3865224, 3865272), (11, 4026275, 4026323), (11, 3543122, 3543170), (13, 2599051, 2599099), (13, 2970344, 2970392), (13, 3341637, 3341685), (13, 3712930, 3712978), (13, 4084223, 4084271), (13, 4455516, 4455564), (17, 2839714, 2839762), (17, 4259571, 4259619), (19, 2476099, 2476147), (19, 2606420, 2606468), (19, 2736741, 2736789), (19, 2867062, 2867110), (19, 2997383, 2997431), (19, 3127704, 3127752), (19, 3258025, 3258073), (19, 2476099, 2476147), (23, 2518569, 2518617), (23, 2798410, 2798458), (23, 3078251, 3078299), (23, 3358092, 3358140), (23, 3637933, 3637981), (23, 3917774, 3917822), (23, 4197615, 4197663), (23, 4477456, 4477504), (23, 4757297, 4757345), (29, 2829124, 2829172), (29, 3536405, 3536453), (29, 4243686, 4243734), (31, 2770563, 2770611), (31, 3694084, 3694132), (31, 4617605, 4617653), (37, 3748322, 3748370), (41, 2825761, 2825809), (43, 3418801, 3418849), (47, 2491752, 2491800), (47, 2595575, 2595623)]

def row049_layer010_block000 : List ColouredInterval :=
  [(2, 2490368, 2490416), (2, 2621440, 2621488), (2, 2752512, 2752560), (2, 2883584, 2883632), (2, 3014656, 3014704), (2, 3145728, 3145776), (2, 3276800, 3276848), (2, 2621440, 2621488), (2, 2883584, 2883632), (2, 3145728, 3145776), (2, 3407872, 3407920), (2, 3670016, 3670064), (2, 3932160, 3932208), (2, 4194304, 4194352), (2, 4456448, 4456496), (2, 4718592, 4718640)]

def row049_layer010_block001 : List ColouredInterval :=
  [(2, 2621440, 2621488), (2, 3145728, 3145776), (2, 3670016, 3670064), (2, 4194304, 4194352), (2, 4718592, 4718640), (2, 3145728, 3145776), (2, 4194304, 4194352), (2, 4194304, 4194352), (2, 4194304, 4194352), (3, 2480058, 2480106), (3, 2657205, 2657253), (3, 2834352, 2834400), (3, 3011499, 3011547), (3, 3188646, 3188694), (3, 3365793, 3365841), (3, 3542940, 3542988)]

def row049_layer010_block002 : List ColouredInterval :=
  [(3, 3720087, 3720135), (3, 3897234, 3897282), (3, 4074381, 4074429), (3, 4251528, 4251576), (3, 4428675, 4428723), (3, 2657205, 2657253), (3, 3188646, 3188694), (3, 3720087, 3720135), (3, 4251528, 4251576), (3, 4782969, 4783017), (3, 3188646, 3188694), (3, 4782969, 4783017), (3, 4782969, 4783017), (5, 2734375, 2734423), (5, 3125000, 3125048), (5, 3515625, 3515673)]

def row049_layer010_block003 : List ColouredInterval :=
  [(5, 3906250, 3906298), (5, 4296875, 4296923), (5, 4687500, 4687548), (5, 3906250, 3906298), (11, 2415765, 2415813), (11, 2576816, 2576864), (11, 2737867, 2737915), (11, 2898918, 2898966), (11, 3059969, 3060017), (11, 3221020, 3221068), (11, 3382071, 3382119), (11, 3543122, 3543170), (11, 3704173, 3704221), (11, 3865224, 3865272), (11, 4026275, 4026323), (11, 3543122, 3543170)]

def row049_layer010_block004 : List ColouredInterval :=
  [(13, 2599051, 2599099), (13, 2970344, 2970392), (13, 3341637, 3341685), (13, 3712930, 3712978), (13, 4084223, 4084271), (13, 4455516, 4455564), (17, 2839714, 2839762), (17, 4259571, 4259619), (19, 2476099, 2476147), (19, 2606420, 2606468), (19, 2736741, 2736789), (19, 2867062, 2867110), (19, 2997383, 2997431), (19, 3127704, 3127752), (19, 3258025, 3258073), (19, 2476099, 2476147)]

def row049_layer010_block005 : List ColouredInterval :=
  [(23, 2518569, 2518617), (23, 2798410, 2798458), (23, 3078251, 3078299), (23, 3358092, 3358140), (23, 3637933, 3637981), (23, 3917774, 3917822), (23, 4197615, 4197663), (23, 4477456, 4477504), (23, 4757297, 4757345), (29, 2829124, 2829172), (29, 3536405, 3536453), (29, 4243686, 4243734), (31, 2770563, 2770611), (31, 3694084, 3694132), (31, 4617605, 4617653), (37, 3748322, 3748370)]

def row049_layer010_block006 : List ColouredInterval :=
  [(41, 2825761, 2825809), (43, 3418801, 3418849), (47, 2491752, 2491800), (47, 2595575, 2595623)]

def row049_layer010_chunks : List (List ColouredInterval) :=
  [row049_layer010_block000, row049_layer010_block001, row049_layer010_block002, row049_layer010_block003, row049_layer010_block004, row049_layer010_block005, row049_layer010_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_arithmetic : LayerArithmeticValid row049.height { lower := 2408448, upper := 4816896, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_arithmetic
