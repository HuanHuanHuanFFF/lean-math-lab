import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row102B16.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_goods_checked :
    row102.goods.all (goodSegmentCheck row102.height.i row102.height.r row102.height.s) = true := by
  change row102_goods.all (goodSegmentCheck 102 33 71) = true
  simp only [row102_goods, List.all_cons, List.all_nil,
    row102_good000_checked,
    row102_good001_checked,
    row102_good002_checked,
    row102_good003_checked,
    row102_good004_checked,
    row102_good005_checked,
    row102_good006_checked,
    row102_good007_checked,
    row102_good008_checked,
    row102_good009_checked,
    row102_good010_checked,
    row102_good011_checked,
    row102_good012_checked,
    row102_good013_checked,
    row102_good014_checked,
    row102_good015_checked,
    row102_good016_checked,
    row102_good017_checked,
    row102_good018_checked,
    row102_good019_checked,
    row102_good020_checked,
    row102_good021_checked,
    row102_good022_checked,
    row102_good023_checked,
    row102_good024_checked,
    row102_good025_checked,
    row102_good026_checked,
    row102_good027_checked,
    row102_good028_checked,
    row102_good029_checked,
    row102_good030_checked,
    row102_good031_checked,
    row102_good032_checked,
    row102_good033_checked,
    row102_good034_checked,
    row102_good035_checked,
    row102_good036_checked,
    row102_good037_checked,
    row102_good038_checked,
    row102_good039_checked,
    row102_good040_checked,
    row102_good041_checked,
    row102_good042_checked,
    row102_good043_checked,
    row102_good044_checked,
    row102_good045_checked,
    row102_good046_checked,
    row102_good047_checked,
    row102_good048_checked,
    row102_good049_checked,
    row102_good050_checked,
    row102_good051_checked,
    row102_good052_checked,
    row102_good053_checked,
    row102_good054_checked,
    row102_good055_checked,
    row102_good056_checked,
    row102_good057_checked,
    row102_good058_checked,
    row102_good059_checked,
    row102_good060_checked,
    row102_good061_checked,
    row102_good062_checked,
    row102_good063_checked,
    row102_good064_checked,
    row102_good065_checked,
    row102_good066_checked,
    row102_good067_checked,
    row102_good068_checked,
    row102_good069_checked,
    row102_good070_checked,
    row102_good071_checked,
    row102_good072_checked,
    row102_good073_checked,
    row102_good074_checked,
    row102_good075_checked,
    row102_good076_checked,
    row102_good077_checked,
    row102_good078_checked,
    row102_good079_checked,
    row102_good080_checked,
    row102_good081_checked,
    row102_good082_checked,
    row102_good083_checked,
    row102_good084_checked,
    row102_good085_checked,
    row102_good086_checked,
    row102_good087_checked,
    row102_good088_checked,
    row102_good089_checked,
    row102_good090_checked,
    row102_good091_checked,
    row102_good092_checked,
    row102_good093_checked,
    row102_good094_checked,
    row102_good095_checked,
    row102_good096_checked,
    row102_good097_checked,
    row102_good098_checked,
    row102_good099_checked,
    row102_good100_checked,
    row102_good101_checked,
    row102_good102_checked,
    row102_good103_checked,
    row102_good104_checked,
    row102_good105_checked,
    row102_good106_checked,
    row102_good107_checked,
    row102_good108_checked,
    row102_good109_checked,
    row102_good110_checked,
    row102_good111_checked,
    row102_good112_checked,
    row102_good113_checked,
    row102_good114_checked,
    row102_good115_checked,
    row102_good116_checked,
    row102_good117_checked,
    row102_good118_checked,
    row102_good119_checked,
    row102_good120_checked,
    row102_good121_checked,
    row102_good122_checked,
    row102_good123_checked,
    row102_good124_checked,
    row102_good125_checked,
    row102_good126_checked,
    row102_good127_checked,
    row102_good128_checked,
    row102_good129_checked,
    row102_good130_checked,
    row102_good131_checked,
    row102_good132_checked,
    row102_good133_checked,
    row102_good134_checked,
    row102_good135_checked,
    row102_good136_checked,
    row102_good137_checked,
    row102_good138_checked,
    row102_good139_checked,
    row102_good140_checked,
    row102_good141_checked,
    row102_good142_checked,
    row102_good143_checked,
    row102_good144_checked,
    row102_good145_checked,
    row102_good146_checked,
    row102_good147_checked,
    row102_good148_checked,
    row102_good149_checked,
    row102_good150_checked,
    row102_good151_checked,
    row102_good152_checked,
    row102_good153_checked,
    row102_good154_checked,
    row102_good155_checked,
    row102_good156_checked,
    row102_good157_checked,
    row102_good158_checked,
    row102_good159_checked,
    row102_good160_checked,
    row102_good161_checked,
    row102_good162_checked,
    row102_good163_checked,
    row102_good164_checked,
    row102_good165_checked,
    row102_good166_checked,
    row102_good167_checked,
    row102_good168_checked,
    row102_good169_checked,
    row102_good170_checked,
    row102_good171_checked,
    row102_good172_checked,
    row102_good173_checked,
    row102_good174_checked,
    row102_good175_checked,
    row102_good176_checked,
    row102_good177_checked,
    row102_good178_checked,
    row102_good179_checked,
    row102_good180_checked,
    row102_good181_checked,
    row102_good182_checked,
    row102_good183_checked,
    row102_good184_checked,
    row102_good185_checked,
    row102_good186_checked,
    row102_good187_checked,
    row102_good188_checked,
    row102_good189_checked,
    row102_good190_checked,
    row102_good191_checked,
    row102_good192_checked,
    row102_good193_checked,
    row102_good194_checked,
    row102_good195_checked,
    row102_good196_checked,
    row102_good197_checked,
    row102_good198_checked,
    row102_good199_checked,
    row102_good200_checked,
    row102_good201_checked,
    row102_good202_checked,
    row102_good203_checked,
    row102_good204_checked,
    row102_good205_checked,
    row102_good206_checked,
    row102_good207_checked,
    row102_good208_checked,
    row102_good209_checked,
    row102_good210_checked,
    row102_good211_checked,
    row102_good212_checked,
    row102_good213_checked,
    row102_good214_checked,
    row102_good215_checked,
    row102_good216_checked,
    row102_good217_checked,
    row102_good218_checked,
    row102_good219_checked,
    row102_good220_checked,
    row102_good221_checked,
    row102_good222_checked,
    row102_good223_checked,
    row102_good224_checked,
    row102_good225_checked,
    row102_good226_checked,
    row102_good227_checked,
    row102_good228_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_registered :
    decide (row102.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row102_small_checked :
    coverCheck (2 * row102.height.i + 2) (row102.height.i * (row102.height.i - 1) - 1)
      (row102.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row102_layerCover_checked :
    coverCheck (row102.height.i * (row102.height.i - 1)) (row102.height.n0 - 1)
      (row102.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row102_bounds : List NatInterval :=
  [(206, 300), (301, 394), (395, 490), (491, 592), (593, 694), (695, 792), (793, 888), (889, 988), (989, 1084), (1085, 1170), (1171, 1272), (1273, 1360), (1361, 1462), (1463, 1560), (1561, 1660), (1661, 1758), (1759, 1860), (1861, 1962), (1963, 2052), (2053, 2154), (2155, 2254), (2255, 2352), (2353, 2452), (2453, 2548), (2549, 2650), (2651, 2748), (2749, 2850), (2851, 2952), (2953, 3054), (3055, 3150), (3151, 3238), (3239, 3330), (3331, 3432), (3433, 3534), (3535, 3634), (3635, 3732), (3733, 3834), (3835, 3934), (3935, 4032), (4033, 4128), (4129, 4230), (4231, 4332), (4333, 4428), (4429, 4524), (4525, 4624), (4625, 4722), (4723, 4824), (4825, 4918), (4919, 5020), (5021, 5122), (5123, 5220), (5221, 5310), (5311, 5410), (5411, 5508), (5509, 5608), (5609, 5692), (5693, 5794), (5795, 5892), (5893, 5982), (5983, 6082), (6083, 6180), (6181, 6274), (6275, 6372), (6373, 6474), (6475, 6574), (6575, 6672), (6673, 6774), (6775, 6864), (6865, 6964), (6965, 7062), (7063, 7158), (7159, 7260), (7261, 7354), (7355, 7452), (7453, 7552), (7553, 7650), (7651, 7750), (7751, 7842), (7843, 7942), (7943, 8038), (8039, 8140), (8141, 8224), (8225, 8322), (8323, 8418), (8419, 8520), (8521, 8622), (8623, 8724), (8725, 8820), (8821, 8922), (8923, 9024), (9025, 9114), (9115, 9210), (9211, 9310), (9311, 9412), (9413, 9514), (9515, 9612), (9613, 9714), (9715, 9798), (9799, 9892), (9893, 9988), (9989, 10074), (10075, 10170), (10171, 10270), (10271, 10302), (10580, 10668), (10669, 10749), (10935, 11010), (11011, 11086), (11094, 11194), (11195, 11210), (11236, 11314), (11315, 11351), (11774, 11844), (11845, 11868), (11875, 11875), (12005, 12080), (12321, 12389), (12493, 12592), (12593, 12594), (13125, 13222), (13223, 13226), (13254, 13283), (13310, 13355), (13454, 13552), (13553, 13557), (13718, 13812), (13813, 13851), (14336, 14428), (14429, 14507), (14884, 14893), (15123, 15222), (15223, 15230), (15376, 15474), (15475, 15480), (15979, 16074), (16075, 16080), (16384, 16482), (16483, 16485), (16810, 16888), (16889, 16921), (17303, 17399), (17661, 17760), (17761, 17762), (18490, 18582), (18583, 18592), (18634, 18706), (18723, 18735), (18750, 18850), (18851, 18851), (19208, 19308), (19309, 19309), (19683, 19764), (19773, 19784), (19965, 19982), (20172, 20262), (20263, 20273), (20402, 20440), (20480, 20503), (20535, 20634), (20635, 20636), (20667, 20678), (21316, 21397), (21875, 21972), (21973, 22005), (22188, 22191), (22472, 22546), (24010, 24108), (24109, 24111), (24334, 24430), (24431, 24468), (24642, 24677), (25000, 25065), (25215, 25290), (25291, 25362), (25363, 25382), (26047, 26112), (26411, 26465), (26508, 26512), (26934, 26997), (28125, 28191), (28577, 28662), (28672, 28678), (28717, 28773), (28812, 28818), (29791, 29869), (30258, 30347), (30926, 31000), (31213, 31294), (31295, 31314), (31329, 31351), (31423, 31430), (31433, 31498), (31499, 31524), (31974, 32040), (32805, 32869), (33708, 33715), (34375, 34396), (34445, 34476), (35152, 35232), (35344, 35388), (36517, 36598), (36599, 36602), (37303, 37311), (37349, 37404), (37446, 37450), (37500, 37547), (37553, 37601), (37636, 37654), (39366, 39427), (39605, 39647), (40401, 40429), (40817, 40905), (40960, 41032), (43750, 43788), (48013, 48062), (48734, 48769), (48778, 48835), (50421, 50511), (55451, 55542), (55543, 55548), (58619, 58665), (62500, 62511), (65536, 65622), (65623, 65634), (68651, 68691), (68921, 68991), (73205, 73268), (146410, 146435), (148955, 148978)]

theorem row102_bounds_eq : row102.goods.map goodSegmentBounds = row102_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row102_layer000_intervals : List ColouredInterval :=
  [(2, 10302, 10341), (2, 11264, 11365), (2, 10302, 10341), (2, 12288, 12389), (2, 14336, 14437), (2, 16384, 16485), (2, 18432, 18533), (2, 20480, 20581), (2, 12288, 12389), (2, 16384, 16485), (2, 20480, 20581), (2, 16384, 16485), (2, 16384, 16485), (3, 10935, 11036), (3, 13122, 13223), (3, 15309, 15410), (3, 13122, 13223), (3, 19683, 19784), (3, 19683, 19784), (5, 10625, 10726), (5, 11250, 11351), (5, 11875, 11976), (5, 12500, 12601), (5, 13125, 13226), (5, 13750, 13851), (5, 14375, 14476), (5, 12500, 12601), (5, 15625, 15726), (5, 18750, 18851), (5, 15625, 15726), (7, 12005, 12106), (7, 14406, 14507), (7, 16807, 16908), (7, 19208, 19309), (7, 16807, 16908), (11, 10648, 10749), (11, 11979, 12080), (11, 13310, 13411), (11, 14641, 14742), (11, 15972, 16073), (11, 17303, 17404), (11, 18634, 18735), (11, 19965, 20066), (11, 14641, 14742), (13, 10985, 11086), (13, 13182, 13283), (13, 15379, 15480), (13, 17576, 17677), (13, 19773, 19874), (19, 13718, 13819), (19, 20577, 20603), (23, 10580, 10681), (23, 11109, 11210), (23, 11638, 11739), (23, 12167, 12268), (23, 12167, 12268), (29, 10933, 11034), (29, 11774, 11875), (29, 12615, 12716), (29, 13456, 13557), (29, 14297, 14398), (29, 15138, 15239), (29, 15979, 16080), (29, 16820, 16921), (29, 17661, 17762), (29, 18502, 18603), (29, 19343, 19444), (31, 10571, 10672), (31, 11532, 11633), (31, 12493, 12594), (31, 13454, 13555), (31, 14415, 14516), (31, 15376, 15477), (31, 16337, 16438), (31, 17298, 17399), (31, 18259, 18360), (31, 19220, 19321), (31, 20181, 20282), (37, 10952, 11053), (37, 12321, 12422), (37, 13690, 13791), (37, 15059, 15160), (37, 16428, 16529), (37, 17797, 17898), (37, 19166, 19267), (37, 20535, 20603), (41, 11767, 11868), (41, 13448, 13549), (41, 15129, 15230), (41, 16810, 16911), (41, 18491, 18592), (41, 20172, 20273), (43, 11094, 11195), (43, 12943, 13044), (43, 14792, 14893), (43, 16641, 16742), (43, 18490, 18591), (43, 20339, 20440), (47, 11045, 11146), (47, 13254, 13355), (47, 15463, 15564), (47, 17672, 17773), (47, 19881, 19982), (53, 11236, 11337), (53, 14045, 14146), (53, 16854, 16955), (53, 19663, 19764), (59, 10443, 10544), (59, 13924, 14025), (59, 17405, 17506), (61, 11163, 11264), (61, 14884, 14985), (61, 18605, 18706), (67, 13467, 13568), (67, 17956, 18057), (71, 15123, 15224), (71, 20164, 20265), (73, 10658, 10759), (73, 15987, 16088), (79, 12482, 12583), (79, 18723, 18824), (83, 13778, 13879), (89, 15842, 15943), (97, 18818, 18919), (101, 10302, 10302), (101, 20402, 20503)]

def row102_layer000_block000 : List ColouredInterval :=
  [(2, 10302, 10341), (2, 11264, 11365), (2, 10302, 10341), (2, 12288, 12389), (2, 14336, 14437), (2, 16384, 16485), (2, 18432, 18533), (2, 20480, 20581), (2, 12288, 12389), (2, 16384, 16485), (2, 20480, 20581), (2, 16384, 16485), (2, 16384, 16485), (3, 10935, 11036), (3, 13122, 13223), (3, 15309, 15410)]

def row102_layer000_block001 : List ColouredInterval :=
  [(3, 13122, 13223), (3, 19683, 19784), (3, 19683, 19784), (5, 10625, 10726), (5, 11250, 11351), (5, 11875, 11976), (5, 12500, 12601), (5, 13125, 13226), (5, 13750, 13851), (5, 14375, 14476), (5, 12500, 12601), (5, 15625, 15726), (5, 18750, 18851), (5, 15625, 15726), (7, 12005, 12106), (7, 14406, 14507)]

def row102_layer000_block002 : List ColouredInterval :=
  [(7, 16807, 16908), (7, 19208, 19309), (7, 16807, 16908), (11, 10648, 10749), (11, 11979, 12080), (11, 13310, 13411), (11, 14641, 14742), (11, 15972, 16073), (11, 17303, 17404), (11, 18634, 18735), (11, 19965, 20066), (11, 14641, 14742), (13, 10985, 11086), (13, 13182, 13283), (13, 15379, 15480), (13, 17576, 17677)]

def row102_layer000_block003 : List ColouredInterval :=
  [(13, 19773, 19874), (19, 13718, 13819), (19, 20577, 20603), (23, 10580, 10681), (23, 11109, 11210), (23, 11638, 11739), (23, 12167, 12268), (23, 12167, 12268), (29, 10933, 11034), (29, 11774, 11875), (29, 12615, 12716), (29, 13456, 13557), (29, 14297, 14398), (29, 15138, 15239), (29, 15979, 16080), (29, 16820, 16921)]

def row102_layer000_block004 : List ColouredInterval :=
  [(29, 17661, 17762), (29, 18502, 18603), (29, 19343, 19444), (31, 10571, 10672), (31, 11532, 11633), (31, 12493, 12594), (31, 13454, 13555), (31, 14415, 14516), (31, 15376, 15477), (31, 16337, 16438), (31, 17298, 17399), (31, 18259, 18360), (31, 19220, 19321), (31, 20181, 20282), (37, 10952, 11053), (37, 12321, 12422)]

def row102_layer000_block005 : List ColouredInterval :=
  [(37, 13690, 13791), (37, 15059, 15160), (37, 16428, 16529), (37, 17797, 17898), (37, 19166, 19267), (37, 20535, 20603), (41, 11767, 11868), (41, 13448, 13549), (41, 15129, 15230), (41, 16810, 16911), (41, 18491, 18592), (41, 20172, 20273), (43, 11094, 11195), (43, 12943, 13044), (43, 14792, 14893), (43, 16641, 16742)]

def row102_layer000_block006 : List ColouredInterval :=
  [(43, 18490, 18591), (43, 20339, 20440), (47, 11045, 11146), (47, 13254, 13355), (47, 15463, 15564), (47, 17672, 17773), (47, 19881, 19982), (53, 11236, 11337), (53, 14045, 14146), (53, 16854, 16955), (53, 19663, 19764), (59, 10443, 10544), (59, 13924, 14025), (59, 17405, 17506), (61, 11163, 11264), (61, 14884, 14985)]

def row102_layer000_block007 : List ColouredInterval :=
  [(61, 18605, 18706), (67, 13467, 13568), (67, 17956, 18057), (71, 15123, 15224), (71, 20164, 20265), (73, 10658, 10759), (73, 15987, 16088), (79, 12482, 12583), (79, 18723, 18824), (83, 13778, 13879), (89, 15842, 15943), (97, 18818, 18919), (101, 10302, 10302), (101, 20402, 20503)]

def row102_layer000_chunks : List (List ColouredInterval) :=
  [row102_layer000_block000, row102_layer000_block001, row102_layer000_block002, row102_layer000_block003, row102_layer000_block004, row102_layer000_block005, row102_layer000_block006, row102_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_arithmetic : LayerArithmeticValid row102.height { lower := 10302, upper := 20604, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_enumeration :
    activePowerIntervalList 102 23 10302 20604 = row102_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs000 :
    row102_layer000_block000.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs001 :
    row102_layer000_block001.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs002 :
    row102_layer000_block002.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs003 :
    row102_layer000_block003.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs004 :
    row102_layer000_block004.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs005 :
    row102_layer000_block005.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs006 :
    row102_layer000_block006.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_pairs007 :
    row102_layer000_block007.all (fun I => row102_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row102_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_chunks_eq : row102_layer000_chunks.flatten = row102_layer000_intervals := by
  rfl

theorem row102_layer000_pairs : pairCoverCheck row102_layer000_intervals row102_bounds = true := by
  apply pairCoverCheck_of_chunks row102_layer000_chunks_eq
  intro block hblock
  simp only [row102_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row102_layer000_pairs000
  · exact row102_layer000_pairs001
  · exact row102_layer000_pairs002
  · exact row102_layer000_pairs003
  · exact row102_layer000_pairs004
  · exact row102_layer000_pairs005
  · exact row102_layer000_pairs006
  · exact row102_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row102_layer000_checked :
    coverLayerCheck row102.height row102.goods { lower := 10302, upper := 20604, M := 23 } = true := by
  exact coverLayerCheck_of_parts row102_layer000_arithmetic row102_layer000_enumeration row102_bounds_eq row102_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row102_layer000_checked
