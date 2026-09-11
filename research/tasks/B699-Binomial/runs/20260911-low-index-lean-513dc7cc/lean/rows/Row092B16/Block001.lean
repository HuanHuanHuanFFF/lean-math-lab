import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row092B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_goods_checked :
    row092.goods.all (goodSegmentCheck row092.height.i row092.height.r row092.height.s) = true := by
  change row092_goods.all (goodSegmentCheck 92 30 64) = true
  simp only [row092_goods, List.all_cons, List.all_nil,
    row092_good000_checked,
    row092_good001_checked,
    row092_good002_checked,
    row092_good003_checked,
    row092_good004_checked,
    row092_good005_checked,
    row092_good006_checked,
    row092_good007_checked,
    row092_good008_checked,
    row092_good009_checked,
    row092_good010_checked,
    row092_good011_checked,
    row092_good012_checked,
    row092_good013_checked,
    row092_good014_checked,
    row092_good015_checked,
    row092_good016_checked,
    row092_good017_checked,
    row092_good018_checked,
    row092_good019_checked,
    row092_good020_checked,
    row092_good021_checked,
    row092_good022_checked,
    row092_good023_checked,
    row092_good024_checked,
    row092_good025_checked,
    row092_good026_checked,
    row092_good027_checked,
    row092_good028_checked,
    row092_good029_checked,
    row092_good030_checked,
    row092_good031_checked,
    row092_good032_checked,
    row092_good033_checked,
    row092_good034_checked,
    row092_good035_checked,
    row092_good036_checked,
    row092_good037_checked,
    row092_good038_checked,
    row092_good039_checked,
    row092_good040_checked,
    row092_good041_checked,
    row092_good042_checked,
    row092_good043_checked,
    row092_good044_checked,
    row092_good045_checked,
    row092_good046_checked,
    row092_good047_checked,
    row092_good048_checked,
    row092_good049_checked,
    row092_good050_checked,
    row092_good051_checked,
    row092_good052_checked,
    row092_good053_checked,
    row092_good054_checked,
    row092_good055_checked,
    row092_good056_checked,
    row092_good057_checked,
    row092_good058_checked,
    row092_good059_checked,
    row092_good060_checked,
    row092_good061_checked,
    row092_good062_checked,
    row092_good063_checked,
    row092_good064_checked,
    row092_good065_checked,
    row092_good066_checked,
    row092_good067_checked,
    row092_good068_checked,
    row092_good069_checked,
    row092_good070_checked,
    row092_good071_checked,
    row092_good072_checked,
    row092_good073_checked,
    row092_good074_checked,
    row092_good075_checked,
    row092_good076_checked,
    row092_good077_checked,
    row092_good078_checked,
    row092_good079_checked,
    row092_good080_checked,
    row092_good081_checked,
    row092_good082_checked,
    row092_good083_checked,
    row092_good084_checked,
    row092_good085_checked,
    row092_good086_checked,
    row092_good087_checked,
    row092_good088_checked,
    row092_good089_checked,
    row092_good090_checked,
    row092_good091_checked,
    row092_good092_checked,
    row092_good093_checked,
    row092_good094_checked,
    row092_good095_checked,
    row092_good096_checked,
    row092_good097_checked,
    row092_good098_checked,
    row092_good099_checked,
    row092_good100_checked,
    row092_good101_checked,
    row092_good102_checked,
    row092_good103_checked,
    row092_good104_checked,
    row092_good105_checked,
    row092_good106_checked,
    row092_good107_checked,
    row092_good108_checked,
    row092_good109_checked,
    row092_good110_checked,
    row092_good111_checked,
    row092_good112_checked,
    row092_good113_checked,
    row092_good114_checked,
    row092_good115_checked,
    row092_good116_checked,
    row092_good117_checked,
    row092_good118_checked,
    row092_good119_checked,
    row092_good120_checked,
    row092_good121_checked,
    row092_good122_checked,
    row092_good123_checked,
    row092_good124_checked,
    row092_good125_checked,
    row092_good126_checked,
    row092_good127_checked,
    row092_good128_checked,
    row092_good129_checked,
    row092_good130_checked,
    row092_good131_checked,
    row092_good132_checked,
    row092_good133_checked,
    row092_good134_checked,
    row092_good135_checked,
    row092_good136_checked,
    row092_good137_checked,
    row092_good138_checked,
    row092_good139_checked,
    row092_good140_checked,
    row092_good141_checked,
    row092_good142_checked,
    row092_good143_checked,
    row092_good144_checked,
    row092_good145_checked,
    row092_good146_checked,
    row092_good147_checked,
    row092_good148_checked,
    row092_good149_checked,
    row092_good150_checked,
    row092_good151_checked,
    row092_good152_checked,
    row092_good153_checked,
    row092_good154_checked,
    row092_good155_checked,
    row092_good156_checked,
    row092_good157_checked,
    row092_good158_checked,
    row092_good159_checked,
    row092_good160_checked,
    row092_good161_checked,
    row092_good162_checked,
    row092_good163_checked,
    row092_good164_checked,
    row092_good165_checked,
    row092_good166_checked,
    row092_good167_checked,
    row092_good168_checked,
    row092_good169_checked,
    row092_good170_checked,
    row092_good171_checked,
    row092_good172_checked,
    row092_good173_checked,
    row092_good174_checked,
    row092_good175_checked,
    row092_good176_checked,
    row092_good177_checked,
    row092_good178_checked,
    row092_good179_checked,
    row092_good180_checked,
    row092_good181_checked,
    row092_good182_checked,
    row092_good183_checked,
    row092_good184_checked,
    row092_good185_checked,
    row092_good186_checked,
    row092_good187_checked,
    row092_good188_checked,
    row092_good189_checked,
    row092_good190_checked,
    row092_good191_checked,
    row092_good192_checked,
    row092_good193_checked,
    row092_good194_checked,
    row092_good195_checked,
    row092_good196_checked,
    row092_good197_checked,
    row092_good198_checked,
    row092_good199_checked,
    row092_good200_checked,
    row092_good201_checked,
    row092_good202_checked,
    row092_good203_checked,
    row092_good204_checked,
    row092_good205_checked,
    row092_good206_checked,
    row092_good207_checked,
    row092_good208_checked,
    row092_good209_checked,
    row092_good210_checked,
    row092_good211_checked,
    row092_good212_checked,
    row092_good213_checked,
    row092_good214_checked,
    row092_good215_checked,
    row092_good216_checked,
    row092_good217_checked,
    row092_good218_checked,
    row092_good219_checked,
    row092_good220_checked,
    row092_good221_checked,
    row092_good222_checked,
    row092_good223_checked,
    row092_good224_checked,
    row092_good225_checked,
    row092_good226_checked,
    row092_good227_checked,
    row092_good228_checked,
    row092_good229_checked,
    row092_good230_checked,
    row092_good231_checked,
    row092_good232_checked,
    row092_good233_checked,
    row092_good234_checked,
    row092_good235_checked,
    row092_good236_checked,
    row092_good237_checked,
    row092_good238_checked,
    row092_good239_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_registered :
    decide (row092.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row092_small_checked :
    coverCheck (2 * row092.height.i + 2) (row092.height.i * (row092.height.i - 1) - 1)
      (row092.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row092_layerCover_checked :
    coverCheck (row092.height.i * (row092.height.i - 1)) (row092.height.n0 - 1)
      (row092.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row092_bounds : List NatInterval :=
  [(186, 272), (273, 362), (363, 450), (451, 540), (541, 632), (633, 722), (723, 810), (811, 902), (903, 978), (979, 1068), (1069, 1160), (1161, 1244), (1245, 1328), (1329, 1418), (1419, 1500), (1501, 1590), (1591, 1674), (1675, 1760), (1761, 1850), (1851, 1938), (1939, 2024), (2025, 2108), (2109, 2190), (2191, 2270), (2271, 2360), (2361, 2448), (2449, 2538), (2539, 2630), (2631, 2712), (2713, 2804), (2805, 2894), (2895, 2978), (2979, 3062), (3063, 3152), (3153, 3228), (3229, 3320), (3321, 3410), (3411, 3498), (3499, 3590), (3591, 3674), (3675, 3764), (3765, 3852), (3853, 3944), (3945, 4034), (4035, 4118), (4119, 4202), (4203, 4292), (4293, 4380), (4381, 4464), (4465, 4554), (4555, 4640), (4641, 4730), (4731, 4820), (4821, 4908), (4909, 5000), (5001, 5090), (5091, 5178), (5179, 5270), (5271, 5352), (5353, 5442), (5443, 5534), (5535, 5622), (5623, 5714), (5715, 5802), (5803, 5892), (5893, 5972), (5973, 6044), (6045, 6134), (6135, 6224), (6225, 6312), (6313, 6402), (6403, 6488), (6489, 6572), (6573, 6662), (6663, 6752), (6753, 6828), (6829, 6920), (6921, 7008), (7009, 7092), (7093, 7170), (7171, 7250), (7251, 7338), (7339, 7424), (7425, 7508), (7509, 7598), (7599, 7682), (7683, 7772), (7773, 7850), (7851, 7932), (7933, 8024), (8025, 8108), (8109, 8192), (8193, 8282), (8283, 8364), (8365, 8371), (8410, 8480), (8481, 8501), (8649, 8738), (8739, 8740), (8748, 8838), (8839, 8879), (9025, 9069), (9251, 9332), (9333, 9342), (9375, 9408), (9604, 9692), (9693, 9695), (10082, 10170), (10171, 10177), (10240, 10297), (10625, 10704), (10705, 10739), (10935, 11000), (11001, 11043), (11045, 11076), (11094, 11136), (11163, 11185), (11236, 11304), (11305, 11327), (11774, 11834), (11835, 11858), (12005, 12070), (12321, 12379), (12393, 12412), (12482, 12484), (12493, 12582), (12583, 12584), (13125, 13212), (13213, 13216), (13254, 13273), (13310, 13345), (13454, 13542), (13543, 13547), (13718, 13802), (13803, 13841), (13851, 13869), (13924, 13942), (14375, 14388), (14406, 14492), (14493, 14497), (14641, 14671), (14792, 14830), (15059, 15091), (15123, 15212), (15213, 15220), (15376, 15464), (15465, 15470), (15979, 16064), (16065, 16078), (16384, 16472), (16473, 16475), (16810, 16878), (16879, 16911), (17303, 17389), (17496, 17496), (17576, 17587), (17661, 17667), (17672, 17752), (18491, 18572), (18573, 18581), (18634, 18696), (18723, 18725), (18750, 18814), (19208, 19298), (19299, 19299), (19663, 19752), (19753, 19754), (19773, 19774), (19965, 19972), (20172, 20252), (20253, 20263), (20535, 20571), (20577, 20626), (20667, 20668), (21316, 21387), (21870, 21954), (21955, 21966), (21970, 21995), (22472, 22536), (24010, 24098), (24099, 24128), (24367, 24450), (24451, 24458), (24576, 24662), (24663, 24667), (25000, 25055), (25215, 25280), (25281, 25352), (25353, 25372), (26047, 26102), (26411, 26455), (26645, 26711), (26934, 26987), (27436, 27471), (28125, 28181), (28577, 28652), (28749, 28808), (28812, 28840), (29791, 29859), (30258, 30337), (30926, 30990), (31213, 31284), (31285, 31304), (31329, 31341), (31433, 31488), (31489, 31514), (31974, 32030), (32805, 32859), (34375, 34386), (34391, 34472), (34473, 34482), (35344, 35378), (37210, 37270), (37349, 37394), (37500, 37537), (37553, 37591), (39326, 39414), (39415, 39417), (40401, 40419), (43750, 43778), (44944, 44981), (48013, 48052), (48778, 48825), (49152, 49221), (50000, 50019), (50421, 50501), (55451, 55532), (55533, 55538), (58619, 58655), (59582, 59627), (62500, 62501), (63948, 63960), (65536, 65612), (65613, 65627), (68651, 68681), (68921, 68981), (73205, 73258), (137842, 137872), (146410, 146425), (148955, 148968)]

theorem row092_bounds_eq : row092.goods.map goodSegmentBounds = row092_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row092_layer000_intervals : List ColouredInterval :=
  [(2, 10240, 10331), (2, 12288, 12379), (2, 12288, 12379), (2, 16384, 16475), (2, 16384, 16475), (2, 16384, 16475), (3, 8748, 8839), (3, 9477, 9568), (3, 10206, 10297), (3, 10935, 11026), (3, 11664, 11755), (3, 12393, 12484), (3, 13122, 13213), (3, 13851, 13942), (3, 14580, 14671), (3, 15309, 15400), (3, 16038, 16129), (3, 8748, 8839), (3, 10935, 11026), (3, 13122, 13213), (3, 15309, 15400), (3, 13122, 13213), (5, 8750, 8841), (5, 9375, 9466), (5, 10000, 10091), (5, 10625, 10716), (5, 11250, 11341), (5, 11875, 11966), (5, 12500, 12591), (5, 13125, 13216), (5, 13750, 13841), (5, 14375, 14466), (5, 15000, 15091), (5, 15625, 15716), (5, 9375, 9466), (5, 12500, 12591), (5, 15625, 15716), (5, 15625, 15716), (7, 8575, 8666), (7, 9604, 9695), (7, 12005, 12096), (7, 14406, 14497), (11, 9317, 9408), (11, 10648, 10739), (11, 11979, 12070), (11, 13310, 13401), (11, 14641, 14732), (11, 15972, 16063), (11, 14641, 14732), (13, 8788, 8879), (13, 10985, 11076), (13, 13182, 13273), (13, 15379, 15470), (17, 9826, 9917), (17, 14739, 14830), (19, 8372, 8394), (19, 8664, 8755), (19, 9025, 9116), (19, 13718, 13809), (23, 12167, 12258), (29, 8410, 8501), (29, 9251, 9342), (29, 10092, 10183), (29, 10933, 11024), (29, 11774, 11865), (29, 12615, 12706), (29, 13456, 13547), (29, 14297, 14388), (29, 15138, 15229), (29, 15979, 16070), (31, 8649, 8740), (31, 9610, 9701), (31, 10571, 10662), (31, 11532, 11623), (31, 12493, 12584), (31, 13454, 13545), (31, 14415, 14506), (31, 15376, 15467), (31, 16337, 16428), (37, 9583, 9674), (37, 10952, 11043), (37, 12321, 12412), (37, 13690, 13781), (37, 15059, 15150), (37, 16428, 16519), (41, 8405, 8496), (41, 10086, 10177), (41, 11767, 11858), (41, 13448, 13539), (41, 15129, 15220), (43, 9245, 9336), (43, 11094, 11185), (43, 12943, 13034), (43, 14792, 14883), (43, 16641, 16732), (47, 8836, 8927), (47, 11045, 11136), (47, 13254, 13345), (47, 15463, 15554), (53, 8427, 8518), (53, 11236, 11327), (53, 14045, 14136), (59, 10443, 10534), (59, 13924, 14015), (61, 11163, 11254), (61, 14884, 14975), (67, 8978, 9069), (67, 13467, 13558), (71, 10082, 10173), (71, 15123, 15214), (73, 10658, 10749), (73, 15987, 16078), (79, 12482, 12573), (83, 13778, 13869), (89, 15842, 15933)]

def row092_layer000_block000 : List ColouredInterval :=
  [(2, 10240, 10331), (2, 12288, 12379), (2, 12288, 12379), (2, 16384, 16475), (2, 16384, 16475), (2, 16384, 16475), (3, 8748, 8839), (3, 9477, 9568), (3, 10206, 10297), (3, 10935, 11026), (3, 11664, 11755), (3, 12393, 12484), (3, 13122, 13213), (3, 13851, 13942), (3, 14580, 14671), (3, 15309, 15400)]

def row092_layer000_block001 : List ColouredInterval :=
  [(3, 16038, 16129), (3, 8748, 8839), (3, 10935, 11026), (3, 13122, 13213), (3, 15309, 15400), (3, 13122, 13213), (5, 8750, 8841), (5, 9375, 9466), (5, 10000, 10091), (5, 10625, 10716), (5, 11250, 11341), (5, 11875, 11966), (5, 12500, 12591), (5, 13125, 13216), (5, 13750, 13841), (5, 14375, 14466)]

def row092_layer000_block002 : List ColouredInterval :=
  [(5, 15000, 15091), (5, 15625, 15716), (5, 9375, 9466), (5, 12500, 12591), (5, 15625, 15716), (5, 15625, 15716), (7, 8575, 8666), (7, 9604, 9695), (7, 12005, 12096), (7, 14406, 14497), (11, 9317, 9408), (11, 10648, 10739), (11, 11979, 12070), (11, 13310, 13401), (11, 14641, 14732), (11, 15972, 16063)]

def row092_layer000_block003 : List ColouredInterval :=
  [(11, 14641, 14732), (13, 8788, 8879), (13, 10985, 11076), (13, 13182, 13273), (13, 15379, 15470), (17, 9826, 9917), (17, 14739, 14830), (19, 8372, 8394), (19, 8664, 8755), (19, 9025, 9116), (19, 13718, 13809), (23, 12167, 12258), (29, 8410, 8501), (29, 9251, 9342), (29, 10092, 10183), (29, 10933, 11024)]

def row092_layer000_block004 : List ColouredInterval :=
  [(29, 11774, 11865), (29, 12615, 12706), (29, 13456, 13547), (29, 14297, 14388), (29, 15138, 15229), (29, 15979, 16070), (31, 8649, 8740), (31, 9610, 9701), (31, 10571, 10662), (31, 11532, 11623), (31, 12493, 12584), (31, 13454, 13545), (31, 14415, 14506), (31, 15376, 15467), (31, 16337, 16428), (37, 9583, 9674)]

def row092_layer000_block005 : List ColouredInterval :=
  [(37, 10952, 11043), (37, 12321, 12412), (37, 13690, 13781), (37, 15059, 15150), (37, 16428, 16519), (41, 8405, 8496), (41, 10086, 10177), (41, 11767, 11858), (41, 13448, 13539), (41, 15129, 15220), (43, 9245, 9336), (43, 11094, 11185), (43, 12943, 13034), (43, 14792, 14883), (43, 16641, 16732), (47, 8836, 8927)]

def row092_layer000_block006 : List ColouredInterval :=
  [(47, 11045, 11136), (47, 13254, 13345), (47, 15463, 15554), (53, 8427, 8518), (53, 11236, 11327), (53, 14045, 14136), (59, 10443, 10534), (59, 13924, 14015), (61, 11163, 11254), (61, 14884, 14975), (67, 8978, 9069), (67, 13467, 13558), (71, 10082, 10173), (71, 15123, 15214), (73, 10658, 10749), (73, 15987, 16078)]

def row092_layer000_block007 : List ColouredInterval :=
  [(79, 12482, 12573), (83, 13778, 13869), (89, 15842, 15933)]

def row092_layer000_chunks : List (List ColouredInterval) :=
  [row092_layer000_block000, row092_layer000_block001, row092_layer000_block002, row092_layer000_block003, row092_layer000_block004, row092_layer000_block005, row092_layer000_block006, row092_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_arithmetic : LayerArithmeticValid row092.height { lower := 8372, upper := 16744, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_enumeration :
    activePowerIntervalList 92 25 8372 16744 = row092_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs000 :
    row092_layer000_block000.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs001 :
    row092_layer000_block001.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs002 :
    row092_layer000_block002.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs003 :
    row092_layer000_block003.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs004 :
    row092_layer000_block004.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs005 :
    row092_layer000_block005.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs006 :
    row092_layer000_block006.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_pairs007 :
    row092_layer000_block007.all (fun I => row092_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row092_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_chunks_eq : row092_layer000_chunks.flatten = row092_layer000_intervals := by
  rfl

theorem row092_layer000_pairs : pairCoverCheck row092_layer000_intervals row092_bounds = true := by
  apply pairCoverCheck_of_chunks row092_layer000_chunks_eq
  intro block hblock
  simp only [row092_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row092_layer000_pairs000
  · exact row092_layer000_pairs001
  · exact row092_layer000_pairs002
  · exact row092_layer000_pairs003
  · exact row092_layer000_pairs004
  · exact row092_layer000_pairs005
  · exact row092_layer000_pairs006
  · exact row092_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row092_layer000_checked :
    coverLayerCheck row092.height row092.goods { lower := 8372, upper := 16744, M := 25 } = true := by
  exact coverLayerCheck_of_parts row092_layer000_arithmetic row092_layer000_enumeration row092_bounds_eq row092_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row092_layer000_checked
