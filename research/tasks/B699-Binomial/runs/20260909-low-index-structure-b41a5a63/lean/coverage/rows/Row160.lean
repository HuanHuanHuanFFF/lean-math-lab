import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover

set_option maxRecDepth 65536
set_option maxHeartbeats 0
set_option exponentiation.threshold 1000000

namespace B699LowIndex

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

theorem row160_registered :
    decide (row160.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row160_goods_checked :
    row160.goods.all (goodSegmentCheck row160.height.i row160.height.r row160.height.s) = true := by
  decide +kernel

theorem row160_small_checked :
    coverCheck (2 * row160.height.i + 2) (row160.height.i * (row160.height.i - 1) - 1)
      (row160.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row160_layerCover_checked :
    coverCheck (row160.height.i * (row160.height.i - 1)) (row160.height.n0 - 1)
      (row160.layers.map CoverLayer.bounds) = true := by
  decide +kernel

theorem row160_layer000_checked :
    coverLayerCheck row160.height row160.goods { lower := 25440, upper := 50880, M := 14 } = true := by
  decide +kernel

theorem row160_layer001_checked :
    coverLayerCheck row160.height row160.goods { lower := 50880, upper := 101760, M := 11 } = true := by
  decide +kernel

theorem row160_layer002_checked :
    coverLayerCheck row160.height row160.goods { lower := 101760, upper := 203520, M := 8 } = true := by
  decide +kernel

theorem row160_layer003_checked :
    coverLayerCheck row160.height row160.goods { lower := 203520, upper := 407040, M := 6 } = true := by
  decide +kernel

theorem row160_layer004_checked :
    coverLayerCheck row160.height row160.goods { lower := 407040, upper := 814080, M := 5 } = true := by
  decide +kernel

theorem row160_layer005_checked :
    coverLayerCheck row160.height row160.goods { lower := 814080, upper := 1628160, M := 4 } = true := by
  decide +kernel

theorem row160_layer006_checked :
    coverLayerCheck row160.height row160.goods { lower := 1628160, upper := 3256320, M := 3 } = true := by
  decide +kernel

theorem row160_layer007_checked :
    coverLayerCheck row160.height row160.goods { lower := 3256320, upper := 6512640, M := 2 } = true := by
  decide +kernel

theorem row160_layer008_checked :
    coverLayerCheck row160.height row160.goods { lower := 6512640, upper := 13025280, M := 2 } = true := by
  decide +kernel

theorem row160_layer009_checked :
    coverLayerCheck row160.height row160.goods { lower := 13025280, upper := 26050560, M := 1 } = true := by
  decide +kernel

theorem row160_layer010_checked :
    coverLayerCheck row160.height row160.goods { lower := 26050560, upper := 52101120, M := 1 } = true := by
  decide +kernel

theorem row160_layer011_checked :
    coverLayerCheck row160.height row160.goods { lower := 52101120, upper := 100000000, M := 1 } = true := by
  decide +kernel

theorem row160_layers_checked :
    row160.layers.all (coverLayerCheck row160.height row160.goods) = true := by
  change List.all [
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
  ] (coverLayerCheck row160.height row160.goods) = true
  simp only [List.all_cons, List.all_nil,
    row160_layer000_checked,
    row160_layer001_checked,
    row160_layer002_checked,
    row160_layer003_checked,
    row160_layer004_checked,
    row160_layer005_checked,
    row160_layer006_checked,
    row160_layer007_checked,
    row160_layer008_checked,
    row160_layer009_checked,
    row160_layer010_checked,
    row160_layer011_checked,
    Bool.true_and]

theorem row160_checked : finiteCoverRowCheck row160 = true := by
  simp only [finiteCoverRowCheck, row160_registered, row160_goods_checked,
    row160_small_checked, row160_layerCover_checked, row160_layers_checked,
    Bool.true_and]

#print axioms B699LowIndex.row160_checked

end B699LowIndex
