import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row122_height : HeightCertificateDatum := { i := 122, r := 40, s := 86, n0Power10 := 8 }

def row122_goods : List GoodSegment := [
  { lower := 246, upper := 362, witness := RowWitness.topPrime 241 },
  { lower := 363, upper := 480, witness := RowWitness.topPrime 359 },
  { lower := 481, upper := 600, witness := RowWitness.topPrime 479 },
  { lower := 601, upper := 722, witness := RowWitness.topPrime 601 },
  { lower := 723, upper := 840, witness := RowWitness.topPrime 719 },
  { lower := 841, upper := 960, witness := RowWitness.topPrime 839 },
  { lower := 961, upper := 1074, witness := RowWitness.topPrime 953 },
  { lower := 1075, upper := 1190, witness := RowWitness.topPrime 1069 },
  { lower := 1191, upper := 1308, witness := RowWitness.topPrime 1187 },
  { lower := 1309, upper := 1428, witness := RowWitness.topPrime 1307 },
  { lower := 1429, upper := 1550, witness := RowWitness.topPrime 1429 },
  { lower := 1551, upper := 1670, witness := RowWitness.topPrime 1549 },
  { lower := 1671, upper := 1790, witness := RowWitness.topPrime 1669 },
  { lower := 1791, upper := 1910, witness := RowWitness.topPrime 1789 },
  { lower := 1911, upper := 2028, witness := RowWitness.topPrime 1907 },
  { lower := 2029, upper := 2150, witness := RowWitness.topPrime 2029 },
  { lower := 2151, upper := 2264, witness := RowWitness.topPrime 2143 },
  { lower := 2265, upper := 2372, witness := RowWitness.topPrime 2251 },
  { lower := 2373, upper := 2492, witness := RowWitness.topPrime 2371 },
  { lower := 2493, upper := 2598, witness := RowWitness.topPrime 2477 },
  { lower := 2599, upper := 2714, witness := RowWitness.topPrime 2593 },
  { lower := 2715, upper := 2834, witness := RowWitness.topPrime 2713 },
  { lower := 2835, upper := 2954, witness := RowWitness.topPrime 2833 },
  { lower := 2955, upper := 3074, witness := RowWitness.topPrime 2953 },
  { lower := 3075, upper := 3188, witness := RowWitness.topPrime 3067 },
  { lower := 3189, upper := 3308, witness := RowWitness.topPrime 3187 },
  { lower := 3309, upper := 3428, witness := RowWitness.topPrime 3307 },
  { lower := 3429, upper := 3534, witness := RowWitness.topPrime 3413 },
  { lower := 3535, upper := 3654, witness := RowWitness.topPrime 3533 },
  { lower := 3655, upper := 3764, witness := RowWitness.topPrime 3643 },
  { lower := 3765, upper := 3882, witness := RowWitness.topPrime 3761 },
  { lower := 3883, upper := 4002, witness := RowWitness.topPrime 3881 },
  { lower := 4003, upper := 4124, witness := RowWitness.topPrime 4003 },
  { lower := 4125, upper := 4232, witness := RowWitness.topPrime 4111 },
  { lower := 4233, upper := 4352, witness := RowWitness.topPrime 4231 },
  { lower := 4353, upper := 4470, witness := RowWitness.topPrime 4349 },
  { lower := 4471, upper := 4584, witness := RowWitness.topPrime 4463 },
  { lower := 4585, upper := 4704, witness := RowWitness.topPrime 4583 },
  { lower := 4705, upper := 4824, witness := RowWitness.topPrime 4703 },
  { lower := 4825, upper := 4938, witness := RowWitness.topPrime 4817 },
  { lower := 4939, upper := 5058, witness := RowWitness.topPrime 4937 },
  { lower := 5059, upper := 5180, witness := RowWitness.topPrime 5059 },
  { lower := 5181, upper := 5300, witness := RowWitness.topPrime 5179 },
  { lower := 5301, upper := 5418, witness := RowWitness.topPrime 5297 },
  { lower := 5419, upper := 5540, witness := RowWitness.topPrime 5419 },
  { lower := 5541, upper := 5652, witness := RowWitness.topPrime 5531 },
  { lower := 5653, upper := 5774, witness := RowWitness.topPrime 5653 },
  { lower := 5775, upper := 5870, witness := RowWitness.topPrime 5749 },
  { lower := 5871, upper := 5990, witness := RowWitness.topPrime 5869 },
  { lower := 5991, upper := 6108, witness := RowWitness.topPrime 5987 },
  { lower := 6109, upper := 6222, witness := RowWitness.topPrime 6101 },
  { lower := 6223, upper := 6342, witness := RowWitness.topPrime 6221 },
  { lower := 6343, upper := 6464, witness := RowWitness.topPrime 6343 },
  { lower := 6465, upper := 6572, witness := RowWitness.topPrime 6451 },
  { lower := 6573, upper := 6692, witness := RowWitness.topPrime 6571 },
  { lower := 6693, upper := 6812, witness := RowWitness.topPrime 6691 },
  { lower := 6813, upper := 6924, witness := RowWitness.topPrime 6803 },
  { lower := 6925, upper := 7038, witness := RowWitness.topPrime 6917 },
  { lower := 7039, upper := 7160, witness := RowWitness.topPrime 7039 },
  { lower := 7161, upper := 7280, witness := RowWitness.topPrime 7159 },
  { lower := 7281, upper := 7374, witness := RowWitness.topPrime 7253 },
  { lower := 7375, upper := 7490, witness := RowWitness.topPrime 7369 },
  { lower := 7491, upper := 7610, witness := RowWitness.topPrime 7489 },
  { lower := 7611, upper := 7728, witness := RowWitness.topPrime 7607 },
  { lower := 7729, upper := 7848, witness := RowWitness.topPrime 7727 },
  { lower := 7849, upper := 7962, witness := RowWitness.topPrime 7841 },
  { lower := 7963, upper := 8084, witness := RowWitness.topPrime 7963 },
  { lower := 8085, upper := 8202, witness := RowWitness.topPrime 8081 },
  { lower := 8203, upper := 8312, witness := RowWitness.topPrime 8191 },
  { lower := 8313, upper := 8432, witness := RowWitness.topPrime 8311 },
  { lower := 8433, upper := 8552, witness := RowWitness.topPrime 8431 },
  { lower := 8553, upper := 8664, witness := RowWitness.topPrime 8543 },
  { lower := 8665, upper := 8784, witness := RowWitness.topPrime 8663 },
  { lower := 8785, upper := 8904, witness := RowWitness.topPrime 8783 },
  { lower := 8905, upper := 9014, witness := RowWitness.topPrime 8893 },
  { lower := 9015, upper := 9134, witness := RowWitness.topPrime 9013 },
  { lower := 9135, upper := 9254, witness := RowWitness.topPrime 9133 },
  { lower := 9255, upper := 9362, witness := RowWitness.topPrime 9241 },
  { lower := 9363, upper := 9470, witness := RowWitness.topPrime 9349 },
  { lower := 9471, upper := 9588, witness := RowWitness.topPrime 9467 },
  { lower := 9589, upper := 9708, witness := RowWitness.topPrime 9587 },
  { lower := 9709, upper := 9818, witness := RowWitness.topPrime 9697 },
  { lower := 9819, upper := 9938, witness := RowWitness.topPrime 9817 },
  { lower := 9939, upper := 10052, witness := RowWitness.topPrime 9931 },
  { lower := 10053, upper := 10160, witness := RowWitness.topPrime 10039 },
  { lower := 10161, upper := 10280, witness := RowWitness.topPrime 10159 },
  { lower := 10281, upper := 10394, witness := RowWitness.topPrime 10273 },
  { lower := 10395, upper := 10512, witness := RowWitness.topPrime 10391 },
  { lower := 10513, upper := 10634, witness := RowWitness.topPrime 10513 },
  { lower := 10635, upper := 10752, witness := RowWitness.topPrime 10631 },
  { lower := 10753, upper := 10874, witness := RowWitness.topPrime 10753 },
  { lower := 10875, upper := 10988, witness := RowWitness.topPrime 10867 },
  { lower := 10989, upper := 11108, witness := RowWitness.topPrime 10987 },
  { lower := 11109, upper := 11214, witness := RowWitness.topPrime 11093 },
  { lower := 11215, upper := 11334, witness := RowWitness.topPrime 11213 },
  { lower := 11335, upper := 11450, witness := RowWitness.topPrime 11329 },
  { lower := 11451, upper := 11568, witness := RowWitness.topPrime 11447 },
  { lower := 11569, upper := 11672, witness := RowWitness.topPrime 11551 },
  { lower := 11673, upper := 11778, witness := RowWitness.topPrime 11657 },
  { lower := 11779, upper := 11900, witness := RowWitness.topPrime 11779 },
  { lower := 11901, upper := 12018, witness := RowWitness.topPrime 11897 },
  { lower := 12019, upper := 12132, witness := RowWitness.topPrime 12011 },
  { lower := 12133, upper := 12240, witness := RowWitness.topPrime 12119 },
  { lower := 12241, upper := 12362, witness := RowWitness.topPrime 12241 },
  { lower := 12363, upper := 12468, witness := RowWitness.topPrime 12347 },
  { lower := 12469, upper := 12578, witness := RowWitness.topPrime 12457 },
  { lower := 12579, upper := 12698, witness := RowWitness.topPrime 12577 },
  { lower := 12699, upper := 12818, witness := RowWitness.topPrime 12697 },
  { lower := 12819, upper := 12930, witness := RowWitness.topPrime 12809 },
  { lower := 12931, upper := 13044, witness := RowWitness.topPrime 12923 },
  { lower := 13045, upper := 13164, witness := RowWitness.topPrime 13043 },
  { lower := 13165, upper := 13284, witness := RowWitness.topPrime 13163 },
  { lower := 13285, upper := 13388, witness := RowWitness.topPrime 13267 },
  { lower := 13389, upper := 13502, witness := RowWitness.topPrime 13381 },
  { lower := 13503, upper := 13620, witness := RowWitness.topPrime 13499 },
  { lower := 13621, upper := 13740, witness := RowWitness.topPrime 13619 },
  { lower := 13741, upper := 13850, witness := RowWitness.topPrime 13729 },
  { lower := 13851, upper := 13962, witness := RowWitness.topPrime 13841 },
  { lower := 13963, upper := 14084, witness := RowWitness.topPrime 13963 },
  { lower := 14085, upper := 14204, witness := RowWitness.topPrime 14083 },
  { lower := 14205, upper := 14318, witness := RowWitness.topPrime 14197 },
  { lower := 14319, upper := 14424, witness := RowWitness.topPrime 14303 },
  { lower := 14425, upper := 14544, witness := RowWitness.topPrime 14423 },
  { lower := 14545, upper := 14664, witness := RowWitness.topPrime 14543 },
  { lower := 14665, upper := 14762, witness := RowWitness.topPrime 14657 },
  { lower := 14792, upper := 14860, witness := RowWitness.topPrime 14783 },
  { lower := 15123, upper := 15242, witness := RowWitness.topPrime 15121 },
  { lower := 15243, upper := 15250, witness := RowWitness.topPrime 15241 },
  { lower := 15376, upper := 15494, witness := RowWitness.topPrime 15373 },
  { lower := 15495, upper := 15500, witness := RowWitness.topPrime 15493 },
  { lower := 15979, upper := 16094, witness := RowWitness.topPrime 15973 },
  { lower := 16095, upper := 16100, witness := RowWitness.topPrime 16091 },
  { lower := 16384, upper := 16502, witness := RowWitness.topPrime 16381 },
  { lower := 16503, upper := 16505, witness := RowWitness.topPrime 16493 },
  { lower := 16810, upper := 16908, witness := RowWitness.topPrime 16787 },
  { lower := 16909, upper := 16941, witness := RowWitness.topPrime 16903 },
  { lower := 17303, upper := 17420, witness := RowWitness.topPrime 17299 },
  { lower := 17421, upper := 17424, witness := RowWitness.topPrime 17419 },
  { lower := 17496, upper := 17526, witness := RowWitness.topPrime 17491 },
  { lower := 17576, upper := 17617, witness := RowWitness.topPrime 17573 },
  { lower := 17672, upper := 17697, witness := RowWitness.topPrime 17669 },
  { lower := 18490, upper := 18602, witness := RowWitness.topPrime 18481 },
  { lower := 18603, upper := 18611, witness := RowWitness.topPrime 18593 },
  { lower := 18723, upper := 18840, witness := RowWitness.topPrime 18719 },
  { lower := 18841, upper := 18871, witness := RowWitness.topPrime 18839 },
  { lower := 19208, upper := 19328, witness := RowWitness.topPrime 19207 },
  { lower := 19329, upper := 19329, witness := RowWitness.topPrime 19319 },
  { lower := 19663, upper := 19782, witness := RowWitness.topPrime 19661 },
  { lower := 19783, upper := 19804, witness := RowWitness.topPrime 19777 },
  { lower := 19881, upper := 19894, witness := RowWitness.topPrime 19867 },
  { lower := 19965, upper := 20002, witness := RowWitness.topPrime 19963 },
  { lower := 20172, upper := 20282, witness := RowWitness.topPrime 20161 },
  { lower := 20283, upper := 20285, witness := RowWitness.topPrime 20269 },
  { lower := 20402, upper := 20460, witness := RowWitness.topPrime 20399 },
  { lower := 20480, upper := 20523, witness := RowWitness.topPrime 20479 },
  { lower := 20535, upper := 20654, witness := RowWitness.topPrime 20533 },
  { lower := 20655, upper := 20656, witness := RowWitness.topPrime 20641 },
  { lower := 20667, upper := 20698, witness := RowWitness.topPrime 20663 },
  { lower := 21296, upper := 21404, witness := RowWitness.topPrime 21283 },
  { lower := 21405, upper := 21417, witness := RowWitness.topPrime 21401 },
  { lower := 21870, upper := 21984, witness := RowWitness.topPrime 21863 },
  { lower := 21985, upper := 22025, witness := RowWitness.topPrime 21977 },
  { lower := 22090, upper := 22091, witness := RowWitness.topPrime 22079 },
  { lower := 22188, upper := 22211, witness := RowWitness.topPrime 22171 },
  { lower := 22472, upper := 22566, witness := RowWitness.topPrime 22469 },
  { lower := 23763, upper := 23882, witness := RowWitness.topPrime 23761 },
  { lower := 23883, upper := 23883, witness := RowWitness.topPrime 23879 },
  { lower := 24010, upper := 24128, witness := RowWitness.topPrime 24007 },
  { lower := 24129, upper := 24158, witness := RowWitness.topPrime 24121 },
  { lower := 24167, upper := 24178, witness := RowWitness.topPrime 24151 },
  { lower := 24334, upper := 24450, witness := RowWitness.topPrime 24329 },
  { lower := 24451, upper := 24488, witness := RowWitness.topPrime 24443 },
  { lower := 24576, upper := 24692, witness := RowWitness.topPrime 24571 },
  { lower := 24693, upper := 24697, witness := RowWitness.topPrime 24691 },
  { lower := 25000, upper := 25085, witness := RowWitness.topPrime 24989 },
  { lower := 25215, upper := 25310, witness := RowWitness.topPrime 25189 },
  { lower := 25311, upper := 25402, witness := RowWitness.topPrime 25309 },
  { lower := 26364, upper := 26365, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26485, witness := RowWitness.topPrime 26407 },
  { lower := 26508, upper := 26532, witness := RowWitness.topPrime 26501 },
  { lower := 26620, upper := 26629, witness := RowWitness.topPrime 26597 },
  { lower := 26645, upper := 26741, witness := RowWitness.topPrime 26641 },
  { lower := 26934, upper := 27017, witness := RowWitness.topPrime 26927 },
  { lower := 27436, upper := 27501, witness := RowWitness.topPrime 27431 },
  { lower := 27556, upper := 27557, witness := RowWitness.topPrime 27551 },
  { lower := 27848, upper := 27856, witness := RowWitness.topPrime 27847 },
  { lower := 28125, upper := 28211, witness := RowWitness.topPrime 28123 },
  { lower := 28227, upper := 28246, witness := RowWitness.topPrime 28219 },
  { lower := 28577, upper := 28694, witness := RowWitness.topPrime 28573 },
  { lower := 28695, upper := 28698, witness := RowWitness.topPrime 28687 },
  { lower := 28717, upper := 28793, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28838, witness := RowWitness.topPrime 28807 },
  { lower := 30618, upper := 30714, witness := RowWitness.topPrime 30593 },
  { lower := 30715, upper := 30724, witness := RowWitness.topPrime 30713 },
  { lower := 30926, upper := 31020, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31314, witness := RowWitness.topPrime 31193 },
  { lower := 31315, upper := 31371, witness := RowWitness.topPrime 31307 },
  { lower := 31423, upper := 31450, witness := RowWitness.topPrime 31397 },
  { lower := 32805, upper := 32889, witness := RowWitness.topPrime 32803 },
  { lower := 33708, upper := 33735, witness := RowWitness.topPrime 33703 },
  { lower := 34347, upper := 34458, witness := RowWitness.topPrime 34337 },
  { lower := 34459, upper := 34512, witness := RowWitness.topPrime 34457 },
  { lower := 36015, upper := 36033, witness := RowWitness.topPrime 36013 },
  { lower := 36517, upper := 36618, witness := RowWitness.topPrime 36497 },
  { lower := 36619, upper := 36622, witness := RowWitness.topPrime 36607 },
  { lower := 37500, upper := 37567, witness := RowWitness.topPrime 37493 },
  { lower := 38307, upper := 38412, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39444, witness := RowWitness.topPrime 39323 },
  { lower := 39445, upper := 39447, witness := RowWitness.topPrime 39443 },
  { lower := 40401, upper := 40449, witness := RowWitness.topPrime 40387 },
  { lower := 43750, upper := 43808, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45374, witness := RowWitness.topPrime 45361 },
  { lower := 47526, upper := 47642, witness := RowWitness.topPrime 47521 },
  { lower := 47643, upper := 47645, witness := RowWitness.topPrime 47639 },
  { lower := 48013, upper := 48082, witness := RowWitness.topPrime 47981 },
  { lower := 48734, upper := 48854, witness := RowWitness.topPrime 48733 },
  { lower := 48855, upper := 48855, witness := RowWitness.topPrime 48847 },
  { lower := 49152, upper := 49251, witness := RowWitness.topPrime 49139 },
  { lower := 50421, upper := 50531, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51126, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55562, witness := RowWitness.topPrime 55441 },
  { lower := 55563, upper := 55568, witness := RowWitness.topPrime 55547 },
  { lower := 57344, upper := 57366, witness := RowWitness.topPrime 57331 },
  { lower := 58619, upper := 58685, witness := RowWitness.topPrime 58613 },
  { lower := 59049, upper := 59077, witness := RowWitness.topPrime 59029 },
  { lower := 62500, upper := 62531, witness := RowWitness.topPrime 62497 },
  { lower := 63948, upper := 63966, witness := RowWitness.topPrime 63929 },
  { lower := 65610, upper := 65657, witness := RowWitness.topPrime 65609 },
  { lower := 68651, upper := 68760, witness := RowWitness.topPrime 68639 },
  { lower := 68761, upper := 68772, witness := RowWitness.topPrime 68749 },
  { lower := 68921, upper := 69011, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71408, witness := RowWitness.topPrime 71287 },
  { lower := 71409, upper := 71410, witness := RowWitness.topPrime 71399 },
  { lower := 73205, upper := 73288, witness := RowWitness.topPrime 73189 },
  { lower := 89383, upper := 89494, witness := RowWitness.topPrime 89381 },
  { lower := 95052, upper := 95148, witness := RowWitness.topPrime 95027 },
  { lower := 95149, upper := 95169, witness := RowWitness.topPrime 95143 },
  { lower := 98415, upper := 98425, witness := RowWitness.topPrime 98411 },
  { lower := 137842, upper := 137902, witness := RowWitness.topPrime 137831 },
  { lower := 146410, upper := 146455, witness := RowWitness.topPrime 146407 },
  { lower := 148955, upper := 148998, witness := RowWitness.topPrime 148949 }
]

def row122_layers : List CoverLayer := [
  { lower := 14762, upper := 29524, M := 20 },
  { lower := 29524, upper := 59048, M := 15 },
  { lower := 59048, upper := 118096, M := 12 },
  { lower := 118096, upper := 236192, M := 10 },
  { lower := 236192, upper := 472384, M := 8 },
  { lower := 472384, upper := 944768, M := 6 },
  { lower := 944768, upper := 1889536, M := 5 },
  { lower := 1889536, upper := 3779072, M := 4 },
  { lower := 3779072, upper := 7558144, M := 3 },
  { lower := 7558144, upper := 15116288, M := 3 },
  { lower := 15116288, upper := 30232576, M := 2 },
  { lower := 30232576, upper := 60465152, M := 2 },
  { lower := 60465152, upper := 100000000, M := 2 }
]

def row122 : FiniteCoverRow := {
  height := row122_height,
  goods := row122_goods,
  layers := row122_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good000_checked :
    goodSegmentCheck 122 40 86
      { lower := 246, upper := 362, witness := RowWitness.topPrime 241 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good001_checked :
    goodSegmentCheck 122 40 86
      { lower := 363, upper := 480, witness := RowWitness.topPrime 359 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good002_checked :
    goodSegmentCheck 122 40 86
      { lower := 481, upper := 600, witness := RowWitness.topPrime 479 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good003_checked :
    goodSegmentCheck 122 40 86
      { lower := 601, upper := 722, witness := RowWitness.topPrime 601 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good004_checked :
    goodSegmentCheck 122 40 86
      { lower := 723, upper := 840, witness := RowWitness.topPrime 719 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good005_checked :
    goodSegmentCheck 122 40 86
      { lower := 841, upper := 960, witness := RowWitness.topPrime 839 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good006_checked :
    goodSegmentCheck 122 40 86
      { lower := 961, upper := 1074, witness := RowWitness.topPrime 953 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good007_checked :
    goodSegmentCheck 122 40 86
      { lower := 1075, upper := 1190, witness := RowWitness.topPrime 1069 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good008_checked :
    goodSegmentCheck 122 40 86
      { lower := 1191, upper := 1308, witness := RowWitness.topPrime 1187 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good009_checked :
    goodSegmentCheck 122 40 86
      { lower := 1309, upper := 1428, witness := RowWitness.topPrime 1307 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good010_checked :
    goodSegmentCheck 122 40 86
      { lower := 1429, upper := 1550, witness := RowWitness.topPrime 1429 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good011_checked :
    goodSegmentCheck 122 40 86
      { lower := 1551, upper := 1670, witness := RowWitness.topPrime 1549 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good012_checked :
    goodSegmentCheck 122 40 86
      { lower := 1671, upper := 1790, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good013_checked :
    goodSegmentCheck 122 40 86
      { lower := 1791, upper := 1910, witness := RowWitness.topPrime 1789 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good014_checked :
    goodSegmentCheck 122 40 86
      { lower := 1911, upper := 2028, witness := RowWitness.topPrime 1907 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good015_checked :
    goodSegmentCheck 122 40 86
      { lower := 2029, upper := 2150, witness := RowWitness.topPrime 2029 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good016_checked :
    goodSegmentCheck 122 40 86
      { lower := 2151, upper := 2264, witness := RowWitness.topPrime 2143 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good017_checked :
    goodSegmentCheck 122 40 86
      { lower := 2265, upper := 2372, witness := RowWitness.topPrime 2251 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good018_checked :
    goodSegmentCheck 122 40 86
      { lower := 2373, upper := 2492, witness := RowWitness.topPrime 2371 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good019_checked :
    goodSegmentCheck 122 40 86
      { lower := 2493, upper := 2598, witness := RowWitness.topPrime 2477 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good020_checked :
    goodSegmentCheck 122 40 86
      { lower := 2599, upper := 2714, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good021_checked :
    goodSegmentCheck 122 40 86
      { lower := 2715, upper := 2834, witness := RowWitness.topPrime 2713 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good022_checked :
    goodSegmentCheck 122 40 86
      { lower := 2835, upper := 2954, witness := RowWitness.topPrime 2833 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good023_checked :
    goodSegmentCheck 122 40 86
      { lower := 2955, upper := 3074, witness := RowWitness.topPrime 2953 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good024_checked :
    goodSegmentCheck 122 40 86
      { lower := 3075, upper := 3188, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good025_checked :
    goodSegmentCheck 122 40 86
      { lower := 3189, upper := 3308, witness := RowWitness.topPrime 3187 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good026_checked :
    goodSegmentCheck 122 40 86
      { lower := 3309, upper := 3428, witness := RowWitness.topPrime 3307 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good027_checked :
    goodSegmentCheck 122 40 86
      { lower := 3429, upper := 3534, witness := RowWitness.topPrime 3413 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good028_checked :
    goodSegmentCheck 122 40 86
      { lower := 3535, upper := 3654, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good029_checked :
    goodSegmentCheck 122 40 86
      { lower := 3655, upper := 3764, witness := RowWitness.topPrime 3643 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good030_checked :
    goodSegmentCheck 122 40 86
      { lower := 3765, upper := 3882, witness := RowWitness.topPrime 3761 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good031_checked :
    goodSegmentCheck 122 40 86
      { lower := 3883, upper := 4002, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good032_checked :
    goodSegmentCheck 122 40 86
      { lower := 4003, upper := 4124, witness := RowWitness.topPrime 4003 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good033_checked :
    goodSegmentCheck 122 40 86
      { lower := 4125, upper := 4232, witness := RowWitness.topPrime 4111 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good034_checked :
    goodSegmentCheck 122 40 86
      { lower := 4233, upper := 4352, witness := RowWitness.topPrime 4231 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good035_checked :
    goodSegmentCheck 122 40 86
      { lower := 4353, upper := 4470, witness := RowWitness.topPrime 4349 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good036_checked :
    goodSegmentCheck 122 40 86
      { lower := 4471, upper := 4584, witness := RowWitness.topPrime 4463 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good037_checked :
    goodSegmentCheck 122 40 86
      { lower := 4585, upper := 4704, witness := RowWitness.topPrime 4583 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good038_checked :
    goodSegmentCheck 122 40 86
      { lower := 4705, upper := 4824, witness := RowWitness.topPrime 4703 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good039_checked :
    goodSegmentCheck 122 40 86
      { lower := 4825, upper := 4938, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good040_checked :
    goodSegmentCheck 122 40 86
      { lower := 4939, upper := 5058, witness := RowWitness.topPrime 4937 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good041_checked :
    goodSegmentCheck 122 40 86
      { lower := 5059, upper := 5180, witness := RowWitness.topPrime 5059 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good042_checked :
    goodSegmentCheck 122 40 86
      { lower := 5181, upper := 5300, witness := RowWitness.topPrime 5179 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good043_checked :
    goodSegmentCheck 122 40 86
      { lower := 5301, upper := 5418, witness := RowWitness.topPrime 5297 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good044_checked :
    goodSegmentCheck 122 40 86
      { lower := 5419, upper := 5540, witness := RowWitness.topPrime 5419 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good045_checked :
    goodSegmentCheck 122 40 86
      { lower := 5541, upper := 5652, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good046_checked :
    goodSegmentCheck 122 40 86
      { lower := 5653, upper := 5774, witness := RowWitness.topPrime 5653 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good047_checked :
    goodSegmentCheck 122 40 86
      { lower := 5775, upper := 5870, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good048_checked :
    goodSegmentCheck 122 40 86
      { lower := 5871, upper := 5990, witness := RowWitness.topPrime 5869 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good049_checked :
    goodSegmentCheck 122 40 86
      { lower := 5991, upper := 6108, witness := RowWitness.topPrime 5987 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good050_checked :
    goodSegmentCheck 122 40 86
      { lower := 6109, upper := 6222, witness := RowWitness.topPrime 6101 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good051_checked :
    goodSegmentCheck 122 40 86
      { lower := 6223, upper := 6342, witness := RowWitness.topPrime 6221 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good052_checked :
    goodSegmentCheck 122 40 86
      { lower := 6343, upper := 6464, witness := RowWitness.topPrime 6343 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good053_checked :
    goodSegmentCheck 122 40 86
      { lower := 6465, upper := 6572, witness := RowWitness.topPrime 6451 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good054_checked :
    goodSegmentCheck 122 40 86
      { lower := 6573, upper := 6692, witness := RowWitness.topPrime 6571 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good055_checked :
    goodSegmentCheck 122 40 86
      { lower := 6693, upper := 6812, witness := RowWitness.topPrime 6691 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good056_checked :
    goodSegmentCheck 122 40 86
      { lower := 6813, upper := 6924, witness := RowWitness.topPrime 6803 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good057_checked :
    goodSegmentCheck 122 40 86
      { lower := 6925, upper := 7038, witness := RowWitness.topPrime 6917 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good058_checked :
    goodSegmentCheck 122 40 86
      { lower := 7039, upper := 7160, witness := RowWitness.topPrime 7039 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good059_checked :
    goodSegmentCheck 122 40 86
      { lower := 7161, upper := 7280, witness := RowWitness.topPrime 7159 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good060_checked :
    goodSegmentCheck 122 40 86
      { lower := 7281, upper := 7374, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good061_checked :
    goodSegmentCheck 122 40 86
      { lower := 7375, upper := 7490, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good062_checked :
    goodSegmentCheck 122 40 86
      { lower := 7491, upper := 7610, witness := RowWitness.topPrime 7489 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good063_checked :
    goodSegmentCheck 122 40 86
      { lower := 7611, upper := 7728, witness := RowWitness.topPrime 7607 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good064_checked :
    goodSegmentCheck 122 40 86
      { lower := 7729, upper := 7848, witness := RowWitness.topPrime 7727 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good065_checked :
    goodSegmentCheck 122 40 86
      { lower := 7849, upper := 7962, witness := RowWitness.topPrime 7841 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good066_checked :
    goodSegmentCheck 122 40 86
      { lower := 7963, upper := 8084, witness := RowWitness.topPrime 7963 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good067_checked :
    goodSegmentCheck 122 40 86
      { lower := 8085, upper := 8202, witness := RowWitness.topPrime 8081 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good068_checked :
    goodSegmentCheck 122 40 86
      { lower := 8203, upper := 8312, witness := RowWitness.topPrime 8191 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good069_checked :
    goodSegmentCheck 122 40 86
      { lower := 8313, upper := 8432, witness := RowWitness.topPrime 8311 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good070_checked :
    goodSegmentCheck 122 40 86
      { lower := 8433, upper := 8552, witness := RowWitness.topPrime 8431 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good071_checked :
    goodSegmentCheck 122 40 86
      { lower := 8553, upper := 8664, witness := RowWitness.topPrime 8543 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good072_checked :
    goodSegmentCheck 122 40 86
      { lower := 8665, upper := 8784, witness := RowWitness.topPrime 8663 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good073_checked :
    goodSegmentCheck 122 40 86
      { lower := 8785, upper := 8904, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good074_checked :
    goodSegmentCheck 122 40 86
      { lower := 8905, upper := 9014, witness := RowWitness.topPrime 8893 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good075_checked :
    goodSegmentCheck 122 40 86
      { lower := 9015, upper := 9134, witness := RowWitness.topPrime 9013 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good076_checked :
    goodSegmentCheck 122 40 86
      { lower := 9135, upper := 9254, witness := RowWitness.topPrime 9133 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good077_checked :
    goodSegmentCheck 122 40 86
      { lower := 9255, upper := 9362, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good078_checked :
    goodSegmentCheck 122 40 86
      { lower := 9363, upper := 9470, witness := RowWitness.topPrime 9349 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good079_checked :
    goodSegmentCheck 122 40 86
      { lower := 9471, upper := 9588, witness := RowWitness.topPrime 9467 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good080_checked :
    goodSegmentCheck 122 40 86
      { lower := 9589, upper := 9708, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good081_checked :
    goodSegmentCheck 122 40 86
      { lower := 9709, upper := 9818, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good082_checked :
    goodSegmentCheck 122 40 86
      { lower := 9819, upper := 9938, witness := RowWitness.topPrime 9817 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good083_checked :
    goodSegmentCheck 122 40 86
      { lower := 9939, upper := 10052, witness := RowWitness.topPrime 9931 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good084_checked :
    goodSegmentCheck 122 40 86
      { lower := 10053, upper := 10160, witness := RowWitness.topPrime 10039 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good085_checked :
    goodSegmentCheck 122 40 86
      { lower := 10161, upper := 10280, witness := RowWitness.topPrime 10159 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good086_checked :
    goodSegmentCheck 122 40 86
      { lower := 10281, upper := 10394, witness := RowWitness.topPrime 10273 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good087_checked :
    goodSegmentCheck 122 40 86
      { lower := 10395, upper := 10512, witness := RowWitness.topPrime 10391 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good088_checked :
    goodSegmentCheck 122 40 86
      { lower := 10513, upper := 10634, witness := RowWitness.topPrime 10513 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good089_checked :
    goodSegmentCheck 122 40 86
      { lower := 10635, upper := 10752, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good090_checked :
    goodSegmentCheck 122 40 86
      { lower := 10753, upper := 10874, witness := RowWitness.topPrime 10753 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good091_checked :
    goodSegmentCheck 122 40 86
      { lower := 10875, upper := 10988, witness := RowWitness.topPrime 10867 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good092_checked :
    goodSegmentCheck 122 40 86
      { lower := 10989, upper := 11108, witness := RowWitness.topPrime 10987 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good093_checked :
    goodSegmentCheck 122 40 86
      { lower := 11109, upper := 11214, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good094_checked :
    goodSegmentCheck 122 40 86
      { lower := 11215, upper := 11334, witness := RowWitness.topPrime 11213 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good095_checked :
    goodSegmentCheck 122 40 86
      { lower := 11335, upper := 11450, witness := RowWitness.topPrime 11329 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good096_checked :
    goodSegmentCheck 122 40 86
      { lower := 11451, upper := 11568, witness := RowWitness.topPrime 11447 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good097_checked :
    goodSegmentCheck 122 40 86
      { lower := 11569, upper := 11672, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good098_checked :
    goodSegmentCheck 122 40 86
      { lower := 11673, upper := 11778, witness := RowWitness.topPrime 11657 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good099_checked :
    goodSegmentCheck 122 40 86
      { lower := 11779, upper := 11900, witness := RowWitness.topPrime 11779 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good100_checked :
    goodSegmentCheck 122 40 86
      { lower := 11901, upper := 12018, witness := RowWitness.topPrime 11897 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good101_checked :
    goodSegmentCheck 122 40 86
      { lower := 12019, upper := 12132, witness := RowWitness.topPrime 12011 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good102_checked :
    goodSegmentCheck 122 40 86
      { lower := 12133, upper := 12240, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good103_checked :
    goodSegmentCheck 122 40 86
      { lower := 12241, upper := 12362, witness := RowWitness.topPrime 12241 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good104_checked :
    goodSegmentCheck 122 40 86
      { lower := 12363, upper := 12468, witness := RowWitness.topPrime 12347 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good105_checked :
    goodSegmentCheck 122 40 86
      { lower := 12469, upper := 12578, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good106_checked :
    goodSegmentCheck 122 40 86
      { lower := 12579, upper := 12698, witness := RowWitness.topPrime 12577 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good107_checked :
    goodSegmentCheck 122 40 86
      { lower := 12699, upper := 12818, witness := RowWitness.topPrime 12697 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good108_checked :
    goodSegmentCheck 122 40 86
      { lower := 12819, upper := 12930, witness := RowWitness.topPrime 12809 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good109_checked :
    goodSegmentCheck 122 40 86
      { lower := 12931, upper := 13044, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good110_checked :
    goodSegmentCheck 122 40 86
      { lower := 13045, upper := 13164, witness := RowWitness.topPrime 13043 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good111_checked :
    goodSegmentCheck 122 40 86
      { lower := 13165, upper := 13284, witness := RowWitness.topPrime 13163 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good112_checked :
    goodSegmentCheck 122 40 86
      { lower := 13285, upper := 13388, witness := RowWitness.topPrime 13267 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good113_checked :
    goodSegmentCheck 122 40 86
      { lower := 13389, upper := 13502, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good114_checked :
    goodSegmentCheck 122 40 86
      { lower := 13503, upper := 13620, witness := RowWitness.topPrime 13499 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good115_checked :
    goodSegmentCheck 122 40 86
      { lower := 13621, upper := 13740, witness := RowWitness.topPrime 13619 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good116_checked :
    goodSegmentCheck 122 40 86
      { lower := 13741, upper := 13850, witness := RowWitness.topPrime 13729 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good117_checked :
    goodSegmentCheck 122 40 86
      { lower := 13851, upper := 13962, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good118_checked :
    goodSegmentCheck 122 40 86
      { lower := 13963, upper := 14084, witness := RowWitness.topPrime 13963 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good119_checked :
    goodSegmentCheck 122 40 86
      { lower := 14085, upper := 14204, witness := RowWitness.topPrime 14083 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good120_checked :
    goodSegmentCheck 122 40 86
      { lower := 14205, upper := 14318, witness := RowWitness.topPrime 14197 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good121_checked :
    goodSegmentCheck 122 40 86
      { lower := 14319, upper := 14424, witness := RowWitness.topPrime 14303 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good122_checked :
    goodSegmentCheck 122 40 86
      { lower := 14425, upper := 14544, witness := RowWitness.topPrime 14423 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good123_checked :
    goodSegmentCheck 122 40 86
      { lower := 14545, upper := 14664, witness := RowWitness.topPrime 14543 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good124_checked :
    goodSegmentCheck 122 40 86
      { lower := 14665, upper := 14762, witness := RowWitness.topPrime 14657 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good125_checked :
    goodSegmentCheck 122 40 86
      { lower := 14792, upper := 14860, witness := RowWitness.topPrime 14783 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good126_checked :
    goodSegmentCheck 122 40 86
      { lower := 15123, upper := 15242, witness := RowWitness.topPrime 15121 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good127_checked :
    goodSegmentCheck 122 40 86
      { lower := 15243, upper := 15250, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good128_checked :
    goodSegmentCheck 122 40 86
      { lower := 15376, upper := 15494, witness := RowWitness.topPrime 15373 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good129_checked :
    goodSegmentCheck 122 40 86
      { lower := 15495, upper := 15500, witness := RowWitness.topPrime 15493 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good130_checked :
    goodSegmentCheck 122 40 86
      { lower := 15979, upper := 16094, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good131_checked :
    goodSegmentCheck 122 40 86
      { lower := 16095, upper := 16100, witness := RowWitness.topPrime 16091 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good132_checked :
    goodSegmentCheck 122 40 86
      { lower := 16384, upper := 16502, witness := RowWitness.topPrime 16381 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good133_checked :
    goodSegmentCheck 122 40 86
      { lower := 16503, upper := 16505, witness := RowWitness.topPrime 16493 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good134_checked :
    goodSegmentCheck 122 40 86
      { lower := 16810, upper := 16908, witness := RowWitness.topPrime 16787 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good135_checked :
    goodSegmentCheck 122 40 86
      { lower := 16909, upper := 16941, witness := RowWitness.topPrime 16903 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good136_checked :
    goodSegmentCheck 122 40 86
      { lower := 17303, upper := 17420, witness := RowWitness.topPrime 17299 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good137_checked :
    goodSegmentCheck 122 40 86
      { lower := 17421, upper := 17424, witness := RowWitness.topPrime 17419 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good138_checked :
    goodSegmentCheck 122 40 86
      { lower := 17496, upper := 17526, witness := RowWitness.topPrime 17491 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good139_checked :
    goodSegmentCheck 122 40 86
      { lower := 17576, upper := 17617, witness := RowWitness.topPrime 17573 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good140_checked :
    goodSegmentCheck 122 40 86
      { lower := 17672, upper := 17697, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good141_checked :
    goodSegmentCheck 122 40 86
      { lower := 18490, upper := 18602, witness := RowWitness.topPrime 18481 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good142_checked :
    goodSegmentCheck 122 40 86
      { lower := 18603, upper := 18611, witness := RowWitness.topPrime 18593 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good143_checked :
    goodSegmentCheck 122 40 86
      { lower := 18723, upper := 18840, witness := RowWitness.topPrime 18719 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good144_checked :
    goodSegmentCheck 122 40 86
      { lower := 18841, upper := 18871, witness := RowWitness.topPrime 18839 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good145_checked :
    goodSegmentCheck 122 40 86
      { lower := 19208, upper := 19328, witness := RowWitness.topPrime 19207 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good146_checked :
    goodSegmentCheck 122 40 86
      { lower := 19329, upper := 19329, witness := RowWitness.topPrime 19319 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good147_checked :
    goodSegmentCheck 122 40 86
      { lower := 19663, upper := 19782, witness := RowWitness.topPrime 19661 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good148_checked :
    goodSegmentCheck 122 40 86
      { lower := 19783, upper := 19804, witness := RowWitness.topPrime 19777 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good149_checked :
    goodSegmentCheck 122 40 86
      { lower := 19881, upper := 19894, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good150_checked :
    goodSegmentCheck 122 40 86
      { lower := 19965, upper := 20002, witness := RowWitness.topPrime 19963 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good151_checked :
    goodSegmentCheck 122 40 86
      { lower := 20172, upper := 20282, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good152_checked :
    goodSegmentCheck 122 40 86
      { lower := 20283, upper := 20285, witness := RowWitness.topPrime 20269 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good153_checked :
    goodSegmentCheck 122 40 86
      { lower := 20402, upper := 20460, witness := RowWitness.topPrime 20399 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good154_checked :
    goodSegmentCheck 122 40 86
      { lower := 20480, upper := 20523, witness := RowWitness.topPrime 20479 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good155_checked :
    goodSegmentCheck 122 40 86
      { lower := 20535, upper := 20654, witness := RowWitness.topPrime 20533 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good156_checked :
    goodSegmentCheck 122 40 86
      { lower := 20655, upper := 20656, witness := RowWitness.topPrime 20641 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good157_checked :
    goodSegmentCheck 122 40 86
      { lower := 20667, upper := 20698, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good158_checked :
    goodSegmentCheck 122 40 86
      { lower := 21296, upper := 21404, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good159_checked :
    goodSegmentCheck 122 40 86
      { lower := 21405, upper := 21417, witness := RowWitness.topPrime 21401 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good160_checked :
    goodSegmentCheck 122 40 86
      { lower := 21870, upper := 21984, witness := RowWitness.topPrime 21863 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good161_checked :
    goodSegmentCheck 122 40 86
      { lower := 21985, upper := 22025, witness := RowWitness.topPrime 21977 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good162_checked :
    goodSegmentCheck 122 40 86
      { lower := 22090, upper := 22091, witness := RowWitness.topPrime 22079 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good163_checked :
    goodSegmentCheck 122 40 86
      { lower := 22188, upper := 22211, witness := RowWitness.topPrime 22171 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good164_checked :
    goodSegmentCheck 122 40 86
      { lower := 22472, upper := 22566, witness := RowWitness.topPrime 22469 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good165_checked :
    goodSegmentCheck 122 40 86
      { lower := 23763, upper := 23882, witness := RowWitness.topPrime 23761 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good166_checked :
    goodSegmentCheck 122 40 86
      { lower := 23883, upper := 23883, witness := RowWitness.topPrime 23879 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good167_checked :
    goodSegmentCheck 122 40 86
      { lower := 24010, upper := 24128, witness := RowWitness.topPrime 24007 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good168_checked :
    goodSegmentCheck 122 40 86
      { lower := 24129, upper := 24158, witness := RowWitness.topPrime 24121 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good169_checked :
    goodSegmentCheck 122 40 86
      { lower := 24167, upper := 24178, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good170_checked :
    goodSegmentCheck 122 40 86
      { lower := 24334, upper := 24450, witness := RowWitness.topPrime 24329 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good171_checked :
    goodSegmentCheck 122 40 86
      { lower := 24451, upper := 24488, witness := RowWitness.topPrime 24443 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good172_checked :
    goodSegmentCheck 122 40 86
      { lower := 24576, upper := 24692, witness := RowWitness.topPrime 24571 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good173_checked :
    goodSegmentCheck 122 40 86
      { lower := 24693, upper := 24697, witness := RowWitness.topPrime 24691 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good174_checked :
    goodSegmentCheck 122 40 86
      { lower := 25000, upper := 25085, witness := RowWitness.topPrime 24989 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good175_checked :
    goodSegmentCheck 122 40 86
      { lower := 25215, upper := 25310, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good176_checked :
    goodSegmentCheck 122 40 86
      { lower := 25311, upper := 25402, witness := RowWitness.topPrime 25309 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good177_checked :
    goodSegmentCheck 122 40 86
      { lower := 26364, upper := 26365, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good178_checked :
    goodSegmentCheck 122 40 86
      { lower := 26411, upper := 26485, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good179_checked :
    goodSegmentCheck 122 40 86
      { lower := 26508, upper := 26532, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good180_checked :
    goodSegmentCheck 122 40 86
      { lower := 26620, upper := 26629, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good181_checked :
    goodSegmentCheck 122 40 86
      { lower := 26645, upper := 26741, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good182_checked :
    goodSegmentCheck 122 40 86
      { lower := 26934, upper := 27017, witness := RowWitness.topPrime 26927 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good183_checked :
    goodSegmentCheck 122 40 86
      { lower := 27436, upper := 27501, witness := RowWitness.topPrime 27431 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good184_checked :
    goodSegmentCheck 122 40 86
      { lower := 27556, upper := 27557, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good185_checked :
    goodSegmentCheck 122 40 86
      { lower := 27848, upper := 27856, witness := RowWitness.topPrime 27847 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good186_checked :
    goodSegmentCheck 122 40 86
      { lower := 28125, upper := 28211, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good187_checked :
    goodSegmentCheck 122 40 86
      { lower := 28227, upper := 28246, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good188_checked :
    goodSegmentCheck 122 40 86
      { lower := 28577, upper := 28694, witness := RowWitness.topPrime 28573 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good189_checked :
    goodSegmentCheck 122 40 86
      { lower := 28695, upper := 28698, witness := RowWitness.topPrime 28687 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good190_checked :
    goodSegmentCheck 122 40 86
      { lower := 28717, upper := 28793, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good191_checked :
    goodSegmentCheck 122 40 86
      { lower := 28812, upper := 28838, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good192_checked :
    goodSegmentCheck 122 40 86
      { lower := 30618, upper := 30714, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good193_checked :
    goodSegmentCheck 122 40 86
      { lower := 30715, upper := 30724, witness := RowWitness.topPrime 30713 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good194_checked :
    goodSegmentCheck 122 40 86
      { lower := 30926, upper := 31020, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good195_checked :
    goodSegmentCheck 122 40 86
      { lower := 31213, upper := 31314, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good196_checked :
    goodSegmentCheck 122 40 86
      { lower := 31315, upper := 31371, witness := RowWitness.topPrime 31307 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good197_checked :
    goodSegmentCheck 122 40 86
      { lower := 31423, upper := 31450, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good198_checked :
    goodSegmentCheck 122 40 86
      { lower := 32805, upper := 32889, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good199_checked :
    goodSegmentCheck 122 40 86
      { lower := 33708, upper := 33735, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good200_checked :
    goodSegmentCheck 122 40 86
      { lower := 34347, upper := 34458, witness := RowWitness.topPrime 34337 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good201_checked :
    goodSegmentCheck 122 40 86
      { lower := 34459, upper := 34512, witness := RowWitness.topPrime 34457 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good202_checked :
    goodSegmentCheck 122 40 86
      { lower := 36015, upper := 36033, witness := RowWitness.topPrime 36013 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good203_checked :
    goodSegmentCheck 122 40 86
      { lower := 36517, upper := 36618, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good204_checked :
    goodSegmentCheck 122 40 86
      { lower := 36619, upper := 36622, witness := RowWitness.topPrime 36607 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good205_checked :
    goodSegmentCheck 122 40 86
      { lower := 37500, upper := 37567, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good206_checked :
    goodSegmentCheck 122 40 86
      { lower := 38307, upper := 38412, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good207_checked :
    goodSegmentCheck 122 40 86
      { lower := 39326, upper := 39444, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good208_checked :
    goodSegmentCheck 122 40 86
      { lower := 39445, upper := 39447, witness := RowWitness.topPrime 39443 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good209_checked :
    goodSegmentCheck 122 40 86
      { lower := 40401, upper := 40449, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good210_checked :
    goodSegmentCheck 122 40 86
      { lower := 43750, upper := 43808, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good211_checked :
    goodSegmentCheck 122 40 86
      { lower := 45369, upper := 45374, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good212_checked :
    goodSegmentCheck 122 40 86
      { lower := 47526, upper := 47642, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good213_checked :
    goodSegmentCheck 122 40 86
      { lower := 47643, upper := 47645, witness := RowWitness.topPrime 47639 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good214_checked :
    goodSegmentCheck 122 40 86
      { lower := 48013, upper := 48082, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good215_checked :
    goodSegmentCheck 122 40 86
      { lower := 48734, upper := 48854, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good216_checked :
    goodSegmentCheck 122 40 86
      { lower := 48855, upper := 48855, witness := RowWitness.topPrime 48847 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good217_checked :
    goodSegmentCheck 122 40 86
      { lower := 49152, upper := 49251, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good218_checked :
    goodSegmentCheck 122 40 86
      { lower := 50421, upper := 50531, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good219_checked :
    goodSegmentCheck 122 40 86
      { lower := 51076, upper := 51126, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good220_checked :
    goodSegmentCheck 122 40 86
      { lower := 55451, upper := 55562, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good221_checked :
    goodSegmentCheck 122 40 86
      { lower := 55563, upper := 55568, witness := RowWitness.topPrime 55547 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good222_checked :
    goodSegmentCheck 122 40 86
      { lower := 57344, upper := 57366, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good223_checked :
    goodSegmentCheck 122 40 86
      { lower := 58619, upper := 58685, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good224_checked :
    goodSegmentCheck 122 40 86
      { lower := 59049, upper := 59077, witness := RowWitness.topPrime 59029 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good225_checked :
    goodSegmentCheck 122 40 86
      { lower := 62500, upper := 62531, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good226_checked :
    goodSegmentCheck 122 40 86
      { lower := 63948, upper := 63966, witness := RowWitness.topPrime 63929 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good227_checked :
    goodSegmentCheck 122 40 86
      { lower := 65610, upper := 65657, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good228_checked :
    goodSegmentCheck 122 40 86
      { lower := 68651, upper := 68760, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good229_checked :
    goodSegmentCheck 122 40 86
      { lower := 68761, upper := 68772, witness := RowWitness.topPrime 68749 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good230_checked :
    goodSegmentCheck 122 40 86
      { lower := 68921, upper := 69011, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good231_checked :
    goodSegmentCheck 122 40 86
      { lower := 71289, upper := 71408, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good232_checked :
    goodSegmentCheck 122 40 86
      { lower := 71409, upper := 71410, witness := RowWitness.topPrime 71399 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good233_checked :
    goodSegmentCheck 122 40 86
      { lower := 73205, upper := 73288, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good234_checked :
    goodSegmentCheck 122 40 86
      { lower := 89383, upper := 89494, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good235_checked :
    goodSegmentCheck 122 40 86
      { lower := 95052, upper := 95148, witness := RowWitness.topPrime 95027 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good236_checked :
    goodSegmentCheck 122 40 86
      { lower := 95149, upper := 95169, witness := RowWitness.topPrime 95143 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good237_checked :
    goodSegmentCheck 122 40 86
      { lower := 98415, upper := 98425, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good238_checked :
    goodSegmentCheck 122 40 86
      { lower := 137842, upper := 137902, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row122_good239_checked :
    goodSegmentCheck 122 40 86
      { lower := 146410, upper := 146455, witness := RowWitness.topPrime 146407 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good238_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good239_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_good240_checked :
    goodSegmentCheck 122 40 86
      { lower := 148955, upper := 148998, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 122) (r := 40) (s := 86) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_good240_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_goods_checked :
    row122.goods.all (goodSegmentCheck row122.height.i row122.height.r row122.height.s) = true := by
  change row122_goods.all (goodSegmentCheck 122 40 86) = true
  simp only [row122_goods, List.all_cons, List.all_nil,
    row122_good000_checked,
    row122_good001_checked,
    row122_good002_checked,
    row122_good003_checked,
    row122_good004_checked,
    row122_good005_checked,
    row122_good006_checked,
    row122_good007_checked,
    row122_good008_checked,
    row122_good009_checked,
    row122_good010_checked,
    row122_good011_checked,
    row122_good012_checked,
    row122_good013_checked,
    row122_good014_checked,
    row122_good015_checked,
    row122_good016_checked,
    row122_good017_checked,
    row122_good018_checked,
    row122_good019_checked,
    row122_good020_checked,
    row122_good021_checked,
    row122_good022_checked,
    row122_good023_checked,
    row122_good024_checked,
    row122_good025_checked,
    row122_good026_checked,
    row122_good027_checked,
    row122_good028_checked,
    row122_good029_checked,
    row122_good030_checked,
    row122_good031_checked,
    row122_good032_checked,
    row122_good033_checked,
    row122_good034_checked,
    row122_good035_checked,
    row122_good036_checked,
    row122_good037_checked,
    row122_good038_checked,
    row122_good039_checked,
    row122_good040_checked,
    row122_good041_checked,
    row122_good042_checked,
    row122_good043_checked,
    row122_good044_checked,
    row122_good045_checked,
    row122_good046_checked,
    row122_good047_checked,
    row122_good048_checked,
    row122_good049_checked,
    row122_good050_checked,
    row122_good051_checked,
    row122_good052_checked,
    row122_good053_checked,
    row122_good054_checked,
    row122_good055_checked,
    row122_good056_checked,
    row122_good057_checked,
    row122_good058_checked,
    row122_good059_checked,
    row122_good060_checked,
    row122_good061_checked,
    row122_good062_checked,
    row122_good063_checked,
    row122_good064_checked,
    row122_good065_checked,
    row122_good066_checked,
    row122_good067_checked,
    row122_good068_checked,
    row122_good069_checked,
    row122_good070_checked,
    row122_good071_checked,
    row122_good072_checked,
    row122_good073_checked,
    row122_good074_checked,
    row122_good075_checked,
    row122_good076_checked,
    row122_good077_checked,
    row122_good078_checked,
    row122_good079_checked,
    row122_good080_checked,
    row122_good081_checked,
    row122_good082_checked,
    row122_good083_checked,
    row122_good084_checked,
    row122_good085_checked,
    row122_good086_checked,
    row122_good087_checked,
    row122_good088_checked,
    row122_good089_checked,
    row122_good090_checked,
    row122_good091_checked,
    row122_good092_checked,
    row122_good093_checked,
    row122_good094_checked,
    row122_good095_checked,
    row122_good096_checked,
    row122_good097_checked,
    row122_good098_checked,
    row122_good099_checked,
    row122_good100_checked,
    row122_good101_checked,
    row122_good102_checked,
    row122_good103_checked,
    row122_good104_checked,
    row122_good105_checked,
    row122_good106_checked,
    row122_good107_checked,
    row122_good108_checked,
    row122_good109_checked,
    row122_good110_checked,
    row122_good111_checked,
    row122_good112_checked,
    row122_good113_checked,
    row122_good114_checked,
    row122_good115_checked,
    row122_good116_checked,
    row122_good117_checked,
    row122_good118_checked,
    row122_good119_checked,
    row122_good120_checked,
    row122_good121_checked,
    row122_good122_checked,
    row122_good123_checked,
    row122_good124_checked,
    row122_good125_checked,
    row122_good126_checked,
    row122_good127_checked,
    row122_good128_checked,
    row122_good129_checked,
    row122_good130_checked,
    row122_good131_checked,
    row122_good132_checked,
    row122_good133_checked,
    row122_good134_checked,
    row122_good135_checked,
    row122_good136_checked,
    row122_good137_checked,
    row122_good138_checked,
    row122_good139_checked,
    row122_good140_checked,
    row122_good141_checked,
    row122_good142_checked,
    row122_good143_checked,
    row122_good144_checked,
    row122_good145_checked,
    row122_good146_checked,
    row122_good147_checked,
    row122_good148_checked,
    row122_good149_checked,
    row122_good150_checked,
    row122_good151_checked,
    row122_good152_checked,
    row122_good153_checked,
    row122_good154_checked,
    row122_good155_checked,
    row122_good156_checked,
    row122_good157_checked,
    row122_good158_checked,
    row122_good159_checked,
    row122_good160_checked,
    row122_good161_checked,
    row122_good162_checked,
    row122_good163_checked,
    row122_good164_checked,
    row122_good165_checked,
    row122_good166_checked,
    row122_good167_checked,
    row122_good168_checked,
    row122_good169_checked,
    row122_good170_checked,
    row122_good171_checked,
    row122_good172_checked,
    row122_good173_checked,
    row122_good174_checked,
    row122_good175_checked,
    row122_good176_checked,
    row122_good177_checked,
    row122_good178_checked,
    row122_good179_checked,
    row122_good180_checked,
    row122_good181_checked,
    row122_good182_checked,
    row122_good183_checked,
    row122_good184_checked,
    row122_good185_checked,
    row122_good186_checked,
    row122_good187_checked,
    row122_good188_checked,
    row122_good189_checked,
    row122_good190_checked,
    row122_good191_checked,
    row122_good192_checked,
    row122_good193_checked,
    row122_good194_checked,
    row122_good195_checked,
    row122_good196_checked,
    row122_good197_checked,
    row122_good198_checked,
    row122_good199_checked,
    row122_good200_checked,
    row122_good201_checked,
    row122_good202_checked,
    row122_good203_checked,
    row122_good204_checked,
    row122_good205_checked,
    row122_good206_checked,
    row122_good207_checked,
    row122_good208_checked,
    row122_good209_checked,
    row122_good210_checked,
    row122_good211_checked,
    row122_good212_checked,
    row122_good213_checked,
    row122_good214_checked,
    row122_good215_checked,
    row122_good216_checked,
    row122_good217_checked,
    row122_good218_checked,
    row122_good219_checked,
    row122_good220_checked,
    row122_good221_checked,
    row122_good222_checked,
    row122_good223_checked,
    row122_good224_checked,
    row122_good225_checked,
    row122_good226_checked,
    row122_good227_checked,
    row122_good228_checked,
    row122_good229_checked,
    row122_good230_checked,
    row122_good231_checked,
    row122_good232_checked,
    row122_good233_checked,
    row122_good234_checked,
    row122_good235_checked,
    row122_good236_checked,
    row122_good237_checked,
    row122_good238_checked,
    row122_good239_checked,
    row122_good240_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_registered :
    decide (row122.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row122_small_checked :
    coverCheck (2 * row122.height.i + 2) (row122.height.i * (row122.height.i - 1) - 1)
      (row122.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row122_layerCover_checked :
    coverCheck (row122.height.i * (row122.height.i - 1)) (row122.height.n0 - 1)
      (row122.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row122_bounds : List NatInterval :=
  [(246, 362), (363, 480), (481, 600), (601, 722), (723, 840), (841, 960), (961, 1074), (1075, 1190), (1191, 1308), (1309, 1428), (1429, 1550), (1551, 1670), (1671, 1790), (1791, 1910), (1911, 2028), (2029, 2150), (2151, 2264), (2265, 2372), (2373, 2492), (2493, 2598), (2599, 2714), (2715, 2834), (2835, 2954), (2955, 3074), (3075, 3188), (3189, 3308), (3309, 3428), (3429, 3534), (3535, 3654), (3655, 3764), (3765, 3882), (3883, 4002), (4003, 4124), (4125, 4232), (4233, 4352), (4353, 4470), (4471, 4584), (4585, 4704), (4705, 4824), (4825, 4938), (4939, 5058), (5059, 5180), (5181, 5300), (5301, 5418), (5419, 5540), (5541, 5652), (5653, 5774), (5775, 5870), (5871, 5990), (5991, 6108), (6109, 6222), (6223, 6342), (6343, 6464), (6465, 6572), (6573, 6692), (6693, 6812), (6813, 6924), (6925, 7038), (7039, 7160), (7161, 7280), (7281, 7374), (7375, 7490), (7491, 7610), (7611, 7728), (7729, 7848), (7849, 7962), (7963, 8084), (8085, 8202), (8203, 8312), (8313, 8432), (8433, 8552), (8553, 8664), (8665, 8784), (8785, 8904), (8905, 9014), (9015, 9134), (9135, 9254), (9255, 9362), (9363, 9470), (9471, 9588), (9589, 9708), (9709, 9818), (9819, 9938), (9939, 10052), (10053, 10160), (10161, 10280), (10281, 10394), (10395, 10512), (10513, 10634), (10635, 10752), (10753, 10874), (10875, 10988), (10989, 11108), (11109, 11214), (11215, 11334), (11335, 11450), (11451, 11568), (11569, 11672), (11673, 11778), (11779, 11900), (11901, 12018), (12019, 12132), (12133, 12240), (12241, 12362), (12363, 12468), (12469, 12578), (12579, 12698), (12699, 12818), (12819, 12930), (12931, 13044), (13045, 13164), (13165, 13284), (13285, 13388), (13389, 13502), (13503, 13620), (13621, 13740), (13741, 13850), (13851, 13962), (13963, 14084), (14085, 14204), (14205, 14318), (14319, 14424), (14425, 14544), (14545, 14664), (14665, 14762), (14792, 14860), (15123, 15242), (15243, 15250), (15376, 15494), (15495, 15500), (15979, 16094), (16095, 16100), (16384, 16502), (16503, 16505), (16810, 16908), (16909, 16941), (17303, 17420), (17421, 17424), (17496, 17526), (17576, 17617), (17672, 17697), (18490, 18602), (18603, 18611), (18723, 18840), (18841, 18871), (19208, 19328), (19329, 19329), (19663, 19782), (19783, 19804), (19881, 19894), (19965, 20002), (20172, 20282), (20283, 20285), (20402, 20460), (20480, 20523), (20535, 20654), (20655, 20656), (20667, 20698), (21296, 21404), (21405, 21417), (21870, 21984), (21985, 22025), (22090, 22091), (22188, 22211), (22472, 22566), (23763, 23882), (23883, 23883), (24010, 24128), (24129, 24158), (24167, 24178), (24334, 24450), (24451, 24488), (24576, 24692), (24693, 24697), (25000, 25085), (25215, 25310), (25311, 25402), (26364, 26365), (26411, 26485), (26508, 26532), (26620, 26629), (26645, 26741), (26934, 27017), (27436, 27501), (27556, 27557), (27848, 27856), (28125, 28211), (28227, 28246), (28577, 28694), (28695, 28698), (28717, 28793), (28812, 28838), (30618, 30714), (30715, 30724), (30926, 31020), (31213, 31314), (31315, 31371), (31423, 31450), (32805, 32889), (33708, 33735), (34347, 34458), (34459, 34512), (36015, 36033), (36517, 36618), (36619, 36622), (37500, 37567), (38307, 38412), (39326, 39444), (39445, 39447), (40401, 40449), (43750, 43808), (45369, 45374), (47526, 47642), (47643, 47645), (48013, 48082), (48734, 48854), (48855, 48855), (49152, 49251), (50421, 50531), (51076, 51126), (55451, 55562), (55563, 55568), (57344, 57366), (58619, 58685), (59049, 59077), (62500, 62531), (63948, 63966), (65610, 65657), (68651, 68760), (68761, 68772), (68921, 69011), (71289, 71408), (71409, 71410), (73205, 73288), (89383, 89494), (95052, 95148), (95149, 95169), (98415, 98425), (137842, 137902), (146410, 146455), (148955, 148998)]

theorem row122_bounds_eq : row122.goods.map goodSegmentBounds = row122_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row122_layer000_intervals : List ColouredInterval :=
  [(2, 16384, 16505), (2, 18432, 18553), (2, 20480, 20601), (2, 16384, 16505), (2, 20480, 20601), (2, 24576, 24697), (2, 28672, 28793), (2, 16384, 16505), (2, 24576, 24697), (2, 16384, 16505), (3, 15309, 15430), (3, 17496, 17617), (3, 19683, 19804), (3, 21870, 21991), (3, 24057, 24178), (3, 26244, 26365), (3, 28431, 28552), (3, 19683, 19804), (3, 26244, 26365), (3, 19683, 19804), (5, 15625, 15746), (5, 18750, 18871), (5, 21875, 21996), (5, 25000, 25121), (5, 28125, 28246), (5, 15625, 15746), (7, 16807, 16928), (7, 19208, 19329), (7, 21609, 21730), (7, 24010, 24131), (7, 26411, 26532), (7, 28812, 28933), (7, 16807, 16928), (11, 14762, 14762), (11, 15972, 16093), (11, 17303, 17424), (11, 18634, 18755), (11, 19965, 20086), (11, 21296, 21417), (11, 22627, 22748), (11, 23958, 24079), (11, 25289, 25410), (11, 26620, 26741), (11, 14762, 14762), (11, 29282, 29403), (13, 15379, 15500), (13, 17576, 17697), (13, 19773, 19894), (13, 21970, 22091), (13, 24167, 24288), (13, 26364, 26485), (13, 28561, 28682), (13, 28561, 28682), (17, 14762, 14860), (17, 19652, 19773), (17, 24565, 24686), (17, 29478, 29523), (19, 20577, 20698), (19, 27436, 27557), (23, 24334, 24455), (29, 15138, 15259), (29, 15979, 16100), (29, 16820, 16941), (29, 24389, 24510), (31, 15376, 15497), (31, 16337, 16458), (31, 17298, 17419), (31, 18259, 18380), (31, 19220, 19341), (37, 15059, 15180), (37, 16428, 16549), (37, 17797, 17918), (37, 19166, 19287), (37, 20535, 20656), (37, 21904, 22025), (37, 23273, 23394), (37, 24642, 24763), (37, 26011, 26132), (37, 27380, 27501), (41, 15129, 15250), (41, 16810, 16931), (41, 18491, 18612), (41, 20172, 20293), (41, 21853, 21974), (41, 23534, 23655), (41, 25215, 25336), (41, 26896, 27017), (41, 28577, 28698), (43, 14792, 14913), (43, 16641, 16762), (43, 18490, 18611), (43, 20339, 20460), (43, 22188, 22309), (43, 24037, 24158), (43, 25886, 26007), (43, 27735, 27856), (47, 15463, 15584), (47, 17672, 17793), (47, 19881, 20002), (47, 22090, 22211), (47, 24299, 24420), (47, 26508, 26629), (47, 28717, 28838), (53, 16854, 16975), (53, 19663, 19784), (53, 22472, 22593), (53, 25281, 25402), (53, 28090, 28211), (59, 17405, 17526), (59, 20886, 21007), (59, 24367, 24488), (59, 27848, 27969), (67, 17956, 18077), (67, 22445, 22566), (67, 26934, 27055), (71, 15123, 15244), (71, 20164, 20285), (71, 25205, 25326), (73, 15987, 16108), (73, 21316, 21437), (73, 26645, 26766), (79, 18723, 18844), (79, 24964, 25085), (83, 20667, 20788), (83, 27556, 27677), (89, 15842, 15963), (89, 23763, 23884), (97, 18818, 18939), (97, 28227, 28348), (101, 20402, 20523), (103, 21218, 21339), (107, 22898, 23019), (109, 23762, 23883), (113, 25538, 25659)]

def row122_layer000_block000 : List ColouredInterval :=
  [(2, 16384, 16505), (2, 18432, 18553), (2, 20480, 20601), (2, 16384, 16505), (2, 20480, 20601), (2, 24576, 24697), (2, 28672, 28793), (2, 16384, 16505), (2, 24576, 24697), (2, 16384, 16505), (3, 15309, 15430), (3, 17496, 17617), (3, 19683, 19804), (3, 21870, 21991), (3, 24057, 24178)]

def row122_layer000_block001 : List ColouredInterval :=
  [(3, 26244, 26365), (3, 28431, 28552), (3, 19683, 19804), (3, 26244, 26365), (3, 19683, 19804), (5, 15625, 15746), (5, 18750, 18871), (5, 21875, 21996), (5, 25000, 25121), (5, 28125, 28246), (5, 15625, 15746), (7, 16807, 16928), (7, 19208, 19329), (7, 21609, 21730), (7, 24010, 24131)]

def row122_layer000_block002 : List ColouredInterval :=
  [(7, 26411, 26532), (7, 28812, 28933), (7, 16807, 16928), (11, 14762, 14762), (11, 15972, 16093), (11, 17303, 17424), (11, 18634, 18755), (11, 19965, 20086), (11, 21296, 21417), (11, 22627, 22748), (11, 23958, 24079), (11, 25289, 25410), (11, 26620, 26741), (11, 14762, 14762), (11, 29282, 29403)]

def row122_layer000_block003 : List ColouredInterval :=
  [(13, 15379, 15500), (13, 17576, 17697), (13, 19773, 19894), (13, 21970, 22091), (13, 24167, 24288), (13, 26364, 26485), (13, 28561, 28682), (13, 28561, 28682), (17, 14762, 14860), (17, 19652, 19773), (17, 24565, 24686), (17, 29478, 29523), (19, 20577, 20698), (19, 27436, 27557), (23, 24334, 24455)]

def row122_layer000_block004 : List ColouredInterval :=
  [(29, 15138, 15259), (29, 15979, 16100), (29, 16820, 16941), (29, 24389, 24510), (31, 15376, 15497), (31, 16337, 16458), (31, 17298, 17419), (31, 18259, 18380), (31, 19220, 19341), (37, 15059, 15180), (37, 16428, 16549), (37, 17797, 17918), (37, 19166, 19287), (37, 20535, 20656), (37, 21904, 22025)]

def row122_layer000_block005 : List ColouredInterval :=
  [(37, 23273, 23394), (37, 24642, 24763), (37, 26011, 26132), (37, 27380, 27501), (41, 15129, 15250), (41, 16810, 16931), (41, 18491, 18612), (41, 20172, 20293), (41, 21853, 21974), (41, 23534, 23655), (41, 25215, 25336), (41, 26896, 27017), (41, 28577, 28698), (43, 14792, 14913), (43, 16641, 16762)]

def row122_layer000_block006 : List ColouredInterval :=
  [(43, 18490, 18611), (43, 20339, 20460), (43, 22188, 22309), (43, 24037, 24158), (43, 25886, 26007), (43, 27735, 27856), (47, 15463, 15584), (47, 17672, 17793), (47, 19881, 20002), (47, 22090, 22211), (47, 24299, 24420), (47, 26508, 26629), (47, 28717, 28838), (53, 16854, 16975), (53, 19663, 19784)]

def row122_layer000_block007 : List ColouredInterval :=
  [(53, 22472, 22593), (53, 25281, 25402), (53, 28090, 28211), (59, 17405, 17526), (59, 20886, 21007), (59, 24367, 24488), (59, 27848, 27969), (67, 17956, 18077), (67, 22445, 22566), (67, 26934, 27055), (71, 15123, 15244), (71, 20164, 20285), (71, 25205, 25326), (73, 15987, 16108), (73, 21316, 21437)]

def row122_layer000_block008 : List ColouredInterval :=
  [(73, 26645, 26766), (79, 18723, 18844), (79, 24964, 25085), (83, 20667, 20788), (83, 27556, 27677), (89, 15842, 15963), (89, 23763, 23884), (97, 18818, 18939), (97, 28227, 28348), (101, 20402, 20523), (103, 21218, 21339), (107, 22898, 23019), (109, 23762, 23883), (113, 25538, 25659)]

def row122_layer000_chunks : List (List ColouredInterval) :=
  [row122_layer000_block000, row122_layer000_block001, row122_layer000_block002, row122_layer000_block003, row122_layer000_block004, row122_layer000_block005, row122_layer000_block006, row122_layer000_block007, row122_layer000_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_arithmetic : LayerArithmeticValid row122.height { lower := 14762, upper := 29524, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_enumeration :
    activePowerIntervalList 122 20 14762 29524 = row122_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs000 :
    row122_layer000_block000.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs001 :
    row122_layer000_block001.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs002 :
    row122_layer000_block002.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs003 :
    row122_layer000_block003.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs004 :
    row122_layer000_block004.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs005 :
    row122_layer000_block005.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs006 :
    row122_layer000_block006.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs007 :
    row122_layer000_block007.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row122_layer000_pairs008 :
    row122_layer000_block008.all (fun I => row122_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row122_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row122_layer000_pairs008
