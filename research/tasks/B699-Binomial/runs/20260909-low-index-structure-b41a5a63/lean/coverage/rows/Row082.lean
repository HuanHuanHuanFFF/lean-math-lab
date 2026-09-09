import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row082_registered :
    decide (row082.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row082_goods_checked :
    row082.goods.all (goodSegmentCheck row082.height.i row082.height.r row082.height.s) = true := by
  decide +kernel

theorem row082_small_checked :
    coverCheck (2 * row082.height.i + 2) (row082.height.i * (row082.height.i - 1) - 1)
      (row082.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row082_layerCover_checked :
    coverCheck (row082.height.i * (row082.height.i - 1)) (row082.height.n0 - 1)
      (row082.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row082_layer000_checked :
    coverLayerCheck row082.height row082.goods { lower := 6642, upper := 13284, M := 27 } = true := by
  decide +kernel

theorem row082_layer001_checked :
    coverLayerCheck row082.height row082.goods { lower := 13284, upper := 26568, M := 23 } = true := by
  decide +kernel

theorem row082_layer002_checked :
    coverLayerCheck row082.height row082.goods { lower := 26568, upper := 53136, M := 20 } = true := by
  decide +kernel

theorem row082_layer003_checked :
    coverLayerCheck row082.height row082.goods { lower := 53136, upper := 106272, M := 17 } = true := by
  decide +kernel

theorem row082_layer004_checked :
    coverLayerCheck row082.height row082.goods { lower := 106272, upper := 212544, M := 14 } = true := by
  decide +kernel

theorem row082_layer005_checked :
    coverLayerCheck row082.height row082.goods { lower := 212544, upper := 425088, M := 12 } = true := by
  decide +kernel

theorem row082_layer006_checked :
    coverLayerCheck row082.height row082.goods { lower := 425088, upper := 850176, M := 11 } = true := by
  decide +kernel

theorem row082_layer007_checked :
    coverLayerCheck row082.height row082.goods { lower := 850176, upper := 1700352, M := 9 } = true := by
  decide +kernel

theorem row082_layer008_checked :
    coverLayerCheck row082.height row082.goods { lower := 1700352, upper := 3400704, M := 8 } = true := by
  decide +kernel

theorem row082_layer009_checked :
    coverLayerCheck row082.height row082.goods { lower := 3400704, upper := 6801408, M := 7 } = true := by
  decide +kernel

theorem row082_layer010_checked :
    coverLayerCheck row082.height row082.goods { lower := 6801408, upper := 13602816, M := 6 } = true := by
  decide +kernel

theorem row082_layer011_checked :
    coverLayerCheck row082.height row082.goods { lower := 13602816, upper := 27205632, M := 5 } = true := by
  decide +kernel

theorem row082_layer012_checked :
    coverLayerCheck row082.height row082.goods { lower := 27205632, upper := 54411264, M := 4 } = true := by
  decide +kernel

theorem row082_layer013_checked :
    coverLayerCheck row082.height row082.goods { lower := 54411264, upper := 108822528, M := 4 } = true := by
  decide +kernel

theorem row082_layer014_checked :
    coverLayerCheck row082.height row082.goods { lower := 108822528, upper := 217645056, M := 3 } = true := by
  decide +kernel

theorem row082_layer015_checked :
    coverLayerCheck row082.height row082.goods { lower := 217645056, upper := 435290112, M := 3 } = true := by
  decide +kernel

theorem row082_layer016_checked :
    coverLayerCheck row082.height row082.goods { lower := 435290112, upper := 870580224, M := 2 } = true := by
  decide +kernel

theorem row082_layer017_checked :
    coverLayerCheck row082.height row082.goods { lower := 870580224, upper := 1741160448, M := 2 } = true := by
  decide +kernel

theorem row082_layer018_checked :
    coverLayerCheck row082.height row082.goods { lower := 1741160448, upper := 3482320896, M := 2 } = true := by
  decide +kernel

theorem row082_layer019_checked :
    coverLayerCheck row082.height row082.goods { lower := 3482320896, upper := 6964641792, M := 2 } = true := by
  decide +kernel

theorem row082_layer020_checked :
    coverLayerCheck row082.height row082.goods { lower := 6964641792, upper := 10000000000, M := 2 } = true := by
  decide +kernel

theorem row082_layers_checked :
    row082.layers.all (coverLayerCheck row082.height row082.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row082.height row082.goods) = true
  simp only [List.all_cons, List.all_nil,
    row082_layer000_checked,
    row082_layer001_checked,
    row082_layer002_checked,
    row082_layer003_checked,
    row082_layer004_checked,
    row082_layer005_checked,
    row082_layer006_checked,
    row082_layer007_checked,
    row082_layer008_checked,
    row082_layer009_checked,
    row082_layer010_checked,
    row082_layer011_checked,
    row082_layer012_checked,
    row082_layer013_checked,
    row082_layer014_checked,
    row082_layer015_checked,
    row082_layer016_checked,
    row082_layer017_checked,
    row082_layer018_checked,
    row082_layer019_checked,
    row082_layer020_checked,
    Bool.true_and]

theorem row082_checked : finiteCoverRowCheck row082 = true := by
  simp only [finiteCoverRowCheck, row082_registered, row082_goods_checked,
    row082_small_checked, row082_layerCover_checked, row082_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row082_checked

end B699LowIndex
