import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row082_height : HeightCertificateDatum := { i := 82, r := 27, s := 57, n0Power10 := 10 }

def row082_goods : List GoodSegment := [
  { lower := 166, upper := 244, witness := RowWitness.topPrime 163 },
  { lower := 245, upper := 322, witness := RowWitness.topPrime 241 },
  { lower := 323, upper := 398, witness := RowWitness.topPrime 317 },
  { lower := 399, upper := 478, witness := RowWitness.topPrime 397 },
  { lower := 479, upper := 560, witness := RowWitness.topPrime 479 },
  { lower := 561, upper := 638, witness := RowWitness.topPrime 557 },
  { lower := 639, upper := 712, witness := RowWitness.topPrime 631 },
  { lower := 713, upper := 790, witness := RowWitness.topPrime 709 },
  { lower := 791, upper := 868, witness := RowWitness.topPrime 787 },
  { lower := 869, upper := 944, witness := RowWitness.topPrime 863 },
  { lower := 945, upper := 1022, witness := RowWitness.topPrime 941 },
  { lower := 1023, upper := 1102, witness := RowWitness.topPrime 1021 },
  { lower := 1103, upper := 1184, witness := RowWitness.topPrime 1103 },
  { lower := 1185, upper := 1262, witness := RowWitness.topPrime 1181 },
  { lower := 1263, upper := 1340, witness := RowWitness.topPrime 1259 },
  { lower := 1341, upper := 1408, witness := RowWitness.topPrime 1327 },
  { lower := 1409, upper := 1490, witness := RowWitness.topPrime 1409 },
  { lower := 1491, upper := 1570, witness := RowWitness.topPrime 1489 },
  { lower := 1571, upper := 1652, witness := RowWitness.topPrime 1571 },
  { lower := 1653, upper := 1718, witness := RowWitness.topPrime 1637 },
  { lower := 1719, upper := 1790, witness := RowWitness.topPrime 1709 },
  { lower := 1791, upper := 1870, witness := RowWitness.topPrime 1789 },
  { lower := 1871, upper := 1952, witness := RowWitness.topPrime 1871 },
  { lower := 1953, upper := 2032, witness := RowWitness.topPrime 1951 },
  { lower := 2033, upper := 2110, witness := RowWitness.topPrime 2029 },
  { lower := 2111, upper := 2192, witness := RowWitness.topPrime 2111 },
  { lower := 2193, upper := 2260, witness := RowWitness.topPrime 2179 },
  { lower := 2261, upper := 2332, witness := RowWitness.topPrime 2251 },
  { lower := 2333, upper := 2414, witness := RowWitness.topPrime 2333 },
  { lower := 2415, upper := 2492, witness := RowWitness.topPrime 2411 },
  { lower := 2493, upper := 2558, witness := RowWitness.topPrime 2477 },
  { lower := 2559, upper := 2638, witness := RowWitness.topPrime 2557 },
  { lower := 2639, upper := 2714, witness := RowWitness.topPrime 2633 },
  { lower := 2715, upper := 2794, witness := RowWitness.topPrime 2713 },
  { lower := 2795, upper := 2872, witness := RowWitness.topPrime 2791 },
  { lower := 2873, upper := 2942, witness := RowWitness.topPrime 2861 },
  { lower := 2943, upper := 3020, witness := RowWitness.topPrime 2939 },
  { lower := 3021, upper := 3100, witness := RowWitness.topPrime 3019 },
  { lower := 3101, upper := 3170, witness := RowWitness.topPrime 3089 },
  { lower := 3171, upper := 3250, witness := RowWitness.topPrime 3169 },
  { lower := 3251, upper := 3332, witness := RowWitness.topPrime 3251 },
  { lower := 3333, upper := 3412, witness := RowWitness.topPrime 3331 },
  { lower := 3413, upper := 3494, witness := RowWitness.topPrime 3413 },
  { lower := 3495, upper := 3572, witness := RowWitness.topPrime 3491 },
  { lower := 3573, upper := 3652, witness := RowWitness.topPrime 3571 },
  { lower := 3653, upper := 3724, witness := RowWitness.topPrime 3643 },
  { lower := 3725, upper := 3800, witness := RowWitness.topPrime 3719 },
  { lower := 3801, upper := 3878, witness := RowWitness.topPrime 3797 },
  { lower := 3879, upper := 3958, witness := RowWitness.topPrime 3877 },
  { lower := 3959, upper := 4028, witness := RowWitness.topPrime 3947 },
  { lower := 4029, upper := 4108, witness := RowWitness.topPrime 4027 },
  { lower := 4109, upper := 4180, witness := RowWitness.topPrime 4099 },
  { lower := 4181, upper := 4258, witness := RowWitness.topPrime 4177 },
  { lower := 4259, upper := 4340, witness := RowWitness.topPrime 4259 },
  { lower := 4341, upper := 4420, witness := RowWitness.topPrime 4339 },
  { lower := 4421, upper := 4502, witness := RowWitness.topPrime 4421 },
  { lower := 4503, upper := 4574, witness := RowWitness.topPrime 4493 },
  { lower := 4575, upper := 4648, witness := RowWitness.topPrime 4567 },
  { lower := 4649, upper := 4730, witness := RowWitness.topPrime 4649 },
  { lower := 4731, upper := 4810, witness := RowWitness.topPrime 4729 },
  { lower := 4811, upper := 4882, witness := RowWitness.topPrime 4801 },
  { lower := 4883, upper := 4958, witness := RowWitness.topPrime 4877 },
  { lower := 4959, upper := 5038, witness := RowWitness.topPrime 4957 },
  { lower := 5039, upper := 5120, witness := RowWitness.topPrime 5039 },
  { lower := 5121, upper := 5200, witness := RowWitness.topPrime 5119 },
  { lower := 5201, upper := 5278, witness := RowWitness.topPrime 5197 },
  { lower := 5279, upper := 5360, witness := RowWitness.topPrime 5279 },
  { lower := 5361, upper := 5432, witness := RowWitness.topPrime 5351 },
  { lower := 5433, upper := 5512, witness := RowWitness.topPrime 5431 },
  { lower := 5513, upper := 5588, witness := RowWitness.topPrime 5507 },
  { lower := 5589, upper := 5662, witness := RowWitness.topPrime 5581 },
  { lower := 5663, upper := 5740, witness := RowWitness.topPrime 5659 },
  { lower := 5741, upper := 5822, witness := RowWitness.topPrime 5741 },
  { lower := 5823, upper := 5902, witness := RowWitness.topPrime 5821 },
  { lower := 5903, upper := 5984, witness := RowWitness.topPrime 5903 },
  { lower := 5985, upper := 6062, witness := RowWitness.topPrime 5981 },
  { lower := 6063, upper := 6134, witness := RowWitness.topPrime 6053 },
  { lower := 6135, upper := 6214, witness := RowWitness.topPrime 6133 },
  { lower := 6215, upper := 6292, witness := RowWitness.topPrime 6211 },
  { lower := 6293, upper := 6368, witness := RowWitness.topPrime 6287 },
  { lower := 6369, upper := 6448, witness := RowWitness.topPrime 6367 },
  { lower := 6449, upper := 6530, witness := RowWitness.topPrime 6449 },
  { lower := 6531, upper := 6610, witness := RowWitness.topPrime 6529 },
  { lower := 6611, upper := 6688, witness := RowWitness.topPrime 6607 },
  { lower := 6689, upper := 6770, witness := RowWitness.topPrime 6689 },
  { lower := 6771, upper := 6808, witness := RowWitness.topPrime 6763 },
  { lower := 6859, upper := 6938, witness := RowWitness.topPrime 6857 },
  { lower := 6939, upper := 6958, witness := RowWitness.topPrime 6917 },
  { lower := 6962, upper := 7017, witness := RowWitness.topPrime 6961 },
  { lower := 7203, upper := 7274, witness := RowWitness.topPrime 7193 },
  { lower := 7275, upper := 7306, witness := RowWitness.topPrime 7253 },
  { lower := 7406, upper := 7474, witness := RowWitness.topPrime 7393 },
  { lower := 7475, upper := 7487, witness := RowWitness.topPrime 7459 },
  { lower := 7500, upper := 7580, witness := RowWitness.topPrime 7499 },
  { lower := 7581, upper := 7650, witness := RowWitness.topPrime 7577 },
  { lower := 7935, upper := 8014, witness := RowWitness.topPrime 7933 },
  { lower := 8015, upper := 8067, witness := RowWitness.topPrime 8011 },
  { lower := 8192, upper := 8206, witness := RowWitness.topPrime 8191 },
  { lower := 8214, upper := 8290, witness := RowWitness.topPrime 8209 },
  { lower := 8291, upper := 8295, witness := RowWitness.topPrime 8291 },
  { lower := 8303, upper := 8313, witness := RowWitness.topPrime 8297 },
  { lower := 8427, upper := 8504, witness := RowWitness.topPrime 8423 },
  { lower := 8505, upper := 8508, witness := RowWitness.topPrime 8501 },
  { lower := 8649, upper := 8656, witness := RowWitness.topPrime 8647 },
  { lower := 8664, upper := 8730, witness := RowWitness.topPrime 8663 },
  { lower := 8750, upper := 8828, witness := RowWitness.topPrime 8747 },
  { lower := 8829, upper := 8831, witness := RowWitness.topPrime 8821 },
  { lower := 8836, upper := 8869, witness := RowWitness.topPrime 8831 },
  { lower := 8978, upper := 9052, witness := RowWitness.topPrime 8971 },
  { lower := 9053, upper := 9074, witness := RowWitness.topPrime 9049 },
  { lower := 9245, upper := 9322, witness := RowWitness.topPrime 9241 },
  { lower := 9323, upper := 9342, witness := RowWitness.topPrime 9323 },
  { lower := 9375, upper := 9452, witness := RowWitness.topPrime 9371 },
  { lower := 9453, upper := 9456, witness := RowWitness.topPrime 9439 },
  { lower := 9522, upper := 9558, witness := RowWitness.topPrime 9521 },
  { lower := 9583, upper := 9632, witness := RowWitness.topPrime 9551 },
  { lower := 9633, upper := 9685, witness := RowWitness.topPrime 9631 },
  { lower := 9826, upper := 9828, witness := RowWitness.topPrime 9817 },
  { lower := 10051, upper := 10120, witness := RowWitness.topPrime 10039 },
  { lower := 10121, upper := 10163, witness := RowWitness.topPrime 10111 },
  { lower := 10240, upper := 10287, witness := RowWitness.topPrime 10223 },
  { lower := 10580, upper := 10648, witness := RowWitness.topPrime 10567 },
  { lower := 10649, upper := 10720, witness := RowWitness.topPrime 10639 },
  { lower := 10721, upper := 10729, witness := RowWitness.topPrime 10711 },
  { lower := 10935, upper := 10990, witness := RowWitness.topPrime 10909 },
  { lower := 10991, upper := 11033, witness := RowWitness.topPrime 10987 },
  { lower := 11045, upper := 11066, witness := RowWitness.topPrime 11027 },
  { lower := 11094, upper := 11174, witness := RowWitness.topPrime 11093 },
  { lower := 11175, upper := 11190, witness := RowWitness.topPrime 11173 },
  { lower := 11236, upper := 11244, witness := RowWitness.topPrime 11213 },
  { lower := 11250, upper := 11324, witness := RowWitness.topPrime 11243 },
  { lower := 11325, upper := 11331, witness := RowWitness.topPrime 11321 },
  { lower := 11664, upper := 11719, witness := RowWitness.topPrime 11657 },
  { lower := 12005, upper := 12060, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12369, witness := RowWitness.topPrime 12301 },
  { lower := 12393, upper := 12402, witness := RowWitness.topPrime 12391 },
  { lower := 12493, upper := 12572, witness := RowWitness.topPrime 12491 },
  { lower := 12573, upper := 12574, witness := RowWitness.topPrime 12569 },
  { lower := 12696, upper := 12696, witness := RowWitness.topPrime 12689 },
  { lower := 13125, upper := 13202, witness := RowWitness.topPrime 13121 },
  { lower := 13203, upper := 13206, witness := RowWitness.topPrime 13187 },
  { lower := 13225, upper := 13283, witness := RowWitness.topPrime 13219 },
  { lower := 13310, upper := 13335, witness := RowWitness.topPrime 13309 },
  { lower := 13456, upper := 13532, witness := RowWitness.topPrime 13451 },
  { lower := 13533, upper := 13537, witness := RowWitness.topPrime 13523 },
  { lower := 13718, upper := 13792, witness := RowWitness.topPrime 13711 },
  { lower := 13793, upper := 13799, witness := RowWitness.topPrime 13789 },
  { lower := 13924, upper := 13932, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14408, witness := RowWitness.topPrime 14327 },
  { lower := 14409, upper := 14487, witness := RowWitness.topPrime 14407 },
  { lower := 14641, upper := 14661, witness := RowWitness.topPrime 14639 },
  { lower := 14792, upper := 14820, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15202, witness := RowWitness.topPrime 15121 },
  { lower := 15203, upper := 15204, witness := RowWitness.topPrime 15199 },
  { lower := 15376, upper := 15454, witness := RowWitness.topPrime 15373 },
  { lower := 15455, upper := 15457, witness := RowWitness.topPrime 15451 },
  { lower := 15979, upper := 16054, witness := RowWitness.topPrime 15973 },
  { lower := 16055, upper := 16068, witness := RowWitness.topPrime 16033 },
  { lower := 16384, upper := 16418, witness := RowWitness.topPrime 16381 },
  { lower := 16428, upper := 16465, witness := RowWitness.topPrime 16427 },
  { lower := 16807, upper := 16868, witness := RowWitness.topPrime 16787 },
  { lower := 16869, upper := 16901, witness := RowWitness.topPrime 16843 },
  { lower := 17303, upper := 17379, witness := RowWitness.topPrime 17299 },
  { lower := 17576, upper := 17577, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17742, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18562, witness := RowWitness.topPrime 18481 },
  { lower := 18563, upper := 18571, witness := RowWitness.topPrime 18553 },
  { lower := 18634, upper := 18686, witness := RowWitness.topPrime 18617 },
  { lower := 18750, upper := 18804, witness := RowWitness.topPrime 18749 },
  { lower := 19208, upper := 19288, witness := RowWitness.topPrime 19207 },
  { lower := 19289, upper := 19289, witness := RowWitness.topPrime 19289 },
  { lower := 19663, upper := 19742, witness := RowWitness.topPrime 19661 },
  { lower := 19743, upper := 19744, witness := RowWitness.topPrime 19739 },
  { lower := 20181, upper := 20245, witness := RowWitness.topPrime 20177 },
  { lower := 20535, upper := 20561, witness := RowWitness.topPrime 20533 },
  { lower := 20577, upper := 20616, witness := RowWitness.topPrime 20563 },
  { lower := 21316, upper := 21377, witness := RowWitness.topPrime 21313 },
  { lower := 21875, upper := 21952, witness := RowWitness.topPrime 21871 },
  { lower := 21953, upper := 21956, witness := RowWitness.topPrime 21943 },
  { lower := 21970, upper := 21985, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22171, witness := RowWitness.topPrime 22093 },
  { lower := 22472, upper := 22526, witness := RowWitness.topPrime 22469 },
  { lower := 22528, upper := 22553, witness := RowWitness.topPrime 22511 },
  { lower := 24010, upper := 24088, witness := RowWitness.topPrime 24007 },
  { lower := 24089, upper := 24118, witness := RowWitness.topPrime 24083 },
  { lower := 24334, upper := 24410, witness := RowWitness.topPrime 24329 },
  { lower := 24411, upper := 24448, witness := RowWitness.topPrime 24407 },
  { lower := 24576, upper := 24652, witness := RowWitness.topPrime 24571 },
  { lower := 24653, upper := 24657, witness := RowWitness.topPrime 24631 },
  { lower := 25000, upper := 25045, witness := RowWitness.topPrime 24989 },
  { lower := 25281, upper := 25286, witness := RowWitness.topPrime 25261 },
  { lower := 25289, upper := 25342, witness := RowWitness.topPrime 25261 },
  { lower := 25343, upper := 25362, witness := RowWitness.topPrime 25343 },
  { lower := 26047, upper := 26092, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26445, witness := RowWitness.topPrime 26407 },
  { lower := 26645, upper := 26701, witness := RowWitness.topPrime 26641 },
  { lower := 27436, upper := 27461, witness := RowWitness.topPrime 27431 },
  { lower := 28125, upper := 28171, witness := RowWitness.topPrime 28123 },
  { lower := 28717, upper := 28753, witness := RowWitness.topPrime 28711 },
  { lower := 29791, upper := 29849, witness := RowWitness.topPrime 29789 },
  { lower := 30926, upper := 30980, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31274, witness := RowWitness.topPrime 31193 },
  { lower := 31275, upper := 31294, witness := RowWitness.topPrime 31271 },
  { lower := 31329, upper := 31331, witness := RowWitness.topPrime 31327 },
  { lower := 31433, upper := 31478, witness := RowWitness.topPrime 31397 },
  { lower := 31479, upper := 31504, witness := RowWitness.topPrime 31477 },
  { lower := 32805, upper := 32849, witness := RowWitness.topPrime 32803 },
  { lower := 34375, upper := 34376, witness := RowWitness.topPrime 34369 },
  { lower := 34391, upper := 34456, witness := RowWitness.topPrime 34381 },
  { lower := 35152, upper := 35212, witness := RowWitness.topPrime 35149 },
  { lower := 35344, upper := 35368, witness := RowWitness.topPrime 35339 },
  { lower := 36517, upper := 36578, witness := RowWitness.topPrime 36497 },
  { lower := 36579, upper := 36582, witness := RowWitness.topPrime 36571 },
  { lower := 37210, upper := 37260, witness := RowWitness.topPrime 37201 },
  { lower := 37349, upper := 37384, witness := RowWitness.topPrime 37339 },
  { lower := 37500, upper := 37527, witness := RowWitness.topPrime 37493 },
  { lower := 37553, upper := 37581, witness := RowWitness.topPrime 37549 },
  { lower := 39326, upper := 39404, witness := RowWitness.topPrime 39323 },
  { lower := 39405, upper := 39407, witness := RowWitness.topPrime 39397 },
  { lower := 40401, upper := 40409, witness := RowWitness.topPrime 40387 },
  { lower := 40960, upper := 41012, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41824, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43802, witness := RowWitness.topPrime 43721 },
  { lower := 43803, upper := 43821, witness := RowWitness.topPrime 43801 },
  { lower := 43940, upper := 44004, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44261, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44971, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48062, witness := RowWitness.topPrime 47981 },
  { lower := 48063, upper := 48094, witness := RowWitness.topPrime 48049 },
  { lower := 48734, upper := 48749, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48815, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49211, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50009, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50491, witness := RowWitness.topPrime 50417 },
  { lower := 58619, upper := 58645, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59617, witness := RowWitness.topPrime 59581 },
  { lower := 63948, upper := 63950, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65602, witness := RowWitness.topPrime 65521 },
  { lower := 65603, upper := 65617, witness := RowWitness.topPrime 65599 },
  { lower := 68651, upper := 68671, witness := RowWitness.topPrime 68639 },
  { lower := 73205, upper := 73248, witness := RowWitness.topPrime 73189 },
  { lower := 85293, upper := 85340, witness := RowWitness.topPrime 85259 },
  { lower := 85341, upper := 85345, witness := RowWitness.topPrime 85333 },
  { lower := 85697, upper := 85764, witness := RowWitness.topPrime 85691 },
  { lower := 146410, upper := 146415, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148958, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327761, witness := RowWitness.topPrime 327689 }
]

def row082_layers : List CoverLayer := [
  { lower := 6642, upper := 13284, M := 27 },
  { lower := 13284, upper := 26568, M := 23 },
  { lower := 26568, upper := 53136, M := 20 },
  { lower := 53136, upper := 106272, M := 17 },
  { lower := 106272, upper := 212544, M := 14 },
  { lower := 212544, upper := 425088, M := 12 },
  { lower := 425088, upper := 850176, M := 11 },
  { lower := 850176, upper := 1700352, M := 9 },
  { lower := 1700352, upper := 3400704, M := 8 },
  { lower := 3400704, upper := 6801408, M := 7 },
  { lower := 6801408, upper := 13602816, M := 6 },
  { lower := 13602816, upper := 27205632, M := 5 },
  { lower := 27205632, upper := 54411264, M := 4 },
  { lower := 54411264, upper := 108822528, M := 4 },
  { lower := 108822528, upper := 217645056, M := 3 },
  { lower := 217645056, upper := 435290112, M := 3 },
  { lower := 435290112, upper := 870580224, M := 2 },
  { lower := 870580224, upper := 1741160448, M := 2 },
  { lower := 1741160448, upper := 3482320896, M := 2 },
  { lower := 3482320896, upper := 6964641792, M := 2 },
  { lower := 6964641792, upper := 10000000000, M := 2 }
]

def row082 : FiniteCoverRow := {
  height := row082_height,
  goods := row082_goods,
  layers := row082_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good000_checked :
    goodSegmentCheck 82 27 57
      { lower := 166, upper := 244, witness := RowWitness.topPrime 163 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good001_checked :
    goodSegmentCheck 82 27 57
      { lower := 245, upper := 322, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good002_checked :
    goodSegmentCheck 82 27 57
      { lower := 323, upper := 398, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good003_checked :
    goodSegmentCheck 82 27 57
      { lower := 399, upper := 478, witness := RowWitness.topPrime 397 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good004_checked :
    goodSegmentCheck 82 27 57
      { lower := 479, upper := 560, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good005_checked :
    goodSegmentCheck 82 27 57
      { lower := 561, upper := 638, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good006_checked :
    goodSegmentCheck 82 27 57
      { lower := 639, upper := 712, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good007_checked :
    goodSegmentCheck 82 27 57
      { lower := 713, upper := 790, witness := RowWitness.topPrime 709 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good008_checked :
    goodSegmentCheck 82 27 57
      { lower := 791, upper := 868, witness := RowWitness.topPrime 787 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good009_checked :
    goodSegmentCheck 82 27 57
      { lower := 869, upper := 944, witness := RowWitness.topPrime 863 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good010_checked :
    goodSegmentCheck 82 27 57
      { lower := 945, upper := 1022, witness := RowWitness.topPrime 941 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good011_checked :
    goodSegmentCheck 82 27 57
      { lower := 1023, upper := 1102, witness := RowWitness.topPrime 1021 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good012_checked :
    goodSegmentCheck 82 27 57
      { lower := 1103, upper := 1184, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good013_checked :
    goodSegmentCheck 82 27 57
      { lower := 1185, upper := 1262, witness := RowWitness.topPrime 1181 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good014_checked :
    goodSegmentCheck 82 27 57
      { lower := 1263, upper := 1340, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good015_checked :
    goodSegmentCheck 82 27 57
      { lower := 1341, upper := 1408, witness := RowWitness.topPrime 1327 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good016_checked :
    goodSegmentCheck 82 27 57
      { lower := 1409, upper := 1490, witness := RowWitness.topPrime 1409 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good017_checked :
    goodSegmentCheck 82 27 57
      { lower := 1491, upper := 1570, witness := RowWitness.topPrime 1489 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good018_checked :
    goodSegmentCheck 82 27 57
      { lower := 1571, upper := 1652, witness := RowWitness.topPrime 1571 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good019_checked :
    goodSegmentCheck 82 27 57
      { lower := 1653, upper := 1718, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good020_checked :
    goodSegmentCheck 82 27 57
      { lower := 1719, upper := 1790, witness := RowWitness.topPrime 1709 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good021_checked :
    goodSegmentCheck 82 27 57
      { lower := 1791, upper := 1870, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good022_checked :
    goodSegmentCheck 82 27 57
      { lower := 1871, upper := 1952, witness := RowWitness.topPrime 1871 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good023_checked :
    goodSegmentCheck 82 27 57
      { lower := 1953, upper := 2032, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good024_checked :
    goodSegmentCheck 82 27 57
      { lower := 2033, upper := 2110, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good025_checked :
    goodSegmentCheck 82 27 57
      { lower := 2111, upper := 2192, witness := RowWitness.topPrime 2111 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good026_checked :
    goodSegmentCheck 82 27 57
      { lower := 2193, upper := 2260, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good027_checked :
    goodSegmentCheck 82 27 57
      { lower := 2261, upper := 2332, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good028_checked :
    goodSegmentCheck 82 27 57
      { lower := 2333, upper := 2414, witness := RowWitness.topPrime 2333 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good029_checked :
    goodSegmentCheck 82 27 57
      { lower := 2415, upper := 2492, witness := RowWitness.topPrime 2411 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good030_checked :
    goodSegmentCheck 82 27 57
      { lower := 2493, upper := 2558, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good031_checked :
    goodSegmentCheck 82 27 57
      { lower := 2559, upper := 2638, witness := RowWitness.topPrime 2557 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good032_checked :
    goodSegmentCheck 82 27 57
      { lower := 2639, upper := 2714, witness := RowWitness.topPrime 2633 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good033_checked :
    goodSegmentCheck 82 27 57
      { lower := 2715, upper := 2794, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good034_checked :
    goodSegmentCheck 82 27 57
      { lower := 2795, upper := 2872, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good035_checked :
    goodSegmentCheck 82 27 57
      { lower := 2873, upper := 2942, witness := RowWitness.topPrime 2861 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good036_checked :
    goodSegmentCheck 82 27 57
      { lower := 2943, upper := 3020, witness := RowWitness.topPrime 2939 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good037_checked :
    goodSegmentCheck 82 27 57
      { lower := 3021, upper := 3100, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good038_checked :
    goodSegmentCheck 82 27 57
      { lower := 3101, upper := 3170, witness := RowWitness.topPrime 3089 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good039_checked :
    goodSegmentCheck 82 27 57
      { lower := 3171, upper := 3250, witness := RowWitness.topPrime 3169 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good040_checked :
    goodSegmentCheck 82 27 57
      { lower := 3251, upper := 3332, witness := RowWitness.topPrime 3251 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good041_checked :
    goodSegmentCheck 82 27 57
      { lower := 3333, upper := 3412, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good042_checked :
    goodSegmentCheck 82 27 57
      { lower := 3413, upper := 3494, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good043_checked :
    goodSegmentCheck 82 27 57
      { lower := 3495, upper := 3572, witness := RowWitness.topPrime 3491 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good044_checked :
    goodSegmentCheck 82 27 57
      { lower := 3573, upper := 3652, witness := RowWitness.topPrime 3571 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good045_checked :
    goodSegmentCheck 82 27 57
      { lower := 3653, upper := 3724, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good046_checked :
    goodSegmentCheck 82 27 57
      { lower := 3725, upper := 3800, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good047_checked :
    goodSegmentCheck 82 27 57
      { lower := 3801, upper := 3878, witness := RowWitness.topPrime 3797 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good048_checked :
    goodSegmentCheck 82 27 57
      { lower := 3879, upper := 3958, witness := RowWitness.topPrime 3877 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good049_checked :
    goodSegmentCheck 82 27 57
      { lower := 3959, upper := 4028, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good050_checked :
    goodSegmentCheck 82 27 57
      { lower := 4029, upper := 4108, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good051_checked :
    goodSegmentCheck 82 27 57
      { lower := 4109, upper := 4180, witness := RowWitness.topPrime 4099 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good052_checked :
    goodSegmentCheck 82 27 57
      { lower := 4181, upper := 4258, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good053_checked :
    goodSegmentCheck 82 27 57
      { lower := 4259, upper := 4340, witness := RowWitness.topPrime 4259 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good054_checked :
    goodSegmentCheck 82 27 57
      { lower := 4341, upper := 4420, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good055_checked :
    goodSegmentCheck 82 27 57
      { lower := 4421, upper := 4502, witness := RowWitness.topPrime 4421 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good056_checked :
    goodSegmentCheck 82 27 57
      { lower := 4503, upper := 4574, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good057_checked :
    goodSegmentCheck 82 27 57
      { lower := 4575, upper := 4648, witness := RowWitness.topPrime 4567 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good058_checked :
    goodSegmentCheck 82 27 57
      { lower := 4649, upper := 4730, witness := RowWitness.topPrime 4649 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good059_checked :
    goodSegmentCheck 82 27 57
      { lower := 4731, upper := 4810, witness := RowWitness.topPrime 4729 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good060_checked :
    goodSegmentCheck 82 27 57
      { lower := 4811, upper := 4882, witness := RowWitness.topPrime 4801 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good061_checked :
    goodSegmentCheck 82 27 57
      { lower := 4883, upper := 4958, witness := RowWitness.topPrime 4877 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good062_checked :
    goodSegmentCheck 82 27 57
      { lower := 4959, upper := 5038, witness := RowWitness.topPrime 4957 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good063_checked :
    goodSegmentCheck 82 27 57
      { lower := 5039, upper := 5120, witness := RowWitness.topPrime 5039 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good064_checked :
    goodSegmentCheck 82 27 57
      { lower := 5121, upper := 5200, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good065_checked :
    goodSegmentCheck 82 27 57
      { lower := 5201, upper := 5278, witness := RowWitness.topPrime 5197 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good066_checked :
    goodSegmentCheck 82 27 57
      { lower := 5279, upper := 5360, witness := RowWitness.topPrime 5279 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good067_checked :
    goodSegmentCheck 82 27 57
      { lower := 5361, upper := 5432, witness := RowWitness.topPrime 5351 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good068_checked :
    goodSegmentCheck 82 27 57
      { lower := 5433, upper := 5512, witness := RowWitness.topPrime 5431 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good069_checked :
    goodSegmentCheck 82 27 57
      { lower := 5513, upper := 5588, witness := RowWitness.topPrime 5507 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good070_checked :
    goodSegmentCheck 82 27 57
      { lower := 5589, upper := 5662, witness := RowWitness.topPrime 5581 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good071_checked :
    goodSegmentCheck 82 27 57
      { lower := 5663, upper := 5740, witness := RowWitness.topPrime 5659 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good072_checked :
    goodSegmentCheck 82 27 57
      { lower := 5741, upper := 5822, witness := RowWitness.topPrime 5741 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good073_checked :
    goodSegmentCheck 82 27 57
      { lower := 5823, upper := 5902, witness := RowWitness.topPrime 5821 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good074_checked :
    goodSegmentCheck 82 27 57
      { lower := 5903, upper := 5984, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good075_checked :
    goodSegmentCheck 82 27 57
      { lower := 5985, upper := 6062, witness := RowWitness.topPrime 5981 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good076_checked :
    goodSegmentCheck 82 27 57
      { lower := 6063, upper := 6134, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good077_checked :
    goodSegmentCheck 82 27 57
      { lower := 6135, upper := 6214, witness := RowWitness.topPrime 6133 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good078_checked :
    goodSegmentCheck 82 27 57
      { lower := 6215, upper := 6292, witness := RowWitness.topPrime 6211 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good079_checked :
    goodSegmentCheck 82 27 57
      { lower := 6293, upper := 6368, witness := RowWitness.topPrime 6287 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good080_checked :
    goodSegmentCheck 82 27 57
      { lower := 6369, upper := 6448, witness := RowWitness.topPrime 6367 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good081_checked :
    goodSegmentCheck 82 27 57
      { lower := 6449, upper := 6530, witness := RowWitness.topPrime 6449 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good082_checked :
    goodSegmentCheck 82 27 57
      { lower := 6531, upper := 6610, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good083_checked :
    goodSegmentCheck 82 27 57
      { lower := 6611, upper := 6688, witness := RowWitness.topPrime 6607 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good084_checked :
    goodSegmentCheck 82 27 57
      { lower := 6689, upper := 6770, witness := RowWitness.topPrime 6689 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good085_checked :
    goodSegmentCheck 82 27 57
      { lower := 6771, upper := 6808, witness := RowWitness.topPrime 6763 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good086_checked :
    goodSegmentCheck 82 27 57
      { lower := 6859, upper := 6938, witness := RowWitness.topPrime 6857 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good087_checked :
    goodSegmentCheck 82 27 57
      { lower := 6939, upper := 6958, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good088_checked :
    goodSegmentCheck 82 27 57
      { lower := 6962, upper := 7017, witness := RowWitness.topPrime 6961 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good089_checked :
    goodSegmentCheck 82 27 57
      { lower := 7203, upper := 7274, witness := RowWitness.topPrime 7193 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good090_checked :
    goodSegmentCheck 82 27 57
      { lower := 7275, upper := 7306, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good091_checked :
    goodSegmentCheck 82 27 57
      { lower := 7406, upper := 7474, witness := RowWitness.topPrime 7393 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good092_checked :
    goodSegmentCheck 82 27 57
      { lower := 7475, upper := 7487, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good093_checked :
    goodSegmentCheck 82 27 57
      { lower := 7500, upper := 7580, witness := RowWitness.topPrime 7499 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good094_checked :
    goodSegmentCheck 82 27 57
      { lower := 7581, upper := 7650, witness := RowWitness.topPrime 7577 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good095_checked :
    goodSegmentCheck 82 27 57
      { lower := 7935, upper := 8014, witness := RowWitness.topPrime 7933 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good096_checked :
    goodSegmentCheck 82 27 57
      { lower := 8015, upper := 8067, witness := RowWitness.topPrime 8011 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good097_checked :
    goodSegmentCheck 82 27 57
      { lower := 8192, upper := 8206, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good098_checked :
    goodSegmentCheck 82 27 57
      { lower := 8214, upper := 8290, witness := RowWitness.topPrime 8209 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good099_checked :
    goodSegmentCheck 82 27 57
      { lower := 8291, upper := 8295, witness := RowWitness.topPrime 8291 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good100_checked :
    goodSegmentCheck 82 27 57
      { lower := 8303, upper := 8313, witness := RowWitness.topPrime 8297 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good101_checked :
    goodSegmentCheck 82 27 57
      { lower := 8427, upper := 8504, witness := RowWitness.topPrime 8423 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good102_checked :
    goodSegmentCheck 82 27 57
      { lower := 8505, upper := 8508, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good103_checked :
    goodSegmentCheck 82 27 57
      { lower := 8649, upper := 8656, witness := RowWitness.topPrime 8647 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good104_checked :
    goodSegmentCheck 82 27 57
      { lower := 8664, upper := 8730, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good105_checked :
    goodSegmentCheck 82 27 57
      { lower := 8750, upper := 8828, witness := RowWitness.topPrime 8747 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good106_checked :
    goodSegmentCheck 82 27 57
      { lower := 8829, upper := 8831, witness := RowWitness.topPrime 8821 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good107_checked :
    goodSegmentCheck 82 27 57
      { lower := 8836, upper := 8869, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good108_checked :
    goodSegmentCheck 82 27 57
      { lower := 8978, upper := 9052, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good109_checked :
    goodSegmentCheck 82 27 57
      { lower := 9053, upper := 9074, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good110_checked :
    goodSegmentCheck 82 27 57
      { lower := 9245, upper := 9322, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good111_checked :
    goodSegmentCheck 82 27 57
      { lower := 9323, upper := 9342, witness := RowWitness.topPrime 9323 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good112_checked :
    goodSegmentCheck 82 27 57
      { lower := 9375, upper := 9452, witness := RowWitness.topPrime 9371 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good113_checked :
    goodSegmentCheck 82 27 57
      { lower := 9453, upper := 9456, witness := RowWitness.topPrime 9439 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good114_checked :
    goodSegmentCheck 82 27 57
      { lower := 9522, upper := 9558, witness := RowWitness.topPrime 9521 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good115_checked :
    goodSegmentCheck 82 27 57
      { lower := 9583, upper := 9632, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good116_checked :
    goodSegmentCheck 82 27 57
      { lower := 9633, upper := 9685, witness := RowWitness.topPrime 9631 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good117_checked :
    goodSegmentCheck 82 27 57
      { lower := 9826, upper := 9828, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good118_checked :
    goodSegmentCheck 82 27 57
      { lower := 10051, upper := 10120, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good119_checked :
    goodSegmentCheck 82 27 57
      { lower := 10121, upper := 10163, witness := RowWitness.topPrime 10111 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good120_checked :
    goodSegmentCheck 82 27 57
      { lower := 10240, upper := 10287, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good121_checked :
    goodSegmentCheck 82 27 57
      { lower := 10580, upper := 10648, witness := RowWitness.topPrime 10567 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good122_checked :
    goodSegmentCheck 82 27 57
      { lower := 10649, upper := 10720, witness := RowWitness.topPrime 10639 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good123_checked :
    goodSegmentCheck 82 27 57
      { lower := 10721, upper := 10729, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good124_checked :
    goodSegmentCheck 82 27 57
      { lower := 10935, upper := 10990, witness := RowWitness.topPrime 10909 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good125_checked :
    goodSegmentCheck 82 27 57
      { lower := 10991, upper := 11033, witness := RowWitness.topPrime 10987 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good126_checked :
    goodSegmentCheck 82 27 57
      { lower := 11045, upper := 11066, witness := RowWitness.topPrime 11027 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good127_checked :
    goodSegmentCheck 82 27 57
      { lower := 11094, upper := 11174, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good128_checked :
    goodSegmentCheck 82 27 57
      { lower := 11175, upper := 11190, witness := RowWitness.topPrime 11173 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good129_checked :
    goodSegmentCheck 82 27 57
      { lower := 11236, upper := 11244, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good130_checked :
    goodSegmentCheck 82 27 57
      { lower := 11250, upper := 11324, witness := RowWitness.topPrime 11243 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good131_checked :
    goodSegmentCheck 82 27 57
      { lower := 11325, upper := 11331, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good132_checked :
    goodSegmentCheck 82 27 57
      { lower := 11664, upper := 11719, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good133_checked :
    goodSegmentCheck 82 27 57
      { lower := 12005, upper := 12060, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good134_checked :
    goodSegmentCheck 82 27 57
      { lower := 12321, upper := 12369, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good135_checked :
    goodSegmentCheck 82 27 57
      { lower := 12393, upper := 12402, witness := RowWitness.topPrime 12391 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good136_checked :
    goodSegmentCheck 82 27 57
      { lower := 12493, upper := 12572, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good137_checked :
    goodSegmentCheck 82 27 57
      { lower := 12573, upper := 12574, witness := RowWitness.topPrime 12569 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good138_checked :
    goodSegmentCheck 82 27 57
      { lower := 12696, upper := 12696, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good139_checked :
    goodSegmentCheck 82 27 57
      { lower := 13125, upper := 13202, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good140_checked :
    goodSegmentCheck 82 27 57
      { lower := 13203, upper := 13206, witness := RowWitness.topPrime 13187 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good141_checked :
    goodSegmentCheck 82 27 57
      { lower := 13225, upper := 13283, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good142_checked :
    goodSegmentCheck 82 27 57
      { lower := 13310, upper := 13335, witness := RowWitness.topPrime 13309 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good143_checked :
    goodSegmentCheck 82 27 57
      { lower := 13456, upper := 13532, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good144_checked :
    goodSegmentCheck 82 27 57
      { lower := 13533, upper := 13537, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good145_checked :
    goodSegmentCheck 82 27 57
      { lower := 13718, upper := 13792, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good146_checked :
    goodSegmentCheck 82 27 57
      { lower := 13793, upper := 13799, witness := RowWitness.topPrime 13789 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good147_checked :
    goodSegmentCheck 82 27 57
      { lower := 13924, upper := 13932, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good148_checked :
    goodSegmentCheck 82 27 57
      { lower := 14336, upper := 14408, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good149_checked :
    goodSegmentCheck 82 27 57
      { lower := 14409, upper := 14487, witness := RowWitness.topPrime 14407 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good150_checked :
    goodSegmentCheck 82 27 57
      { lower := 14641, upper := 14661, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good151_checked :
    goodSegmentCheck 82 27 57
      { lower := 14792, upper := 14820, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good152_checked :
    goodSegmentCheck 82 27 57
      { lower := 15123, upper := 15202, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good153_checked :
    goodSegmentCheck 82 27 57
      { lower := 15203, upper := 15204, witness := RowWitness.topPrime 15199 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good154_checked :
    goodSegmentCheck 82 27 57
      { lower := 15376, upper := 15454, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good155_checked :
    goodSegmentCheck 82 27 57
      { lower := 15455, upper := 15457, witness := RowWitness.topPrime 15451 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good156_checked :
    goodSegmentCheck 82 27 57
      { lower := 15979, upper := 16054, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good157_checked :
    goodSegmentCheck 82 27 57
      { lower := 16055, upper := 16068, witness := RowWitness.topPrime 16033 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good158_checked :
    goodSegmentCheck 82 27 57
      { lower := 16384, upper := 16418, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good159_checked :
    goodSegmentCheck 82 27 57
      { lower := 16428, upper := 16465, witness := RowWitness.topPrime 16427 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good160_checked :
    goodSegmentCheck 82 27 57
      { lower := 16807, upper := 16868, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good161_checked :
    goodSegmentCheck 82 27 57
      { lower := 16869, upper := 16901, witness := RowWitness.topPrime 16843 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good162_checked :
    goodSegmentCheck 82 27 57
      { lower := 17303, upper := 17379, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good163_checked :
    goodSegmentCheck 82 27 57
      { lower := 17576, upper := 17577, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good164_checked :
    goodSegmentCheck 82 27 57
      { lower := 17672, upper := 17742, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good165_checked :
    goodSegmentCheck 82 27 57
      { lower := 18490, upper := 18562, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good166_checked :
    goodSegmentCheck 82 27 57
      { lower := 18563, upper := 18571, witness := RowWitness.topPrime 18553 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good167_checked :
    goodSegmentCheck 82 27 57
      { lower := 18634, upper := 18686, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good168_checked :
    goodSegmentCheck 82 27 57
      { lower := 18750, upper := 18804, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good169_checked :
    goodSegmentCheck 82 27 57
      { lower := 19208, upper := 19288, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good170_checked :
    goodSegmentCheck 82 27 57
      { lower := 19289, upper := 19289, witness := RowWitness.topPrime 19289 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good171_checked :
    goodSegmentCheck 82 27 57
      { lower := 19663, upper := 19742, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good172_checked :
    goodSegmentCheck 82 27 57
      { lower := 19743, upper := 19744, witness := RowWitness.topPrime 19739 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good173_checked :
    goodSegmentCheck 82 27 57
      { lower := 20181, upper := 20245, witness := RowWitness.topPrime 20177 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good174_checked :
    goodSegmentCheck 82 27 57
      { lower := 20535, upper := 20561, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good175_checked :
    goodSegmentCheck 82 27 57
      { lower := 20577, upper := 20616, witness := RowWitness.topPrime 20563 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good176_checked :
    goodSegmentCheck 82 27 57
      { lower := 21316, upper := 21377, witness := RowWitness.topPrime 21313 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good177_checked :
    goodSegmentCheck 82 27 57
      { lower := 21875, upper := 21952, witness := RowWitness.topPrime 21871 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good178_checked :
    goodSegmentCheck 82 27 57
      { lower := 21953, upper := 21956, witness := RowWitness.topPrime 21943 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good179_checked :
    goodSegmentCheck 82 27 57
      { lower := 21970, upper := 21985, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good180_checked :
    goodSegmentCheck 82 27 57
      { lower := 22103, upper := 22171, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good181_checked :
    goodSegmentCheck 82 27 57
      { lower := 22472, upper := 22526, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good182_checked :
    goodSegmentCheck 82 27 57
      { lower := 22528, upper := 22553, witness := RowWitness.topPrime 22511 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good183_checked :
    goodSegmentCheck 82 27 57
      { lower := 24010, upper := 24088, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good184_checked :
    goodSegmentCheck 82 27 57
      { lower := 24089, upper := 24118, witness := RowWitness.topPrime 24083 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good185_checked :
    goodSegmentCheck 82 27 57
      { lower := 24334, upper := 24410, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good186_checked :
    goodSegmentCheck 82 27 57
      { lower := 24411, upper := 24448, witness := RowWitness.topPrime 24407 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good187_checked :
    goodSegmentCheck 82 27 57
      { lower := 24576, upper := 24652, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good188_checked :
    goodSegmentCheck 82 27 57
      { lower := 24653, upper := 24657, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good189_checked :
    goodSegmentCheck 82 27 57
      { lower := 25000, upper := 25045, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good190_checked :
    goodSegmentCheck 82 27 57
      { lower := 25281, upper := 25286, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good191_checked :
    goodSegmentCheck 82 27 57
      { lower := 25289, upper := 25342, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good192_checked :
    goodSegmentCheck 82 27 57
      { lower := 25343, upper := 25362, witness := RowWitness.topPrime 25343 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good193_checked :
    goodSegmentCheck 82 27 57
      { lower := 26047, upper := 26092, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good194_checked :
    goodSegmentCheck 82 27 57
      { lower := 26411, upper := 26445, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good195_checked :
    goodSegmentCheck 82 27 57
      { lower := 26645, upper := 26701, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good196_checked :
    goodSegmentCheck 82 27 57
      { lower := 27436, upper := 27461, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good197_checked :
    goodSegmentCheck 82 27 57
      { lower := 28125, upper := 28171, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good198_checked :
    goodSegmentCheck 82 27 57
      { lower := 28717, upper := 28753, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good199_checked :
    goodSegmentCheck 82 27 57
      { lower := 29791, upper := 29849, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good200_checked :
    goodSegmentCheck 82 27 57
      { lower := 30926, upper := 30980, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good201_checked :
    goodSegmentCheck 82 27 57
      { lower := 31213, upper := 31274, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good202_checked :
    goodSegmentCheck 82 27 57
      { lower := 31275, upper := 31294, witness := RowWitness.topPrime 31271 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good203_checked :
    goodSegmentCheck 82 27 57
      { lower := 31329, upper := 31331, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good204_checked :
    goodSegmentCheck 82 27 57
      { lower := 31433, upper := 31478, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good205_checked :
    goodSegmentCheck 82 27 57
      { lower := 31479, upper := 31504, witness := RowWitness.topPrime 31477 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good206_checked :
    goodSegmentCheck 82 27 57
      { lower := 32805, upper := 32849, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good207_checked :
    goodSegmentCheck 82 27 57
      { lower := 34375, upper := 34376, witness := RowWitness.topPrime 34369 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good208_checked :
    goodSegmentCheck 82 27 57
      { lower := 34391, upper := 34456, witness := RowWitness.topPrime 34381 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good209_checked :
    goodSegmentCheck 82 27 57
      { lower := 35152, upper := 35212, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good210_checked :
    goodSegmentCheck 82 27 57
      { lower := 35344, upper := 35368, witness := RowWitness.topPrime 35339 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good211_checked :
    goodSegmentCheck 82 27 57
      { lower := 36517, upper := 36578, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good212_checked :
    goodSegmentCheck 82 27 57
      { lower := 36579, upper := 36582, witness := RowWitness.topPrime 36571 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good213_checked :
    goodSegmentCheck 82 27 57
      { lower := 37210, upper := 37260, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good214_checked :
    goodSegmentCheck 82 27 57
      { lower := 37349, upper := 37384, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good215_checked :
    goodSegmentCheck 82 27 57
      { lower := 37500, upper := 37527, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good216_checked :
    goodSegmentCheck 82 27 57
      { lower := 37553, upper := 37581, witness := RowWitness.topPrime 37549 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good217_checked :
    goodSegmentCheck 82 27 57
      { lower := 39326, upper := 39404, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good218_checked :
    goodSegmentCheck 82 27 57
      { lower := 39405, upper := 39407, witness := RowWitness.topPrime 39397 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good219_checked :
    goodSegmentCheck 82 27 57
      { lower := 40401, upper := 40409, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good220_checked :
    goodSegmentCheck 82 27 57
      { lower := 40960, upper := 41012, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good221_checked :
    goodSegmentCheck 82 27 57
      { lower := 41772, upper := 41824, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good222_checked :
    goodSegmentCheck 82 27 57
      { lower := 43740, upper := 43802, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good223_checked :
    goodSegmentCheck 82 27 57
      { lower := 43803, upper := 43821, witness := RowWitness.topPrime 43801 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good224_checked :
    goodSegmentCheck 82 27 57
      { lower := 43940, upper := 44004, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good225_checked :
    goodSegmentCheck 82 27 57
      { lower := 44217, upper := 44261, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good226_checked :
    goodSegmentCheck 82 27 57
      { lower := 44944, upper := 44971, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good227_checked :
    goodSegmentCheck 82 27 57
      { lower := 48013, upper := 48062, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good228_checked :
    goodSegmentCheck 82 27 57
      { lower := 48063, upper := 48094, witness := RowWitness.topPrime 48049 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good229_checked :
    goodSegmentCheck 82 27 57
      { lower := 48734, upper := 48749, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good230_checked :
    goodSegmentCheck 82 27 57
      { lower := 48778, upper := 48815, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good231_checked :
    goodSegmentCheck 82 27 57
      { lower := 49152, upper := 49211, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good232_checked :
    goodSegmentCheck 82 27 57
      { lower := 50000, upper := 50009, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good233_checked :
    goodSegmentCheck 82 27 57
      { lower := 50421, upper := 50491, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good234_checked :
    goodSegmentCheck 82 27 57
      { lower := 58619, upper := 58645, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good235_checked :
    goodSegmentCheck 82 27 57
      { lower := 59582, upper := 59617, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good236_checked :
    goodSegmentCheck 82 27 57
      { lower := 63948, upper := 63950, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good237_checked :
    goodSegmentCheck 82 27 57
      { lower := 65536, upper := 65602, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good238_checked :
    goodSegmentCheck 82 27 57
      { lower := 65603, upper := 65617, witness := RowWitness.topPrime 65599 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good239_checked :
    goodSegmentCheck 82 27 57
      { lower := 68651, upper := 68671, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_good240_checked :
    goodSegmentCheck 82 27 57
      { lower := 73205, upper := 73248, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good241_checked :
    goodSegmentCheck 82 27 57
      { lower := 85293, upper := 85340, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good242_checked :
    goodSegmentCheck 82 27 57
      { lower := 85341, upper := 85345, witness := RowWitness.topPrime 85333 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good243_checked :
    goodSegmentCheck 82 27 57
      { lower := 85697, upper := 85764, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good244_checked :
    goodSegmentCheck 82 27 57
      { lower := 146410, upper := 146415, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good245_checked :
    goodSegmentCheck 82 27 57
      { lower := 148955, upper := 148958, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row082_good246_checked :
    goodSegmentCheck 82 27 57
      { lower := 327701, upper := 327761, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 82) (r := 27) (s := 57) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_good246_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_goods_checked :
    row082.goods.all (goodSegmentCheck row082.height.i row082.height.r row082.height.s) = true := by
  change row082_goods.all (goodSegmentCheck 82 27 57) = true
  simp only [row082_goods, List.all_cons, List.all_nil,
    row082_good000_checked,
    row082_good001_checked,
    row082_good002_checked,
    row082_good003_checked,
    row082_good004_checked,
    row082_good005_checked,
    row082_good006_checked,
    row082_good007_checked,
    row082_good008_checked,
    row082_good009_checked,
    row082_good010_checked,
    row082_good011_checked,
    row082_good012_checked,
    row082_good013_checked,
    row082_good014_checked,
    row082_good015_checked,
    row082_good016_checked,
    row082_good017_checked,
    row082_good018_checked,
    row082_good019_checked,
    row082_good020_checked,
    row082_good021_checked,
    row082_good022_checked,
    row082_good023_checked,
    row082_good024_checked,
    row082_good025_checked,
    row082_good026_checked,
    row082_good027_checked,
    row082_good028_checked,
    row082_good029_checked,
    row082_good030_checked,
    row082_good031_checked,
    row082_good032_checked,
    row082_good033_checked,
    row082_good034_checked,
    row082_good035_checked,
    row082_good036_checked,
    row082_good037_checked,
    row082_good038_checked,
    row082_good039_checked,
    row082_good040_checked,
    row082_good041_checked,
    row082_good042_checked,
    row082_good043_checked,
    row082_good044_checked,
    row082_good045_checked,
    row082_good046_checked,
    row082_good047_checked,
    row082_good048_checked,
    row082_good049_checked,
    row082_good050_checked,
    row082_good051_checked,
    row082_good052_checked,
    row082_good053_checked,
    row082_good054_checked,
    row082_good055_checked,
    row082_good056_checked,
    row082_good057_checked,
    row082_good058_checked,
    row082_good059_checked,
    row082_good060_checked,
    row082_good061_checked,
    row082_good062_checked,
    row082_good063_checked,
    row082_good064_checked,
    row082_good065_checked,
    row082_good066_checked,
    row082_good067_checked,
    row082_good068_checked,
    row082_good069_checked,
    row082_good070_checked,
    row082_good071_checked,
    row082_good072_checked,
    row082_good073_checked,
    row082_good074_checked,
    row082_good075_checked,
    row082_good076_checked,
    row082_good077_checked,
    row082_good078_checked,
    row082_good079_checked,
    row082_good080_checked,
    row082_good081_checked,
    row082_good082_checked,
    row082_good083_checked,
    row082_good084_checked,
    row082_good085_checked,
    row082_good086_checked,
    row082_good087_checked,
    row082_good088_checked,
    row082_good089_checked,
    row082_good090_checked,
    row082_good091_checked,
    row082_good092_checked,
    row082_good093_checked,
    row082_good094_checked,
    row082_good095_checked,
    row082_good096_checked,
    row082_good097_checked,
    row082_good098_checked,
    row082_good099_checked,
    row082_good100_checked,
    row082_good101_checked,
    row082_good102_checked,
    row082_good103_checked,
    row082_good104_checked,
    row082_good105_checked,
    row082_good106_checked,
    row082_good107_checked,
    row082_good108_checked,
    row082_good109_checked,
    row082_good110_checked,
    row082_good111_checked,
    row082_good112_checked,
    row082_good113_checked,
    row082_good114_checked,
    row082_good115_checked,
    row082_good116_checked,
    row082_good117_checked,
    row082_good118_checked,
    row082_good119_checked,
    row082_good120_checked,
    row082_good121_checked,
    row082_good122_checked,
    row082_good123_checked,
    row082_good124_checked,
    row082_good125_checked,
    row082_good126_checked,
    row082_good127_checked,
    row082_good128_checked,
    row082_good129_checked,
    row082_good130_checked,
    row082_good131_checked,
    row082_good132_checked,
    row082_good133_checked,
    row082_good134_checked,
    row082_good135_checked,
    row082_good136_checked,
    row082_good137_checked,
    row082_good138_checked,
    row082_good139_checked,
    row082_good140_checked,
    row082_good141_checked,
    row082_good142_checked,
    row082_good143_checked,
    row082_good144_checked,
    row082_good145_checked,
    row082_good146_checked,
    row082_good147_checked,
    row082_good148_checked,
    row082_good149_checked,
    row082_good150_checked,
    row082_good151_checked,
    row082_good152_checked,
    row082_good153_checked,
    row082_good154_checked,
    row082_good155_checked,
    row082_good156_checked,
    row082_good157_checked,
    row082_good158_checked,
    row082_good159_checked,
    row082_good160_checked,
    row082_good161_checked,
    row082_good162_checked,
    row082_good163_checked,
    row082_good164_checked,
    row082_good165_checked,
    row082_good166_checked,
    row082_good167_checked,
    row082_good168_checked,
    row082_good169_checked,
    row082_good170_checked,
    row082_good171_checked,
    row082_good172_checked,
    row082_good173_checked,
    row082_good174_checked,
    row082_good175_checked,
    row082_good176_checked,
    row082_good177_checked,
    row082_good178_checked,
    row082_good179_checked,
    row082_good180_checked,
    row082_good181_checked,
    row082_good182_checked,
    row082_good183_checked,
    row082_good184_checked,
    row082_good185_checked,
    row082_good186_checked,
    row082_good187_checked,
    row082_good188_checked,
    row082_good189_checked,
    row082_good190_checked,
    row082_good191_checked,
    row082_good192_checked,
    row082_good193_checked,
    row082_good194_checked,
    row082_good195_checked,
    row082_good196_checked,
    row082_good197_checked,
    row082_good198_checked,
    row082_good199_checked,
    row082_good200_checked,
    row082_good201_checked,
    row082_good202_checked,
    row082_good203_checked,
    row082_good204_checked,
    row082_good205_checked,
    row082_good206_checked,
    row082_good207_checked,
    row082_good208_checked,
    row082_good209_checked,
    row082_good210_checked,
    row082_good211_checked,
    row082_good212_checked,
    row082_good213_checked,
    row082_good214_checked,
    row082_good215_checked,
    row082_good216_checked,
    row082_good217_checked,
    row082_good218_checked,
    row082_good219_checked,
    row082_good220_checked,
    row082_good221_checked,
    row082_good222_checked,
    row082_good223_checked,
    row082_good224_checked,
    row082_good225_checked,
    row082_good226_checked,
    row082_good227_checked,
    row082_good228_checked,
    row082_good229_checked,
    row082_good230_checked,
    row082_good231_checked,
    row082_good232_checked,
    row082_good233_checked,
    row082_good234_checked,
    row082_good235_checked,
    row082_good236_checked,
    row082_good237_checked,
    row082_good238_checked,
    row082_good239_checked,
    row082_good240_checked,
    row082_good241_checked,
    row082_good242_checked,
    row082_good243_checked,
    row082_good244_checked,
    row082_good245_checked,
    row082_good246_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_registered :
    decide (row082.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row082_small_checked :
    coverCheck (2 * row082.height.i + 2) (row082.height.i * (row082.height.i - 1) - 1)
      (row082.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row082_layerCover_checked :
    coverCheck (row082.height.i * (row082.height.i - 1)) (row082.height.n0 - 1)
      (row082.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row082_bounds : List NatInterval :=
  [(166, 244), (245, 322), (323, 398), (399, 478), (479, 560), (561, 638), (639, 712), (713, 790), (791, 868), (869, 944), (945, 1022), (1023, 1102), (1103, 1184), (1185, 1262), (1263, 1340), (1341, 1408), (1409, 1490), (1491, 1570), (1571, 1652), (1653, 1718), (1719, 1790), (1791, 1870), (1871, 1952), (1953, 2032), (2033, 2110), (2111, 2192), (2193, 2260), (2261, 2332), (2333, 2414), (2415, 2492), (2493, 2558), (2559, 2638), (2639, 2714), (2715, 2794), (2795, 2872), (2873, 2942), (2943, 3020), (3021, 3100), (3101, 3170), (3171, 3250), (3251, 3332), (3333, 3412), (3413, 3494), (3495, 3572), (3573, 3652), (3653, 3724), (3725, 3800), (3801, 3878), (3879, 3958), (3959, 4028), (4029, 4108), (4109, 4180), (4181, 4258), (4259, 4340), (4341, 4420), (4421, 4502), (4503, 4574), (4575, 4648), (4649, 4730), (4731, 4810), (4811, 4882), (4883, 4958), (4959, 5038), (5039, 5120), (5121, 5200), (5201, 5278), (5279, 5360), (5361, 5432), (5433, 5512), (5513, 5588), (5589, 5662), (5663, 5740), (5741, 5822), (5823, 5902), (5903, 5984), (5985, 6062), (6063, 6134), (6135, 6214), (6215, 6292), (6293, 6368), (6369, 6448), (6449, 6530), (6531, 6610), (6611, 6688), (6689, 6770), (6771, 6808), (6859, 6938), (6939, 6958), (6962, 7017), (7203, 7274), (7275, 7306), (7406, 7474), (7475, 7487), (7500, 7580), (7581, 7650), (7935, 8014), (8015, 8067), (8192, 8206), (8214, 8290), (8291, 8295), (8303, 8313), (8427, 8504), (8505, 8508), (8649, 8656), (8664, 8730), (8750, 8828), (8829, 8831), (8836, 8869), (8978, 9052), (9053, 9074), (9245, 9322), (9323, 9342), (9375, 9452), (9453, 9456), (9522, 9558), (9583, 9632), (9633, 9685), (9826, 9828), (10051, 10120), (10121, 10163), (10240, 10287), (10580, 10648), (10649, 10720), (10721, 10729), (10935, 10990), (10991, 11033), (11045, 11066), (11094, 11174), (11175, 11190), (11236, 11244), (11250, 11324), (11325, 11331), (11664, 11719), (12005, 12060), (12321, 12369), (12393, 12402), (12493, 12572), (12573, 12574), (12696, 12696), (13125, 13202), (13203, 13206), (13225, 13283), (13310, 13335), (13456, 13532), (13533, 13537), (13718, 13792), (13793, 13799), (13924, 13932), (14336, 14408), (14409, 14487), (14641, 14661), (14792, 14820), (15123, 15202), (15203, 15204), (15376, 15454), (15455, 15457), (15979, 16054), (16055, 16068), (16384, 16418), (16428, 16465), (16807, 16868), (16869, 16901), (17303, 17379), (17576, 17577), (17672, 17742), (18490, 18562), (18563, 18571), (18634, 18686), (18750, 18804), (19208, 19288), (19289, 19289), (19663, 19742), (19743, 19744), (20181, 20245), (20535, 20561), (20577, 20616), (21316, 21377), (21875, 21952), (21953, 21956), (21970, 21985), (22103, 22171), (22472, 22526), (22528, 22553), (24010, 24088), (24089, 24118), (24334, 24410), (24411, 24448), (24576, 24652), (24653, 24657), (25000, 25045), (25281, 25286), (25289, 25342), (25343, 25362), (26047, 26092), (26411, 26445), (26645, 26701), (27436, 27461), (28125, 28171), (28717, 28753), (29791, 29849), (30926, 30980), (31213, 31274), (31275, 31294), (31329, 31331), (31433, 31478), (31479, 31504), (32805, 32849), (34375, 34376), (34391, 34456), (35152, 35212), (35344, 35368), (36517, 36578), (36579, 36582), (37210, 37260), (37349, 37384), (37500, 37527), (37553, 37581), (39326, 39404), (39405, 39407), (40401, 40409), (40960, 41012), (41772, 41824), (43740, 43802), (43803, 43821), (43940, 44004), (44217, 44261), (44944, 44971), (48013, 48062), (48063, 48094), (48734, 48749), (48778, 48815), (49152, 49211), (50000, 50009), (50421, 50491), (58619, 58645), (59582, 59617), (63948, 63950), (65536, 65602), (65603, 65617), (68651, 68671), (73205, 73248), (85293, 85340), (85341, 85345), (85697, 85764), (146410, 146415), (148955, 148958), (327701, 327761)]

theorem row082_bounds_eq : row082.goods.map goodSegmentBounds = row082_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row082_layer000_intervals : List ColouredInterval :=
  [(2, 6656, 6737), (2, 7168, 7249), (2, 8192, 8273), (2, 9216, 9297), (2, 10240, 10321), (2, 11264, 11345), (2, 12288, 12369), (2, 8192, 8273), (2, 10240, 10321), (2, 12288, 12369), (2, 8192, 8273), (2, 12288, 12369), (2, 8192, 8273), (3, 6642, 6642), (3, 6642, 6642), (3, 7290, 7371), (3, 8019, 8100), (3, 8748, 8829), (3, 9477, 9558), (3, 10206, 10287), (3, 10935, 11016), (3, 11664, 11745), (3, 12393, 12474), (3, 13122, 13203), (3, 6642, 6642), (3, 8748, 8829), (3, 10935, 11016), (3, 13122, 13203), (3, 6642, 6642), (3, 13122, 13203), (5, 6875, 6956), (5, 7500, 7581), (5, 8125, 8206), (5, 8750, 8831), (5, 9375, 9456), (5, 10000, 10081), (5, 10625, 10706), (5, 11250, 11331), (5, 11875, 11956), (5, 12500, 12581), (5, 13125, 13206), (5, 9375, 9456), (5, 12500, 12581), (7, 6860, 6941), (7, 7203, 7284), (7, 7546, 7627), (7, 7889, 7970), (7, 8232, 8313), (7, 8575, 8656), (7, 8918, 8999), (7, 9261, 9342), (7, 7203, 7284), (7, 9604, 9685), (7, 12005, 12086), (11, 6655, 6736), (11, 7986, 8067), (11, 9317, 9398), (11, 10648, 10729), (11, 11979, 12060), (13, 6642, 6672), (13, 8788, 8869), (13, 10985, 11066), (13, 13182, 13263), (17, 6647, 6728), (17, 6936, 7017), (17, 7225, 7306), (17, 7514, 7595), (17, 7803, 7884), (17, 9826, 9907), (19, 6859, 6940), (19, 7220, 7301), (19, 7581, 7662), (19, 7942, 8023), (19, 8303, 8384), (19, 8664, 8745), (19, 9025, 9106), (19, 9386, 9467), (19, 9747, 9828), (19, 6859, 6940), (23, 6877, 6958), (23, 7406, 7487), (23, 7935, 8016), (23, 8464, 8545), (23, 8993, 9074), (23, 9522, 9603), (23, 10051, 10132), (23, 10580, 10661), (23, 11109, 11190), (23, 11638, 11719), (23, 12167, 12248), (23, 12696, 12777), (23, 13225, 13283), (23, 12167, 12248), (29, 6728, 6809), (29, 7569, 7650), (29, 8410, 8491), (29, 9251, 9332), (29, 10092, 10173), (29, 10933, 11014), (29, 11774, 11855), (29, 12615, 12696), (31, 6727, 6808), (31, 7688, 7769), (31, 8649, 8730), (31, 9610, 9691), (31, 10571, 10652), (31, 11532, 11613), (31, 12493, 12574), (37, 6845, 6926), (37, 8214, 8295), (37, 9583, 9664), (37, 10952, 11033), (37, 12321, 12402), (43, 7396, 7477), (43, 9245, 9326), (43, 11094, 11175), (43, 12943, 13024), (47, 6642, 6708), (47, 8836, 8917), (47, 11045, 11126), (47, 13254, 13283), (53, 8427, 8508), (53, 11236, 11317), (59, 6962, 7043), (59, 10443, 10524), (61, 7442, 7523), (61, 11163, 11244), (67, 8978, 9059), (71, 10082, 10163), (73, 10658, 10739), (79, 12482, 12563)]

def row082_layer000_block000 : List ColouredInterval :=
  [(2, 6656, 6737), (2, 7168, 7249), (2, 8192, 8273), (2, 9216, 9297), (2, 10240, 10321), (2, 11264, 11345), (2, 12288, 12369), (2, 8192, 8273), (2, 10240, 10321), (2, 12288, 12369), (2, 8192, 8273), (2, 12288, 12369), (2, 8192, 8273), (3, 6642, 6642), (3, 6642, 6642)]

def row082_layer000_block001 : List ColouredInterval :=
  [(3, 7290, 7371), (3, 8019, 8100), (3, 8748, 8829), (3, 9477, 9558), (3, 10206, 10287), (3, 10935, 11016), (3, 11664, 11745), (3, 12393, 12474), (3, 13122, 13203), (3, 6642, 6642), (3, 8748, 8829), (3, 10935, 11016), (3, 13122, 13203), (3, 6642, 6642), (3, 13122, 13203)]

def row082_layer000_block002 : List ColouredInterval :=
  [(5, 6875, 6956), (5, 7500, 7581), (5, 8125, 8206), (5, 8750, 8831), (5, 9375, 9456), (5, 10000, 10081), (5, 10625, 10706), (5, 11250, 11331), (5, 11875, 11956), (5, 12500, 12581), (5, 13125, 13206), (5, 9375, 9456), (5, 12500, 12581), (7, 6860, 6941), (7, 7203, 7284)]

def row082_layer000_block003 : List ColouredInterval :=
  [(7, 7546, 7627), (7, 7889, 7970), (7, 8232, 8313), (7, 8575, 8656), (7, 8918, 8999), (7, 9261, 9342), (7, 7203, 7284), (7, 9604, 9685), (7, 12005, 12086), (11, 6655, 6736), (11, 7986, 8067), (11, 9317, 9398), (11, 10648, 10729), (11, 11979, 12060), (13, 6642, 6672)]

def row082_layer000_block004 : List ColouredInterval :=
  [(13, 8788, 8869), (13, 10985, 11066), (13, 13182, 13263), (17, 6647, 6728), (17, 6936, 7017), (17, 7225, 7306), (17, 7514, 7595), (17, 7803, 7884), (17, 9826, 9907), (19, 6859, 6940), (19, 7220, 7301), (19, 7581, 7662), (19, 7942, 8023), (19, 8303, 8384), (19, 8664, 8745)]

def row082_layer000_block005 : List ColouredInterval :=
  [(19, 9025, 9106), (19, 9386, 9467), (19, 9747, 9828), (19, 6859, 6940), (23, 6877, 6958), (23, 7406, 7487), (23, 7935, 8016), (23, 8464, 8545), (23, 8993, 9074), (23, 9522, 9603), (23, 10051, 10132), (23, 10580, 10661), (23, 11109, 11190), (23, 11638, 11719), (23, 12167, 12248)]

def row082_layer000_block006 : List ColouredInterval :=
  [(23, 12696, 12777), (23, 13225, 13283), (23, 12167, 12248), (29, 6728, 6809), (29, 7569, 7650), (29, 8410, 8491), (29, 9251, 9332), (29, 10092, 10173), (29, 10933, 11014), (29, 11774, 11855), (29, 12615, 12696), (31, 6727, 6808), (31, 7688, 7769), (31, 8649, 8730), (31, 9610, 9691)]

def row082_layer000_block007 : List ColouredInterval :=
  [(31, 10571, 10652), (31, 11532, 11613), (31, 12493, 12574), (37, 6845, 6926), (37, 8214, 8295), (37, 9583, 9664), (37, 10952, 11033), (37, 12321, 12402), (43, 7396, 7477), (43, 9245, 9326), (43, 11094, 11175), (43, 12943, 13024), (47, 6642, 6708), (47, 8836, 8917), (47, 11045, 11126)]

def row082_layer000_block008 : List ColouredInterval :=
  [(47, 13254, 13283), (53, 8427, 8508), (53, 11236, 11317), (59, 6962, 7043), (59, 10443, 10524), (61, 7442, 7523), (61, 11163, 11244), (67, 8978, 9059), (71, 10082, 10163), (73, 10658, 10739), (79, 12482, 12563)]

def row082_layer000_chunks : List (List ColouredInterval) :=
  [row082_layer000_block000, row082_layer000_block001, row082_layer000_block002, row082_layer000_block003, row082_layer000_block004, row082_layer000_block005, row082_layer000_block006, row082_layer000_block007, row082_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_arithmetic : LayerArithmeticValid row082.height { lower := 6642, upper := 13284, M := 27 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_enumeration :
    activePowerIntervalList 82 27 6642 13284 = row082_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs000 :
    row082_layer000_block000.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs001 :
    row082_layer000_block001.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs002 :
    row082_layer000_block002.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs003 :
    row082_layer000_block003.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs004 :
    row082_layer000_block004.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs005 :
    row082_layer000_block005.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs006 :
    row082_layer000_block006.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs007 :
    row082_layer000_block007.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row082_layer000_pairs008 :
    row082_layer000_block008.all (fun I => row082_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row082_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row082_layer000_pairs008
