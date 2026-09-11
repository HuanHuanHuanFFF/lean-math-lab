import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_chunks_eq : row037_layer009_chunks.flatten = row037_layer009_intervals := by
  rfl

theorem row037_layer009_pairs : pairCoverCheck row037_layer009_intervals row037_bounds = true := by
  apply pairCoverCheck_of_chunks row037_layer009_chunks_eq
  intro block hblock
  simp only [row037_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row037_layer009_pairs000
  · exact row037_layer009_pairs001
  · exact row037_layer009_pairs002
  · exact row037_layer009_pairs003
  · exact row037_layer009_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer009_checked :
    coverLayerCheck row037.height row037.goods { lower := 681984, upper := 1363968, M := 16 } = true := by
  exact coverLayerCheck_of_parts row037_layer009_arithmetic row037_layer009_enumeration row037_bounds_eq row037_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer010_intervals : List ColouredInterval :=
  [(2, 1441792, 1441828), (2, 1572864, 1572900), (2, 1703936, 1703972), (2, 1835008, 1835044), (2, 1966080, 1966116), (2, 1572864, 1572900), (2, 1835008, 1835044), (2, 2097152, 2097188), (2, 2359296, 2359332), (2, 2621440, 2621476), (2, 1572864, 1572900), (2, 2097152, 2097188), (2, 2621440, 2621476), (2, 2097152, 2097188), (2, 2097152, 2097188), (3, 1417176, 1417212), (3, 1594323, 1594359), (3, 1771470, 1771506), (3, 1948617, 1948653), (3, 2125764, 2125800), (3, 2302911, 2302947), (3, 2480058, 2480094), (3, 2657205, 2657241), (3, 1594323, 1594359), (3, 2125764, 2125800), (3, 2657205, 2657241), (3, 1594323, 1594359), (5, 1562500, 1562536), (5, 1953125, 1953161), (5, 2343750, 2343786), (5, 1953125, 1953161), (7, 1411788, 1411824), (7, 1529437, 1529473), (7, 1647086, 1647122), (7, 1764735, 1764771), (7, 1647086, 1647122), (7, 2470629, 2470665), (11, 1449459, 1449495), (11, 1610510, 1610546), (11, 1771561, 1771597), (11, 1932612, 1932648), (11, 2093663, 2093699), (11, 2254714, 2254750), (11, 2415765, 2415801), (11, 1771561, 1771597), (13, 1485172, 1485208), (13, 1856465, 1856501), (13, 2227758, 2227794), (13, 2599051, 2599087), (17, 1419857, 1419893), (19, 1433531, 1433567), (19, 1563852, 1563888), (19, 1694173, 1694209), (19, 1824494, 1824530), (19, 1954815, 1954851), (19, 2476099, 2476135), (23, 1399205, 1399241), (23, 1679046, 1679082), (23, 1958887, 1958923), (23, 2238728, 2238764), (23, 2518569, 2518605), (29, 1414562, 1414598), (29, 2121843, 2121879), (31, 1847042, 1847078)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer010_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer010_arithmetic : LayerArithmeticValid row037.height { lower := 1363968, upper := 2727936, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer010_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer010_enumeration :
    activePowerIntervalList 37 15 1363968 2727936 = row037_layer010_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer010_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer010_pairs : pairCoverCheck row037_layer010_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer010_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer010_checked :
    coverLayerCheck row037.height row037.goods { lower := 1363968, upper := 2727936, M := 15 } = true := by
  exact coverLayerCheck_of_parts row037_layer010_arithmetic row037_layer010_enumeration row037_bounds_eq row037_layer010_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer010_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer011_intervals : List ColouredInterval :=
  [(2, 2883584, 2883620), (2, 3145728, 3145764), (2, 3407872, 3407908), (2, 3670016, 3670052), (2, 3145728, 3145764), (2, 3670016, 3670052), (2, 4194304, 4194340), (2, 4718592, 4718628), (2, 5242880, 5242916), (2, 3145728, 3145764), (2, 4194304, 4194340), (2, 5242880, 5242916), (2, 4194304, 4194340), (2, 4194304, 4194340), (3, 3188646, 3188682), (3, 3720087, 3720123), (3, 4251528, 4251564), (3, 4782969, 4783005), (3, 5314410, 5314446), (3, 3188646, 3188682), (3, 4782969, 4783005), (3, 4782969, 4783005), (5, 2734375, 2734411), (5, 3125000, 3125036), (5, 3515625, 3515661), (5, 3906250, 3906286), (5, 4296875, 4296911), (5, 4687500, 4687536), (5, 5078125, 5078161), (5, 3906250, 3906286), (7, 3294172, 3294208), (7, 4117715, 4117751), (7, 4941258, 4941294), (11, 3543122, 3543158), (11, 5314683, 5314719), (13, 2970344, 2970380), (13, 3341637, 3341673), (13, 3712930, 3712966), (13, 4084223, 4084259), (13, 4455516, 4455552), (13, 4826809, 4826845), (13, 5198102, 5198138), (13, 4826809, 4826845), (17, 2839714, 2839750), (17, 4259571, 4259607), (19, 4952198, 4952234), (23, 2798410, 2798446), (23, 3078251, 3078287), (23, 3358092, 3358128), (23, 3637933, 3637969), (23, 3917774, 3917810), (29, 2829124, 2829160), (29, 3536405, 3536441), (29, 4243686, 4243722), (29, 4950967, 4951003), (31, 2770563, 2770599), (31, 3694084, 3694120), (31, 4617605, 4617641)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer011_arithmetic : LayerArithmeticValid row037.height { lower := 2727936, upper := 5455872, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer011_enumeration :
    activePowerIntervalList 37 14 2727936 5455872 = row037_layer011_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer011_pairs : pairCoverCheck row037_layer011_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer011_checked :
    coverLayerCheck row037.height row037.goods { lower := 2727936, upper := 5455872, M := 14 } = true := by
  exact coverLayerCheck_of_parts row037_layer011_arithmetic row037_layer011_enumeration row037_bounds_eq row037_layer011_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer012_intervals : List ColouredInterval :=
  [(2, 5767168, 5767204), (2, 6291456, 6291492), (2, 6815744, 6815780), (2, 6291456, 6291492), (2, 7340032, 7340068), (2, 8388608, 8388644), (2, 9437184, 9437220), (2, 10485760, 10485796), (2, 6291456, 6291492), (2, 8388608, 8388644), (2, 10485760, 10485796), (2, 8388608, 8388644), (2, 8388608, 8388644), (3, 5845851, 5845887), (3, 6377292, 6377328), (3, 6908733, 6908769), (3, 6377292, 6377328), (3, 7971615, 7971651), (3, 9565938, 9565974), (3, 9565938, 9565974), (5, 5859375, 5859411), (5, 7812500, 7812536), (5, 9765625, 9765661), (5, 9765625, 9765661), (7, 5764801, 5764837), (7, 6588344, 6588380), (7, 7411887, 7411923), (7, 8235430, 8235466), (7, 9058973, 9059009), (7, 9882516, 9882552), (7, 10706059, 10706095), (7, 5764801, 5764837), (11, 7086244, 7086280), (11, 8857805, 8857841), (11, 10629366, 10629402), (13, 9653618, 9653654), (17, 5679428, 5679464), (17, 7099285, 7099321), (17, 8519142, 8519178), (17, 9938999, 9939035), (19, 7428297, 7428333), (19, 9904396, 9904432), (23, 6436343, 6436379), (29, 5658248, 5658284), (29, 6365529, 6365565), (29, 7072810, 7072846), (29, 7780091, 7780127), (29, 8487372, 8487408), (29, 9194653, 9194689), (31, 5541126, 5541162), (31, 6464647, 6464683), (31, 7388168, 7388204), (31, 8311689, 8311725), (31, 9235210, 9235246), (31, 10158731, 10158767)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer012_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer012_arithmetic : LayerArithmeticValid row037.height { lower := 5455872, upper := 10911744, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer012_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer012_enumeration :
    activePowerIntervalList 37 13 5455872 10911744 = row037_layer012_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer012_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer012_pairs : pairCoverCheck row037_layer012_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer012_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer012_checked :
    coverLayerCheck row037.height row037.goods { lower := 5455872, upper := 10911744, M := 13 } = true := by
  exact coverLayerCheck_of_parts row037_layer012_arithmetic row037_layer012_enumeration row037_bounds_eq row037_layer012_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer013_intervals : List ColouredInterval :=
  [(2, 11534336, 11534372), (2, 12582912, 12582948), (2, 12582912, 12582948), (2, 14680064, 14680100), (2, 16777216, 16777252), (2, 18874368, 18874404), (2, 20971520, 20971556), (2, 12582912, 12582948), (2, 16777216, 16777252), (2, 20971520, 20971556), (2, 16777216, 16777252), (2, 16777216, 16777252), (3, 11160261, 11160297), (3, 12754584, 12754620), (3, 14348907, 14348943), (3, 15943230, 15943266), (3, 17537553, 17537589), (3, 19131876, 19131912), (3, 14348907, 14348943), (3, 19131876, 19131912), (3, 14348907, 14348943), (5, 11718750, 11718786), (5, 13671875, 13671911), (5, 15625000, 15625036), (5, 17578125, 17578161), (5, 19531250, 19531286), (5, 21484375, 21484411), (5, 19531250, 19531286), (7, 11529602, 11529638), (7, 17294403, 17294439), (11, 12400927, 12400963), (11, 14172488, 14172524), (11, 15944049, 15944085), (11, 17715610, 17715646), (11, 19487171, 19487207), (11, 21258732, 21258768), (11, 19487171, 19487207), (13, 14480427, 14480463), (13, 19307236, 19307272), (17, 11358856, 11358892), (17, 12778713, 12778749), (17, 14198570, 14198606), (17, 15618427, 15618463), (17, 17038284, 17038320), (19, 12380495, 12380531), (19, 14856594, 14856630), (19, 17332693, 17332729), (19, 19808792, 19808828), (23, 12872686, 12872722), (23, 19309029, 19309065), (29, 20511149, 20511185), (31, 11082252, 11082288)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer013_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer013_arithmetic : LayerArithmeticValid row037.height { lower := 10911744, upper := 21823488, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer013_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer013_enumeration :
    activePowerIntervalList 37 12 10911744 21823488 = row037_layer013_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer013_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer013_pairs : pairCoverCheck row037_layer013_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer013_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer013_checked :
    coverLayerCheck row037.height row037.goods { lower := 10911744, upper := 21823488, M := 12 } = true := by
  exact coverLayerCheck_of_parts row037_layer013_arithmetic row037_layer013_enumeration row037_bounds_eq row037_layer013_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer014_intervals : List ColouredInterval :=
  [(2, 23068672, 23068708), (2, 25165824, 25165860), (2, 25165824, 25165860), (2, 29360128, 29360164), (2, 33554432, 33554468), (2, 37748736, 37748772), (2, 41943040, 41943076), (2, 25165824, 25165860), (2, 33554432, 33554468), (2, 41943040, 41943076), (2, 33554432, 33554468), (2, 33554432, 33554468), (3, 23914845, 23914881), (3, 28697814, 28697850), (3, 33480783, 33480819), (3, 38263752, 38263788), (3, 43046721, 43046757), (3, 28697814, 28697850), (3, 43046721, 43046757), (3, 43046721, 43046757), (5, 23437500, 23437536), (5, 29296875, 29296911), (5, 39062500, 39062536), (7, 23059204, 23059240), (7, 28824005, 28824041), (7, 34588806, 34588842), (7, 40353607, 40353643), (7, 40353607, 40353643), (11, 38974342, 38974378), (13, 24134045, 24134081), (13, 28960854, 28960890), (13, 33787663, 33787699), (13, 38614472, 38614508), (13, 43441281, 43441317), (17, 24137569, 24137605), (19, 22284891, 22284927), (19, 24760990, 24761026), (19, 27237089, 27237125), (19, 29713188, 29713224), (23, 25745372, 25745408), (23, 32181715, 32181751), (23, 38618058, 38618094), (29, 41022298, 41022334), (31, 28629151, 28629187)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer014_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer014_arithmetic : LayerArithmeticValid row037.height { lower := 21823488, upper := 43646976, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer014_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer014_enumeration :
    activePowerIntervalList 37 12 21823488 43646976 = row037_layer014_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer014_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer014_pairs : pairCoverCheck row037_layer014_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer014_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer014_checked :
    coverLayerCheck row037.height row037.goods { lower := 21823488, upper := 43646976, M := 12 } = true := by
  exact coverLayerCheck_of_parts row037_layer014_arithmetic row037_layer014_enumeration row037_bounds_eq row037_layer014_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer014_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer015_intervals : List ColouredInterval :=
  [(2, 46137344, 46137380), (2, 50331648, 50331684), (2, 58720256, 58720292), (2, 67108864, 67108900), (2, 75497472, 75497508), (2, 83886080, 83886116), (2, 50331648, 50331684), (2, 67108864, 67108900), (2, 83886080, 83886116), (2, 67108864, 67108900), (2, 67108864, 67108900), (3, 47829690, 47829726), (3, 52612659, 52612695), (3, 57395628, 57395664), (3, 71744535, 71744571), (3, 86093442, 86093478), (3, 86093442, 86093478), (5, 48828125, 48828161), (5, 58593750, 58593786), (5, 68359375, 68359411), (5, 78125000, 78125036), (5, 48828125, 48828161), (7, 46118408, 46118444), (7, 51883209, 51883245), (7, 57648010, 57648046), (7, 63412811, 63412847), (7, 80707214, 80707250), (11, 58461513, 58461549), (11, 77948684, 77948720), (13, 48268090, 48268126), (13, 53094899, 53094935), (13, 62748517, 62748553), (17, 48275138, 48275174), (17, 72412707, 72412743), (19, 47045881, 47045917), (23, 45054401, 45054437), (23, 51490744, 51490780), (23, 57927087, 57927123), (23, 64363430, 64363466), (23, 70799773, 70799809), (29, 61533447, 61533483), (29, 82044596, 82044632), (31, 57258302, 57258338), (31, 85887453, 85887489)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer015_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer015_arithmetic : LayerArithmeticValid row037.height { lower := 43646976, upper := 87293952, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer015_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer015_enumeration :
    activePowerIntervalList 37 11 43646976 87293952 = row037_layer015_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer015_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer015_pairs : pairCoverCheck row037_layer015_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer015_pairs
