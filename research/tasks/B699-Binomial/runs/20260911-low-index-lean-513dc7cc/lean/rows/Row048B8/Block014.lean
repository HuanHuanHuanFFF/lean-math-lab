import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block013
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_pairs002 :
    row048_layer005_block002.all (fun I => row048_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_pairs003 :
    row048_layer005_block003.all (fun I => row048_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_pairs004 :
    row048_layer005_block004.all (fun I => row048_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_pairs005 :
    row048_layer005_block005.all (fun I => row048_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_pairs006 :
    row048_layer005_block006.all (fun I => row048_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_chunks_eq : row048_layer005_chunks.flatten = row048_layer005_intervals := by
  rfl

theorem row048_layer005_pairs : pairCoverCheck row048_layer005_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer005_chunks_eq
  intro block hblock
  simp only [row048_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer005_pairs000
  · exact row048_layer005_pairs001
  · exact row048_layer005_pairs002
  · exact row048_layer005_pairs003
  · exact row048_layer005_pairs004
  · exact row048_layer005_pairs005
  · exact row048_layer005_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer005_checked :
    coverLayerCheck row048.height row048.goods { lower := 72192, upper := 144384, M := 37 } = true := by
  exact coverLayerCheck_of_parts row048_layer005_arithmetic row048_layer005_enumeration row048_bounds_eq row048_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer006_intervals : List ColouredInterval :=
  [(2, 262144, 262191), (2, 262144, 262191), (3, 157464, 157511), (3, 177147, 177194), (3, 196830, 196877), (3, 216513, 216560), (3, 236196, 236243), (3, 177147, 177194), (3, 236196, 236243), (3, 177147, 177194), (5, 156250, 156297), (5, 171875, 171922), (5, 187500, 187547), (5, 203125, 203172), (5, 218750, 218797), (5, 234375, 234422), (5, 250000, 250047), (5, 265625, 265672), (5, 281250, 281297), (5, 156250, 156297), (5, 234375, 234422), (7, 151263, 151310), (7, 168070, 168117), (7, 184877, 184924), (7, 201684, 201731), (7, 218491, 218538), (7, 235298, 235345), (7, 252105, 252152), (7, 268912, 268959), (7, 285719, 285766), (7, 235298, 235345), (11, 146410, 146457), (11, 161051, 161098), (11, 175692, 175739), (11, 190333, 190380), (11, 204974, 205021), (11, 219615, 219662), (11, 234256, 234303), (11, 248897, 248944), (11, 263538, 263585), (11, 278179, 278226), (11, 161051, 161098), (13, 171366, 171413), (13, 199927, 199974), (13, 228488, 228535), (13, 257049, 257096), (13, 285610, 285657), (17, 147390, 147437), (17, 152303, 152350), (17, 157216, 157263), (17, 162129, 162176), (17, 167042, 167089), (17, 171955, 172002), (17, 176868, 176915), (17, 167042, 167089), (17, 250563, 250610), (19, 150898, 150945), (19, 157757, 157804), (19, 164616, 164663), (19, 171475, 171522), (19, 178334, 178381), (19, 185193, 185240), (19, 192052, 192099), (19, 198911, 198958), (19, 205770, 205817), (19, 212629, 212676), (19, 219488, 219535), (19, 226347, 226394), (19, 233206, 233253), (19, 240065, 240112), (19, 246924, 246971), (19, 260642, 260689), (23, 146004, 146051), (23, 158171, 158218), (23, 170338, 170385), (23, 182505, 182552), (23, 194672, 194719), (23, 206839, 206886), (23, 219006, 219053), (23, 231173, 231220), (23, 243340, 243387), (23, 255507, 255554), (23, 267674, 267721), (23, 279841, 279888), (23, 279841, 279888), (29, 146334, 146381), (29, 170723, 170770), (29, 195112, 195159), (29, 219501, 219548), (29, 243890, 243937), (29, 268279, 268326), (31, 148955, 149002), (31, 178746, 178793), (31, 208537, 208584), (31, 238328, 238375), (31, 268119, 268166), (37, 151959, 152006), (37, 202612, 202659), (37, 253265, 253312), (41, 206763, 206810), (41, 275684, 275731), (43, 159014, 159061), (43, 238521, 238568), (47, 207646, 207693)]

def row048_layer006_block000 : List ColouredInterval :=
  [(2, 262144, 262191), (2, 262144, 262191), (3, 157464, 157511), (3, 177147, 177194), (3, 196830, 196877), (3, 216513, 216560), (3, 236196, 236243), (3, 177147, 177194), (3, 236196, 236243), (3, 177147, 177194), (5, 156250, 156297), (5, 171875, 171922), (5, 187500, 187547), (5, 203125, 203172), (5, 218750, 218797), (5, 234375, 234422)]

def row048_layer006_block001 : List ColouredInterval :=
  [(5, 250000, 250047), (5, 265625, 265672), (5, 281250, 281297), (5, 156250, 156297), (5, 234375, 234422), (7, 151263, 151310), (7, 168070, 168117), (7, 184877, 184924), (7, 201684, 201731), (7, 218491, 218538), (7, 235298, 235345), (7, 252105, 252152), (7, 268912, 268959), (7, 285719, 285766), (7, 235298, 235345), (11, 146410, 146457)]

def row048_layer006_block002 : List ColouredInterval :=
  [(11, 161051, 161098), (11, 175692, 175739), (11, 190333, 190380), (11, 204974, 205021), (11, 219615, 219662), (11, 234256, 234303), (11, 248897, 248944), (11, 263538, 263585), (11, 278179, 278226), (11, 161051, 161098), (13, 171366, 171413), (13, 199927, 199974), (13, 228488, 228535), (13, 257049, 257096), (13, 285610, 285657), (17, 147390, 147437)]

def row048_layer006_block003 : List ColouredInterval :=
  [(17, 152303, 152350), (17, 157216, 157263), (17, 162129, 162176), (17, 167042, 167089), (17, 171955, 172002), (17, 176868, 176915), (17, 167042, 167089), (17, 250563, 250610), (19, 150898, 150945), (19, 157757, 157804), (19, 164616, 164663), (19, 171475, 171522), (19, 178334, 178381), (19, 185193, 185240), (19, 192052, 192099), (19, 198911, 198958)]

def row048_layer006_block004 : List ColouredInterval :=
  [(19, 205770, 205817), (19, 212629, 212676), (19, 219488, 219535), (19, 226347, 226394), (19, 233206, 233253), (19, 240065, 240112), (19, 246924, 246971), (19, 260642, 260689), (23, 146004, 146051), (23, 158171, 158218), (23, 170338, 170385), (23, 182505, 182552), (23, 194672, 194719), (23, 206839, 206886), (23, 219006, 219053), (23, 231173, 231220)]

def row048_layer006_block005 : List ColouredInterval :=
  [(23, 243340, 243387), (23, 255507, 255554), (23, 267674, 267721), (23, 279841, 279888), (23, 279841, 279888), (29, 146334, 146381), (29, 170723, 170770), (29, 195112, 195159), (29, 219501, 219548), (29, 243890, 243937), (29, 268279, 268326), (31, 148955, 149002), (31, 178746, 178793), (31, 208537, 208584), (31, 238328, 238375), (31, 268119, 268166)]

def row048_layer006_block006 : List ColouredInterval :=
  [(37, 151959, 152006), (37, 202612, 202659), (37, 253265, 253312), (41, 206763, 206810), (41, 275684, 275731), (43, 159014, 159061), (43, 238521, 238568), (47, 207646, 207693)]

def row048_layer006_chunks : List (List ColouredInterval) :=
  [row048_layer006_block000, row048_layer006_block001, row048_layer006_block002, row048_layer006_block003, row048_layer006_block004, row048_layer006_block005, row048_layer006_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer006_intervals
