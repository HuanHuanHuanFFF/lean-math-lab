import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row098B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_goods_checked :
    row098.goods.all (goodSegmentCheck row098.height.i row098.height.r row098.height.s) = true := by
  change row098_goods.all (goodSegmentCheck 98 32 68) = true
  simp only [row098_goods, List.all_cons, List.all_nil,
    row098_good000_checked,
    row098_good001_checked,
    row098_good002_checked,
    row098_good003_checked,
    row098_good004_checked,
    row098_good005_checked,
    row098_good006_checked,
    row098_good007_checked,
    row098_good008_checked,
    row098_good009_checked,
    row098_good010_checked,
    row098_good011_checked,
    row098_good012_checked,
    row098_good013_checked,
    row098_good014_checked,
    row098_good015_checked,
    row098_good016_checked,
    row098_good017_checked,
    row098_good018_checked,
    row098_good019_checked,
    row098_good020_checked,
    row098_good021_checked,
    row098_good022_checked,
    row098_good023_checked,
    row098_good024_checked,
    row098_good025_checked,
    row098_good026_checked,
    row098_good027_checked,
    row098_good028_checked,
    row098_good029_checked,
    row098_good030_checked,
    row098_good031_checked,
    row098_good032_checked,
    row098_good033_checked,
    row098_good034_checked,
    row098_good035_checked,
    row098_good036_checked,
    row098_good037_checked,
    row098_good038_checked,
    row098_good039_checked,
    row098_good040_checked,
    row098_good041_checked,
    row098_good042_checked,
    row098_good043_checked,
    row098_good044_checked,
    row098_good045_checked,
    row098_good046_checked,
    row098_good047_checked,
    row098_good048_checked,
    row098_good049_checked,
    row098_good050_checked,
    row098_good051_checked,
    row098_good052_checked,
    row098_good053_checked,
    row098_good054_checked,
    row098_good055_checked,
    row098_good056_checked,
    row098_good057_checked,
    row098_good058_checked,
    row098_good059_checked,
    row098_good060_checked,
    row098_good061_checked,
    row098_good062_checked,
    row098_good063_checked,
    row098_good064_checked,
    row098_good065_checked,
    row098_good066_checked,
    row098_good067_checked,
    row098_good068_checked,
    row098_good069_checked,
    row098_good070_checked,
    row098_good071_checked,
    row098_good072_checked,
    row098_good073_checked,
    row098_good074_checked,
    row098_good075_checked,
    row098_good076_checked,
    row098_good077_checked,
    row098_good078_checked,
    row098_good079_checked,
    row098_good080_checked,
    row098_good081_checked,
    row098_good082_checked,
    row098_good083_checked,
    row098_good084_checked,
    row098_good085_checked,
    row098_good086_checked,
    row098_good087_checked,
    row098_good088_checked,
    row098_good089_checked,
    row098_good090_checked,
    row098_good091_checked,
    row098_good092_checked,
    row098_good093_checked,
    row098_good094_checked,
    row098_good095_checked,
    row098_good096_checked,
    row098_good097_checked,
    row098_good098_checked,
    row098_good099_checked,
    row098_good100_checked,
    row098_good101_checked,
    row098_good102_checked,
    row098_good103_checked,
    row098_good104_checked,
    row098_good105_checked,
    row098_good106_checked,
    row098_good107_checked,
    row098_good108_checked,
    row098_good109_checked,
    row098_good110_checked,
    row098_good111_checked,
    row098_good112_checked,
    row098_good113_checked,
    row098_good114_checked,
    row098_good115_checked,
    row098_good116_checked,
    row098_good117_checked,
    row098_good118_checked,
    row098_good119_checked,
    row098_good120_checked,
    row098_good121_checked,
    row098_good122_checked,
    row098_good123_checked,
    row098_good124_checked,
    row098_good125_checked,
    row098_good126_checked,
    row098_good127_checked,
    row098_good128_checked,
    row098_good129_checked,
    row098_good130_checked,
    row098_good131_checked,
    row098_good132_checked,
    row098_good133_checked,
    row098_good134_checked,
    row098_good135_checked,
    row098_good136_checked,
    row098_good137_checked,
    row098_good138_checked,
    row098_good139_checked,
    row098_good140_checked,
    row098_good141_checked,
    row098_good142_checked,
    row098_good143_checked,
    row098_good144_checked,
    row098_good145_checked,
    row098_good146_checked,
    row098_good147_checked,
    row098_good148_checked,
    row098_good149_checked,
    row098_good150_checked,
    row098_good151_checked,
    row098_good152_checked,
    row098_good153_checked,
    row098_good154_checked,
    row098_good155_checked,
    row098_good156_checked,
    row098_good157_checked,
    row098_good158_checked,
    row098_good159_checked,
    row098_good160_checked,
    row098_good161_checked,
    row098_good162_checked,
    row098_good163_checked,
    row098_good164_checked,
    row098_good165_checked,
    row098_good166_checked,
    row098_good167_checked,
    row098_good168_checked,
    row098_good169_checked,
    row098_good170_checked,
    row098_good171_checked,
    row098_good172_checked,
    row098_good173_checked,
    row098_good174_checked,
    row098_good175_checked,
    row098_good176_checked,
    row098_good177_checked,
    row098_good178_checked,
    row098_good179_checked,
    row098_good180_checked,
    row098_good181_checked,
    row098_good182_checked,
    row098_good183_checked,
    row098_good184_checked,
    row098_good185_checked,
    row098_good186_checked,
    row098_good187_checked,
    row098_good188_checked,
    row098_good189_checked,
    row098_good190_checked,
    row098_good191_checked,
    row098_good192_checked,
    row098_good193_checked,
    row098_good194_checked,
    row098_good195_checked,
    row098_good196_checked,
    row098_good197_checked,
    row098_good198_checked,
    row098_good199_checked,
    row098_good200_checked,
    row098_good201_checked,
    row098_good202_checked,
    row098_good203_checked,
    row098_good204_checked,
    row098_good205_checked,
    row098_good206_checked,
    row098_good207_checked,
    row098_good208_checked,
    row098_good209_checked,
    row098_good210_checked,
    row098_good211_checked,
    row098_good212_checked,
    row098_good213_checked,
    row098_good214_checked,
    row098_good215_checked,
    row098_good216_checked,
    row098_good217_checked,
    row098_good218_checked,
    row098_good219_checked,
    row098_good220_checked,
    row098_good221_checked,
    row098_good222_checked,
    row098_good223_checked,
    row098_good224_checked,
    row098_good225_checked,
    row098_good226_checked,
    row098_good227_checked,
    row098_good228_checked,
    row098_good229_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_registered :
    decide (row098.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row098_small_checked :
    coverCheck (2 * row098.height.i + 2) (row098.height.i * (row098.height.i - 1) - 1)
      (row098.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row098_layerCover_checked :
    coverCheck (row098.height.i * (row098.height.i - 1)) (row098.height.n0 - 1)
      (row098.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row098_bounds : List NatInterval :=
  [(198, 294), (295, 390), (391, 486), (487, 584), (585, 674), (675, 770), (771, 866), (867, 960), (961, 1050), (1051, 1148), (1149, 1226), (1227, 1320), (1321, 1418), (1419, 1506), (1507, 1596), (1597, 1694), (1695, 1790), (1791, 1886), (1887, 1976), (1977, 2070), (2071, 2166), (2167, 2258), (2259, 2348), (2349, 2444), (2445, 2538), (2539, 2636), (2637, 2730), (2731, 2828), (2829, 2916), (2917, 3014), (3015, 3108), (3109, 3206), (3207, 3300), (3301, 3398), (3399, 3488), (3489, 3566), (3567, 3656), (3657, 3740), (3741, 3836), (3837, 3930), (3931, 4028), (4029, 4124), (4125, 4208), (4209, 4298), (4299, 4394), (4395, 4488), (4489, 4580), (4581, 4664), (4665, 4760), (4761, 4856), (4857, 4928), (4929, 5016), (5017, 5108), (5109, 5204), (5205, 5294), (5295, 5378), (5379, 5448), (5449, 5546), (5547, 5628), (5629, 5720), (5721, 5814), (5815, 5910), (5911, 6000), (6001, 6084), (6085, 6176), (6177, 6270), (6271, 6368), (6369, 6464), (6465, 6548), (6549, 6644), (6645, 6734), (6735, 6830), (6831, 6926), (6927, 7014), (7015, 7110), (7111, 7206), (7207, 7304), (7305, 7394), (7395, 7490), (7491, 7586), (7587, 7680), (7681, 7778), (7779, 7856), (7857, 7950), (7951, 8048), (8049, 8136), (8137, 8220), (8221, 8318), (8319, 8414), (8415, 8486), (8487, 8564), (8565, 8660), (8661, 8744), (8745, 8838), (8839, 8936), (8937, 9030), (9031, 9126), (9127, 9224), (9225, 9318), (9319, 9416), (9417, 9506), (9522, 9574), (9583, 9648), (9649, 9680), (10051, 10136), (10137, 10183), (10240, 10303), (10580, 10664), (10665, 10745), (10935, 11006), (11007, 11082), (11094, 11190), (11191, 11206), (11236, 11310), (11311, 11347), (11664, 11735), (11774, 11840), (11841, 11864), (12321, 12385), (12393, 12418), (12482, 12490), (12493, 12588), (12589, 12590), (13125, 13218), (13219, 13222), (13254, 13279), (13310, 13351), (13454, 13548), (13549, 13553), (13718, 13808), (13809, 13847), (13851, 13875), (13924, 13948), (14336, 14424), (14425, 14472), (14641, 14677), (14792, 14836), (14884, 14889), (15123, 15218), (15219, 15226), (15376, 15470), (15471, 15476), (15979, 16070), (16071, 16084), (16384, 16478), (16479, 16481), (16810, 16884), (16885, 16917), (17303, 17395), (17496, 17502), (17576, 17593), (17661, 17756), (17757, 17758), (18490, 18578), (18579, 18588), (18634, 18702), (18723, 18731), (18750, 18846), (18847, 18847), (19663, 19758), (19759, 19760), (19773, 19780), (19965, 19978), (20172, 20258), (20259, 20261), (20535, 20630), (20631, 20632), (20667, 20674), (21316, 21393), (21870, 21960), (21961, 22001), (22472, 22542), (24037, 24055), (24057, 24134), (24334, 24426), (24427, 24464), (24576, 24668), (24669, 24673), (25000, 25061), (25215, 25286), (25287, 25312), (26934, 26993), (28125, 28187), (28577, 28658), (28672, 28674), (28717, 28769), (29791, 29865), (30258, 30343), (30926, 30996), (31250, 31302), (31329, 31347), (31423, 31426), (31433, 31494), (31495, 31520), (32805, 32865), (34375, 34466), (34467, 34488), (35344, 35384), (36517, 36594), (36595, 36598), (37210, 37276), (37303, 37307), (37349, 37400), (37446, 37446), (37500, 37543), (37553, 37597), (37636, 37650), (39326, 39420), (39421, 39423), (40401, 40425), (40960, 41028), (43750, 43784), (48013, 48058), (48734, 48765), (48778, 48831), (49152, 49227), (55451, 55538), (55539, 55544), (58619, 58661), (59049, 59053), (62500, 62507), (63948, 63966), (65536, 65618), (65619, 65633), (68651, 68687), (68921, 68987), (73205, 73264), (137842, 137878), (146410, 146431), (148955, 148974)]

theorem row098_bounds_eq : row098.goods.map goodSegmentBounds = row098_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row098_layer000_intervals : List ColouredInterval :=
  [(2, 10240, 10337), (2, 11264, 11361), (2, 10240, 10337), (2, 12288, 12385), (2, 14336, 14433), (2, 16384, 16481), (2, 18432, 18529), (2, 12288, 12385), (2, 16384, 16481), (2, 16384, 16481), (2, 16384, 16481), (3, 9506, 9574), (3, 10206, 10303), (3, 10935, 11032), (3, 11664, 11761), (3, 12393, 12490), (3, 13122, 13219), (3, 13851, 13948), (3, 14580, 14677), (3, 15309, 15406), (3, 16038, 16135), (3, 16767, 16864), (3, 10935, 11032), (3, 13122, 13219), (3, 15309, 15406), (3, 17496, 17593), (3, 13122, 13219), (5, 10000, 10097), (5, 10625, 10722), (5, 11250, 11347), (5, 11875, 11972), (5, 12500, 12597), (5, 13125, 13222), (5, 13750, 13847), (5, 14375, 14472), (5, 12500, 12597), (5, 15625, 15722), (5, 18750, 18847), (5, 15625, 15722), (11, 10648, 10745), (11, 11979, 12076), (11, 13310, 13407), (11, 14641, 14738), (11, 15972, 16069), (11, 17303, 17400), (11, 18634, 18731), (11, 14641, 14738), (13, 10985, 11082), (13, 13182, 13279), (13, 15379, 15476), (13, 17576, 17673), (17, 9826, 9923), (17, 14739, 14836), (19, 13718, 13815), (23, 9522, 9619), (23, 10051, 10148), (23, 10580, 10677), (23, 11109, 11206), (23, 11638, 11735), (23, 12167, 12264), (23, 12167, 12264), (29, 10092, 10189), (29, 10933, 11030), (29, 11774, 11871), (29, 12615, 12712), (29, 13456, 13553), (29, 14297, 14394), (29, 15138, 15235), (29, 15979, 16076), (29, 16820, 16917), (29, 17661, 17758), (29, 18502, 18599), (31, 9610, 9707), (31, 10571, 10668), (31, 11532, 11629), (31, 12493, 12590), (31, 13454, 13551), (31, 14415, 14512), (31, 15376, 15473), (31, 16337, 16434), (31, 17298, 17395), (31, 18259, 18356), (37, 9583, 9680), (37, 10952, 11049), (37, 12321, 12418), (37, 13690, 13787), (37, 15059, 15156), (37, 16428, 16525), (37, 17797, 17894), (41, 10086, 10183), (41, 11767, 11864), (41, 13448, 13545), (41, 15129, 15226), (41, 16810, 16907), (41, 18491, 18588), (43, 11094, 11191), (43, 12943, 13040), (43, 14792, 14889), (43, 16641, 16738), (43, 18490, 18587), (47, 11045, 11142), (47, 13254, 13351), (47, 15463, 15560), (47, 17672, 17769), (53, 11236, 11333), (53, 14045, 14142), (53, 16854, 16951), (59, 10443, 10540), (59, 13924, 14021), (59, 17405, 17502), (61, 11163, 11260), (61, 14884, 14981), (61, 18605, 18702), (67, 13467, 13564), (67, 17956, 18053), (71, 10082, 10179), (71, 15123, 15220), (73, 10658, 10755), (73, 15987, 16084), (79, 12482, 12579), (79, 18723, 18820), (83, 13778, 13875), (89, 15842, 15939), (97, 9506, 9506), (97, 18818, 18915)]

def row098_layer000_block000 : List ColouredInterval :=
  [(2, 10240, 10337), (2, 11264, 11361), (2, 10240, 10337), (2, 12288, 12385), (2, 14336, 14433), (2, 16384, 16481), (2, 18432, 18529), (2, 12288, 12385), (2, 16384, 16481), (2, 16384, 16481), (2, 16384, 16481), (3, 9506, 9574), (3, 10206, 10303), (3, 10935, 11032), (3, 11664, 11761), (3, 12393, 12490)]

def row098_layer000_block001 : List ColouredInterval :=
  [(3, 13122, 13219), (3, 13851, 13948), (3, 14580, 14677), (3, 15309, 15406), (3, 16038, 16135), (3, 16767, 16864), (3, 10935, 11032), (3, 13122, 13219), (3, 15309, 15406), (3, 17496, 17593), (3, 13122, 13219), (5, 10000, 10097), (5, 10625, 10722), (5, 11250, 11347), (5, 11875, 11972), (5, 12500, 12597)]

def row098_layer000_block002 : List ColouredInterval :=
  [(5, 13125, 13222), (5, 13750, 13847), (5, 14375, 14472), (5, 12500, 12597), (5, 15625, 15722), (5, 18750, 18847), (5, 15625, 15722), (11, 10648, 10745), (11, 11979, 12076), (11, 13310, 13407), (11, 14641, 14738), (11, 15972, 16069), (11, 17303, 17400), (11, 18634, 18731), (11, 14641, 14738), (13, 10985, 11082)]

def row098_layer000_block003 : List ColouredInterval :=
  [(13, 13182, 13279), (13, 15379, 15476), (13, 17576, 17673), (17, 9826, 9923), (17, 14739, 14836), (19, 13718, 13815), (23, 9522, 9619), (23, 10051, 10148), (23, 10580, 10677), (23, 11109, 11206), (23, 11638, 11735), (23, 12167, 12264), (23, 12167, 12264), (29, 10092, 10189), (29, 10933, 11030), (29, 11774, 11871)]

def row098_layer000_block004 : List ColouredInterval :=
  [(29, 12615, 12712), (29, 13456, 13553), (29, 14297, 14394), (29, 15138, 15235), (29, 15979, 16076), (29, 16820, 16917), (29, 17661, 17758), (29, 18502, 18599), (31, 9610, 9707), (31, 10571, 10668), (31, 11532, 11629), (31, 12493, 12590), (31, 13454, 13551), (31, 14415, 14512), (31, 15376, 15473), (31, 16337, 16434)]

def row098_layer000_block005 : List ColouredInterval :=
  [(31, 17298, 17395), (31, 18259, 18356), (37, 9583, 9680), (37, 10952, 11049), (37, 12321, 12418), (37, 13690, 13787), (37, 15059, 15156), (37, 16428, 16525), (37, 17797, 17894), (41, 10086, 10183), (41, 11767, 11864), (41, 13448, 13545), (41, 15129, 15226), (41, 16810, 16907), (41, 18491, 18588), (43, 11094, 11191)]

def row098_layer000_block006 : List ColouredInterval :=
  [(43, 12943, 13040), (43, 14792, 14889), (43, 16641, 16738), (43, 18490, 18587), (47, 11045, 11142), (47, 13254, 13351), (47, 15463, 15560), (47, 17672, 17769), (53, 11236, 11333), (53, 14045, 14142), (53, 16854, 16951), (59, 10443, 10540), (59, 13924, 14021), (59, 17405, 17502), (61, 11163, 11260), (61, 14884, 14981)]

def row098_layer000_block007 : List ColouredInterval :=
  [(61, 18605, 18702), (67, 13467, 13564), (67, 17956, 18053), (71, 10082, 10179), (71, 15123, 15220), (73, 10658, 10755), (73, 15987, 16084), (79, 12482, 12579), (79, 18723, 18820), (83, 13778, 13875), (89, 15842, 15939), (97, 9506, 9506), (97, 18818, 18915)]

def row098_layer000_chunks : List (List ColouredInterval) :=
  [row098_layer000_block000, row098_layer000_block001, row098_layer000_block002, row098_layer000_block003, row098_layer000_block004, row098_layer000_block005, row098_layer000_block006, row098_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_arithmetic : LayerArithmeticValid row098.height { lower := 9506, upper := 19012, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_enumeration :
    activePowerIntervalList 98 23 9506 19012 = row098_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs000 :
    row098_layer000_block000.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs001 :
    row098_layer000_block001.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs002 :
    row098_layer000_block002.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs003 :
    row098_layer000_block003.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs004 :
    row098_layer000_block004.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs005 :
    row098_layer000_block005.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs006 :
    row098_layer000_block006.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_pairs007 :
    row098_layer000_block007.all (fun I => row098_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row098_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_chunks_eq : row098_layer000_chunks.flatten = row098_layer000_intervals := by
  rfl

theorem row098_layer000_pairs : pairCoverCheck row098_layer000_intervals row098_bounds = true := by
  apply pairCoverCheck_of_chunks row098_layer000_chunks_eq
  intro block hblock
  simp only [row098_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row098_layer000_pairs000
  · exact row098_layer000_pairs001
  · exact row098_layer000_pairs002
  · exact row098_layer000_pairs003
  · exact row098_layer000_pairs004
  · exact row098_layer000_pairs005
  · exact row098_layer000_pairs006
  · exact row098_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row098_layer000_checked :
    coverLayerCheck row098.height row098.goods { lower := 9506, upper := 19012, M := 23 } = true := by
  exact coverLayerCheck_of_parts row098_layer000_arithmetic row098_layer000_enumeration row098_bounds_eq row098_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row098_layer000_checked
