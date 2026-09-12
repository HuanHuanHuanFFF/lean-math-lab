import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row090B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_good240_checked :
    goodSegmentCheck 90 29 62
      { lower := 102973, upper := 102974, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good241_checked :
    goodSegmentCheck 90 29 62
      { lower := 117128, upper := 117202, witness := RowWitness.topPrime 117127 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good242_checked :
    goodSegmentCheck 90 29 62
      { lower := 146410, upper := 146423, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good243_checked :
    goodSegmentCheck 90 29 62
      { lower := 148955, upper := 148966, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row090_good244_checked :
    goodSegmentCheck 90 29 62
      { lower := 327701, upper := 327769, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 90) (r := 29) (s := 62) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_good244_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_goods_checked :
    row090.goods.all (goodSegmentCheck row090.height.i row090.height.r row090.height.s) = true := by
  change row090_goods.all (goodSegmentCheck 90 29 62) = true
  simp only [row090_goods, List.all_cons, List.all_nil,
    row090_good000_checked,
    row090_good001_checked,
    row090_good002_checked,
    row090_good003_checked,
    row090_good004_checked,
    row090_good005_checked,
    row090_good006_checked,
    row090_good007_checked,
    row090_good008_checked,
    row090_good009_checked,
    row090_good010_checked,
    row090_good011_checked,
    row090_good012_checked,
    row090_good013_checked,
    row090_good014_checked,
    row090_good015_checked,
    row090_good016_checked,
    row090_good017_checked,
    row090_good018_checked,
    row090_good019_checked,
    row090_good020_checked,
    row090_good021_checked,
    row090_good022_checked,
    row090_good023_checked,
    row090_good024_checked,
    row090_good025_checked,
    row090_good026_checked,
    row090_good027_checked,
    row090_good028_checked,
    row090_good029_checked,
    row090_good030_checked,
    row090_good031_checked,
    row090_good032_checked,
    row090_good033_checked,
    row090_good034_checked,
    row090_good035_checked,
    row090_good036_checked,
    row090_good037_checked,
    row090_good038_checked,
    row090_good039_checked,
    row090_good040_checked,
    row090_good041_checked,
    row090_good042_checked,
    row090_good043_checked,
    row090_good044_checked,
    row090_good045_checked,
    row090_good046_checked,
    row090_good047_checked,
    row090_good048_checked,
    row090_good049_checked,
    row090_good050_checked,
    row090_good051_checked,
    row090_good052_checked,
    row090_good053_checked,
    row090_good054_checked,
    row090_good055_checked,
    row090_good056_checked,
    row090_good057_checked,
    row090_good058_checked,
    row090_good059_checked,
    row090_good060_checked,
    row090_good061_checked,
    row090_good062_checked,
    row090_good063_checked,
    row090_good064_checked,
    row090_good065_checked,
    row090_good066_checked,
    row090_good067_checked,
    row090_good068_checked,
    row090_good069_checked,
    row090_good070_checked,
    row090_good071_checked,
    row090_good072_checked,
    row090_good073_checked,
    row090_good074_checked,
    row090_good075_checked,
    row090_good076_checked,
    row090_good077_checked,
    row090_good078_checked,
    row090_good079_checked,
    row090_good080_checked,
    row090_good081_checked,
    row090_good082_checked,
    row090_good083_checked,
    row090_good084_checked,
    row090_good085_checked,
    row090_good086_checked,
    row090_good087_checked,
    row090_good088_checked,
    row090_good089_checked,
    row090_good090_checked,
    row090_good091_checked,
    row090_good092_checked,
    row090_good093_checked,
    row090_good094_checked,
    row090_good095_checked,
    row090_good096_checked,
    row090_good097_checked,
    row090_good098_checked,
    row090_good099_checked,
    row090_good100_checked,
    row090_good101_checked,
    row090_good102_checked,
    row090_good103_checked,
    row090_good104_checked,
    row090_good105_checked,
    row090_good106_checked,
    row090_good107_checked,
    row090_good108_checked,
    row090_good109_checked,
    row090_good110_checked,
    row090_good111_checked,
    row090_good112_checked,
    row090_good113_checked,
    row090_good114_checked,
    row090_good115_checked,
    row090_good116_checked,
    row090_good117_checked,
    row090_good118_checked,
    row090_good119_checked,
    row090_good120_checked,
    row090_good121_checked,
    row090_good122_checked,
    row090_good123_checked,
    row090_good124_checked,
    row090_good125_checked,
    row090_good126_checked,
    row090_good127_checked,
    row090_good128_checked,
    row090_good129_checked,
    row090_good130_checked,
    row090_good131_checked,
    row090_good132_checked,
    row090_good133_checked,
    row090_good134_checked,
    row090_good135_checked,
    row090_good136_checked,
    row090_good137_checked,
    row090_good138_checked,
    row090_good139_checked,
    row090_good140_checked,
    row090_good141_checked,
    row090_good142_checked,
    row090_good143_checked,
    row090_good144_checked,
    row090_good145_checked,
    row090_good146_checked,
    row090_good147_checked,
    row090_good148_checked,
    row090_good149_checked,
    row090_good150_checked,
    row090_good151_checked,
    row090_good152_checked,
    row090_good153_checked,
    row090_good154_checked,
    row090_good155_checked,
    row090_good156_checked,
    row090_good157_checked,
    row090_good158_checked,
    row090_good159_checked,
    row090_good160_checked,
    row090_good161_checked,
    row090_good162_checked,
    row090_good163_checked,
    row090_good164_checked,
    row090_good165_checked,
    row090_good166_checked,
    row090_good167_checked,
    row090_good168_checked,
    row090_good169_checked,
    row090_good170_checked,
    row090_good171_checked,
    row090_good172_checked,
    row090_good173_checked,
    row090_good174_checked,
    row090_good175_checked,
    row090_good176_checked,
    row090_good177_checked,
    row090_good178_checked,
    row090_good179_checked,
    row090_good180_checked,
    row090_good181_checked,
    row090_good182_checked,
    row090_good183_checked,
    row090_good184_checked,
    row090_good185_checked,
    row090_good186_checked,
    row090_good187_checked,
    row090_good188_checked,
    row090_good189_checked,
    row090_good190_checked,
    row090_good191_checked,
    row090_good192_checked,
    row090_good193_checked,
    row090_good194_checked,
    row090_good195_checked,
    row090_good196_checked,
    row090_good197_checked,
    row090_good198_checked,
    row090_good199_checked,
    row090_good200_checked,
    row090_good201_checked,
    row090_good202_checked,
    row090_good203_checked,
    row090_good204_checked,
    row090_good205_checked,
    row090_good206_checked,
    row090_good207_checked,
    row090_good208_checked,
    row090_good209_checked,
    row090_good210_checked,
    row090_good211_checked,
    row090_good212_checked,
    row090_good213_checked,
    row090_good214_checked,
    row090_good215_checked,
    row090_good216_checked,
    row090_good217_checked,
    row090_good218_checked,
    row090_good219_checked,
    row090_good220_checked,
    row090_good221_checked,
    row090_good222_checked,
    row090_good223_checked,
    row090_good224_checked,
    row090_good225_checked,
    row090_good226_checked,
    row090_good227_checked,
    row090_good228_checked,
    row090_good229_checked,
    row090_good230_checked,
    row090_good231_checked,
    row090_good232_checked,
    row090_good233_checked,
    row090_good234_checked,
    row090_good235_checked,
    row090_good236_checked,
    row090_good237_checked,
    row090_good238_checked,
    row090_good239_checked,
    row090_good240_checked,
    row090_good241_checked,
    row090_good242_checked,
    row090_good243_checked,
    row090_good244_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_registered :
    decide (row090.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row090_small_checked :
    coverCheck (2 * row090.height.i + 2) (row090.height.i * (row090.height.i - 1) - 1)
      (row090.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row090_layerCover_checked :
    coverCheck (row090.height.i * (row090.height.i - 1)) (row090.height.n0 - 1)
      (row090.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row090_bounds : List NatInterval :=
  [(182, 270), (271, 360), (361, 448), (449, 538), (539, 612), (613, 702), (703, 790), (791, 876), (877, 966), (967, 1056), (1057, 1140), (1141, 1218), (1219, 1306), (1307, 1396), (1397, 1470), (1471, 1560), (1561, 1648), (1649, 1726), (1727, 1812), (1813, 1900), (1901, 1990), (1991, 2076), (2077, 2158), (2159, 2242), (2243, 2332), (2333, 2422), (2423, 2512), (2513, 2592), (2593, 2682), (2683, 2772), (2773, 2856), (2857, 2946), (2947, 3028), (3029, 3112), (3113, 3198), (3199, 3280), (3281, 3360), (3361, 3450), (3451, 3538), (3539, 3628), (3629, 3712), (3713, 3798), (3799, 3886), (3887, 3970), (3971, 4056), (4057, 4146), (4147, 4228), (4229, 4318), (4319, 4386), (4387, 4462), (4463, 4552), (4553, 4638), (4639, 4728), (4729, 4818), (4819, 4906), (4907, 4992), (4993, 5082), (5083, 5170), (5171, 5260), (5261, 5350), (5351, 5440), (5441, 5530), (5531, 5620), (5621, 5680), (5681, 5758), (5759, 5838), (5839, 5928), (5929, 6016), (6017, 6100), (6101, 6190), (6191, 6262), (6263, 6352), (6353, 6442), (6443, 6516), (6517, 6580), (6581, 6670), (6671, 6750), (6751, 6826), (6827, 6916), (6917, 7006), (7007, 7090), (7091, 7168), (7169, 7248), (7249, 7336), (7337, 7422), (7423, 7506), (7507, 7596), (7597, 7680), (7681, 7770), (7771, 7848), (7849, 7930), (7931, 8016), (8017, 8031), (8214, 8298), (8299, 8321), (8410, 8478), (8479, 8516), (8649, 8736), (8737, 8738), (8836, 8877), (8918, 8925), (8978, 9060), (9061, 9082), (9245, 9330), (9331, 9350), (9375, 9460), (9461, 9464), (9583, 9640), (9641, 9693), (9826, 9836), (10082, 10168), (10169, 10181), (10580, 10656), (10657, 10737), (10952, 11038), (11039, 11041), (11045, 11074), (11094, 11182), (11183, 11198), (11236, 11252), (11264, 11325), (11774, 11832), (11833, 11856), (12005, 12068), (12321, 12377), (12493, 12580), (12581, 12582), (12696, 12704), (13182, 13211), (13225, 13308), (13309, 13398), (13399, 13399), (13454, 13540), (13541, 13545), (13718, 13800), (13801, 13843), (14297, 14382), (14383, 14386), (14406, 14490), (14491, 14495), (14792, 14872), (14873, 14881), (14884, 14901), (15123, 15210), (15211, 15218), (15379, 15466), (15467, 15468), (15979, 16062), (16063, 16068), (16384, 16426), (16428, 16473), (16810, 16876), (16877, 16909), (17303, 17387), (17661, 17665), (17672, 17750), (18490, 18570), (18571, 18580), (18634, 18694), (18723, 18723), (19208, 19296), (19297, 19297), (19663, 19750), (19751, 19752), (19965, 19970), (20172, 20250), (20251, 20270), (20535, 20569), (20577, 20624), (21316, 21385), (21904, 21942), (21970, 21993), (22103, 22179), (22188, 22192), (22472, 22558), (22559, 22561), (24010, 24096), (24097, 24099), (24334, 24418), (24419, 24456), (24576, 24660), (24661, 24665), (25215, 25278), (25279, 25350), (25351, 25370), (26047, 26100), (26411, 26453), (26645, 26709), (26934, 26985), (27436, 27469), (28577, 28650), (28717, 28800), (28801, 28806), (28812, 28838), (29791, 29857), (30258, 30335), (30926, 30988), (31213, 31282), (31283, 31302), (31329, 31339), (31433, 31486), (31487, 31522), (31944, 31996), (31997, 32033), (33620, 33703), (33708, 33709), (34445, 34480), (35152, 35220), (35344, 35376), (36517, 36586), (36587, 36590), (37349, 37392), (39326, 39412), (39413, 39415), (39605, 39635), (40401, 40417), (40960, 41020), (41772, 41832), (43940, 44012), (44217, 44269), (44944, 44979), (48013, 48070), (48071, 48102), (48734, 48757), (48778, 48823), (49152, 49219), (50421, 50499), (53371, 53379), (55451, 55530), (55531, 55536), (56180, 56258), (58619, 58653), (59582, 59625), (63948, 63958), (65536, 65610), (65611, 65622), (68651, 68679), (68921, 68979), (73205, 73256), (85697, 85772), (102973, 102974), (117128, 117202), (146410, 146423), (148955, 148966), (327701, 327769)]

theorem row090_bounds_eq : row090.goods.map goodSegmentBounds = row090_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row090_layer000_intervals : List ColouredInterval :=
  [(2, 8192, 8281), (2, 9216, 9305), (2, 10240, 10329), (2, 11264, 11353), (2, 12288, 12377), (2, 13312, 13401), (2, 14336, 14425), (2, 8192, 8281), (2, 10240, 10329), (2, 12288, 12377), (2, 14336, 14425), (2, 8192, 8281), (2, 12288, 12377), (2, 8192, 8281), (3, 13122, 13211), (5, 9375, 9464), (5, 12500, 12589), (5, 15625, 15714), (5, 15625, 15714), (7, 8232, 8321), (7, 8575, 8664), (7, 8918, 9007), (7, 9261, 9350), (7, 9604, 9693), (7, 9604, 9693), (7, 12005, 12094), (7, 14406, 14495), (11, 8010, 8075), (11, 9317, 9406), (11, 10648, 10737), (11, 11979, 12068), (11, 13310, 13399), (11, 14641, 14730), (11, 15972, 16019), (11, 14641, 14730), (13, 8788, 8877), (13, 10985, 11074), (13, 13182, 13271), (13, 15379, 15468), (17, 8092, 8181), (17, 9826, 9915), (17, 14739, 14828), (19, 8010, 8031), (19, 8303, 8392), (19, 8664, 8753), (19, 9025, 9114), (19, 9386, 9475), (19, 9747, 9836), (19, 10108, 10197), (19, 13718, 13807), (23, 8010, 8024), (23, 8464, 8553), (23, 8993, 9082), (23, 9522, 9611), (23, 10051, 10140), (23, 10580, 10669), (23, 11109, 11198), (23, 11638, 11727), (23, 12167, 12256), (23, 12696, 12785), (23, 13225, 13314), (23, 13754, 13843), (23, 14283, 14372), (23, 14812, 14901), (23, 12167, 12256), (29, 8410, 8499), (29, 9251, 9340), (29, 10092, 10181), (29, 10933, 11022), (29, 11774, 11863), (29, 12615, 12704), (29, 13456, 13545), (29, 14297, 14386), (29, 15138, 15227), (29, 15979, 16019), (31, 8649, 8738), (31, 9610, 9699), (31, 10571, 10660), (31, 11532, 11621), (31, 12493, 12582), (31, 13454, 13543), (31, 14415, 14504), (31, 15376, 15465), (37, 8214, 8303), (37, 9583, 9672), (37, 10952, 11041), (37, 12321, 12410), (37, 13690, 13779), (37, 15059, 15148), (41, 8405, 8494), (41, 10086, 10175), (41, 11767, 11856), (41, 13448, 13537), (41, 15129, 15218), (43, 9245, 9334), (43, 11094, 11183), (43, 12943, 13032), (43, 14792, 14881), (47, 8836, 8925), (47, 11045, 11134), (47, 13254, 13343), (47, 15463, 15552), (53, 8427, 8516), (53, 11236, 11325), (53, 14045, 14134), (59, 10443, 10532), (59, 13924, 14013), (61, 11163, 11252), (61, 14884, 14973), (67, 8978, 9067), (67, 13467, 13556), (71, 10082, 10171), (71, 15123, 15212), (73, 10658, 10747), (73, 15987, 16019), (79, 12482, 12571), (83, 13778, 13867), (89, 8010, 8010), (89, 15842, 15931)]

def row090_layer000_block000 : List ColouredInterval :=
  [(2, 8192, 8281), (2, 9216, 9305), (2, 10240, 10329), (2, 11264, 11353), (2, 12288, 12377), (2, 13312, 13401), (2, 14336, 14425), (2, 8192, 8281), (2, 10240, 10329), (2, 12288, 12377), (2, 14336, 14425), (2, 8192, 8281), (2, 12288, 12377), (2, 8192, 8281), (3, 13122, 13211), (5, 9375, 9464)]

def row090_layer000_block001 : List ColouredInterval :=
  [(5, 12500, 12589), (5, 15625, 15714), (5, 15625, 15714), (7, 8232, 8321), (7, 8575, 8664), (7, 8918, 9007), (7, 9261, 9350), (7, 9604, 9693), (7, 9604, 9693), (7, 12005, 12094), (7, 14406, 14495), (11, 8010, 8075), (11, 9317, 9406), (11, 10648, 10737), (11, 11979, 12068), (11, 13310, 13399)]

def row090_layer000_block002 : List ColouredInterval :=
  [(11, 14641, 14730), (11, 15972, 16019), (11, 14641, 14730), (13, 8788, 8877), (13, 10985, 11074), (13, 13182, 13271), (13, 15379, 15468), (17, 8092, 8181), (17, 9826, 9915), (17, 14739, 14828), (19, 8010, 8031), (19, 8303, 8392), (19, 8664, 8753), (19, 9025, 9114), (19, 9386, 9475), (19, 9747, 9836)]

def row090_layer000_block003 : List ColouredInterval :=
  [(19, 10108, 10197), (19, 13718, 13807), (23, 8010, 8024), (23, 8464, 8553), (23, 8993, 9082), (23, 9522, 9611), (23, 10051, 10140), (23, 10580, 10669), (23, 11109, 11198), (23, 11638, 11727), (23, 12167, 12256), (23, 12696, 12785), (23, 13225, 13314), (23, 13754, 13843), (23, 14283, 14372), (23, 14812, 14901)]

def row090_layer000_block004 : List ColouredInterval :=
  [(23, 12167, 12256), (29, 8410, 8499), (29, 9251, 9340), (29, 10092, 10181), (29, 10933, 11022), (29, 11774, 11863), (29, 12615, 12704), (29, 13456, 13545), (29, 14297, 14386), (29, 15138, 15227), (29, 15979, 16019), (31, 8649, 8738), (31, 9610, 9699), (31, 10571, 10660), (31, 11532, 11621), (31, 12493, 12582)]

def row090_layer000_block005 : List ColouredInterval :=
  [(31, 13454, 13543), (31, 14415, 14504), (31, 15376, 15465), (37, 8214, 8303), (37, 9583, 9672), (37, 10952, 11041), (37, 12321, 12410), (37, 13690, 13779), (37, 15059, 15148), (41, 8405, 8494), (41, 10086, 10175), (41, 11767, 11856), (41, 13448, 13537), (41, 15129, 15218), (43, 9245, 9334), (43, 11094, 11183)]

def row090_layer000_block006 : List ColouredInterval :=
  [(43, 12943, 13032), (43, 14792, 14881), (47, 8836, 8925), (47, 11045, 11134), (47, 13254, 13343), (47, 15463, 15552), (53, 8427, 8516), (53, 11236, 11325), (53, 14045, 14134), (59, 10443, 10532), (59, 13924, 14013), (61, 11163, 11252), (61, 14884, 14973), (67, 8978, 9067), (67, 13467, 13556), (71, 10082, 10171)]

def row090_layer000_block007 : List ColouredInterval :=
  [(71, 15123, 15212), (73, 10658, 10747), (73, 15987, 16019), (79, 12482, 12571), (83, 13778, 13867), (89, 8010, 8010), (89, 15842, 15931)]

def row090_layer000_chunks : List (List ColouredInterval) :=
  [row090_layer000_block000, row090_layer000_block001, row090_layer000_block002, row090_layer000_block003, row090_layer000_block004, row090_layer000_block005, row090_layer000_block006, row090_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_arithmetic : LayerArithmeticValid row090.height { lower := 8010, upper := 16020, M := 28 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_enumeration :
    activePowerIntervalList 90 28 8010 16020 = row090_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs000 :
    row090_layer000_block000.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs001 :
    row090_layer000_block001.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs002 :
    row090_layer000_block002.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs003 :
    row090_layer000_block003.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs004 :
    row090_layer000_block004.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs005 :
    row090_layer000_block005.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs006 :
    row090_layer000_block006.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_pairs007 :
    row090_layer000_block007.all (fun I => row090_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row090_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row090_layer000_chunks_eq : row090_layer000_chunks.flatten = row090_layer000_intervals := by
  rfl

theorem row090_layer000_pairs : pairCoverCheck row090_layer000_intervals row090_bounds = true := by
  apply pairCoverCheck_of_chunks row090_layer000_chunks_eq
  intro block hblock
  simp only [row090_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row090_layer000_pairs000
  · exact row090_layer000_pairs001
  · exact row090_layer000_pairs002
  · exact row090_layer000_pairs003
  · exact row090_layer000_pairs004
  · exact row090_layer000_pairs005
  · exact row090_layer000_pairs006
  · exact row090_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row090_layer000_pairs
