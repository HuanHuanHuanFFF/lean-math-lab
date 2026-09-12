import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row108_height : HeightCertificateDatum := { i := 108, r := 35, s := 75, n0Power10 := 10 }

def row108_goods : List GoodSegment := [
  { lower := 218, upper := 318, witness := RowWitness.topPrime 211 },
  { lower := 319, upper := 424, witness := RowWitness.topPrime 317 },
  { lower := 425, upper := 528, witness := RowWitness.topPrime 421 },
  { lower := 529, upper := 630, witness := RowWitness.topPrime 523 },
  { lower := 631, upper := 738, witness := RowWitness.topPrime 631 },
  { lower := 739, upper := 846, witness := RowWitness.topPrime 739 },
  { lower := 847, upper := 946, witness := RowWitness.topPrime 839 },
  { lower := 947, upper := 1054, witness := RowWitness.topPrime 947 },
  { lower := 1055, upper := 1158, witness := RowWitness.topPrime 1051 },
  { lower := 1159, upper := 1260, witness := RowWitness.topPrime 1153 },
  { lower := 1261, upper := 1366, witness := RowWitness.topPrime 1259 },
  { lower := 1367, upper := 1474, witness := RowWitness.topPrime 1367 },
  { lower := 1475, upper := 1578, witness := RowWitness.topPrime 1471 },
  { lower := 1579, upper := 1686, witness := RowWitness.topPrime 1579 },
  { lower := 1687, upper := 1776, witness := RowWitness.topPrime 1669 },
  { lower := 1777, upper := 1884, witness := RowWitness.topPrime 1777 },
  { lower := 1885, upper := 1986, witness := RowWitness.topPrime 1879 },
  { lower := 1987, upper := 2094, witness := RowWitness.topPrime 1987 },
  { lower := 2095, upper := 2196, witness := RowWitness.topPrime 2089 },
  { lower := 2197, upper := 2286, witness := RowWitness.topPrime 2179 },
  { lower := 2287, upper := 2394, witness := RowWitness.topPrime 2287 },
  { lower := 2395, upper := 2500, witness := RowWitness.topPrime 2393 },
  { lower := 2501, upper := 2584, witness := RowWitness.topPrime 2477 },
  { lower := 2585, upper := 2686, witness := RowWitness.topPrime 2579 },
  { lower := 2687, upper := 2794, witness := RowWitness.topPrime 2687 },
  { lower := 2795, upper := 2898, witness := RowWitness.topPrime 2791 },
  { lower := 2899, upper := 3004, witness := RowWitness.topPrime 2897 },
  { lower := 3005, upper := 3108, witness := RowWitness.topPrime 3001 },
  { lower := 3109, upper := 3216, witness := RowWitness.topPrime 3109 },
  { lower := 3217, upper := 3324, witness := RowWitness.topPrime 3217 },
  { lower := 3325, upper := 3430, witness := RowWitness.topPrime 3323 },
  { lower := 3431, upper := 3520, witness := RowWitness.topPrime 3413 },
  { lower := 3521, upper := 3624, witness := RowWitness.topPrime 3517 },
  { lower := 3625, upper := 3730, witness := RowWitness.topPrime 3623 },
  { lower := 3731, upper := 3834, witness := RowWitness.topPrime 3727 },
  { lower := 3835, upper := 3940, witness := RowWitness.topPrime 3833 },
  { lower := 3941, upper := 4038, witness := RowWitness.topPrime 3931 },
  { lower := 4039, upper := 4134, witness := RowWitness.topPrime 4027 },
  { lower := 4135, upper := 4240, witness := RowWitness.topPrime 4133 },
  { lower := 4241, upper := 4348, witness := RowWitness.topPrime 4241 },
  { lower := 4349, upper := 4456, witness := RowWitness.topPrime 4349 },
  { lower := 4457, upper := 4564, witness := RowWitness.topPrime 4457 },
  { lower := 4565, upper := 4668, witness := RowWitness.topPrime 4561 },
  { lower := 4669, upper := 4770, witness := RowWitness.topPrime 4663 },
  { lower := 4771, upper := 4866, witness := RowWitness.topPrime 4759 },
  { lower := 4867, upper := 4968, witness := RowWitness.topPrime 4861 },
  { lower := 4969, upper := 5076, witness := RowWitness.topPrime 4969 },
  { lower := 5077, upper := 5184, witness := RowWitness.topPrime 5077 },
  { lower := 5185, upper := 5286, witness := RowWitness.topPrime 5179 },
  { lower := 5287, upper := 5388, witness := RowWitness.topPrime 5281 },
  { lower := 5389, upper := 5494, witness := RowWitness.topPrime 5387 },
  { lower := 5495, upper := 5590, witness := RowWitness.topPrime 5483 },
  { lower := 5591, upper := 5698, witness := RowWitness.topPrime 5591 },
  { lower := 5699, upper := 5800, witness := RowWitness.topPrime 5693 },
  { lower := 5801, upper := 5908, witness := RowWitness.topPrime 5801 },
  { lower := 5909, upper := 6010, witness := RowWitness.topPrime 5903 },
  { lower := 6011, upper := 6118, witness := RowWitness.topPrime 6011 },
  { lower := 6119, upper := 6220, witness := RowWitness.topPrime 6113 },
  { lower := 6221, upper := 6328, witness := RowWitness.topPrime 6221 },
  { lower := 6329, upper := 6436, witness := RowWitness.topPrime 6329 },
  { lower := 6437, upper := 6534, witness := RowWitness.topPrime 6427 },
  { lower := 6535, upper := 6636, witness := RowWitness.topPrime 6529 },
  { lower := 6637, upper := 6744, witness := RowWitness.topPrime 6637 },
  { lower := 6745, upper := 6844, witness := RowWitness.topPrime 6737 },
  { lower := 6845, upper := 6948, witness := RowWitness.topPrime 6841 },
  { lower := 6949, upper := 7056, witness := RowWitness.topPrime 6949 },
  { lower := 7057, upper := 7164, witness := RowWitness.topPrime 7057 },
  { lower := 7165, upper := 7266, witness := RowWitness.topPrime 7159 },
  { lower := 7267, upper := 7360, witness := RowWitness.topPrime 7253 },
  { lower := 7361, upper := 7458, witness := RowWitness.topPrime 7351 },
  { lower := 7459, upper := 7566, witness := RowWitness.topPrime 7459 },
  { lower := 7567, upper := 7668, witness := RowWitness.topPrime 7561 },
  { lower := 7669, upper := 7776, witness := RowWitness.topPrime 7669 },
  { lower := 7777, upper := 7866, witness := RowWitness.topPrime 7759 },
  { lower := 7867, upper := 7974, witness := RowWitness.topPrime 7867 },
  { lower := 7975, upper := 8070, witness := RowWitness.topPrime 7963 },
  { lower := 8071, upper := 8176, witness := RowWitness.topPrime 8069 },
  { lower := 8177, upper := 8278, witness := RowWitness.topPrime 8171 },
  { lower := 8279, upper := 8380, witness := RowWitness.topPrime 8273 },
  { lower := 8381, upper := 8484, witness := RowWitness.topPrime 8377 },
  { lower := 8485, upper := 8574, witness := RowWitness.topPrime 8467 },
  { lower := 8575, upper := 8680, witness := RowWitness.topPrime 8573 },
  { lower := 8681, upper := 8788, witness := RowWitness.topPrime 8681 },
  { lower := 8789, upper := 8890, witness := RowWitness.topPrime 8783 },
  { lower := 8891, upper := 8994, witness := RowWitness.topPrime 8887 },
  { lower := 8995, upper := 9078, witness := RowWitness.topPrime 8971 },
  { lower := 9079, upper := 9174, witness := RowWitness.topPrime 9067 },
  { lower := 9175, upper := 9280, witness := RowWitness.topPrime 9173 },
  { lower := 9281, upper := 9388, witness := RowWitness.topPrime 9281 },
  { lower := 9389, upper := 9484, witness := RowWitness.topPrime 9377 },
  { lower := 9485, upper := 9586, witness := RowWitness.topPrime 9479 },
  { lower := 9587, upper := 9694, witness := RowWitness.topPrime 9587 },
  { lower := 9695, upper := 9796, witness := RowWitness.topPrime 9689 },
  { lower := 9797, upper := 9898, witness := RowWitness.topPrime 9791 },
  { lower := 9899, upper := 9994, witness := RowWitness.topPrime 9887 },
  { lower := 9995, upper := 10080, witness := RowWitness.topPrime 9973 },
  { lower := 10081, upper := 10186, witness := RowWitness.topPrime 10079 },
  { lower := 10187, upper := 10288, witness := RowWitness.topPrime 10181 },
  { lower := 10289, upper := 10396, witness := RowWitness.topPrime 10289 },
  { lower := 10397, upper := 10498, witness := RowWitness.topPrime 10391 },
  { lower := 10499, upper := 10606, witness := RowWitness.topPrime 10499 },
  { lower := 10607, upper := 10714, witness := RowWitness.topPrime 10607 },
  { lower := 10715, upper := 10818, witness := RowWitness.topPrime 10711 },
  { lower := 10819, upper := 10906, witness := RowWitness.topPrime 10799 },
  { lower := 10907, upper := 11010, witness := RowWitness.topPrime 10903 },
  { lower := 11011, upper := 11110, witness := RowWitness.topPrime 11003 },
  { lower := 11111, upper := 11200, witness := RowWitness.topPrime 11093 },
  { lower := 11201, upper := 11304, witness := RowWitness.topPrime 11197 },
  { lower := 11305, upper := 11406, witness := RowWitness.topPrime 11299 },
  { lower := 11407, upper := 11506, witness := RowWitness.topPrime 11399 },
  { lower := 11507, upper := 11556, witness := RowWitness.topPrime 11503 },
  { lower := 11638, upper := 11639, witness := RowWitness.topPrime 11633 },
  { lower := 11774, upper := 11850, witness := RowWitness.topPrime 11743 },
  { lower := 11851, upper := 11881, witness := RowWitness.topPrime 11839 },
  { lower := 11979, upper := 11982, witness := RowWitness.topPrime 11971 },
  { lower := 12005, upper := 12086, witness := RowWitness.topPrime 11987 },
  { lower := 12321, upper := 12395, witness := RowWitness.topPrime 12301 },
  { lower := 12493, upper := 12598, witness := RowWitness.topPrime 12491 },
  { lower := 12599, upper := 12600, witness := RowWitness.topPrime 12589 },
  { lower := 12696, upper := 12722, witness := RowWitness.topPrime 12689 },
  { lower := 13182, upper := 13284, witness := RowWitness.topPrime 13177 },
  { lower := 13285, upper := 13361, witness := RowWitness.topPrime 13267 },
  { lower := 13454, upper := 13558, witness := RowWitness.topPrime 13451 },
  { lower := 13559, upper := 13563, witness := RowWitness.topPrime 13553 },
  { lower := 13718, upper := 13818, witness := RowWitness.topPrime 13711 },
  { lower := 13819, upper := 13861, witness := RowWitness.topPrime 13807 },
  { lower := 14375, upper := 14404, witness := RowWitness.topPrime 14369 },
  { lower := 14406, upper := 14508, witness := RowWitness.topPrime 14401 },
  { lower := 14509, upper := 14513, witness := RowWitness.topPrime 14503 },
  { lower := 14739, upper := 14748, witness := RowWitness.topPrime 14737 },
  { lower := 14792, upper := 14846, witness := RowWitness.topPrime 14783 },
  { lower := 14884, upper := 14899, witness := RowWitness.topPrime 14879 },
  { lower := 15059, upper := 15107, witness := RowWitness.topPrime 15053 },
  { lower := 15123, upper := 15228, witness := RowWitness.topPrime 15121 },
  { lower := 15229, upper := 15236, witness := RowWitness.topPrime 15227 },
  { lower := 15379, upper := 15484, witness := RowWitness.topPrime 15377 },
  { lower := 15485, upper := 15486, witness := RowWitness.topPrime 15473 },
  { lower := 15979, upper := 16080, witness := RowWitness.topPrime 15973 },
  { lower := 16081, upper := 16086, witness := RowWitness.topPrime 16073 },
  { lower := 16337, upper := 16357, witness := RowWitness.topPrime 16333 },
  { lower := 16384, upper := 16488, witness := RowWitness.topPrime 16381 },
  { lower := 16489, upper := 16491, witness := RowWitness.topPrime 16487 },
  { lower := 16810, upper := 16894, witness := RowWitness.topPrime 16787 },
  { lower := 16895, upper := 16927, witness := RowWitness.topPrime 16889 },
  { lower := 17303, upper := 17406, witness := RowWitness.topPrime 17299 },
  { lower := 17407, upper := 17410, witness := RowWitness.topPrime 17401 },
  { lower := 17661, upper := 17766, witness := RowWitness.topPrime 17659 },
  { lower := 17767, upper := 17768, witness := RowWitness.topPrime 17761 },
  { lower := 18491, upper := 18588, witness := RowWitness.topPrime 18481 },
  { lower := 18589, upper := 18598, witness := RowWitness.topPrime 18587 },
  { lower := 18605, upper := 18609, witness := RowWitness.topPrime 18593 },
  { lower := 18634, upper := 18712, witness := RowWitness.topPrime 18617 },
  { lower := 18723, upper := 18741, witness := RowWitness.topPrime 18719 },
  { lower := 18750, upper := 18856, witness := RowWitness.topPrime 18749 },
  { lower := 18857, upper := 18857, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19314, witness := RowWitness.topPrime 19207 },
  { lower := 19315, upper := 19315, witness := RowWitness.topPrime 19309 },
  { lower := 19663, upper := 19759, witness := RowWitness.topPrime 19661 },
  { lower := 19965, upper := 19988, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20268, witness := RowWitness.topPrime 20161 },
  { lower := 20269, upper := 20288, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20446, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20509, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20640, witness := RowWitness.topPrime 20533 },
  { lower := 20641, upper := 20642, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20684, witness := RowWitness.topPrime 20663 },
  { lower := 21218, upper := 21249, witness := RowWitness.topPrime 21211 },
  { lower := 21296, upper := 21390, witness := RowWitness.topPrime 21283 },
  { lower := 21391, upper := 21403, witness := RowWitness.topPrime 21391 },
  { lower := 21866, upper := 21970, witness := RowWitness.topPrime 21863 },
  { lower := 21971, upper := 22011, witness := RowWitness.topPrime 21961 },
  { lower := 22103, upper := 22200, witness := RowWitness.topPrime 22093 },
  { lower := 22201, upper := 22210, witness := RowWitness.topPrime 22193 },
  { lower := 22472, upper := 22552, witness := RowWitness.topPrime 22469 },
  { lower := 24010, upper := 24114, witness := RowWitness.topPrime 24007 },
  { lower := 24115, upper := 24117, witness := RowWitness.topPrime 24113 },
  { lower := 24334, upper := 24436, witness := RowWitness.topPrime 24329 },
  { lower := 24437, upper := 24474, witness := RowWitness.topPrime 24421 },
  { lower := 24576, upper := 24678, witness := RowWitness.topPrime 24571 },
  { lower := 24679, upper := 24683, witness := RowWitness.topPrime 24677 },
  { lower := 25000, upper := 25071, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25296, witness := RowWitness.topPrime 25189 },
  { lower := 25297, upper := 25368, witness := RowWitness.topPrime 25261 },
  { lower := 25369, upper := 25388, witness := RowWitness.topPrime 25367 },
  { lower := 26047, upper := 26118, witness := RowWitness.topPrime 26041 },
  { lower := 26411, upper := 26471, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26518, witness := RowWitness.topPrime 26501 },
  { lower := 26645, upper := 26727, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27003, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27487, witness := RowWitness.topPrime 27431 },
  { lower := 27951, upper := 27955, witness := RowWitness.topPrime 27947 },
  { lower := 28125, upper := 28197, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28232, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28668, witness := RowWitness.topPrime 28573 },
  { lower := 28749, upper := 28836, witness := RowWitness.topPrime 28729 },
  { lower := 28837, upper := 28856, witness := RowWitness.topPrime 28837 },
  { lower := 29584, upper := 29585, witness := RowWitness.topPrime 29581 },
  { lower := 29791, upper := 29875, witness := RowWitness.topPrime 29789 },
  { lower := 30258, upper := 30353, witness := RowWitness.topPrime 30253 },
  { lower := 30926, upper := 31006, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31300, witness := RowWitness.topPrime 31193 },
  { lower := 31301, upper := 31320, witness := RowWitness.topPrime 31277 },
  { lower := 31329, upper := 31357, witness := RowWitness.topPrime 31327 },
  { lower := 31423, upper := 31504, witness := RowWitness.topPrime 31397 },
  { lower := 31505, upper := 31530, witness := RowWitness.topPrime 31489 },
  { lower := 31974, upper := 32046, witness := RowWitness.topPrime 31973 },
  { lower := 33620, upper := 33726, witness := RowWitness.topPrime 33619 },
  { lower := 33727, upper := 33727, witness := RowWitness.topPrime 33721 },
  { lower := 34347, upper := 34444, witness := RowWitness.topPrime 34337 },
  { lower := 34445, upper := 34498, witness := RowWitness.topPrime 34439 },
  { lower := 35152, upper := 35238, witness := RowWitness.topPrime 35149 },
  { lower := 35301, upper := 35398, witness := RowWitness.topPrime 35291 },
  { lower := 35399, upper := 35408, witness := RowWitness.topPrime 35393 },
  { lower := 36015, upper := 36019, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36604, witness := RowWitness.topPrime 36497 },
  { lower := 36605, upper := 36608, witness := RowWitness.topPrime 36599 },
  { lower := 36982, upper := 37086, witness := RowWitness.topPrime 36979 },
  { lower := 37087, upper := 37087, witness := RowWitness.topPrime 37087 },
  { lower := 37303, upper := 37317, witness := RowWitness.topPrime 37277 },
  { lower := 37349, upper := 37410, witness := RowWitness.topPrime 37339 },
  { lower := 37446, upper := 37456, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37600, witness := RowWitness.topPrime 37493 },
  { lower := 37601, upper := 37607, witness := RowWitness.topPrime 37591 },
  { lower := 37636, upper := 37660, witness := RowWitness.topPrime 37633 },
  { lower := 39326, upper := 39411, witness := RowWitness.topPrime 39323 },
  { lower := 39605, upper := 39653, witness := RowWitness.topPrime 39581 },
  { lower := 40401, upper := 40435, witness := RowWitness.topPrime 40387 },
  { lower := 40678, upper := 40732, witness := RowWitness.topPrime 40639 },
  { lower := 40817, upper := 40911, witness := RowWitness.topPrime 40813 },
  { lower := 40960, upper := 41038, witness := RowWitness.topPrime 40949 },
  { lower := 41772, upper := 41850, witness := RowWitness.topPrime 41771 },
  { lower := 43750, upper := 43794, witness := RowWitness.topPrime 43721 },
  { lower := 43940, upper := 44030, witness := RowWitness.topPrime 43933 },
  { lower := 44217, upper := 44287, witness := RowWitness.topPrime 44207 },
  { lower := 44944, upper := 44997, witness := RowWitness.topPrime 44939 },
  { lower := 48013, upper := 48068, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48775, witness := RowWitness.topPrime 48733 },
  { lower := 48778, upper := 48841, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49237, witness := RowWitness.topPrime 49139 },
  { lower := 50000, upper := 50035, witness := RowWitness.topPrime 49999 },
  { lower := 50421, upper := 50517, witness := RowWitness.topPrime 50417 },
  { lower := 50653, upper := 50669, witness := RowWitness.topPrime 50651 },
  { lower := 53125, upper := 53152, witness := RowWitness.topPrime 53117 },
  { lower := 55451, upper := 55548, witness := RowWitness.topPrime 55441 },
  { lower := 55549, upper := 55554, witness := RowWitness.topPrime 55547 },
  { lower := 56250, upper := 56276, witness := RowWitness.topPrime 56249 },
  { lower := 58619, upper := 58671, witness := RowWitness.topPrime 58613 },
  { lower := 59582, upper := 59643, witness := RowWitness.topPrime 59581 },
  { lower := 62500, upper := 62517, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63976, witness := RowWitness.topPrime 63929 },
  { lower := 65536, upper := 65628, witness := RowWitness.topPrime 65521 },
  { lower := 65629, upper := 65640, witness := RowWitness.topPrime 65629 },
  { lower := 67335, upper := 67335, witness := RowWitness.topPrime 67307 },
  { lower := 68651, upper := 68746, witness := RowWitness.topPrime 68639 },
  { lower := 68747, upper := 68758, witness := RowWitness.topPrime 68743 },
  { lower := 68782, upper := 68801, witness := RowWitness.topPrime 68777 },
  { lower := 68921, upper := 68997, witness := RowWitness.topPrime 68917 },
  { lower := 73205, upper := 73274, witness := RowWitness.topPrime 73189 },
  { lower := 85264, upper := 85276, witness := RowWitness.topPrime 85259 },
  { lower := 85697, upper := 85790, witness := RowWitness.topPrime 85691 },
  { lower := 102973, upper := 102992, witness := RowWitness.topPrime 102967 },
  { lower := 103041, upper := 103080, witness := RowWitness.topPrime 103007 },
  { lower := 122412, upper := 122424, witness := RowWitness.topPrime 122401 },
  { lower := 131769, upper := 131833, witness := RowWitness.topPrime 131759 },
  { lower := 137917, upper := 137949, witness := RowWitness.topPrime 137911 },
  { lower := 142814, upper := 142912, witness := RowWitness.topPrime 142811 },
  { lower := 146410, upper := 146441, witness := RowWitness.topPrime 146407 },
  { lower := 148877, upper := 148944, witness := RowWitness.topPrime 148873 },
  { lower := 148955, upper := 148984, witness := RowWitness.topPrime 148949 }
]

def row108_layers : List CoverLayer := [
  { lower := 11556, upper := 23112, M := 26 },
  { lower := 23112, upper := 46224, M := 22 },
  { lower := 46224, upper := 92448, M := 18 },
  { lower := 92448, upper := 184896, M := 15 },
  { lower := 184896, upper := 369792, M := 12 },
  { lower := 369792, upper := 739584, M := 10 },
  { lower := 739584, upper := 1479168, M := 9 },
  { lower := 1479168, upper := 2958336, M := 7 },
  { lower := 2958336, upper := 5916672, M := 6 },
  { lower := 5916672, upper := 11833344, M := 5 },
  { lower := 11833344, upper := 23666688, M := 4 },
  { lower := 23666688, upper := 47333376, M := 4 },
  { lower := 47333376, upper := 94666752, M := 3 },
  { lower := 94666752, upper := 189333504, M := 3 },
  { lower := 189333504, upper := 378667008, M := 2 },
  { lower := 378667008, upper := 757334016, M := 2 },
  { lower := 757334016, upper := 1514668032, M := 2 },
  { lower := 1514668032, upper := 3029336064, M := 1 },
  { lower := 3029336064, upper := 6058672128, M := 1 },
  { lower := 6058672128, upper := 10000000000, M := 1 }
]

def row108 : FiniteCoverRow := {
  height := row108_height,
  goods := row108_goods,
  layers := row108_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good000_checked :
    goodSegmentCheck 108 35 75
      { lower := 218, upper := 318, witness := RowWitness.topPrime 211 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good001_checked :
    goodSegmentCheck 108 35 75
      { lower := 319, upper := 424, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good002_checked :
    goodSegmentCheck 108 35 75
      { lower := 425, upper := 528, witness := RowWitness.topPrime 421 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good003_checked :
    goodSegmentCheck 108 35 75
      { lower := 529, upper := 630, witness := RowWitness.topPrime 523 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good004_checked :
    goodSegmentCheck 108 35 75
      { lower := 631, upper := 738, witness := RowWitness.topPrime 631 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good005_checked :
    goodSegmentCheck 108 35 75
      { lower := 739, upper := 846, witness := RowWitness.topPrime 739 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good006_checked :
    goodSegmentCheck 108 35 75
      { lower := 847, upper := 946, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good007_checked :
    goodSegmentCheck 108 35 75
      { lower := 947, upper := 1054, witness := RowWitness.topPrime 947 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good008_checked :
    goodSegmentCheck 108 35 75
      { lower := 1055, upper := 1158, witness := RowWitness.topPrime 1051 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good009_checked :
    goodSegmentCheck 108 35 75
      { lower := 1159, upper := 1260, witness := RowWitness.topPrime 1153 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good010_checked :
    goodSegmentCheck 108 35 75
      { lower := 1261, upper := 1366, witness := RowWitness.topPrime 1259 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good011_checked :
    goodSegmentCheck 108 35 75
      { lower := 1367, upper := 1474, witness := RowWitness.topPrime 1367 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good012_checked :
    goodSegmentCheck 108 35 75
      { lower := 1475, upper := 1578, witness := RowWitness.topPrime 1471 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good013_checked :
    goodSegmentCheck 108 35 75
      { lower := 1579, upper := 1686, witness := RowWitness.topPrime 1579 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good014_checked :
    goodSegmentCheck 108 35 75
      { lower := 1687, upper := 1776, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good015_checked :
    goodSegmentCheck 108 35 75
      { lower := 1777, upper := 1884, witness := RowWitness.topPrime 1777 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good016_checked :
    goodSegmentCheck 108 35 75
      { lower := 1885, upper := 1986, witness := RowWitness.topPrime 1879 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good017_checked :
    goodSegmentCheck 108 35 75
      { lower := 1987, upper := 2094, witness := RowWitness.topPrime 1987 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good018_checked :
    goodSegmentCheck 108 35 75
      { lower := 2095, upper := 2196, witness := RowWitness.topPrime 2089 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good019_checked :
    goodSegmentCheck 108 35 75
      { lower := 2197, upper := 2286, witness := RowWitness.topPrime 2179 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good020_checked :
    goodSegmentCheck 108 35 75
      { lower := 2287, upper := 2394, witness := RowWitness.topPrime 2287 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good021_checked :
    goodSegmentCheck 108 35 75
      { lower := 2395, upper := 2500, witness := RowWitness.topPrime 2393 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good022_checked :
    goodSegmentCheck 108 35 75
      { lower := 2501, upper := 2584, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good023_checked :
    goodSegmentCheck 108 35 75
      { lower := 2585, upper := 2686, witness := RowWitness.topPrime 2579 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good024_checked :
    goodSegmentCheck 108 35 75
      { lower := 2687, upper := 2794, witness := RowWitness.topPrime 2687 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good025_checked :
    goodSegmentCheck 108 35 75
      { lower := 2795, upper := 2898, witness := RowWitness.topPrime 2791 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good026_checked :
    goodSegmentCheck 108 35 75
      { lower := 2899, upper := 3004, witness := RowWitness.topPrime 2897 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good027_checked :
    goodSegmentCheck 108 35 75
      { lower := 3005, upper := 3108, witness := RowWitness.topPrime 3001 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good028_checked :
    goodSegmentCheck 108 35 75
      { lower := 3109, upper := 3216, witness := RowWitness.topPrime 3109 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good029_checked :
    goodSegmentCheck 108 35 75
      { lower := 3217, upper := 3324, witness := RowWitness.topPrime 3217 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good030_checked :
    goodSegmentCheck 108 35 75
      { lower := 3325, upper := 3430, witness := RowWitness.topPrime 3323 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good031_checked :
    goodSegmentCheck 108 35 75
      { lower := 3431, upper := 3520, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good032_checked :
    goodSegmentCheck 108 35 75
      { lower := 3521, upper := 3624, witness := RowWitness.topPrime 3517 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good033_checked :
    goodSegmentCheck 108 35 75
      { lower := 3625, upper := 3730, witness := RowWitness.topPrime 3623 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good034_checked :
    goodSegmentCheck 108 35 75
      { lower := 3731, upper := 3834, witness := RowWitness.topPrime 3727 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good035_checked :
    goodSegmentCheck 108 35 75
      { lower := 3835, upper := 3940, witness := RowWitness.topPrime 3833 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good036_checked :
    goodSegmentCheck 108 35 75
      { lower := 3941, upper := 4038, witness := RowWitness.topPrime 3931 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good037_checked :
    goodSegmentCheck 108 35 75
      { lower := 4039, upper := 4134, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good038_checked :
    goodSegmentCheck 108 35 75
      { lower := 4135, upper := 4240, witness := RowWitness.topPrime 4133 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good039_checked :
    goodSegmentCheck 108 35 75
      { lower := 4241, upper := 4348, witness := RowWitness.topPrime 4241 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good040_checked :
    goodSegmentCheck 108 35 75
      { lower := 4349, upper := 4456, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good041_checked :
    goodSegmentCheck 108 35 75
      { lower := 4457, upper := 4564, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good042_checked :
    goodSegmentCheck 108 35 75
      { lower := 4565, upper := 4668, witness := RowWitness.topPrime 4561 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good043_checked :
    goodSegmentCheck 108 35 75
      { lower := 4669, upper := 4770, witness := RowWitness.topPrime 4663 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good044_checked :
    goodSegmentCheck 108 35 75
      { lower := 4771, upper := 4866, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good045_checked :
    goodSegmentCheck 108 35 75
      { lower := 4867, upper := 4968, witness := RowWitness.topPrime 4861 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good046_checked :
    goodSegmentCheck 108 35 75
      { lower := 4969, upper := 5076, witness := RowWitness.topPrime 4969 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good047_checked :
    goodSegmentCheck 108 35 75
      { lower := 5077, upper := 5184, witness := RowWitness.topPrime 5077 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good048_checked :
    goodSegmentCheck 108 35 75
      { lower := 5185, upper := 5286, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good049_checked :
    goodSegmentCheck 108 35 75
      { lower := 5287, upper := 5388, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good050_checked :
    goodSegmentCheck 108 35 75
      { lower := 5389, upper := 5494, witness := RowWitness.topPrime 5387 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good051_checked :
    goodSegmentCheck 108 35 75
      { lower := 5495, upper := 5590, witness := RowWitness.topPrime 5483 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good052_checked :
    goodSegmentCheck 108 35 75
      { lower := 5591, upper := 5698, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good053_checked :
    goodSegmentCheck 108 35 75
      { lower := 5699, upper := 5800, witness := RowWitness.topPrime 5693 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good054_checked :
    goodSegmentCheck 108 35 75
      { lower := 5801, upper := 5908, witness := RowWitness.topPrime 5801 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good055_checked :
    goodSegmentCheck 108 35 75
      { lower := 5909, upper := 6010, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good056_checked :
    goodSegmentCheck 108 35 75
      { lower := 6011, upper := 6118, witness := RowWitness.topPrime 6011 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good057_checked :
    goodSegmentCheck 108 35 75
      { lower := 6119, upper := 6220, witness := RowWitness.topPrime 6113 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good058_checked :
    goodSegmentCheck 108 35 75
      { lower := 6221, upper := 6328, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good059_checked :
    goodSegmentCheck 108 35 75
      { lower := 6329, upper := 6436, witness := RowWitness.topPrime 6329 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good060_checked :
    goodSegmentCheck 108 35 75
      { lower := 6437, upper := 6534, witness := RowWitness.topPrime 6427 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good061_checked :
    goodSegmentCheck 108 35 75
      { lower := 6535, upper := 6636, witness := RowWitness.topPrime 6529 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good062_checked :
    goodSegmentCheck 108 35 75
      { lower := 6637, upper := 6744, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good063_checked :
    goodSegmentCheck 108 35 75
      { lower := 6745, upper := 6844, witness := RowWitness.topPrime 6737 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good064_checked :
    goodSegmentCheck 108 35 75
      { lower := 6845, upper := 6948, witness := RowWitness.topPrime 6841 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good065_checked :
    goodSegmentCheck 108 35 75
      { lower := 6949, upper := 7056, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good066_checked :
    goodSegmentCheck 108 35 75
      { lower := 7057, upper := 7164, witness := RowWitness.topPrime 7057 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good067_checked :
    goodSegmentCheck 108 35 75
      { lower := 7165, upper := 7266, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good068_checked :
    goodSegmentCheck 108 35 75
      { lower := 7267, upper := 7360, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good069_checked :
    goodSegmentCheck 108 35 75
      { lower := 7361, upper := 7458, witness := RowWitness.topPrime 7351 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good070_checked :
    goodSegmentCheck 108 35 75
      { lower := 7459, upper := 7566, witness := RowWitness.topPrime 7459 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good071_checked :
    goodSegmentCheck 108 35 75
      { lower := 7567, upper := 7668, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good072_checked :
    goodSegmentCheck 108 35 75
      { lower := 7669, upper := 7776, witness := RowWitness.topPrime 7669 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good073_checked :
    goodSegmentCheck 108 35 75
      { lower := 7777, upper := 7866, witness := RowWitness.topPrime 7759 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good074_checked :
    goodSegmentCheck 108 35 75
      { lower := 7867, upper := 7974, witness := RowWitness.topPrime 7867 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good075_checked :
    goodSegmentCheck 108 35 75
      { lower := 7975, upper := 8070, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good076_checked :
    goodSegmentCheck 108 35 75
      { lower := 8071, upper := 8176, witness := RowWitness.topPrime 8069 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good077_checked :
    goodSegmentCheck 108 35 75
      { lower := 8177, upper := 8278, witness := RowWitness.topPrime 8171 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good078_checked :
    goodSegmentCheck 108 35 75
      { lower := 8279, upper := 8380, witness := RowWitness.topPrime 8273 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good079_checked :
    goodSegmentCheck 108 35 75
      { lower := 8381, upper := 8484, witness := RowWitness.topPrime 8377 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good080_checked :
    goodSegmentCheck 108 35 75
      { lower := 8485, upper := 8574, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good081_checked :
    goodSegmentCheck 108 35 75
      { lower := 8575, upper := 8680, witness := RowWitness.topPrime 8573 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good082_checked :
    goodSegmentCheck 108 35 75
      { lower := 8681, upper := 8788, witness := RowWitness.topPrime 8681 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good083_checked :
    goodSegmentCheck 108 35 75
      { lower := 8789, upper := 8890, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good084_checked :
    goodSegmentCheck 108 35 75
      { lower := 8891, upper := 8994, witness := RowWitness.topPrime 8887 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good085_checked :
    goodSegmentCheck 108 35 75
      { lower := 8995, upper := 9078, witness := RowWitness.topPrime 8971 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good086_checked :
    goodSegmentCheck 108 35 75
      { lower := 9079, upper := 9174, witness := RowWitness.topPrime 9067 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good087_checked :
    goodSegmentCheck 108 35 75
      { lower := 9175, upper := 9280, witness := RowWitness.topPrime 9173 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good088_checked :
    goodSegmentCheck 108 35 75
      { lower := 9281, upper := 9388, witness := RowWitness.topPrime 9281 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good089_checked :
    goodSegmentCheck 108 35 75
      { lower := 9389, upper := 9484, witness := RowWitness.topPrime 9377 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good090_checked :
    goodSegmentCheck 108 35 75
      { lower := 9485, upper := 9586, witness := RowWitness.topPrime 9479 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good091_checked :
    goodSegmentCheck 108 35 75
      { lower := 9587, upper := 9694, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good092_checked :
    goodSegmentCheck 108 35 75
      { lower := 9695, upper := 9796, witness := RowWitness.topPrime 9689 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good093_checked :
    goodSegmentCheck 108 35 75
      { lower := 9797, upper := 9898, witness := RowWitness.topPrime 9791 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good094_checked :
    goodSegmentCheck 108 35 75
      { lower := 9899, upper := 9994, witness := RowWitness.topPrime 9887 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good095_checked :
    goodSegmentCheck 108 35 75
      { lower := 9995, upper := 10080, witness := RowWitness.topPrime 9973 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good096_checked :
    goodSegmentCheck 108 35 75
      { lower := 10081, upper := 10186, witness := RowWitness.topPrime 10079 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good097_checked :
    goodSegmentCheck 108 35 75
      { lower := 10187, upper := 10288, witness := RowWitness.topPrime 10181 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good098_checked :
    goodSegmentCheck 108 35 75
      { lower := 10289, upper := 10396, witness := RowWitness.topPrime 10289 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good099_checked :
    goodSegmentCheck 108 35 75
      { lower := 10397, upper := 10498, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good100_checked :
    goodSegmentCheck 108 35 75
      { lower := 10499, upper := 10606, witness := RowWitness.topPrime 10499 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good101_checked :
    goodSegmentCheck 108 35 75
      { lower := 10607, upper := 10714, witness := RowWitness.topPrime 10607 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good102_checked :
    goodSegmentCheck 108 35 75
      { lower := 10715, upper := 10818, witness := RowWitness.topPrime 10711 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good103_checked :
    goodSegmentCheck 108 35 75
      { lower := 10819, upper := 10906, witness := RowWitness.topPrime 10799 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good104_checked :
    goodSegmentCheck 108 35 75
      { lower := 10907, upper := 11010, witness := RowWitness.topPrime 10903 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good105_checked :
    goodSegmentCheck 108 35 75
      { lower := 11011, upper := 11110, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good106_checked :
    goodSegmentCheck 108 35 75
      { lower := 11111, upper := 11200, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good107_checked :
    goodSegmentCheck 108 35 75
      { lower := 11201, upper := 11304, witness := RowWitness.topPrime 11197 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good108_checked :
    goodSegmentCheck 108 35 75
      { lower := 11305, upper := 11406, witness := RowWitness.topPrime 11299 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good109_checked :
    goodSegmentCheck 108 35 75
      { lower := 11407, upper := 11506, witness := RowWitness.topPrime 11399 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good110_checked :
    goodSegmentCheck 108 35 75
      { lower := 11507, upper := 11556, witness := RowWitness.topPrime 11503 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good111_checked :
    goodSegmentCheck 108 35 75
      { lower := 11638, upper := 11639, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good112_checked :
    goodSegmentCheck 108 35 75
      { lower := 11774, upper := 11850, witness := RowWitness.topPrime 11743 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good113_checked :
    goodSegmentCheck 108 35 75
      { lower := 11851, upper := 11881, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good114_checked :
    goodSegmentCheck 108 35 75
      { lower := 11979, upper := 11982, witness := RowWitness.topPrime 11971 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good115_checked :
    goodSegmentCheck 108 35 75
      { lower := 12005, upper := 12086, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good116_checked :
    goodSegmentCheck 108 35 75
      { lower := 12321, upper := 12395, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good117_checked :
    goodSegmentCheck 108 35 75
      { lower := 12493, upper := 12598, witness := RowWitness.topPrime 12491 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good118_checked :
    goodSegmentCheck 108 35 75
      { lower := 12599, upper := 12600, witness := RowWitness.topPrime 12589 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good119_checked :
    goodSegmentCheck 108 35 75
      { lower := 12696, upper := 12722, witness := RowWitness.topPrime 12689 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good120_checked :
    goodSegmentCheck 108 35 75
      { lower := 13182, upper := 13284, witness := RowWitness.topPrime 13177 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good121_checked :
    goodSegmentCheck 108 35 75
      { lower := 13285, upper := 13361, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good122_checked :
    goodSegmentCheck 108 35 75
      { lower := 13454, upper := 13558, witness := RowWitness.topPrime 13451 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good123_checked :
    goodSegmentCheck 108 35 75
      { lower := 13559, upper := 13563, witness := RowWitness.topPrime 13553 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good124_checked :
    goodSegmentCheck 108 35 75
      { lower := 13718, upper := 13818, witness := RowWitness.topPrime 13711 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good125_checked :
    goodSegmentCheck 108 35 75
      { lower := 13819, upper := 13861, witness := RowWitness.topPrime 13807 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good126_checked :
    goodSegmentCheck 108 35 75
      { lower := 14375, upper := 14404, witness := RowWitness.topPrime 14369 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good127_checked :
    goodSegmentCheck 108 35 75
      { lower := 14406, upper := 14508, witness := RowWitness.topPrime 14401 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good128_checked :
    goodSegmentCheck 108 35 75
      { lower := 14509, upper := 14513, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good129_checked :
    goodSegmentCheck 108 35 75
      { lower := 14739, upper := 14748, witness := RowWitness.topPrime 14737 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good130_checked :
    goodSegmentCheck 108 35 75
      { lower := 14792, upper := 14846, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good131_checked :
    goodSegmentCheck 108 35 75
      { lower := 14884, upper := 14899, witness := RowWitness.topPrime 14879 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good132_checked :
    goodSegmentCheck 108 35 75
      { lower := 15059, upper := 15107, witness := RowWitness.topPrime 15053 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good133_checked :
    goodSegmentCheck 108 35 75
      { lower := 15123, upper := 15228, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good134_checked :
    goodSegmentCheck 108 35 75
      { lower := 15229, upper := 15236, witness := RowWitness.topPrime 15227 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good135_checked :
    goodSegmentCheck 108 35 75
      { lower := 15379, upper := 15484, witness := RowWitness.topPrime 15377 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good136_checked :
    goodSegmentCheck 108 35 75
      { lower := 15485, upper := 15486, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good137_checked :
    goodSegmentCheck 108 35 75
      { lower := 15979, upper := 16080, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good138_checked :
    goodSegmentCheck 108 35 75
      { lower := 16081, upper := 16086, witness := RowWitness.topPrime 16073 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good139_checked :
    goodSegmentCheck 108 35 75
      { lower := 16337, upper := 16357, witness := RowWitness.topPrime 16333 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good140_checked :
    goodSegmentCheck 108 35 75
      { lower := 16384, upper := 16488, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good141_checked :
    goodSegmentCheck 108 35 75
      { lower := 16489, upper := 16491, witness := RowWitness.topPrime 16487 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good142_checked :
    goodSegmentCheck 108 35 75
      { lower := 16810, upper := 16894, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good143_checked :
    goodSegmentCheck 108 35 75
      { lower := 16895, upper := 16927, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good144_checked :
    goodSegmentCheck 108 35 75
      { lower := 17303, upper := 17406, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good145_checked :
    goodSegmentCheck 108 35 75
      { lower := 17407, upper := 17410, witness := RowWitness.topPrime 17401 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good146_checked :
    goodSegmentCheck 108 35 75
      { lower := 17661, upper := 17766, witness := RowWitness.topPrime 17659 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good147_checked :
    goodSegmentCheck 108 35 75
      { lower := 17767, upper := 17768, witness := RowWitness.topPrime 17761 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good148_checked :
    goodSegmentCheck 108 35 75
      { lower := 18491, upper := 18588, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good149_checked :
    goodSegmentCheck 108 35 75
      { lower := 18589, upper := 18598, witness := RowWitness.topPrime 18587 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good150_checked :
    goodSegmentCheck 108 35 75
      { lower := 18605, upper := 18609, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good151_checked :
    goodSegmentCheck 108 35 75
      { lower := 18634, upper := 18712, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good152_checked :
    goodSegmentCheck 108 35 75
      { lower := 18723, upper := 18741, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good153_checked :
    goodSegmentCheck 108 35 75
      { lower := 18750, upper := 18856, witness := RowWitness.topPrime 18749 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good154_checked :
    goodSegmentCheck 108 35 75
      { lower := 18857, upper := 18857, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good155_checked :
    goodSegmentCheck 108 35 75
      { lower := 19208, upper := 19314, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good156_checked :
    goodSegmentCheck 108 35 75
      { lower := 19315, upper := 19315, witness := RowWitness.topPrime 19309 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good157_checked :
    goodSegmentCheck 108 35 75
      { lower := 19663, upper := 19759, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good158_checked :
    goodSegmentCheck 108 35 75
      { lower := 19965, upper := 19988, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good159_checked :
    goodSegmentCheck 108 35 75
      { lower := 20172, upper := 20268, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good160_checked :
    goodSegmentCheck 108 35 75
      { lower := 20269, upper := 20288, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good161_checked :
    goodSegmentCheck 108 35 75
      { lower := 20402, upper := 20446, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good162_checked :
    goodSegmentCheck 108 35 75
      { lower := 20480, upper := 20509, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good163_checked :
    goodSegmentCheck 108 35 75
      { lower := 20535, upper := 20640, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good164_checked :
    goodSegmentCheck 108 35 75
      { lower := 20641, upper := 20642, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good165_checked :
    goodSegmentCheck 108 35 75
      { lower := 20667, upper := 20684, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good166_checked :
    goodSegmentCheck 108 35 75
      { lower := 21218, upper := 21249, witness := RowWitness.topPrime 21211 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good167_checked :
    goodSegmentCheck 108 35 75
      { lower := 21296, upper := 21390, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good168_checked :
    goodSegmentCheck 108 35 75
      { lower := 21391, upper := 21403, witness := RowWitness.topPrime 21391 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good169_checked :
    goodSegmentCheck 108 35 75
      { lower := 21866, upper := 21970, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good170_checked :
    goodSegmentCheck 108 35 75
      { lower := 21971, upper := 22011, witness := RowWitness.topPrime 21961 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good171_checked :
    goodSegmentCheck 108 35 75
      { lower := 22103, upper := 22200, witness := RowWitness.topPrime 22093 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good172_checked :
    goodSegmentCheck 108 35 75
      { lower := 22201, upper := 22210, witness := RowWitness.topPrime 22193 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good173_checked :
    goodSegmentCheck 108 35 75
      { lower := 22472, upper := 22552, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good174_checked :
    goodSegmentCheck 108 35 75
      { lower := 24010, upper := 24114, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good175_checked :
    goodSegmentCheck 108 35 75
      { lower := 24115, upper := 24117, witness := RowWitness.topPrime 24113 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good176_checked :
    goodSegmentCheck 108 35 75
      { lower := 24334, upper := 24436, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good177_checked :
    goodSegmentCheck 108 35 75
      { lower := 24437, upper := 24474, witness := RowWitness.topPrime 24421 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good178_checked :
    goodSegmentCheck 108 35 75
      { lower := 24576, upper := 24678, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good179_checked :
    goodSegmentCheck 108 35 75
      { lower := 24679, upper := 24683, witness := RowWitness.topPrime 24677 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good180_checked :
    goodSegmentCheck 108 35 75
      { lower := 25000, upper := 25071, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good181_checked :
    goodSegmentCheck 108 35 75
      { lower := 25215, upper := 25296, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good182_checked :
    goodSegmentCheck 108 35 75
      { lower := 25297, upper := 25368, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good183_checked :
    goodSegmentCheck 108 35 75
      { lower := 25369, upper := 25388, witness := RowWitness.topPrime 25367 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good184_checked :
    goodSegmentCheck 108 35 75
      { lower := 26047, upper := 26118, witness := RowWitness.topPrime 26041 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good185_checked :
    goodSegmentCheck 108 35 75
      { lower := 26411, upper := 26471, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good186_checked :
    goodSegmentCheck 108 35 75
      { lower := 26508, upper := 26518, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good187_checked :
    goodSegmentCheck 108 35 75
      { lower := 26645, upper := 26727, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good188_checked :
    goodSegmentCheck 108 35 75
      { lower := 26934, upper := 27003, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good189_checked :
    goodSegmentCheck 108 35 75
      { lower := 27436, upper := 27487, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good190_checked :
    goodSegmentCheck 108 35 75
      { lower := 27951, upper := 27955, witness := RowWitness.topPrime 27947 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good191_checked :
    goodSegmentCheck 108 35 75
      { lower := 28125, upper := 28197, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good192_checked :
    goodSegmentCheck 108 35 75
      { lower := 28227, upper := 28232, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good193_checked :
    goodSegmentCheck 108 35 75
      { lower := 28577, upper := 28668, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good194_checked :
    goodSegmentCheck 108 35 75
      { lower := 28749, upper := 28836, witness := RowWitness.topPrime 28729 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good195_checked :
    goodSegmentCheck 108 35 75
      { lower := 28837, upper := 28856, witness := RowWitness.topPrime 28837 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good196_checked :
    goodSegmentCheck 108 35 75
      { lower := 29584, upper := 29585, witness := RowWitness.topPrime 29581 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good197_checked :
    goodSegmentCheck 108 35 75
      { lower := 29791, upper := 29875, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good198_checked :
    goodSegmentCheck 108 35 75
      { lower := 30258, upper := 30353, witness := RowWitness.topPrime 30253 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good199_checked :
    goodSegmentCheck 108 35 75
      { lower := 30926, upper := 31006, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good200_checked :
    goodSegmentCheck 108 35 75
      { lower := 31213, upper := 31300, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good201_checked :
    goodSegmentCheck 108 35 75
      { lower := 31301, upper := 31320, witness := RowWitness.topPrime 31277 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good202_checked :
    goodSegmentCheck 108 35 75
      { lower := 31329, upper := 31357, witness := RowWitness.topPrime 31327 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good203_checked :
    goodSegmentCheck 108 35 75
      { lower := 31423, upper := 31504, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good204_checked :
    goodSegmentCheck 108 35 75
      { lower := 31505, upper := 31530, witness := RowWitness.topPrime 31489 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good205_checked :
    goodSegmentCheck 108 35 75
      { lower := 31974, upper := 32046, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good206_checked :
    goodSegmentCheck 108 35 75
      { lower := 33620, upper := 33726, witness := RowWitness.topPrime 33619 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good207_checked :
    goodSegmentCheck 108 35 75
      { lower := 33727, upper := 33727, witness := RowWitness.topPrime 33721 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good208_checked :
    goodSegmentCheck 108 35 75
      { lower := 34347, upper := 34444, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good209_checked :
    goodSegmentCheck 108 35 75
      { lower := 34445, upper := 34498, witness := RowWitness.topPrime 34439 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good210_checked :
    goodSegmentCheck 108 35 75
      { lower := 35152, upper := 35238, witness := RowWitness.topPrime 35149 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good211_checked :
    goodSegmentCheck 108 35 75
      { lower := 35301, upper := 35398, witness := RowWitness.topPrime 35291 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good212_checked :
    goodSegmentCheck 108 35 75
      { lower := 35399, upper := 35408, witness := RowWitness.topPrime 35393 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good213_checked :
    goodSegmentCheck 108 35 75
      { lower := 36015, upper := 36019, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good214_checked :
    goodSegmentCheck 108 35 75
      { lower := 36517, upper := 36604, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good215_checked :
    goodSegmentCheck 108 35 75
      { lower := 36605, upper := 36608, witness := RowWitness.topPrime 36599 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good216_checked :
    goodSegmentCheck 108 35 75
      { lower := 36982, upper := 37086, witness := RowWitness.topPrime 36979 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good217_checked :
    goodSegmentCheck 108 35 75
      { lower := 37087, upper := 37087, witness := RowWitness.topPrime 37087 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good218_checked :
    goodSegmentCheck 108 35 75
      { lower := 37303, upper := 37317, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good219_checked :
    goodSegmentCheck 108 35 75
      { lower := 37349, upper := 37410, witness := RowWitness.topPrime 37339 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good220_checked :
    goodSegmentCheck 108 35 75
      { lower := 37446, upper := 37456, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good221_checked :
    goodSegmentCheck 108 35 75
      { lower := 37500, upper := 37600, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good222_checked :
    goodSegmentCheck 108 35 75
      { lower := 37601, upper := 37607, witness := RowWitness.topPrime 37591 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good223_checked :
    goodSegmentCheck 108 35 75
      { lower := 37636, upper := 37660, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good224_checked :
    goodSegmentCheck 108 35 75
      { lower := 39326, upper := 39411, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good225_checked :
    goodSegmentCheck 108 35 75
      { lower := 39605, upper := 39653, witness := RowWitness.topPrime 39581 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good226_checked :
    goodSegmentCheck 108 35 75
      { lower := 40401, upper := 40435, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good227_checked :
    goodSegmentCheck 108 35 75
      { lower := 40678, upper := 40732, witness := RowWitness.topPrime 40639 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good228_checked :
    goodSegmentCheck 108 35 75
      { lower := 40817, upper := 40911, witness := RowWitness.topPrime 40813 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good229_checked :
    goodSegmentCheck 108 35 75
      { lower := 40960, upper := 41038, witness := RowWitness.topPrime 40949 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good230_checked :
    goodSegmentCheck 108 35 75
      { lower := 41772, upper := 41850, witness := RowWitness.topPrime 41771 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good231_checked :
    goodSegmentCheck 108 35 75
      { lower := 43750, upper := 43794, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good232_checked :
    goodSegmentCheck 108 35 75
      { lower := 43940, upper := 44030, witness := RowWitness.topPrime 43933 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good233_checked :
    goodSegmentCheck 108 35 75
      { lower := 44217, upper := 44287, witness := RowWitness.topPrime 44207 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good234_checked :
    goodSegmentCheck 108 35 75
      { lower := 44944, upper := 44997, witness := RowWitness.topPrime 44939 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good235_checked :
    goodSegmentCheck 108 35 75
      { lower := 48013, upper := 48068, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good236_checked :
    goodSegmentCheck 108 35 75
      { lower := 48734, upper := 48775, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good237_checked :
    goodSegmentCheck 108 35 75
      { lower := 48778, upper := 48841, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good238_checked :
    goodSegmentCheck 108 35 75
      { lower := 49152, upper := 49237, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good239_checked :
    goodSegmentCheck 108 35 75
      { lower := 50000, upper := 50035, witness := RowWitness.topPrime 49999 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good240_checked :
    goodSegmentCheck 108 35 75
      { lower := 50421, upper := 50517, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good241_checked :
    goodSegmentCheck 108 35 75
      { lower := 50653, upper := 50669, witness := RowWitness.topPrime 50651 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good242_checked :
    goodSegmentCheck 108 35 75
      { lower := 53125, upper := 53152, witness := RowWitness.topPrime 53117 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good243_checked :
    goodSegmentCheck 108 35 75
      { lower := 55451, upper := 55548, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good244_checked :
    goodSegmentCheck 108 35 75
      { lower := 55549, upper := 55554, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good245_checked :
    goodSegmentCheck 108 35 75
      { lower := 56250, upper := 56276, witness := RowWitness.topPrime 56249 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good246_checked :
    goodSegmentCheck 108 35 75
      { lower := 58619, upper := 58671, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good247_checked :
    goodSegmentCheck 108 35 75
      { lower := 59582, upper := 59643, witness := RowWitness.topPrime 59581 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good248_checked :
    goodSegmentCheck 108 35 75
      { lower := 62500, upper := 62517, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good249_checked :
    goodSegmentCheck 108 35 75
      { lower := 63948, upper := 63976, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good250_checked :
    goodSegmentCheck 108 35 75
      { lower := 65536, upper := 65628, witness := RowWitness.topPrime 65521 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good251_checked :
    goodSegmentCheck 108 35 75
      { lower := 65629, upper := 65640, witness := RowWitness.topPrime 65629 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good252_checked :
    goodSegmentCheck 108 35 75
      { lower := 67335, upper := 67335, witness := RowWitness.topPrime 67307 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good253_checked :
    goodSegmentCheck 108 35 75
      { lower := 68651, upper := 68746, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good254_checked :
    goodSegmentCheck 108 35 75
      { lower := 68747, upper := 68758, witness := RowWitness.topPrime 68743 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good255_checked :
    goodSegmentCheck 108 35 75
      { lower := 68782, upper := 68801, witness := RowWitness.topPrime 68777 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good240_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good241_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good242_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good243_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good244_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good245_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good246_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good247_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good248_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good249_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good250_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good251_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good252_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good253_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good254_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good255_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_good256_checked :
    goodSegmentCheck 108 35 75
      { lower := 68921, upper := 68997, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good257_checked :
    goodSegmentCheck 108 35 75
      { lower := 73205, upper := 73274, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good258_checked :
    goodSegmentCheck 108 35 75
      { lower := 85264, upper := 85276, witness := RowWitness.topPrime 85259 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good259_checked :
    goodSegmentCheck 108 35 75
      { lower := 85697, upper := 85790, witness := RowWitness.topPrime 85691 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good260_checked :
    goodSegmentCheck 108 35 75
      { lower := 102973, upper := 102992, witness := RowWitness.topPrime 102967 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good261_checked :
    goodSegmentCheck 108 35 75
      { lower := 103041, upper := 103080, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good262_checked :
    goodSegmentCheck 108 35 75
      { lower := 122412, upper := 122424, witness := RowWitness.topPrime 122401 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good263_checked :
    goodSegmentCheck 108 35 75
      { lower := 131769, upper := 131833, witness := RowWitness.topPrime 131759 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good264_checked :
    goodSegmentCheck 108 35 75
      { lower := 137917, upper := 137949, witness := RowWitness.topPrime 137911 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good265_checked :
    goodSegmentCheck 108 35 75
      { lower := 142814, upper := 142912, witness := RowWitness.topPrime 142811 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good266_checked :
    goodSegmentCheck 108 35 75
      { lower := 146410, upper := 146441, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good267_checked :
    goodSegmentCheck 108 35 75
      { lower := 148877, upper := 148944, witness := RowWitness.topPrime 148873 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row108_good268_checked :
    goodSegmentCheck 108 35 75
      { lower := 148955, upper := 148984, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 108) (r := 35) (s := 75) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good256_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good257_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good258_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good259_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good260_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good261_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good262_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good263_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good264_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good265_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good266_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good267_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_good268_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_goods_checked :
    row108.goods.all (goodSegmentCheck row108.height.i row108.height.r row108.height.s) = true := by
  change row108_goods.all (goodSegmentCheck 108 35 75) = true
  simp only [row108_goods, List.all_cons, List.all_nil,
    row108_good000_checked,
    row108_good001_checked,
    row108_good002_checked,
    row108_good003_checked,
    row108_good004_checked,
    row108_good005_checked,
    row108_good006_checked,
    row108_good007_checked,
    row108_good008_checked,
    row108_good009_checked,
    row108_good010_checked,
    row108_good011_checked,
    row108_good012_checked,
    row108_good013_checked,
    row108_good014_checked,
    row108_good015_checked,
    row108_good016_checked,
    row108_good017_checked,
    row108_good018_checked,
    row108_good019_checked,
    row108_good020_checked,
    row108_good021_checked,
    row108_good022_checked,
    row108_good023_checked,
    row108_good024_checked,
    row108_good025_checked,
    row108_good026_checked,
    row108_good027_checked,
    row108_good028_checked,
    row108_good029_checked,
    row108_good030_checked,
    row108_good031_checked,
    row108_good032_checked,
    row108_good033_checked,
    row108_good034_checked,
    row108_good035_checked,
    row108_good036_checked,
    row108_good037_checked,
    row108_good038_checked,
    row108_good039_checked,
    row108_good040_checked,
    row108_good041_checked,
    row108_good042_checked,
    row108_good043_checked,
    row108_good044_checked,
    row108_good045_checked,
    row108_good046_checked,
    row108_good047_checked,
    row108_good048_checked,
    row108_good049_checked,
    row108_good050_checked,
    row108_good051_checked,
    row108_good052_checked,
    row108_good053_checked,
    row108_good054_checked,
    row108_good055_checked,
    row108_good056_checked,
    row108_good057_checked,
    row108_good058_checked,
    row108_good059_checked,
    row108_good060_checked,
    row108_good061_checked,
    row108_good062_checked,
    row108_good063_checked,
    row108_good064_checked,
    row108_good065_checked,
    row108_good066_checked,
    row108_good067_checked,
    row108_good068_checked,
    row108_good069_checked,
    row108_good070_checked,
    row108_good071_checked,
    row108_good072_checked,
    row108_good073_checked,
    row108_good074_checked,
    row108_good075_checked,
    row108_good076_checked,
    row108_good077_checked,
    row108_good078_checked,
    row108_good079_checked,
    row108_good080_checked,
    row108_good081_checked,
    row108_good082_checked,
    row108_good083_checked,
    row108_good084_checked,
    row108_good085_checked,
    row108_good086_checked,
    row108_good087_checked,
    row108_good088_checked,
    row108_good089_checked,
    row108_good090_checked,
    row108_good091_checked,
    row108_good092_checked,
    row108_good093_checked,
    row108_good094_checked,
    row108_good095_checked,
    row108_good096_checked,
    row108_good097_checked,
    row108_good098_checked,
    row108_good099_checked,
    row108_good100_checked,
    row108_good101_checked,
    row108_good102_checked,
    row108_good103_checked,
    row108_good104_checked,
    row108_good105_checked,
    row108_good106_checked,
    row108_good107_checked,
    row108_good108_checked,
    row108_good109_checked,
    row108_good110_checked,
    row108_good111_checked,
    row108_good112_checked,
    row108_good113_checked,
    row108_good114_checked,
    row108_good115_checked,
    row108_good116_checked,
    row108_good117_checked,
    row108_good118_checked,
    row108_good119_checked,
    row108_good120_checked,
    row108_good121_checked,
    row108_good122_checked,
    row108_good123_checked,
    row108_good124_checked,
    row108_good125_checked,
    row108_good126_checked,
    row108_good127_checked,
    row108_good128_checked,
    row108_good129_checked,
    row108_good130_checked,
    row108_good131_checked,
    row108_good132_checked,
    row108_good133_checked,
    row108_good134_checked,
    row108_good135_checked,
    row108_good136_checked,
    row108_good137_checked,
    row108_good138_checked,
    row108_good139_checked,
    row108_good140_checked,
    row108_good141_checked,
    row108_good142_checked,
    row108_good143_checked,
    row108_good144_checked,
    row108_good145_checked,
    row108_good146_checked,
    row108_good147_checked,
    row108_good148_checked,
    row108_good149_checked,
    row108_good150_checked,
    row108_good151_checked,
    row108_good152_checked,
    row108_good153_checked,
    row108_good154_checked,
    row108_good155_checked,
    row108_good156_checked,
    row108_good157_checked,
    row108_good158_checked,
    row108_good159_checked,
    row108_good160_checked,
    row108_good161_checked,
    row108_good162_checked,
    row108_good163_checked,
    row108_good164_checked,
    row108_good165_checked,
    row108_good166_checked,
    row108_good167_checked,
    row108_good168_checked,
    row108_good169_checked,
    row108_good170_checked,
    row108_good171_checked,
    row108_good172_checked,
    row108_good173_checked,
    row108_good174_checked,
    row108_good175_checked,
    row108_good176_checked,
    row108_good177_checked,
    row108_good178_checked,
    row108_good179_checked,
    row108_good180_checked,
    row108_good181_checked,
    row108_good182_checked,
    row108_good183_checked,
    row108_good184_checked,
    row108_good185_checked,
    row108_good186_checked,
    row108_good187_checked,
    row108_good188_checked,
    row108_good189_checked,
    row108_good190_checked,
    row108_good191_checked,
    row108_good192_checked,
    row108_good193_checked,
    row108_good194_checked,
    row108_good195_checked,
    row108_good196_checked,
    row108_good197_checked,
    row108_good198_checked,
    row108_good199_checked,
    row108_good200_checked,
    row108_good201_checked,
    row108_good202_checked,
    row108_good203_checked,
    row108_good204_checked,
    row108_good205_checked,
    row108_good206_checked,
    row108_good207_checked,
    row108_good208_checked,
    row108_good209_checked,
    row108_good210_checked,
    row108_good211_checked,
    row108_good212_checked,
    row108_good213_checked,
    row108_good214_checked,
    row108_good215_checked,
    row108_good216_checked,
    row108_good217_checked,
    row108_good218_checked,
    row108_good219_checked,
    row108_good220_checked,
    row108_good221_checked,
    row108_good222_checked,
    row108_good223_checked,
    row108_good224_checked,
    row108_good225_checked,
    row108_good226_checked,
    row108_good227_checked,
    row108_good228_checked,
    row108_good229_checked,
    row108_good230_checked,
    row108_good231_checked,
    row108_good232_checked,
    row108_good233_checked,
    row108_good234_checked,
    row108_good235_checked,
    row108_good236_checked,
    row108_good237_checked,
    row108_good238_checked,
    row108_good239_checked,
    row108_good240_checked,
    row108_good241_checked,
    row108_good242_checked,
    row108_good243_checked,
    row108_good244_checked,
    row108_good245_checked,
    row108_good246_checked,
    row108_good247_checked,
    row108_good248_checked,
    row108_good249_checked,
    row108_good250_checked,
    row108_good251_checked,
    row108_good252_checked,
    row108_good253_checked,
    row108_good254_checked,
    row108_good255_checked,
    row108_good256_checked,
    row108_good257_checked,
    row108_good258_checked,
    row108_good259_checked,
    row108_good260_checked,
    row108_good261_checked,
    row108_good262_checked,
    row108_good263_checked,
    row108_good264_checked,
    row108_good265_checked,
    row108_good266_checked,
    row108_good267_checked,
    row108_good268_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_registered :
    decide (row108.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row108_small_checked :
    coverCheck (2 * row108.height.i + 2) (row108.height.i * (row108.height.i - 1) - 1)
      (row108.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row108_layerCover_checked :
    coverCheck (row108.height.i * (row108.height.i - 1)) (row108.height.n0 - 1)
      (row108.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row108_bounds : List NatInterval :=
  [(218, 318), (319, 424), (425, 528), (529, 630), (631, 738), (739, 846), (847, 946), (947, 1054), (1055, 1158), (1159, 1260), (1261, 1366), (1367, 1474), (1475, 1578), (1579, 1686), (1687, 1776), (1777, 1884), (1885, 1986), (1987, 2094), (2095, 2196), (2197, 2286), (2287, 2394), (2395, 2500), (2501, 2584), (2585, 2686), (2687, 2794), (2795, 2898), (2899, 3004), (3005, 3108), (3109, 3216), (3217, 3324), (3325, 3430), (3431, 3520), (3521, 3624), (3625, 3730), (3731, 3834), (3835, 3940), (3941, 4038), (4039, 4134), (4135, 4240), (4241, 4348), (4349, 4456), (4457, 4564), (4565, 4668), (4669, 4770), (4771, 4866), (4867, 4968), (4969, 5076), (5077, 5184), (5185, 5286), (5287, 5388), (5389, 5494), (5495, 5590), (5591, 5698), (5699, 5800), (5801, 5908), (5909, 6010), (6011, 6118), (6119, 6220), (6221, 6328), (6329, 6436), (6437, 6534), (6535, 6636), (6637, 6744), (6745, 6844), (6845, 6948), (6949, 7056), (7057, 7164), (7165, 7266), (7267, 7360), (7361, 7458), (7459, 7566), (7567, 7668), (7669, 7776), (7777, 7866), (7867, 7974), (7975, 8070), (8071, 8176), (8177, 8278), (8279, 8380), (8381, 8484), (8485, 8574), (8575, 8680), (8681, 8788), (8789, 8890), (8891, 8994), (8995, 9078), (9079, 9174), (9175, 9280), (9281, 9388), (9389, 9484), (9485, 9586), (9587, 9694), (9695, 9796), (9797, 9898), (9899, 9994), (9995, 10080), (10081, 10186), (10187, 10288), (10289, 10396), (10397, 10498), (10499, 10606), (10607, 10714), (10715, 10818), (10819, 10906), (10907, 11010), (11011, 11110), (11111, 11200), (11201, 11304), (11305, 11406), (11407, 11506), (11507, 11556), (11638, 11639), (11774, 11850), (11851, 11881), (11979, 11982), (12005, 12086), (12321, 12395), (12493, 12598), (12599, 12600), (12696, 12722), (13182, 13284), (13285, 13361), (13454, 13558), (13559, 13563), (13718, 13818), (13819, 13861), (14375, 14404), (14406, 14508), (14509, 14513), (14739, 14748), (14792, 14846), (14884, 14899), (15059, 15107), (15123, 15228), (15229, 15236), (15379, 15484), (15485, 15486), (15979, 16080), (16081, 16086), (16337, 16357), (16384, 16488), (16489, 16491), (16810, 16894), (16895, 16927), (17303, 17406), (17407, 17410), (17661, 17766), (17767, 17768), (18491, 18588), (18589, 18598), (18605, 18609), (18634, 18712), (18723, 18741), (18750, 18856), (18857, 18857), (19208, 19314), (19315, 19315), (19663, 19759), (19965, 19988), (20172, 20268), (20269, 20288), (20402, 20446), (20480, 20509), (20535, 20640), (20641, 20642), (20667, 20684), (21218, 21249), (21296, 21390), (21391, 21403), (21866, 21970), (21971, 22011), (22103, 22200), (22201, 22210), (22472, 22552), (24010, 24114), (24115, 24117), (24334, 24436), (24437, 24474), (24576, 24678), (24679, 24683), (25000, 25071), (25215, 25296), (25297, 25368), (25369, 25388), (26047, 26118), (26411, 26471), (26508, 26518), (26645, 26727), (26934, 27003), (27436, 27487), (27951, 27955), (28125, 28197), (28227, 28232), (28577, 28668), (28749, 28836), (28837, 28856), (29584, 29585), (29791, 29875), (30258, 30353), (30926, 31006), (31213, 31300), (31301, 31320), (31329, 31357), (31423, 31504), (31505, 31530), (31974, 32046), (33620, 33726), (33727, 33727), (34347, 34444), (34445, 34498), (35152, 35238), (35301, 35398), (35399, 35408), (36015, 36019), (36517, 36604), (36605, 36608), (36982, 37086), (37087, 37087), (37303, 37317), (37349, 37410), (37446, 37456), (37500, 37600), (37601, 37607), (37636, 37660), (39326, 39411), (39605, 39653), (40401, 40435), (40678, 40732), (40817, 40911), (40960, 41038), (41772, 41850), (43750, 43794), (43940, 44030), (44217, 44287), (44944, 44997), (48013, 48068), (48734, 48775), (48778, 48841), (49152, 49237), (50000, 50035), (50421, 50517), (50653, 50669), (53125, 53152), (55451, 55548), (55549, 55554), (56250, 56276), (58619, 58671), (59582, 59643), (62500, 62517), (63948, 63976), (65536, 65628), (65629, 65640), (67335, 67335), (68651, 68746), (68747, 68758), (68782, 68801), (68921, 68997), (73205, 73274), (85264, 85276), (85697, 85790), (102973, 102992), (103041, 103080), (122412, 122424), (131769, 131833), (137917, 137949), (142814, 142912), (146410, 146441), (148877, 148944), (148955, 148984)]

theorem row108_bounds_eq : row108.goods.map goodSegmentBounds = row108_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row108_layer000_intervals : List ColouredInterval :=
  [(2, 12288, 12395), (2, 12288, 12395), (2, 16384, 16491), (2, 20480, 20587), (2, 16384, 16491), (2, 16384, 16491), (5, 11875, 11982), (5, 12500, 12607), (5, 13125, 13232), (5, 13750, 13857), (5, 14375, 14482), (5, 15000, 15107), (5, 15625, 15732), (5, 16250, 16357), (5, 12500, 12607), (5, 15625, 15732), (5, 18750, 18857), (5, 21875, 21982), (5, 15625, 15732), (7, 12005, 12112), (7, 14406, 14513), (7, 16807, 16914), (7, 19208, 19315), (7, 21609, 21716), (7, 16807, 16914), (11, 11979, 12086), (11, 13310, 13417), (11, 14641, 14748), (11, 15972, 16079), (11, 17303, 17410), (11, 18634, 18741), (11, 19965, 20072), (11, 21296, 21403), (11, 22627, 22734), (11, 14641, 14748), (13, 13182, 13289), (13, 15379, 15486), (13, 17576, 17683), (13, 19773, 19880), (13, 21970, 22077), (17, 14739, 14846), (17, 19652, 19759), (19, 13718, 13825), (19, 20577, 20684), (23, 11638, 11745), (23, 12167, 12274), (23, 12696, 12803), (23, 13225, 13332), (23, 13754, 13861), (23, 12167, 12274), (29, 11774, 11881), (29, 12615, 12722), (29, 13456, 13563), (29, 14297, 14404), (29, 15138, 15245), (29, 15979, 16086), (29, 16820, 16927), (29, 17661, 17768), (29, 18502, 18609), (29, 19343, 19450), (29, 20184, 20291), (29, 21025, 21132), (29, 21866, 21973), (31, 11556, 11639), (31, 12493, 12600), (31, 13454, 13561), (31, 14415, 14522), (31, 15376, 15483), (31, 16337, 16444), (31, 17298, 17405), (31, 18259, 18366), (31, 19220, 19327), (31, 20181, 20288), (31, 21142, 21249), (31, 22103, 22210), (31, 23064, 23111), (37, 12321, 12428), (37, 13690, 13797), (37, 15059, 15166), (37, 16428, 16535), (37, 17797, 17904), (37, 19166, 19273), (37, 20535, 20642), (37, 21904, 22011), (41, 11767, 11874), (41, 13448, 13555), (41, 15129, 15236), (41, 16810, 16917), (41, 18491, 18598), (41, 20172, 20279), (41, 21853, 21960), (43, 12943, 13050), (43, 14792, 14899), (43, 16641, 16748), (43, 18490, 18597), (43, 20339, 20446), (43, 22188, 22295), (47, 13254, 13361), (47, 15463, 15570), (47, 17672, 17779), (47, 19881, 19988), (47, 22090, 22197), (53, 14045, 14152), (53, 16854, 16961), (53, 19663, 19770), (53, 22472, 22579), (59, 13924, 14031), (59, 17405, 17512), (59, 20886, 20993), (61, 14884, 14991), (61, 18605, 18712), (61, 22326, 22433), (67, 13467, 13574), (67, 17956, 18063), (67, 22445, 22552), (71, 15123, 15230), (71, 20164, 20271), (73, 15987, 16094), (73, 21316, 21423), (79, 12482, 12589), (79, 18723, 18830), (83, 13778, 13885), (83, 20667, 20774), (89, 15842, 15949), (97, 18818, 18925), (101, 20402, 20509), (103, 21218, 21325), (107, 11556, 11556), (107, 22898, 23005)]

def row108_layer000_block000 : List ColouredInterval :=
  [(2, 12288, 12395), (2, 12288, 12395), (2, 16384, 16491), (2, 20480, 20587), (2, 16384, 16491), (2, 16384, 16491), (5, 11875, 11982), (5, 12500, 12607), (5, 13125, 13232), (5, 13750, 13857), (5, 14375, 14482), (5, 15000, 15107), (5, 15625, 15732), (5, 16250, 16357), (5, 12500, 12607)]

def row108_layer000_block001 : List ColouredInterval :=
  [(5, 15625, 15732), (5, 18750, 18857), (5, 21875, 21982), (5, 15625, 15732), (7, 12005, 12112), (7, 14406, 14513), (7, 16807, 16914), (7, 19208, 19315), (7, 21609, 21716), (7, 16807, 16914), (11, 11979, 12086), (11, 13310, 13417), (11, 14641, 14748), (11, 15972, 16079), (11, 17303, 17410)]

def row108_layer000_block002 : List ColouredInterval :=
  [(11, 18634, 18741), (11, 19965, 20072), (11, 21296, 21403), (11, 22627, 22734), (11, 14641, 14748), (13, 13182, 13289), (13, 15379, 15486), (13, 17576, 17683), (13, 19773, 19880), (13, 21970, 22077), (17, 14739, 14846), (17, 19652, 19759), (19, 13718, 13825), (19, 20577, 20684), (23, 11638, 11745)]

def row108_layer000_block003 : List ColouredInterval :=
  [(23, 12167, 12274), (23, 12696, 12803), (23, 13225, 13332), (23, 13754, 13861), (23, 12167, 12274), (29, 11774, 11881), (29, 12615, 12722), (29, 13456, 13563), (29, 14297, 14404), (29, 15138, 15245), (29, 15979, 16086), (29, 16820, 16927), (29, 17661, 17768), (29, 18502, 18609), (29, 19343, 19450)]

def row108_layer000_block004 : List ColouredInterval :=
  [(29, 20184, 20291), (29, 21025, 21132), (29, 21866, 21973), (31, 11556, 11639), (31, 12493, 12600), (31, 13454, 13561), (31, 14415, 14522), (31, 15376, 15483), (31, 16337, 16444), (31, 17298, 17405), (31, 18259, 18366), (31, 19220, 19327), (31, 20181, 20288), (31, 21142, 21249), (31, 22103, 22210)]

def row108_layer000_block005 : List ColouredInterval :=
  [(31, 23064, 23111), (37, 12321, 12428), (37, 13690, 13797), (37, 15059, 15166), (37, 16428, 16535), (37, 17797, 17904), (37, 19166, 19273), (37, 20535, 20642), (37, 21904, 22011), (41, 11767, 11874), (41, 13448, 13555), (41, 15129, 15236), (41, 16810, 16917), (41, 18491, 18598), (41, 20172, 20279)]

def row108_layer000_block006 : List ColouredInterval :=
  [(41, 21853, 21960), (43, 12943, 13050), (43, 14792, 14899), (43, 16641, 16748), (43, 18490, 18597), (43, 20339, 20446), (43, 22188, 22295), (47, 13254, 13361), (47, 15463, 15570), (47, 17672, 17779), (47, 19881, 19988), (47, 22090, 22197), (53, 14045, 14152), (53, 16854, 16961), (53, 19663, 19770)]

def row108_layer000_block007 : List ColouredInterval :=
  [(53, 22472, 22579), (59, 13924, 14031), (59, 17405, 17512), (59, 20886, 20993), (61, 14884, 14991), (61, 18605, 18712), (61, 22326, 22433), (67, 13467, 13574), (67, 17956, 18063), (67, 22445, 22552), (71, 15123, 15230), (71, 20164, 20271), (73, 15987, 16094), (73, 21316, 21423), (79, 12482, 12589)]

def row108_layer000_block008 : List ColouredInterval :=
  [(79, 18723, 18830), (83, 13778, 13885), (83, 20667, 20774), (89, 15842, 15949), (97, 18818, 18925), (101, 20402, 20509), (103, 21218, 21325), (107, 11556, 11556), (107, 22898, 23005)]

def row108_layer000_chunks : List (List ColouredInterval) :=
  [row108_layer000_block000, row108_layer000_block001, row108_layer000_block002, row108_layer000_block003, row108_layer000_block004, row108_layer000_block005, row108_layer000_block006, row108_layer000_block007, row108_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_arithmetic : LayerArithmeticValid row108.height { lower := 11556, upper := 23112, M := 26 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_enumeration :
    activePowerIntervalList 108 26 11556 23112 = row108_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs000 :
    row108_layer000_block000.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs001 :
    row108_layer000_block001.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs002 :
    row108_layer000_block002.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs003 :
    row108_layer000_block003.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs004 :
    row108_layer000_block004.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs005 :
    row108_layer000_block005.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs006 :
    row108_layer000_block006.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row108_layer000_pairs007 :
    row108_layer000_block007.all (fun I => row108_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row108_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row108_layer000_pairs007
