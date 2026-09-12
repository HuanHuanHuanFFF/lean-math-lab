import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row160_height : HeightCertificateDatum := { i := 160, r := 53, s := 113, n0Power10 := 8 }

def row160_goods : List GoodSegment := [
  { lower := 322, upper := 476, witness := RowWitness.topPrime 317 },
  { lower := 477, upper := 626, witness := RowWitness.topPrime 467 },
  { lower := 627, upper := 778, witness := RowWitness.topPrime 619 },
  { lower := 779, upper := 932, witness := RowWitness.topPrime 773 },
  { lower := 933, upper := 1088, witness := RowWitness.topPrime 929 },
  { lower := 1089, upper := 1246, witness := RowWitness.topPrime 1087 },
  { lower := 1247, upper := 1396, witness := RowWitness.topPrime 1237 },
  { lower := 1397, upper := 1540, witness := RowWitness.topPrime 1381 },
  { lower := 1541, upper := 1690, witness := RowWitness.topPrime 1531 },
  { lower := 1691, upper := 1828, witness := RowWitness.topPrime 1669 },
  { lower := 1829, upper := 1982, witness := RowWitness.topPrime 1823 },
  { lower := 1983, upper := 2138, witness := RowWitness.topPrime 1979 },
  { lower := 2139, upper := 2296, witness := RowWitness.topPrime 2137 },
  { lower := 2297, upper := 2456, witness := RowWitness.topPrime 2297 },
  { lower := 2457, upper := 2606, witness := RowWitness.topPrime 2447 },
  { lower := 2607, upper := 2752, witness := RowWitness.topPrime 2593 },
  { lower := 2753, upper := 2912, witness := RowWitness.topPrime 2753 },
  { lower := 2913, upper := 3068, witness := RowWitness.topPrime 2909 },
  { lower := 3069, upper := 3226, witness := RowWitness.topPrime 3067 },
  { lower := 3227, upper := 3380, witness := RowWitness.topPrime 3221 },
  { lower := 3381, upper := 3532, witness := RowWitness.topPrime 3373 },
  { lower := 3533, upper := 3692, witness := RowWitness.topPrime 3533 },
  { lower := 3693, upper := 3850, witness := RowWitness.topPrime 3691 },
  { lower := 3851, upper := 4010, witness := RowWitness.topPrime 3851 },
  { lower := 4011, upper := 4166, witness := RowWitness.topPrime 4007 },
  { lower := 4167, upper := 4318, witness := RowWitness.topPrime 4159 },
  { lower := 4319, upper := 4456, witness := RowWitness.topPrime 4297 },
  { lower := 4457, upper := 4616, witness := RowWitness.topPrime 4457 },
  { lower := 4617, upper := 4762, witness := RowWitness.topPrime 4603 },
  { lower := 4763, upper := 4918, witness := RowWitness.topPrime 4759 },
  { lower := 4919, upper := 5078, witness := RowWitness.topPrime 4919 },
  { lower := 5079, upper := 5236, witness := RowWitness.topPrime 5077 },
  { lower := 5237, upper := 5396, witness := RowWitness.topPrime 5237 },
  { lower := 5397, upper := 5552, witness := RowWitness.topPrime 5393 },
  { lower := 5553, upper := 5690, witness := RowWitness.topPrime 5531 },
  { lower := 5691, upper := 5848, witness := RowWitness.topPrime 5689 },
  { lower := 5849, upper := 6008, witness := RowWitness.topPrime 5849 },
  { lower := 6009, upper := 6166, witness := RowWitness.topPrime 6007 },
  { lower := 6167, upper := 6322, witness := RowWitness.topPrime 6163 },
  { lower := 6323, upper := 6482, witness := RowWitness.topPrime 6323 },
  { lower := 6483, upper := 6640, witness := RowWitness.topPrime 6481 },
  { lower := 6641, upper := 6796, witness := RowWitness.topPrime 6637 },
  { lower := 6797, upper := 6952, witness := RowWitness.topPrime 6793 },
  { lower := 6953, upper := 7108, witness := RowWitness.topPrime 6949 },
  { lower := 7109, upper := 7268, witness := RowWitness.topPrime 7109 },
  { lower := 7269, upper := 7412, witness := RowWitness.topPrime 7253 },
  { lower := 7413, upper := 7570, witness := RowWitness.topPrime 7411 },
  { lower := 7571, upper := 7720, witness := RowWitness.topPrime 7561 },
  { lower := 7721, upper := 7876, witness := RowWitness.topPrime 7717 },
  { lower := 7877, upper := 8036, witness := RowWitness.topPrime 7877 },
  { lower := 8037, upper := 8176, witness := RowWitness.topPrime 8017 },
  { lower := 8177, upper := 8330, witness := RowWitness.topPrime 8171 },
  { lower := 8331, upper := 8488, witness := RowWitness.topPrime 8329 },
  { lower := 8489, upper := 8626, witness := RowWitness.topPrime 8467 },
  { lower := 8627, upper := 8786, witness := RowWitness.topPrime 8627 },
  { lower := 8787, upper := 8942, witness := RowWitness.topPrime 8783 },
  { lower := 8943, upper := 9100, witness := RowWitness.topPrime 8941 },
  { lower := 9101, upper := 9250, witness := RowWitness.topPrime 9091 },
  { lower := 9251, upper := 9400, witness := RowWitness.topPrime 9241 },
  { lower := 9401, upper := 9556, witness := RowWitness.topPrime 9397 },
  { lower := 9557, upper := 9710, witness := RowWitness.topPrime 9551 },
  { lower := 9711, upper := 9856, witness := RowWitness.topPrime 9697 },
  { lower := 9857, upper := 10016, witness := RowWitness.topPrime 9857 },
  { lower := 10017, upper := 10168, witness := RowWitness.topPrime 10009 },
  { lower := 10169, upper := 10328, witness := RowWitness.topPrime 10169 },
  { lower := 10329, upper := 10480, witness := RowWitness.topPrime 10321 },
  { lower := 10481, upper := 10636, witness := RowWitness.topPrime 10477 },
  { lower := 10637, upper := 10790, witness := RowWitness.topPrime 10631 },
  { lower := 10791, upper := 10948, witness := RowWitness.topPrime 10789 },
  { lower := 10949, upper := 11108, witness := RowWitness.topPrime 10949 },
  { lower := 11109, upper := 11252, witness := RowWitness.topPrime 11093 },
  { lower := 11253, upper := 11410, witness := RowWitness.topPrime 11251 },
  { lower := 11411, upper := 11570, witness := RowWitness.topPrime 11411 },
  { lower := 11571, upper := 11710, witness := RowWitness.topPrime 11551 },
  { lower := 11711, upper := 11860, witness := RowWitness.topPrime 11701 },
  { lower := 11861, upper := 11998, witness := RowWitness.topPrime 11839 },
  { lower := 11999, upper := 12146, witness := RowWitness.topPrime 11987 },
  { lower := 12147, upper := 12302, witness := RowWitness.topPrime 12143 },
  { lower := 12303, upper := 12460, witness := RowWitness.topPrime 12301 },
  { lower := 12461, upper := 12616, witness := RowWitness.topPrime 12457 },
  { lower := 12617, upper := 12772, witness := RowWitness.topPrime 12613 },
  { lower := 12773, upper := 12922, witness := RowWitness.topPrime 12763 },
  { lower := 12923, upper := 13082, witness := RowWitness.topPrime 12923 },
  { lower := 13083, upper := 13222, witness := RowWitness.topPrime 13063 },
  { lower := 13223, upper := 13378, witness := RowWitness.topPrime 13219 },
  { lower := 13379, upper := 13526, witness := RowWitness.topPrime 13367 },
  { lower := 13527, upper := 13682, witness := RowWitness.topPrime 13523 },
  { lower := 13683, upper := 13840, witness := RowWitness.topPrime 13681 },
  { lower := 13841, upper := 14000, witness := RowWitness.topPrime 13841 },
  { lower := 14001, upper := 14158, witness := RowWitness.topPrime 13999 },
  { lower := 14159, upper := 14318, witness := RowWitness.topPrime 14159 },
  { lower := 14319, upper := 14462, witness := RowWitness.topPrime 14303 },
  { lower := 14463, upper := 14620, witness := RowWitness.topPrime 14461 },
  { lower := 14621, upper := 14780, witness := RowWitness.topPrime 14621 },
  { lower := 14781, upper := 14938, witness := RowWitness.topPrime 14779 },
  { lower := 14939, upper := 15098, witness := RowWitness.topPrime 14939 },
  { lower := 15099, upper := 15250, witness := RowWitness.topPrime 15091 },
  { lower := 15251, upper := 15400, witness := RowWitness.topPrime 15241 },
  { lower := 15401, upper := 15560, witness := RowWitness.topPrime 15401 },
  { lower := 15561, upper := 15718, witness := RowWitness.topPrime 15559 },
  { lower := 15719, upper := 15842, witness := RowWitness.topPrime 15683 },
  { lower := 15843, upper := 15982, witness := RowWitness.topPrime 15823 },
  { lower := 15983, upper := 16132, witness := RowWitness.topPrime 15973 },
  { lower := 16133, upper := 16286, witness := RowWitness.topPrime 16127 },
  { lower := 16287, upper := 16432, witness := RowWitness.topPrime 16273 },
  { lower := 16433, upper := 16592, witness := RowWitness.topPrime 16433 },
  { lower := 16593, upper := 16732, witness := RowWitness.topPrime 16573 },
  { lower := 16733, upper := 16888, witness := RowWitness.topPrime 16729 },
  { lower := 16889, upper := 17048, witness := RowWitness.topPrime 16889 },
  { lower := 17049, upper := 17206, witness := RowWitness.topPrime 17047 },
  { lower := 17207, upper := 17366, witness := RowWitness.topPrime 17207 },
  { lower := 17367, upper := 17518, witness := RowWitness.topPrime 17359 },
  { lower := 17519, upper := 17678, witness := RowWitness.topPrime 17519 },
  { lower := 17679, upper := 17828, witness := RowWitness.topPrime 17669 },
  { lower := 17829, upper := 17986, witness := RowWitness.topPrime 17827 },
  { lower := 17987, upper := 18146, witness := RowWitness.topPrime 17987 },
  { lower := 18147, upper := 18302, witness := RowWitness.topPrime 18143 },
  { lower := 18303, upper := 18460, witness := RowWitness.topPrime 18301 },
  { lower := 18461, upper := 18620, witness := RowWitness.topPrime 18461 },
  { lower := 18621, upper := 18776, witness := RowWitness.topPrime 18617 },
  { lower := 18777, upper := 18932, witness := RowWitness.topPrime 18773 },
  { lower := 18933, upper := 19078, witness := RowWitness.topPrime 18919 },
  { lower := 19079, upper := 19238, witness := RowWitness.topPrime 19079 },
  { lower := 19239, upper := 19396, witness := RowWitness.topPrime 19237 },
  { lower := 19397, upper := 19550, witness := RowWitness.topPrime 19391 },
  { lower := 19551, upper := 19702, witness := RowWitness.topPrime 19543 },
  { lower := 19703, upper := 19858, witness := RowWitness.topPrime 19699 },
  { lower := 19859, upper := 20012, witness := RowWitness.topPrime 19853 },
  { lower := 20013, upper := 20170, witness := RowWitness.topPrime 20011 },
  { lower := 20171, upper := 20320, witness := RowWitness.topPrime 20161 },
  { lower := 20321, upper := 20456, witness := RowWitness.topPrime 20297 },
  { lower := 20457, upper := 20602, witness := RowWitness.topPrime 20443 },
  { lower := 20603, upper := 20758, witness := RowWitness.topPrime 20599 },
  { lower := 20759, upper := 20918, witness := RowWitness.topPrime 20759 },
  { lower := 20919, upper := 21062, witness := RowWitness.topPrime 20903 },
  { lower := 21063, upper := 21220, witness := RowWitness.topPrime 21061 },
  { lower := 21221, upper := 21380, witness := RowWitness.topPrime 21221 },
  { lower := 21381, upper := 21538, witness := RowWitness.topPrime 21379 },
  { lower := 21539, upper := 21688, witness := RowWitness.topPrime 21529 },
  { lower := 21689, upper := 21842, witness := RowWitness.topPrime 21683 },
  { lower := 21843, upper := 22000, witness := RowWitness.topPrime 21841 },
  { lower := 22001, upper := 22156, witness := RowWitness.topPrime 21997 },
  { lower := 22157, upper := 22316, witness := RowWitness.topPrime 22157 },
  { lower := 22317, upper := 22466, witness := RowWitness.topPrime 22307 },
  { lower := 22467, upper := 22612, witness := RowWitness.topPrime 22453 },
  { lower := 22613, upper := 22772, witness := RowWitness.topPrime 22613 },
  { lower := 22773, upper := 22928, witness := RowWitness.topPrime 22769 },
  { lower := 22929, upper := 23080, witness := RowWitness.topPrime 22921 },
  { lower := 23081, upper := 23240, witness := RowWitness.topPrime 23081 },
  { lower := 23241, upper := 23386, witness := RowWitness.topPrime 23227 },
  { lower := 23387, upper := 23530, witness := RowWitness.topPrime 23371 },
  { lower := 23531, upper := 23690, witness := RowWitness.topPrime 23531 },
  { lower := 23691, upper := 23848, witness := RowWitness.topPrime 23689 },
  { lower := 23849, upper := 23992, witness := RowWitness.topPrime 23833 },
  { lower := 23993, upper := 24152, witness := RowWitness.topPrime 23993 },
  { lower := 24153, upper := 24310, witness := RowWitness.topPrime 24151 },
  { lower := 24311, upper := 24440, witness := RowWitness.topPrime 24281 },
  { lower := 24441, upper := 24598, witness := RowWitness.topPrime 24439 },
  { lower := 24599, upper := 24752, witness := RowWitness.topPrime 24593 },
  { lower := 24753, upper := 24908, witness := RowWitness.topPrime 24749 },
  { lower := 24909, upper := 25066, witness := RowWitness.topPrime 24907 },
  { lower := 25067, upper := 25216, witness := RowWitness.topPrime 25057 },
  { lower := 25217, upper := 25348, witness := RowWitness.topPrime 25189 },
  { lower := 25349, upper := 25439, witness := RowWitness.topPrime 25349 },
  { lower := 26364, upper := 26403, witness := RowWitness.topPrime 26357 },
  { lower := 26411, upper := 26566, witness := RowWitness.topPrime 26407 },
  { lower := 26567, upper := 26570, witness := RowWitness.topPrime 26561 },
  { lower := 26645, upper := 26667, witness := RowWitness.topPrime 26641 },
  { lower := 27556, upper := 27595, witness := RowWitness.topPrime 27551 },
  { lower := 28227, upper := 28249, witness := RowWitness.topPrime 28219 },
  { lower := 28561, upper := 28590, witness := RowWitness.topPrime 28559 },
  { lower := 28717, upper := 28720, witness := RowWitness.topPrime 28711 },
  { lower := 28812, upper := 28876, witness := RowWitness.topPrime 28807 },
  { lower := 29791, upper := 29927, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30752, witness := RowWitness.topPrime 30593 },
  { lower := 30753, upper := 30777, witness := RowWitness.topPrime 30727 },
  { lower := 30899, upper := 30917, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31058, witness := RowWitness.topPrime 30911 },
  { lower := 31213, upper := 31352, witness := RowWitness.topPrime 31193 },
  { lower := 31353, upper := 31409, witness := RowWitness.topPrime 31337 },
  { lower := 31423, upper := 31488, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31843, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31986, witness := RowWitness.topPrime 31973 },
  { lower := 33614, upper := 33648, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33773, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34478, witness := RowWitness.topPrime 34319 },
  { lower := 34479, upper := 34550, witness := RowWitness.topPrime 34471 },
  { lower := 36517, upper := 36656, witness := RowWitness.topPrime 36497 },
  { lower := 36657, upper := 36660, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37369, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37462, witness := RowWitness.topPrime 37441 },
  { lower := 37538, upper := 37605, witness := RowWitness.topPrime 37537 },
  { lower := 37636, upper := 37697, witness := RowWitness.topPrime 37633 },
  { lower := 38307, upper := 38450, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39482, witness := RowWitness.topPrime 39323 },
  { lower := 39483, upper := 39485, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40487, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 40963, witness := RowWitness.topPrime 40927 },
  { lower := 45369, upper := 45412, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45955, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47680, witness := RowWitness.topPrime 47521 },
  { lower := 47681, upper := 47683, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48120, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48382, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48532, witness := RowWitness.topPrime 48383 },
  { lower := 48734, upper := 48892, witness := RowWitness.topPrime 48733 },
  { lower := 48893, upper := 48893, witness := RowWitness.topPrime 48889 },
  { lower := 49379, upper := 49457, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50569, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51164, witness := RowWitness.topPrime 51071 },
  { lower := 55451, upper := 55600, witness := RowWitness.topPrime 55441 },
  { lower := 55601, upper := 55606, witness := RowWitness.topPrime 55589 },
  { lower := 56307, upper := 56328, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56466, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57281, witness := RowWitness.topPrime 57241 },
  { lower := 58619, upper := 58723, witness := RowWitness.topPrime 58613 },
  { lower := 68644, upper := 68798, witness := RowWitness.topPrime 68639 },
  { lower := 68799, upper := 68810, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69049, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71446, witness := RowWitness.topPrime 71287 },
  { lower := 71447, upper := 71448, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73326, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85842, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89532, witness := RowWitness.topPrime 89381 },
  { lower := 137842, upper := 137940, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149036, witness := RowWitness.topPrime 148949 }
]

def row160_layers : List CoverLayer := [
  { lower := 25440, upper := 50880, M := 14 },
  { lower := 50880, upper := 101760, M := 11 },
  { lower := 101760, upper := 203520, M := 8 },
  { lower := 203520, upper := 407040, M := 6 },
  { lower := 407040, upper := 814080, M := 5 },
  { lower := 814080, upper := 1628160, M := 4 },
  { lower := 1628160, upper := 3256320, M := 3 },
  { lower := 3256320, upper := 6512640, M := 2 },
  { lower := 6512640, upper := 13025280, M := 2 },
  { lower := 13025280, upper := 26050560, M := 1 },
  { lower := 26050560, upper := 52101120, M := 1 },
  { lower := 52101120, upper := 100000000, M := 1 }
]

def row160 : FiniteCoverRow := {
  height := row160_height,
  goods := row160_goods,
  layers := row160_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good000_checked :
    goodSegmentCheck 160 53 113
      { lower := 322, upper := 476, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good001_checked :
    goodSegmentCheck 160 53 113
      { lower := 477, upper := 626, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good002_checked :
    goodSegmentCheck 160 53 113
      { lower := 627, upper := 778, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good003_checked :
    goodSegmentCheck 160 53 113
      { lower := 779, upper := 932, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good004_checked :
    goodSegmentCheck 160 53 113
      { lower := 933, upper := 1088, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good005_checked :
    goodSegmentCheck 160 53 113
      { lower := 1089, upper := 1246, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good006_checked :
    goodSegmentCheck 160 53 113
      { lower := 1247, upper := 1396, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good007_checked :
    goodSegmentCheck 160 53 113
      { lower := 1397, upper := 1540, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good008_checked :
    goodSegmentCheck 160 53 113
      { lower := 1541, upper := 1690, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good009_checked :
    goodSegmentCheck 160 53 113
      { lower := 1691, upper := 1828, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good010_checked :
    goodSegmentCheck 160 53 113
      { lower := 1829, upper := 1982, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good011_checked :
    goodSegmentCheck 160 53 113
      { lower := 1983, upper := 2138, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good012_checked :
    goodSegmentCheck 160 53 113
      { lower := 2139, upper := 2296, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good013_checked :
    goodSegmentCheck 160 53 113
      { lower := 2297, upper := 2456, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good014_checked :
    goodSegmentCheck 160 53 113
      { lower := 2457, upper := 2606, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good015_checked :
    goodSegmentCheck 160 53 113
      { lower := 2607, upper := 2752, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good016_checked :
    goodSegmentCheck 160 53 113
      { lower := 2753, upper := 2912, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good017_checked :
    goodSegmentCheck 160 53 113
      { lower := 2913, upper := 3068, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good018_checked :
    goodSegmentCheck 160 53 113
      { lower := 3069, upper := 3226, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good019_checked :
    goodSegmentCheck 160 53 113
      { lower := 3227, upper := 3380, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good020_checked :
    goodSegmentCheck 160 53 113
      { lower := 3381, upper := 3532, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good021_checked :
    goodSegmentCheck 160 53 113
      { lower := 3533, upper := 3692, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good022_checked :
    goodSegmentCheck 160 53 113
      { lower := 3693, upper := 3850, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good023_checked :
    goodSegmentCheck 160 53 113
      { lower := 3851, upper := 4010, witness := RowWitness.topPrime 3851 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good024_checked :
    goodSegmentCheck 160 53 113
      { lower := 4011, upper := 4166, witness := RowWitness.topPrime 4007 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good025_checked :
    goodSegmentCheck 160 53 113
      { lower := 4167, upper := 4318, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good026_checked :
    goodSegmentCheck 160 53 113
      { lower := 4319, upper := 4456, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good027_checked :
    goodSegmentCheck 160 53 113
      { lower := 4457, upper := 4616, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good028_checked :
    goodSegmentCheck 160 53 113
      { lower := 4617, upper := 4762, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good029_checked :
    goodSegmentCheck 160 53 113
      { lower := 4763, upper := 4918, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good030_checked :
    goodSegmentCheck 160 53 113
      { lower := 4919, upper := 5078, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good031_checked :
    goodSegmentCheck 160 53 113
      { lower := 5079, upper := 5236, witness := RowWitness.topPrime 5077 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good032_checked :
    goodSegmentCheck 160 53 113
      { lower := 5237, upper := 5396, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good033_checked :
    goodSegmentCheck 160 53 113
      { lower := 5397, upper := 5552, witness := RowWitness.topPrime 5393 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good034_checked :
    goodSegmentCheck 160 53 113
      { lower := 5553, upper := 5690, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good035_checked :
    goodSegmentCheck 160 53 113
      { lower := 5691, upper := 5848, witness := RowWitness.topPrime 5689 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good036_checked :
    goodSegmentCheck 160 53 113
      { lower := 5849, upper := 6008, witness := RowWitness.topPrime 5849 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good037_checked :
    goodSegmentCheck 160 53 113
      { lower := 6009, upper := 6166, witness := RowWitness.topPrime 6007 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good038_checked :
    goodSegmentCheck 160 53 113
      { lower := 6167, upper := 6322, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good039_checked :
    goodSegmentCheck 160 53 113
      { lower := 6323, upper := 6482, witness := RowWitness.topPrime 6323 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good040_checked :
    goodSegmentCheck 160 53 113
      { lower := 6483, upper := 6640, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good041_checked :
    goodSegmentCheck 160 53 113
      { lower := 6641, upper := 6796, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good042_checked :
    goodSegmentCheck 160 53 113
      { lower := 6797, upper := 6952, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good043_checked :
    goodSegmentCheck 160 53 113
      { lower := 6953, upper := 7108, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good044_checked :
    goodSegmentCheck 160 53 113
      { lower := 7109, upper := 7268, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good045_checked :
    goodSegmentCheck 160 53 113
      { lower := 7269, upper := 7412, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good046_checked :
    goodSegmentCheck 160 53 113
      { lower := 7413, upper := 7570, witness := RowWitness.topPrime 7411 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good047_checked :
    goodSegmentCheck 160 53 113
      { lower := 7571, upper := 7720, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good048_checked :
    goodSegmentCheck 160 53 113
      { lower := 7721, upper := 7876, witness := RowWitness.topPrime 7717 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good049_checked :
    goodSegmentCheck 160 53 113
      { lower := 7877, upper := 8036, witness := RowWitness.topPrime 7877 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good050_checked :
    goodSegmentCheck 160 53 113
      { lower := 8037, upper := 8176, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good051_checked :
    goodSegmentCheck 160 53 113
      { lower := 8177, upper := 8330, witness := RowWitness.topPrime 8171 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good052_checked :
    goodSegmentCheck 160 53 113
      { lower := 8331, upper := 8488, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good053_checked :
    goodSegmentCheck 160 53 113
      { lower := 8489, upper := 8626, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good054_checked :
    goodSegmentCheck 160 53 113
      { lower := 8627, upper := 8786, witness := RowWitness.topPrime 8627 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good055_checked :
    goodSegmentCheck 160 53 113
      { lower := 8787, upper := 8942, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good056_checked :
    goodSegmentCheck 160 53 113
      { lower := 8943, upper := 9100, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good057_checked :
    goodSegmentCheck 160 53 113
      { lower := 9101, upper := 9250, witness := RowWitness.topPrime 9091 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good058_checked :
    goodSegmentCheck 160 53 113
      { lower := 9251, upper := 9400, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good059_checked :
    goodSegmentCheck 160 53 113
      { lower := 9401, upper := 9556, witness := RowWitness.topPrime 9397 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good060_checked :
    goodSegmentCheck 160 53 113
      { lower := 9557, upper := 9710, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good061_checked :
    goodSegmentCheck 160 53 113
      { lower := 9711, upper := 9856, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good062_checked :
    goodSegmentCheck 160 53 113
      { lower := 9857, upper := 10016, witness := RowWitness.topPrime 9857 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good063_checked :
    goodSegmentCheck 160 53 113
      { lower := 10017, upper := 10168, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good064_checked :
    goodSegmentCheck 160 53 113
      { lower := 10169, upper := 10328, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good065_checked :
    goodSegmentCheck 160 53 113
      { lower := 10329, upper := 10480, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good066_checked :
    goodSegmentCheck 160 53 113
      { lower := 10481, upper := 10636, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good067_checked :
    goodSegmentCheck 160 53 113
      { lower := 10637, upper := 10790, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good068_checked :
    goodSegmentCheck 160 53 113
      { lower := 10791, upper := 10948, witness := RowWitness.topPrime 10789 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good069_checked :
    goodSegmentCheck 160 53 113
      { lower := 10949, upper := 11108, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good070_checked :
    goodSegmentCheck 160 53 113
      { lower := 11109, upper := 11252, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good071_checked :
    goodSegmentCheck 160 53 113
      { lower := 11253, upper := 11410, witness := RowWitness.topPrime 11251 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good072_checked :
    goodSegmentCheck 160 53 113
      { lower := 11411, upper := 11570, witness := RowWitness.topPrime 11411 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good073_checked :
    goodSegmentCheck 160 53 113
      { lower := 11571, upper := 11710, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good074_checked :
    goodSegmentCheck 160 53 113
      { lower := 11711, upper := 11860, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good075_checked :
    goodSegmentCheck 160 53 113
      { lower := 11861, upper := 11998, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good076_checked :
    goodSegmentCheck 160 53 113
      { lower := 11999, upper := 12146, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good077_checked :
    goodSegmentCheck 160 53 113
      { lower := 12147, upper := 12302, witness := RowWitness.topPrime 12143 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good078_checked :
    goodSegmentCheck 160 53 113
      { lower := 12303, upper := 12460, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good079_checked :
    goodSegmentCheck 160 53 113
      { lower := 12461, upper := 12616, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good080_checked :
    goodSegmentCheck 160 53 113
      { lower := 12617, upper := 12772, witness := RowWitness.topPrime 12613 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good081_checked :
    goodSegmentCheck 160 53 113
      { lower := 12773, upper := 12922, witness := RowWitness.topPrime 12763 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good082_checked :
    goodSegmentCheck 160 53 113
      { lower := 12923, upper := 13082, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good083_checked :
    goodSegmentCheck 160 53 113
      { lower := 13083, upper := 13222, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good084_checked :
    goodSegmentCheck 160 53 113
      { lower := 13223, upper := 13378, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good085_checked :
    goodSegmentCheck 160 53 113
      { lower := 13379, upper := 13526, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good086_checked :
    goodSegmentCheck 160 53 113
      { lower := 13527, upper := 13682, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good087_checked :
    goodSegmentCheck 160 53 113
      { lower := 13683, upper := 13840, witness := RowWitness.topPrime 13681 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good088_checked :
    goodSegmentCheck 160 53 113
      { lower := 13841, upper := 14000, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good089_checked :
    goodSegmentCheck 160 53 113
      { lower := 14001, upper := 14158, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good090_checked :
    goodSegmentCheck 160 53 113
      { lower := 14159, upper := 14318, witness := RowWitness.topPrime 14159 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good091_checked :
    goodSegmentCheck 160 53 113
      { lower := 14319, upper := 14462, witness := RowWitness.topPrime 14303 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good092_checked :
    goodSegmentCheck 160 53 113
      { lower := 14463, upper := 14620, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good093_checked :
    goodSegmentCheck 160 53 113
      { lower := 14621, upper := 14780, witness := RowWitness.topPrime 14621 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good094_checked :
    goodSegmentCheck 160 53 113
      { lower := 14781, upper := 14938, witness := RowWitness.topPrime 14779 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good095_checked :
    goodSegmentCheck 160 53 113
      { lower := 14939, upper := 15098, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good096_checked :
    goodSegmentCheck 160 53 113
      { lower := 15099, upper := 15250, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good097_checked :
    goodSegmentCheck 160 53 113
      { lower := 15251, upper := 15400, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good098_checked :
    goodSegmentCheck 160 53 113
      { lower := 15401, upper := 15560, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good099_checked :
    goodSegmentCheck 160 53 113
      { lower := 15561, upper := 15718, witness := RowWitness.topPrime 15559 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good100_checked :
    goodSegmentCheck 160 53 113
      { lower := 15719, upper := 15842, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good101_checked :
    goodSegmentCheck 160 53 113
      { lower := 15843, upper := 15982, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good102_checked :
    goodSegmentCheck 160 53 113
      { lower := 15983, upper := 16132, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good103_checked :
    goodSegmentCheck 160 53 113
      { lower := 16133, upper := 16286, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good104_checked :
    goodSegmentCheck 160 53 113
      { lower := 16287, upper := 16432, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good105_checked :
    goodSegmentCheck 160 53 113
      { lower := 16433, upper := 16592, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good106_checked :
    goodSegmentCheck 160 53 113
      { lower := 16593, upper := 16732, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good107_checked :
    goodSegmentCheck 160 53 113
      { lower := 16733, upper := 16888, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good108_checked :
    goodSegmentCheck 160 53 113
      { lower := 16889, upper := 17048, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good109_checked :
    goodSegmentCheck 160 53 113
      { lower := 17049, upper := 17206, witness := RowWitness.topPrime 17047 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good110_checked :
    goodSegmentCheck 160 53 113
      { lower := 17207, upper := 17366, witness := RowWitness.topPrime 17207 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good111_checked :
    goodSegmentCheck 160 53 113
      { lower := 17367, upper := 17518, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good112_checked :
    goodSegmentCheck 160 53 113
      { lower := 17519, upper := 17678, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good113_checked :
    goodSegmentCheck 160 53 113
      { lower := 17679, upper := 17828, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good114_checked :
    goodSegmentCheck 160 53 113
      { lower := 17829, upper := 17986, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good115_checked :
    goodSegmentCheck 160 53 113
      { lower := 17987, upper := 18146, witness := RowWitness.topPrime 17987 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good116_checked :
    goodSegmentCheck 160 53 113
      { lower := 18147, upper := 18302, witness := RowWitness.topPrime 18143 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good117_checked :
    goodSegmentCheck 160 53 113
      { lower := 18303, upper := 18460, witness := RowWitness.topPrime 18301 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good118_checked :
    goodSegmentCheck 160 53 113
      { lower := 18461, upper := 18620, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good119_checked :
    goodSegmentCheck 160 53 113
      { lower := 18621, upper := 18776, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good120_checked :
    goodSegmentCheck 160 53 113
      { lower := 18777, upper := 18932, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good121_checked :
    goodSegmentCheck 160 53 113
      { lower := 18933, upper := 19078, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good122_checked :
    goodSegmentCheck 160 53 113
      { lower := 19079, upper := 19238, witness := RowWitness.topPrime 19079 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good123_checked :
    goodSegmentCheck 160 53 113
      { lower := 19239, upper := 19396, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good124_checked :
    goodSegmentCheck 160 53 113
      { lower := 19397, upper := 19550, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good125_checked :
    goodSegmentCheck 160 53 113
      { lower := 19551, upper := 19702, witness := RowWitness.topPrime 19543 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good126_checked :
    goodSegmentCheck 160 53 113
      { lower := 19703, upper := 19858, witness := RowWitness.topPrime 19699 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good127_checked :
    goodSegmentCheck 160 53 113
      { lower := 19859, upper := 20012, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good128_checked :
    goodSegmentCheck 160 53 113
      { lower := 20013, upper := 20170, witness := RowWitness.topPrime 20011 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good129_checked :
    goodSegmentCheck 160 53 113
      { lower := 20171, upper := 20320, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good130_checked :
    goodSegmentCheck 160 53 113
      { lower := 20321, upper := 20456, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good131_checked :
    goodSegmentCheck 160 53 113
      { lower := 20457, upper := 20602, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good132_checked :
    goodSegmentCheck 160 53 113
      { lower := 20603, upper := 20758, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good133_checked :
    goodSegmentCheck 160 53 113
      { lower := 20759, upper := 20918, witness := RowWitness.topPrime 20759 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good134_checked :
    goodSegmentCheck 160 53 113
      { lower := 20919, upper := 21062, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good135_checked :
    goodSegmentCheck 160 53 113
      { lower := 21063, upper := 21220, witness := RowWitness.topPrime 21061 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good136_checked :
    goodSegmentCheck 160 53 113
      { lower := 21221, upper := 21380, witness := RowWitness.topPrime 21221 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good137_checked :
    goodSegmentCheck 160 53 113
      { lower := 21381, upper := 21538, witness := RowWitness.topPrime 21379 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good138_checked :
    goodSegmentCheck 160 53 113
      { lower := 21539, upper := 21688, witness := RowWitness.topPrime 21529 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good139_checked :
    goodSegmentCheck 160 53 113
      { lower := 21689, upper := 21842, witness := RowWitness.topPrime 21683 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good140_checked :
    goodSegmentCheck 160 53 113
      { lower := 21843, upper := 22000, witness := RowWitness.topPrime 21841 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good141_checked :
    goodSegmentCheck 160 53 113
      { lower := 22001, upper := 22156, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good142_checked :
    goodSegmentCheck 160 53 113
      { lower := 22157, upper := 22316, witness := RowWitness.topPrime 22157 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good143_checked :
    goodSegmentCheck 160 53 113
      { lower := 22317, upper := 22466, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good144_checked :
    goodSegmentCheck 160 53 113
      { lower := 22467, upper := 22612, witness := RowWitness.topPrime 22453 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good145_checked :
    goodSegmentCheck 160 53 113
      { lower := 22613, upper := 22772, witness := RowWitness.topPrime 22613 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good146_checked :
    goodSegmentCheck 160 53 113
      { lower := 22773, upper := 22928, witness := RowWitness.topPrime 22769 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good147_checked :
    goodSegmentCheck 160 53 113
      { lower := 22929, upper := 23080, witness := RowWitness.topPrime 22921 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good148_checked :
    goodSegmentCheck 160 53 113
      { lower := 23081, upper := 23240, witness := RowWitness.topPrime 23081 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good149_checked :
    goodSegmentCheck 160 53 113
      { lower := 23241, upper := 23386, witness := RowWitness.topPrime 23227 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good150_checked :
    goodSegmentCheck 160 53 113
      { lower := 23387, upper := 23530, witness := RowWitness.topPrime 23371 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good151_checked :
    goodSegmentCheck 160 53 113
      { lower := 23531, upper := 23690, witness := RowWitness.topPrime 23531 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good152_checked :
    goodSegmentCheck 160 53 113
      { lower := 23691, upper := 23848, witness := RowWitness.topPrime 23689 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good153_checked :
    goodSegmentCheck 160 53 113
      { lower := 23849, upper := 23992, witness := RowWitness.topPrime 23833 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good154_checked :
    goodSegmentCheck 160 53 113
      { lower := 23993, upper := 24152, witness := RowWitness.topPrime 23993 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good155_checked :
    goodSegmentCheck 160 53 113
      { lower := 24153, upper := 24310, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good156_checked :
    goodSegmentCheck 160 53 113
      { lower := 24311, upper := 24440, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good157_checked :
    goodSegmentCheck 160 53 113
      { lower := 24441, upper := 24598, witness := RowWitness.topPrime 24439 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good158_checked :
    goodSegmentCheck 160 53 113
      { lower := 24599, upper := 24752, witness := RowWitness.topPrime 24593 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good159_checked :
    goodSegmentCheck 160 53 113
      { lower := 24753, upper := 24908, witness := RowWitness.topPrime 24749 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good160_checked :
    goodSegmentCheck 160 53 113
      { lower := 24909, upper := 25066, witness := RowWitness.topPrime 24907 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good161_checked :
    goodSegmentCheck 160 53 113
      { lower := 25067, upper := 25216, witness := RowWitness.topPrime 25057 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good162_checked :
    goodSegmentCheck 160 53 113
      { lower := 25217, upper := 25348, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good163_checked :
    goodSegmentCheck 160 53 113
      { lower := 25349, upper := 25439, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good164_checked :
    goodSegmentCheck 160 53 113
      { lower := 26364, upper := 26403, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good165_checked :
    goodSegmentCheck 160 53 113
      { lower := 26411, upper := 26566, witness := RowWitness.topPrime 26407 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good166_checked :
    goodSegmentCheck 160 53 113
      { lower := 26567, upper := 26570, witness := RowWitness.topPrime 26561 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good167_checked :
    goodSegmentCheck 160 53 113
      { lower := 26645, upper := 26667, witness := RowWitness.topPrime 26641 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good168_checked :
    goodSegmentCheck 160 53 113
      { lower := 27556, upper := 27595, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good169_checked :
    goodSegmentCheck 160 53 113
      { lower := 28227, upper := 28249, witness := RowWitness.topPrime 28219 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good170_checked :
    goodSegmentCheck 160 53 113
      { lower := 28561, upper := 28590, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good171_checked :
    goodSegmentCheck 160 53 113
      { lower := 28717, upper := 28720, witness := RowWitness.topPrime 28711 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good172_checked :
    goodSegmentCheck 160 53 113
      { lower := 28812, upper := 28876, witness := RowWitness.topPrime 28807 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good173_checked :
    goodSegmentCheck 160 53 113
      { lower := 29791, upper := 29927, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good174_checked :
    goodSegmentCheck 160 53 113
      { lower := 30618, upper := 30752, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good175_checked :
    goodSegmentCheck 160 53 113
      { lower := 30753, upper := 30777, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good176_checked :
    goodSegmentCheck 160 53 113
      { lower := 30899, upper := 30917, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good177_checked :
    goodSegmentCheck 160 53 113
      { lower := 30926, upper := 31058, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good178_checked :
    goodSegmentCheck 160 53 113
      { lower := 31213, upper := 31352, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good179_checked :
    goodSegmentCheck 160 53 113
      { lower := 31353, upper := 31409, witness := RowWitness.topPrime 31337 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good180_checked :
    goodSegmentCheck 160 53 113
      { lower := 31423, upper := 31488, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good181_checked :
    goodSegmentCheck 160 53 113
      { lower := 31827, upper := 31843, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good182_checked :
    goodSegmentCheck 160 53 113
      { lower := 31974, upper := 31986, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good183_checked :
    goodSegmentCheck 160 53 113
      { lower := 33614, upper := 33648, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good184_checked :
    goodSegmentCheck 160 53 113
      { lower := 33708, upper := 33773, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good185_checked :
    goodSegmentCheck 160 53 113
      { lower := 34322, upper := 34478, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good186_checked :
    goodSegmentCheck 160 53 113
      { lower := 34479, upper := 34550, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good187_checked :
    goodSegmentCheck 160 53 113
      { lower := 36517, upper := 36656, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good188_checked :
    goodSegmentCheck 160 53 113
      { lower := 36657, upper := 36660, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good189_checked :
    goodSegmentCheck 160 53 113
      { lower := 37303, upper := 37369, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good190_checked :
    goodSegmentCheck 160 53 113
      { lower := 37446, upper := 37462, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good191_checked :
    goodSegmentCheck 160 53 113
      { lower := 37538, upper := 37605, witness := RowWitness.topPrime 37537 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good192_checked :
    goodSegmentCheck 160 53 113
      { lower := 37636, upper := 37697, witness := RowWitness.topPrime 37633 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good193_checked :
    goodSegmentCheck 160 53 113
      { lower := 38307, upper := 38450, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good194_checked :
    goodSegmentCheck 160 53 113
      { lower := 39326, upper := 39482, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good195_checked :
    goodSegmentCheck 160 53 113
      { lower := 39483, upper := 39485, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good196_checked :
    goodSegmentCheck 160 53 113
      { lower := 40401, upper := 40487, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good197_checked :
    goodSegmentCheck 160 53 113
      { lower := 40931, upper := 40963, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good198_checked :
    goodSegmentCheck 160 53 113
      { lower := 45369, upper := 45412, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good199_checked :
    goodSegmentCheck 160 53 113
      { lower := 45927, upper := 45955, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good200_checked :
    goodSegmentCheck 160 53 113
      { lower := 47526, upper := 47680, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good201_checked :
    goodSegmentCheck 160 53 113
      { lower := 47681, upper := 47683, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good202_checked :
    goodSegmentCheck 160 53 113
      { lower := 48013, upper := 48120, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good203_checked :
    goodSegmentCheck 160 53 113
      { lower := 48373, upper := 48382, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good204_checked :
    goodSegmentCheck 160 53 113
      { lower := 48387, upper := 48532, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good205_checked :
    goodSegmentCheck 160 53 113
      { lower := 48734, upper := 48892, witness := RowWitness.topPrime 48733 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good206_checked :
    goodSegmentCheck 160 53 113
      { lower := 48893, upper := 48893, witness := RowWitness.topPrime 48889 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good207_checked :
    goodSegmentCheck 160 53 113
      { lower := 49379, upper := 49457, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good208_checked :
    goodSegmentCheck 160 53 113
      { lower := 50421, upper := 50569, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good209_checked :
    goodSegmentCheck 160 53 113
      { lower := 51076, upper := 51164, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good210_checked :
    goodSegmentCheck 160 53 113
      { lower := 55451, upper := 55600, witness := RowWitness.topPrime 55441 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good211_checked :
    goodSegmentCheck 160 53 113
      { lower := 55601, upper := 55606, witness := RowWitness.topPrime 55589 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good212_checked :
    goodSegmentCheck 160 53 113
      { lower := 56307, upper := 56328, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good213_checked :
    goodSegmentCheck 160 53 113
      { lower := 56454, upper := 56466, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good214_checked :
    goodSegmentCheck 160 53 113
      { lower := 57245, upper := 57281, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good215_checked :
    goodSegmentCheck 160 53 113
      { lower := 58619, upper := 58723, witness := RowWitness.topPrime 58613 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good216_checked :
    goodSegmentCheck 160 53 113
      { lower := 68644, upper := 68798, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good217_checked :
    goodSegmentCheck 160 53 113
      { lower := 68799, upper := 68810, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good218_checked :
    goodSegmentCheck 160 53 113
      { lower := 68921, upper := 69049, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good219_checked :
    goodSegmentCheck 160 53 113
      { lower := 71289, upper := 71446, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good220_checked :
    goodSegmentCheck 160 53 113
      { lower := 71447, upper := 71448, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good221_checked :
    goodSegmentCheck 160 53 113
      { lower := 73205, upper := 73326, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good222_checked :
    goodSegmentCheck 160 53 113
      { lower := 85805, upper := 85842, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good223_checked :
    goodSegmentCheck 160 53 113
      { lower := 89383, upper := 89532, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_good224_checked :
    goodSegmentCheck 160 53 113
      { lower := 137842, upper := 137940, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row160_good225_checked :
    goodSegmentCheck 160 53 113
      { lower := 148955, upper := 149036, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 160) (r := 53) (s := 113) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_good225_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_goods_checked :
    row160.goods.all (goodSegmentCheck row160.height.i row160.height.r row160.height.s) = true := by
  change row160_goods.all (goodSegmentCheck 160 53 113) = true
  simp only [row160_goods, List.all_cons, List.all_nil,
    row160_good000_checked,
    row160_good001_checked,
    row160_good002_checked,
    row160_good003_checked,
    row160_good004_checked,
    row160_good005_checked,
    row160_good006_checked,
    row160_good007_checked,
    row160_good008_checked,
    row160_good009_checked,
    row160_good010_checked,
    row160_good011_checked,
    row160_good012_checked,
    row160_good013_checked,
    row160_good014_checked,
    row160_good015_checked,
    row160_good016_checked,
    row160_good017_checked,
    row160_good018_checked,
    row160_good019_checked,
    row160_good020_checked,
    row160_good021_checked,
    row160_good022_checked,
    row160_good023_checked,
    row160_good024_checked,
    row160_good025_checked,
    row160_good026_checked,
    row160_good027_checked,
    row160_good028_checked,
    row160_good029_checked,
    row160_good030_checked,
    row160_good031_checked,
    row160_good032_checked,
    row160_good033_checked,
    row160_good034_checked,
    row160_good035_checked,
    row160_good036_checked,
    row160_good037_checked,
    row160_good038_checked,
    row160_good039_checked,
    row160_good040_checked,
    row160_good041_checked,
    row160_good042_checked,
    row160_good043_checked,
    row160_good044_checked,
    row160_good045_checked,
    row160_good046_checked,
    row160_good047_checked,
    row160_good048_checked,
    row160_good049_checked,
    row160_good050_checked,
    row160_good051_checked,
    row160_good052_checked,
    row160_good053_checked,
    row160_good054_checked,
    row160_good055_checked,
    row160_good056_checked,
    row160_good057_checked,
    row160_good058_checked,
    row160_good059_checked,
    row160_good060_checked,
    row160_good061_checked,
    row160_good062_checked,
    row160_good063_checked,
    row160_good064_checked,
    row160_good065_checked,
    row160_good066_checked,
    row160_good067_checked,
    row160_good068_checked,
    row160_good069_checked,
    row160_good070_checked,
    row160_good071_checked,
    row160_good072_checked,
    row160_good073_checked,
    row160_good074_checked,
    row160_good075_checked,
    row160_good076_checked,
    row160_good077_checked,
    row160_good078_checked,
    row160_good079_checked,
    row160_good080_checked,
    row160_good081_checked,
    row160_good082_checked,
    row160_good083_checked,
    row160_good084_checked,
    row160_good085_checked,
    row160_good086_checked,
    row160_good087_checked,
    row160_good088_checked,
    row160_good089_checked,
    row160_good090_checked,
    row160_good091_checked,
    row160_good092_checked,
    row160_good093_checked,
    row160_good094_checked,
    row160_good095_checked,
    row160_good096_checked,
    row160_good097_checked,
    row160_good098_checked,
    row160_good099_checked,
    row160_good100_checked,
    row160_good101_checked,
    row160_good102_checked,
    row160_good103_checked,
    row160_good104_checked,
    row160_good105_checked,
    row160_good106_checked,
    row160_good107_checked,
    row160_good108_checked,
    row160_good109_checked,
    row160_good110_checked,
    row160_good111_checked,
    row160_good112_checked,
    row160_good113_checked,
    row160_good114_checked,
    row160_good115_checked,
    row160_good116_checked,
    row160_good117_checked,
    row160_good118_checked,
    row160_good119_checked,
    row160_good120_checked,
    row160_good121_checked,
    row160_good122_checked,
    row160_good123_checked,
    row160_good124_checked,
    row160_good125_checked,
    row160_good126_checked,
    row160_good127_checked,
    row160_good128_checked,
    row160_good129_checked,
    row160_good130_checked,
    row160_good131_checked,
    row160_good132_checked,
    row160_good133_checked,
    row160_good134_checked,
    row160_good135_checked,
    row160_good136_checked,
    row160_good137_checked,
    row160_good138_checked,
    row160_good139_checked,
    row160_good140_checked,
    row160_good141_checked,
    row160_good142_checked,
    row160_good143_checked,
    row160_good144_checked,
    row160_good145_checked,
    row160_good146_checked,
    row160_good147_checked,
    row160_good148_checked,
    row160_good149_checked,
    row160_good150_checked,
    row160_good151_checked,
    row160_good152_checked,
    row160_good153_checked,
    row160_good154_checked,
    row160_good155_checked,
    row160_good156_checked,
    row160_good157_checked,
    row160_good158_checked,
    row160_good159_checked,
    row160_good160_checked,
    row160_good161_checked,
    row160_good162_checked,
    row160_good163_checked,
    row160_good164_checked,
    row160_good165_checked,
    row160_good166_checked,
    row160_good167_checked,
    row160_good168_checked,
    row160_good169_checked,
    row160_good170_checked,
    row160_good171_checked,
    row160_good172_checked,
    row160_good173_checked,
    row160_good174_checked,
    row160_good175_checked,
    row160_good176_checked,
    row160_good177_checked,
    row160_good178_checked,
    row160_good179_checked,
    row160_good180_checked,
    row160_good181_checked,
    row160_good182_checked,
    row160_good183_checked,
    row160_good184_checked,
    row160_good185_checked,
    row160_good186_checked,
    row160_good187_checked,
    row160_good188_checked,
    row160_good189_checked,
    row160_good190_checked,
    row160_good191_checked,
    row160_good192_checked,
    row160_good193_checked,
    row160_good194_checked,
    row160_good195_checked,
    row160_good196_checked,
    row160_good197_checked,
    row160_good198_checked,
    row160_good199_checked,
    row160_good200_checked,
    row160_good201_checked,
    row160_good202_checked,
    row160_good203_checked,
    row160_good204_checked,
    row160_good205_checked,
    row160_good206_checked,
    row160_good207_checked,
    row160_good208_checked,
    row160_good209_checked,
    row160_good210_checked,
    row160_good211_checked,
    row160_good212_checked,
    row160_good213_checked,
    row160_good214_checked,
    row160_good215_checked,
    row160_good216_checked,
    row160_good217_checked,
    row160_good218_checked,
    row160_good219_checked,
    row160_good220_checked,
    row160_good221_checked,
    row160_good222_checked,
    row160_good223_checked,
    row160_good224_checked,
    row160_good225_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_registered :
    decide (row160.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row160_small_checked :
    coverCheck (2 * row160.height.i + 2) (row160.height.i * (row160.height.i - 1) - 1)
      (row160.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row160_layerCover_checked :
    coverCheck (row160.height.i * (row160.height.i - 1)) (row160.height.n0 - 1)
      (row160.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row160_bounds : List NatInterval :=
  [(322, 476), (477, 626), (627, 778), (779, 932), (933, 1088), (1089, 1246), (1247, 1396), (1397, 1540), (1541, 1690), (1691, 1828), (1829, 1982), (1983, 2138), (2139, 2296), (2297, 2456), (2457, 2606), (2607, 2752), (2753, 2912), (2913, 3068), (3069, 3226), (3227, 3380), (3381, 3532), (3533, 3692), (3693, 3850), (3851, 4010), (4011, 4166), (4167, 4318), (4319, 4456), (4457, 4616), (4617, 4762), (4763, 4918), (4919, 5078), (5079, 5236), (5237, 5396), (5397, 5552), (5553, 5690), (5691, 5848), (5849, 6008), (6009, 6166), (6167, 6322), (6323, 6482), (6483, 6640), (6641, 6796), (6797, 6952), (6953, 7108), (7109, 7268), (7269, 7412), (7413, 7570), (7571, 7720), (7721, 7876), (7877, 8036), (8037, 8176), (8177, 8330), (8331, 8488), (8489, 8626), (8627, 8786), (8787, 8942), (8943, 9100), (9101, 9250), (9251, 9400), (9401, 9556), (9557, 9710), (9711, 9856), (9857, 10016), (10017, 10168), (10169, 10328), (10329, 10480), (10481, 10636), (10637, 10790), (10791, 10948), (10949, 11108), (11109, 11252), (11253, 11410), (11411, 11570), (11571, 11710), (11711, 11860), (11861, 11998), (11999, 12146), (12147, 12302), (12303, 12460), (12461, 12616), (12617, 12772), (12773, 12922), (12923, 13082), (13083, 13222), (13223, 13378), (13379, 13526), (13527, 13682), (13683, 13840), (13841, 14000), (14001, 14158), (14159, 14318), (14319, 14462), (14463, 14620), (14621, 14780), (14781, 14938), (14939, 15098), (15099, 15250), (15251, 15400), (15401, 15560), (15561, 15718), (15719, 15842), (15843, 15982), (15983, 16132), (16133, 16286), (16287, 16432), (16433, 16592), (16593, 16732), (16733, 16888), (16889, 17048), (17049, 17206), (17207, 17366), (17367, 17518), (17519, 17678), (17679, 17828), (17829, 17986), (17987, 18146), (18147, 18302), (18303, 18460), (18461, 18620), (18621, 18776), (18777, 18932), (18933, 19078), (19079, 19238), (19239, 19396), (19397, 19550), (19551, 19702), (19703, 19858), (19859, 20012), (20013, 20170), (20171, 20320), (20321, 20456), (20457, 20602), (20603, 20758), (20759, 20918), (20919, 21062), (21063, 21220), (21221, 21380), (21381, 21538), (21539, 21688), (21689, 21842), (21843, 22000), (22001, 22156), (22157, 22316), (22317, 22466), (22467, 22612), (22613, 22772), (22773, 22928), (22929, 23080), (23081, 23240), (23241, 23386), (23387, 23530), (23531, 23690), (23691, 23848), (23849, 23992), (23993, 24152), (24153, 24310), (24311, 24440), (24441, 24598), (24599, 24752), (24753, 24908), (24909, 25066), (25067, 25216), (25217, 25348), (25349, 25439), (26364, 26403), (26411, 26566), (26567, 26570), (26645, 26667), (27556, 27595), (28227, 28249), (28561, 28590), (28717, 28720), (28812, 28876), (29791, 29927), (30618, 30752), (30753, 30777), (30899, 30917), (30926, 31058), (31213, 31352), (31353, 31409), (31423, 31488), (31827, 31843), (31974, 31986), (33614, 33648), (33708, 33773), (34322, 34478), (34479, 34550), (36517, 36656), (36657, 36660), (37303, 37369), (37446, 37462), (37538, 37605), (37636, 37697), (38307, 38450), (39326, 39482), (39483, 39485), (40401, 40487), (40931, 40963), (45369, 45412), (45927, 45955), (47526, 47680), (47681, 47683), (48013, 48120), (48373, 48382), (48387, 48532), (48734, 48892), (48893, 48893), (49379, 49457), (50421, 50569), (51076, 51164), (55451, 55600), (55601, 55606), (56307, 56328), (56454, 56466), (57245, 57281), (58619, 58723), (68644, 68798), (68799, 68810), (68921, 69049), (71289, 71446), (71447, 71448), (73205, 73326), (85805, 85842), (89383, 89532), (137842, 137940), (148955, 149036)]

theorem row160_bounds_eq : row160.goods.map goodSegmentBounds = row160_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row160_layer000_intervals : List ColouredInterval :=
  [(3, 26244, 26403), (3, 28431, 28590), (3, 30618, 30777), (3, 26244, 26403), (3, 32805, 32964), (3, 39366, 39525), (3, 45927, 46086), (3, 39366, 39525), (5, 31250, 31409), (7, 26411, 26570), (7, 28812, 28971), (7, 31213, 31372), (7, 33614, 33773), (7, 33614, 33773), (7, 50421, 50580), (11, 29282, 29441), (11, 43923, 44082), (13, 26364, 26523), (13, 28561, 28720), (13, 30758, 30917), (13, 28561, 28720), (17, 29478, 29637), (17, 34391, 34550), (17, 39304, 39463), (17, 44217, 44376), (17, 49130, 49289), (19, 27436, 27595), (19, 34295, 34454), (19, 41154, 41313), (19, 48013, 48172), (23, 36501, 36660), (23, 48668, 48827), (29, 48778, 48937), (31, 29791, 29950), (37, 50653, 50812), (43, 25886, 26045), (47, 26508, 26667), (47, 28717, 28876), (47, 30926, 31085), (53, 25440, 25440), (53, 28090, 28249), (53, 30899, 31058), (53, 33708, 33867), (53, 36517, 36676), (53, 39326, 39485), (59, 27848, 28007), (59, 31329, 31488), (59, 34810, 34969), (59, 38291, 38450), (59, 41772, 41931), (59, 45253, 45412), (59, 48734, 48893), (61, 26047, 26206), (61, 29768, 29927), (61, 33489, 33648), (61, 37210, 37369), (61, 40931, 41090), (61, 44652, 44811), (61, 48373, 48532), (67, 26934, 27093), (67, 31423, 31582), (67, 35912, 36071), (67, 40401, 40560), (67, 44890, 45049), (67, 49379, 49538), (71, 30246, 30405), (71, 35287, 35446), (71, 40328, 40487), (71, 45369, 45528), (71, 50410, 50569), (73, 26645, 26804), (73, 31974, 32133), (73, 37303, 37462), (73, 42632, 42791), (73, 47961, 48120), (79, 31205, 31364), (79, 37446, 37605), (79, 43687, 43846), (79, 49928, 50087), (83, 27556, 27715), (83, 34445, 34604), (83, 41334, 41493), (83, 48223, 48382), (89, 31684, 31843), (89, 39605, 39764), (89, 47526, 47685), (97, 28227, 28386), (97, 37636, 37795), (97, 47045, 47204), (101, 30603, 30762), (101, 40804, 40963), (103, 31827, 31986), (103, 42436, 42595), (107, 34347, 34506), (107, 45796, 45955), (109, 35643, 35802), (109, 47524, 47683), (113, 25538, 25697), (113, 38307, 38466), (127, 32258, 32417), (127, 48387, 48546), (131, 34322, 34481), (137, 37538, 37697), (139, 38642, 38801), (149, 44402, 44561), (151, 45602, 45761), (157, 49298, 49457)]

def row160_layer000_block000 : List ColouredInterval :=
  [(3, 26244, 26403), (3, 28431, 28590), (3, 30618, 30777), (3, 26244, 26403), (3, 32805, 32964), (3, 39366, 39525), (3, 45927, 46086), (3, 39366, 39525), (5, 31250, 31409), (7, 26411, 26570), (7, 28812, 28971), (7, 31213, 31372), (7, 33614, 33773), (7, 33614, 33773), (7, 50421, 50580), (11, 29282, 29441)]

def row160_layer000_block001 : List ColouredInterval :=
  [(11, 43923, 44082), (13, 26364, 26523), (13, 28561, 28720), (13, 30758, 30917), (13, 28561, 28720), (17, 29478, 29637), (17, 34391, 34550), (17, 39304, 39463), (17, 44217, 44376), (17, 49130, 49289), (19, 27436, 27595), (19, 34295, 34454), (19, 41154, 41313), (19, 48013, 48172), (23, 36501, 36660), (23, 48668, 48827)]

def row160_layer000_block002 : List ColouredInterval :=
  [(29, 48778, 48937), (31, 29791, 29950), (37, 50653, 50812), (43, 25886, 26045), (47, 26508, 26667), (47, 28717, 28876), (47, 30926, 31085), (53, 25440, 25440), (53, 28090, 28249), (53, 30899, 31058), (53, 33708, 33867), (53, 36517, 36676), (53, 39326, 39485), (59, 27848, 28007), (59, 31329, 31488), (59, 34810, 34969)]

def row160_layer000_block003 : List ColouredInterval :=
  [(59, 38291, 38450), (59, 41772, 41931), (59, 45253, 45412), (59, 48734, 48893), (61, 26047, 26206), (61, 29768, 29927), (61, 33489, 33648), (61, 37210, 37369), (61, 40931, 41090), (61, 44652, 44811), (61, 48373, 48532), (67, 26934, 27093), (67, 31423, 31582), (67, 35912, 36071), (67, 40401, 40560), (67, 44890, 45049)]

def row160_layer000_block004 : List ColouredInterval :=
  [(67, 49379, 49538), (71, 30246, 30405), (71, 35287, 35446), (71, 40328, 40487), (71, 45369, 45528), (71, 50410, 50569), (73, 26645, 26804), (73, 31974, 32133), (73, 37303, 37462), (73, 42632, 42791), (73, 47961, 48120), (79, 31205, 31364), (79, 37446, 37605), (79, 43687, 43846), (79, 49928, 50087), (83, 27556, 27715)]

def row160_layer000_block005 : List ColouredInterval :=
  [(83, 34445, 34604), (83, 41334, 41493), (83, 48223, 48382), (89, 31684, 31843), (89, 39605, 39764), (89, 47526, 47685), (97, 28227, 28386), (97, 37636, 37795), (97, 47045, 47204), (101, 30603, 30762), (101, 40804, 40963), (103, 31827, 31986), (103, 42436, 42595), (107, 34347, 34506), (107, 45796, 45955), (109, 35643, 35802)]

def row160_layer000_block006 : List ColouredInterval :=
  [(109, 47524, 47683), (113, 25538, 25697), (113, 38307, 38466), (127, 32258, 32417), (127, 48387, 48546), (131, 34322, 34481), (137, 37538, 37697), (139, 38642, 38801), (149, 44402, 44561), (151, 45602, 45761), (157, 49298, 49457)]

def row160_layer000_chunks : List (List ColouredInterval) :=
  [row160_layer000_block000, row160_layer000_block001, row160_layer000_block002, row160_layer000_block003, row160_layer000_block004, row160_layer000_block005, row160_layer000_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_arithmetic : LayerArithmeticValid row160.height { lower := 25440, upper := 50880, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_enumeration :
    activePowerIntervalList 160 14 25440 50880 = row160_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_pairs000 :
    row160_layer000_block000.all (fun I => row160_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_pairs001 :
    row160_layer000_block001.all (fun I => row160_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_pairs002 :
    row160_layer000_block002.all (fun I => row160_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_pairs003 :
    row160_layer000_block003.all (fun I => row160_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_pairs004 :
    row160_layer000_block004.all (fun I => row160_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_pairs005 :
    row160_layer000_block005.all (fun I => row160_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_pairs006 :
    row160_layer000_block006.all (fun I => row160_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row160_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_chunks_eq : row160_layer000_chunks.flatten = row160_layer000_intervals := by
  rfl

theorem row160_layer000_pairs : pairCoverCheck row160_layer000_intervals row160_bounds = true := by
  apply pairCoverCheck_of_chunks row160_layer000_chunks_eq
  intro block hblock
  simp only [row160_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row160_layer000_pairs000
  · exact row160_layer000_pairs001
  · exact row160_layer000_pairs002
  · exact row160_layer000_pairs003
  · exact row160_layer000_pairs004
  · exact row160_layer000_pairs005
  · exact row160_layer000_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row160_layer000_checked :
    coverLayerCheck row160.height row160.goods { lower := 25440, upper := 50880, M := 14 } = true := by
  exact coverLayerCheck_of_parts row160_layer000_arithmetic row160_layer000_enumeration row160_bounds_eq row160_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row160_layer001_intervals : List ColouredInterval :=
  [(3, 52488, 52647), (3, 59049, 59208), (3, 65610, 65769), (3, 72171, 72330), (3, 59049, 59208), (3, 78732, 78891), (3, 98415, 98574), (3, 59049, 59208), (5, 78125, 78284), (7, 67228, 67387), (7, 84035, 84194), (7, 100842, 101001), (11, 58564, 58723), (11, 73205, 73364), (11, 87846, 88005), (13, 57122, 57281), (13, 85683, 85842), (17, 54043, 54202), (17, 83521, 83680), (19, 54872, 55031), (19, 61731, 61890), (19, 68590, 68749), (19, 75449, 75608), (23, 60835, 60994), (23, 73002, 73161), (23, 85169, 85328), (23, 97336, 97495), (29, 73167, 73326), (29, 97556, 97715), (31, 59582, 59741), (31, 89373, 89532), (37, 101306, 101465), (41, 68921, 69080), (43, 79507, 79666), (71, 55451, 55610), (73, 53290, 53449), (73, 58619, 58778), (79, 56169, 56328), (79, 62410, 62569), (79, 68651, 68810), (83, 55112, 55271), (83, 62001, 62160), (83, 68890, 69049), (83, 75779, 75938), (89, 55447, 55606), (89, 63368, 63527), (89, 71289, 71448), (89, 79210, 79369), (89, 87131, 87290), (97, 56454, 56613), (97, 65863, 66022), (97, 75272, 75431), (97, 84681, 84840), (97, 94090, 94249), (101, 51005, 51164), (101, 61206, 61365), (101, 71407, 71566), (101, 81608, 81767), (101, 91809, 91968), (103, 53045, 53204), (103, 63654, 63813), (103, 74263, 74422), (103, 84872, 85031), (103, 95481, 95640), (107, 57245, 57404), (107, 68694, 68853), (107, 80143, 80302), (107, 91592, 91751), (109, 59405, 59564), (109, 71286, 71445), (109, 83167, 83326), (109, 95048, 95207), (113, 51076, 51235), (113, 63845, 64004), (113, 76614, 76773), (113, 89383, 89542), (127, 64516, 64675), (127, 80645, 80804), (127, 96774, 96933), (131, 51483, 51642), (131, 68644, 68803), (131, 85805, 85964), (137, 56307, 56466), (137, 75076, 75235), (137, 93845, 94004), (139, 57963, 58122), (139, 77284, 77443), (139, 96605, 96764), (149, 66603, 66762), (149, 88804, 88963), (151, 68403, 68562), (151, 91204, 91363), (157, 73947, 74106), (157, 98596, 98755)]

def row160_layer001_block000 : List ColouredInterval :=
  [(3, 52488, 52647), (3, 59049, 59208), (3, 65610, 65769), (3, 72171, 72330), (3, 59049, 59208), (3, 78732, 78891), (3, 98415, 98574), (3, 59049, 59208), (5, 78125, 78284), (7, 67228, 67387), (7, 84035, 84194), (7, 100842, 101001), (11, 58564, 58723), (11, 73205, 73364), (11, 87846, 88005), (13, 57122, 57281)]

def row160_layer001_block001 : List ColouredInterval :=
  [(13, 85683, 85842), (17, 54043, 54202), (17, 83521, 83680), (19, 54872, 55031), (19, 61731, 61890), (19, 68590, 68749), (19, 75449, 75608), (23, 60835, 60994), (23, 73002, 73161), (23, 85169, 85328), (23, 97336, 97495), (29, 73167, 73326), (29, 97556, 97715), (31, 59582, 59741), (31, 89373, 89532), (37, 101306, 101465)]

def row160_layer001_block002 : List ColouredInterval :=
  [(41, 68921, 69080), (43, 79507, 79666), (71, 55451, 55610), (73, 53290, 53449), (73, 58619, 58778), (79, 56169, 56328), (79, 62410, 62569), (79, 68651, 68810), (83, 55112, 55271), (83, 62001, 62160), (83, 68890, 69049), (83, 75779, 75938), (89, 55447, 55606), (89, 63368, 63527), (89, 71289, 71448), (89, 79210, 79369)]

def row160_layer001_block003 : List ColouredInterval :=
  [(89, 87131, 87290), (97, 56454, 56613), (97, 65863, 66022), (97, 75272, 75431), (97, 84681, 84840), (97, 94090, 94249), (101, 51005, 51164), (101, 61206, 61365), (101, 71407, 71566), (101, 81608, 81767), (101, 91809, 91968), (103, 53045, 53204), (103, 63654, 63813), (103, 74263, 74422), (103, 84872, 85031), (103, 95481, 95640)]

def row160_layer001_block004 : List ColouredInterval :=
  [(107, 57245, 57404), (107, 68694, 68853), (107, 80143, 80302), (107, 91592, 91751), (109, 59405, 59564), (109, 71286, 71445), (109, 83167, 83326), (109, 95048, 95207), (113, 51076, 51235), (113, 63845, 64004), (113, 76614, 76773), (113, 89383, 89542), (127, 64516, 64675), (127, 80645, 80804), (127, 96774, 96933), (131, 51483, 51642)]

def row160_layer001_block005 : List ColouredInterval :=
  [(131, 68644, 68803), (131, 85805, 85964), (137, 56307, 56466), (137, 75076, 75235), (137, 93845, 94004), (139, 57963, 58122), (139, 77284, 77443), (139, 96605, 96764), (149, 66603, 66762), (149, 88804, 88963), (151, 68403, 68562), (151, 91204, 91363), (157, 73947, 74106), (157, 98596, 98755)]

def row160_layer001_chunks : List (List ColouredInterval) :=
  [row160_layer001_block000, row160_layer001_block001, row160_layer001_block002, row160_layer001_block003, row160_layer001_block004, row160_layer001_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row160_layer001_intervals
