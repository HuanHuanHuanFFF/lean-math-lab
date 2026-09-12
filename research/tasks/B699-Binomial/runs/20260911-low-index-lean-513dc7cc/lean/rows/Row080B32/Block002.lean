import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row080B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row080B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer002_checked :
    coverLayerCheck row080.height row080.goods { lower := 25280, upper := 50560, M := 24 } = true := by
  exact coverLayerCheck_of_parts row080_layer002_arithmetic row080_layer002_enumeration row080_bounds_eq row080_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_layer003_intervals : List ColouredInterval :=
  [(2, 65536, 65615), (3, 52488, 52567), (3, 59049, 59128), (3, 65610, 65689), (3, 72171, 72250), (3, 78732, 78811), (3, 85293, 85372), (3, 91854, 91933), (3, 98415, 98494), (3, 59049, 59128), (3, 78732, 78811), (3, 98415, 98494), (3, 59049, 59128), (5, 62500, 62579), (5, 78125, 78204), (7, 67228, 67307), (7, 84035, 84114), (7, 100842, 100921), (11, 58564, 58643), (11, 73205, 73284), (11, 87846, 87925), (13, 57122, 57201), (13, 85683, 85762), (17, 54043, 54122), (17, 58956, 59035), (17, 63869, 63948), (17, 68782, 68861), (17, 73695, 73774), (17, 78608, 78687), (17, 83521, 83600), (17, 88434, 88513), (17, 93347, 93426), (17, 98260, 98339), (17, 83521, 83600), (19, 54872, 54951), (19, 61731, 61810), (19, 68590, 68669), (19, 75449, 75528), (19, 82308, 82387), (19, 89167, 89246), (19, 96026, 96105), (23, 60835, 60914), (23, 73002, 73081), (23, 85169, 85248), (23, 97336, 97415), (29, 73167, 73246), (29, 97556, 97635), (31, 59582, 59661), (31, 89373, 89452), (37, 50653, 50732), (41, 68921, 69000), (43, 79507, 79586), (53, 50562, 50641), (53, 53371, 53450), (53, 56180, 56259), (53, 58989, 59068), (59, 52215, 52294), (59, 55696, 55775), (59, 59177, 59256), (59, 62658, 62737), (59, 66139, 66218), (59, 69620, 69699), (59, 73101, 73180), (61, 52094, 52173), (61, 55815, 55894), (61, 59536, 59615), (61, 63257, 63336), (61, 66978, 67057), (61, 70699, 70778), (61, 74420, 74499), (61, 78141, 78220), (67, 53868, 53947), (67, 58357, 58436), (67, 62846, 62925), (67, 67335, 67414), (67, 71824, 71903), (67, 76313, 76392), (67, 80802, 80881), (67, 85291, 85370), (67, 89780, 89859), (67, 94269, 94348), (71, 55451, 55530), (71, 60492, 60571), (71, 65533, 65612), (71, 70574, 70653), (71, 75615, 75694), (71, 80656, 80735), (71, 85697, 85776), (71, 90738, 90817), (71, 95779, 95858), (71, 100820, 100899), (73, 53290, 53369), (73, 58619, 58698), (73, 63948, 64027), (73, 69277, 69356), (73, 74606, 74685), (73, 79935, 80014), (73, 85264, 85343), (73, 90593, 90672), (73, 95922, 96001), (79, 56169, 56248), (79, 62410, 62489), (79, 68651, 68730), (79, 74892, 74971), (79, 81133, 81212), (79, 87374, 87453), (79, 93615, 93694), (79, 99856, 99935)]

def row080_layer003_block000 : List ColouredInterval :=
  [(2, 65536, 65615), (3, 52488, 52567), (3, 59049, 59128), (3, 65610, 65689), (3, 72171, 72250), (3, 78732, 78811), (3, 85293, 85372), (3, 91854, 91933), (3, 98415, 98494), (3, 59049, 59128), (3, 78732, 78811), (3, 98415, 98494), (3, 59049, 59128), (5, 62500, 62579), (5, 78125, 78204), (7, 67228, 67307)]

def row080_layer003_block001 : List ColouredInterval :=
  [(7, 84035, 84114), (7, 100842, 100921), (11, 58564, 58643), (11, 73205, 73284), (11, 87846, 87925), (13, 57122, 57201), (13, 85683, 85762), (17, 54043, 54122), (17, 58956, 59035), (17, 63869, 63948), (17, 68782, 68861), (17, 73695, 73774), (17, 78608, 78687), (17, 83521, 83600), (17, 88434, 88513), (17, 93347, 93426)]

def row080_layer003_block002 : List ColouredInterval :=
  [(17, 98260, 98339), (17, 83521, 83600), (19, 54872, 54951), (19, 61731, 61810), (19, 68590, 68669), (19, 75449, 75528), (19, 82308, 82387), (19, 89167, 89246), (19, 96026, 96105), (23, 60835, 60914), (23, 73002, 73081), (23, 85169, 85248), (23, 97336, 97415), (29, 73167, 73246), (29, 97556, 97635), (31, 59582, 59661)]

def row080_layer003_block003 : List ColouredInterval :=
  [(31, 89373, 89452), (37, 50653, 50732), (41, 68921, 69000), (43, 79507, 79586), (53, 50562, 50641), (53, 53371, 53450), (53, 56180, 56259), (53, 58989, 59068), (59, 52215, 52294), (59, 55696, 55775), (59, 59177, 59256), (59, 62658, 62737), (59, 66139, 66218), (59, 69620, 69699), (59, 73101, 73180), (61, 52094, 52173)]

def row080_layer003_block004 : List ColouredInterval :=
  [(61, 55815, 55894), (61, 59536, 59615), (61, 63257, 63336), (61, 66978, 67057), (61, 70699, 70778), (61, 74420, 74499), (61, 78141, 78220), (67, 53868, 53947), (67, 58357, 58436), (67, 62846, 62925), (67, 67335, 67414), (67, 71824, 71903), (67, 76313, 76392), (67, 80802, 80881), (67, 85291, 85370), (67, 89780, 89859)]

def row080_layer003_block005 : List ColouredInterval :=
  [(67, 94269, 94348), (71, 55451, 55530), (71, 60492, 60571), (71, 65533, 65612), (71, 70574, 70653), (71, 75615, 75694), (71, 80656, 80735), (71, 85697, 85776), (71, 90738, 90817), (71, 95779, 95858), (71, 100820, 100899), (73, 53290, 53369), (73, 58619, 58698), (73, 63948, 64027), (73, 69277, 69356), (73, 74606, 74685)]

def row080_layer003_block006 : List ColouredInterval :=
  [(73, 79935, 80014), (73, 85264, 85343), (73, 90593, 90672), (73, 95922, 96001), (79, 56169, 56248), (79, 62410, 62489), (79, 68651, 68730), (79, 74892, 74971), (79, 81133, 81212), (79, 87374, 87453), (79, 93615, 93694), (79, 99856, 99935)]

def row080_layer003_chunks : List (List ColouredInterval) :=
  [row080_layer003_block000, row080_layer003_block001, row080_layer003_block002, row080_layer003_block003, row080_layer003_block004, row080_layer003_block005, row080_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_arithmetic : LayerArithmeticValid row080.height { lower := 50560, upper := 101120, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_enumeration :
    activePowerIntervalList 80 21 50560 101120 = row080_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_pairs000 :
    row080_layer003_block000.all (fun I => row080_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_pairs001 :
    row080_layer003_block001.all (fun I => row080_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_pairs002 :
    row080_layer003_block002.all (fun I => row080_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_pairs003 :
    row080_layer003_block003.all (fun I => row080_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_pairs004 :
    row080_layer003_block004.all (fun I => row080_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_pairs005 :
    row080_layer003_block005.all (fun I => row080_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_pairs006 :
    row080_layer003_block006.all (fun I => row080_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_chunks_eq : row080_layer003_chunks.flatten = row080_layer003_intervals := by
  rfl

theorem row080_layer003_pairs : pairCoverCheck row080_layer003_intervals row080_bounds = true := by
  apply pairCoverCheck_of_chunks row080_layer003_chunks_eq
  intro block hblock
  simp only [row080_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row080_layer003_pairs000
  · exact row080_layer003_pairs001
  · exact row080_layer003_pairs002
  · exact row080_layer003_pairs003
  · exact row080_layer003_pairs004
  · exact row080_layer003_pairs005
  · exact row080_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer003_checked :
    coverLayerCheck row080.height row080.goods { lower := 50560, upper := 101120, M := 21 } = true := by
  exact coverLayerCheck_of_parts row080_layer003_arithmetic row080_layer003_enumeration row080_bounds_eq row080_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_layer005_intervals : List ColouredInterval :=
  [(2, 262144, 262223), (3, 216513, 216592), (3, 236196, 236275), (3, 255879, 255958), (3, 275562, 275641), (3, 295245, 295324), (3, 314928, 315007), (3, 236196, 236275), (3, 295245, 295324), (3, 354294, 354373), (3, 354294, 354373), (5, 234375, 234454), (5, 390625, 390704), (7, 218491, 218570), (7, 235298, 235377), (7, 252105, 252184), (7, 268912, 268991), (7, 235298, 235377), (7, 352947, 353026), (11, 204974, 205053), (11, 219615, 219694), (11, 234256, 234335), (11, 322102, 322181), (13, 228488, 228567), (13, 257049, 257128), (13, 285610, 285689), (13, 314171, 314250), (13, 342732, 342811), (13, 371293, 371372), (13, 399854, 399933), (13, 371293, 371372), (17, 250563, 250642), (17, 334084, 334163), (19, 260642, 260721), (19, 390963, 391042), (23, 279841, 279920), (29, 219501, 219580), (29, 243890, 243969), (29, 268279, 268358), (29, 292668, 292747), (29, 317057, 317136), (29, 341446, 341525), (29, 365835, 365914), (29, 390224, 390303), (31, 208537, 208616), (31, 238328, 238407), (31, 268119, 268198), (31, 297910, 297989), (31, 327701, 327780), (31, 357492, 357571), (31, 387283, 387362), (37, 202612, 202691), (37, 253265, 253344), (37, 303918, 303997), (37, 354571, 354650), (41, 206763, 206842), (41, 275684, 275763), (41, 344605, 344684), (43, 238521, 238600), (43, 318028, 318107), (43, 397535, 397614), (47, 207646, 207725), (47, 311469, 311548), (53, 297754, 297833), (59, 205379, 205458), (61, 226981, 227060), (67, 300763, 300842), (71, 357911, 357990), (73, 389017, 389096)]

def row080_layer005_block000 : List ColouredInterval :=
  [(2, 262144, 262223), (3, 216513, 216592), (3, 236196, 236275), (3, 255879, 255958), (3, 275562, 275641), (3, 295245, 295324), (3, 314928, 315007), (3, 236196, 236275), (3, 295245, 295324), (3, 354294, 354373), (3, 354294, 354373), (5, 234375, 234454), (5, 390625, 390704), (7, 218491, 218570), (7, 235298, 235377), (7, 252105, 252184)]

def row080_layer005_block001 : List ColouredInterval :=
  [(7, 268912, 268991), (7, 235298, 235377), (7, 352947, 353026), (11, 204974, 205053), (11, 219615, 219694), (11, 234256, 234335), (11, 322102, 322181), (13, 228488, 228567), (13, 257049, 257128), (13, 285610, 285689), (13, 314171, 314250), (13, 342732, 342811), (13, 371293, 371372), (13, 399854, 399933), (13, 371293, 371372), (17, 250563, 250642)]

def row080_layer005_block002 : List ColouredInterval :=
  [(17, 334084, 334163), (19, 260642, 260721), (19, 390963, 391042), (23, 279841, 279920), (29, 219501, 219580), (29, 243890, 243969), (29, 268279, 268358), (29, 292668, 292747), (29, 317057, 317136), (29, 341446, 341525), (29, 365835, 365914), (29, 390224, 390303), (31, 208537, 208616), (31, 238328, 238407), (31, 268119, 268198), (31, 297910, 297989)]

def row080_layer005_block003 : List ColouredInterval :=
  [(31, 327701, 327780), (31, 357492, 357571), (31, 387283, 387362), (37, 202612, 202691), (37, 253265, 253344), (37, 303918, 303997), (37, 354571, 354650), (41, 206763, 206842), (41, 275684, 275763), (41, 344605, 344684), (43, 238521, 238600), (43, 318028, 318107), (43, 397535, 397614), (47, 207646, 207725), (47, 311469, 311548), (53, 297754, 297833)]

def row080_layer005_block004 : List ColouredInterval :=
  [(59, 205379, 205458), (61, 226981, 227060), (67, 300763, 300842), (71, 357911, 357990), (73, 389017, 389096)]

def row080_layer005_chunks : List (List ColouredInterval) :=
  [row080_layer005_block000, row080_layer005_block001, row080_layer005_block002, row080_layer005_block003, row080_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_arithmetic : LayerArithmeticValid row080.height { lower := 202240, upper := 404480, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_enumeration :
    activePowerIntervalList 80 16 202240 404480 = row080_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_pairs000 :
    row080_layer005_block000.all (fun I => row080_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_pairs001 :
    row080_layer005_block001.all (fun I => row080_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_pairs002 :
    row080_layer005_block002.all (fun I => row080_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_pairs003 :
    row080_layer005_block003.all (fun I => row080_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_pairs004 :
    row080_layer005_block004.all (fun I => row080_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_chunks_eq : row080_layer005_chunks.flatten = row080_layer005_intervals := by
  rfl

theorem row080_layer005_pairs : pairCoverCheck row080_layer005_intervals row080_bounds = true := by
  apply pairCoverCheck_of_chunks row080_layer005_chunks_eq
  intro block hblock
  simp only [row080_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row080_layer005_pairs000
  · exact row080_layer005_pairs001
  · exact row080_layer005_pairs002
  · exact row080_layer005_pairs003
  · exact row080_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer005_checked :
    coverLayerCheck row080.height row080.goods { lower := 202240, upper := 404480, M := 16 } = true := by
  exact coverLayerCheck_of_parts row080_layer005_arithmetic row080_layer005_enumeration row080_bounds_eq row080_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row080_layer007_intervals : List ColouredInterval :=
  [(3, 885735, 885814), (3, 1062882, 1062961), (3, 1240029, 1240108), (3, 1417176, 1417255), (3, 1594323, 1594402), (3, 1062882, 1062961), (3, 1594323, 1594402), (3, 1594323, 1594402), (7, 823543, 823622), (7, 941192, 941271), (7, 1058841, 1058920), (7, 1176490, 1176569), (7, 1294139, 1294218), (7, 1411788, 1411867), (7, 823543, 823622), (11, 966306, 966385), (11, 1127357, 1127436), (11, 1288408, 1288487), (11, 1449459, 1449538), (11, 1610510, 1610589), (13, 1113879, 1113958), (13, 1485172, 1485251), (17, 835210, 835289), (17, 918731, 918810), (17, 1002252, 1002331), (17, 1419857, 1419936), (19, 912247, 912326), (19, 1042568, 1042647), (19, 1172889, 1172968), (19, 1303210, 1303289), (19, 1433531, 1433610), (19, 1563852, 1563931), (23, 839523, 839602), (23, 1119364, 1119443), (23, 1399205, 1399284), (29, 1414562, 1414641), (31, 923521, 923600), (41, 827052, 827131), (43, 874577, 874656), (43, 954084, 954163), (47, 830584, 830663), (47, 934407, 934486), (47, 1038230, 1038309), (47, 1142053, 1142132), (47, 1245876, 1245955), (53, 893262, 893341), (53, 1042139, 1042218), (53, 1191016, 1191095), (53, 1339893, 1339972), (53, 1488770, 1488849), (59, 821516, 821595), (59, 1026895, 1026974), (59, 1232274, 1232353), (59, 1437653, 1437732), (61, 907924, 908003), (61, 1134905, 1134984), (61, 1361886, 1361965), (61, 1588867, 1588946), (67, 902289, 902368), (67, 1203052, 1203131), (67, 1503815, 1503894), (71, 1073733, 1073812), (71, 1431644, 1431723), (73, 1167051, 1167130), (73, 1556068, 1556147), (79, 986078, 986157), (79, 1479117, 1479196)]

def row080_layer007_block000 : List ColouredInterval :=
  [(3, 885735, 885814), (3, 1062882, 1062961), (3, 1240029, 1240108), (3, 1417176, 1417255), (3, 1594323, 1594402), (3, 1062882, 1062961), (3, 1594323, 1594402), (3, 1594323, 1594402), (7, 823543, 823622), (7, 941192, 941271), (7, 1058841, 1058920), (7, 1176490, 1176569), (7, 1294139, 1294218), (7, 1411788, 1411867), (7, 823543, 823622), (11, 966306, 966385)]

def row080_layer007_block001 : List ColouredInterval :=
  [(11, 1127357, 1127436), (11, 1288408, 1288487), (11, 1449459, 1449538), (11, 1610510, 1610589), (13, 1113879, 1113958), (13, 1485172, 1485251), (17, 835210, 835289), (17, 918731, 918810), (17, 1002252, 1002331), (17, 1419857, 1419936), (19, 912247, 912326), (19, 1042568, 1042647), (19, 1172889, 1172968), (19, 1303210, 1303289), (19, 1433531, 1433610), (19, 1563852, 1563931)]

def row080_layer007_block002 : List ColouredInterval :=
  [(23, 839523, 839602), (23, 1119364, 1119443), (23, 1399205, 1399284), (29, 1414562, 1414641), (31, 923521, 923600), (41, 827052, 827131), (43, 874577, 874656), (43, 954084, 954163), (47, 830584, 830663), (47, 934407, 934486), (47, 1038230, 1038309), (47, 1142053, 1142132), (47, 1245876, 1245955), (53, 893262, 893341), (53, 1042139, 1042218), (53, 1191016, 1191095)]

def row080_layer007_block003 : List ColouredInterval :=
  [(53, 1339893, 1339972), (53, 1488770, 1488849), (59, 821516, 821595), (59, 1026895, 1026974), (59, 1232274, 1232353), (59, 1437653, 1437732), (61, 907924, 908003), (61, 1134905, 1134984), (61, 1361886, 1361965), (61, 1588867, 1588946), (67, 902289, 902368), (67, 1203052, 1203131), (67, 1503815, 1503894), (71, 1073733, 1073812), (71, 1431644, 1431723), (73, 1167051, 1167130)]

def row080_layer007_block004 : List ColouredInterval :=
  [(73, 1556068, 1556147), (79, 986078, 986157), (79, 1479117, 1479196)]

def row080_layer007_chunks : List (List ColouredInterval) :=
  [row080_layer007_block000, row080_layer007_block001, row080_layer007_block002, row080_layer007_block003, row080_layer007_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_arithmetic : LayerArithmeticValid row080.height { lower := 808960, upper := 1617920, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_enumeration :
    activePowerIntervalList 80 12 808960 1617920 = row080_layer007_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_pairs000 :
    row080_layer007_block000.all (fun I => row080_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_pairs001 :
    row080_layer007_block001.all (fun I => row080_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_pairs002 :
    row080_layer007_block002.all (fun I => row080_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_pairs003 :
    row080_layer007_block003.all (fun I => row080_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row080_layer007_pairs004 :
    row080_layer007_block004.all (fun I => row080_layer007_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row080_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row080_layer007_pairs004
