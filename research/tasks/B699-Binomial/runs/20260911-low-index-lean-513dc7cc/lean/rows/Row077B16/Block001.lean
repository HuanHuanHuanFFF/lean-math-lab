import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_good240_checked :
    goodSegmentCheck 77 25 53
      { lower := 48778, upper := 48810, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good241_checked :
    goodSegmentCheck 77 25 53
      { lower := 49152, upper := 49206, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good242_checked :
    goodSegmentCheck 77 25 53
      { lower := 53290, upper := 53324, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good243_checked :
    goodSegmentCheck 77 25 53
      { lower := 59582, upper := 59612, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good244_checked :
    goodSegmentCheck 77 25 53
      { lower := 65536, upper := 65597, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good245_checked :
    goodSegmentCheck 77 25 53
      { lower := 65598, upper := 65612, witness := RowWitness.topPrime 65587 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good246_checked :
    goodSegmentCheck 77 25 53
      { lower := 73728, upper := 73771, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good247_checked :
    goodSegmentCheck 77 25 53
      { lower := 85291, upper := 85335, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good248_checked :
    goodSegmentCheck 77 25 53
      { lower := 85336, upper := 85367, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good249_checked :
    goodSegmentCheck 77 25 53
      { lower := 85697, upper := 85759, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good250_checked :
    goodSegmentCheck 77 25 53
      { lower := 137842, upper := 137857, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row077_good251_checked :
    goodSegmentCheck 77 25 53
      { lower := 327701, upper := 327756, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 77) (r := 25) (s := 53) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_good251_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_goods_checked :
    row077.goods.all (goodSegmentCheck row077.height.i row077.height.r row077.height.s) = true := by
  change row077_goods.all (goodSegmentCheck 77 25 53) = true
  simp only [row077_goods, List.all_cons, List.all_nil,
    row077_good000_checked,
    row077_good001_checked,
    row077_good002_checked,
    row077_good003_checked,
    row077_good004_checked,
    row077_good005_checked,
    row077_good006_checked,
    row077_good007_checked,
    row077_good008_checked,
    row077_good009_checked,
    row077_good010_checked,
    row077_good011_checked,
    row077_good012_checked,
    row077_good013_checked,
    row077_good014_checked,
    row077_good015_checked,
    row077_good016_checked,
    row077_good017_checked,
    row077_good018_checked,
    row077_good019_checked,
    row077_good020_checked,
    row077_good021_checked,
    row077_good022_checked,
    row077_good023_checked,
    row077_good024_checked,
    row077_good025_checked,
    row077_good026_checked,
    row077_good027_checked,
    row077_good028_checked,
    row077_good029_checked,
    row077_good030_checked,
    row077_good031_checked,
    row077_good032_checked,
    row077_good033_checked,
    row077_good034_checked,
    row077_good035_checked,
    row077_good036_checked,
    row077_good037_checked,
    row077_good038_checked,
    row077_good039_checked,
    row077_good040_checked,
    row077_good041_checked,
    row077_good042_checked,
    row077_good043_checked,
    row077_good044_checked,
    row077_good045_checked,
    row077_good046_checked,
    row077_good047_checked,
    row077_good048_checked,
    row077_good049_checked,
    row077_good050_checked,
    row077_good051_checked,
    row077_good052_checked,
    row077_good053_checked,
    row077_good054_checked,
    row077_good055_checked,
    row077_good056_checked,
    row077_good057_checked,
    row077_good058_checked,
    row077_good059_checked,
    row077_good060_checked,
    row077_good061_checked,
    row077_good062_checked,
    row077_good063_checked,
    row077_good064_checked,
    row077_good065_checked,
    row077_good066_checked,
    row077_good067_checked,
    row077_good068_checked,
    row077_good069_checked,
    row077_good070_checked,
    row077_good071_checked,
    row077_good072_checked,
    row077_good073_checked,
    row077_good074_checked,
    row077_good075_checked,
    row077_good076_checked,
    row077_good077_checked,
    row077_good078_checked,
    row077_good079_checked,
    row077_good080_checked,
    row077_good081_checked,
    row077_good082_checked,
    row077_good083_checked,
    row077_good084_checked,
    row077_good085_checked,
    row077_good086_checked,
    row077_good087_checked,
    row077_good088_checked,
    row077_good089_checked,
    row077_good090_checked,
    row077_good091_checked,
    row077_good092_checked,
    row077_good093_checked,
    row077_good094_checked,
    row077_good095_checked,
    row077_good096_checked,
    row077_good097_checked,
    row077_good098_checked,
    row077_good099_checked,
    row077_good100_checked,
    row077_good101_checked,
    row077_good102_checked,
    row077_good103_checked,
    row077_good104_checked,
    row077_good105_checked,
    row077_good106_checked,
    row077_good107_checked,
    row077_good108_checked,
    row077_good109_checked,
    row077_good110_checked,
    row077_good111_checked,
    row077_good112_checked,
    row077_good113_checked,
    row077_good114_checked,
    row077_good115_checked,
    row077_good116_checked,
    row077_good117_checked,
    row077_good118_checked,
    row077_good119_checked,
    row077_good120_checked,
    row077_good121_checked,
    row077_good122_checked,
    row077_good123_checked,
    row077_good124_checked,
    row077_good125_checked,
    row077_good126_checked,
    row077_good127_checked,
    row077_good128_checked,
    row077_good129_checked,
    row077_good130_checked,
    row077_good131_checked,
    row077_good132_checked,
    row077_good133_checked,
    row077_good134_checked,
    row077_good135_checked,
    row077_good136_checked,
    row077_good137_checked,
    row077_good138_checked,
    row077_good139_checked,
    row077_good140_checked,
    row077_good141_checked,
    row077_good142_checked,
    row077_good143_checked,
    row077_good144_checked,
    row077_good145_checked,
    row077_good146_checked,
    row077_good147_checked,
    row077_good148_checked,
    row077_good149_checked,
    row077_good150_checked,
    row077_good151_checked,
    row077_good152_checked,
    row077_good153_checked,
    row077_good154_checked,
    row077_good155_checked,
    row077_good156_checked,
    row077_good157_checked,
    row077_good158_checked,
    row077_good159_checked,
    row077_good160_checked,
    row077_good161_checked,
    row077_good162_checked,
    row077_good163_checked,
    row077_good164_checked,
    row077_good165_checked,
    row077_good166_checked,
    row077_good167_checked,
    row077_good168_checked,
    row077_good169_checked,
    row077_good170_checked,
    row077_good171_checked,
    row077_good172_checked,
    row077_good173_checked,
    row077_good174_checked,
    row077_good175_checked,
    row077_good176_checked,
    row077_good177_checked,
    row077_good178_checked,
    row077_good179_checked,
    row077_good180_checked,
    row077_good181_checked,
    row077_good182_checked,
    row077_good183_checked,
    row077_good184_checked,
    row077_good185_checked,
    row077_good186_checked,
    row077_good187_checked,
    row077_good188_checked,
    row077_good189_checked,
    row077_good190_checked,
    row077_good191_checked,
    row077_good192_checked,
    row077_good193_checked,
    row077_good194_checked,
    row077_good195_checked,
    row077_good196_checked,
    row077_good197_checked,
    row077_good198_checked,
    row077_good199_checked,
    row077_good200_checked,
    row077_good201_checked,
    row077_good202_checked,
    row077_good203_checked,
    row077_good204_checked,
    row077_good205_checked,
    row077_good206_checked,
    row077_good207_checked,
    row077_good208_checked,
    row077_good209_checked,
    row077_good210_checked,
    row077_good211_checked,
    row077_good212_checked,
    row077_good213_checked,
    row077_good214_checked,
    row077_good215_checked,
    row077_good216_checked,
    row077_good217_checked,
    row077_good218_checked,
    row077_good219_checked,
    row077_good220_checked,
    row077_good221_checked,
    row077_good222_checked,
    row077_good223_checked,
    row077_good224_checked,
    row077_good225_checked,
    row077_good226_checked,
    row077_good227_checked,
    row077_good228_checked,
    row077_good229_checked,
    row077_good230_checked,
    row077_good231_checked,
    row077_good232_checked,
    row077_good233_checked,
    row077_good234_checked,
    row077_good235_checked,
    row077_good236_checked,
    row077_good237_checked,
    row077_good238_checked,
    row077_good239_checked,
    row077_good240_checked,
    row077_good241_checked,
    row077_good242_checked,
    row077_good243_checked,
    row077_good244_checked,
    row077_good245_checked,
    row077_good246_checked,
    row077_good247_checked,
    row077_good248_checked,
    row077_good249_checked,
    row077_good250_checked,
    row077_good251_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_registered :
    decide (row077.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row077_small_checked :
    coverCheck (2 * row077.height.i + 2) (row077.height.i * (row077.height.i - 1) - 1)
      (row077.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row077_layerCover_checked :
    coverCheck (row077.height.i * (row077.height.i - 1)) (row077.height.n0 - 1)
      (row077.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_bounds : List NatInterval :=
  [(156, 227), (228, 303), (304, 369), (370, 443), (444, 519), (520, 585), (586, 653), (654, 729), (730, 803), (804, 873), (874, 939), (940, 1013), (1014, 1089), (1090, 1163), (1164, 1239), (1240, 1313), (1314, 1383), (1384, 1457), (1458, 1529), (1530, 1599), (1600, 1673), (1674, 1745), (1746, 1817), (1818, 1887), (1888, 1955), (1956, 2027), (2028, 2103), (2104, 2175), (2176, 2237), (2238, 2313), (2314, 2387), (2388, 2459), (2460, 2535), (2536, 2607), (2608, 2669), (2670, 2739), (2740, 2807), (2808, 2879), (2880, 2955), (2956, 3029), (3030, 3099), (3100, 3165), (3166, 3239), (3240, 3305), (3306, 3377), (3378, 3449), (3450, 3525), (3526, 3593), (3594, 3669), (3670, 3735), (3736, 3809), (3810, 3879), (3880, 3953), (3954, 4023), (4024, 4097), (4098, 4169), (4170, 4235), (4236, 4307), (4308, 4373), (4374, 4449), (4450, 4523), (4524, 4599), (4600, 4673), (4674, 4749), (4750, 4809), (4810, 4877), (4878, 4953), (4954, 5027), (5028, 5099), (5100, 5175), (5176, 5247), (5248, 5313), (5314, 5385), (5386, 5457), (5458, 5525), (5526, 5597), (5598, 5667), (5668, 5735), (5736, 5793), (5794, 5867), (5868, 5943), (5944, 5963), (6075, 6149), (6150, 6213), (6318, 6326), (6348, 6419), (6420, 6434), (6561, 6574), (6591, 6657), (6658, 6729), (6730, 6795), (6796, 6804), (6845, 6917), (6918, 6993), (6994, 7012), (7203, 7269), (7270, 7301), (7406, 7469), (7470, 7535), (7536, 7605), (7606, 7645), (7688, 7756), (7942, 8011), (8092, 8095), (8125, 8168), (8192, 8201), (8214, 8268), (8405, 8465), (8466, 8503), (8664, 8739), (8740, 8740), (8748, 8823), (8824, 8826), (8836, 8864), (8993, 9047), (9048, 9069), (9245, 9317), (9318, 9321), (9386, 9451), (9522, 9553), (9583, 9598), (9604, 9677), (9678, 9680), (9747, 9804), (10051, 10076), (10082, 10155), (10156, 10168), (10240, 10282), (10469, 10519), (10580, 10643), (10644, 10656), (10658, 10701), (10935, 10985), (10986, 11028), (11045, 11061), (11094, 11169), (11170, 11185), (11236, 11239), (11250, 11319), (11320, 11326), (11664, 11714), (11774, 11819), (11820, 11850), (12321, 12364), (12393, 12397), (12500, 12569), (13125, 13197), (13198, 13201), (13225, 13295), (13296, 13301), (13312, 13330), (13454, 13527), (13528, 13532), (13718, 13787), (13788, 13794), (13924, 13927), (14336, 14373), (14375, 14412), (14415, 14451), (14641, 14656), (14792, 14815), (15059, 15076), (15123, 15197), (15198, 15205), (15360, 15435), (15436, 15452), (15987, 16049), (16050, 16063), (16384, 16413), (16428, 16460), (16807, 16863), (16864, 16896), (17408, 17477), (17478, 17481), (17672, 17737), (18259, 18301), (18490, 18557), (18558, 18567), (19220, 19242), (19663, 19737), (19738, 19739), (20172, 20237), (20238, 20257), (20535, 20556), (20577, 20611), (21870, 21939), (21940, 21951), (21970, 21980), (22103, 22166), (22472, 22521), (22528, 22548), (24057, 24113), (24334, 24405), (24406, 24443), (24576, 24647), (24648, 24652), (25215, 25265), (25266, 25291), (26047, 26087), (26645, 26700), (26934, 26972), (27436, 27456), (28125, 28166), (28577, 28637), (28717, 28787), (28788, 28793), (29791, 29844), (30258, 30322), (30758, 30796), (30926, 30975), (31433, 31473), (31474, 31499), (31974, 32015), (32805, 32844), (33620, 33690), (34391, 34451), (34816, 34883), (34884, 34886), (35152, 35207), (35301, 35367), (35368, 35377), (36517, 36573), (36574, 36577), (36982, 37055), (37056, 37056), (37210, 37255), (37349, 37379), (37553, 37576), (39326, 39399), (39400, 39402), (40401, 40404), (40678, 40701), (40960, 41007), (41772, 41819), (43750, 43797), (43798, 43816), (44217, 44256), (44944, 44966), (48013, 48037), (48734, 48744), (48778, 48810), (49152, 49206), (53290, 53324), (59582, 59612), (65536, 65597), (65598, 65612), (73728, 73771), (85291, 85335), (85336, 85367), (85697, 85759), (137842, 137857), (327701, 327756)]

theorem row077_bounds_eq : row077.goods.map goodSegmentBounds = row077_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer000_intervals : List ColouredInterval :=
  [(2, 5888, 5964), (2, 6144, 6220), (2, 6400, 6476), (2, 6656, 6732), (2, 6912, 6988), (2, 7168, 7244), (2, 7424, 7500), (2, 6144, 6220), (2, 6656, 6732), (2, 7168, 7244), (2, 7680, 7756), (2, 8192, 8268), (2, 8704, 8780), (2, 9216, 9292), (2, 9728, 9804), (2, 10240, 10316), (2, 10752, 10828), (2, 11264, 11340), (2, 6144, 6220), (2, 7168, 7244), (2, 8192, 8268), (2, 9216, 9292), (2, 10240, 10316), (2, 11264, 11340), (2, 6144, 6220), (2, 8192, 8268), (2, 10240, 10316), (2, 8192, 8268), (2, 8192, 8268), (3, 5852, 5908), (3, 6075, 6151), (3, 6318, 6394), (3, 6561, 6637), (3, 6804, 6880), (3, 7047, 7123), (3, 5852, 5908), (3, 6561, 6637), (3, 7290, 7366), (3, 8019, 8095), (3, 8748, 8824), (3, 9477, 9553), (3, 10206, 10282), (3, 10935, 11011), (3, 11664, 11703), (3, 6561, 6637), (3, 8748, 8824), (3, 10935, 11011), (3, 6561, 6637), (5, 6250, 6326), (5, 6875, 6951), (5, 7500, 7576), (5, 8125, 8201), (5, 8750, 8826), (5, 9375, 9451), (5, 10000, 10076), (5, 10625, 10701), (5, 11250, 11326), (5, 6250, 6326), (5, 9375, 9451), (7, 7203, 7279), (7, 9604, 9680), (13, 6591, 6667), (13, 8788, 8864), (13, 10985, 11061), (17, 5852, 5856), (17, 6069, 6145), (17, 6358, 6434), (17, 6647, 6723), (17, 6936, 7012), (17, 7225, 7301), (17, 7514, 7590), (17, 7803, 7879), (17, 8092, 8168), (17, 8381, 8457), (17, 9826, 9902), (19, 5852, 5852), (19, 6137, 6213), (19, 6498, 6574), (19, 6859, 6935), (19, 7220, 7296), (19, 7581, 7657), (19, 7942, 8018), (19, 8303, 8379), (19, 8664, 8740), (19, 9025, 9101), (19, 9386, 9462), (19, 9747, 9823), (19, 10108, 10184), (19, 10469, 10545), (19, 6859, 6935), (23, 5852, 5895), (23, 6348, 6424), (23, 6877, 6953), (23, 7406, 7482), (23, 7935, 8011), (23, 8464, 8540), (23, 8993, 9069), (23, 9522, 9598), (23, 10051, 10127), (23, 10580, 10656), (23, 11109, 11185), (23, 11638, 11703), (29, 5887, 5963), (29, 6728, 6804), (29, 7569, 7645), (29, 8410, 8486), (29, 9251, 9327), (29, 10092, 10168), (29, 10933, 11009), (31, 6727, 6803), (31, 7688, 7764), (31, 8649, 8725), (31, 9610, 9686), (31, 10571, 10647), (31, 11532, 11608), (37, 6845, 6921), (37, 8214, 8290), (37, 9583, 9659), (37, 10952, 11028), (41, 6724, 6800), (41, 8405, 8481), (41, 10086, 10162), (43, 7396, 7472), (43, 9245, 9321), (43, 11094, 11170), (47, 6627, 6703), (47, 8836, 8912), (47, 11045, 11121), (53, 8427, 8503), (53, 11236, 11312), (59, 6962, 7038), (59, 10443, 10519), (61, 7442, 7518), (61, 11163, 11239), (67, 8978, 9054), (71, 10082, 10158), (73, 10658, 10734)]

def row077_layer000_block000 : List ColouredInterval :=
  [(2, 5888, 5964), (2, 6144, 6220), (2, 6400, 6476), (2, 6656, 6732), (2, 6912, 6988), (2, 7168, 7244), (2, 7424, 7500), (2, 6144, 6220), (2, 6656, 6732), (2, 7168, 7244), (2, 7680, 7756), (2, 8192, 8268), (2, 8704, 8780), (2, 9216, 9292)]

def row077_layer000_block001 : List ColouredInterval :=
  [(2, 9728, 9804), (2, 10240, 10316), (2, 10752, 10828), (2, 11264, 11340), (2, 6144, 6220), (2, 7168, 7244), (2, 8192, 8268), (2, 9216, 9292), (2, 10240, 10316), (2, 11264, 11340), (2, 6144, 6220), (2, 8192, 8268), (2, 10240, 10316), (2, 8192, 8268)]

def row077_layer000_block002 : List ColouredInterval :=
  [(2, 8192, 8268), (3, 5852, 5908), (3, 6075, 6151), (3, 6318, 6394), (3, 6561, 6637), (3, 6804, 6880), (3, 7047, 7123), (3, 5852, 5908), (3, 6561, 6637), (3, 7290, 7366), (3, 8019, 8095), (3, 8748, 8824), (3, 9477, 9553), (3, 10206, 10282)]

def row077_layer000_block003 : List ColouredInterval :=
  [(3, 10935, 11011), (3, 11664, 11703), (3, 6561, 6637), (3, 8748, 8824), (3, 10935, 11011), (3, 6561, 6637), (5, 6250, 6326), (5, 6875, 6951), (5, 7500, 7576), (5, 8125, 8201), (5, 8750, 8826), (5, 9375, 9451), (5, 10000, 10076), (5, 10625, 10701)]

def row077_layer000_block004 : List ColouredInterval :=
  [(5, 11250, 11326), (5, 6250, 6326), (5, 9375, 9451), (7, 7203, 7279), (7, 9604, 9680), (13, 6591, 6667), (13, 8788, 8864), (13, 10985, 11061), (17, 5852, 5856), (17, 6069, 6145), (17, 6358, 6434), (17, 6647, 6723), (17, 6936, 7012), (17, 7225, 7301)]

def row077_layer000_block005 : List ColouredInterval :=
  [(17, 7514, 7590), (17, 7803, 7879), (17, 8092, 8168), (17, 8381, 8457), (17, 9826, 9902), (19, 5852, 5852), (19, 6137, 6213), (19, 6498, 6574), (19, 6859, 6935), (19, 7220, 7296), (19, 7581, 7657), (19, 7942, 8018), (19, 8303, 8379), (19, 8664, 8740)]

def row077_layer000_block006 : List ColouredInterval :=
  [(19, 9025, 9101), (19, 9386, 9462), (19, 9747, 9823), (19, 10108, 10184), (19, 10469, 10545), (19, 6859, 6935), (23, 5852, 5895), (23, 6348, 6424), (23, 6877, 6953), (23, 7406, 7482), (23, 7935, 8011), (23, 8464, 8540), (23, 8993, 9069), (23, 9522, 9598)]

def row077_layer000_block007 : List ColouredInterval :=
  [(23, 10051, 10127), (23, 10580, 10656), (23, 11109, 11185), (23, 11638, 11703), (29, 5887, 5963), (29, 6728, 6804), (29, 7569, 7645), (29, 8410, 8486), (29, 9251, 9327), (29, 10092, 10168), (29, 10933, 11009), (31, 6727, 6803), (31, 7688, 7764), (31, 8649, 8725)]

def row077_layer000_block008 : List ColouredInterval :=
  [(31, 9610, 9686), (31, 10571, 10647), (31, 11532, 11608), (37, 6845, 6921), (37, 8214, 8290), (37, 9583, 9659), (37, 10952, 11028), (41, 6724, 6800), (41, 8405, 8481), (41, 10086, 10162), (43, 7396, 7472), (43, 9245, 9321), (43, 11094, 11170), (47, 6627, 6703)]

def row077_layer000_block009 : List ColouredInterval :=
  [(47, 8836, 8912), (47, 11045, 11121), (53, 8427, 8503), (53, 11236, 11312), (59, 6962, 7038), (59, 10443, 10519), (61, 7442, 7518), (61, 11163, 11239), (67, 8978, 9054), (71, 10082, 10158), (73, 10658, 10734)]

def row077_layer000_chunks : List (List ColouredInterval) :=
  [row077_layer000_block000, row077_layer000_block001, row077_layer000_block002, row077_layer000_block003, row077_layer000_block004, row077_layer000_block005, row077_layer000_block006, row077_layer000_block007, row077_layer000_block008, row077_layer000_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_arithmetic : LayerArithmeticValid row077.height { lower := 5852, upper := 11704, M := 29 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_enumeration :
    activePowerIntervalList 77 29 5852 11704 = row077_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs000 :
    row077_layer000_block000.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs001 :
    row077_layer000_block001.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs002 :
    row077_layer000_block002.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs003 :
    row077_layer000_block003.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs004 :
    row077_layer000_block004.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs005 :
    row077_layer000_block005.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs006 :
    row077_layer000_block006.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs007 :
    row077_layer000_block007.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer000_pairs008 :
    row077_layer000_block008.all (fun I => row077_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_pairs008
