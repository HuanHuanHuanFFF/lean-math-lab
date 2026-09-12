import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_chunks_eq : row035_layer005_chunks.flatten = row035_layer005_intervals := by
  rfl

theorem row035_layer005_pairs : pairCoverCheck row035_layer005_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer005_chunks_eq
  intro block hblock
  simp only [row035_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer005_pairs000
  · exact row035_layer005_pairs001
  · exact row035_layer005_pairs002
  · exact row035_layer005_pairs003
  · exact row035_layer005_pairs004
  · exact row035_layer005_pairs005
  · exact row035_layer005_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer005_checked :
    coverLayerCheck row035.height row035.goods { lower := 38080, upper := 76160, M := 34 } = true := by
  exact coverLayerCheck_of_parts row035_layer005_arithmetic row035_layer005_enumeration row035_bounds_eq row035_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer006_intervals : List ColouredInterval :=
  [(2, 77824, 77858), (2, 81920, 81954), (2, 86016, 86050), (2, 90112, 90146), (2, 94208, 94242), (2, 98304, 98338), (2, 102400, 102434), (2, 106496, 106530), (2, 110592, 110626), (2, 114688, 114722), (2, 118784, 118818), (2, 122880, 122914), (2, 126976, 127010), (2, 131072, 131106), (2, 135168, 135202), (2, 81920, 81954), (2, 90112, 90146), (2, 98304, 98338), (2, 106496, 106530), (2, 114688, 114722), (2, 122880, 122914), (2, 131072, 131106), (2, 139264, 139298), (2, 147456, 147490), (2, 81920, 81954), (2, 98304, 98338), (2, 114688, 114722), (2, 131072, 131106), (2, 147456, 147490), (2, 98304, 98338), (2, 131072, 131106), (2, 131072, 131106), (2, 131072, 131106), (3, 78732, 78766), (3, 85293, 85327), (3, 91854, 91888), (3, 98415, 98449), (3, 104976, 105010), (3, 111537, 111571), (3, 118098, 118132), (3, 124659, 124693), (3, 131220, 131254), (3, 137781, 137815), (3, 144342, 144376), (3, 150903, 150937), (3, 78732, 78766), (3, 98415, 98449), (3, 118098, 118132), (3, 137781, 137815), (3, 118098, 118132), (5, 78125, 78159), (5, 93750, 93784), (5, 78125, 78159), (7, 117649, 117683), (11, 87846, 87880), (11, 102487, 102521), (11, 117128, 117162), (11, 131769, 131803), (11, 146410, 146444), (13, 85683, 85717), (13, 114244, 114278), (13, 142805, 142839), (17, 78608, 78642), (17, 83521, 83555), (17, 88434, 88468), (17, 93347, 93381), (17, 98260, 98294), (17, 103173, 103207), (17, 108086, 108120), (17, 112999, 113033), (17, 117912, 117946), (17, 122825, 122859), (17, 127738, 127772), (17, 132651, 132685), (17, 137564, 137598), (17, 142477, 142511), (17, 147390, 147424), (17, 152303, 152319), (17, 83521, 83555), (19, 82308, 82342), (19, 89167, 89201), (19, 96026, 96060), (19, 102885, 102919), (19, 109744, 109778), (19, 116603, 116637), (19, 123462, 123496), (19, 130321, 130355), (19, 137180, 137214), (19, 144039, 144073), (19, 150898, 150932), (19, 130321, 130355), (23, 85169, 85203), (23, 97336, 97370), (23, 109503, 109537), (23, 121670, 121704), (23, 133837, 133871), (23, 146004, 146038), (29, 97556, 97590), (29, 121945, 121979), (29, 146334, 146368), (31, 89373, 89407), (31, 119164, 119198), (31, 148955, 148989)]

def row035_layer006_block000 : List ColouredInterval :=
  [(2, 77824, 77858), (2, 81920, 81954), (2, 86016, 86050), (2, 90112, 90146), (2, 94208, 94242), (2, 98304, 98338), (2, 102400, 102434), (2, 106496, 106530), (2, 110592, 110626), (2, 114688, 114722), (2, 118784, 118818), (2, 122880, 122914), (2, 126976, 127010), (2, 131072, 131106), (2, 135168, 135202), (2, 81920, 81954)]

def row035_layer006_block001 : List ColouredInterval :=
  [(2, 90112, 90146), (2, 98304, 98338), (2, 106496, 106530), (2, 114688, 114722), (2, 122880, 122914), (2, 131072, 131106), (2, 139264, 139298), (2, 147456, 147490), (2, 81920, 81954), (2, 98304, 98338), (2, 114688, 114722), (2, 131072, 131106), (2, 147456, 147490), (2, 98304, 98338), (2, 131072, 131106), (2, 131072, 131106)]

def row035_layer006_block002 : List ColouredInterval :=
  [(2, 131072, 131106), (3, 78732, 78766), (3, 85293, 85327), (3, 91854, 91888), (3, 98415, 98449), (3, 104976, 105010), (3, 111537, 111571), (3, 118098, 118132), (3, 124659, 124693), (3, 131220, 131254), (3, 137781, 137815), (3, 144342, 144376), (3, 150903, 150937), (3, 78732, 78766), (3, 98415, 98449), (3, 118098, 118132)]

def row035_layer006_block003 : List ColouredInterval :=
  [(3, 137781, 137815), (3, 118098, 118132), (5, 78125, 78159), (5, 93750, 93784), (5, 78125, 78159), (7, 117649, 117683), (11, 87846, 87880), (11, 102487, 102521), (11, 117128, 117162), (11, 131769, 131803), (11, 146410, 146444), (13, 85683, 85717), (13, 114244, 114278), (13, 142805, 142839), (17, 78608, 78642), (17, 83521, 83555)]

def row035_layer006_block004 : List ColouredInterval :=
  [(17, 88434, 88468), (17, 93347, 93381), (17, 98260, 98294), (17, 103173, 103207), (17, 108086, 108120), (17, 112999, 113033), (17, 117912, 117946), (17, 122825, 122859), (17, 127738, 127772), (17, 132651, 132685), (17, 137564, 137598), (17, 142477, 142511), (17, 147390, 147424), (17, 152303, 152319), (17, 83521, 83555), (19, 82308, 82342)]

def row035_layer006_block005 : List ColouredInterval :=
  [(19, 89167, 89201), (19, 96026, 96060), (19, 102885, 102919), (19, 109744, 109778), (19, 116603, 116637), (19, 123462, 123496), (19, 130321, 130355), (19, 137180, 137214), (19, 144039, 144073), (19, 150898, 150932), (19, 130321, 130355), (23, 85169, 85203), (23, 97336, 97370), (23, 109503, 109537), (23, 121670, 121704), (23, 133837, 133871)]

def row035_layer006_block006 : List ColouredInterval :=
  [(23, 146004, 146038), (29, 97556, 97590), (29, 121945, 121979), (29, 146334, 146368), (31, 89373, 89407), (31, 119164, 119198), (31, 148955, 148989)]

def row035_layer006_chunks : List (List ColouredInterval) :=
  [row035_layer006_block000, row035_layer006_block001, row035_layer006_block002, row035_layer006_block003, row035_layer006_block004, row035_layer006_block005, row035_layer006_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_arithmetic : LayerArithmeticValid row035.height { lower := 76160, upper := 152320, M := 33 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_enumeration :
    activePowerIntervalList 35 33 76160 152320 = row035_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_pairs000 :
    row035_layer006_block000.all (fun I => row035_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_pairs001 :
    row035_layer006_block001.all (fun I => row035_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_pairs002 :
    row035_layer006_block002.all (fun I => row035_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_pairs003 :
    row035_layer006_block003.all (fun I => row035_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_pairs004 :
    row035_layer006_block004.all (fun I => row035_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_pairs005 :
    row035_layer006_block005.all (fun I => row035_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_pairs006 :
    row035_layer006_block006.all (fun I => row035_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_chunks_eq : row035_layer006_chunks.flatten = row035_layer006_intervals := by
  rfl

theorem row035_layer006_pairs : pairCoverCheck row035_layer006_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer006_chunks_eq
  intro block hblock
  simp only [row035_layer006_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer006_pairs000
  · exact row035_layer006_pairs001
  · exact row035_layer006_pairs002
  · exact row035_layer006_pairs003
  · exact row035_layer006_pairs004
  · exact row035_layer006_pairs005
  · exact row035_layer006_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer006_checked :
    coverLayerCheck row035.height row035.goods { lower := 76160, upper := 152320, M := 33 } = true := by
  exact coverLayerCheck_of_parts row035_layer006_arithmetic row035_layer006_enumeration row035_bounds_eq row035_layer006_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer007_intervals : List ColouredInterval :=
  [(2, 155648, 155682), (2, 163840, 163874), (2, 172032, 172066), (2, 180224, 180258), (2, 188416, 188450), (2, 196608, 196642), (2, 204800, 204834), (2, 212992, 213026), (2, 221184, 221218), (2, 229376, 229410), (2, 237568, 237602), (2, 245760, 245794), (2, 253952, 253986), (2, 262144, 262178), (2, 163840, 163874), (2, 180224, 180258), (2, 196608, 196642), (2, 212992, 213026), (2, 229376, 229410), (2, 245760, 245794), (2, 262144, 262178), (2, 278528, 278562), (2, 294912, 294946), (2, 163840, 163874), (2, 196608, 196642), (2, 229376, 229410), (2, 262144, 262178), (2, 294912, 294946), (2, 196608, 196642), (2, 262144, 262178), (2, 262144, 262178), (2, 262144, 262178), (3, 157464, 157498), (3, 164025, 164059), (3, 170586, 170620), (3, 177147, 177181), (3, 183708, 183742), (3, 190269, 190303), (3, 196830, 196864), (3, 203391, 203425), (3, 209952, 209986), (3, 157464, 157498), (3, 177147, 177181), (3, 196830, 196864), (3, 216513, 216547), (3, 236196, 236230), (3, 255879, 255913), (3, 275562, 275596), (3, 295245, 295279), (3, 177147, 177181), (3, 236196, 236230), (3, 295245, 295279), (3, 177147, 177181), (5, 156250, 156284), (5, 234375, 234409), (7, 235298, 235332), (11, 161051, 161085), (11, 175692, 175726), (11, 190333, 190367), (11, 204974, 205008), (11, 219615, 219649), (11, 234256, 234290), (11, 248897, 248931), (11, 263538, 263572), (11, 278179, 278213), (11, 292820, 292854), (11, 161051, 161085), (13, 171366, 171400), (13, 199927, 199961), (13, 228488, 228522), (13, 257049, 257083), (13, 285610, 285644), (17, 152320, 152337), (17, 157216, 157250), (17, 167042, 167076), (17, 250563, 250597), (19, 157757, 157791), (19, 164616, 164650), (19, 171475, 171509), (19, 178334, 178368), (19, 185193, 185227), (19, 192052, 192086), (19, 198911, 198945), (19, 205770, 205804), (19, 212629, 212663), (19, 219488, 219522), (19, 260642, 260676), (23, 158171, 158205), (23, 170338, 170372), (23, 182505, 182539), (23, 194672, 194706), (23, 206839, 206873), (23, 219006, 219040), (23, 231173, 231207), (23, 243340, 243374), (23, 255507, 255541), (23, 267674, 267708), (23, 279841, 279875), (23, 292008, 292042), (23, 304175, 304209), (23, 279841, 279875), (29, 170723, 170757), (29, 195112, 195146), (29, 219501, 219535), (29, 243890, 243924), (29, 268279, 268313), (29, 292668, 292702), (31, 178746, 178780), (31, 208537, 208571), (31, 238328, 238362), (31, 268119, 268153), (31, 297910, 297944)]

def row035_layer007_block000 : List ColouredInterval :=
  [(2, 155648, 155682), (2, 163840, 163874), (2, 172032, 172066), (2, 180224, 180258), (2, 188416, 188450), (2, 196608, 196642), (2, 204800, 204834), (2, 212992, 213026), (2, 221184, 221218), (2, 229376, 229410), (2, 237568, 237602), (2, 245760, 245794), (2, 253952, 253986), (2, 262144, 262178), (2, 163840, 163874), (2, 180224, 180258)]

def row035_layer007_block001 : List ColouredInterval :=
  [(2, 196608, 196642), (2, 212992, 213026), (2, 229376, 229410), (2, 245760, 245794), (2, 262144, 262178), (2, 278528, 278562), (2, 294912, 294946), (2, 163840, 163874), (2, 196608, 196642), (2, 229376, 229410), (2, 262144, 262178), (2, 294912, 294946), (2, 196608, 196642), (2, 262144, 262178), (2, 262144, 262178), (2, 262144, 262178)]

def row035_layer007_block002 : List ColouredInterval :=
  [(3, 157464, 157498), (3, 164025, 164059), (3, 170586, 170620), (3, 177147, 177181), (3, 183708, 183742), (3, 190269, 190303), (3, 196830, 196864), (3, 203391, 203425), (3, 209952, 209986), (3, 157464, 157498), (3, 177147, 177181), (3, 196830, 196864), (3, 216513, 216547), (3, 236196, 236230), (3, 255879, 255913), (3, 275562, 275596)]

def row035_layer007_block003 : List ColouredInterval :=
  [(3, 295245, 295279), (3, 177147, 177181), (3, 236196, 236230), (3, 295245, 295279), (3, 177147, 177181), (5, 156250, 156284), (5, 234375, 234409), (7, 235298, 235332), (11, 161051, 161085), (11, 175692, 175726), (11, 190333, 190367), (11, 204974, 205008), (11, 219615, 219649), (11, 234256, 234290), (11, 248897, 248931), (11, 263538, 263572)]

def row035_layer007_block004 : List ColouredInterval :=
  [(11, 278179, 278213), (11, 292820, 292854), (11, 161051, 161085), (13, 171366, 171400), (13, 199927, 199961), (13, 228488, 228522), (13, 257049, 257083), (13, 285610, 285644), (17, 152320, 152337), (17, 157216, 157250), (17, 167042, 167076), (17, 250563, 250597), (19, 157757, 157791), (19, 164616, 164650), (19, 171475, 171509), (19, 178334, 178368)]

def row035_layer007_block005 : List ColouredInterval :=
  [(19, 185193, 185227), (19, 192052, 192086), (19, 198911, 198945), (19, 205770, 205804), (19, 212629, 212663), (19, 219488, 219522), (19, 260642, 260676), (23, 158171, 158205), (23, 170338, 170372), (23, 182505, 182539), (23, 194672, 194706), (23, 206839, 206873), (23, 219006, 219040), (23, 231173, 231207), (23, 243340, 243374), (23, 255507, 255541)]

def row035_layer007_block006 : List ColouredInterval :=
  [(23, 267674, 267708), (23, 279841, 279875), (23, 292008, 292042), (23, 304175, 304209), (23, 279841, 279875), (29, 170723, 170757), (29, 195112, 195146), (29, 219501, 219535), (29, 243890, 243924), (29, 268279, 268313), (29, 292668, 292702), (31, 178746, 178780), (31, 208537, 208571), (31, 238328, 238362), (31, 268119, 268153), (31, 297910, 297944)]

def row035_layer007_chunks : List (List ColouredInterval) :=
  [row035_layer007_block000, row035_layer007_block001, row035_layer007_block002, row035_layer007_block003, row035_layer007_block004, row035_layer007_block005, row035_layer007_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_arithmetic : LayerArithmeticValid row035.height { lower := 152320, upper := 304640, M := 32 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_enumeration :
    activePowerIntervalList 35 32 152320 304640 = row035_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_pairs000 :
    row035_layer007_block000.all (fun I => row035_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_pairs001 :
    row035_layer007_block001.all (fun I => row035_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_pairs002 :
    row035_layer007_block002.all (fun I => row035_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_pairs003 :
    row035_layer007_block003.all (fun I => row035_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_pairs004 :
    row035_layer007_block004.all (fun I => row035_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_pairs005 :
    row035_layer007_block005.all (fun I => row035_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_pairs006 :
    row035_layer007_block006.all (fun I => row035_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_chunks_eq : row035_layer007_chunks.flatten = row035_layer007_intervals := by
  rfl

theorem row035_layer007_pairs : pairCoverCheck row035_layer007_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer007_chunks_eq
  intro block hblock
  simp only [row035_layer007_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer007_pairs000
  · exact row035_layer007_pairs001
  · exact row035_layer007_pairs002
  · exact row035_layer007_pairs003
  · exact row035_layer007_pairs004
  · exact row035_layer007_pairs005
  · exact row035_layer007_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer007_checked :
    coverLayerCheck row035.height row035.goods { lower := 152320, upper := 304640, M := 32 } = true := by
  exact coverLayerCheck_of_parts row035_layer007_arithmetic row035_layer007_enumeration row035_bounds_eq row035_layer007_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer008_intervals : List ColouredInterval :=
  [(2, 311296, 311330), (2, 327680, 327714), (2, 344064, 344098), (2, 360448, 360482), (2, 376832, 376866), (2, 393216, 393250), (2, 409600, 409634), (2, 425984, 426018), (2, 442368, 442402), (2, 458752, 458786), (2, 475136, 475170), (2, 491520, 491554), (2, 507904, 507938), (2, 327680, 327714), (2, 360448, 360482), (2, 393216, 393250), (2, 425984, 426018), (2, 458752, 458786), (2, 491520, 491554), (2, 524288, 524322), (2, 557056, 557090), (2, 589824, 589858), (2, 327680, 327714), (2, 393216, 393250), (2, 458752, 458786), (2, 524288, 524322), (2, 589824, 589858), (2, 393216, 393250), (2, 524288, 524322), (2, 524288, 524322), (2, 524288, 524322), (3, 314928, 314962), (3, 334611, 334645), (3, 354294, 354328), (3, 373977, 374011), (3, 393660, 393694), (3, 413343, 413377), (3, 433026, 433060), (3, 452709, 452743), (3, 472392, 472426), (3, 492075, 492109), (3, 511758, 511792), (3, 531441, 531475), (3, 551124, 551158), (3, 570807, 570841), (3, 590490, 590524), (3, 354294, 354328), (3, 413343, 413377), (3, 472392, 472426), (3, 531441, 531475), (3, 590490, 590524), (3, 354294, 354328), (3, 531441, 531475), (3, 531441, 531475), (5, 312500, 312534), (5, 390625, 390659), (5, 468750, 468784), (5, 390625, 390659), (7, 352947, 352981), (7, 470596, 470630), (11, 307461, 307495), (11, 322102, 322136), (11, 336743, 336777), (11, 351384, 351418), (11, 366025, 366059), (11, 380666, 380700), (11, 395307, 395341), (11, 409948, 409982), (11, 424589, 424623), (11, 439230, 439264), (11, 453871, 453905), (11, 322102, 322136), (11, 483153, 483187), (13, 314171, 314205), (13, 342732, 342766), (13, 371293, 371327), (13, 399854, 399888), (13, 428415, 428449), (13, 456976, 457010), (13, 485537, 485571), (13, 514098, 514132), (13, 542659, 542693), (13, 571220, 571254), (13, 599781, 599815), (13, 371293, 371327), (17, 334084, 334118), (17, 417605, 417639), (17, 501126, 501160), (17, 584647, 584681), (19, 390963, 390997), (19, 521284, 521318), (23, 316342, 316376), (23, 328509, 328543), (23, 340676, 340710), (23, 352843, 352877), (23, 365010, 365044), (23, 377177, 377211), (23, 559682, 559716), (29, 317057, 317091), (29, 341446, 341480), (29, 365835, 365869), (29, 390224, 390258), (29, 414613, 414647), (29, 439002, 439036), (29, 463391, 463425), (29, 487780, 487814), (29, 512169, 512203), (29, 536558, 536592), (29, 560947, 560981), (29, 585336, 585370), (31, 327701, 327735), (31, 357492, 357526), (31, 387283, 387317), (31, 417074, 417108), (31, 446865, 446899), (31, 476656, 476690), (31, 506447, 506481), (31, 536238, 536272), (31, 566029, 566063), (31, 595820, 595854)]

def row035_layer008_block000 : List ColouredInterval :=
  [(2, 311296, 311330), (2, 327680, 327714), (2, 344064, 344098), (2, 360448, 360482), (2, 376832, 376866), (2, 393216, 393250), (2, 409600, 409634), (2, 425984, 426018), (2, 442368, 442402), (2, 458752, 458786), (2, 475136, 475170), (2, 491520, 491554), (2, 507904, 507938), (2, 327680, 327714), (2, 360448, 360482), (2, 393216, 393250)]

def row035_layer008_block001 : List ColouredInterval :=
  [(2, 425984, 426018), (2, 458752, 458786), (2, 491520, 491554), (2, 524288, 524322), (2, 557056, 557090), (2, 589824, 589858), (2, 327680, 327714), (2, 393216, 393250), (2, 458752, 458786), (2, 524288, 524322), (2, 589824, 589858), (2, 393216, 393250), (2, 524288, 524322), (2, 524288, 524322), (2, 524288, 524322), (3, 314928, 314962)]

def row035_layer008_block002 : List ColouredInterval :=
  [(3, 334611, 334645), (3, 354294, 354328), (3, 373977, 374011), (3, 393660, 393694), (3, 413343, 413377), (3, 433026, 433060), (3, 452709, 452743), (3, 472392, 472426), (3, 492075, 492109), (3, 511758, 511792), (3, 531441, 531475), (3, 551124, 551158), (3, 570807, 570841), (3, 590490, 590524), (3, 354294, 354328), (3, 413343, 413377)]

def row035_layer008_block003 : List ColouredInterval :=
  [(3, 472392, 472426), (3, 531441, 531475), (3, 590490, 590524), (3, 354294, 354328), (3, 531441, 531475), (3, 531441, 531475), (5, 312500, 312534), (5, 390625, 390659), (5, 468750, 468784), (5, 390625, 390659), (7, 352947, 352981), (7, 470596, 470630), (11, 307461, 307495), (11, 322102, 322136), (11, 336743, 336777), (11, 351384, 351418)]

def row035_layer008_block004 : List ColouredInterval :=
  [(11, 366025, 366059), (11, 380666, 380700), (11, 395307, 395341), (11, 409948, 409982), (11, 424589, 424623), (11, 439230, 439264), (11, 453871, 453905), (11, 322102, 322136), (11, 483153, 483187), (13, 314171, 314205), (13, 342732, 342766), (13, 371293, 371327), (13, 399854, 399888), (13, 428415, 428449), (13, 456976, 457010), (13, 485537, 485571)]

def row035_layer008_block005 : List ColouredInterval :=
  [(13, 514098, 514132), (13, 542659, 542693), (13, 571220, 571254), (13, 599781, 599815), (13, 371293, 371327), (17, 334084, 334118), (17, 417605, 417639), (17, 501126, 501160), (17, 584647, 584681), (19, 390963, 390997), (19, 521284, 521318), (23, 316342, 316376), (23, 328509, 328543), (23, 340676, 340710), (23, 352843, 352877), (23, 365010, 365044)]

def row035_layer008_block006 : List ColouredInterval :=
  [(23, 377177, 377211), (23, 559682, 559716), (29, 317057, 317091), (29, 341446, 341480), (29, 365835, 365869), (29, 390224, 390258), (29, 414613, 414647), (29, 439002, 439036), (29, 463391, 463425), (29, 487780, 487814), (29, 512169, 512203), (29, 536558, 536592), (29, 560947, 560981), (29, 585336, 585370), (31, 327701, 327735), (31, 357492, 357526)]

def row035_layer008_block007 : List ColouredInterval :=
  [(31, 387283, 387317), (31, 417074, 417108), (31, 446865, 446899), (31, 476656, 476690), (31, 506447, 506481), (31, 536238, 536272), (31, 566029, 566063), (31, 595820, 595854)]

def row035_layer008_chunks : List (List ColouredInterval) :=
  [row035_layer008_block000, row035_layer008_block001, row035_layer008_block002, row035_layer008_block003, row035_layer008_block004, row035_layer008_block005, row035_layer008_block006, row035_layer008_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_arithmetic : LayerArithmeticValid row035.height { lower := 304640, upper := 609280, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_enumeration :
    activePowerIntervalList 35 31 304640 609280 = row035_layer008_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs000 :
    row035_layer008_block000.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer008_pairs001 :
    row035_layer008_block001.all (fun I => row035_layer008_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer008_pairs001
