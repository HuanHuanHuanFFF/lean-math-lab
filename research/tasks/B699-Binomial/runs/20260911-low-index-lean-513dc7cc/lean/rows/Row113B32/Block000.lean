import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row113_height : HeightCertificateDatum := { i := 113, r := 37, s := 79, n0Power10 := 9 }

def row113_goods : List GoodSegment := [
  { lower := 228, upper := 339, witness := RowWitness.topPrime 227 },
  { lower := 340, upper := 449, witness := RowWitness.topPrime 337 },
  { lower := 450, upper := 561, witness := RowWitness.topPrime 449 },
  { lower := 562, upper := 669, witness := RowWitness.topPrime 557 },
  { lower := 670, upper := 773, witness := RowWitness.topPrime 661 },
  { lower := 774, upper := 885, witness := RowWitness.topPrime 773 },
  { lower := 886, upper := 995, witness := RowWitness.topPrime 883 },
  { lower := 996, upper := 1103, witness := RowWitness.topPrime 991 },
  { lower := 1104, upper := 1215, witness := RowWitness.topPrime 1103 },
  { lower := 1216, upper := 1325, witness := RowWitness.topPrime 1213 },
  { lower := 1326, upper := 1433, witness := RowWitness.topPrime 1321 },
  { lower := 1434, upper := 1545, witness := RowWitness.topPrime 1433 },
  { lower := 1546, upper := 1655, witness := RowWitness.topPrime 1543 },
  { lower := 1656, upper := 1749, witness := RowWitness.topPrime 1637 },
  { lower := 1750, upper := 1859, witness := RowWitness.topPrime 1747 },
  { lower := 1860, upper := 1959, witness := RowWitness.topPrime 1847 },
  { lower := 1960, upper := 2063, witness := RowWitness.topPrime 1951 },
  { lower := 2064, upper := 2175, witness := RowWitness.topPrime 2063 },
  { lower := 2176, upper := 2273, witness := RowWitness.topPrime 2161 },
  { lower := 2274, upper := 2385, witness := RowWitness.topPrime 2273 },
  { lower := 2386, upper := 2495, witness := RowWitness.topPrime 2383 },
  { lower := 2496, upper := 2589, witness := RowWitness.topPrime 2477 },
  { lower := 2590, upper := 2691, witness := RowWitness.topPrime 2579 },
  { lower := 2692, upper := 2801, witness := RowWitness.topPrime 2689 },
  { lower := 2802, upper := 2913, witness := RowWitness.topPrime 2801 },
  { lower := 2914, upper := 3021, witness := RowWitness.topPrime 2909 },
  { lower := 3022, upper := 3131, witness := RowWitness.topPrime 3019 },
  { lower := 3132, upper := 3233, witness := RowWitness.topPrime 3121 },
  { lower := 3234, upper := 3341, witness := RowWitness.topPrime 3229 },
  { lower := 3342, upper := 3443, witness := RowWitness.topPrime 3331 },
  { lower := 3444, upper := 3545, witness := RowWitness.topPrime 3433 },
  { lower := 3546, upper := 3653, witness := RowWitness.topPrime 3541 },
  { lower := 3654, upper := 3755, witness := RowWitness.topPrime 3643 },
  { lower := 3756, upper := 3851, witness := RowWitness.topPrime 3739 },
  { lower := 3852, upper := 3963, witness := RowWitness.topPrime 3851 },
  { lower := 3964, upper := 4059, witness := RowWitness.topPrime 3947 },
  { lower := 4060, upper := 4169, witness := RowWitness.topPrime 4057 },
  { lower := 4170, upper := 4271, witness := RowWitness.topPrime 4159 },
  { lower := 4272, upper := 4383, witness := RowWitness.topPrime 4271 },
  { lower := 4384, upper := 4485, witness := RowWitness.topPrime 4373 },
  { lower := 4486, upper := 4595, witness := RowWitness.topPrime 4483 },
  { lower := 4596, upper := 4703, witness := RowWitness.topPrime 4591 },
  { lower := 4704, upper := 4815, witness := RowWitness.topPrime 4703 },
  { lower := 4816, upper := 4925, witness := RowWitness.topPrime 4813 },
  { lower := 4926, upper := 5031, witness := RowWitness.topPrime 4919 },
  { lower := 5032, upper := 5135, witness := RowWitness.topPrime 5023 },
  { lower := 5136, upper := 5231, witness := RowWitness.topPrime 5119 },
  { lower := 5232, upper := 5343, witness := RowWitness.topPrime 5231 },
  { lower := 5344, upper := 5445, witness := RowWitness.topPrime 5333 },
  { lower := 5446, upper := 5555, witness := RowWitness.topPrime 5443 },
  { lower := 5556, upper := 5643, witness := RowWitness.topPrime 5531 },
  { lower := 5644, upper := 5753, witness := RowWitness.topPrime 5641 },
  { lower := 5754, upper := 5861, witness := RowWitness.topPrime 5749 },
  { lower := 5862, upper := 5973, witness := RowWitness.topPrime 5861 },
  { lower := 5974, upper := 6065, witness := RowWitness.topPrime 5953 },
  { lower := 6066, upper := 6165, witness := RowWitness.topPrime 6053 },
  { lower := 6166, upper := 6275, witness := RowWitness.topPrime 6163 },
  { lower := 6276, upper := 6383, witness := RowWitness.topPrime 6271 },
  { lower := 6384, upper := 6491, witness := RowWitness.topPrime 6379 },
  { lower := 6492, upper := 6603, witness := RowWitness.topPrime 6491 },
  { lower := 6604, upper := 6711, witness := RowWitness.topPrime 6599 },
  { lower := 6712, upper := 6821, witness := RowWitness.topPrime 6709 },
  { lower := 6822, upper := 6915, witness := RowWitness.topPrime 6803 },
  { lower := 6916, upper := 7023, witness := RowWitness.topPrime 6911 },
  { lower := 7024, upper := 7131, witness := RowWitness.topPrime 7019 },
  { lower := 7132, upper := 7241, witness := RowWitness.topPrime 7129 },
  { lower := 7242, upper := 7349, witness := RowWitness.topPrime 7237 },
  { lower := 7350, upper := 7461, witness := RowWitness.topPrime 7349 },
  { lower := 7462, upper := 7571, witness := RowWitness.topPrime 7459 },
  { lower := 7572, upper := 7673, witness := RowWitness.topPrime 7561 },
  { lower := 7674, upper := 7785, witness := RowWitness.topPrime 7673 },
  { lower := 7786, upper := 7871, witness := RowWitness.topPrime 7759 },
  { lower := 7872, upper := 7979, witness := RowWitness.topPrime 7867 },
  { lower := 7980, upper := 8075, witness := RowWitness.topPrime 7963 },
  { lower := 8076, upper := 8181, witness := RowWitness.topPrime 8069 },
  { lower := 8182, upper := 8291, witness := RowWitness.topPrime 8179 },
  { lower := 8292, upper := 8403, witness := RowWitness.topPrime 8291 },
  { lower := 8404, upper := 8501, witness := RowWitness.topPrime 8389 },
  { lower := 8502, upper := 8613, witness := RowWitness.topPrime 8501 },
  { lower := 8614, upper := 8721, witness := RowWitness.topPrime 8609 },
  { lower := 8722, upper := 8831, witness := RowWitness.topPrime 8719 },
  { lower := 8832, upper := 8943, witness := RowWitness.topPrime 8831 },
  { lower := 8944, upper := 9053, witness := RowWitness.topPrime 8941 },
  { lower := 9054, upper := 9161, witness := RowWitness.topPrime 9049 },
  { lower := 9162, upper := 9273, witness := RowWitness.topPrime 9161 },
  { lower := 9274, upper := 9369, witness := RowWitness.topPrime 9257 },
  { lower := 9370, upper := 9461, witness := RowWitness.topPrime 9349 },
  { lower := 9462, upper := 9573, witness := RowWitness.topPrime 9461 },
  { lower := 9574, upper := 9663, witness := RowWitness.topPrime 9551 },
  { lower := 9664, upper := 9773, witness := RowWitness.topPrime 9661 },
  { lower := 9774, upper := 9881, witness := RowWitness.topPrime 9769 },
  { lower := 9882, upper := 9983, witness := RowWitness.topPrime 9871 },
  { lower := 9984, upper := 10085, witness := RowWitness.topPrime 9973 },
  { lower := 10086, upper := 10191, witness := RowWitness.topPrime 10079 },
  { lower := 10192, upper := 10293, witness := RowWitness.topPrime 10181 },
  { lower := 10294, upper := 10401, witness := RowWitness.topPrime 10289 },
  { lower := 10402, upper := 10511, witness := RowWitness.topPrime 10399 },
  { lower := 10512, upper := 10613, witness := RowWitness.topPrime 10501 },
  { lower := 10614, upper := 10725, witness := RowWitness.topPrime 10613 },
  { lower := 10726, upper := 10835, witness := RowWitness.topPrime 10723 },
  { lower := 10836, upper := 10943, witness := RowWitness.topPrime 10831 },
  { lower := 10944, upper := 11051, witness := RowWitness.topPrime 10939 },
  { lower := 11052, upper := 11159, witness := RowWitness.topPrime 11047 },
  { lower := 11160, upper := 11271, witness := RowWitness.topPrime 11159 },
  { lower := 11272, upper := 11373, witness := RowWitness.topPrime 11261 },
  { lower := 11374, upper := 11481, witness := RowWitness.topPrime 11369 },
  { lower := 11482, upper := 11583, witness := RowWitness.topPrime 11471 },
  { lower := 11584, upper := 11691, witness := RowWitness.topPrime 11579 },
  { lower := 11692, upper := 11801, witness := RowWitness.topPrime 11689 },
  { lower := 11802, upper := 11913, witness := RowWitness.topPrime 11801 },
  { lower := 11914, upper := 12021, witness := RowWitness.topPrime 11909 },
  { lower := 12022, upper := 12123, witness := RowWitness.topPrime 12011 },
  { lower := 12124, upper := 12231, witness := RowWitness.topPrime 12119 },
  { lower := 12232, upper := 12339, witness := RowWitness.topPrime 12227 },
  { lower := 12340, upper := 12441, witness := RowWitness.topPrime 12329 },
  { lower := 12442, upper := 12549, witness := RowWitness.topPrime 12437 },
  { lower := 12550, upper := 12655, witness := RowWitness.topPrime 12547 },
  { lower := 12696, upper := 12727, witness := RowWitness.topPrime 12689 },
  { lower := 12800, upper := 12808, witness := RowWitness.topPrime 12799 },
  { lower := 13125, upper := 13233, witness := RowWitness.topPrime 13121 },
  { lower := 13234, upper := 13341, witness := RowWitness.topPrime 13229 },
  { lower := 13342, upper := 13422, witness := RowWitness.topPrime 13339 },
  { lower := 13454, upper := 13563, witness := RowWitness.topPrime 13451 },
  { lower := 13564, upper := 13568, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13823, witness := RowWitness.topPrime 13711 },
  { lower := 13824, upper := 13890, witness := RowWitness.topPrime 13807 },
  { lower := 13924, upper := 13963, witness := RowWitness.topPrime 13921 },
  { lower := 14336, upper := 14439, witness := RowWitness.topPrime 14327 },
  { lower := 14440, upper := 14518, witness := RowWitness.topPrime 14437 },
  { lower := 14641, upper := 14692, witness := RowWitness.topPrime 14639 },
  { lower := 14739, upper := 14753, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14851, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14904, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15112, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15233, witness := RowWitness.topPrime 15121 },
  { lower := 15234, upper := 15241, witness := RowWitness.topPrime 15233 },
  { lower := 15360, upper := 15471, witness := RowWitness.topPrime 15359 },
  { lower := 15472, upper := 15491, witness := RowWitness.topPrime 15467 },
  { lower := 15979, upper := 16085, witness := RowWitness.topPrime 15973 },
  { lower := 16086, upper := 16099, witness := RowWitness.topPrime 16073 },
  { lower := 16384, upper := 16493, witness := RowWitness.topPrime 16381 },
  { lower := 16494, upper := 16496, witness := RowWitness.topPrime 16493 },
  { lower := 16807, upper := 16899, witness := RowWitness.topPrime 16787 },
  { lower := 16900, upper := 16932, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17411, witness := RowWitness.topPrime 17299 },
  { lower := 17412, upper := 17513, witness := RowWitness.topPrime 17401 },
  { lower := 17514, upper := 17520, witness := RowWitness.topPrime 17509 },
  { lower := 17576, upper := 17608, witness := RowWitness.topPrime 17573 },
  { lower := 17661, upper := 17771, witness := RowWitness.topPrime 17659 },
  { lower := 17772, upper := 17773, witness := RowWitness.topPrime 17761 },
  { lower := 18259, upper := 18337, witness := RowWitness.topPrime 18257 },
  { lower := 18490, upper := 18593, witness := RowWitness.topPrime 18481 },
  { lower := 18594, upper := 18603, witness := RowWitness.topPrime 18593 },
  { lower := 18605, upper := 18614, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18717, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18746, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18861, witness := RowWitness.topPrime 18749 },
  { lower := 18862, upper := 18862, witness := RowWitness.topPrime 18859 },
  { lower := 19208, upper := 19319, witness := RowWitness.topPrime 19207 },
  { lower := 19320, upper := 19320, witness := RowWitness.topPrime 19319 },
  { lower := 19663, upper := 19773, witness := RowWitness.topPrime 19661 },
  { lower := 19774, upper := 19795, witness := RowWitness.topPrime 19763 },
  { lower := 19881, upper := 19885, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 19993, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20273, witness := RowWitness.topPrime 20161 },
  { lower := 20274, upper := 20293, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20451, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20514, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20645, witness := RowWitness.topPrime 20533 },
  { lower := 20646, upper := 20647, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20689, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21254, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21395, witness := RowWitness.topPrime 21283 },
  { lower := 21396, upper := 21408, witness := RowWitness.topPrime 21391 },
  { lower := 21609, upper := 21616, witness := RowWitness.topPrime 21601 },
  { lower := 21870, upper := 21975, witness := RowWitness.topPrime 21863 },
  { lower := 21976, upper := 22016, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22205, witness := RowWitness.topPrime 22093 },
  { lower := 22206, upper := 22215, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22581, witness := RowWitness.topPrime 22469 },
  { lower := 22582, upper := 22584, witness := RowWitness.topPrime 22573 },
  { lower := 22627, upper := 22640, witness := RowWitness.topPrime 22621 },
  { lower := 23552, upper := 23646, witness := RowWitness.topPrime 23549 },
  { lower := 23763, upper := 23873, witness := RowWitness.topPrime 23761 },
  { lower := 23874, upper := 23874, witness := RowWitness.topPrime 23873 },
  { lower := 24010, upper := 24119, witness := RowWitness.topPrime 24007 },
  { lower := 24120, upper := 24149, witness := RowWitness.topPrime 24113 },
  { lower := 24167, upper := 24169, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24441, witness := RowWitness.topPrime 24329 },
  { lower := 24442, upper := 24479, witness := RowWitness.topPrime 24439 },
  { lower := 24576, upper := 24683, witness := RowWitness.topPrime 24571 },
  { lower := 24684, upper := 24688, witness := RowWitness.topPrime 24683 },
  { lower := 25000, upper := 25076, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25301, witness := RowWitness.topPrime 25189 },
  { lower := 25302, upper := 25393, witness := RowWitness.topPrime 25301 },
  { lower := 26047, upper := 26123, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26476, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26523, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26620, witness := RowWitness.topPrime 26597 },
  { lower := 26624, upper := 26709, witness := RowWitness.topPrime 26597 },
  { lower := 26710, upper := 26736, witness := RowWitness.topPrime 26701 },
  { lower := 26934, upper := 27008, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27492, witness := RowWitness.topPrime 27431 },
  { lower := 27951, upper := 27960, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28202, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28237, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28685, witness := RowWitness.topPrime 28573 },
  { lower := 28686, upper := 28689, witness := RowWitness.topPrime 28669 },
  { lower := 28717, upper := 28823, witness := RowWitness.topPrime 28711 },
  { lower := 28824, upper := 28861, witness := RowWitness.topPrime 28817 },
  { lower := 29584, upper := 29590, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29880, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30358, witness := RowWitness.topPrime 30253 },
  { lower := 30618, upper := 30705, witness := RowWitness.topPrime 30593 },
  { lower := 30706, upper := 30715, witness := RowWitness.topPrime 30703 },
  { lower := 30720, upper := 30730, witness := RowWitness.topPrime 30713 },
  { lower := 30758, upper := 30832, witness := RowWitness.topPrime 30757 },
  { lower := 30926, upper := 31011, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31305, witness := RowWitness.topPrime 31193 },
  { lower := 31306, upper := 31325, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31362, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31509, witness := RowWitness.topPrime 31397 },
  { lower := 31510, upper := 31535, witness := RowWitness.topPrime 31489 },
  { lower := 31939, upper := 31939, witness := RowWitness.topPrime 31907 },
  { lower := 31974, upper := 32051, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32880, witness := RowWitness.topPrime 32803 },
  { lower := 33620, upper := 33731, witness := RowWitness.topPrime 33619 },
  { lower := 33732, upper := 33732, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34449, witness := RowWitness.topPrime 34337 },
  { lower := 34450, upper := 34503, witness := RowWitness.topPrime 34439 },
  { lower := 34816, upper := 34919, witness := RowWitness.topPrime 34807 },
  { lower := 34920, upper := 34922, witness := RowWitness.topPrime 34919 },
  { lower := 35152, upper := 35243, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35403, witness := RowWitness.topPrime 35291 },
  { lower := 35404, upper := 35413, witness := RowWitness.topPrime 35401 },
  { lower := 36015, upper := 36024, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36609, witness := RowWitness.topPrime 36497 },
  { lower := 36610, upper := 36613, witness := RowWitness.topPrime 36607 },
  { lower := 37210, upper := 37291, witness := RowWitness.topPrime 37201 },
  { lower := 37303, upper := 37322, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37415, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37461, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37605, witness := RowWitness.topPrime 37493 },
  { lower := 37606, upper := 37612, witness := RowWitness.topPrime 37591 },
  { lower := 37636, upper := 37665, witness := RowWitness.topPrime 37633 },
  { lower := 38912, upper := 38941, witness := RowWitness.topPrime 38903 },
  { lower := 39326, upper := 39435, witness := RowWitness.topPrime 39323 },
  { lower := 39436, upper := 39438, witness := RowWitness.topPrime 39419 },
  { lower := 39605, upper := 39658, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40440, witness := RowWitness.topPrime 40387 },
  { lower := 40817, upper := 40916, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41043, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41855, witness := RowWitness.topPrime 41771 },
  { lower := 43740, upper := 43833, witness := RowWitness.topPrime 43721 },
  { lower := 43834, upper := 43852, witness := RowWitness.topPrime 43801 },
  { lower := 43940, upper := 44035, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44292, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 45002, witness := RowWitness.topPrime 44939 },
  { lower := 45056, upper := 45056, witness := RowWitness.topPrime 45053 },
  { lower := 47526, upper := 47633, witness := RowWitness.topPrime 47521 },
  { lower := 47634, upper := 47636, witness := RowWitness.topPrime 47629 },
  { lower := 48013, upper := 48093, witness := RowWitness.topPrime 47981 },
  { lower := 48094, upper := 48125, witness := RowWitness.topPrime 48091 },
  { lower := 48734, upper := 48845, witness := RowWitness.topPrime 48733 },
  { lower := 48846, upper := 48846, witness := RowWitness.topPrime 48823 },
  { lower := 49152, upper := 49242, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50040, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50522, witness := RowWitness.topPrime 50417 },
  { lower := 53125, upper := 53157, witness := RowWitness.topPrime 53117 },
  { lower := 53290, upper := 53360, witness := RowWitness.topPrime 53281 },
  { lower := 55451, upper := 55553, witness := RowWitness.topPrime 55441 },
  { lower := 55554, upper := 55559, witness := RowWitness.topPrime 55547 },
  { lower := 57344, upper := 57357, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58676, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59068, witness := RowWitness.topPrime 59029 },
  { lower := 59582, upper := 59648, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62522, witness := RowWitness.topPrime 62497 },
  { lower := 63368, upper := 63369, witness := RowWitness.topPrime 63367 },
  { lower := 63948, upper := 63981, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65633, witness := RowWitness.topPrime 65521 },
  { lower := 65634, upper := 65648, witness := RowWitness.topPrime 65633 },
  { lower := 67335, upper := 67340, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68751, witness := RowWitness.topPrime 68639 },
  { lower := 68752, upper := 68763, witness := RowWitness.topPrime 68749 },
  { lower := 68782, upper := 68806, witness := RowWitness.topPrime 68777 },
  { lower := 68890, upper := 68894, witness := RowWitness.topPrime 68881 },
  { lower := 68921, upper := 69002, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71398, witness := RowWitness.topPrime 71287 },
  { lower := 73205, upper := 73279, witness := RowWitness.topPrime 73189 },
  { lower := 73728, upper := 73807, witness := RowWitness.topPrime 73727 },
  { lower := 85264, upper := 85281, witness := RowWitness.topPrime 85259 },
  { lower := 85293, upper := 85371, witness := RowWitness.topPrime 85259 },
  { lower := 85372, upper := 85376, witness := RowWitness.topPrime 85369 },
  { lower := 85697, upper := 85795, witness := RowWitness.topPrime 85691 },
  { lower := 91854, upper := 91921, witness := RowWitness.topPrime 91841 },
  { lower := 95052, upper := 95139, witness := RowWitness.topPrime 95027 },
  { lower := 95140, upper := 95160, witness := RowWitness.topPrime 95131 },
  { lower := 98415, upper := 98416, witness := RowWitness.topPrime 98411 },
  { lower := 103041, upper := 103085, witness := RowWitness.topPrime 103007 },
  { lower := 122412, upper := 122429, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131838, witness := RowWitness.topPrime 131759 },
  { lower := 137842, upper := 137893, witness := RowWitness.topPrime 137831 },
  { lower := 137917, upper := 137954, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142917, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146446, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148949, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148989, witness := RowWitness.topPrime 148949 },
  { lower := 327701, upper := 327792, witness := RowWitness.topPrime 327689 }
]

def row113_layers : List CoverLayer := [
  { lower := 12656, upper := 25312, M := 25 },
  { lower := 25312, upper := 50624, M := 21 },
  { lower := 50624, upper := 101248, M := 17 },
  { lower := 101248, upper := 202496, M := 14 },
  { lower := 202496, upper := 404992, M := 11 },
  { lower := 404992, upper := 809984, M := 9 },
  { lower := 809984, upper := 1619968, M := 8 },
  { lower := 1619968, upper := 3239936, M := 6 },
  { lower := 3239936, upper := 6479872, M := 5 },
  { lower := 6479872, upper := 12959744, M := 4 },
  { lower := 12959744, upper := 25919488, M := 4 },
  { lower := 25919488, upper := 51838976, M := 3 },
  { lower := 51838976, upper := 103677952, M := 3 },
  { lower := 103677952, upper := 207355904, M := 2 },
  { lower := 207355904, upper := 414711808, M := 2 },
  { lower := 414711808, upper := 829423616, M := 2 },
  { lower := 829423616, upper := 1000000000, M := 1 }
]

def row113 : FiniteCoverRow := {
  height := row113_height,
  goods := row113_goods,
  layers := row113_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good000_checked :
    goodSegmentCheck 113 37 79
      { lower := 228, upper := 339, witness := RowWitness.topPrime 227 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good001_checked :
    goodSegmentCheck 113 37 79
      { lower := 340, upper := 449, witness := RowWitness.topPrime 337 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good002_checked :
    goodSegmentCheck 113 37 79
      { lower := 450, upper := 561, witness := RowWitness.topPrime 449 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good003_checked :
    goodSegmentCheck 113 37 79
      { lower := 562, upper := 669, witness := RowWitness.topPrime 557 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good004_checked :
    goodSegmentCheck 113 37 79
      { lower := 670, upper := 773, witness := RowWitness.topPrime 661 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good005_checked :
    goodSegmentCheck 113 37 79
      { lower := 774, upper := 885, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good006_checked :
    goodSegmentCheck 113 37 79
      { lower := 886, upper := 995, witness := RowWitness.topPrime 883 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good007_checked :
    goodSegmentCheck 113 37 79
      { lower := 996, upper := 1103, witness := RowWitness.topPrime 991 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good008_checked :
    goodSegmentCheck 113 37 79
      { lower := 1104, upper := 1215, witness := RowWitness.topPrime 1103 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good009_checked :
    goodSegmentCheck 113 37 79
      { lower := 1216, upper := 1325, witness := RowWitness.topPrime 1213 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good010_checked :
    goodSegmentCheck 113 37 79
      { lower := 1326, upper := 1433, witness := RowWitness.topPrime 1321 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good011_checked :
    goodSegmentCheck 113 37 79
      { lower := 1434, upper := 1545, witness := RowWitness.topPrime 1433 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good012_checked :
    goodSegmentCheck 113 37 79
      { lower := 1546, upper := 1655, witness := RowWitness.topPrime 1543 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good013_checked :
    goodSegmentCheck 113 37 79
      { lower := 1656, upper := 1749, witness := RowWitness.topPrime 1637 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good014_checked :
    goodSegmentCheck 113 37 79
      { lower := 1750, upper := 1859, witness := RowWitness.topPrime 1747 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good015_checked :
    goodSegmentCheck 113 37 79
      { lower := 1860, upper := 1959, witness := RowWitness.topPrime 1847 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good016_checked :
    goodSegmentCheck 113 37 79
      { lower := 1960, upper := 2063, witness := RowWitness.topPrime 1951 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good017_checked :
    goodSegmentCheck 113 37 79
      { lower := 2064, upper := 2175, witness := RowWitness.topPrime 2063 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good018_checked :
    goodSegmentCheck 113 37 79
      { lower := 2176, upper := 2273, witness := RowWitness.topPrime 2161 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good019_checked :
    goodSegmentCheck 113 37 79
      { lower := 2274, upper := 2385, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good020_checked :
    goodSegmentCheck 113 37 79
      { lower := 2386, upper := 2495, witness := RowWitness.topPrime 2383 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good021_checked :
    goodSegmentCheck 113 37 79
      { lower := 2496, upper := 2589, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good022_checked :
    goodSegmentCheck 113 37 79
      { lower := 2590, upper := 2691, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good023_checked :
    goodSegmentCheck 113 37 79
      { lower := 2692, upper := 2801, witness := RowWitness.topPrime 2689 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good024_checked :
    goodSegmentCheck 113 37 79
      { lower := 2802, upper := 2913, witness := RowWitness.topPrime 2801 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good025_checked :
    goodSegmentCheck 113 37 79
      { lower := 2914, upper := 3021, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good026_checked :
    goodSegmentCheck 113 37 79
      { lower := 3022, upper := 3131, witness := RowWitness.topPrime 3019 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good027_checked :
    goodSegmentCheck 113 37 79
      { lower := 3132, upper := 3233, witness := RowWitness.topPrime 3121 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good028_checked :
    goodSegmentCheck 113 37 79
      { lower := 3234, upper := 3341, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good029_checked :
    goodSegmentCheck 113 37 79
      { lower := 3342, upper := 3443, witness := RowWitness.topPrime 3331 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good030_checked :
    goodSegmentCheck 113 37 79
      { lower := 3444, upper := 3545, witness := RowWitness.topPrime 3433 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good031_checked :
    goodSegmentCheck 113 37 79
      { lower := 3546, upper := 3653, witness := RowWitness.topPrime 3541 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good032_checked :
    goodSegmentCheck 113 37 79
      { lower := 3654, upper := 3755, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good033_checked :
    goodSegmentCheck 113 37 79
      { lower := 3756, upper := 3851, witness := RowWitness.topPrime 3739 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good034_checked :
    goodSegmentCheck 113 37 79
      { lower := 3852, upper := 3963, witness := RowWitness.topPrime 3851 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good035_checked :
    goodSegmentCheck 113 37 79
      { lower := 3964, upper := 4059, witness := RowWitness.topPrime 3947 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good036_checked :
    goodSegmentCheck 113 37 79
      { lower := 4060, upper := 4169, witness := RowWitness.topPrime 4057 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good037_checked :
    goodSegmentCheck 113 37 79
      { lower := 4170, upper := 4271, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good038_checked :
    goodSegmentCheck 113 37 79
      { lower := 4272, upper := 4383, witness := RowWitness.topPrime 4271 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good039_checked :
    goodSegmentCheck 113 37 79
      { lower := 4384, upper := 4485, witness := RowWitness.topPrime 4373 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good040_checked :
    goodSegmentCheck 113 37 79
      { lower := 4486, upper := 4595, witness := RowWitness.topPrime 4483 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good041_checked :
    goodSegmentCheck 113 37 79
      { lower := 4596, upper := 4703, witness := RowWitness.topPrime 4591 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good042_checked :
    goodSegmentCheck 113 37 79
      { lower := 4704, upper := 4815, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good043_checked :
    goodSegmentCheck 113 37 79
      { lower := 4816, upper := 4925, witness := RowWitness.topPrime 4813 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good044_checked :
    goodSegmentCheck 113 37 79
      { lower := 4926, upper := 5031, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good045_checked :
    goodSegmentCheck 113 37 79
      { lower := 5032, upper := 5135, witness := RowWitness.topPrime 5023 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good046_checked :
    goodSegmentCheck 113 37 79
      { lower := 5136, upper := 5231, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good047_checked :
    goodSegmentCheck 113 37 79
      { lower := 5232, upper := 5343, witness := RowWitness.topPrime 5231 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good048_checked :
    goodSegmentCheck 113 37 79
      { lower := 5344, upper := 5445, witness := RowWitness.topPrime 5333 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good049_checked :
    goodSegmentCheck 113 37 79
      { lower := 5446, upper := 5555, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good050_checked :
    goodSegmentCheck 113 37 79
      { lower := 5556, upper := 5643, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good051_checked :
    goodSegmentCheck 113 37 79
      { lower := 5644, upper := 5753, witness := RowWitness.topPrime 5641 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good052_checked :
    goodSegmentCheck 113 37 79
      { lower := 5754, upper := 5861, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good053_checked :
    goodSegmentCheck 113 37 79
      { lower := 5862, upper := 5973, witness := RowWitness.topPrime 5861 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good054_checked :
    goodSegmentCheck 113 37 79
      { lower := 5974, upper := 6065, witness := RowWitness.topPrime 5953 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good055_checked :
    goodSegmentCheck 113 37 79
      { lower := 6066, upper := 6165, witness := RowWitness.topPrime 6053 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good056_checked :
    goodSegmentCheck 113 37 79
      { lower := 6166, upper := 6275, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good057_checked :
    goodSegmentCheck 113 37 79
      { lower := 6276, upper := 6383, witness := RowWitness.topPrime 6271 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good058_checked :
    goodSegmentCheck 113 37 79
      { lower := 6384, upper := 6491, witness := RowWitness.topPrime 6379 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good059_checked :
    goodSegmentCheck 113 37 79
      { lower := 6492, upper := 6603, witness := RowWitness.topPrime 6491 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good060_checked :
    goodSegmentCheck 113 37 79
      { lower := 6604, upper := 6711, witness := RowWitness.topPrime 6599 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good061_checked :
    goodSegmentCheck 113 37 79
      { lower := 6712, upper := 6821, witness := RowWitness.topPrime 6709 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good062_checked :
    goodSegmentCheck 113 37 79
      { lower := 6822, upper := 6915, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good063_checked :
    goodSegmentCheck 113 37 79
      { lower := 6916, upper := 7023, witness := RowWitness.topPrime 6911 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good064_checked :
    goodSegmentCheck 113 37 79
      { lower := 7024, upper := 7131, witness := RowWitness.topPrime 7019 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good065_checked :
    goodSegmentCheck 113 37 79
      { lower := 7132, upper := 7241, witness := RowWitness.topPrime 7129 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good066_checked :
    goodSegmentCheck 113 37 79
      { lower := 7242, upper := 7349, witness := RowWitness.topPrime 7237 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good067_checked :
    goodSegmentCheck 113 37 79
      { lower := 7350, upper := 7461, witness := RowWitness.topPrime 7349 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good068_checked :
    goodSegmentCheck 113 37 79
      { lower := 7462, upper := 7571, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good069_checked :
    goodSegmentCheck 113 37 79
      { lower := 7572, upper := 7673, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good070_checked :
    goodSegmentCheck 113 37 79
      { lower := 7674, upper := 7785, witness := RowWitness.topPrime 7673 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good071_checked :
    goodSegmentCheck 113 37 79
      { lower := 7786, upper := 7871, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good072_checked :
    goodSegmentCheck 113 37 79
      { lower := 7872, upper := 7979, witness := RowWitness.topPrime 7867 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good073_checked :
    goodSegmentCheck 113 37 79
      { lower := 7980, upper := 8075, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good074_checked :
    goodSegmentCheck 113 37 79
      { lower := 8076, upper := 8181, witness := RowWitness.topPrime 8069 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good075_checked :
    goodSegmentCheck 113 37 79
      { lower := 8182, upper := 8291, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good076_checked :
    goodSegmentCheck 113 37 79
      { lower := 8292, upper := 8403, witness := RowWitness.topPrime 8291 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good077_checked :
    goodSegmentCheck 113 37 79
      { lower := 8404, upper := 8501, witness := RowWitness.topPrime 8389 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good078_checked :
    goodSegmentCheck 113 37 79
      { lower := 8502, upper := 8613, witness := RowWitness.topPrime 8501 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good079_checked :
    goodSegmentCheck 113 37 79
      { lower := 8614, upper := 8721, witness := RowWitness.topPrime 8609 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good080_checked :
    goodSegmentCheck 113 37 79
      { lower := 8722, upper := 8831, witness := RowWitness.topPrime 8719 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good081_checked :
    goodSegmentCheck 113 37 79
      { lower := 8832, upper := 8943, witness := RowWitness.topPrime 8831 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good082_checked :
    goodSegmentCheck 113 37 79
      { lower := 8944, upper := 9053, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good083_checked :
    goodSegmentCheck 113 37 79
      { lower := 9054, upper := 9161, witness := RowWitness.topPrime 9049 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good084_checked :
    goodSegmentCheck 113 37 79
      { lower := 9162, upper := 9273, witness := RowWitness.topPrime 9161 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good085_checked :
    goodSegmentCheck 113 37 79
      { lower := 9274, upper := 9369, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good086_checked :
    goodSegmentCheck 113 37 79
      { lower := 9370, upper := 9461, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good087_checked :
    goodSegmentCheck 113 37 79
      { lower := 9462, upper := 9573, witness := RowWitness.topPrime 9461 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good088_checked :
    goodSegmentCheck 113 37 79
      { lower := 9574, upper := 9663, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good089_checked :
    goodSegmentCheck 113 37 79
      { lower := 9664, upper := 9773, witness := RowWitness.topPrime 9661 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good090_checked :
    goodSegmentCheck 113 37 79
      { lower := 9774, upper := 9881, witness := RowWitness.topPrime 9769 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good091_checked :
    goodSegmentCheck 113 37 79
      { lower := 9882, upper := 9983, witness := RowWitness.topPrime 9871 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good092_checked :
    goodSegmentCheck 113 37 79
      { lower := 9984, upper := 10085, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good093_checked :
    goodSegmentCheck 113 37 79
      { lower := 10086, upper := 10191, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good094_checked :
    goodSegmentCheck 113 37 79
      { lower := 10192, upper := 10293, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good095_checked :
    goodSegmentCheck 113 37 79
      { lower := 10294, upper := 10401, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good096_checked :
    goodSegmentCheck 113 37 79
      { lower := 10402, upper := 10511, witness := RowWitness.topPrime 10399 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good097_checked :
    goodSegmentCheck 113 37 79
      { lower := 10512, upper := 10613, witness := RowWitness.topPrime 10501 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good098_checked :
    goodSegmentCheck 113 37 79
      { lower := 10614, upper := 10725, witness := RowWitness.topPrime 10613 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good099_checked :
    goodSegmentCheck 113 37 79
      { lower := 10726, upper := 10835, witness := RowWitness.topPrime 10723 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good100_checked :
    goodSegmentCheck 113 37 79
      { lower := 10836, upper := 10943, witness := RowWitness.topPrime 10831 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good101_checked :
    goodSegmentCheck 113 37 79
      { lower := 10944, upper := 11051, witness := RowWitness.topPrime 10939 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good102_checked :
    goodSegmentCheck 113 37 79
      { lower := 11052, upper := 11159, witness := RowWitness.topPrime 11047 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good103_checked :
    goodSegmentCheck 113 37 79
      { lower := 11160, upper := 11271, witness := RowWitness.topPrime 11159 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good104_checked :
    goodSegmentCheck 113 37 79
      { lower := 11272, upper := 11373, witness := RowWitness.topPrime 11261 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good105_checked :
    goodSegmentCheck 113 37 79
      { lower := 11374, upper := 11481, witness := RowWitness.topPrime 11369 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good106_checked :
    goodSegmentCheck 113 37 79
      { lower := 11482, upper := 11583, witness := RowWitness.topPrime 11471 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good107_checked :
    goodSegmentCheck 113 37 79
      { lower := 11584, upper := 11691, witness := RowWitness.topPrime 11579 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good108_checked :
    goodSegmentCheck 113 37 79
      { lower := 11692, upper := 11801, witness := RowWitness.topPrime 11689 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good109_checked :
    goodSegmentCheck 113 37 79
      { lower := 11802, upper := 11913, witness := RowWitness.topPrime 11801 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good110_checked :
    goodSegmentCheck 113 37 79
      { lower := 11914, upper := 12021, witness := RowWitness.topPrime 11909 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good111_checked :
    goodSegmentCheck 113 37 79
      { lower := 12022, upper := 12123, witness := RowWitness.topPrime 12011 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good112_checked :
    goodSegmentCheck 113 37 79
      { lower := 12124, upper := 12231, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good113_checked :
    goodSegmentCheck 113 37 79
      { lower := 12232, upper := 12339, witness := RowWitness.topPrime 12227 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good114_checked :
    goodSegmentCheck 113 37 79
      { lower := 12340, upper := 12441, witness := RowWitness.topPrime 12329 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good115_checked :
    goodSegmentCheck 113 37 79
      { lower := 12442, upper := 12549, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good116_checked :
    goodSegmentCheck 113 37 79
      { lower := 12550, upper := 12655, witness := RowWitness.topPrime 12547 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good117_checked :
    goodSegmentCheck 113 37 79
      { lower := 12696, upper := 12727, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good118_checked :
    goodSegmentCheck 113 37 79
      { lower := 12800, upper := 12808, witness := RowWitness.topPrime 12799 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good119_checked :
    goodSegmentCheck 113 37 79
      { lower := 13125, upper := 13233, witness := RowWitness.topPrime 13121 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good120_checked :
    goodSegmentCheck 113 37 79
      { lower := 13234, upper := 13341, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good121_checked :
    goodSegmentCheck 113 37 79
      { lower := 13342, upper := 13422, witness := RowWitness.topPrime 13339 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good122_checked :
    goodSegmentCheck 113 37 79
      { lower := 13454, upper := 13563, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good123_checked :
    goodSegmentCheck 113 37 79
      { lower := 13564, upper := 13568, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good124_checked :
    goodSegmentCheck 113 37 79
      { lower := 13718, upper := 13823, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good125_checked :
    goodSegmentCheck 113 37 79
      { lower := 13824, upper := 13890, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good126_checked :
    goodSegmentCheck 113 37 79
      { lower := 13924, upper := 13963, witness := RowWitness.topPrime 13921 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good127_checked :
    goodSegmentCheck 113 37 79
      { lower := 14336, upper := 14439, witness := RowWitness.topPrime 14327 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good128_checked :
    goodSegmentCheck 113 37 79
      { lower := 14440, upper := 14518, witness := RowWitness.topPrime 14437 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good129_checked :
    goodSegmentCheck 113 37 79
      { lower := 14641, upper := 14692, witness := RowWitness.topPrime 14639 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good130_checked :
    goodSegmentCheck 113 37 79
      { lower := 14739, upper := 14753, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good131_checked :
    goodSegmentCheck 113 37 79
      { lower := 14792, upper := 14851, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good132_checked :
    goodSegmentCheck 113 37 79
      { lower := 14884, upper := 14904, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good133_checked :
    goodSegmentCheck 113 37 79
      { lower := 15059, upper := 15112, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good134_checked :
    goodSegmentCheck 113 37 79
      { lower := 15123, upper := 15233, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good135_checked :
    goodSegmentCheck 113 37 79
      { lower := 15234, upper := 15241, witness := RowWitness.topPrime 15233 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good136_checked :
    goodSegmentCheck 113 37 79
      { lower := 15360, upper := 15471, witness := RowWitness.topPrime 15359 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good137_checked :
    goodSegmentCheck 113 37 79
      { lower := 15472, upper := 15491, witness := RowWitness.topPrime 15467 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good138_checked :
    goodSegmentCheck 113 37 79
      { lower := 15979, upper := 16085, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good139_checked :
    goodSegmentCheck 113 37 79
      { lower := 16086, upper := 16099, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good140_checked :
    goodSegmentCheck 113 37 79
      { lower := 16384, upper := 16493, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good141_checked :
    goodSegmentCheck 113 37 79
      { lower := 16494, upper := 16496, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good142_checked :
    goodSegmentCheck 113 37 79
      { lower := 16807, upper := 16899, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good143_checked :
    goodSegmentCheck 113 37 79
      { lower := 16900, upper := 16932, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good144_checked :
    goodSegmentCheck 113 37 79
      { lower := 17303, upper := 17411, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good145_checked :
    goodSegmentCheck 113 37 79
      { lower := 17412, upper := 17513, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good146_checked :
    goodSegmentCheck 113 37 79
      { lower := 17514, upper := 17520, witness := RowWitness.topPrime 17509 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good147_checked :
    goodSegmentCheck 113 37 79
      { lower := 17576, upper := 17608, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good148_checked :
    goodSegmentCheck 113 37 79
      { lower := 17661, upper := 17771, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good149_checked :
    goodSegmentCheck 113 37 79
      { lower := 17772, upper := 17773, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good150_checked :
    goodSegmentCheck 113 37 79
      { lower := 18259, upper := 18337, witness := RowWitness.topPrime 18257 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good151_checked :
    goodSegmentCheck 113 37 79
      { lower := 18490, upper := 18593, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good152_checked :
    goodSegmentCheck 113 37 79
      { lower := 18594, upper := 18603, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good153_checked :
    goodSegmentCheck 113 37 79
      { lower := 18605, upper := 18614, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good154_checked :
    goodSegmentCheck 113 37 79
      { lower := 18634, upper := 18717, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good155_checked :
    goodSegmentCheck 113 37 79
      { lower := 18723, upper := 18746, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good156_checked :
    goodSegmentCheck 113 37 79
      { lower := 18750, upper := 18861, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good157_checked :
    goodSegmentCheck 113 37 79
      { lower := 18862, upper := 18862, witness := RowWitness.topPrime 18859 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good158_checked :
    goodSegmentCheck 113 37 79
      { lower := 19208, upper := 19319, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good159_checked :
    goodSegmentCheck 113 37 79
      { lower := 19320, upper := 19320, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good160_checked :
    goodSegmentCheck 113 37 79
      { lower := 19663, upper := 19773, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good161_checked :
    goodSegmentCheck 113 37 79
      { lower := 19774, upper := 19795, witness := RowWitness.topPrime 19763 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good162_checked :
    goodSegmentCheck 113 37 79
      { lower := 19881, upper := 19885, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good163_checked :
    goodSegmentCheck 113 37 79
      { lower := 19965, upper := 19993, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good164_checked :
    goodSegmentCheck 113 37 79
      { lower := 20172, upper := 20273, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good165_checked :
    goodSegmentCheck 113 37 79
      { lower := 20274, upper := 20293, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good166_checked :
    goodSegmentCheck 113 37 79
      { lower := 20402, upper := 20451, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good167_checked :
    goodSegmentCheck 113 37 79
      { lower := 20480, upper := 20514, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good168_checked :
    goodSegmentCheck 113 37 79
      { lower := 20535, upper := 20645, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good169_checked :
    goodSegmentCheck 113 37 79
      { lower := 20646, upper := 20647, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good170_checked :
    goodSegmentCheck 113 37 79
      { lower := 20667, upper := 20689, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good171_checked :
    goodSegmentCheck 113 37 79
      { lower := 21218, upper := 21254, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good172_checked :
    goodSegmentCheck 113 37 79
      { lower := 21296, upper := 21395, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good173_checked :
    goodSegmentCheck 113 37 79
      { lower := 21396, upper := 21408, witness := RowWitness.topPrime 21391 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good174_checked :
    goodSegmentCheck 113 37 79
      { lower := 21609, upper := 21616, witness := RowWitness.topPrime 21601 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good175_checked :
    goodSegmentCheck 113 37 79
      { lower := 21870, upper := 21975, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good176_checked :
    goodSegmentCheck 113 37 79
      { lower := 21976, upper := 22016, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good177_checked :
    goodSegmentCheck 113 37 79
      { lower := 22103, upper := 22205, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good178_checked :
    goodSegmentCheck 113 37 79
      { lower := 22206, upper := 22215, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good179_checked :
    goodSegmentCheck 113 37 79
      { lower := 22472, upper := 22581, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good180_checked :
    goodSegmentCheck 113 37 79
      { lower := 22582, upper := 22584, witness := RowWitness.topPrime 22573 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good181_checked :
    goodSegmentCheck 113 37 79
      { lower := 22627, upper := 22640, witness := RowWitness.topPrime 22621 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good182_checked :
    goodSegmentCheck 113 37 79
      { lower := 23552, upper := 23646, witness := RowWitness.topPrime 23549 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good183_checked :
    goodSegmentCheck 113 37 79
      { lower := 23763, upper := 23873, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good184_checked :
    goodSegmentCheck 113 37 79
      { lower := 23874, upper := 23874, witness := RowWitness.topPrime 23873 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good185_checked :
    goodSegmentCheck 113 37 79
      { lower := 24010, upper := 24119, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good186_checked :
    goodSegmentCheck 113 37 79
      { lower := 24120, upper := 24149, witness := RowWitness.topPrime 24113 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good187_checked :
    goodSegmentCheck 113 37 79
      { lower := 24167, upper := 24169, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good188_checked :
    goodSegmentCheck 113 37 79
      { lower := 24334, upper := 24441, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good189_checked :
    goodSegmentCheck 113 37 79
      { lower := 24442, upper := 24479, witness := RowWitness.topPrime 24439 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good190_checked :
    goodSegmentCheck 113 37 79
      { lower := 24576, upper := 24683, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good191_checked :
    goodSegmentCheck 113 37 79
      { lower := 24684, upper := 24688, witness := RowWitness.topPrime 24683 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good192_checked :
    goodSegmentCheck 113 37 79
      { lower := 25000, upper := 25076, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good193_checked :
    goodSegmentCheck 113 37 79
      { lower := 25215, upper := 25301, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good194_checked :
    goodSegmentCheck 113 37 79
      { lower := 25302, upper := 25393, witness := RowWitness.topPrime 25301 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good195_checked :
    goodSegmentCheck 113 37 79
      { lower := 26047, upper := 26123, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good196_checked :
    goodSegmentCheck 113 37 79
      { lower := 26411, upper := 26476, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good197_checked :
    goodSegmentCheck 113 37 79
      { lower := 26508, upper := 26523, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good198_checked :
    goodSegmentCheck 113 37 79
      { lower := 26620, upper := 26620, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good199_checked :
    goodSegmentCheck 113 37 79
      { lower := 26624, upper := 26709, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good200_checked :
    goodSegmentCheck 113 37 79
      { lower := 26710, upper := 26736, witness := RowWitness.topPrime 26701 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good201_checked :
    goodSegmentCheck 113 37 79
      { lower := 26934, upper := 27008, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good202_checked :
    goodSegmentCheck 113 37 79
      { lower := 27436, upper := 27492, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good203_checked :
    goodSegmentCheck 113 37 79
      { lower := 27951, upper := 27960, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good204_checked :
    goodSegmentCheck 113 37 79
      { lower := 28125, upper := 28202, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good205_checked :
    goodSegmentCheck 113 37 79
      { lower := 28227, upper := 28237, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good206_checked :
    goodSegmentCheck 113 37 79
      { lower := 28577, upper := 28685, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good207_checked :
    goodSegmentCheck 113 37 79
      { lower := 28686, upper := 28689, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good208_checked :
    goodSegmentCheck 113 37 79
      { lower := 28717, upper := 28823, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good209_checked :
    goodSegmentCheck 113 37 79
      { lower := 28824, upper := 28861, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good210_checked :
    goodSegmentCheck 113 37 79
      { lower := 29584, upper := 29590, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good211_checked :
    goodSegmentCheck 113 37 79
      { lower := 29791, upper := 29880, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good212_checked :
    goodSegmentCheck 113 37 79
      { lower := 30258, upper := 30358, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good213_checked :
    goodSegmentCheck 113 37 79
      { lower := 30618, upper := 30705, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good214_checked :
    goodSegmentCheck 113 37 79
      { lower := 30706, upper := 30715, witness := RowWitness.topPrime 30703 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good215_checked :
    goodSegmentCheck 113 37 79
      { lower := 30720, upper := 30730, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good216_checked :
    goodSegmentCheck 113 37 79
      { lower := 30758, upper := 30832, witness := RowWitness.topPrime 30757 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good217_checked :
    goodSegmentCheck 113 37 79
      { lower := 30926, upper := 31011, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good218_checked :
    goodSegmentCheck 113 37 79
      { lower := 31213, upper := 31305, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good219_checked :
    goodSegmentCheck 113 37 79
      { lower := 31306, upper := 31325, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good220_checked :
    goodSegmentCheck 113 37 79
      { lower := 31329, upper := 31362, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good221_checked :
    goodSegmentCheck 113 37 79
      { lower := 31423, upper := 31509, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good222_checked :
    goodSegmentCheck 113 37 79
      { lower := 31510, upper := 31535, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good223_checked :
    goodSegmentCheck 113 37 79
      { lower := 31939, upper := 31939, witness := RowWitness.topPrime 31907 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good224_checked :
    goodSegmentCheck 113 37 79
      { lower := 31974, upper := 32051, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good225_checked :
    goodSegmentCheck 113 37 79
      { lower := 32805, upper := 32880, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good226_checked :
    goodSegmentCheck 113 37 79
      { lower := 33620, upper := 33731, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good227_checked :
    goodSegmentCheck 113 37 79
      { lower := 33732, upper := 33732, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good228_checked :
    goodSegmentCheck 113 37 79
      { lower := 34347, upper := 34449, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good229_checked :
    goodSegmentCheck 113 37 79
      { lower := 34450, upper := 34503, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good230_checked :
    goodSegmentCheck 113 37 79
      { lower := 34816, upper := 34919, witness := RowWitness.topPrime 34807 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good231_checked :
    goodSegmentCheck 113 37 79
      { lower := 34920, upper := 34922, witness := RowWitness.topPrime 34919 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good232_checked :
    goodSegmentCheck 113 37 79
      { lower := 35152, upper := 35243, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good233_checked :
    goodSegmentCheck 113 37 79
      { lower := 35301, upper := 35403, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good234_checked :
    goodSegmentCheck 113 37 79
      { lower := 35404, upper := 35413, witness := RowWitness.topPrime 35401 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good235_checked :
    goodSegmentCheck 113 37 79
      { lower := 36015, upper := 36024, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good236_checked :
    goodSegmentCheck 113 37 79
      { lower := 36517, upper := 36609, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good237_checked :
    goodSegmentCheck 113 37 79
      { lower := 36610, upper := 36613, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good238_checked :
    goodSegmentCheck 113 37 79
      { lower := 37210, upper := 37291, witness := RowWitness.topPrime 37201 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good239_checked :
    goodSegmentCheck 113 37 79
      { lower := 37303, upper := 37322, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good240_checked :
    goodSegmentCheck 113 37 79
      { lower := 37349, upper := 37415, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good241_checked :
    goodSegmentCheck 113 37 79
      { lower := 37446, upper := 37461, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good242_checked :
    goodSegmentCheck 113 37 79
      { lower := 37500, upper := 37605, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good243_checked :
    goodSegmentCheck 113 37 79
      { lower := 37606, upper := 37612, witness := RowWitness.topPrime 37591 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good244_checked :
    goodSegmentCheck 113 37 79
      { lower := 37636, upper := 37665, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good245_checked :
    goodSegmentCheck 113 37 79
      { lower := 38912, upper := 38941, witness := RowWitness.topPrime 38903 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good246_checked :
    goodSegmentCheck 113 37 79
      { lower := 39326, upper := 39435, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good247_checked :
    goodSegmentCheck 113 37 79
      { lower := 39436, upper := 39438, witness := RowWitness.topPrime 39419 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good248_checked :
    goodSegmentCheck 113 37 79
      { lower := 39605, upper := 39658, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good249_checked :
    goodSegmentCheck 113 37 79
      { lower := 40401, upper := 40440, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good250_checked :
    goodSegmentCheck 113 37 79
      { lower := 40817, upper := 40916, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good251_checked :
    goodSegmentCheck 113 37 79
      { lower := 40960, upper := 41043, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good252_checked :
    goodSegmentCheck 113 37 79
      { lower := 41772, upper := 41855, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good253_checked :
    goodSegmentCheck 113 37 79
      { lower := 43740, upper := 43833, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good254_checked :
    goodSegmentCheck 113 37 79
      { lower := 43834, upper := 43852, witness := RowWitness.topPrime 43801 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good255_checked :
    goodSegmentCheck 113 37 79
      { lower := 43940, upper := 44035, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good256_checked :
    goodSegmentCheck 113 37 79
      { lower := 44217, upper := 44292, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good257_checked :
    goodSegmentCheck 113 37 79
      { lower := 44944, upper := 45002, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good258_checked :
    goodSegmentCheck 113 37 79
      { lower := 45056, upper := 45056, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good259_checked :
    goodSegmentCheck 113 37 79
      { lower := 47526, upper := 47633, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good260_checked :
    goodSegmentCheck 113 37 79
      { lower := 47634, upper := 47636, witness := RowWitness.topPrime 47629 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good261_checked :
    goodSegmentCheck 113 37 79
      { lower := 48013, upper := 48093, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good262_checked :
    goodSegmentCheck 113 37 79
      { lower := 48094, upper := 48125, witness := RowWitness.topPrime 48091 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good263_checked :
    goodSegmentCheck 113 37 79
      { lower := 48734, upper := 48845, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good264_checked :
    goodSegmentCheck 113 37 79
      { lower := 48846, upper := 48846, witness := RowWitness.topPrime 48823 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good265_checked :
    goodSegmentCheck 113 37 79
      { lower := 49152, upper := 49242, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good266_checked :
    goodSegmentCheck 113 37 79
      { lower := 50000, upper := 50040, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good267_checked :
    goodSegmentCheck 113 37 79
      { lower := 50421, upper := 50522, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good268_checked :
    goodSegmentCheck 113 37 79
      { lower := 53125, upper := 53157, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good269_checked :
    goodSegmentCheck 113 37 79
      { lower := 53290, upper := 53360, witness := RowWitness.topPrime 53281 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good270_checked :
    goodSegmentCheck 113 37 79
      { lower := 55451, upper := 55553, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good271_checked :
    goodSegmentCheck 113 37 79
      { lower := 55554, upper := 55559, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good268_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good269_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good270_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good271_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good272_checked :
    goodSegmentCheck 113 37 79
      { lower := 57344, upper := 57357, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good273_checked :
    goodSegmentCheck 113 37 79
      { lower := 58619, upper := 58676, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good274_checked :
    goodSegmentCheck 113 37 79
      { lower := 59049, upper := 59068, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good275_checked :
    goodSegmentCheck 113 37 79
      { lower := 59582, upper := 59648, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good276_checked :
    goodSegmentCheck 113 37 79
      { lower := 62500, upper := 62522, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good277_checked :
    goodSegmentCheck 113 37 79
      { lower := 63368, upper := 63369, witness := RowWitness.topPrime 63367 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good278_checked :
    goodSegmentCheck 113 37 79
      { lower := 63948, upper := 63981, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good279_checked :
    goodSegmentCheck 113 37 79
      { lower := 65536, upper := 65633, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good280_checked :
    goodSegmentCheck 113 37 79
      { lower := 65634, upper := 65648, witness := RowWitness.topPrime 65633 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good281_checked :
    goodSegmentCheck 113 37 79
      { lower := 67335, upper := 67340, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good282_checked :
    goodSegmentCheck 113 37 79
      { lower := 68651, upper := 68751, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good283_checked :
    goodSegmentCheck 113 37 79
      { lower := 68752, upper := 68763, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good284_checked :
    goodSegmentCheck 113 37 79
      { lower := 68782, upper := 68806, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good285_checked :
    goodSegmentCheck 113 37 79
      { lower := 68890, upper := 68894, witness := RowWitness.topPrime 68881 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good286_checked :
    goodSegmentCheck 113 37 79
      { lower := 68921, upper := 69002, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good287_checked :
    goodSegmentCheck 113 37 79
      { lower := 71289, upper := 71398, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good272_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good273_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good274_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good275_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good276_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good277_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good278_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good279_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good280_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good281_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good282_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good283_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good284_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good285_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good286_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good287_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good288_checked :
    goodSegmentCheck 113 37 79
      { lower := 73205, upper := 73279, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good289_checked :
    goodSegmentCheck 113 37 79
      { lower := 73728, upper := 73807, witness := RowWitness.topPrime 73727 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good290_checked :
    goodSegmentCheck 113 37 79
      { lower := 85264, upper := 85281, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good291_checked :
    goodSegmentCheck 113 37 79
      { lower := 85293, upper := 85371, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good292_checked :
    goodSegmentCheck 113 37 79
      { lower := 85372, upper := 85376, witness := RowWitness.topPrime 85369 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good293_checked :
    goodSegmentCheck 113 37 79
      { lower := 85697, upper := 85795, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good294_checked :
    goodSegmentCheck 113 37 79
      { lower := 91854, upper := 91921, witness := RowWitness.topPrime 91841 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good295_checked :
    goodSegmentCheck 113 37 79
      { lower := 95052, upper := 95139, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good296_checked :
    goodSegmentCheck 113 37 79
      { lower := 95140, upper := 95160, witness := RowWitness.topPrime 95131 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good297_checked :
    goodSegmentCheck 113 37 79
      { lower := 98415, upper := 98416, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good298_checked :
    goodSegmentCheck 113 37 79
      { lower := 103041, upper := 103085, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good299_checked :
    goodSegmentCheck 113 37 79
      { lower := 122412, upper := 122429, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good300_checked :
    goodSegmentCheck 113 37 79
      { lower := 131769, upper := 131838, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good301_checked :
    goodSegmentCheck 113 37 79
      { lower := 137842, upper := 137893, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good302_checked :
    goodSegmentCheck 113 37 79
      { lower := 137917, upper := 137954, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good303_checked :
    goodSegmentCheck 113 37 79
      { lower := 142814, upper := 142917, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good288_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good289_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good290_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good291_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good292_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good293_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good294_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good295_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good296_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good297_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good298_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good299_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good300_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good301_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good302_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good303_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_good304_checked :
    goodSegmentCheck 113 37 79
      { lower := 146410, upper := 146446, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good305_checked :
    goodSegmentCheck 113 37 79
      { lower := 148877, upper := 148949, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good306_checked :
    goodSegmentCheck 113 37 79
      { lower := 148955, upper := 148989, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row113_good307_checked :
    goodSegmentCheck 113 37 79
      { lower := 327701, upper := 327792, witness := RowWitness.topPrime 327689 } = true := by
  exact good_top_prime_checked (i := 113) (r := 37) (s := 79) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good304_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good305_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good306_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_good307_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_goods_checked :
    row113.goods.all (goodSegmentCheck row113.height.i row113.height.r row113.height.s) = true := by
  change row113_goods.all (goodSegmentCheck 113 37 79) = true
  simp only [row113_goods, List.all_cons, List.all_nil,
    row113_good000_checked,
    row113_good001_checked,
    row113_good002_checked,
    row113_good003_checked,
    row113_good004_checked,
    row113_good005_checked,
    row113_good006_checked,
    row113_good007_checked,
    row113_good008_checked,
    row113_good009_checked,
    row113_good010_checked,
    row113_good011_checked,
    row113_good012_checked,
    row113_good013_checked,
    row113_good014_checked,
    row113_good015_checked,
    row113_good016_checked,
    row113_good017_checked,
    row113_good018_checked,
    row113_good019_checked,
    row113_good020_checked,
    row113_good021_checked,
    row113_good022_checked,
    row113_good023_checked,
    row113_good024_checked,
    row113_good025_checked,
    row113_good026_checked,
    row113_good027_checked,
    row113_good028_checked,
    row113_good029_checked,
    row113_good030_checked,
    row113_good031_checked,
    row113_good032_checked,
    row113_good033_checked,
    row113_good034_checked,
    row113_good035_checked,
    row113_good036_checked,
    row113_good037_checked,
    row113_good038_checked,
    row113_good039_checked,
    row113_good040_checked,
    row113_good041_checked,
    row113_good042_checked,
    row113_good043_checked,
    row113_good044_checked,
    row113_good045_checked,
    row113_good046_checked,
    row113_good047_checked,
    row113_good048_checked,
    row113_good049_checked,
    row113_good050_checked,
    row113_good051_checked,
    row113_good052_checked,
    row113_good053_checked,
    row113_good054_checked,
    row113_good055_checked,
    row113_good056_checked,
    row113_good057_checked,
    row113_good058_checked,
    row113_good059_checked,
    row113_good060_checked,
    row113_good061_checked,
    row113_good062_checked,
    row113_good063_checked,
    row113_good064_checked,
    row113_good065_checked,
    row113_good066_checked,
    row113_good067_checked,
    row113_good068_checked,
    row113_good069_checked,
    row113_good070_checked,
    row113_good071_checked,
    row113_good072_checked,
    row113_good073_checked,
    row113_good074_checked,
    row113_good075_checked,
    row113_good076_checked,
    row113_good077_checked,
    row113_good078_checked,
    row113_good079_checked,
    row113_good080_checked,
    row113_good081_checked,
    row113_good082_checked,
    row113_good083_checked,
    row113_good084_checked,
    row113_good085_checked,
    row113_good086_checked,
    row113_good087_checked,
    row113_good088_checked,
    row113_good089_checked,
    row113_good090_checked,
    row113_good091_checked,
    row113_good092_checked,
    row113_good093_checked,
    row113_good094_checked,
    row113_good095_checked,
    row113_good096_checked,
    row113_good097_checked,
    row113_good098_checked,
    row113_good099_checked,
    row113_good100_checked,
    row113_good101_checked,
    row113_good102_checked,
    row113_good103_checked,
    row113_good104_checked,
    row113_good105_checked,
    row113_good106_checked,
    row113_good107_checked,
    row113_good108_checked,
    row113_good109_checked,
    row113_good110_checked,
    row113_good111_checked,
    row113_good112_checked,
    row113_good113_checked,
    row113_good114_checked,
    row113_good115_checked,
    row113_good116_checked,
    row113_good117_checked,
    row113_good118_checked,
    row113_good119_checked,
    row113_good120_checked,
    row113_good121_checked,
    row113_good122_checked,
    row113_good123_checked,
    row113_good124_checked,
    row113_good125_checked,
    row113_good126_checked,
    row113_good127_checked,
    row113_good128_checked,
    row113_good129_checked,
    row113_good130_checked,
    row113_good131_checked,
    row113_good132_checked,
    row113_good133_checked,
    row113_good134_checked,
    row113_good135_checked,
    row113_good136_checked,
    row113_good137_checked,
    row113_good138_checked,
    row113_good139_checked,
    row113_good140_checked,
    row113_good141_checked,
    row113_good142_checked,
    row113_good143_checked,
    row113_good144_checked,
    row113_good145_checked,
    row113_good146_checked,
    row113_good147_checked,
    row113_good148_checked,
    row113_good149_checked,
    row113_good150_checked,
    row113_good151_checked,
    row113_good152_checked,
    row113_good153_checked,
    row113_good154_checked,
    row113_good155_checked,
    row113_good156_checked,
    row113_good157_checked,
    row113_good158_checked,
    row113_good159_checked,
    row113_good160_checked,
    row113_good161_checked,
    row113_good162_checked,
    row113_good163_checked,
    row113_good164_checked,
    row113_good165_checked,
    row113_good166_checked,
    row113_good167_checked,
    row113_good168_checked,
    row113_good169_checked,
    row113_good170_checked,
    row113_good171_checked,
    row113_good172_checked,
    row113_good173_checked,
    row113_good174_checked,
    row113_good175_checked,
    row113_good176_checked,
    row113_good177_checked,
    row113_good178_checked,
    row113_good179_checked,
    row113_good180_checked,
    row113_good181_checked,
    row113_good182_checked,
    row113_good183_checked,
    row113_good184_checked,
    row113_good185_checked,
    row113_good186_checked,
    row113_good187_checked,
    row113_good188_checked,
    row113_good189_checked,
    row113_good190_checked,
    row113_good191_checked,
    row113_good192_checked,
    row113_good193_checked,
    row113_good194_checked,
    row113_good195_checked,
    row113_good196_checked,
    row113_good197_checked,
    row113_good198_checked,
    row113_good199_checked,
    row113_good200_checked,
    row113_good201_checked,
    row113_good202_checked,
    row113_good203_checked,
    row113_good204_checked,
    row113_good205_checked,
    row113_good206_checked,
    row113_good207_checked,
    row113_good208_checked,
    row113_good209_checked,
    row113_good210_checked,
    row113_good211_checked,
    row113_good212_checked,
    row113_good213_checked,
    row113_good214_checked,
    row113_good215_checked,
    row113_good216_checked,
    row113_good217_checked,
    row113_good218_checked,
    row113_good219_checked,
    row113_good220_checked,
    row113_good221_checked,
    row113_good222_checked,
    row113_good223_checked,
    row113_good224_checked,
    row113_good225_checked,
    row113_good226_checked,
    row113_good227_checked,
    row113_good228_checked,
    row113_good229_checked,
    row113_good230_checked,
    row113_good231_checked,
    row113_good232_checked,
    row113_good233_checked,
    row113_good234_checked,
    row113_good235_checked,
    row113_good236_checked,
    row113_good237_checked,
    row113_good238_checked,
    row113_good239_checked,
    row113_good240_checked,
    row113_good241_checked,
    row113_good242_checked,
    row113_good243_checked,
    row113_good244_checked,
    row113_good245_checked,
    row113_good246_checked,
    row113_good247_checked,
    row113_good248_checked,
    row113_good249_checked,
    row113_good250_checked,
    row113_good251_checked,
    row113_good252_checked,
    row113_good253_checked,
    row113_good254_checked,
    row113_good255_checked,
    row113_good256_checked,
    row113_good257_checked,
    row113_good258_checked,
    row113_good259_checked,
    row113_good260_checked,
    row113_good261_checked,
    row113_good262_checked,
    row113_good263_checked,
    row113_good264_checked,
    row113_good265_checked,
    row113_good266_checked,
    row113_good267_checked,
    row113_good268_checked,
    row113_good269_checked,
    row113_good270_checked,
    row113_good271_checked,
    row113_good272_checked,
    row113_good273_checked,
    row113_good274_checked,
    row113_good275_checked,
    row113_good276_checked,
    row113_good277_checked,
    row113_good278_checked,
    row113_good279_checked,
    row113_good280_checked,
    row113_good281_checked,
    row113_good282_checked,
    row113_good283_checked,
    row113_good284_checked,
    row113_good285_checked,
    row113_good286_checked,
    row113_good287_checked,
    row113_good288_checked,
    row113_good289_checked,
    row113_good290_checked,
    row113_good291_checked,
    row113_good292_checked,
    row113_good293_checked,
    row113_good294_checked,
    row113_good295_checked,
    row113_good296_checked,
    row113_good297_checked,
    row113_good298_checked,
    row113_good299_checked,
    row113_good300_checked,
    row113_good301_checked,
    row113_good302_checked,
    row113_good303_checked,
    row113_good304_checked,
    row113_good305_checked,
    row113_good306_checked,
    row113_good307_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_registered :
    decide (row113.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row113_small_checked :
    coverCheck (2 * row113.height.i + 2) (row113.height.i * (row113.height.i - 1) - 1)
      (row113.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row113_layerCover_checked :
    coverCheck (row113.height.i * (row113.height.i - 1)) (row113.height.n0 - 1)
      (row113.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row113_bounds : List NatInterval :=
  [(228, 339), (340, 449), (450, 561), (562, 669), (670, 773), (774, 885), (886, 995), (996, 1103), (1104, 1215), (1216, 1325), (1326, 1433), (1434, 1545), (1546, 1655), (1656, 1749), (1750, 1859), (1860, 1959), (1960, 2063), (2064, 2175), (2176, 2273), (2274, 2385), (2386, 2495), (2496, 2589), (2590, 2691), (2692, 2801), (2802, 2913), (2914, 3021), (3022, 3131), (3132, 3233), (3234, 3341), (3342, 3443), (3444, 3545), (3546, 3653), (3654, 3755), (3756, 3851), (3852, 3963), (3964, 4059), (4060, 4169), (4170, 4271), (4272, 4383), (4384, 4485), (4486, 4595), (4596, 4703), (4704, 4815), (4816, 4925), (4926, 5031), (5032, 5135), (5136, 5231), (5232, 5343), (5344, 5445), (5446, 5555), (5556, 5643), (5644, 5753), (5754, 5861), (5862, 5973), (5974, 6065), (6066, 6165), (6166, 6275), (6276, 6383), (6384, 6491), (6492, 6603), (6604, 6711), (6712, 6821), (6822, 6915), (6916, 7023), (7024, 7131), (7132, 7241), (7242, 7349), (7350, 7461), (7462, 7571), (7572, 7673), (7674, 7785), (7786, 7871), (7872, 7979), (7980, 8075), (8076, 8181), (8182, 8291), (8292, 8403), (8404, 8501), (8502, 8613), (8614, 8721), (8722, 8831), (8832, 8943), (8944, 9053), (9054, 9161), (9162, 9273), (9274, 9369), (9370, 9461), (9462, 9573), (9574, 9663), (9664, 9773), (9774, 9881), (9882, 9983), (9984, 10085), (10086, 10191), (10192, 10293), (10294, 10401), (10402, 10511), (10512, 10613), (10614, 10725), (10726, 10835), (10836, 10943), (10944, 11051), (11052, 11159), (11160, 11271), (11272, 11373), (11374, 11481), (11482, 11583), (11584, 11691), (11692, 11801), (11802, 11913), (11914, 12021), (12022, 12123), (12124, 12231), (12232, 12339), (12340, 12441), (12442, 12549), (12550, 12655), (12696, 12727), (12800, 12808), (13125, 13233), (13234, 13341), (13342, 13422), (13454, 13563), (13564, 13568), (13718, 13823), (13824, 13890), (13924, 13963), (14336, 14439), (14440, 14518), (14641, 14692), (14739, 14753), (14792, 14851), (14884, 14904), (15059, 15112), (15123, 15233), (15234, 15241), (15360, 15471), (15472, 15491), (15979, 16085), (16086, 16099), (16384, 16493), (16494, 16496), (16807, 16899), (16900, 16932), (17303, 17411), (17412, 17513), (17514, 17520), (17576, 17608), (17661, 17771), (17772, 17773), (18259, 18337), (18490, 18593), (18594, 18603), (18605, 18614), (18634, 18717), (18723, 18746), (18750, 18861), (18862, 18862), (19208, 19319), (19320, 19320), (19663, 19773), (19774, 19795), (19881, 19885), (19965, 19993), (20172, 20273), (20274, 20293), (20402, 20451), (20480, 20514), (20535, 20645), (20646, 20647), (20667, 20689), (21218, 21254), (21296, 21395), (21396, 21408), (21609, 21616), (21870, 21975), (21976, 22016), (22103, 22205), (22206, 22215), (22472, 22581), (22582, 22584), (22627, 22640), (23552, 23646), (23763, 23873), (23874, 23874), (24010, 24119), (24120, 24149), (24167, 24169), (24334, 24441), (24442, 24479), (24576, 24683), (24684, 24688), (25000, 25076), (25215, 25301), (25302, 25393), (26047, 26123), (26411, 26476), (26508, 26523), (26620, 26620), (26624, 26709), (26710, 26736), (26934, 27008), (27436, 27492), (27951, 27960), (28125, 28202), (28227, 28237), (28577, 28685), (28686, 28689), (28717, 28823), (28824, 28861), (29584, 29590), (29791, 29880), (30258, 30358), (30618, 30705), (30706, 30715), (30720, 30730), (30758, 30832), (30926, 31011), (31213, 31305), (31306, 31325), (31329, 31362), (31423, 31509), (31510, 31535), (31939, 31939), (31974, 32051), (32805, 32880), (33620, 33731), (33732, 33732), (34347, 34449), (34450, 34503), (34816, 34919), (34920, 34922), (35152, 35243), (35301, 35403), (35404, 35413), (36015, 36024), (36517, 36609), (36610, 36613), (37210, 37291), (37303, 37322), (37349, 37415), (37446, 37461), (37500, 37605), (37606, 37612), (37636, 37665), (38912, 38941), (39326, 39435), (39436, 39438), (39605, 39658), (40401, 40440), (40817, 40916), (40960, 41043), (41772, 41855), (43740, 43833), (43834, 43852), (43940, 44035), (44217, 44292), (44944, 45002), (45056, 45056), (47526, 47633), (47634, 47636), (48013, 48093), (48094, 48125), (48734, 48845), (48846, 48846), (49152, 49242), (50000, 50040), (50421, 50522), (53125, 53157), (53290, 53360), (55451, 55553), (55554, 55559), (57344, 57357), (58619, 58676), (59049, 59068), (59582, 59648), (62500, 62522), (63368, 63369), (63948, 63981), (65536, 65633), (65634, 65648), (67335, 67340), (68651, 68751), (68752, 68763), (68782, 68806), (68890, 68894), (68921, 69002), (71289, 71398), (73205, 73279), (73728, 73807), (85264, 85281), (85293, 85371), (85372, 85376), (85697, 85795), (91854, 91921), (95052, 95139), (95140, 95160), (98415, 98416), (103041, 103085), (122412, 122429), (131769, 131838), (137842, 137893), (137917, 137954), (142814, 142917), (146410, 146446), (148877, 148949), (148955, 148989), (327701, 327792)]

theorem row113_bounds_eq : row113.goods.map goodSegmentBounds = row113_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row113_layer000_intervals : List ColouredInterval :=
  [(2, 12800, 12912), (2, 13312, 13424), (2, 14336, 14448), (2, 15360, 15472), (2, 16384, 16496), (2, 17408, 17520), (2, 18432, 18544), (2, 19456, 19568), (2, 20480, 20592), (2, 21504, 21616), (2, 22528, 22640), (2, 23552, 23664), (2, 24576, 24688), (2, 14336, 14448), (2, 16384, 16496), (2, 18432, 18544), (2, 20480, 20592), (2, 22528, 22640), (2, 24576, 24688), (2, 16384, 16496), (2, 20480, 20592), (2, 24576, 24688), (2, 16384, 16496), (2, 24576, 24688), (2, 16384, 16496), (3, 13122, 13234), (3, 13851, 13963), (3, 14580, 14692), (3, 15309, 15421), (3, 16038, 16150), (3, 16767, 16879), (3, 17496, 17608), (3, 18225, 18337), (3, 13122, 13234), (3, 15309, 15421), (3, 17496, 17608), (3, 19683, 19795), (3, 21870, 21982), (3, 24057, 24169), (3, 13122, 13234), (3, 19683, 19795), (3, 19683, 19795), (5, 13125, 13237), (5, 13750, 13862), (5, 14375, 14487), (5, 15000, 15112), (5, 15625, 15737), (5, 15625, 15737), (5, 18750, 18862), (5, 21875, 21987), (5, 25000, 25112), (5, 15625, 15737), (7, 14406, 14518), (7, 16807, 16919), (7, 19208, 19320), (7, 21609, 21721), (7, 24010, 24122), (7, 16807, 16919), (11, 13310, 13422), (11, 14641, 14753), (11, 15972, 16084), (11, 17303, 17415), (11, 18634, 18746), (11, 19965, 20077), (11, 21296, 21408), (11, 22627, 22739), (11, 23958, 24070), (11, 25289, 25311), (11, 14641, 14753), (13, 13182, 13294), (13, 15379, 15491), (13, 17576, 17688), (13, 19773, 19885), (13, 21970, 22082), (13, 24167, 24279), (17, 14739, 14851), (17, 19652, 19764), (17, 24565, 24677), (19, 13718, 13830), (19, 20577, 20689), (23, 12696, 12808), (23, 13225, 13337), (23, 24334, 24446), (29, 12656, 12727), (29, 13456, 13568), (29, 14297, 14409), (29, 15138, 15250), (29, 15979, 16091), (29, 16820, 16932), (29, 17661, 17773), (29, 18502, 18614), (29, 19343, 19455), (29, 20184, 20296), (29, 21025, 21137), (29, 24389, 24501), (31, 13454, 13566), (31, 14415, 14527), (31, 15376, 15488), (31, 16337, 16449), (31, 17298, 17410), (31, 18259, 18371), (31, 19220, 19332), (31, 20181, 20293), (31, 21142, 21254), (31, 22103, 22215), (31, 23064, 23176), (31, 24025, 24137), (37, 13690, 13802), (37, 15059, 15171), (37, 16428, 16540), (37, 17797, 17909), (37, 19166, 19278), (37, 20535, 20647), (37, 21904, 22016), (37, 23273, 23385), (37, 24642, 24754), (41, 13448, 13560), (41, 15129, 15241), (41, 16810, 16922), (41, 18491, 18603), (41, 20172, 20284), (41, 21853, 21965), (41, 23534, 23646), (41, 25215, 25311), (43, 12943, 13055), (43, 14792, 14904), (43, 16641, 16753), (43, 18490, 18602), (43, 20339, 20451), (43, 22188, 22300), (43, 24037, 24149), (47, 13254, 13366), (47, 15463, 15575), (47, 17672, 17784), (47, 19881, 19993), (47, 22090, 22202), (47, 24299, 24411), (53, 14045, 14157), (53, 16854, 16966), (53, 19663, 19775), (53, 22472, 22584), (53, 25281, 25311), (59, 13924, 14036), (59, 17405, 17517), (59, 20886, 20998), (59, 24367, 24479), (61, 14884, 14996), (61, 18605, 18717), (61, 22326, 22438), (67, 13467, 13579), (67, 17956, 18068), (67, 22445, 22557), (71, 15123, 15235), (71, 20164, 20276), (71, 25205, 25311), (73, 15987, 16099), (73, 21316, 21428), (79, 18723, 18835), (79, 24964, 25076), (83, 13778, 13890), (83, 20667, 20779), (89, 15842, 15954), (89, 23763, 23875), (97, 18818, 18930), (101, 20402, 20514), (103, 21218, 21330), (107, 22898, 23010), (109, 23762, 23874)]

def row113_layer000_block000 : List ColouredInterval :=
  [(2, 12800, 12912), (2, 13312, 13424), (2, 14336, 14448), (2, 15360, 15472), (2, 16384, 16496), (2, 17408, 17520), (2, 18432, 18544), (2, 19456, 19568), (2, 20480, 20592), (2, 21504, 21616), (2, 22528, 22640), (2, 23552, 23664)]

def row113_layer000_block001 : List ColouredInterval :=
  [(2, 24576, 24688), (2, 14336, 14448), (2, 16384, 16496), (2, 18432, 18544), (2, 20480, 20592), (2, 22528, 22640), (2, 24576, 24688), (2, 16384, 16496), (2, 20480, 20592), (2, 24576, 24688), (2, 16384, 16496), (2, 24576, 24688)]

def row113_layer000_block002 : List ColouredInterval :=
  [(2, 16384, 16496), (3, 13122, 13234), (3, 13851, 13963), (3, 14580, 14692), (3, 15309, 15421), (3, 16038, 16150), (3, 16767, 16879), (3, 17496, 17608), (3, 18225, 18337), (3, 13122, 13234), (3, 15309, 15421), (3, 17496, 17608)]

def row113_layer000_block003 : List ColouredInterval :=
  [(3, 19683, 19795), (3, 21870, 21982), (3, 24057, 24169), (3, 13122, 13234), (3, 19683, 19795), (3, 19683, 19795), (5, 13125, 13237), (5, 13750, 13862), (5, 14375, 14487), (5, 15000, 15112), (5, 15625, 15737), (5, 15625, 15737)]

def row113_layer000_block004 : List ColouredInterval :=
  [(5, 18750, 18862), (5, 21875, 21987), (5, 25000, 25112), (5, 15625, 15737), (7, 14406, 14518), (7, 16807, 16919), (7, 19208, 19320), (7, 21609, 21721), (7, 24010, 24122), (7, 16807, 16919), (11, 13310, 13422), (11, 14641, 14753)]

def row113_layer000_block005 : List ColouredInterval :=
  [(11, 15972, 16084), (11, 17303, 17415), (11, 18634, 18746), (11, 19965, 20077), (11, 21296, 21408), (11, 22627, 22739), (11, 23958, 24070), (11, 25289, 25311), (11, 14641, 14753), (13, 13182, 13294), (13, 15379, 15491), (13, 17576, 17688)]

def row113_layer000_block006 : List ColouredInterval :=
  [(13, 19773, 19885), (13, 21970, 22082), (13, 24167, 24279), (17, 14739, 14851), (17, 19652, 19764), (17, 24565, 24677), (19, 13718, 13830), (19, 20577, 20689), (23, 12696, 12808), (23, 13225, 13337), (23, 24334, 24446), (29, 12656, 12727)]

def row113_layer000_block007 : List ColouredInterval :=
  [(29, 13456, 13568), (29, 14297, 14409), (29, 15138, 15250), (29, 15979, 16091), (29, 16820, 16932), (29, 17661, 17773), (29, 18502, 18614), (29, 19343, 19455), (29, 20184, 20296), (29, 21025, 21137), (29, 24389, 24501), (31, 13454, 13566)]

def row113_layer000_block008 : List ColouredInterval :=
  [(31, 14415, 14527), (31, 15376, 15488), (31, 16337, 16449), (31, 17298, 17410), (31, 18259, 18371), (31, 19220, 19332), (31, 20181, 20293), (31, 21142, 21254), (31, 22103, 22215), (31, 23064, 23176), (31, 24025, 24137), (37, 13690, 13802)]

def row113_layer000_block009 : List ColouredInterval :=
  [(37, 15059, 15171), (37, 16428, 16540), (37, 17797, 17909), (37, 19166, 19278), (37, 20535, 20647), (37, 21904, 22016), (37, 23273, 23385), (37, 24642, 24754), (41, 13448, 13560), (41, 15129, 15241), (41, 16810, 16922), (41, 18491, 18603)]

def row113_layer000_block010 : List ColouredInterval :=
  [(41, 20172, 20284), (41, 21853, 21965), (41, 23534, 23646), (41, 25215, 25311), (43, 12943, 13055), (43, 14792, 14904), (43, 16641, 16753), (43, 18490, 18602), (43, 20339, 20451), (43, 22188, 22300), (43, 24037, 24149), (47, 13254, 13366)]

def row113_layer000_block011 : List ColouredInterval :=
  [(47, 15463, 15575), (47, 17672, 17784), (47, 19881, 19993), (47, 22090, 22202), (47, 24299, 24411), (53, 14045, 14157), (53, 16854, 16966), (53, 19663, 19775), (53, 22472, 22584), (53, 25281, 25311), (59, 13924, 14036), (59, 17405, 17517)]

def row113_layer000_block012 : List ColouredInterval :=
  [(59, 20886, 20998), (59, 24367, 24479), (61, 14884, 14996), (61, 18605, 18717), (61, 22326, 22438), (67, 13467, 13579), (67, 17956, 18068), (67, 22445, 22557), (71, 15123, 15235), (71, 20164, 20276), (71, 25205, 25311), (73, 15987, 16099)]

def row113_layer000_block013 : List ColouredInterval :=
  [(73, 21316, 21428), (79, 18723, 18835), (79, 24964, 25076), (83, 13778, 13890), (83, 20667, 20779), (89, 15842, 15954), (89, 23763, 23875), (97, 18818, 18930), (101, 20402, 20514), (103, 21218, 21330), (107, 22898, 23010), (109, 23762, 23874)]

def row113_layer000_chunks : List (List ColouredInterval) :=
  [row113_layer000_block000, row113_layer000_block001, row113_layer000_block002, row113_layer000_block003, row113_layer000_block004, row113_layer000_block005, row113_layer000_block006, row113_layer000_block007, row113_layer000_block008, row113_layer000_block009, row113_layer000_block010, row113_layer000_block011, row113_layer000_block012, row113_layer000_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_arithmetic : LayerArithmeticValid row113.height { lower := 12656, upper := 25312, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_enumeration :
    activePowerIntervalList 113 25 12656 25312 = row113_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs000 :
    row113_layer000_block000.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs001 :
    row113_layer000_block001.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs002 :
    row113_layer000_block002.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs003 :
    row113_layer000_block003.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer000_pairs004 :
    row113_layer000_block004.all (fun I => row113_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_pairs004
