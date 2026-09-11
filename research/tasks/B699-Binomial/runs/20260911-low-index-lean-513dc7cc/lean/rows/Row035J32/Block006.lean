import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer013_pairs005 :
    row035_layer013_block005.all (fun I => row035_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer013_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer013_pairs006 :
    row035_layer013_block006.all (fun I => row035_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer013_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer013_chunks_eq : row035_layer013_chunks.flatten = row035_layer013_intervals := by
  rfl

theorem row035_layer013_pairs : pairCoverCheck row035_layer013_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer013_chunks_eq
  intro block hblock
  simp only [row035_layer013_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer013_pairs000
  · exact row035_layer013_pairs001
  · exact row035_layer013_pairs002
  · exact row035_layer013_pairs003
  · exact row035_layer013_pairs004
  · exact row035_layer013_pairs005
  · exact row035_layer013_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer013_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer013_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer013_checked :
    coverLayerCheck row035.height row035.goods { lower := 9748480, upper := 19496960, M := 28 } = true := by
  exact coverLayerCheck_of_parts row035_layer013_arithmetic row035_layer013_enumeration row035_bounds_eq row035_layer013_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer014_intervals : List ColouredInterval :=
  [(2, 19922944, 19922978), (2, 20971520, 20971554), (2, 22020096, 22020130), (2, 23068672, 23068706), (2, 24117248, 24117282), (2, 25165824, 25165858), (2, 26214400, 26214434), (2, 27262976, 27263010), (2, 28311552, 28311586), (2, 20971520, 20971554), (2, 23068672, 23068706), (2, 25165824, 25165858), (2, 27262976, 27263010), (2, 29360128, 29360162), (2, 31457280, 31457314), (2, 33554432, 33554466), (2, 35651584, 35651618), (2, 37748736, 37748770), (2, 20971520, 20971554), (2, 25165824, 25165858), (2, 29360128, 29360162), (2, 33554432, 33554466), (2, 37748736, 37748770), (2, 25165824, 25165858), (2, 33554432, 33554466), (2, 33554432, 33554466), (2, 33554432, 33554466), (3, 20726199, 20726233), (3, 22320522, 22320556), (3, 23914845, 23914879), (3, 25509168, 25509202), (3, 27103491, 27103525), (3, 28697814, 28697848), (3, 30292137, 30292171), (3, 31886460, 31886494), (3, 33480783, 33480817), (3, 35075106, 35075140), (3, 36669429, 36669463), (3, 38263752, 38263786), (3, 23914845, 23914879), (3, 28697814, 28697848), (3, 33480783, 33480817), (3, 38263752, 38263786), (3, 28697814, 28697848), (5, 19531250, 19531284), (5, 29296875, 29296909), (11, 21258732, 21258766), (11, 23030293, 23030327), (11, 24801854, 24801888), (11, 26573415, 26573449), (11, 28344976, 28345010), (11, 30116537, 30116571), (11, 31888098, 31888132), (11, 33659659, 33659693), (11, 35431220, 35431254), (11, 37202781, 37202815), (11, 38974342, 38974376), (11, 38974342, 38974376), (13, 24134045, 24134079), (13, 28960854, 28960888), (13, 33787663, 33787697), (13, 38614472, 38614506), (17, 19877998, 19878032), (17, 21297855, 21297889), (17, 22717712, 22717746), (17, 24137569, 24137603), (17, 25557426, 25557460), (17, 26977283, 26977317), (17, 28397140, 28397174), (17, 29816997, 29817031), (17, 31236854, 31236888), (17, 32656711, 32656745), (17, 34076568, 34076602), (17, 35496425, 35496459), (17, 36916282, 36916316), (17, 38336139, 38336173), (17, 24137569, 24137603), (19, 19808792, 19808826), (19, 22284891, 22284925), (19, 24760990, 24761024), (19, 27237089, 27237123), (19, 29713188, 29713222), (19, 32189287, 32189321), (19, 34665386, 34665420), (19, 37141485, 37141519), (23, 25745372, 25745406), (23, 32181715, 32181749), (23, 38618058, 38618092), (29, 20511149, 20511183), (31, 20317462, 20317496), (31, 21240983, 21241017), (31, 22164504, 22164538), (31, 23088025, 23088059), (31, 24011546, 24011580), (31, 24935067, 24935101), (31, 28629151, 28629185)]

def row035_layer014_block000 : List ColouredInterval :=
  [(2, 19922944, 19922978), (2, 20971520, 20971554), (2, 22020096, 22020130), (2, 23068672, 23068706), (2, 24117248, 24117282), (2, 25165824, 25165858), (2, 26214400, 26214434), (2, 27262976, 27263010), (2, 28311552, 28311586), (2, 20971520, 20971554), (2, 23068672, 23068706), (2, 25165824, 25165858), (2, 27262976, 27263010), (2, 29360128, 29360162), (2, 31457280, 31457314), (2, 33554432, 33554466)]

def row035_layer014_block001 : List ColouredInterval :=
  [(2, 35651584, 35651618), (2, 37748736, 37748770), (2, 20971520, 20971554), (2, 25165824, 25165858), (2, 29360128, 29360162), (2, 33554432, 33554466), (2, 37748736, 37748770), (2, 25165824, 25165858), (2, 33554432, 33554466), (2, 33554432, 33554466), (2, 33554432, 33554466), (3, 20726199, 20726233), (3, 22320522, 22320556), (3, 23914845, 23914879), (3, 25509168, 25509202), (3, 27103491, 27103525)]

def row035_layer014_block002 : List ColouredInterval :=
  [(3, 28697814, 28697848), (3, 30292137, 30292171), (3, 31886460, 31886494), (3, 33480783, 33480817), (3, 35075106, 35075140), (3, 36669429, 36669463), (3, 38263752, 38263786), (3, 23914845, 23914879), (3, 28697814, 28697848), (3, 33480783, 33480817), (3, 38263752, 38263786), (3, 28697814, 28697848), (5, 19531250, 19531284), (5, 29296875, 29296909), (11, 21258732, 21258766), (11, 23030293, 23030327)]

def row035_layer014_block003 : List ColouredInterval :=
  [(11, 24801854, 24801888), (11, 26573415, 26573449), (11, 28344976, 28345010), (11, 30116537, 30116571), (11, 31888098, 31888132), (11, 33659659, 33659693), (11, 35431220, 35431254), (11, 37202781, 37202815), (11, 38974342, 38974376), (11, 38974342, 38974376), (13, 24134045, 24134079), (13, 28960854, 28960888), (13, 33787663, 33787697), (13, 38614472, 38614506), (17, 19877998, 19878032), (17, 21297855, 21297889)]

def row035_layer014_block004 : List ColouredInterval :=
  [(17, 22717712, 22717746), (17, 24137569, 24137603), (17, 25557426, 25557460), (17, 26977283, 26977317), (17, 28397140, 28397174), (17, 29816997, 29817031), (17, 31236854, 31236888), (17, 32656711, 32656745), (17, 34076568, 34076602), (17, 35496425, 35496459), (17, 36916282, 36916316), (17, 38336139, 38336173), (17, 24137569, 24137603), (19, 19808792, 19808826), (19, 22284891, 22284925), (19, 24760990, 24761024)]

def row035_layer014_block005 : List ColouredInterval :=
  [(19, 27237089, 27237123), (19, 29713188, 29713222), (19, 32189287, 32189321), (19, 34665386, 34665420), (19, 37141485, 37141519), (23, 25745372, 25745406), (23, 32181715, 32181749), (23, 38618058, 38618092), (29, 20511149, 20511183), (31, 20317462, 20317496), (31, 21240983, 21241017), (31, 22164504, 22164538), (31, 23088025, 23088059), (31, 24011546, 24011580), (31, 24935067, 24935101), (31, 28629151, 28629185)]

def row035_layer014_chunks : List (List ColouredInterval) :=
  [row035_layer014_block000, row035_layer014_block001, row035_layer014_block002, row035_layer014_block003, row035_layer014_block004, row035_layer014_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_arithmetic : LayerArithmeticValid row035.height { lower := 19496960, upper := 38993920, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_enumeration :
    activePowerIntervalList 35 27 19496960 38993920 = row035_layer014_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_pairs000 :
    row035_layer014_block000.all (fun I => row035_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_pairs001 :
    row035_layer014_block001.all (fun I => row035_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_pairs002 :
    row035_layer014_block002.all (fun I => row035_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_pairs003 :
    row035_layer014_block003.all (fun I => row035_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_pairs004 :
    row035_layer014_block004.all (fun I => row035_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_pairs005 :
    row035_layer014_block005.all (fun I => row035_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_chunks_eq : row035_layer014_chunks.flatten = row035_layer014_intervals := by
  rfl

theorem row035_layer014_pairs : pairCoverCheck row035_layer014_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer014_chunks_eq
  intro block hblock
  simp only [row035_layer014_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer014_pairs000
  · exact row035_layer014_pairs001
  · exact row035_layer014_pairs002
  · exact row035_layer014_pairs003
  · exact row035_layer014_pairs004
  · exact row035_layer014_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer014_checked :
    coverLayerCheck row035.height row035.goods { lower := 19496960, upper := 38993920, M := 27 } = true := by
  exact coverLayerCheck_of_parts row035_layer014_arithmetic row035_layer014_enumeration row035_bounds_eq row035_layer014_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer015_intervals : List ColouredInterval :=
  [(2, 39845888, 39845922), (2, 41943040, 41943074), (2, 44040192, 44040226), (2, 46137344, 46137378), (2, 48234496, 48234530), (2, 50331648, 50331682), (2, 52428800, 52428834), (2, 54525952, 54525986), (2, 56623104, 56623138), (2, 41943040, 41943074), (2, 46137344, 46137378), (2, 50331648, 50331682), (2, 54525952, 54525986), (2, 58720256, 58720290), (2, 62914560, 62914594), (2, 67108864, 67108898), (2, 71303168, 71303202), (2, 75497472, 75497506), (2, 41943040, 41943074), (2, 50331648, 50331682), (2, 58720256, 58720290), (2, 67108864, 67108898), (2, 75497472, 75497506), (2, 50331648, 50331682), (2, 67108864, 67108898), (2, 67108864, 67108898), (2, 67108864, 67108898), (3, 39858075, 39858109), (3, 41452398, 41452432), (3, 43046721, 43046755), (3, 43046721, 43046755), (3, 47829690, 47829724), (3, 52612659, 52612693), (3, 57395628, 57395662), (3, 62178597, 62178631), (3, 66961566, 66961600), (3, 71744535, 71744569), (3, 76527504, 76527538), (3, 43046721, 43046755), (3, 57395628, 57395662), (3, 71744535, 71744569), (3, 43046721, 43046755), (5, 39062500, 39062534), (5, 48828125, 48828159), (5, 48828125, 48828159), (7, 40353607, 40353641), (11, 40745903, 40745937), (11, 42517464, 42517498), (11, 44289025, 44289059), (11, 46060586, 46060620), (11, 47832147, 47832181), (11, 58461513, 58461547), (11, 77948684, 77948718), (13, 43441281, 43441315), (13, 48268090, 48268124), (13, 53094899, 53094933), (13, 57921708, 57921742), (13, 62748517, 62748551), (13, 67575326, 67575360), (13, 72402135, 72402169), (13, 77228944, 77228978), (13, 62748517, 62748551), (17, 48275138, 48275172), (17, 72412707, 72412741), (19, 39617584, 39617618), (19, 42093683, 42093717), (19, 44569782, 44569816), (19, 47045881, 47045915), (19, 49521980, 49522014), (19, 51998079, 51998113), (19, 54474178, 54474212), (19, 56950277, 56950311), (19, 59426376, 59426410), (19, 61902475, 61902509), (19, 64378574, 64378608), (19, 66854673, 66854707), (19, 47045881, 47045915), (23, 45054401, 45054435), (23, 51490744, 51490778), (23, 57927087, 57927121), (23, 64363430, 64363464), (23, 70799773, 70799807), (23, 77236116, 77236150), (29, 41022298, 41022332), (29, 61533447, 61533481), (31, 57258302, 57258336)]

def row035_layer015_block000 : List ColouredInterval :=
  [(2, 39845888, 39845922), (2, 41943040, 41943074), (2, 44040192, 44040226), (2, 46137344, 46137378), (2, 48234496, 48234530), (2, 50331648, 50331682), (2, 52428800, 52428834), (2, 54525952, 54525986), (2, 56623104, 56623138), (2, 41943040, 41943074), (2, 46137344, 46137378), (2, 50331648, 50331682), (2, 54525952, 54525986), (2, 58720256, 58720290), (2, 62914560, 62914594), (2, 67108864, 67108898)]

def row035_layer015_block001 : List ColouredInterval :=
  [(2, 71303168, 71303202), (2, 75497472, 75497506), (2, 41943040, 41943074), (2, 50331648, 50331682), (2, 58720256, 58720290), (2, 67108864, 67108898), (2, 75497472, 75497506), (2, 50331648, 50331682), (2, 67108864, 67108898), (2, 67108864, 67108898), (2, 67108864, 67108898), (3, 39858075, 39858109), (3, 41452398, 41452432), (3, 43046721, 43046755), (3, 43046721, 43046755), (3, 47829690, 47829724)]

def row035_layer015_block002 : List ColouredInterval :=
  [(3, 52612659, 52612693), (3, 57395628, 57395662), (3, 62178597, 62178631), (3, 66961566, 66961600), (3, 71744535, 71744569), (3, 76527504, 76527538), (3, 43046721, 43046755), (3, 57395628, 57395662), (3, 71744535, 71744569), (3, 43046721, 43046755), (5, 39062500, 39062534), (5, 48828125, 48828159), (5, 48828125, 48828159), (7, 40353607, 40353641), (11, 40745903, 40745937), (11, 42517464, 42517498)]

def row035_layer015_block003 : List ColouredInterval :=
  [(11, 44289025, 44289059), (11, 46060586, 46060620), (11, 47832147, 47832181), (11, 58461513, 58461547), (11, 77948684, 77948718), (13, 43441281, 43441315), (13, 48268090, 48268124), (13, 53094899, 53094933), (13, 57921708, 57921742), (13, 62748517, 62748551), (13, 67575326, 67575360), (13, 72402135, 72402169), (13, 77228944, 77228978), (13, 62748517, 62748551), (17, 48275138, 48275172), (17, 72412707, 72412741)]

def row035_layer015_block004 : List ColouredInterval :=
  [(19, 39617584, 39617618), (19, 42093683, 42093717), (19, 44569782, 44569816), (19, 47045881, 47045915), (19, 49521980, 49522014), (19, 51998079, 51998113), (19, 54474178, 54474212), (19, 56950277, 56950311), (19, 59426376, 59426410), (19, 61902475, 61902509), (19, 64378574, 64378608), (19, 66854673, 66854707), (19, 47045881, 47045915), (23, 45054401, 45054435), (23, 51490744, 51490778), (23, 57927087, 57927121)]

def row035_layer015_block005 : List ColouredInterval :=
  [(23, 64363430, 64363464), (23, 70799773, 70799807), (23, 77236116, 77236150), (29, 41022298, 41022332), (29, 61533447, 61533481), (31, 57258302, 57258336)]

def row035_layer015_chunks : List (List ColouredInterval) :=
  [row035_layer015_block000, row035_layer015_block001, row035_layer015_block002, row035_layer015_block003, row035_layer015_block004, row035_layer015_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_arithmetic : LayerArithmeticValid row035.height { lower := 38993920, upper := 77987840, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_enumeration :
    activePowerIntervalList 35 27 38993920 77987840 = row035_layer015_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_pairs000 :
    row035_layer015_block000.all (fun I => row035_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_pairs001 :
    row035_layer015_block001.all (fun I => row035_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_pairs002 :
    row035_layer015_block002.all (fun I => row035_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_pairs003 :
    row035_layer015_block003.all (fun I => row035_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_pairs004 :
    row035_layer015_block004.all (fun I => row035_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_pairs005 :
    row035_layer015_block005.all (fun I => row035_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_chunks_eq : row035_layer015_chunks.flatten = row035_layer015_intervals := by
  rfl

theorem row035_layer015_pairs : pairCoverCheck row035_layer015_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer015_chunks_eq
  intro block hblock
  simp only [row035_layer015_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer015_pairs000
  · exact row035_layer015_pairs001
  · exact row035_layer015_pairs002
  · exact row035_layer015_pairs003
  · exact row035_layer015_pairs004
  · exact row035_layer015_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer015_checked :
    coverLayerCheck row035.height row035.goods { lower := 38993920, upper := 77987840, M := 27 } = true := by
  exact coverLayerCheck_of_parts row035_layer015_arithmetic row035_layer015_enumeration row035_bounds_eq row035_layer015_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer016_intervals : List ColouredInterval :=
  [(2, 79691776, 79691810), (2, 83886080, 83886114), (2, 88080384, 88080418), (2, 92274688, 92274722), (2, 96468992, 96469026), (2, 100663296, 100663330), (2, 104857600, 104857634), (2, 109051904, 109051938), (2, 83886080, 83886114), (2, 92274688, 92274722), (2, 100663296, 100663330), (2, 109051904, 109051938), (2, 117440512, 117440546), (2, 125829120, 125829154), (2, 134217728, 134217762), (2, 142606336, 142606370), (2, 150994944, 150994978), (2, 83886080, 83886114), (2, 100663296, 100663330), (2, 117440512, 117440546), (2, 134217728, 134217762), (2, 150994944, 150994978), (2, 100663296, 100663330), (2, 134217728, 134217762), (2, 134217728, 134217762), (2, 134217728, 134217762), (3, 81310473, 81310507), (3, 86093442, 86093476), (3, 90876411, 90876445), (3, 95659380, 95659414), (3, 100442349, 100442383), (3, 105225318, 105225352), (3, 110008287, 110008321), (3, 114791256, 114791290), (3, 119574225, 119574259), (3, 124357194, 124357228), (3, 86093442, 86093476), (3, 100442349, 100442383), (3, 114791256, 114791290), (3, 129140163, 129140197), (3, 143489070, 143489104), (3, 86093442, 86093476), (3, 129140163, 129140197), (3, 129140163, 129140197), (5, 97656250, 97656284), (5, 146484375, 146484409), (7, 80707214, 80707248), (7, 121060821, 121060855), (11, 97435855, 97435889), (11, 116923026, 116923060), (11, 136410197, 136410231), (11, 155897368, 155897402), (13, 82055753, 82055787), (13, 86882562, 86882596), (13, 91709371, 91709405), (13, 96536180, 96536214), (13, 101362989, 101363023), (13, 106189798, 106189832), (13, 111016607, 111016641), (13, 115843416, 115843450), (13, 120670225, 120670259), (13, 125497034, 125497068), (13, 125497034, 125497068), (17, 96550276, 96550310), (17, 120687845, 120687879), (17, 144825414, 144825448), (19, 94091762, 94091796), (19, 141137643, 141137677), (23, 83672459, 83672493), (23, 90108802, 90108836), (23, 96545145, 96545179), (23, 102981488, 102981522), (23, 109417831, 109417865), (23, 115854174, 115854208), (23, 122290517, 122290551), (23, 128726860, 128726894), (23, 135163203, 135163237), (23, 141599546, 141599580), (23, 148035889, 148035923), (23, 154472232, 154472266), (23, 148035889, 148035923), (29, 82044596, 82044630), (29, 102555745, 102555779), (29, 123066894, 123066928), (29, 143578043, 143578077), (31, 85887453, 85887487), (31, 114516604, 114516638), (31, 143145755, 143145789)]

def row035_layer016_block000 : List ColouredInterval :=
  [(2, 79691776, 79691810), (2, 83886080, 83886114), (2, 88080384, 88080418), (2, 92274688, 92274722), (2, 96468992, 96469026), (2, 100663296, 100663330), (2, 104857600, 104857634), (2, 109051904, 109051938), (2, 83886080, 83886114), (2, 92274688, 92274722), (2, 100663296, 100663330), (2, 109051904, 109051938), (2, 117440512, 117440546), (2, 125829120, 125829154), (2, 134217728, 134217762), (2, 142606336, 142606370)]

def row035_layer016_block001 : List ColouredInterval :=
  [(2, 150994944, 150994978), (2, 83886080, 83886114), (2, 100663296, 100663330), (2, 117440512, 117440546), (2, 134217728, 134217762), (2, 150994944, 150994978), (2, 100663296, 100663330), (2, 134217728, 134217762), (2, 134217728, 134217762), (2, 134217728, 134217762), (3, 81310473, 81310507), (3, 86093442, 86093476), (3, 90876411, 90876445), (3, 95659380, 95659414), (3, 100442349, 100442383), (3, 105225318, 105225352)]

def row035_layer016_block002 : List ColouredInterval :=
  [(3, 110008287, 110008321), (3, 114791256, 114791290), (3, 119574225, 119574259), (3, 124357194, 124357228), (3, 86093442, 86093476), (3, 100442349, 100442383), (3, 114791256, 114791290), (3, 129140163, 129140197), (3, 143489070, 143489104), (3, 86093442, 86093476), (3, 129140163, 129140197), (3, 129140163, 129140197), (5, 97656250, 97656284), (5, 146484375, 146484409), (7, 80707214, 80707248), (7, 121060821, 121060855)]

def row035_layer016_block003 : List ColouredInterval :=
  [(11, 97435855, 97435889), (11, 116923026, 116923060), (11, 136410197, 136410231), (11, 155897368, 155897402), (13, 82055753, 82055787), (13, 86882562, 86882596), (13, 91709371, 91709405), (13, 96536180, 96536214), (13, 101362989, 101363023), (13, 106189798, 106189832), (13, 111016607, 111016641), (13, 115843416, 115843450), (13, 120670225, 120670259), (13, 125497034, 125497068), (13, 125497034, 125497068), (17, 96550276, 96550310)]

def row035_layer016_block004 : List ColouredInterval :=
  [(17, 120687845, 120687879), (17, 144825414, 144825448), (19, 94091762, 94091796), (19, 141137643, 141137677), (23, 83672459, 83672493), (23, 90108802, 90108836), (23, 96545145, 96545179), (23, 102981488, 102981522), (23, 109417831, 109417865), (23, 115854174, 115854208), (23, 122290517, 122290551), (23, 128726860, 128726894), (23, 135163203, 135163237), (23, 141599546, 141599580), (23, 148035889, 148035923), (23, 154472232, 154472266)]

def row035_layer016_block005 : List ColouredInterval :=
  [(23, 148035889, 148035923), (29, 82044596, 82044630), (29, 102555745, 102555779), (29, 123066894, 123066928), (29, 143578043, 143578077), (31, 85887453, 85887487), (31, 114516604, 114516638), (31, 143145755, 143145789)]

def row035_layer016_chunks : List (List ColouredInterval) :=
  [row035_layer016_block000, row035_layer016_block001, row035_layer016_block002, row035_layer016_block003, row035_layer016_block004, row035_layer016_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_arithmetic : LayerArithmeticValid row035.height { lower := 77987840, upper := 155975680, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_enumeration :
    activePowerIntervalList 35 26 77987840 155975680 = row035_layer016_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_pairs000 :
    row035_layer016_block000.all (fun I => row035_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_pairs001 :
    row035_layer016_block001.all (fun I => row035_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_pairs001
