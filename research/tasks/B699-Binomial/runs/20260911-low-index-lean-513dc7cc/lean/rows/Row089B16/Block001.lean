import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row089B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_goods_checked :
    row089.goods.all (goodSegmentCheck row089.height.i row089.height.r row089.height.s) = true := by
  change row089_goods.all (goodSegmentCheck 89 29 62) = true
  simp only [row089_goods, List.all_cons, List.all_nil,
    row089_good000_checked,
    row089_good001_checked,
    row089_good002_checked,
    row089_good003_checked,
    row089_good004_checked,
    row089_good005_checked,
    row089_good006_checked,
    row089_good007_checked,
    row089_good008_checked,
    row089_good009_checked,
    row089_good010_checked,
    row089_good011_checked,
    row089_good012_checked,
    row089_good013_checked,
    row089_good014_checked,
    row089_good015_checked,
    row089_good016_checked,
    row089_good017_checked,
    row089_good018_checked,
    row089_good019_checked,
    row089_good020_checked,
    row089_good021_checked,
    row089_good022_checked,
    row089_good023_checked,
    row089_good024_checked,
    row089_good025_checked,
    row089_good026_checked,
    row089_good027_checked,
    row089_good028_checked,
    row089_good029_checked,
    row089_good030_checked,
    row089_good031_checked,
    row089_good032_checked,
    row089_good033_checked,
    row089_good034_checked,
    row089_good035_checked,
    row089_good036_checked,
    row089_good037_checked,
    row089_good038_checked,
    row089_good039_checked,
    row089_good040_checked,
    row089_good041_checked,
    row089_good042_checked,
    row089_good043_checked,
    row089_good044_checked,
    row089_good045_checked,
    row089_good046_checked,
    row089_good047_checked,
    row089_good048_checked,
    row089_good049_checked,
    row089_good050_checked,
    row089_good051_checked,
    row089_good052_checked,
    row089_good053_checked,
    row089_good054_checked,
    row089_good055_checked,
    row089_good056_checked,
    row089_good057_checked,
    row089_good058_checked,
    row089_good059_checked,
    row089_good060_checked,
    row089_good061_checked,
    row089_good062_checked,
    row089_good063_checked,
    row089_good064_checked,
    row089_good065_checked,
    row089_good066_checked,
    row089_good067_checked,
    row089_good068_checked,
    row089_good069_checked,
    row089_good070_checked,
    row089_good071_checked,
    row089_good072_checked,
    row089_good073_checked,
    row089_good074_checked,
    row089_good075_checked,
    row089_good076_checked,
    row089_good077_checked,
    row089_good078_checked,
    row089_good079_checked,
    row089_good080_checked,
    row089_good081_checked,
    row089_good082_checked,
    row089_good083_checked,
    row089_good084_checked,
    row089_good085_checked,
    row089_good086_checked,
    row089_good087_checked,
    row089_good088_checked,
    row089_good089_checked,
    row089_good090_checked,
    row089_good091_checked,
    row089_good092_checked,
    row089_good093_checked,
    row089_good094_checked,
    row089_good095_checked,
    row089_good096_checked,
    row089_good097_checked,
    row089_good098_checked,
    row089_good099_checked,
    row089_good100_checked,
    row089_good101_checked,
    row089_good102_checked,
    row089_good103_checked,
    row089_good104_checked,
    row089_good105_checked,
    row089_good106_checked,
    row089_good107_checked,
    row089_good108_checked,
    row089_good109_checked,
    row089_good110_checked,
    row089_good111_checked,
    row089_good112_checked,
    row089_good113_checked,
    row089_good114_checked,
    row089_good115_checked,
    row089_good116_checked,
    row089_good117_checked,
    row089_good118_checked,
    row089_good119_checked,
    row089_good120_checked,
    row089_good121_checked,
    row089_good122_checked,
    row089_good123_checked,
    row089_good124_checked,
    row089_good125_checked,
    row089_good126_checked,
    row089_good127_checked,
    row089_good128_checked,
    row089_good129_checked,
    row089_good130_checked,
    row089_good131_checked,
    row089_good132_checked,
    row089_good133_checked,
    row089_good134_checked,
    row089_good135_checked,
    row089_good136_checked,
    row089_good137_checked,
    row089_good138_checked,
    row089_good139_checked,
    row089_good140_checked,
    row089_good141_checked,
    row089_good142_checked,
    row089_good143_checked,
    row089_good144_checked,
    row089_good145_checked,
    row089_good146_checked,
    row089_good147_checked,
    row089_good148_checked,
    row089_good149_checked,
    row089_good150_checked,
    row089_good151_checked,
    row089_good152_checked,
    row089_good153_checked,
    row089_good154_checked,
    row089_good155_checked,
    row089_good156_checked,
    row089_good157_checked,
    row089_good158_checked,
    row089_good159_checked,
    row089_good160_checked,
    row089_good161_checked,
    row089_good162_checked,
    row089_good163_checked,
    row089_good164_checked,
    row089_good165_checked,
    row089_good166_checked,
    row089_good167_checked,
    row089_good168_checked,
    row089_good169_checked,
    row089_good170_checked,
    row089_good171_checked,
    row089_good172_checked,
    row089_good173_checked,
    row089_good174_checked,
    row089_good175_checked,
    row089_good176_checked,
    row089_good177_checked,
    row089_good178_checked,
    row089_good179_checked,
    row089_good180_checked,
    row089_good181_checked,
    row089_good182_checked,
    row089_good183_checked,
    row089_good184_checked,
    row089_good185_checked,
    row089_good186_checked,
    row089_good187_checked,
    row089_good188_checked,
    row089_good189_checked,
    row089_good190_checked,
    row089_good191_checked,
    row089_good192_checked,
    row089_good193_checked,
    row089_good194_checked,
    row089_good195_checked,
    row089_good196_checked,
    row089_good197_checked,
    row089_good198_checked,
    row089_good199_checked,
    row089_good200_checked,
    row089_good201_checked,
    row089_good202_checked,
    row089_good203_checked,
    row089_good204_checked,
    row089_good205_checked,
    row089_good206_checked,
    row089_good207_checked,
    row089_good208_checked,
    row089_good209_checked,
    row089_good210_checked,
    row089_good211_checked,
    row089_good212_checked,
    row089_good213_checked,
    row089_good214_checked,
    row089_good215_checked,
    row089_good216_checked,
    row089_good217_checked,
    row089_good218_checked,
    row089_good219_checked,
    row089_good220_checked,
    row089_good221_checked,
    row089_good222_checked,
    row089_good223_checked,
    row089_good224_checked,
    row089_good225_checked,
    row089_good226_checked,
    row089_good227_checked,
    row089_good228_checked,
    row089_good229_checked,
    row089_good230_checked,
    row089_good231_checked,
    row089_good232_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_registered :
    decide (row089.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row089_small_checked :
    coverCheck (2 * row089.height.i + 2) (row089.height.i * (row089.height.i - 1) - 1)
      (row089.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row089_layerCover_checked :
    coverCheck (row089.height.i * (row089.height.i - 1)) (row089.height.n0 - 1)
      (row089.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_bounds : List NatInterval :=
  [(180, 267), (268, 351), (352, 437), (438, 521), (522, 609), (610, 695), (696, 779), (780, 861), (862, 947), (948, 1035), (1036, 1121), (1122, 1205), (1206, 1289), (1290, 1377), (1378, 1461), (1462, 1547), (1548, 1631), (1632, 1715), (1716, 1797), (1798, 1877), (1878, 1965), (1966, 2039), (2040, 2127), (2128, 2201), (2202, 2267), (2268, 2355), (2356, 2439), (2440, 2525), (2526, 2609), (2610, 2697), (2698, 2781), (2782, 2865), (2866, 2949), (2950, 3027), (3028, 3111), (3112, 3197), (3198, 3279), (3280, 3359), (3360, 3447), (3448, 3521), (3522, 3605), (3606, 3681), (3682, 3765), (3766, 3849), (3850, 3935), (3936, 4019), (4020, 4107), (4108, 4187), (4188, 4265), (4266, 4349), (4350, 4437), (4438, 4511), (4512, 4595), (4596, 4679), (4680, 4767), (4768, 4847), (4848, 4919), (4920, 5007), (5008, 5091), (5092, 5175), (5176, 5259), (5260, 5325), (5326, 5411), (5412, 5495), (5496, 5571), (5572, 5657), (5658, 5745), (5746, 5831), (5832, 5915), (5916, 5991), (5992, 6075), (6076, 6161), (6162, 6239), (6240, 6317), (6318, 6405), (6406, 6485), (6486, 6569), (6570, 6657), (6658, 6741), (6742, 6825), (6826, 6911), (6912, 6999), (7000, 7085), (7086, 7167), (7168, 7247), (7248, 7335), (7336, 7421), (7422, 7505), (7506, 7587), (7588, 7671), (7672, 7757), (7758, 7831), (7935, 8021), (8022, 8074), (8192, 8279), (8280, 8280), (8410, 8477), (8478, 8515), (8704, 8737), (8748, 8835), (8836, 8876), (8993, 9059), (9060, 9066), (9245, 9329), (9330, 9339), (9375, 9405), (9522, 9565), (9583, 9639), (9640, 9692), (10051, 10127), (10128, 10174), (10240, 10294), (10580, 10655), (10656, 10736), (10935, 10997), (10998, 11040), (11045, 11073), (11094, 11181), (11182, 11197), (11236, 11301), (11302, 11338), (11664, 11726), (11774, 11831), (11832, 11862), (12005, 12067), (12321, 12376), (12393, 12409), (12493, 12579), (12580, 12581), (13125, 13209), (13210, 13213), (13254, 13270), (13310, 13397), (13398, 13398), (13454, 13539), (13540, 13544), (13718, 13799), (13800, 13838), (13851, 13866), (13924, 13939), (14336, 14415), (14416, 14494), (14641, 14668), (14792, 14827), (15123, 15209), (15210, 15217), (15360, 15447), (15448, 15467), (15979, 16061), (16062, 16067), (16384, 16425), (16428, 16472), (16810, 16875), (16876, 16898), (17303, 17386), (17408, 17489), (17490, 17493), (17496, 17496), (17576, 17584), (18490, 18569), (18570, 18578), (18634, 18693), (18750, 18811), (19208, 19254), (19663, 19749), (19750, 19751), (19965, 19969), (20172, 20249), (20250, 20252), (20535, 20568), (20577, 20623), (21316, 21384), (21870, 21951), (21952, 21963), (21970, 21992), (22472, 22557), (22558, 22560), (24010, 24095), (24096, 24125), (24334, 24417), (24418, 24455), (24576, 24659), (24660, 24664), (25000, 25052), (25215, 25277), (25278, 25349), (25350, 25369), (26047, 26099), (26411, 26452), (26645, 26712), (26934, 26984), (28125, 28178), (28577, 28649), (28717, 28760), (29791, 29856), (30258, 30334), (30758, 30808), (30926, 30987), (31213, 31281), (31282, 31301), (31329, 31338), (32805, 32856), (34375, 34383), (34391, 34469), (34470, 34479), (35344, 35375), (36517, 36585), (36586, 36589), (37500, 37534), (39326, 39411), (39412, 39414), (40401, 40416), (40960, 41019), (43750, 43775), (44944, 44978), (48013, 48049), (48734, 48756), (48778, 48822), (49152, 49218), (50000, 50016), (50421, 50498), (53290, 53336), (58619, 58652), (59582, 59624), (63948, 63957), (65536, 65609), (65610, 65624), (68651, 68678), (68921, 68978), (73205, 73255), (137842, 137869), (146410, 146422), (148955, 148965)]

theorem row089_bounds_eq : row089.goods.map goodSegmentBounds = row089_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row089_layer000_intervals : List ColouredInterval :=
  [(2, 8192, 8280), (2, 8704, 8792), (2, 9216, 9304), (2, 9728, 9816), (2, 10240, 10328), (2, 10752, 10840), (2, 11264, 11352), (2, 11776, 11864), (2, 8192, 8280), (2, 9216, 9304), (2, 10240, 10328), (2, 11264, 11352), (2, 12288, 12376), (2, 13312, 13400), (2, 14336, 14424), (2, 15360, 15448), (2, 8192, 8280), (2, 10240, 10328), (2, 12288, 12376), (2, 14336, 14424), (2, 8192, 8280), (2, 12288, 12376), (2, 8192, 8280), (3, 8019, 8107), (3, 8748, 8836), (3, 9477, 9565), (3, 10206, 10294), (3, 10935, 11023), (3, 11664, 11752), (3, 12393, 12481), (3, 13122, 13210), (3, 13851, 13939), (3, 14580, 14668), (3, 15309, 15397), (3, 8748, 8836), (3, 10935, 11023), (3, 13122, 13210), (3, 15309, 15397), (3, 13122, 13210), (5, 8125, 8213), (5, 8750, 8838), (5, 9375, 9463), (5, 10000, 10088), (5, 10625, 10713), (5, 11250, 11338), (5, 11875, 11963), (5, 12500, 12588), (5, 13125, 13213), (5, 13750, 13838), (5, 14375, 14463), (5, 9375, 9463), (5, 12500, 12588), (5, 15625, 15663), (5, 15625, 15663), (7, 7889, 7977), (7, 9604, 9692), (7, 12005, 12093), (7, 14406, 14494), (11, 7986, 8074), (11, 9317, 9405), (11, 10648, 10736), (11, 11979, 12067), (11, 13310, 13398), (11, 14641, 14729), (11, 14641, 14729), (13, 8788, 8876), (13, 10985, 11073), (13, 13182, 13270), (13, 15379, 15467), (17, 9826, 9914), (17, 14739, 14827), (19, 7942, 8030), (19, 8303, 8391), (19, 13718, 13806), (23, 7935, 8023), (23, 8464, 8552), (23, 8993, 9081), (23, 9522, 9610), (23, 10051, 10139), (23, 10580, 10668), (23, 11109, 11197), (23, 11638, 11726), (23, 12167, 12255), (23, 12167, 12255), (29, 8410, 8498), (29, 9251, 9339), (29, 10092, 10180), (29, 10933, 11021), (29, 11774, 11862), (29, 12615, 12703), (29, 13456, 13544), (29, 14297, 14385), (29, 15138, 15226), (31, 8649, 8737), (31, 9610, 9698), (31, 10571, 10659), (31, 11532, 11620), (31, 12493, 12581), (31, 13454, 13542), (31, 14415, 14503), (31, 15376, 15464), (37, 8214, 8302), (37, 9583, 9671), (37, 10952, 11040), (37, 12321, 12409), (37, 13690, 13778), (37, 15059, 15147), (41, 8405, 8493), (41, 10086, 10174), (41, 11767, 11855), (41, 13448, 13536), (41, 15129, 15217), (43, 9245, 9333), (43, 11094, 11182), (43, 12943, 13031), (43, 14792, 14880), (47, 8836, 8924), (47, 11045, 11133), (47, 13254, 13342), (47, 15463, 15551), (53, 8427, 8515), (53, 11236, 11324), (53, 14045, 14133), (59, 10443, 10531), (59, 13924, 14012), (61, 11163, 11251), (61, 14884, 14972), (67, 8978, 9066), (67, 13467, 13555), (71, 10082, 10170), (71, 15123, 15211), (73, 10658, 10746), (79, 12482, 12570), (83, 13778, 13866)]

def row089_layer000_block000 : List ColouredInterval :=
  [(2, 8192, 8280), (2, 8704, 8792), (2, 9216, 9304), (2, 9728, 9816), (2, 10240, 10328), (2, 10752, 10840), (2, 11264, 11352), (2, 11776, 11864), (2, 8192, 8280), (2, 9216, 9304), (2, 10240, 10328), (2, 11264, 11352), (2, 12288, 12376), (2, 13312, 13400), (2, 14336, 14424)]

def row089_layer000_block001 : List ColouredInterval :=
  [(2, 15360, 15448), (2, 8192, 8280), (2, 10240, 10328), (2, 12288, 12376), (2, 14336, 14424), (2, 8192, 8280), (2, 12288, 12376), (2, 8192, 8280), (3, 8019, 8107), (3, 8748, 8836), (3, 9477, 9565), (3, 10206, 10294), (3, 10935, 11023), (3, 11664, 11752), (3, 12393, 12481)]

def row089_layer000_block002 : List ColouredInterval :=
  [(3, 13122, 13210), (3, 13851, 13939), (3, 14580, 14668), (3, 15309, 15397), (3, 8748, 8836), (3, 10935, 11023), (3, 13122, 13210), (3, 15309, 15397), (3, 13122, 13210), (5, 8125, 8213), (5, 8750, 8838), (5, 9375, 9463), (5, 10000, 10088), (5, 10625, 10713), (5, 11250, 11338)]

def row089_layer000_block003 : List ColouredInterval :=
  [(5, 11875, 11963), (5, 12500, 12588), (5, 13125, 13213), (5, 13750, 13838), (5, 14375, 14463), (5, 9375, 9463), (5, 12500, 12588), (5, 15625, 15663), (5, 15625, 15663), (7, 7889, 7977), (7, 9604, 9692), (7, 12005, 12093), (7, 14406, 14494), (11, 7986, 8074), (11, 9317, 9405)]

def row089_layer000_block004 : List ColouredInterval :=
  [(11, 10648, 10736), (11, 11979, 12067), (11, 13310, 13398), (11, 14641, 14729), (11, 14641, 14729), (13, 8788, 8876), (13, 10985, 11073), (13, 13182, 13270), (13, 15379, 15467), (17, 9826, 9914), (17, 14739, 14827), (19, 7942, 8030), (19, 8303, 8391), (19, 13718, 13806), (23, 7935, 8023)]

def row089_layer000_block005 : List ColouredInterval :=
  [(23, 8464, 8552), (23, 8993, 9081), (23, 9522, 9610), (23, 10051, 10139), (23, 10580, 10668), (23, 11109, 11197), (23, 11638, 11726), (23, 12167, 12255), (23, 12167, 12255), (29, 8410, 8498), (29, 9251, 9339), (29, 10092, 10180), (29, 10933, 11021), (29, 11774, 11862), (29, 12615, 12703)]

def row089_layer000_block006 : List ColouredInterval :=
  [(29, 13456, 13544), (29, 14297, 14385), (29, 15138, 15226), (31, 8649, 8737), (31, 9610, 9698), (31, 10571, 10659), (31, 11532, 11620), (31, 12493, 12581), (31, 13454, 13542), (31, 14415, 14503), (31, 15376, 15464), (37, 8214, 8302), (37, 9583, 9671), (37, 10952, 11040), (37, 12321, 12409)]

def row089_layer000_block007 : List ColouredInterval :=
  [(37, 13690, 13778), (37, 15059, 15147), (41, 8405, 8493), (41, 10086, 10174), (41, 11767, 11855), (41, 13448, 13536), (41, 15129, 15217), (43, 9245, 9333), (43, 11094, 11182), (43, 12943, 13031), (43, 14792, 14880), (47, 8836, 8924), (47, 11045, 11133), (47, 13254, 13342), (47, 15463, 15551)]

def row089_layer000_block008 : List ColouredInterval :=
  [(53, 8427, 8515), (53, 11236, 11324), (53, 14045, 14133), (59, 10443, 10531), (59, 13924, 14012), (61, 11163, 11251), (61, 14884, 14972), (67, 8978, 9066), (67, 13467, 13555), (71, 10082, 10170), (71, 15123, 15211), (73, 10658, 10746), (79, 12482, 12570), (83, 13778, 13866)]

def row089_layer000_chunks : List (List ColouredInterval) :=
  [row089_layer000_block000, row089_layer000_block001, row089_layer000_block002, row089_layer000_block003, row089_layer000_block004, row089_layer000_block005, row089_layer000_block006, row089_layer000_block007, row089_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_arithmetic : LayerArithmeticValid row089.height { lower := 7832, upper := 15664, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_enumeration :
    activePowerIntervalList 89 23 7832 15664 = row089_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs000 :
    row089_layer000_block000.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs001 :
    row089_layer000_block001.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs002 :
    row089_layer000_block002.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs003 :
    row089_layer000_block003.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs004 :
    row089_layer000_block004.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs005 :
    row089_layer000_block005.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs006 :
    row089_layer000_block006.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs007 :
    row089_layer000_block007.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_pairs008 :
    row089_layer000_block008.all (fun I => row089_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row089_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row089_layer000_chunks_eq : row089_layer000_chunks.flatten = row089_layer000_intervals := by
  rfl

theorem row089_layer000_pairs : pairCoverCheck row089_layer000_intervals row089_bounds = true := by
  apply pairCoverCheck_of_chunks row089_layer000_chunks_eq
  intro block hblock
  simp only [row089_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row089_layer000_pairs000
  · exact row089_layer000_pairs001
  · exact row089_layer000_pairs002
  · exact row089_layer000_pairs003
  · exact row089_layer000_pairs004
  · exact row089_layer000_pairs005
  · exact row089_layer000_pairs006
  · exact row089_layer000_pairs007
  · exact row089_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row089_layer000_pairs
