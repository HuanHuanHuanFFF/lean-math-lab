import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row113_registered :
    decide (row113.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row113_goods_checked :
    row113.goods.all (goodSegmentCheck row113.height.i row113.height.r row113.height.s) = true := by
  decide +kernel

theorem row113_small_checked :
    coverCheck (2 * row113.height.i + 2) (row113.height.i * (row113.height.i - 1) - 1)
      (row113.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row113_layerCover_checked :
    coverCheck (row113.height.i * (row113.height.i - 1)) (row113.height.n0 - 1)
      (row113.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row113_layer000_checked :
    coverLayerCheck row113.height row113.goods { lower := 12656, upper := 25312, M := 25 } = true := by
  decide +kernel

theorem row113_layer001_checked :
    coverLayerCheck row113.height row113.goods { lower := 25312, upper := 50624, M := 21 } = true := by
  decide +kernel

theorem row113_layer002_checked :
    coverLayerCheck row113.height row113.goods { lower := 50624, upper := 101248, M := 17 } = true := by
  decide +kernel

theorem row113_layer003_checked :
    coverLayerCheck row113.height row113.goods { lower := 101248, upper := 202496, M := 14 } = true := by
  decide +kernel

theorem row113_layer004_checked :
    coverLayerCheck row113.height row113.goods { lower := 202496, upper := 404992, M := 11 } = true := by
  decide +kernel

theorem row113_layer005_checked :
    coverLayerCheck row113.height row113.goods { lower := 404992, upper := 809984, M := 9 } = true := by
  decide +kernel

theorem row113_layer006_checked :
    coverLayerCheck row113.height row113.goods { lower := 809984, upper := 1619968, M := 8 } = true := by
  decide +kernel

theorem row113_layer007_checked :
    coverLayerCheck row113.height row113.goods { lower := 1619968, upper := 3239936, M := 6 } = true := by
  decide +kernel

theorem row113_layer008_checked :
    coverLayerCheck row113.height row113.goods { lower := 3239936, upper := 6479872, M := 5 } = true := by
  decide +kernel

theorem row113_layer009_checked :
    coverLayerCheck row113.height row113.goods { lower := 6479872, upper := 12959744, M := 4 } = true := by
  decide +kernel

theorem row113_layer010_checked :
    coverLayerCheck row113.height row113.goods { lower := 12959744, upper := 25919488, M := 4 } = true := by
  decide +kernel

theorem row113_layer011_checked :
    coverLayerCheck row113.height row113.goods { lower := 25919488, upper := 51838976, M := 3 } = true := by
  decide +kernel

theorem row113_layer012_checked :
    coverLayerCheck row113.height row113.goods { lower := 51838976, upper := 103677952, M := 3 } = true := by
  decide +kernel

theorem row113_layer013_checked :
    coverLayerCheck row113.height row113.goods { lower := 103677952, upper := 207355904, M := 2 } = true := by
  decide +kernel

theorem row113_layer014_checked :
    coverLayerCheck row113.height row113.goods { lower := 207355904, upper := 414711808, M := 2 } = true := by
  decide +kernel

theorem row113_layer015_checked :
    coverLayerCheck row113.height row113.goods { lower := 414711808, upper := 829423616, M := 2 } = true := by
  decide +kernel

theorem row113_layer016_checked :
    coverLayerCheck row113.height row113.goods { lower := 829423616, upper := 1000000000, M := 1 } = true := by
  decide +kernel

theorem row113_layers_checked :
    row113.layers.all (coverLayerCheck row113.height row113.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row113.height row113.goods) = true
  simp only [List.all_cons, List.all_nil,
    row113_layer000_checked,
    row113_layer001_checked,
    row113_layer002_checked,
    row113_layer003_checked,
    row113_layer004_checked,
    row113_layer005_checked,
    row113_layer006_checked,
    row113_layer007_checked,
    row113_layer008_checked,
    row113_layer009_checked,
    row113_layer010_checked,
    row113_layer011_checked,
    row113_layer012_checked,
    row113_layer013_checked,
    row113_layer014_checked,
    row113_layer015_checked,
    row113_layer016_checked,
    Bool.true_and]

theorem row113_checked : finiteCoverRowCheck row113 = true := by
  simp only [finiteCoverRowCheck, row113_registered, row113_goods_checked,
    row113_small_checked, row113_layerCover_checked, row113_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row113_checked

end B699LowIndex
