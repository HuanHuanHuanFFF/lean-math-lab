import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

def row042_height : HeightCertificateDatum := { i := 42, r := 13, s := 28, n0Power10 := 31 }

def row042_goods : List GoodSegment := [
  { lower := 86, upper := 124, witness := RowWitness.topPrime 83 },
  { lower := 125, upper := 154, witness := RowWitness.topPrime 113 },
  { lower := 155, upper := 192, witness := RowWitness.topPrime 151 },
  { lower := 193, upper := 234, witness := RowWitness.topPrime 193 },
  { lower := 235, upper := 274, witness := RowWitness.topPrime 233 },
  { lower := 275, upper := 312, witness := RowWitness.topPrime 271 },
  { lower := 313, upper := 354, witness := RowWitness.topPrime 313 },
  { lower := 355, upper := 394, witness := RowWitness.topPrime 353 },
  { lower := 395, upper := 430, witness := RowWitness.topPrime 389 },
  { lower := 431, upper := 472, witness := RowWitness.topPrime 431 },
  { lower := 473, upper := 508, witness := RowWitness.topPrime 467 },
  { lower := 509, upper := 550, witness := RowWitness.topPrime 509 },
  { lower := 551, upper := 588, witness := RowWitness.topPrime 547 },
  { lower := 589, upper := 628, witness := RowWitness.topPrime 587 },
  { lower := 629, upper := 660, witness := RowWitness.topPrime 619 },
  { lower := 661, upper := 702, witness := RowWitness.topPrime 661 },
  { lower := 703, upper := 742, witness := RowWitness.topPrime 701 },
  { lower := 743, upper := 784, witness := RowWitness.topPrime 743 },
  { lower := 785, upper := 814, witness := RowWitness.topPrime 773 },
  { lower := 815, upper := 852, witness := RowWitness.topPrime 811 },
  { lower := 853, upper := 894, witness := RowWitness.topPrime 853 },
  { lower := 895, upper := 928, witness := RowWitness.topPrime 887 },
  { lower := 929, upper := 970, witness := RowWitness.topPrime 929 },
  { lower := 971, upper := 1012, witness := RowWitness.topPrime 971 },
  { lower := 1013, upper := 1054, witness := RowWitness.topPrime 1013 },
  { lower := 1055, upper := 1092, witness := RowWitness.topPrime 1051 },
  { lower := 1093, upper := 1134, witness := RowWitness.topPrime 1093 },
  { lower := 1135, upper := 1170, witness := RowWitness.topPrime 1129 },
  { lower := 1171, upper := 1212, witness := RowWitness.topPrime 1171 },
  { lower := 1213, upper := 1254, witness := RowWitness.topPrime 1213 },
  { lower := 1255, upper := 1290, witness := RowWitness.topPrime 1249 },
  { lower := 1291, upper := 1332, witness := RowWitness.topPrime 1291 },
  { lower := 1333, upper := 1368, witness := RowWitness.topPrime 1327 },
  { lower := 1369, upper := 1408, witness := RowWitness.topPrime 1367 },
  { lower := 1409, upper := 1450, witness := RowWitness.topPrime 1409 },
  { lower := 1451, upper := 1492, witness := RowWitness.topPrime 1451 },
  { lower := 1493, upper := 1534, witness := RowWitness.topPrime 1493 },
  { lower := 1535, upper := 1572, witness := RowWitness.topPrime 1531 },
  { lower := 1573, upper := 1612, witness := RowWitness.topPrime 1571 },
  { lower := 1613, upper := 1654, witness := RowWitness.topPrime 1613 },
  { lower := 1655, upper := 1678, witness := RowWitness.topPrime 1637 },
  { lower := 1679, upper := 1710, witness := RowWitness.topPrime 1669 },
  { lower := 1711, upper := 1750, witness := RowWitness.topPrime 1709 },
  { lower := 1751, upper := 1775, witness := RowWitness.topPrime 1747 },
  { lower := 1805, upper := 1842, witness := RowWitness.topPrime 1801 },
  { lower := 1843, upper := 1846, witness := RowWitness.topPrime 1831 },
  { lower := 1875, upper := 1900, witness := RowWitness.topPrime 1873 },
  { lower := 1922, upper := 1954, witness := RowWitness.topPrime 1913 },
  { lower := 1955, upper := 1977, witness := RowWitness.topPrime 1951 },
  { lower := 2023, upper := 2058, witness := RowWitness.topPrime 2017 },
  { lower := 2059, upper := 2089, witness := RowWitness.topPrime 2053 },
  { lower := 2125, upper := 2154, witness := RowWitness.topPrime 2113 },
  { lower := 2155, upper := 2157, witness := RowWitness.topPrime 2153 },
  { lower := 2166, upper := 2166, witness := RowWitness.topPrime 2161 },
  { lower := 2176, upper := 2202, witness := RowWitness.topPrime 2161 },
  { lower := 2203, upper := 2228, witness := RowWitness.topPrime 2203 },
  { lower := 2304, upper := 2338, witness := RowWitness.topPrime 2297 },
  { lower := 2339, upper := 2345, witness := RowWitness.topPrime 2339 },
  { lower := 2375, upper := 2412, witness := RowWitness.topPrime 2371 },
  { lower := 2413, upper := 2416, witness := RowWitness.topPrime 2411 },
  { lower := 2420, upper := 2458, witness := RowWitness.topPrime 2417 },
  { lower := 2459, upper := 2471, witness := RowWitness.topPrime 2459 },
  { lower := 2523, upper := 2562, witness := RowWitness.topPrime 2521 },
  { lower := 2563, upper := 2582, witness := RowWitness.topPrime 2557 },
  { lower := 2601, upper := 2601, witness := RowWitness.topPrime 2593 },
  { lower := 2625, upper := 2642, witness := RowWitness.topPrime 2621 },
  { lower := 2645, upper := 2674, witness := RowWitness.topPrime 2633 },
  { lower := 2675, upper := 2712, witness := RowWitness.topPrime 2671 },
  { lower := 2713, upper := 2714, witness := RowWitness.topPrime 2713 },
  { lower := 2738, upper := 2745, witness := RowWitness.topPrime 2731 },
  { lower := 2750, upper := 2779, witness := RowWitness.topPrime 2749 },
  { lower := 2783, upper := 2791, witness := RowWitness.topPrime 2777 },
  { lower := 2816, upper := 2824, witness := RowWitness.topPrime 2803 },
  { lower := 2875, upper := 2902, witness := RowWitness.topPrime 2861 },
  { lower := 2903, upper := 2944, witness := RowWitness.topPrime 2903 },
  { lower := 2945, upper := 2945, witness := RowWitness.topPrime 2939 },
  { lower := 3025, upper := 3064, witness := RowWitness.topPrime 3023 },
  { lower := 3065, upper := 3066, witness := RowWitness.topPrime 3061 },
  { lower := 3072, upper := 3083, witness := RowWitness.topPrime 3067 },
  { lower := 3146, upper := 3178, witness := RowWitness.topPrime 3137 },
  { lower := 3179, upper := 3210, witness := RowWitness.topPrime 3169 },
  { lower := 3211, upper := 3220, witness := RowWitness.topPrime 3209 },
  { lower := 3249, upper := 3270, witness := RowWitness.topPrime 3229 },
  { lower := 3271, upper := 3291, witness := RowWitness.topPrime 3271 },
  { lower := 3362, upper := 3402, witness := RowWitness.topPrime 3361 },
  { lower := 3403, upper := 3421, witness := RowWitness.topPrime 3391 },
  { lower := 3500, upper := 3540, witness := RowWitness.topPrime 3499 },
  { lower := 3541, upper := 3541, witness := RowWitness.topPrime 3541 },
  { lower := 3549, upper := 3550, witness := RowWitness.topPrime 3547 },
  { lower := 3584, upper := 3590, witness := RowWitness.topPrime 3583 },
  { lower := 3610, upper := 3648, witness := RowWitness.topPrime 3607 },
  { lower := 3649, upper := 3671, witness := RowWitness.topPrime 3643 },
  { lower := 3718, upper := 3744, witness := RowWitness.topPrime 3709 },
  { lower := 3750, upper := 3780, witness := RowWitness.topPrime 3739 },
  { lower := 3781, upper := 3792, witness := RowWitness.topPrime 3779 },
  { lower := 3844, upper := 3874, witness := RowWitness.topPrime 3833 },
  { lower := 3875, upper := 3904, witness := RowWitness.topPrime 3863 },
  { lower := 3905, upper := 3916, witness := RowWitness.topPrime 3889 },
  { lower := 3993, upper := 4030, witness := RowWitness.topPrime 3989 },
  { lower := 4031, upper := 4034, witness := RowWitness.topPrime 4027 },
  { lower := 4056, upper := 4087, witness := RowWitness.topPrime 4051 },
  { lower := 4096, upper := 4097, witness := RowWitness.topPrime 4093 },
  { lower := 4107, upper := 4140, witness := RowWitness.topPrime 4099 },
  { lower := 4141, upper := 4155, witness := RowWitness.topPrime 4139 },
  { lower := 4225, upper := 4260, witness := RowWitness.topPrime 4219 },
  { lower := 4261, upper := 4276, witness := RowWitness.topPrime 4261 },
  { lower := 4335, upper := 4368, witness := RowWitness.topPrime 4327 },
  { lower := 4369, upper := 4404, witness := RowWitness.topPrime 4363 },
  { lower := 4405, upper := 4416, witness := RowWitness.topPrime 4397 },
  { lower := 4500, upper := 4518, witness := RowWitness.topPrime 4493 },
  { lower := 4624, upper := 4662, witness := RowWitness.topPrime 4621 },
  { lower := 4663, upper := 4665, witness := RowWitness.topPrime 4663 },
  { lower := 4732, upper := 4734, witness := RowWitness.topPrime 4729 },
  { lower := 4761, upper := 4773, witness := RowWitness.topPrime 4759 },
  { lower := 4802, upper := 4802, witness := RowWitness.topPrime 4801 },
  { lower := 4805, upper := 4842, witness := RowWitness.topPrime 4801 },
  { lower := 4843, upper := 4843, witness := RowWitness.topPrime 4831 },
  { lower := 4913, upper := 4942, witness := RowWitness.topPrime 4909 },
  { lower := 5046, upper := 5080, witness := RowWitness.topPrime 5039 },
  { lower := 5081, upper := 5095, witness := RowWitness.topPrime 5081 },
  { lower := 5103, upper := 5111, witness := RowWitness.topPrime 5101 },
  { lower := 5120, upper := 5144, witness := RowWitness.topPrime 5119 },
  { lower := 5239, upper := 5243, witness := RowWitness.topPrime 5237 },
  { lower := 5324, upper := 5331, witness := RowWitness.topPrime 5323 },
  { lower := 5415, upper := 5449, witness := RowWitness.topPrime 5413 },
  { lower := 5491, upper := 5517, witness := RowWitness.topPrime 5483 },
  { lower := 5632, upper := 5664, witness := RowWitness.topPrime 5623 },
  { lower := 5665, upper := 5666, witness := RowWitness.topPrime 5659 },
  { lower := 5766, upper := 5790, witness := RowWitness.topPrime 5749 },
  { lower := 5791, upper := 5817, witness := RowWitness.topPrime 5791 },
  { lower := 5819, upper := 5821, witness := RowWitness.topPrime 5813 },
  { lower := 5832, upper := 5860, witness := RowWitness.topPrime 5827 },
  { lower := 5915, upper := 5928, witness := RowWitness.topPrime 5903 },
  { lower := 6084, upper := 6110, witness := RowWitness.topPrime 6079 },
  { lower := 6144, upper := 6178, witness := RowWitness.topPrime 6143 },
  { lower := 6253, upper := 6288, witness := RowWitness.topPrime 6247 },
  { lower := 6289, upper := 6291, witness := RowWitness.topPrime 6287 },
  { lower := 6358, upper := 6389, witness := RowWitness.topPrime 6353 },
  { lower := 6591, upper := 6602, witness := RowWitness.topPrime 6581 },
  { lower := 6655, upper := 6694, witness := RowWitness.topPrime 6653 },
  { lower := 6695, upper := 6696, witness := RowWitness.topPrime 6691 },
  { lower := 6727, upper := 6760, witness := RowWitness.topPrime 6719 },
  { lower := 6761, upper := 6768, witness := RowWitness.topPrime 6761 },
  { lower := 6859, upper := 6898, witness := RowWitness.topPrime 6857 },
  { lower := 6899, upper := 6916, witness := RowWitness.topPrime 6899 },
  { lower := 7203, upper := 7209, witness := RowWitness.topPrime 7193 },
  { lower := 7220, upper := 7260, witness := RowWitness.topPrime 7219 },
  { lower := 7261, upper := 7261, witness := RowWitness.topPrime 7253 },
  { lower := 7514, upper := 7541, witness := RowWitness.topPrime 7507 },
  { lower := 7581, upper := 7610, witness := RowWitness.topPrime 7577 },
  { lower := 7688, upper := 7721, witness := RowWitness.topPrime 7687 },
  { lower := 7942, upper := 7976, witness := RowWitness.topPrime 7937 },
  { lower := 8019, upper := 8027, witness := RowWitness.topPrime 8017 },
  { lower := 8125, upper := 8133, witness := RowWitness.topPrime 8123 },
  { lower := 8214, upper := 8233, witness := RowWitness.topPrime 8209 },
  { lower := 8405, upper := 8430, witness := RowWitness.topPrime 8389 },
  { lower := 8431, upper := 8446, witness := RowWitness.topPrime 8431 },
  { lower := 8664, upper := 8704, witness := RowWitness.topPrime 8663 },
  { lower := 8705, upper := 8711, witness := RowWitness.topPrime 8699 },
  { lower := 8750, upper := 8788, witness := RowWitness.topPrime 8747 },
  { lower := 8789, upper := 8791, witness := RowWitness.topPrime 8783 },
  { lower := 8993, upper := 9000, witness := RowWitness.topPrime 8971 },
  { lower := 9025, upper := 9034, witness := RowWitness.topPrime 9013 },
  { lower := 9248, upper := 9282, witness := RowWitness.topPrime 9241 },
  { lower := 9283, upper := 9289, witness := RowWitness.topPrime 9283 },
  { lower := 9386, upper := 9416, witness := RowWitness.topPrime 9377 },
  { lower := 9537, upper := 9563, witness := RowWitness.topPrime 9533 },
  { lower := 9604, upper := 9642, witness := RowWitness.topPrime 9601 },
  { lower := 9643, upper := 9645, witness := RowWitness.topPrime 9643 },
  { lower := 10086, upper := 10120, witness := RowWitness.topPrime 10079 },
  { lower := 10121, upper := 10149, witness := RowWitness.topPrime 10111 },
  { lower := 10580, upper := 10608, witness := RowWitness.topPrime 10567 },
  { lower := 10609, upper := 10612, witness := RowWitness.topPrime 10607 },
  { lower := 10648, upper := 10666, witness := RowWitness.topPrime 10639 },
  { lower := 10935, upper := 10950, witness := RowWitness.topPrime 10909 },
  { lower := 10951, upper := 10976, witness := RowWitness.topPrime 10949 },
  { lower := 10985, upper := 10993, witness := RowWitness.topPrime 10979 },
  { lower := 11264, upper := 11291, witness := RowWitness.topPrime 11261 },
  { lower := 11552, upper := 11573, witness := RowWitness.topPrime 11551 },
  { lower := 11774, upper := 11784, witness := RowWitness.topPrime 11743 },
  { lower := 11785, upper := 11808, witness := RowWitness.topPrime 11783 },
  { lower := 11913, upper := 11916, witness := RowWitness.topPrime 11909 },
  { lower := 12005, upper := 12020, witness := RowWitness.topPrime 11987 },
  { lower := 12288, upper := 12315, witness := RowWitness.topPrime 12281 },
  { lower := 12321, upper := 12329, witness := RowWitness.topPrime 12301 },
  { lower := 12500, upper := 12534, witness := RowWitness.topPrime 12497 },
  { lower := 12635, upper := 12656, witness := RowWitness.topPrime 12619 },
  { lower := 13125, upper := 13162, witness := RowWitness.topPrime 13121 },
  { lower := 13163, upper := 13163, witness := RowWitness.topPrime 13163 },
  { lower := 13312, upper := 13350, witness := RowWitness.topPrime 13309 },
  { lower := 13351, upper := 13351, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13492, witness := RowWitness.topPrime 13451 },
  { lower := 13493, upper := 13495, witness := RowWitness.topPrime 13487 },
  { lower := 13718, upper := 13731, witness := RowWitness.topPrime 13711 },
  { lower := 13750, upper := 13770, witness := RowWitness.topPrime 13729 },
  { lower := 13771, upper := 13791, witness := RowWitness.topPrime 13763 },
  { lower := 14297, upper := 14324, witness := RowWitness.topPrime 14293 },
  { lower := 14336, upper := 14338, witness := RowWitness.topPrime 14327 },
  { lower := 14375, upper := 14377, witness := RowWitness.topPrime 14369 },
  { lower := 14415, upper := 14416, witness := RowWitness.topPrime 14411 },
  { lower := 15138, upper := 15170, witness := RowWitness.topPrime 15137 },
  { lower := 15341, upper := 15350, witness := RowWitness.topPrime 15331 },
  { lower := 15360, upper := 15400, witness := RowWitness.topPrime 15359 },
  { lower := 15401, upper := 15417, witness := RowWitness.topPrime 15401 },
  { lower := 15979, upper := 16013, witness := RowWitness.topPrime 15973 },
  { lower := 16399, upper := 16422, witness := RowWitness.topPrime 16381 },
  { lower := 16423, upper := 16425, witness := RowWitness.topPrime 16421 },
  { lower := 16428, upper := 16440, witness := RowWitness.topPrime 16427 },
  { lower := 16810, upper := 16828, witness := RowWitness.topPrime 16787 },
  { lower := 16829, upper := 16851, witness := RowWitness.topPrime 16829 },
  { lower := 17303, upper := 17339, witness := RowWitness.topPrime 17299 },
  { lower := 17496, upper := 17498, witness := RowWitness.topPrime 17491 },
  { lower := 17500, upper := 17537, witness := RowWitness.topPrime 17497 },
  { lower := 18502, upper := 18534, witness := RowWitness.topPrime 18493 },
  { lower := 18535, upper := 18543, witness := RowWitness.topPrime 18523 },
  { lower := 19375, upper := 19384, witness := RowWitness.topPrime 19373 },
  { lower := 19683, upper := 19693, witness := RowWitness.topPrime 19681 },
  { lower := 20000, upper := 20006, witness := RowWitness.topPrime 19997 },
  { lower := 20181, upper := 20218, witness := RowWitness.topPrime 20177 },
  { lower := 20219, upper := 20222, witness := RowWitness.topPrime 20219 },
  { lower := 21866, upper := 21904, witness := RowWitness.topPrime 21863 },
  { lower := 21905, upper := 21916, witness := RowWitness.topPrime 21893 },
  { lower := 23548, upper := 23575, witness := RowWitness.topPrime 23539 },
  { lower := 24057, upper := 24066, witness := RowWitness.topPrime 24049 },
  { lower := 24576, upper := 24606, witness := RowWitness.topPrime 24571 },
  { lower := 25000, upper := 25027, witness := RowWitness.topPrime 24989 },
  { lower := 25230, upper := 25256, witness := RowWitness.topPrime 25229 },
  { lower := 26624, upper := 26638, witness := RowWitness.topPrime 26597 },
  { lower := 26639, upper := 26661, witness := RowWitness.topPrime 26633 },
  { lower := 26908, upper := 26944, witness := RowWitness.topPrime 26903 },
  { lower := 26945, upper := 26949, witness := RowWitness.topPrime 26927 },
  { lower := 28577, upper := 28602, witness := RowWitness.topPrime 28573 },
  { lower := 30752, upper := 30768, witness := RowWitness.topPrime 30727 },
  { lower := 30769, upper := 30793, witness := RowWitness.topPrime 30763 },
  { lower := 31944, upper := 31948, witness := RowWitness.topPrime 31907 },
  { lower := 31949, upper := 31949, witness := RowWitness.largeDivisor 15252308274176420322607459461125192974792464609526589494741313699706859719643023027756649516881116428731573421498689507624026773 },
  { lower := 31950, upper := 31950, witness := RowWitness.largeDivisor 407263590622988282401327424497889695829358776711691558528256213869570154228903585923551002519202431906709933405944699150547537 },
  { lower := 31951, upper := 31951, witness := RowWitness.largeDivisor 6932594024504581039427177698525345589474609629576588698207945812118612678618912346213840213900392595552098605356067705146054531 },
  { lower := 31952, upper := 31952, witness := RowWitness.largeDivisor 4338574198350250183558782157303389264237165600208225518746871760200836577625185821181146633393633347952848923502371421866709777 },
  { lower := 31953, upper := 31953, witness := RowWitness.largeDivisor 47787129045117388526457692613690174822533661642003940020861355861322761518392817147259971863780340009354492124326533623890719581 },
  { lower := 31954, upper := 31954, witness := RowWitness.largeDivisor 14723083879781717347459640065737083193004229169722447301488745638898389046403803528198171326293817465905407576033419359178163541 },
  { lower := 31955, upper := 31955, witness := RowWitness.largeDivisor 268044738324606830409991253664439110554803908990340672521071701695232790272321933064366795367928679462634092741999080239479617 },
  { lower := 31956, upper := 31956, witness := RowWitness.largeDivisor 3623366183545319743054856388367519550291587866199376705196009855910684875610118313453851655151238951314693345035246450140782843 },
  { lower := 31957, upper := 31980, witness := RowWitness.topPrime 31957 },
  { lower := 32805, upper := 32809, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33655, witness := RowWitness.topPrime 33619 },
  { lower := 34391, upper := 34416, witness := RowWitness.topPrime 34381 },
  { lower := 36982, upper := 37004, witness := RowWitness.topPrime 36979 },
  { lower := 43940, upper := 43964, witness := RowWitness.topPrime 43933 },
  { lower := 48778, upper := 48790, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49171, witness := RowWitness.topPrime 49139 },
  { lower := 50430, upper := 50462, witness := RowWitness.topPrime 50423 },
  { lower := 65625, upper := 65651, witness := RowWitness.topPrime 65617 },
  { lower := 68782, upper := 68791, witness := RowWitness.topPrime 68777 },
  { lower := 73205, upper := 73208, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73736, witness := RowWitness.topPrime 73727 },
  { lower := 327701, upper := 327721, witness := RowWitness.topPrime 327689 },
  { lower := 658503, upper := 658528, witness := RowWitness.topPrime 658487 },
  { lower := 658529, upper := 658530, witness := RowWitness.topPrime 658507 }
]

def row042_layers : List CoverLayer := [
  { lower := 1722, upper := 3444, M := 39 },
  { lower := 3444, upper := 6888, M := 37 },
  { lower := 6888, upper := 13776, M := 36 },
  { lower := 13776, upper := 27552, M := 35 },
  { lower := 27552, upper := 55104, M := 33 },
  { lower := 55104, upper := 110208, M := 32 },
  { lower := 110208, upper := 220416, M := 31 },
  { lower := 220416, upper := 440832, M := 30 },
  { lower := 440832, upper := 881664, M := 29 },
  { lower := 881664, upper := 1763328, M := 27 },
  { lower := 1763328, upper := 3526656, M := 26 },
  { lower := 3526656, upper := 7053312, M := 25 },
  { lower := 7053312, upper := 14106624, M := 24 },
  { lower := 14106624, upper := 28213248, M := 24 },
  { lower := 28213248, upper := 56426496, M := 23 },
  { lower := 56426496, upper := 112852992, M := 22 },
  { lower := 112852992, upper := 225705984, M := 21 },
  { lower := 225705984, upper := 451411968, M := 20 },
  { lower := 451411968, upper := 902823936, M := 19 },
  { lower := 902823936, upper := 1805647872, M := 19 },
  { lower := 1805647872, upper := 3611295744, M := 18 },
  { lower := 3611295744, upper := 7222591488, M := 17 },
  { lower := 7222591488, upper := 14445182976, M := 17 },
  { lower := 14445182976, upper := 28890365952, M := 16 },
  { lower := 28890365952, upper := 57780731904, M := 16 },
  { lower := 57780731904, upper := 115561463808, M := 15 },
  { lower := 115561463808, upper := 231122927616, M := 14 },
  { lower := 231122927616, upper := 462245855232, M := 14 },
  { lower := 462245855232, upper := 924491710464, M := 13 },
  { lower := 924491710464, upper := 1848983420928, M := 13 },
  { lower := 1848983420928, upper := 3697966841856, M := 12 },
  { lower := 3697966841856, upper := 7395933683712, M := 12 },
  { lower := 7395933683712, upper := 14791867367424, M := 12 },
  { lower := 14791867367424, upper := 29583734734848, M := 11 },
  { lower := 29583734734848, upper := 59167469469696, M := 11 },
  { lower := 59167469469696, upper := 118334938939392, M := 10 },
  { lower := 118334938939392, upper := 236669877878784, M := 10 },
  { lower := 236669877878784, upper := 473339755757568, M := 10 },
  { lower := 473339755757568, upper := 946679511515136, M := 9 },
  { lower := 946679511515136, upper := 1893359023030272, M := 9 },
  { lower := 1893359023030272, upper := 3786718046060544, M := 9 },
  { lower := 3786718046060544, upper := 7573436092121088, M := 8 },
  { lower := 7573436092121088, upper := 15146872184242176, M := 8 },
  { lower := 15146872184242176, upper := 30293744368484352, M := 8 },
  { lower := 30293744368484352, upper := 60587488736968704, M := 7 },
  { lower := 60587488736968704, upper := 121174977473937408, M := 7 },
  { lower := 121174977473937408, upper := 242349954947874816, M := 7 },
  { lower := 242349954947874816, upper := 484699909895749632, M := 7 },
  { lower := 484699909895749632, upper := 969399819791499264, M := 6 },
  { lower := 969399819791499264, upper := 1938799639582998528, M := 6 },
  { lower := 1938799639582998528, upper := 3877599279165997056, M := 6 },
  { lower := 3877599279165997056, upper := 7755198558331994112, M := 6 },
  { lower := 7755198558331994112, upper := 15510397116663988224, M := 6 },
  { lower := 15510397116663988224, upper := 31020794233327976448, M := 5 },
  { lower := 31020794233327976448, upper := 62041588466655952896, M := 5 },
  { lower := 62041588466655952896, upper := 124083176933311905792, M := 5 },
  { lower := 124083176933311905792, upper := 248166353866623811584, M := 5 },
  { lower := 248166353866623811584, upper := 496332707733247623168, M := 5 },
  { lower := 496332707733247623168, upper := 992665415466495246336, M := 4 },
  { lower := 992665415466495246336, upper := 1985330830932990492672, M := 4 },
  { lower := 1985330830932990492672, upper := 3970661661865980985344, M := 4 },
  { lower := 3970661661865980985344, upper := 7941323323731961970688, M := 4 },
  { lower := 7941323323731961970688, upper := 15882646647463923941376, M := 4 },
  { lower := 15882646647463923941376, upper := 31765293294927847882752, M := 4 },
  { lower := 31765293294927847882752, upper := 63530586589855695765504, M := 4 },
  { lower := 63530586589855695765504, upper := 127061173179711391531008, M := 4 },
  { lower := 127061173179711391531008, upper := 254122346359422783062016, M := 3 },
  { lower := 254122346359422783062016, upper := 508244692718845566124032, M := 3 },
  { lower := 508244692718845566124032, upper := 1016489385437691132248064, M := 3 },
  { lower := 1016489385437691132248064, upper := 2032978770875382264496128, M := 3 },
  { lower := 2032978770875382264496128, upper := 4065957541750764528992256, M := 3 },
  { lower := 4065957541750764528992256, upper := 8131915083501529057984512, M := 3 },
  { lower := 8131915083501529057984512, upper := 16263830167003058115969024, M := 3 },
  { lower := 16263830167003058115969024, upper := 32527660334006116231938048, M := 3 },
  { lower := 32527660334006116231938048, upper := 65055320668012232463876096, M := 3 },
  { lower := 65055320668012232463876096, upper := 130110641336024464927752192, M := 3 },
  { lower := 130110641336024464927752192, upper := 260221282672048929855504384, M := 2 },
  { lower := 260221282672048929855504384, upper := 520442565344097859711008768, M := 2 },
  { lower := 520442565344097859711008768, upper := 1040885130688195719422017536, M := 2 },
  { lower := 1040885130688195719422017536, upper := 2081770261376391438844035072, M := 2 },
  { lower := 2081770261376391438844035072, upper := 4163540522752782877688070144, M := 2 },
  { lower := 4163540522752782877688070144, upper := 8327081045505565755376140288, M := 2 },
  { lower := 8327081045505565755376140288, upper := 16654162091011131510752280576, M := 2 },
  { lower := 16654162091011131510752280576, upper := 33308324182022263021504561152, M := 2 },
  { lower := 33308324182022263021504561152, upper := 66616648364044526043009122304, M := 2 },
  { lower := 66616648364044526043009122304, upper := 133233296728089052086018244608, M := 2 },
  { lower := 133233296728089052086018244608, upper := 266466593456178104172036489216, M := 2 },
  { lower := 266466593456178104172036489216, upper := 532933186912356208344072978432, M := 2 },
  { lower := 532933186912356208344072978432, upper := 1065866373824712416688145956864, M := 2 },
  { lower := 1065866373824712416688145956864, upper := 2131732747649424833376291913728, M := 2 },
  { lower := 2131732747649424833376291913728, upper := 4263465495298849666752583827456, M := 2 },
  { lower := 4263465495298849666752583827456, upper := 8526930990597699333505167654912, M := 2 },
  { lower := 8526930990597699333505167654912, upper := 10000000000000000000000000000000, M := 2 }
]

def row042 : FiniteCoverRow := {
  height := row042_height,
  goods := row042_goods,
  layers := row042_layers
}

theorem row042_registered :
    decide (row042.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row042_goods_checked :
    row042.goods.all (goodSegmentCheck row042.height.i row042.height.r row042.height.s) = true := by
  decide +kernel

theorem row042_small_checked :
    coverCheck (2 * row042.height.i + 2) (row042.height.i * (row042.height.i - 1) - 1)
      (row042.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row042_layerCover_checked :
    coverCheck (row042.height.i * (row042.height.i - 1)) (row042.height.n0 - 1)
      (row042.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row042_layer000_checked :
    coverLayerCheck row042.height row042.goods { lower := 1722, upper := 3444, M := 39 } = true := by
  decide +kernel

theorem row042_layer001_checked :
    coverLayerCheck row042.height row042.goods { lower := 3444, upper := 6888, M := 37 } = true := by
  decide +kernel

theorem row042_layer002_checked :
    coverLayerCheck row042.height row042.goods { lower := 6888, upper := 13776, M := 36 } = true := by
  decide +kernel

theorem row042_layer003_checked :
    coverLayerCheck row042.height row042.goods { lower := 13776, upper := 27552, M := 35 } = true := by
  decide +kernel

theorem row042_layer004_checked :
    coverLayerCheck row042.height row042.goods { lower := 27552, upper := 55104, M := 33 } = true := by
  decide +kernel

theorem row042_layer005_checked :
    coverLayerCheck row042.height row042.goods { lower := 55104, upper := 110208, M := 32 } = true := by
  decide +kernel

theorem row042_layer006_checked :
    coverLayerCheck row042.height row042.goods { lower := 110208, upper := 220416, M := 31 } = true := by
  decide +kernel

theorem row042_layer007_checked :
    coverLayerCheck row042.height row042.goods { lower := 220416, upper := 440832, M := 30 } = true := by
  decide +kernel

theorem row042_layer008_checked :
    coverLayerCheck row042.height row042.goods { lower := 440832, upper := 881664, M := 29 } = true := by
  decide +kernel

theorem row042_layer009_checked :
    coverLayerCheck row042.height row042.goods { lower := 881664, upper := 1763328, M := 27 } = true := by
  decide +kernel

theorem row042_layer010_checked :
    coverLayerCheck row042.height row042.goods { lower := 1763328, upper := 3526656, M := 26 } = true := by
  decide +kernel

theorem row042_layer011_checked :
    coverLayerCheck row042.height row042.goods { lower := 3526656, upper := 7053312, M := 25 } = true := by
  decide +kernel

theorem row042_layer012_checked :
    coverLayerCheck row042.height row042.goods { lower := 7053312, upper := 14106624, M := 24 } = true := by
  decide +kernel

theorem row042_layer013_checked :
    coverLayerCheck row042.height row042.goods { lower := 14106624, upper := 28213248, M := 24 } = true := by
  decide +kernel

theorem row042_layer014_checked :
    coverLayerCheck row042.height row042.goods { lower := 28213248, upper := 56426496, M := 23 } = true := by
  decide +kernel

theorem row042_layer015_checked :
    coverLayerCheck row042.height row042.goods { lower := 56426496, upper := 112852992, M := 22 } = true := by
  decide +kernel

theorem row042_layer016_checked :
    coverLayerCheck row042.height row042.goods { lower := 112852992, upper := 225705984, M := 21 } = true := by
  decide +kernel

theorem row042_layer017_checked :
    coverLayerCheck row042.height row042.goods { lower := 225705984, upper := 451411968, M := 20 } = true := by
  decide +kernel

theorem row042_layer018_checked :
    coverLayerCheck row042.height row042.goods { lower := 451411968, upper := 902823936, M := 19 } = true := by
  decide +kernel

theorem row042_layer019_checked :
    coverLayerCheck row042.height row042.goods { lower := 902823936, upper := 1805647872, M := 19 } = true := by
  decide +kernel

theorem row042_layer020_checked :
    coverLayerCheck row042.height row042.goods { lower := 1805647872, upper := 3611295744, M := 18 } = true := by
  decide +kernel

theorem row042_layer021_checked :
    coverLayerCheck row042.height row042.goods { lower := 3611295744, upper := 7222591488, M := 17 } = true := by
  decide +kernel

theorem row042_layer022_checked :
    coverLayerCheck row042.height row042.goods { lower := 7222591488, upper := 14445182976, M := 17 } = true := by
  decide +kernel

theorem row042_layer023_checked :
    coverLayerCheck row042.height row042.goods { lower := 14445182976, upper := 28890365952, M := 16 } = true := by
  decide +kernel

theorem row042_layer024_checked :
    coverLayerCheck row042.height row042.goods { lower := 28890365952, upper := 57780731904, M := 16 } = true := by
  decide +kernel

theorem row042_layer025_checked :
    coverLayerCheck row042.height row042.goods { lower := 57780731904, upper := 115561463808, M := 15 } = true := by
  decide +kernel

theorem row042_layer026_checked :
    coverLayerCheck row042.height row042.goods { lower := 115561463808, upper := 231122927616, M := 14 } = true := by
  decide +kernel

theorem row042_layer027_checked :
    coverLayerCheck row042.height row042.goods { lower := 231122927616, upper := 462245855232, M := 14 } = true := by
  decide +kernel

theorem row042_layer028_checked :
    coverLayerCheck row042.height row042.goods { lower := 462245855232, upper := 924491710464, M := 13 } = true := by
  decide +kernel

theorem row042_layer029_checked :
    coverLayerCheck row042.height row042.goods { lower := 924491710464, upper := 1848983420928, M := 13 } = true := by
  decide +kernel

theorem row042_layer030_checked :
    coverLayerCheck row042.height row042.goods { lower := 1848983420928, upper := 3697966841856, M := 12 } = true := by
  decide +kernel

theorem row042_layer031_checked :
    coverLayerCheck row042.height row042.goods { lower := 3697966841856, upper := 7395933683712, M := 12 } = true := by
  decide +kernel

theorem row042_layer032_checked :
    coverLayerCheck row042.height row042.goods { lower := 7395933683712, upper := 14791867367424, M := 12 } = true := by
  decide +kernel

theorem row042_layer033_checked :
    coverLayerCheck row042.height row042.goods { lower := 14791867367424, upper := 29583734734848, M := 11 } = true := by
  decide +kernel

theorem row042_layer034_checked :
    coverLayerCheck row042.height row042.goods { lower := 29583734734848, upper := 59167469469696, M := 11 } = true := by
  decide +kernel

theorem row042_layer035_checked :
    coverLayerCheck row042.height row042.goods { lower := 59167469469696, upper := 118334938939392, M := 10 } = true := by
  decide +kernel

theorem row042_layer036_checked :
    coverLayerCheck row042.height row042.goods { lower := 118334938939392, upper := 236669877878784, M := 10 } = true := by
  decide +kernel

theorem row042_layer037_checked :
    coverLayerCheck row042.height row042.goods { lower := 236669877878784, upper := 473339755757568, M := 10 } = true := by
  decide +kernel

theorem row042_layer038_checked :
    coverLayerCheck row042.height row042.goods { lower := 473339755757568, upper := 946679511515136, M := 9 } = true := by
  decide +kernel

theorem row042_layer039_checked :
    coverLayerCheck row042.height row042.goods { lower := 946679511515136, upper := 1893359023030272, M := 9 } = true := by
  decide +kernel

theorem row042_layer040_checked :
    coverLayerCheck row042.height row042.goods { lower := 1893359023030272, upper := 3786718046060544, M := 9 } = true := by
  decide +kernel

theorem row042_layer041_checked :
    coverLayerCheck row042.height row042.goods { lower := 3786718046060544, upper := 7573436092121088, M := 8 } = true := by
  decide +kernel

theorem row042_layer042_checked :
    coverLayerCheck row042.height row042.goods { lower := 7573436092121088, upper := 15146872184242176, M := 8 } = true := by
  decide +kernel

theorem row042_layer043_checked :
    coverLayerCheck row042.height row042.goods { lower := 15146872184242176, upper := 30293744368484352, M := 8 } = true := by
  decide +kernel

theorem row042_layer044_checked :
    coverLayerCheck row042.height row042.goods { lower := 30293744368484352, upper := 60587488736968704, M := 7 } = true := by
  decide +kernel

theorem row042_layer045_checked :
    coverLayerCheck row042.height row042.goods { lower := 60587488736968704, upper := 121174977473937408, M := 7 } = true := by
  decide +kernel

theorem row042_layer046_checked :
    coverLayerCheck row042.height row042.goods { lower := 121174977473937408, upper := 242349954947874816, M := 7 } = true := by
  decide +kernel

theorem row042_layer047_checked :
    coverLayerCheck row042.height row042.goods { lower := 242349954947874816, upper := 484699909895749632, M := 7 } = true := by
  decide +kernel

theorem row042_layer048_checked :
    coverLayerCheck row042.height row042.goods { lower := 484699909895749632, upper := 969399819791499264, M := 6 } = true := by
  decide +kernel

theorem row042_layer049_checked :
    coverLayerCheck row042.height row042.goods { lower := 969399819791499264, upper := 1938799639582998528, M := 6 } = true := by
  decide +kernel

theorem row042_layer050_checked :
    coverLayerCheck row042.height row042.goods { lower := 1938799639582998528, upper := 3877599279165997056, M := 6 } = true := by
  decide +kernel

theorem row042_layer051_checked :
    coverLayerCheck row042.height row042.goods { lower := 3877599279165997056, upper := 7755198558331994112, M := 6 } = true := by
  decide +kernel

theorem row042_layer052_checked :
    coverLayerCheck row042.height row042.goods { lower := 7755198558331994112, upper := 15510397116663988224, M := 6 } = true := by
  decide +kernel

theorem row042_layer053_checked :
    coverLayerCheck row042.height row042.goods { lower := 15510397116663988224, upper := 31020794233327976448, M := 5 } = true := by
  decide +kernel

theorem row042_layer054_checked :
    coverLayerCheck row042.height row042.goods { lower := 31020794233327976448, upper := 62041588466655952896, M := 5 } = true := by
  decide +kernel

theorem row042_layer055_checked :
    coverLayerCheck row042.height row042.goods { lower := 62041588466655952896, upper := 124083176933311905792, M := 5 } = true := by
  decide +kernel

theorem row042_layer056_checked :
    coverLayerCheck row042.height row042.goods { lower := 124083176933311905792, upper := 248166353866623811584, M := 5 } = true := by
  decide +kernel

theorem row042_layer057_checked :
    coverLayerCheck row042.height row042.goods { lower := 248166353866623811584, upper := 496332707733247623168, M := 5 } = true := by
  decide +kernel

theorem row042_layer058_checked :
    coverLayerCheck row042.height row042.goods { lower := 496332707733247623168, upper := 992665415466495246336, M := 4 } = true := by
  decide +kernel

theorem row042_layer059_checked :
    coverLayerCheck row042.height row042.goods { lower := 992665415466495246336, upper := 1985330830932990492672, M := 4 } = true := by
  decide +kernel

theorem row042_layer060_checked :
    coverLayerCheck row042.height row042.goods { lower := 1985330830932990492672, upper := 3970661661865980985344, M := 4 } = true := by
  decide +kernel

theorem row042_layer061_checked :
    coverLayerCheck row042.height row042.goods { lower := 3970661661865980985344, upper := 7941323323731961970688, M := 4 } = true := by
  decide +kernel

theorem row042_layer062_checked :
    coverLayerCheck row042.height row042.goods { lower := 7941323323731961970688, upper := 15882646647463923941376, M := 4 } = true := by
  decide +kernel

theorem row042_layer063_checked :
    coverLayerCheck row042.height row042.goods { lower := 15882646647463923941376, upper := 31765293294927847882752, M := 4 } = true := by
  decide +kernel

theorem row042_layer064_checked :
    coverLayerCheck row042.height row042.goods { lower := 31765293294927847882752, upper := 63530586589855695765504, M := 4 } = true := by
  decide +kernel

theorem row042_layer065_checked :
    coverLayerCheck row042.height row042.goods { lower := 63530586589855695765504, upper := 127061173179711391531008, M := 4 } = true := by
  decide +kernel

theorem row042_layer066_checked :
    coverLayerCheck row042.height row042.goods { lower := 127061173179711391531008, upper := 254122346359422783062016, M := 3 } = true := by
  decide +kernel

theorem row042_layer067_checked :
    coverLayerCheck row042.height row042.goods { lower := 254122346359422783062016, upper := 508244692718845566124032, M := 3 } = true := by
  decide +kernel

theorem row042_layer068_checked :
    coverLayerCheck row042.height row042.goods { lower := 508244692718845566124032, upper := 1016489385437691132248064, M := 3 } = true := by
  decide +kernel

theorem row042_layer069_checked :
    coverLayerCheck row042.height row042.goods { lower := 1016489385437691132248064, upper := 2032978770875382264496128, M := 3 } = true := by
  decide +kernel

theorem row042_layer070_checked :
    coverLayerCheck row042.height row042.goods { lower := 2032978770875382264496128, upper := 4065957541750764528992256, M := 3 } = true := by
  decide +kernel

theorem row042_layer071_checked :
    coverLayerCheck row042.height row042.goods { lower := 4065957541750764528992256, upper := 8131915083501529057984512, M := 3 } = true := by
  decide +kernel

theorem row042_layer072_checked :
    coverLayerCheck row042.height row042.goods { lower := 8131915083501529057984512, upper := 16263830167003058115969024, M := 3 } = true := by
  decide +kernel

theorem row042_layer073_checked :
    coverLayerCheck row042.height row042.goods { lower := 16263830167003058115969024, upper := 32527660334006116231938048, M := 3 } = true := by
  decide +kernel

theorem row042_layer074_checked :
    coverLayerCheck row042.height row042.goods { lower := 32527660334006116231938048, upper := 65055320668012232463876096, M := 3 } = true := by
  decide +kernel

theorem row042_layer075_checked :
    coverLayerCheck row042.height row042.goods { lower := 65055320668012232463876096, upper := 130110641336024464927752192, M := 3 } = true := by
  decide +kernel

theorem row042_layer076_checked :
    coverLayerCheck row042.height row042.goods { lower := 130110641336024464927752192, upper := 260221282672048929855504384, M := 2 } = true := by
  decide +kernel

theorem row042_layer077_checked :
    coverLayerCheck row042.height row042.goods { lower := 260221282672048929855504384, upper := 520442565344097859711008768, M := 2 } = true := by
  decide +kernel

theorem row042_layer078_checked :
    coverLayerCheck row042.height row042.goods { lower := 520442565344097859711008768, upper := 1040885130688195719422017536, M := 2 } = true := by
  decide +kernel

theorem row042_layer079_checked :
    coverLayerCheck row042.height row042.goods { lower := 1040885130688195719422017536, upper := 2081770261376391438844035072, M := 2 } = true := by
  decide +kernel

theorem row042_layer080_checked :
    coverLayerCheck row042.height row042.goods { lower := 2081770261376391438844035072, upper := 4163540522752782877688070144, M := 2 } = true := by
  decide +kernel

theorem row042_layer081_checked :
    coverLayerCheck row042.height row042.goods { lower := 4163540522752782877688070144, upper := 8327081045505565755376140288, M := 2 } = true := by
  decide +kernel

theorem row042_layer082_checked :
    coverLayerCheck row042.height row042.goods { lower := 8327081045505565755376140288, upper := 16654162091011131510752280576, M := 2 } = true := by
  decide +kernel

theorem row042_layer083_checked :
    coverLayerCheck row042.height row042.goods { lower := 16654162091011131510752280576, upper := 33308324182022263021504561152, M := 2 } = true := by
  decide +kernel

theorem row042_layer084_checked :
    coverLayerCheck row042.height row042.goods { lower := 33308324182022263021504561152, upper := 66616648364044526043009122304, M := 2 } = true := by
  decide +kernel

theorem row042_layer085_checked :
    coverLayerCheck row042.height row042.goods { lower := 66616648364044526043009122304, upper := 133233296728089052086018244608, M := 2 } = true := by
  decide +kernel

theorem row042_layer086_checked :
    coverLayerCheck row042.height row042.goods { lower := 133233296728089052086018244608, upper := 266466593456178104172036489216, M := 2 } = true := by
  decide +kernel

theorem row042_layer087_checked :
    coverLayerCheck row042.height row042.goods { lower := 266466593456178104172036489216, upper := 532933186912356208344072978432, M := 2 } = true := by
  decide +kernel

theorem row042_layer088_checked :
    coverLayerCheck row042.height row042.goods { lower := 532933186912356208344072978432, upper := 1065866373824712416688145956864, M := 2 } = true := by
  decide +kernel

theorem row042_layer089_checked :
    coverLayerCheck row042.height row042.goods { lower := 1065866373824712416688145956864, upper := 2131732747649424833376291913728, M := 2 } = true := by
  decide +kernel

theorem row042_layer090_checked :
    coverLayerCheck row042.height row042.goods { lower := 2131732747649424833376291913728, upper := 4263465495298849666752583827456, M := 2 } = true := by
  decide +kernel

theorem row042_layer091_checked :
    coverLayerCheck row042.height row042.goods { lower := 4263465495298849666752583827456, upper := 8526930990597699333505167654912, M := 2 } = true := by
  decide +kernel

theorem row042_layer092_checked :
    coverLayerCheck row042.height row042.goods { lower := 8526930990597699333505167654912, upper := 10000000000000000000000000000000, M := 2 } = true := by
  decide +kernel

theorem row042_layers_checked :
    row042.layers.all (coverLayerCheck row042.height row042.goods) = true := by
  change List.all [
    { lower := 1722, upper := 3444, M := 39 },
    { lower := 3444, upper := 6888, M := 37 },
    { lower := 6888, upper := 13776, M := 36 },
    { lower := 13776, upper := 27552, M := 35 },
    { lower := 27552, upper := 55104, M := 33 },
    { lower := 55104, upper := 110208, M := 32 },
    { lower := 110208, upper := 220416, M := 31 },
    { lower := 220416, upper := 440832, M := 30 },
    { lower := 440832, upper := 881664, M := 29 },
    { lower := 881664, upper := 1763328, M := 27 },
    { lower := 1763328, upper := 3526656, M := 26 },
    { lower := 3526656, upper := 7053312, M := 25 },
    { lower := 7053312, upper := 14106624, M := 24 },
    { lower := 14106624, upper := 28213248, M := 24 },
    { lower := 28213248, upper := 56426496, M := 23 },
    { lower := 56426496, upper := 112852992, M := 22 },
    { lower := 112852992, upper := 225705984, M := 21 },
    { lower := 225705984, upper := 451411968, M := 20 },
    { lower := 451411968, upper := 902823936, M := 19 },
    { lower := 902823936, upper := 1805647872, M := 19 },
    { lower := 1805647872, upper := 3611295744, M := 18 },
    { lower := 3611295744, upper := 7222591488, M := 17 },
    { lower := 7222591488, upper := 14445182976, M := 17 },
    { lower := 14445182976, upper := 28890365952, M := 16 },
    { lower := 28890365952, upper := 57780731904, M := 16 },
    { lower := 57780731904, upper := 115561463808, M := 15 },
    { lower := 115561463808, upper := 231122927616, M := 14 },
    { lower := 231122927616, upper := 462245855232, M := 14 },
    { lower := 462245855232, upper := 924491710464, M := 13 },
    { lower := 924491710464, upper := 1848983420928, M := 13 },
    { lower := 1848983420928, upper := 3697966841856, M := 12 },
    { lower := 3697966841856, upper := 7395933683712, M := 12 },
    { lower := 7395933683712, upper := 14791867367424, M := 12 },
    { lower := 14791867367424, upper := 29583734734848, M := 11 },
    { lower := 29583734734848, upper := 59167469469696, M := 11 },
    { lower := 59167469469696, upper := 118334938939392, M := 10 },
    { lower := 118334938939392, upper := 236669877878784, M := 10 },
    { lower := 236669877878784, upper := 473339755757568, M := 10 },
    { lower := 473339755757568, upper := 946679511515136, M := 9 },
    { lower := 946679511515136, upper := 1893359023030272, M := 9 },
    { lower := 1893359023030272, upper := 3786718046060544, M := 9 },
    { lower := 3786718046060544, upper := 7573436092121088, M := 8 },
    { lower := 7573436092121088, upper := 15146872184242176, M := 8 },
    { lower := 15146872184242176, upper := 30293744368484352, M := 8 },
    { lower := 30293744368484352, upper := 60587488736968704, M := 7 },
    { lower := 60587488736968704, upper := 121174977473937408, M := 7 },
    { lower := 121174977473937408, upper := 242349954947874816, M := 7 },
    { lower := 242349954947874816, upper := 484699909895749632, M := 7 },
    { lower := 484699909895749632, upper := 969399819791499264, M := 6 },
    { lower := 969399819791499264, upper := 1938799639582998528, M := 6 },
    { lower := 1938799639582998528, upper := 3877599279165997056, M := 6 },
    { lower := 3877599279165997056, upper := 7755198558331994112, M := 6 },
    { lower := 7755198558331994112, upper := 15510397116663988224, M := 6 },
    { lower := 15510397116663988224, upper := 31020794233327976448, M := 5 },
    { lower := 31020794233327976448, upper := 62041588466655952896, M := 5 },
    { lower := 62041588466655952896, upper := 124083176933311905792, M := 5 },
    { lower := 124083176933311905792, upper := 248166353866623811584, M := 5 },
    { lower := 248166353866623811584, upper := 496332707733247623168, M := 5 },
    { lower := 496332707733247623168, upper := 992665415466495246336, M := 4 },
    { lower := 992665415466495246336, upper := 1985330830932990492672, M := 4 },
    { lower := 1985330830932990492672, upper := 3970661661865980985344, M := 4 },
    { lower := 3970661661865980985344, upper := 7941323323731961970688, M := 4 },
    { lower := 7941323323731961970688, upper := 15882646647463923941376, M := 4 },
    { lower := 15882646647463923941376, upper := 31765293294927847882752, M := 4 },
    { lower := 31765293294927847882752, upper := 63530586589855695765504, M := 4 },
    { lower := 63530586589855695765504, upper := 127061173179711391531008, M := 4 },
    { lower := 127061173179711391531008, upper := 254122346359422783062016, M := 3 },
    { lower := 254122346359422783062016, upper := 508244692718845566124032, M := 3 },
    { lower := 508244692718845566124032, upper := 1016489385437691132248064, M := 3 },
    { lower := 1016489385437691132248064, upper := 2032978770875382264496128, M := 3 },
    { lower := 2032978770875382264496128, upper := 4065957541750764528992256, M := 3 },
    { lower := 4065957541750764528992256, upper := 8131915083501529057984512, M := 3 },
    { lower := 8131915083501529057984512, upper := 16263830167003058115969024, M := 3 },
    { lower := 16263830167003058115969024, upper := 32527660334006116231938048, M := 3 },
    { lower := 32527660334006116231938048, upper := 65055320668012232463876096, M := 3 },
    { lower := 65055320668012232463876096, upper := 130110641336024464927752192, M := 3 },
    { lower := 130110641336024464927752192, upper := 260221282672048929855504384, M := 2 },
    { lower := 260221282672048929855504384, upper := 520442565344097859711008768, M := 2 },
    { lower := 520442565344097859711008768, upper := 1040885130688195719422017536, M := 2 },
    { lower := 1040885130688195719422017536, upper := 2081770261376391438844035072, M := 2 },
    { lower := 2081770261376391438844035072, upper := 4163540522752782877688070144, M := 2 },
    { lower := 4163540522752782877688070144, upper := 8327081045505565755376140288, M := 2 },
    { lower := 8327081045505565755376140288, upper := 16654162091011131510752280576, M := 2 },
    { lower := 16654162091011131510752280576, upper := 33308324182022263021504561152, M := 2 },
    { lower := 33308324182022263021504561152, upper := 66616648364044526043009122304, M := 2 },
    { lower := 66616648364044526043009122304, upper := 133233296728089052086018244608, M := 2 },
    { lower := 133233296728089052086018244608, upper := 266466593456178104172036489216, M := 2 },
    { lower := 266466593456178104172036489216, upper := 532933186912356208344072978432, M := 2 },
    { lower := 532933186912356208344072978432, upper := 1065866373824712416688145956864, M := 2 },
    { lower := 1065866373824712416688145956864, upper := 2131732747649424833376291913728, M := 2 },
    { lower := 2131732747649424833376291913728, upper := 4263465495298849666752583827456, M := 2 },
    { lower := 4263465495298849666752583827456, upper := 8526930990597699333505167654912, M := 2 },
    { lower := 8526930990597699333505167654912, upper := 10000000000000000000000000000000, M := 2 }
  ] (coverLayerCheck row042.height row042.goods) = true
  simp only [List.all_cons, List.all_nil,
    row042_layer000_checked,
    row042_layer001_checked,
    row042_layer002_checked,
    row042_layer003_checked,
    row042_layer004_checked,
    row042_layer005_checked,
    row042_layer006_checked,
    row042_layer007_checked,
    row042_layer008_checked,
    row042_layer009_checked,
    row042_layer010_checked,
    row042_layer011_checked,
    row042_layer012_checked,
    row042_layer013_checked,
    row042_layer014_checked,
    row042_layer015_checked,
    row042_layer016_checked,
    row042_layer017_checked,
    row042_layer018_checked,
    row042_layer019_checked,
    row042_layer020_checked,
    row042_layer021_checked,
    row042_layer022_checked,
    row042_layer023_checked,
    row042_layer024_checked,
    row042_layer025_checked,
    row042_layer026_checked,
    row042_layer027_checked,
    row042_layer028_checked,
    row042_layer029_checked,
    row042_layer030_checked,
    row042_layer031_checked,
    row042_layer032_checked,
    row042_layer033_checked,
    row042_layer034_checked,
    row042_layer035_checked,
    row042_layer036_checked,
    row042_layer037_checked,
    row042_layer038_checked,
    row042_layer039_checked,
    row042_layer040_checked,
    row042_layer041_checked,
    row042_layer042_checked,
    row042_layer043_checked,
    row042_layer044_checked,
    row042_layer045_checked,
    row042_layer046_checked,
    row042_layer047_checked,
    row042_layer048_checked,
    row042_layer049_checked,
    row042_layer050_checked,
    row042_layer051_checked,
    row042_layer052_checked,
    row042_layer053_checked,
    row042_layer054_checked,
    row042_layer055_checked,
    row042_layer056_checked,
    row042_layer057_checked,
    row042_layer058_checked,
    row042_layer059_checked,
    row042_layer060_checked,
    row042_layer061_checked,
    row042_layer062_checked,
    row042_layer063_checked,
    row042_layer064_checked,
    row042_layer065_checked,
    row042_layer066_checked,
    row042_layer067_checked,
    row042_layer068_checked,
    row042_layer069_checked,
    row042_layer070_checked,
    row042_layer071_checked,
    row042_layer072_checked,
    row042_layer073_checked,
    row042_layer074_checked,
    row042_layer075_checked,
    row042_layer076_checked,
    row042_layer077_checked,
    row042_layer078_checked,
    row042_layer079_checked,
    row042_layer080_checked,
    row042_layer081_checked,
    row042_layer082_checked,
    row042_layer083_checked,
    row042_layer084_checked,
    row042_layer085_checked,
    row042_layer086_checked,
    row042_layer087_checked,
    row042_layer088_checked,
    row042_layer089_checked,
    row042_layer090_checked,
    row042_layer091_checked,
    row042_layer092_checked,
    Bool.true_and]

theorem row042_checked : finiteCoverRowCheck row042 = true := by
  simp only [finiteCoverRowCheck, row042_registered, row042_goods_checked,
    row042_small_checked, row042_layerCover_checked, row042_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row042_checked

end B699LowIndex
