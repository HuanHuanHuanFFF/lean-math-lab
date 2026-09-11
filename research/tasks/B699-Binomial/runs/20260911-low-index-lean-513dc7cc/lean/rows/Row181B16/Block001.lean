import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row181B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_good240_checked :
    goodSegmentCheck 181 60 129
      { lower := 83667, upper := 83701, witness := RowWitness.topPrime 83663 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good241_checked :
    goodSegmentCheck 181 60 129
      { lower := 85805, upper := 85863, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good242_checked :
    goodSegmentCheck 181 60 129
      { lower := 89383, upper := 89553, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good243_checked :
    goodSegmentCheck 181 60 129
      { lower := 93845, upper := 93930, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good244_checked :
    goodSegmentCheck 181 60 129
      { lower := 96774, upper := 96785, witness := RowWitness.topPrime 96769 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good245_checked :
    goodSegmentCheck 181 60 129
      { lower := 98415, upper := 98484, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good246_checked :
    goodSegmentCheck 181 60 129
      { lower := 103041, upper := 103146, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good247_checked :
    goodSegmentCheck 181 60 129
      { lower := 109503, upper := 109555, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good248_checked :
    goodSegmentCheck 181 60 129
      { lower := 137842, upper := 137961, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row181_good249_checked :
    goodSegmentCheck 181 60 129
      { lower := 148955, upper := 149057, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 181) (r := 60) (s := 129) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_good249_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_goods_checked :
    row181.goods.all (goodSegmentCheck row181.height.i row181.height.r row181.height.s) = true := by
  change row181_goods.all (goodSegmentCheck 181 60 129) = true
  simp only [row181_goods, List.all_cons, List.all_nil,
    row181_good000_checked,
    row181_good001_checked,
    row181_good002_checked,
    row181_good003_checked,
    row181_good004_checked,
    row181_good005_checked,
    row181_good006_checked,
    row181_good007_checked,
    row181_good008_checked,
    row181_good009_checked,
    row181_good010_checked,
    row181_good011_checked,
    row181_good012_checked,
    row181_good013_checked,
    row181_good014_checked,
    row181_good015_checked,
    row181_good016_checked,
    row181_good017_checked,
    row181_good018_checked,
    row181_good019_checked,
    row181_good020_checked,
    row181_good021_checked,
    row181_good022_checked,
    row181_good023_checked,
    row181_good024_checked,
    row181_good025_checked,
    row181_good026_checked,
    row181_good027_checked,
    row181_good028_checked,
    row181_good029_checked,
    row181_good030_checked,
    row181_good031_checked,
    row181_good032_checked,
    row181_good033_checked,
    row181_good034_checked,
    row181_good035_checked,
    row181_good036_checked,
    row181_good037_checked,
    row181_good038_checked,
    row181_good039_checked,
    row181_good040_checked,
    row181_good041_checked,
    row181_good042_checked,
    row181_good043_checked,
    row181_good044_checked,
    row181_good045_checked,
    row181_good046_checked,
    row181_good047_checked,
    row181_good048_checked,
    row181_good049_checked,
    row181_good050_checked,
    row181_good051_checked,
    row181_good052_checked,
    row181_good053_checked,
    row181_good054_checked,
    row181_good055_checked,
    row181_good056_checked,
    row181_good057_checked,
    row181_good058_checked,
    row181_good059_checked,
    row181_good060_checked,
    row181_good061_checked,
    row181_good062_checked,
    row181_good063_checked,
    row181_good064_checked,
    row181_good065_checked,
    row181_good066_checked,
    row181_good067_checked,
    row181_good068_checked,
    row181_good069_checked,
    row181_good070_checked,
    row181_good071_checked,
    row181_good072_checked,
    row181_good073_checked,
    row181_good074_checked,
    row181_good075_checked,
    row181_good076_checked,
    row181_good077_checked,
    row181_good078_checked,
    row181_good079_checked,
    row181_good080_checked,
    row181_good081_checked,
    row181_good082_checked,
    row181_good083_checked,
    row181_good084_checked,
    row181_good085_checked,
    row181_good086_checked,
    row181_good087_checked,
    row181_good088_checked,
    row181_good089_checked,
    row181_good090_checked,
    row181_good091_checked,
    row181_good092_checked,
    row181_good093_checked,
    row181_good094_checked,
    row181_good095_checked,
    row181_good096_checked,
    row181_good097_checked,
    row181_good098_checked,
    row181_good099_checked,
    row181_good100_checked,
    row181_good101_checked,
    row181_good102_checked,
    row181_good103_checked,
    row181_good104_checked,
    row181_good105_checked,
    row181_good106_checked,
    row181_good107_checked,
    row181_good108_checked,
    row181_good109_checked,
    row181_good110_checked,
    row181_good111_checked,
    row181_good112_checked,
    row181_good113_checked,
    row181_good114_checked,
    row181_good115_checked,
    row181_good116_checked,
    row181_good117_checked,
    row181_good118_checked,
    row181_good119_checked,
    row181_good120_checked,
    row181_good121_checked,
    row181_good122_checked,
    row181_good123_checked,
    row181_good124_checked,
    row181_good125_checked,
    row181_good126_checked,
    row181_good127_checked,
    row181_good128_checked,
    row181_good129_checked,
    row181_good130_checked,
    row181_good131_checked,
    row181_good132_checked,
    row181_good133_checked,
    row181_good134_checked,
    row181_good135_checked,
    row181_good136_checked,
    row181_good137_checked,
    row181_good138_checked,
    row181_good139_checked,
    row181_good140_checked,
    row181_good141_checked,
    row181_good142_checked,
    row181_good143_checked,
    row181_good144_checked,
    row181_good145_checked,
    row181_good146_checked,
    row181_good147_checked,
    row181_good148_checked,
    row181_good149_checked,
    row181_good150_checked,
    row181_good151_checked,
    row181_good152_checked,
    row181_good153_checked,
    row181_good154_checked,
    row181_good155_checked,
    row181_good156_checked,
    row181_good157_checked,
    row181_good158_checked,
    row181_good159_checked,
    row181_good160_checked,
    row181_good161_checked,
    row181_good162_checked,
    row181_good163_checked,
    row181_good164_checked,
    row181_good165_checked,
    row181_good166_checked,
    row181_good167_checked,
    row181_good168_checked,
    row181_good169_checked,
    row181_good170_checked,
    row181_good171_checked,
    row181_good172_checked,
    row181_good173_checked,
    row181_good174_checked,
    row181_good175_checked,
    row181_good176_checked,
    row181_good177_checked,
    row181_good178_checked,
    row181_good179_checked,
    row181_good180_checked,
    row181_good181_checked,
    row181_good182_checked,
    row181_good183_checked,
    row181_good184_checked,
    row181_good185_checked,
    row181_good186_checked,
    row181_good187_checked,
    row181_good188_checked,
    row181_good189_checked,
    row181_good190_checked,
    row181_good191_checked,
    row181_good192_checked,
    row181_good193_checked,
    row181_good194_checked,
    row181_good195_checked,
    row181_good196_checked,
    row181_good197_checked,
    row181_good198_checked,
    row181_good199_checked,
    row181_good200_checked,
    row181_good201_checked,
    row181_good202_checked,
    row181_good203_checked,
    row181_good204_checked,
    row181_good205_checked,
    row181_good206_checked,
    row181_good207_checked,
    row181_good208_checked,
    row181_good209_checked,
    row181_good210_checked,
    row181_good211_checked,
    row181_good212_checked,
    row181_good213_checked,
    row181_good214_checked,
    row181_good215_checked,
    row181_good216_checked,
    row181_good217_checked,
    row181_good218_checked,
    row181_good219_checked,
    row181_good220_checked,
    row181_good221_checked,
    row181_good222_checked,
    row181_good223_checked,
    row181_good224_checked,
    row181_good225_checked,
    row181_good226_checked,
    row181_good227_checked,
    row181_good228_checked,
    row181_good229_checked,
    row181_good230_checked,
    row181_good231_checked,
    row181_good232_checked,
    row181_good233_checked,
    row181_good234_checked,
    row181_good235_checked,
    row181_good236_checked,
    row181_good237_checked,
    row181_good238_checked,
    row181_good239_checked,
    row181_good240_checked,
    row181_good241_checked,
    row181_good242_checked,
    row181_good243_checked,
    row181_good244_checked,
    row181_good245_checked,
    row181_good246_checked,
    row181_good247_checked,
    row181_good248_checked,
    row181_good249_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_registered :
    decide (row181.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row181_small_checked :
    coverCheck (2 * row181.height.i + 2) (row181.height.i * (row181.height.i - 1) - 1)
      (row181.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row181_layerCover_checked :
    coverCheck (row181.height.i * (row181.height.i - 1)) (row181.height.n0 - 1)
      (row181.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row181_bounds : List NatInterval :=
  [(364, 539), (540, 703), (704, 881), (882, 1061), (1062, 1241), (1242, 1417), (1418, 1589), (1590, 1763), (1764, 1939), (1940, 2113), (2114, 2293), (2294, 2473), (2474, 2653), (2654, 2827), (2828, 2999), (3000, 3179), (3180, 3349), (3350, 3527), (3528, 3707), (3708, 3881), (3882, 4061), (4062, 4237), (4238, 4411), (4412, 4589), (4590, 4763), (4764, 4939), (4940, 5117), (5118, 5293), (5294, 5461), (5462, 5629), (5630, 5803), (5804, 5981), (5982, 6161), (6162, 6331), (6332, 6509), (6510, 6671), (6672, 6841), (6842, 7021), (7022, 7199), (7200, 7373), (7374, 7549), (7550, 7729), (7730, 7907), (7908, 8087), (8088, 8267), (8268, 8443), (8444, 8623), (8624, 8803), (8804, 8983), (8984, 9151), (9152, 9331), (9332, 9503), (9504, 9677), (9678, 9857), (9858, 10037), (10038, 10217), (10218, 10391), (10392, 10571), (10572, 10747), (10748, 10919), (10920, 11089), (11090, 11267), (11268, 11441), (11442, 11617), (11618, 11797), (11798, 11969), (11970, 12149), (12150, 12329), (12330, 12509), (12510, 12683), (12684, 12851), (12852, 13021), (13022, 13189), (13190, 13367), (13368, 13547), (13548, 13717), (13718, 13891), (13892, 14063), (14064, 14237), (14238, 14401), (14402, 14581), (14582, 14743), (14744, 14921), (14922, 15077), (15078, 15257), (15258, 15421), (15422, 15593), (15594, 15763), (15764, 15941), (15942, 16117), (16118, 16291), (16292, 16453), (16454, 16633), (16634, 16813), (16814, 16991), (16992, 17167), (17168, 17347), (17348, 17521), (17522, 17699), (17700, 17863), (17864, 18043), (18044, 18223), (18224, 18403), (18404, 18581), (18582, 18733), (18734, 18911), (18912, 19091), (19092, 19267), (19268, 19447), (19448, 19627), (19628, 19789), (19790, 19957), (19958, 20129), (20130, 20309), (20310, 20477), (20478, 20657), (20658, 20821), (20822, 20989), (20990, 21163), (21164, 21343), (21344, 21521), (21522, 21701), (21702, 21881), (21882, 22061), (22062, 22231), (22232, 22409), (22410, 22589), (22590, 22753), (22754, 22931), (22932, 23101), (23102, 23279), (23280, 23459), (23460, 23639), (23640, 23813), (23814, 23993), (23994, 24173), (24174, 24349), (24350, 24517), (24518, 24697), (24698, 24877), (24878, 25057), (25058, 25237), (25238, 25417), (25418, 25591), (25592, 25769), (25770, 25943), (25944, 26123), (26124, 26299), (26300, 26477), (26478, 26639), (26640, 26813), (26814, 26993), (26994, 27173), (27174, 27323), (27324, 27479), (27480, 27659), (27660, 27833), (27834, 28007), (28008, 28181), (28182, 28361), (28362, 28531), (28532, 28697), (28698, 28877), (28878, 29051), (29052, 29213), (29214, 29389), (29390, 29569), (29570, 29749), (29750, 29921), (29922, 30101), (30102, 30277), (30278, 30451), (30452, 30629), (30630, 30773), (30774, 30953), (30954, 31129), (31130, 31303), (31304, 31457), (31458, 31577), (31578, 31753), (31754, 31931), (31932, 32087), (32088, 32263), (32264, 32441), (32442, 32579), (32805, 32948), (33614, 33669), (33708, 33794), (34322, 34499), (34500, 34571), (36517, 36677), (36678, 36681), (37303, 37390), (37446, 37483), (37500, 37673), (37674, 37718), (38307, 38471), (39366, 39484), (40401, 40508), (40804, 40805), (40931, 41107), (41108, 41111), (41334, 41334), (45056, 45070), (45369, 45433), (45927, 45976), (47045, 47055), (47526, 47701), (47702, 47704), (48013, 48141), (48373, 48551), (48552, 48553), (48778, 48848), (49152, 49319), (49320, 49332), (49379, 49478), (50421, 50590), (51076, 51185), (53138, 53225), (53248, 53419), (53420, 53428), (54043, 54048), (55451, 55621), (55622, 55627), (56307, 56349), (56454, 56487), (57245, 57302), (57344, 57425), (58619, 58744), (59049, 59136), (59582, 59585), (62500, 62590), (63869, 64043), (64044, 64049), (64082, 64128), (68694, 68824), (71289, 71467), (71468, 71469), (73167, 73182), (73205, 73347), (83667, 83701), (85805, 85863), (89383, 89553), (93845, 93930), (96774, 96785), (98415, 98484), (103041, 103146), (109503, 109555), (137842, 137961), (148955, 149057)]

theorem row181_bounds_eq : row181.goods.map goodSegmentBounds = row181_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row181_layer000_intervals : List ColouredInterval :=
  [(2, 32768, 32948), (2, 36864, 37044), (2, 40960, 41140), (2, 45056, 45236), (2, 49152, 49332), (2, 53248, 53428), (2, 32768, 32948), (2, 40960, 41140), (2, 49152, 49332), (2, 57344, 57524), (2, 32768, 32948), (2, 49152, 49332), (2, 32768, 32948), (3, 32805, 32985), (3, 39366, 39546), (3, 45927, 46107), (3, 52488, 52668), (3, 59049, 59229), (3, 39366, 39546), (3, 59049, 59229), (3, 59049, 59229), (5, 34375, 34555), (5, 37500, 37680), (5, 40625, 40805), (5, 46875, 47055), (5, 62500, 62680), (7, 33614, 33794), (7, 50421, 50601), (11, 43923, 44103), (11, 58564, 58744), (13, 57122, 57302), (17, 34391, 34571), (17, 39304, 39484), (17, 44217, 44397), (17, 49130, 49310), (17, 54043, 54223), (17, 58956, 59136), (17, 63869, 64049), (19, 34295, 34475), (19, 41154, 41334), (19, 48013, 48193), (19, 54872, 55052), (19, 61731, 61911), (23, 36501, 36681), (23, 48668, 48848), (23, 60835, 61015), (29, 48778, 48958), (31, 59582, 59762), (37, 50653, 50833), (53, 33708, 33888), (53, 36517, 36697), (59, 34810, 34990), (59, 38291, 38471), (59, 41772, 41952), (59, 45253, 45433), (61, 33489, 33669), (61, 37210, 37390), (61, 40931, 41111), (61, 44652, 44832), (61, 48373, 48553), (67, 35912, 36092), (67, 40401, 40581), (67, 44890, 45070), (67, 49379, 49559), (67, 53868, 54048), (67, 58357, 58537), (71, 35287, 35467), (71, 40328, 40508), (71, 45369, 45549), (71, 50410, 50590), (71, 55451, 55631), (71, 60492, 60672), (73, 37303, 37483), (73, 42632, 42812), (73, 47961, 48141), (73, 53290, 53470), (73, 58619, 58799), (73, 63948, 64128), (79, 37446, 37626), (79, 43687, 43867), (79, 49928, 50108), (79, 56169, 56349), (79, 62410, 62590), (83, 34445, 34625), (83, 41334, 41514), (83, 48223, 48403), (83, 55112, 55292), (83, 62001, 62181), (89, 39605, 39785), (89, 47526, 47706), (89, 55447, 55627), (89, 63368, 63548), (97, 37636, 37816), (97, 47045, 47225), (97, 56454, 56634), (101, 40804, 40984), (101, 51005, 51185), (101, 61206, 61386), (103, 42436, 42616), (103, 53045, 53225), (103, 63654, 63834), (107, 34347, 34527), (107, 45796, 45976), (107, 57245, 57425), (109, 35643, 35823), (109, 47524, 47704), (109, 59405, 59585), (113, 38307, 38487), (113, 51076, 51256), (113, 63845, 64025), (127, 48387, 48567), (127, 64516, 64696), (131, 34322, 34502), (131, 51483, 51663), (137, 37538, 37718), (137, 56307, 56487), (139, 38642, 38822), (139, 57963, 58143), (149, 44402, 44582), (151, 45602, 45782), (157, 49298, 49478), (163, 53138, 53318), (167, 55778, 55958), (173, 59858, 60038), (179, 64082, 64262)]

def row181_layer000_block000 : List ColouredInterval :=
  [(2, 32768, 32948), (2, 36864, 37044), (2, 40960, 41140), (2, 45056, 45236), (2, 49152, 49332), (2, 53248, 53428), (2, 32768, 32948), (2, 40960, 41140), (2, 49152, 49332), (2, 57344, 57524), (2, 32768, 32948), (2, 49152, 49332), (2, 32768, 32948), (3, 32805, 32985), (3, 39366, 39546), (3, 45927, 46107)]

def row181_layer000_block001 : List ColouredInterval :=
  [(3, 52488, 52668), (3, 59049, 59229), (3, 39366, 39546), (3, 59049, 59229), (3, 59049, 59229), (5, 34375, 34555), (5, 37500, 37680), (5, 40625, 40805), (5, 46875, 47055), (5, 62500, 62680), (7, 33614, 33794), (7, 50421, 50601), (11, 43923, 44103), (11, 58564, 58744), (13, 57122, 57302), (17, 34391, 34571)]

def row181_layer000_block002 : List ColouredInterval :=
  [(17, 39304, 39484), (17, 44217, 44397), (17, 49130, 49310), (17, 54043, 54223), (17, 58956, 59136), (17, 63869, 64049), (19, 34295, 34475), (19, 41154, 41334), (19, 48013, 48193), (19, 54872, 55052), (19, 61731, 61911), (23, 36501, 36681), (23, 48668, 48848), (23, 60835, 61015), (29, 48778, 48958), (31, 59582, 59762)]

def row181_layer000_block003 : List ColouredInterval :=
  [(37, 50653, 50833), (53, 33708, 33888), (53, 36517, 36697), (59, 34810, 34990), (59, 38291, 38471), (59, 41772, 41952), (59, 45253, 45433), (61, 33489, 33669), (61, 37210, 37390), (61, 40931, 41111), (61, 44652, 44832), (61, 48373, 48553), (67, 35912, 36092), (67, 40401, 40581), (67, 44890, 45070), (67, 49379, 49559)]

def row181_layer000_block004 : List ColouredInterval :=
  [(67, 53868, 54048), (67, 58357, 58537), (71, 35287, 35467), (71, 40328, 40508), (71, 45369, 45549), (71, 50410, 50590), (71, 55451, 55631), (71, 60492, 60672), (73, 37303, 37483), (73, 42632, 42812), (73, 47961, 48141), (73, 53290, 53470), (73, 58619, 58799), (73, 63948, 64128), (79, 37446, 37626), (79, 43687, 43867)]

def row181_layer000_block005 : List ColouredInterval :=
  [(79, 49928, 50108), (79, 56169, 56349), (79, 62410, 62590), (83, 34445, 34625), (83, 41334, 41514), (83, 48223, 48403), (83, 55112, 55292), (83, 62001, 62181), (89, 39605, 39785), (89, 47526, 47706), (89, 55447, 55627), (89, 63368, 63548), (97, 37636, 37816), (97, 47045, 47225), (97, 56454, 56634), (101, 40804, 40984)]

def row181_layer000_block006 : List ColouredInterval :=
  [(101, 51005, 51185), (101, 61206, 61386), (103, 42436, 42616), (103, 53045, 53225), (103, 63654, 63834), (107, 34347, 34527), (107, 45796, 45976), (107, 57245, 57425), (109, 35643, 35823), (109, 47524, 47704), (109, 59405, 59585), (113, 38307, 38487), (113, 51076, 51256), (113, 63845, 64025), (127, 48387, 48567), (127, 64516, 64696)]

def row181_layer000_block007 : List ColouredInterval :=
  [(131, 34322, 34502), (131, 51483, 51663), (137, 37538, 37718), (137, 56307, 56487), (139, 38642, 38822), (139, 57963, 58143), (149, 44402, 44582), (151, 45602, 45782), (157, 49298, 49478), (163, 53138, 53318), (167, 55778, 55958), (173, 59858, 60038), (179, 64082, 64262)]

def row181_layer000_chunks : List (List ColouredInterval) :=
  [row181_layer000_block000, row181_layer000_block001, row181_layer000_block002, row181_layer000_block003, row181_layer000_block004, row181_layer000_block005, row181_layer000_block006, row181_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_arithmetic : LayerArithmeticValid row181.height { lower := 32580, upper := 65160, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_enumeration :
    activePowerIntervalList 181 13 32580 65160 = row181_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs000 :
    row181_layer000_block000.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs001 :
    row181_layer000_block001.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs002 :
    row181_layer000_block002.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs003 :
    row181_layer000_block003.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs004 :
    row181_layer000_block004.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs005 :
    row181_layer000_block005.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs006 :
    row181_layer000_block006.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_pairs007 :
    row181_layer000_block007.all (fun I => row181_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row181_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row181_layer000_chunks_eq : row181_layer000_chunks.flatten = row181_layer000_intervals := by
  rfl

theorem row181_layer000_pairs : pairCoverCheck row181_layer000_intervals row181_bounds = true := by
  apply pairCoverCheck_of_chunks row181_layer000_chunks_eq
  intro block hblock
  simp only [row181_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row181_layer000_pairs000
  · exact row181_layer000_pairs001
  · exact row181_layer000_pairs002
  · exact row181_layer000_pairs003
  · exact row181_layer000_pairs004
  · exact row181_layer000_pairs005
  · exact row181_layer000_pairs006
  · exact row181_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row181_layer000_pairs
