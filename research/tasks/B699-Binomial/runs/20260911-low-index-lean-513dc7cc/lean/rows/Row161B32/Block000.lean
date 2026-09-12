import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row161_height : HeightCertificateDatum := { i := 161, r := 53, s := 114, n0Power10 := 7 }

def row161_goods : List GoodSegment := [
  { lower := 324, upper := 477, witness := RowWitness.topPrime 317 },
  { lower := 478, upper := 627, witness := RowWitness.topPrime 467 },
  { lower := 628, upper := 779, witness := RowWitness.topPrime 619 },
  { lower := 780, upper := 933, witness := RowWitness.topPrime 773 },
  { lower := 934, upper := 1089, witness := RowWitness.topPrime 929 },
  { lower := 1090, upper := 1247, witness := RowWitness.topPrime 1087 },
  { lower := 1248, upper := 1397, witness := RowWitness.topPrime 1237 },
  { lower := 1398, upper := 1541, witness := RowWitness.topPrime 1381 },
  { lower := 1542, upper := 1691, witness := RowWitness.topPrime 1531 },
  { lower := 1692, upper := 1829, witness := RowWitness.topPrime 1669 },
  { lower := 1830, upper := 1983, witness := RowWitness.topPrime 1823 },
  { lower := 1984, upper := 2139, witness := RowWitness.topPrime 1979 },
  { lower := 2140, upper := 2297, witness := RowWitness.topPrime 2137 },
  { lower := 2298, upper := 2457, witness := RowWitness.topPrime 2297 },
  { lower := 2458, upper := 2607, witness := RowWitness.topPrime 2447 },
  { lower := 2608, upper := 2753, witness := RowWitness.topPrime 2593 },
  { lower := 2754, upper := 2913, witness := RowWitness.topPrime 2753 },
  { lower := 2914, upper := 3069, witness := RowWitness.topPrime 2909 },
  { lower := 3070, upper := 3227, witness := RowWitness.topPrime 3067 },
  { lower := 3228, upper := 3381, witness := RowWitness.topPrime 3221 },
  { lower := 3382, upper := 3533, witness := RowWitness.topPrime 3373 },
  { lower := 3534, upper := 3693, witness := RowWitness.topPrime 3533 },
  { lower := 3694, upper := 3851, witness := RowWitness.topPrime 3691 },
  { lower := 3852, upper := 4011, witness := RowWitness.topPrime 3851 },
  { lower := 4012, upper := 4167, witness := RowWitness.topPrime 4007 },
  { lower := 4168, upper := 4319, witness := RowWitness.topPrime 4159 },
  { lower := 4320, upper := 4457, witness := RowWitness.topPrime 4297 },
  { lower := 4458, upper := 4617, witness := RowWitness.topPrime 4457 },
  { lower := 4618, upper := 4763, witness := RowWitness.topPrime 4603 },
  { lower := 4764, upper := 4919, witness := RowWitness.topPrime 4759 },
  { lower := 4920, upper := 5079, witness := RowWitness.topPrime 4919 },
  { lower := 5080, upper := 5237, witness := RowWitness.topPrime 5077 },
  { lower := 5238, upper := 5397, witness := RowWitness.topPrime 5237 },
  { lower := 5398, upper := 5553, witness := RowWitness.topPrime 5393 },
  { lower := 5554, upper := 5691, witness := RowWitness.topPrime 5531 },
  { lower := 5692, upper := 5849, witness := RowWitness.topPrime 5689 },
  { lower := 5850, upper := 6009, witness := RowWitness.topPrime 5849 },
  { lower := 6010, upper := 6167, witness := RowWitness.topPrime 6007 },
  { lower := 6168, upper := 6323, witness := RowWitness.topPrime 6163 },
  { lower := 6324, upper := 6483, witness := RowWitness.topPrime 6323 },
  { lower := 6484, upper := 6641, witness := RowWitness.topPrime 6481 },
  { lower := 6642, upper := 6797, witness := RowWitness.topPrime 6637 },
  { lower := 6798, upper := 6953, witness := RowWitness.topPrime 6793 },
  { lower := 6954, upper := 7109, witness := RowWitness.topPrime 6949 },
  { lower := 7110, upper := 7269, witness := RowWitness.topPrime 7109 },
  { lower := 7270, upper := 7413, witness := RowWitness.topPrime 7253 },
  { lower := 7414, upper := 7571, witness := RowWitness.topPrime 7411 },
  { lower := 7572, upper := 7721, witness := RowWitness.topPrime 7561 },
  { lower := 7722, upper := 7877, witness := RowWitness.topPrime 7717 },
  { lower := 7878, upper := 8037, witness := RowWitness.topPrime 7877 },
  { lower := 8038, upper := 8177, witness := RowWitness.topPrime 8017 },
  { lower := 8178, upper := 8331, witness := RowWitness.topPrime 8171 },
  { lower := 8332, upper := 8489, witness := RowWitness.topPrime 8329 },
  { lower := 8490, upper := 8627, witness := RowWitness.topPrime 8467 },
  { lower := 8628, upper := 8787, witness := RowWitness.topPrime 8627 },
  { lower := 8788, upper := 8943, witness := RowWitness.topPrime 8783 },
  { lower := 8944, upper := 9101, witness := RowWitness.topPrime 8941 },
  { lower := 9102, upper := 9251, witness := RowWitness.topPrime 9091 },
  { lower := 9252, upper := 9401, witness := RowWitness.topPrime 9241 },
  { lower := 9402, upper := 9557, witness := RowWitness.topPrime 9397 },
  { lower := 9558, upper := 9711, witness := RowWitness.topPrime 9551 },
  { lower := 9712, upper := 9857, witness := RowWitness.topPrime 9697 },
  { lower := 9858, upper := 10017, witness := RowWitness.topPrime 9857 },
  { lower := 10018, upper := 10169, witness := RowWitness.topPrime 10009 },
  { lower := 10170, upper := 10329, witness := RowWitness.topPrime 10169 },
  { lower := 10330, upper := 10481, witness := RowWitness.topPrime 10321 },
  { lower := 10482, upper := 10637, witness := RowWitness.topPrime 10477 },
  { lower := 10638, upper := 10791, witness := RowWitness.topPrime 10631 },
  { lower := 10792, upper := 10949, witness := RowWitness.topPrime 10789 },
  { lower := 10950, upper := 11109, witness := RowWitness.topPrime 10949 },
  { lower := 11110, upper := 11253, witness := RowWitness.topPrime 11093 },
  { lower := 11254, upper := 11411, witness := RowWitness.topPrime 11251 },
  { lower := 11412, upper := 11571, witness := RowWitness.topPrime 11411 },
  { lower := 11572, upper := 11711, witness := RowWitness.topPrime 11551 },
  { lower := 11712, upper := 11861, witness := RowWitness.topPrime 11701 },
  { lower := 11862, upper := 11999, witness := RowWitness.topPrime 11839 },
  { lower := 12000, upper := 12147, witness := RowWitness.topPrime 11987 },
  { lower := 12148, upper := 12303, witness := RowWitness.topPrime 12143 },
  { lower := 12304, upper := 12461, witness := RowWitness.topPrime 12301 },
  { lower := 12462, upper := 12617, witness := RowWitness.topPrime 12457 },
  { lower := 12618, upper := 12773, witness := RowWitness.topPrime 12613 },
  { lower := 12774, upper := 12923, witness := RowWitness.topPrime 12763 },
  { lower := 12924, upper := 13083, witness := RowWitness.topPrime 12923 },
  { lower := 13084, upper := 13223, witness := RowWitness.topPrime 13063 },
  { lower := 13224, upper := 13379, witness := RowWitness.topPrime 13219 },
  { lower := 13380, upper := 13527, witness := RowWitness.topPrime 13367 },
  { lower := 13528, upper := 13683, witness := RowWitness.topPrime 13523 },
  { lower := 13684, upper := 13841, witness := RowWitness.topPrime 13681 },
  { lower := 13842, upper := 14001, witness := RowWitness.topPrime 13841 },
  { lower := 14002, upper := 14159, witness := RowWitness.topPrime 13999 },
  { lower := 14160, upper := 14319, witness := RowWitness.topPrime 14159 },
  { lower := 14320, upper := 14463, witness := RowWitness.topPrime 14303 },
  { lower := 14464, upper := 14621, witness := RowWitness.topPrime 14461 },
  { lower := 14622, upper := 14781, witness := RowWitness.topPrime 14621 },
  { lower := 14782, upper := 14939, witness := RowWitness.topPrime 14779 },
  { lower := 14940, upper := 15099, witness := RowWitness.topPrime 14939 },
  { lower := 15100, upper := 15251, witness := RowWitness.topPrime 15091 },
  { lower := 15252, upper := 15401, witness := RowWitness.topPrime 15241 },
  { lower := 15402, upper := 15561, witness := RowWitness.topPrime 15401 },
  { lower := 15562, upper := 15719, witness := RowWitness.topPrime 15559 },
  { lower := 15720, upper := 15843, witness := RowWitness.topPrime 15683 },
  { lower := 15844, upper := 15983, witness := RowWitness.topPrime 15823 },
  { lower := 15984, upper := 16133, witness := RowWitness.topPrime 15973 },
  { lower := 16134, upper := 16287, witness := RowWitness.topPrime 16127 },
  { lower := 16288, upper := 16433, witness := RowWitness.topPrime 16273 },
  { lower := 16434, upper := 16593, witness := RowWitness.topPrime 16433 },
  { lower := 16594, upper := 16733, witness := RowWitness.topPrime 16573 },
  { lower := 16734, upper := 16889, witness := RowWitness.topPrime 16729 },
  { lower := 16890, upper := 17049, witness := RowWitness.topPrime 16889 },
  { lower := 17050, upper := 17207, witness := RowWitness.topPrime 17047 },
  { lower := 17208, upper := 17367, witness := RowWitness.topPrime 17207 },
  { lower := 17368, upper := 17519, witness := RowWitness.topPrime 17359 },
  { lower := 17520, upper := 17679, witness := RowWitness.topPrime 17519 },
  { lower := 17680, upper := 17829, witness := RowWitness.topPrime 17669 },
  { lower := 17830, upper := 17987, witness := RowWitness.topPrime 17827 },
  { lower := 17988, upper := 18147, witness := RowWitness.topPrime 17987 },
  { lower := 18148, upper := 18303, witness := RowWitness.topPrime 18143 },
  { lower := 18304, upper := 18461, witness := RowWitness.topPrime 18301 },
  { lower := 18462, upper := 18621, witness := RowWitness.topPrime 18461 },
  { lower := 18622, upper := 18777, witness := RowWitness.topPrime 18617 },
  { lower := 18778, upper := 18933, witness := RowWitness.topPrime 18773 },
  { lower := 18934, upper := 19079, witness := RowWitness.topPrime 18919 },
  { lower := 19080, upper := 19239, witness := RowWitness.topPrime 19079 },
  { lower := 19240, upper := 19397, witness := RowWitness.topPrime 19237 },
  { lower := 19398, upper := 19551, witness := RowWitness.topPrime 19391 },
  { lower := 19552, upper := 19703, witness := RowWitness.topPrime 19543 },
  { lower := 19704, upper := 19859, witness := RowWitness.topPrime 19699 },
  { lower := 19860, upper := 20013, witness := RowWitness.topPrime 19853 },
  { lower := 20014, upper := 20171, witness := RowWitness.topPrime 20011 },
  { lower := 20172, upper := 20321, witness := RowWitness.topPrime 20161 },
  { lower := 20322, upper := 20457, witness := RowWitness.topPrime 20297 },
  { lower := 20458, upper := 20603, witness := RowWitness.topPrime 20443 },
  { lower := 20604, upper := 20759, witness := RowWitness.topPrime 20599 },
  { lower := 20760, upper := 20919, witness := RowWitness.topPrime 20759 },
  { lower := 20920, upper := 21063, witness := RowWitness.topPrime 20903 },
  { lower := 21064, upper := 21221, witness := RowWitness.topPrime 21061 },
  { lower := 21222, upper := 21381, witness := RowWitness.topPrime 21221 },
  { lower := 21382, upper := 21539, witness := RowWitness.topPrime 21379 },
  { lower := 21540, upper := 21689, witness := RowWitness.topPrime 21529 },
  { lower := 21690, upper := 21843, witness := RowWitness.topPrime 21683 },
  { lower := 21844, upper := 22001, witness := RowWitness.topPrime 21841 },
  { lower := 22002, upper := 22157, witness := RowWitness.topPrime 21997 },
  { lower := 22158, upper := 22317, witness := RowWitness.topPrime 22157 },
  { lower := 22318, upper := 22467, witness := RowWitness.topPrime 22307 },
  { lower := 22468, upper := 22613, witness := RowWitness.topPrime 22453 },
  { lower := 22614, upper := 22773, witness := RowWitness.topPrime 22613 },
  { lower := 22774, upper := 22929, witness := RowWitness.topPrime 22769 },
  { lower := 22930, upper := 23081, witness := RowWitness.topPrime 22921 },
  { lower := 23082, upper := 23241, witness := RowWitness.topPrime 23081 },
  { lower := 23242, upper := 23387, witness := RowWitness.topPrime 23227 },
  { lower := 23388, upper := 23531, witness := RowWitness.topPrime 23371 },
  { lower := 23532, upper := 23691, witness := RowWitness.topPrime 23531 },
  { lower := 23692, upper := 23849, witness := RowWitness.topPrime 23689 },
  { lower := 23850, upper := 23993, witness := RowWitness.topPrime 23833 },
  { lower := 23994, upper := 24153, witness := RowWitness.topPrime 23993 },
  { lower := 24154, upper := 24311, witness := RowWitness.topPrime 24151 },
  { lower := 24312, upper := 24441, witness := RowWitness.topPrime 24281 },
  { lower := 24442, upper := 24599, witness := RowWitness.topPrime 24439 },
  { lower := 24600, upper := 24753, witness := RowWitness.topPrime 24593 },
  { lower := 24754, upper := 24909, witness := RowWitness.topPrime 24749 },
  { lower := 24910, upper := 25067, witness := RowWitness.topPrime 24907 },
  { lower := 25068, upper := 25217, witness := RowWitness.topPrime 25057 },
  { lower := 25218, upper := 25349, witness := RowWitness.topPrime 25189 },
  { lower := 25350, upper := 25509, witness := RowWitness.topPrime 25349 },
  { lower := 25510, upper := 25631, witness := RowWitness.topPrime 25471 },
  { lower := 25632, upper := 25759, witness := RowWitness.topPrime 25621 },
  { lower := 26364, upper := 26404, witness := RowWitness.topPrime 26357 },
  { lower := 26508, upper := 26524, witness := RowWitness.topPrime 26501 },
  { lower := 26624, upper := 26757, witness := RowWitness.topPrime 26597 },
  { lower := 26758, upper := 26784, witness := RowWitness.topPrime 26737 },
  { lower := 27556, upper := 27596, witness := RowWitness.topPrime 27551 },
  { lower := 28125, upper := 28283, witness := RowWitness.topPrime 28123 },
  { lower := 28284, upper := 28285, witness := RowWitness.topPrime 28283 },
  { lower := 28561, upper := 28591, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28829, witness := RowWitness.topPrime 28669 },
  { lower := 28830, upper := 28832, witness := RowWitness.topPrime 28817 },
  { lower := 29791, upper := 29928, witness := RowWitness.topPrime 29789 },
  { lower := 30618, upper := 30753, witness := RowWitness.topPrime 30593 },
  { lower := 30754, upper := 30778, witness := RowWitness.topPrime 30727 },
  { lower := 30899, upper := 30918, witness := RowWitness.topPrime 30893 },
  { lower := 30926, upper := 31059, witness := RowWitness.topPrime 30911 },
  { lower := 31250, upper := 31409, witness := RowWitness.topPrime 31249 },
  { lower := 31410, upper := 31410, witness := RowWitness.topPrime 31397 },
  { lower := 31423, upper := 31489, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31844, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31987, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32928, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33649, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33774, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34479, witness := RowWitness.topPrime 34319 },
  { lower := 34480, upper := 34551, witness := RowWitness.topPrime 34471 },
  { lower := 37303, upper := 37370, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37463, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37653, witness := RowWitness.topPrime 37493 },
  { lower := 37654, upper := 37698, witness := RowWitness.topPrime 37649 },
  { lower := 38307, upper := 38451, witness := RowWitness.topPrime 38303 },
  { lower := 39326, upper := 39483, witness := RowWitness.topPrime 39323 },
  { lower := 39484, upper := 39486, witness := RowWitness.topPrime 39461 },
  { lower := 40401, upper := 40488, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41087, witness := RowWitness.topPrime 40927 },
  { lower := 41088, upper := 41091, witness := RowWitness.topPrime 41081 },
  { lower := 43750, upper := 43847, witness := RowWitness.topPrime 43721 },
  { lower := 45369, upper := 45413, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45956, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47681, witness := RowWitness.topPrime 47521 },
  { lower := 47682, upper := 47684, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48121, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48383, witness := RowWitness.topPrime 48371 },
  { lower := 48387, upper := 48533, witness := RowWitness.topPrime 48383 },
  { lower := 48778, upper := 48894, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49290, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49312, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49458, witness := RowWitness.topPrime 49369 },
  { lower := 51076, upper := 51165, witness := RowWitness.topPrime 51071 },
  { lower := 56307, upper := 56329, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56467, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57282, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57405, witness := RowWitness.topPrime 57331 },
  { lower := 62500, upper := 62570, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65696, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68799, witness := RowWitness.topPrime 68639 },
  { lower := 68800, upper := 68804, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69050, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71447, witness := RowWitness.topPrime 71287 },
  { lower := 71448, upper := 71449, witness := RowWitness.topPrime 71443 },
  { lower := 73205, upper := 73327, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85843, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89533, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93910, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98464, witness := RowWitness.topPrime 98411 },
  { lower := 102152, upper := 102170, witness := RowWitness.topPrime 102149 },
  { lower := 137842, upper := 137941, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149037, witness := RowWitness.topPrime 148949 }
]

def row161_layers : List CoverLayer := [
  { lower := 25760, upper := 51520, M := 14 },
  { lower := 51520, upper := 103040, M := 10 },
  { lower := 103040, upper := 206080, M := 8 },
  { lower := 206080, upper := 412160, M := 6 },
  { lower := 412160, upper := 824320, M := 4 },
  { lower := 824320, upper := 1648640, M := 3 },
  { lower := 1648640, upper := 3297280, M := 3 },
  { lower := 3297280, upper := 6594560, M := 2 },
  { lower := 6594560, upper := 10000000, M := 2 }
]

def row161 : FiniteCoverRow := {
  height := row161_height,
  goods := row161_goods,
  layers := row161_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good000_checked :
    goodSegmentCheck 161 53 114
      { lower := 324, upper := 477, witness := RowWitness.topPrime 317 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good001_checked :
    goodSegmentCheck 161 53 114
      { lower := 478, upper := 627, witness := RowWitness.topPrime 467 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good002_checked :
    goodSegmentCheck 161 53 114
      { lower := 628, upper := 779, witness := RowWitness.topPrime 619 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good003_checked :
    goodSegmentCheck 161 53 114
      { lower := 780, upper := 933, witness := RowWitness.topPrime 773 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good004_checked :
    goodSegmentCheck 161 53 114
      { lower := 934, upper := 1089, witness := RowWitness.topPrime 929 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good005_checked :
    goodSegmentCheck 161 53 114
      { lower := 1090, upper := 1247, witness := RowWitness.topPrime 1087 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good006_checked :
    goodSegmentCheck 161 53 114
      { lower := 1248, upper := 1397, witness := RowWitness.topPrime 1237 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good007_checked :
    goodSegmentCheck 161 53 114
      { lower := 1398, upper := 1541, witness := RowWitness.topPrime 1381 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good008_checked :
    goodSegmentCheck 161 53 114
      { lower := 1542, upper := 1691, witness := RowWitness.topPrime 1531 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good009_checked :
    goodSegmentCheck 161 53 114
      { lower := 1692, upper := 1829, witness := RowWitness.topPrime 1669 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good010_checked :
    goodSegmentCheck 161 53 114
      { lower := 1830, upper := 1983, witness := RowWitness.topPrime 1823 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good011_checked :
    goodSegmentCheck 161 53 114
      { lower := 1984, upper := 2139, witness := RowWitness.topPrime 1979 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good012_checked :
    goodSegmentCheck 161 53 114
      { lower := 2140, upper := 2297, witness := RowWitness.topPrime 2137 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good013_checked :
    goodSegmentCheck 161 53 114
      { lower := 2298, upper := 2457, witness := RowWitness.topPrime 2297 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good014_checked :
    goodSegmentCheck 161 53 114
      { lower := 2458, upper := 2607, witness := RowWitness.topPrime 2447 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good015_checked :
    goodSegmentCheck 161 53 114
      { lower := 2608, upper := 2753, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good016_checked :
    goodSegmentCheck 161 53 114
      { lower := 2754, upper := 2913, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good017_checked :
    goodSegmentCheck 161 53 114
      { lower := 2914, upper := 3069, witness := RowWitness.topPrime 2909 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good018_checked :
    goodSegmentCheck 161 53 114
      { lower := 3070, upper := 3227, witness := RowWitness.topPrime 3067 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good019_checked :
    goodSegmentCheck 161 53 114
      { lower := 3228, upper := 3381, witness := RowWitness.topPrime 3221 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good020_checked :
    goodSegmentCheck 161 53 114
      { lower := 3382, upper := 3533, witness := RowWitness.topPrime 3373 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good021_checked :
    goodSegmentCheck 161 53 114
      { lower := 3534, upper := 3693, witness := RowWitness.topPrime 3533 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good022_checked :
    goodSegmentCheck 161 53 114
      { lower := 3694, upper := 3851, witness := RowWitness.topPrime 3691 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good023_checked :
    goodSegmentCheck 161 53 114
      { lower := 3852, upper := 4011, witness := RowWitness.topPrime 3851 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good024_checked :
    goodSegmentCheck 161 53 114
      { lower := 4012, upper := 4167, witness := RowWitness.topPrime 4007 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good025_checked :
    goodSegmentCheck 161 53 114
      { lower := 4168, upper := 4319, witness := RowWitness.topPrime 4159 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good026_checked :
    goodSegmentCheck 161 53 114
      { lower := 4320, upper := 4457, witness := RowWitness.topPrime 4297 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good027_checked :
    goodSegmentCheck 161 53 114
      { lower := 4458, upper := 4617, witness := RowWitness.topPrime 4457 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good028_checked :
    goodSegmentCheck 161 53 114
      { lower := 4618, upper := 4763, witness := RowWitness.topPrime 4603 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good029_checked :
    goodSegmentCheck 161 53 114
      { lower := 4764, upper := 4919, witness := RowWitness.topPrime 4759 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good030_checked :
    goodSegmentCheck 161 53 114
      { lower := 4920, upper := 5079, witness := RowWitness.topPrime 4919 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good031_checked :
    goodSegmentCheck 161 53 114
      { lower := 5080, upper := 5237, witness := RowWitness.topPrime 5077 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good032_checked :
    goodSegmentCheck 161 53 114
      { lower := 5238, upper := 5397, witness := RowWitness.topPrime 5237 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good033_checked :
    goodSegmentCheck 161 53 114
      { lower := 5398, upper := 5553, witness := RowWitness.topPrime 5393 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good034_checked :
    goodSegmentCheck 161 53 114
      { lower := 5554, upper := 5691, witness := RowWitness.topPrime 5531 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good035_checked :
    goodSegmentCheck 161 53 114
      { lower := 5692, upper := 5849, witness := RowWitness.topPrime 5689 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good036_checked :
    goodSegmentCheck 161 53 114
      { lower := 5850, upper := 6009, witness := RowWitness.topPrime 5849 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good037_checked :
    goodSegmentCheck 161 53 114
      { lower := 6010, upper := 6167, witness := RowWitness.topPrime 6007 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good038_checked :
    goodSegmentCheck 161 53 114
      { lower := 6168, upper := 6323, witness := RowWitness.topPrime 6163 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good039_checked :
    goodSegmentCheck 161 53 114
      { lower := 6324, upper := 6483, witness := RowWitness.topPrime 6323 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good040_checked :
    goodSegmentCheck 161 53 114
      { lower := 6484, upper := 6641, witness := RowWitness.topPrime 6481 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good041_checked :
    goodSegmentCheck 161 53 114
      { lower := 6642, upper := 6797, witness := RowWitness.topPrime 6637 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good042_checked :
    goodSegmentCheck 161 53 114
      { lower := 6798, upper := 6953, witness := RowWitness.topPrime 6793 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good043_checked :
    goodSegmentCheck 161 53 114
      { lower := 6954, upper := 7109, witness := RowWitness.topPrime 6949 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good044_checked :
    goodSegmentCheck 161 53 114
      { lower := 7110, upper := 7269, witness := RowWitness.topPrime 7109 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good045_checked :
    goodSegmentCheck 161 53 114
      { lower := 7270, upper := 7413, witness := RowWitness.topPrime 7253 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good046_checked :
    goodSegmentCheck 161 53 114
      { lower := 7414, upper := 7571, witness := RowWitness.topPrime 7411 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good047_checked :
    goodSegmentCheck 161 53 114
      { lower := 7572, upper := 7721, witness := RowWitness.topPrime 7561 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good048_checked :
    goodSegmentCheck 161 53 114
      { lower := 7722, upper := 7877, witness := RowWitness.topPrime 7717 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good049_checked :
    goodSegmentCheck 161 53 114
      { lower := 7878, upper := 8037, witness := RowWitness.topPrime 7877 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good050_checked :
    goodSegmentCheck 161 53 114
      { lower := 8038, upper := 8177, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good051_checked :
    goodSegmentCheck 161 53 114
      { lower := 8178, upper := 8331, witness := RowWitness.topPrime 8171 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good052_checked :
    goodSegmentCheck 161 53 114
      { lower := 8332, upper := 8489, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good053_checked :
    goodSegmentCheck 161 53 114
      { lower := 8490, upper := 8627, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good054_checked :
    goodSegmentCheck 161 53 114
      { lower := 8628, upper := 8787, witness := RowWitness.topPrime 8627 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good055_checked :
    goodSegmentCheck 161 53 114
      { lower := 8788, upper := 8943, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good056_checked :
    goodSegmentCheck 161 53 114
      { lower := 8944, upper := 9101, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good057_checked :
    goodSegmentCheck 161 53 114
      { lower := 9102, upper := 9251, witness := RowWitness.topPrime 9091 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good058_checked :
    goodSegmentCheck 161 53 114
      { lower := 9252, upper := 9401, witness := RowWitness.topPrime 9241 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good059_checked :
    goodSegmentCheck 161 53 114
      { lower := 9402, upper := 9557, witness := RowWitness.topPrime 9397 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good060_checked :
    goodSegmentCheck 161 53 114
      { lower := 9558, upper := 9711, witness := RowWitness.topPrime 9551 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good061_checked :
    goodSegmentCheck 161 53 114
      { lower := 9712, upper := 9857, witness := RowWitness.topPrime 9697 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good062_checked :
    goodSegmentCheck 161 53 114
      { lower := 9858, upper := 10017, witness := RowWitness.topPrime 9857 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good063_checked :
    goodSegmentCheck 161 53 114
      { lower := 10018, upper := 10169, witness := RowWitness.topPrime 10009 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good064_checked :
    goodSegmentCheck 161 53 114
      { lower := 10170, upper := 10329, witness := RowWitness.topPrime 10169 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good065_checked :
    goodSegmentCheck 161 53 114
      { lower := 10330, upper := 10481, witness := RowWitness.topPrime 10321 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good066_checked :
    goodSegmentCheck 161 53 114
      { lower := 10482, upper := 10637, witness := RowWitness.topPrime 10477 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good067_checked :
    goodSegmentCheck 161 53 114
      { lower := 10638, upper := 10791, witness := RowWitness.topPrime 10631 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good068_checked :
    goodSegmentCheck 161 53 114
      { lower := 10792, upper := 10949, witness := RowWitness.topPrime 10789 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good069_checked :
    goodSegmentCheck 161 53 114
      { lower := 10950, upper := 11109, witness := RowWitness.topPrime 10949 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good070_checked :
    goodSegmentCheck 161 53 114
      { lower := 11110, upper := 11253, witness := RowWitness.topPrime 11093 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good071_checked :
    goodSegmentCheck 161 53 114
      { lower := 11254, upper := 11411, witness := RowWitness.topPrime 11251 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good072_checked :
    goodSegmentCheck 161 53 114
      { lower := 11412, upper := 11571, witness := RowWitness.topPrime 11411 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good073_checked :
    goodSegmentCheck 161 53 114
      { lower := 11572, upper := 11711, witness := RowWitness.topPrime 11551 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good074_checked :
    goodSegmentCheck 161 53 114
      { lower := 11712, upper := 11861, witness := RowWitness.topPrime 11701 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good075_checked :
    goodSegmentCheck 161 53 114
      { lower := 11862, upper := 11999, witness := RowWitness.topPrime 11839 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good076_checked :
    goodSegmentCheck 161 53 114
      { lower := 12000, upper := 12147, witness := RowWitness.topPrime 11987 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good077_checked :
    goodSegmentCheck 161 53 114
      { lower := 12148, upper := 12303, witness := RowWitness.topPrime 12143 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good078_checked :
    goodSegmentCheck 161 53 114
      { lower := 12304, upper := 12461, witness := RowWitness.topPrime 12301 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good079_checked :
    goodSegmentCheck 161 53 114
      { lower := 12462, upper := 12617, witness := RowWitness.topPrime 12457 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good080_checked :
    goodSegmentCheck 161 53 114
      { lower := 12618, upper := 12773, witness := RowWitness.topPrime 12613 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good081_checked :
    goodSegmentCheck 161 53 114
      { lower := 12774, upper := 12923, witness := RowWitness.topPrime 12763 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good082_checked :
    goodSegmentCheck 161 53 114
      { lower := 12924, upper := 13083, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good083_checked :
    goodSegmentCheck 161 53 114
      { lower := 13084, upper := 13223, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good084_checked :
    goodSegmentCheck 161 53 114
      { lower := 13224, upper := 13379, witness := RowWitness.topPrime 13219 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good085_checked :
    goodSegmentCheck 161 53 114
      { lower := 13380, upper := 13527, witness := RowWitness.topPrime 13367 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good086_checked :
    goodSegmentCheck 161 53 114
      { lower := 13528, upper := 13683, witness := RowWitness.topPrime 13523 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good087_checked :
    goodSegmentCheck 161 53 114
      { lower := 13684, upper := 13841, witness := RowWitness.topPrime 13681 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good088_checked :
    goodSegmentCheck 161 53 114
      { lower := 13842, upper := 14001, witness := RowWitness.topPrime 13841 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good089_checked :
    goodSegmentCheck 161 53 114
      { lower := 14002, upper := 14159, witness := RowWitness.topPrime 13999 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good090_checked :
    goodSegmentCheck 161 53 114
      { lower := 14160, upper := 14319, witness := RowWitness.topPrime 14159 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good091_checked :
    goodSegmentCheck 161 53 114
      { lower := 14320, upper := 14463, witness := RowWitness.topPrime 14303 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good092_checked :
    goodSegmentCheck 161 53 114
      { lower := 14464, upper := 14621, witness := RowWitness.topPrime 14461 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good093_checked :
    goodSegmentCheck 161 53 114
      { lower := 14622, upper := 14781, witness := RowWitness.topPrime 14621 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good094_checked :
    goodSegmentCheck 161 53 114
      { lower := 14782, upper := 14939, witness := RowWitness.topPrime 14779 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good095_checked :
    goodSegmentCheck 161 53 114
      { lower := 14940, upper := 15099, witness := RowWitness.topPrime 14939 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good096_checked :
    goodSegmentCheck 161 53 114
      { lower := 15100, upper := 15251, witness := RowWitness.topPrime 15091 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good097_checked :
    goodSegmentCheck 161 53 114
      { lower := 15252, upper := 15401, witness := RowWitness.topPrime 15241 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good098_checked :
    goodSegmentCheck 161 53 114
      { lower := 15402, upper := 15561, witness := RowWitness.topPrime 15401 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good099_checked :
    goodSegmentCheck 161 53 114
      { lower := 15562, upper := 15719, witness := RowWitness.topPrime 15559 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good100_checked :
    goodSegmentCheck 161 53 114
      { lower := 15720, upper := 15843, witness := RowWitness.topPrime 15683 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good101_checked :
    goodSegmentCheck 161 53 114
      { lower := 15844, upper := 15983, witness := RowWitness.topPrime 15823 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good102_checked :
    goodSegmentCheck 161 53 114
      { lower := 15984, upper := 16133, witness := RowWitness.topPrime 15973 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good103_checked :
    goodSegmentCheck 161 53 114
      { lower := 16134, upper := 16287, witness := RowWitness.topPrime 16127 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good104_checked :
    goodSegmentCheck 161 53 114
      { lower := 16288, upper := 16433, witness := RowWitness.topPrime 16273 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good105_checked :
    goodSegmentCheck 161 53 114
      { lower := 16434, upper := 16593, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good106_checked :
    goodSegmentCheck 161 53 114
      { lower := 16594, upper := 16733, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good107_checked :
    goodSegmentCheck 161 53 114
      { lower := 16734, upper := 16889, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good108_checked :
    goodSegmentCheck 161 53 114
      { lower := 16890, upper := 17049, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good109_checked :
    goodSegmentCheck 161 53 114
      { lower := 17050, upper := 17207, witness := RowWitness.topPrime 17047 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good110_checked :
    goodSegmentCheck 161 53 114
      { lower := 17208, upper := 17367, witness := RowWitness.topPrime 17207 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good111_checked :
    goodSegmentCheck 161 53 114
      { lower := 17368, upper := 17519, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good112_checked :
    goodSegmentCheck 161 53 114
      { lower := 17520, upper := 17679, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good113_checked :
    goodSegmentCheck 161 53 114
      { lower := 17680, upper := 17829, witness := RowWitness.topPrime 17669 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good114_checked :
    goodSegmentCheck 161 53 114
      { lower := 17830, upper := 17987, witness := RowWitness.topPrime 17827 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good115_checked :
    goodSegmentCheck 161 53 114
      { lower := 17988, upper := 18147, witness := RowWitness.topPrime 17987 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good116_checked :
    goodSegmentCheck 161 53 114
      { lower := 18148, upper := 18303, witness := RowWitness.topPrime 18143 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good117_checked :
    goodSegmentCheck 161 53 114
      { lower := 18304, upper := 18461, witness := RowWitness.topPrime 18301 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good118_checked :
    goodSegmentCheck 161 53 114
      { lower := 18462, upper := 18621, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good119_checked :
    goodSegmentCheck 161 53 114
      { lower := 18622, upper := 18777, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good120_checked :
    goodSegmentCheck 161 53 114
      { lower := 18778, upper := 18933, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good121_checked :
    goodSegmentCheck 161 53 114
      { lower := 18934, upper := 19079, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good122_checked :
    goodSegmentCheck 161 53 114
      { lower := 19080, upper := 19239, witness := RowWitness.topPrime 19079 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good123_checked :
    goodSegmentCheck 161 53 114
      { lower := 19240, upper := 19397, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good124_checked :
    goodSegmentCheck 161 53 114
      { lower := 19398, upper := 19551, witness := RowWitness.topPrime 19391 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good125_checked :
    goodSegmentCheck 161 53 114
      { lower := 19552, upper := 19703, witness := RowWitness.topPrime 19543 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good126_checked :
    goodSegmentCheck 161 53 114
      { lower := 19704, upper := 19859, witness := RowWitness.topPrime 19699 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good127_checked :
    goodSegmentCheck 161 53 114
      { lower := 19860, upper := 20013, witness := RowWitness.topPrime 19853 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good128_checked :
    goodSegmentCheck 161 53 114
      { lower := 20014, upper := 20171, witness := RowWitness.topPrime 20011 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good129_checked :
    goodSegmentCheck 161 53 114
      { lower := 20172, upper := 20321, witness := RowWitness.topPrime 20161 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good130_checked :
    goodSegmentCheck 161 53 114
      { lower := 20322, upper := 20457, witness := RowWitness.topPrime 20297 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good131_checked :
    goodSegmentCheck 161 53 114
      { lower := 20458, upper := 20603, witness := RowWitness.topPrime 20443 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good132_checked :
    goodSegmentCheck 161 53 114
      { lower := 20604, upper := 20759, witness := RowWitness.topPrime 20599 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good133_checked :
    goodSegmentCheck 161 53 114
      { lower := 20760, upper := 20919, witness := RowWitness.topPrime 20759 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good134_checked :
    goodSegmentCheck 161 53 114
      { lower := 20920, upper := 21063, witness := RowWitness.topPrime 20903 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good135_checked :
    goodSegmentCheck 161 53 114
      { lower := 21064, upper := 21221, witness := RowWitness.topPrime 21061 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good136_checked :
    goodSegmentCheck 161 53 114
      { lower := 21222, upper := 21381, witness := RowWitness.topPrime 21221 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good137_checked :
    goodSegmentCheck 161 53 114
      { lower := 21382, upper := 21539, witness := RowWitness.topPrime 21379 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good138_checked :
    goodSegmentCheck 161 53 114
      { lower := 21540, upper := 21689, witness := RowWitness.topPrime 21529 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good139_checked :
    goodSegmentCheck 161 53 114
      { lower := 21690, upper := 21843, witness := RowWitness.topPrime 21683 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good140_checked :
    goodSegmentCheck 161 53 114
      { lower := 21844, upper := 22001, witness := RowWitness.topPrime 21841 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good141_checked :
    goodSegmentCheck 161 53 114
      { lower := 22002, upper := 22157, witness := RowWitness.topPrime 21997 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good142_checked :
    goodSegmentCheck 161 53 114
      { lower := 22158, upper := 22317, witness := RowWitness.topPrime 22157 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good143_checked :
    goodSegmentCheck 161 53 114
      { lower := 22318, upper := 22467, witness := RowWitness.topPrime 22307 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good144_checked :
    goodSegmentCheck 161 53 114
      { lower := 22468, upper := 22613, witness := RowWitness.topPrime 22453 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good145_checked :
    goodSegmentCheck 161 53 114
      { lower := 22614, upper := 22773, witness := RowWitness.topPrime 22613 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good146_checked :
    goodSegmentCheck 161 53 114
      { lower := 22774, upper := 22929, witness := RowWitness.topPrime 22769 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good147_checked :
    goodSegmentCheck 161 53 114
      { lower := 22930, upper := 23081, witness := RowWitness.topPrime 22921 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good148_checked :
    goodSegmentCheck 161 53 114
      { lower := 23082, upper := 23241, witness := RowWitness.topPrime 23081 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good149_checked :
    goodSegmentCheck 161 53 114
      { lower := 23242, upper := 23387, witness := RowWitness.topPrime 23227 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good150_checked :
    goodSegmentCheck 161 53 114
      { lower := 23388, upper := 23531, witness := RowWitness.topPrime 23371 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good151_checked :
    goodSegmentCheck 161 53 114
      { lower := 23532, upper := 23691, witness := RowWitness.topPrime 23531 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good152_checked :
    goodSegmentCheck 161 53 114
      { lower := 23692, upper := 23849, witness := RowWitness.topPrime 23689 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good153_checked :
    goodSegmentCheck 161 53 114
      { lower := 23850, upper := 23993, witness := RowWitness.topPrime 23833 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good154_checked :
    goodSegmentCheck 161 53 114
      { lower := 23994, upper := 24153, witness := RowWitness.topPrime 23993 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good155_checked :
    goodSegmentCheck 161 53 114
      { lower := 24154, upper := 24311, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good156_checked :
    goodSegmentCheck 161 53 114
      { lower := 24312, upper := 24441, witness := RowWitness.topPrime 24281 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good157_checked :
    goodSegmentCheck 161 53 114
      { lower := 24442, upper := 24599, witness := RowWitness.topPrime 24439 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good158_checked :
    goodSegmentCheck 161 53 114
      { lower := 24600, upper := 24753, witness := RowWitness.topPrime 24593 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good159_checked :
    goodSegmentCheck 161 53 114
      { lower := 24754, upper := 24909, witness := RowWitness.topPrime 24749 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good160_checked :
    goodSegmentCheck 161 53 114
      { lower := 24910, upper := 25067, witness := RowWitness.topPrime 24907 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good161_checked :
    goodSegmentCheck 161 53 114
      { lower := 25068, upper := 25217, witness := RowWitness.topPrime 25057 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good162_checked :
    goodSegmentCheck 161 53 114
      { lower := 25218, upper := 25349, witness := RowWitness.topPrime 25189 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good163_checked :
    goodSegmentCheck 161 53 114
      { lower := 25350, upper := 25509, witness := RowWitness.topPrime 25349 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good164_checked :
    goodSegmentCheck 161 53 114
      { lower := 25510, upper := 25631, witness := RowWitness.topPrime 25471 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good165_checked :
    goodSegmentCheck 161 53 114
      { lower := 25632, upper := 25759, witness := RowWitness.topPrime 25621 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good166_checked :
    goodSegmentCheck 161 53 114
      { lower := 26364, upper := 26404, witness := RowWitness.topPrime 26357 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good167_checked :
    goodSegmentCheck 161 53 114
      { lower := 26508, upper := 26524, witness := RowWitness.topPrime 26501 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good168_checked :
    goodSegmentCheck 161 53 114
      { lower := 26624, upper := 26757, witness := RowWitness.topPrime 26597 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good169_checked :
    goodSegmentCheck 161 53 114
      { lower := 26758, upper := 26784, witness := RowWitness.topPrime 26737 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good170_checked :
    goodSegmentCheck 161 53 114
      { lower := 27556, upper := 27596, witness := RowWitness.topPrime 27551 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good171_checked :
    goodSegmentCheck 161 53 114
      { lower := 28125, upper := 28283, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good172_checked :
    goodSegmentCheck 161 53 114
      { lower := 28284, upper := 28285, witness := RowWitness.topPrime 28283 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good173_checked :
    goodSegmentCheck 161 53 114
      { lower := 28561, upper := 28591, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good174_checked :
    goodSegmentCheck 161 53 114
      { lower := 28672, upper := 28829, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good175_checked :
    goodSegmentCheck 161 53 114
      { lower := 28830, upper := 28832, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good176_checked :
    goodSegmentCheck 161 53 114
      { lower := 29791, upper := 29928, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good177_checked :
    goodSegmentCheck 161 53 114
      { lower := 30618, upper := 30753, witness := RowWitness.topPrime 30593 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good178_checked :
    goodSegmentCheck 161 53 114
      { lower := 30754, upper := 30778, witness := RowWitness.topPrime 30727 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good179_checked :
    goodSegmentCheck 161 53 114
      { lower := 30899, upper := 30918, witness := RowWitness.topPrime 30893 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good180_checked :
    goodSegmentCheck 161 53 114
      { lower := 30926, upper := 31059, witness := RowWitness.topPrime 30911 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good181_checked :
    goodSegmentCheck 161 53 114
      { lower := 31250, upper := 31409, witness := RowWitness.topPrime 31249 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good182_checked :
    goodSegmentCheck 161 53 114
      { lower := 31410, upper := 31410, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good183_checked :
    goodSegmentCheck 161 53 114
      { lower := 31423, upper := 31489, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good184_checked :
    goodSegmentCheck 161 53 114
      { lower := 31827, upper := 31844, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good185_checked :
    goodSegmentCheck 161 53 114
      { lower := 31974, upper := 31987, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good186_checked :
    goodSegmentCheck 161 53 114
      { lower := 32805, upper := 32928, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good187_checked :
    goodSegmentCheck 161 53 114
      { lower := 33614, upper := 33649, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good188_checked :
    goodSegmentCheck 161 53 114
      { lower := 33708, upper := 33774, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good189_checked :
    goodSegmentCheck 161 53 114
      { lower := 34322, upper := 34479, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good190_checked :
    goodSegmentCheck 161 53 114
      { lower := 34480, upper := 34551, witness := RowWitness.topPrime 34471 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good191_checked :
    goodSegmentCheck 161 53 114
      { lower := 37303, upper := 37370, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good192_checked :
    goodSegmentCheck 161 53 114
      { lower := 37446, upper := 37463, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good193_checked :
    goodSegmentCheck 161 53 114
      { lower := 37500, upper := 37653, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good194_checked :
    goodSegmentCheck 161 53 114
      { lower := 37654, upper := 37698, witness := RowWitness.topPrime 37649 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good195_checked :
    goodSegmentCheck 161 53 114
      { lower := 38307, upper := 38451, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good196_checked :
    goodSegmentCheck 161 53 114
      { lower := 39326, upper := 39483, witness := RowWitness.topPrime 39323 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good197_checked :
    goodSegmentCheck 161 53 114
      { lower := 39484, upper := 39486, witness := RowWitness.topPrime 39461 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good198_checked :
    goodSegmentCheck 161 53 114
      { lower := 40401, upper := 40488, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good199_checked :
    goodSegmentCheck 161 53 114
      { lower := 40931, upper := 41087, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good200_checked :
    goodSegmentCheck 161 53 114
      { lower := 41088, upper := 41091, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good201_checked :
    goodSegmentCheck 161 53 114
      { lower := 43750, upper := 43847, witness := RowWitness.topPrime 43721 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good202_checked :
    goodSegmentCheck 161 53 114
      { lower := 45369, upper := 45413, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good203_checked :
    goodSegmentCheck 161 53 114
      { lower := 45927, upper := 45956, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good204_checked :
    goodSegmentCheck 161 53 114
      { lower := 47526, upper := 47681, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good205_checked :
    goodSegmentCheck 161 53 114
      { lower := 47682, upper := 47684, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good206_checked :
    goodSegmentCheck 161 53 114
      { lower := 48013, upper := 48121, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good207_checked :
    goodSegmentCheck 161 53 114
      { lower := 48373, upper := 48383, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good208_checked :
    goodSegmentCheck 161 53 114
      { lower := 48387, upper := 48533, witness := RowWitness.topPrime 48383 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good209_checked :
    goodSegmentCheck 161 53 114
      { lower := 48778, upper := 48894, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good210_checked :
    goodSegmentCheck 161 53 114
      { lower := 49152, upper := 49290, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good211_checked :
    goodSegmentCheck 161 53 114
      { lower := 49298, upper := 49312, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good212_checked :
    goodSegmentCheck 161 53 114
      { lower := 49379, upper := 49458, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good213_checked :
    goodSegmentCheck 161 53 114
      { lower := 51076, upper := 51165, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good214_checked :
    goodSegmentCheck 161 53 114
      { lower := 56307, upper := 56329, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good215_checked :
    goodSegmentCheck 161 53 114
      { lower := 56454, upper := 56467, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good216_checked :
    goodSegmentCheck 161 53 114
      { lower := 57245, upper := 57282, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good217_checked :
    goodSegmentCheck 161 53 114
      { lower := 57344, upper := 57405, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good218_checked :
    goodSegmentCheck 161 53 114
      { lower := 62500, upper := 62570, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good219_checked :
    goodSegmentCheck 161 53 114
      { lower := 65610, upper := 65696, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good220_checked :
    goodSegmentCheck 161 53 114
      { lower := 68644, upper := 68799, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good221_checked :
    goodSegmentCheck 161 53 114
      { lower := 68800, upper := 68804, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good222_checked :
    goodSegmentCheck 161 53 114
      { lower := 68921, upper := 69050, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good223_checked :
    goodSegmentCheck 161 53 114
      { lower := 71289, upper := 71447, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_good224_checked :
    goodSegmentCheck 161 53 114
      { lower := 71448, upper := 71449, witness := RowWitness.topPrime 71443 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good225_checked :
    goodSegmentCheck 161 53 114
      { lower := 73205, upper := 73327, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good226_checked :
    goodSegmentCheck 161 53 114
      { lower := 85805, upper := 85843, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good227_checked :
    goodSegmentCheck 161 53 114
      { lower := 89383, upper := 89533, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good228_checked :
    goodSegmentCheck 161 53 114
      { lower := 93845, upper := 93910, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good229_checked :
    goodSegmentCheck 161 53 114
      { lower := 98415, upper := 98464, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good230_checked :
    goodSegmentCheck 161 53 114
      { lower := 102152, upper := 102170, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good231_checked :
    goodSegmentCheck 161 53 114
      { lower := 137842, upper := 137941, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row161_good232_checked :
    goodSegmentCheck 161 53 114
      { lower := 148955, upper := 149037, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 161) (r := 53) (s := 114) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_good232_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_goods_checked :
    row161.goods.all (goodSegmentCheck row161.height.i row161.height.r row161.height.s) = true := by
  change row161_goods.all (goodSegmentCheck 161 53 114) = true
  simp only [row161_goods, List.all_cons, List.all_nil,
    row161_good000_checked,
    row161_good001_checked,
    row161_good002_checked,
    row161_good003_checked,
    row161_good004_checked,
    row161_good005_checked,
    row161_good006_checked,
    row161_good007_checked,
    row161_good008_checked,
    row161_good009_checked,
    row161_good010_checked,
    row161_good011_checked,
    row161_good012_checked,
    row161_good013_checked,
    row161_good014_checked,
    row161_good015_checked,
    row161_good016_checked,
    row161_good017_checked,
    row161_good018_checked,
    row161_good019_checked,
    row161_good020_checked,
    row161_good021_checked,
    row161_good022_checked,
    row161_good023_checked,
    row161_good024_checked,
    row161_good025_checked,
    row161_good026_checked,
    row161_good027_checked,
    row161_good028_checked,
    row161_good029_checked,
    row161_good030_checked,
    row161_good031_checked,
    row161_good032_checked,
    row161_good033_checked,
    row161_good034_checked,
    row161_good035_checked,
    row161_good036_checked,
    row161_good037_checked,
    row161_good038_checked,
    row161_good039_checked,
    row161_good040_checked,
    row161_good041_checked,
    row161_good042_checked,
    row161_good043_checked,
    row161_good044_checked,
    row161_good045_checked,
    row161_good046_checked,
    row161_good047_checked,
    row161_good048_checked,
    row161_good049_checked,
    row161_good050_checked,
    row161_good051_checked,
    row161_good052_checked,
    row161_good053_checked,
    row161_good054_checked,
    row161_good055_checked,
    row161_good056_checked,
    row161_good057_checked,
    row161_good058_checked,
    row161_good059_checked,
    row161_good060_checked,
    row161_good061_checked,
    row161_good062_checked,
    row161_good063_checked,
    row161_good064_checked,
    row161_good065_checked,
    row161_good066_checked,
    row161_good067_checked,
    row161_good068_checked,
    row161_good069_checked,
    row161_good070_checked,
    row161_good071_checked,
    row161_good072_checked,
    row161_good073_checked,
    row161_good074_checked,
    row161_good075_checked,
    row161_good076_checked,
    row161_good077_checked,
    row161_good078_checked,
    row161_good079_checked,
    row161_good080_checked,
    row161_good081_checked,
    row161_good082_checked,
    row161_good083_checked,
    row161_good084_checked,
    row161_good085_checked,
    row161_good086_checked,
    row161_good087_checked,
    row161_good088_checked,
    row161_good089_checked,
    row161_good090_checked,
    row161_good091_checked,
    row161_good092_checked,
    row161_good093_checked,
    row161_good094_checked,
    row161_good095_checked,
    row161_good096_checked,
    row161_good097_checked,
    row161_good098_checked,
    row161_good099_checked,
    row161_good100_checked,
    row161_good101_checked,
    row161_good102_checked,
    row161_good103_checked,
    row161_good104_checked,
    row161_good105_checked,
    row161_good106_checked,
    row161_good107_checked,
    row161_good108_checked,
    row161_good109_checked,
    row161_good110_checked,
    row161_good111_checked,
    row161_good112_checked,
    row161_good113_checked,
    row161_good114_checked,
    row161_good115_checked,
    row161_good116_checked,
    row161_good117_checked,
    row161_good118_checked,
    row161_good119_checked,
    row161_good120_checked,
    row161_good121_checked,
    row161_good122_checked,
    row161_good123_checked,
    row161_good124_checked,
    row161_good125_checked,
    row161_good126_checked,
    row161_good127_checked,
    row161_good128_checked,
    row161_good129_checked,
    row161_good130_checked,
    row161_good131_checked,
    row161_good132_checked,
    row161_good133_checked,
    row161_good134_checked,
    row161_good135_checked,
    row161_good136_checked,
    row161_good137_checked,
    row161_good138_checked,
    row161_good139_checked,
    row161_good140_checked,
    row161_good141_checked,
    row161_good142_checked,
    row161_good143_checked,
    row161_good144_checked,
    row161_good145_checked,
    row161_good146_checked,
    row161_good147_checked,
    row161_good148_checked,
    row161_good149_checked,
    row161_good150_checked,
    row161_good151_checked,
    row161_good152_checked,
    row161_good153_checked,
    row161_good154_checked,
    row161_good155_checked,
    row161_good156_checked,
    row161_good157_checked,
    row161_good158_checked,
    row161_good159_checked,
    row161_good160_checked,
    row161_good161_checked,
    row161_good162_checked,
    row161_good163_checked,
    row161_good164_checked,
    row161_good165_checked,
    row161_good166_checked,
    row161_good167_checked,
    row161_good168_checked,
    row161_good169_checked,
    row161_good170_checked,
    row161_good171_checked,
    row161_good172_checked,
    row161_good173_checked,
    row161_good174_checked,
    row161_good175_checked,
    row161_good176_checked,
    row161_good177_checked,
    row161_good178_checked,
    row161_good179_checked,
    row161_good180_checked,
    row161_good181_checked,
    row161_good182_checked,
    row161_good183_checked,
    row161_good184_checked,
    row161_good185_checked,
    row161_good186_checked,
    row161_good187_checked,
    row161_good188_checked,
    row161_good189_checked,
    row161_good190_checked,
    row161_good191_checked,
    row161_good192_checked,
    row161_good193_checked,
    row161_good194_checked,
    row161_good195_checked,
    row161_good196_checked,
    row161_good197_checked,
    row161_good198_checked,
    row161_good199_checked,
    row161_good200_checked,
    row161_good201_checked,
    row161_good202_checked,
    row161_good203_checked,
    row161_good204_checked,
    row161_good205_checked,
    row161_good206_checked,
    row161_good207_checked,
    row161_good208_checked,
    row161_good209_checked,
    row161_good210_checked,
    row161_good211_checked,
    row161_good212_checked,
    row161_good213_checked,
    row161_good214_checked,
    row161_good215_checked,
    row161_good216_checked,
    row161_good217_checked,
    row161_good218_checked,
    row161_good219_checked,
    row161_good220_checked,
    row161_good221_checked,
    row161_good222_checked,
    row161_good223_checked,
    row161_good224_checked,
    row161_good225_checked,
    row161_good226_checked,
    row161_good227_checked,
    row161_good228_checked,
    row161_good229_checked,
    row161_good230_checked,
    row161_good231_checked,
    row161_good232_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_registered :
    decide (row161.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row161_small_checked :
    coverCheck (2 * row161.height.i + 2) (row161.height.i * (row161.height.i - 1) - 1)
      (row161.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row161_layerCover_checked :
    coverCheck (row161.height.i * (row161.height.i - 1)) (row161.height.n0 - 1)
      (row161.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row161_bounds : List NatInterval :=
  [(324, 477), (478, 627), (628, 779), (780, 933), (934, 1089), (1090, 1247), (1248, 1397), (1398, 1541), (1542, 1691), (1692, 1829), (1830, 1983), (1984, 2139), (2140, 2297), (2298, 2457), (2458, 2607), (2608, 2753), (2754, 2913), (2914, 3069), (3070, 3227), (3228, 3381), (3382, 3533), (3534, 3693), (3694, 3851), (3852, 4011), (4012, 4167), (4168, 4319), (4320, 4457), (4458, 4617), (4618, 4763), (4764, 4919), (4920, 5079), (5080, 5237), (5238, 5397), (5398, 5553), (5554, 5691), (5692, 5849), (5850, 6009), (6010, 6167), (6168, 6323), (6324, 6483), (6484, 6641), (6642, 6797), (6798, 6953), (6954, 7109), (7110, 7269), (7270, 7413), (7414, 7571), (7572, 7721), (7722, 7877), (7878, 8037), (8038, 8177), (8178, 8331), (8332, 8489), (8490, 8627), (8628, 8787), (8788, 8943), (8944, 9101), (9102, 9251), (9252, 9401), (9402, 9557), (9558, 9711), (9712, 9857), (9858, 10017), (10018, 10169), (10170, 10329), (10330, 10481), (10482, 10637), (10638, 10791), (10792, 10949), (10950, 11109), (11110, 11253), (11254, 11411), (11412, 11571), (11572, 11711), (11712, 11861), (11862, 11999), (12000, 12147), (12148, 12303), (12304, 12461), (12462, 12617), (12618, 12773), (12774, 12923), (12924, 13083), (13084, 13223), (13224, 13379), (13380, 13527), (13528, 13683), (13684, 13841), (13842, 14001), (14002, 14159), (14160, 14319), (14320, 14463), (14464, 14621), (14622, 14781), (14782, 14939), (14940, 15099), (15100, 15251), (15252, 15401), (15402, 15561), (15562, 15719), (15720, 15843), (15844, 15983), (15984, 16133), (16134, 16287), (16288, 16433), (16434, 16593), (16594, 16733), (16734, 16889), (16890, 17049), (17050, 17207), (17208, 17367), (17368, 17519), (17520, 17679), (17680, 17829), (17830, 17987), (17988, 18147), (18148, 18303), (18304, 18461), (18462, 18621), (18622, 18777), (18778, 18933), (18934, 19079), (19080, 19239), (19240, 19397), (19398, 19551), (19552, 19703), (19704, 19859), (19860, 20013), (20014, 20171), (20172, 20321), (20322, 20457), (20458, 20603), (20604, 20759), (20760, 20919), (20920, 21063), (21064, 21221), (21222, 21381), (21382, 21539), (21540, 21689), (21690, 21843), (21844, 22001), (22002, 22157), (22158, 22317), (22318, 22467), (22468, 22613), (22614, 22773), (22774, 22929), (22930, 23081), (23082, 23241), (23242, 23387), (23388, 23531), (23532, 23691), (23692, 23849), (23850, 23993), (23994, 24153), (24154, 24311), (24312, 24441), (24442, 24599), (24600, 24753), (24754, 24909), (24910, 25067), (25068, 25217), (25218, 25349), (25350, 25509), (25510, 25631), (25632, 25759), (26364, 26404), (26508, 26524), (26624, 26757), (26758, 26784), (27556, 27596), (28125, 28283), (28284, 28285), (28561, 28591), (28672, 28829), (28830, 28832), (29791, 29928), (30618, 30753), (30754, 30778), (30899, 30918), (30926, 31059), (31250, 31409), (31410, 31410), (31423, 31489), (31827, 31844), (31974, 31987), (32805, 32928), (33614, 33649), (33708, 33774), (34322, 34479), (34480, 34551), (37303, 37370), (37446, 37463), (37500, 37653), (37654, 37698), (38307, 38451), (39326, 39483), (39484, 39486), (40401, 40488), (40931, 41087), (41088, 41091), (43750, 43847), (45369, 45413), (45927, 45956), (47526, 47681), (47682, 47684), (48013, 48121), (48373, 48383), (48387, 48533), (48778, 48894), (49152, 49290), (49298, 49312), (49379, 49458), (51076, 51165), (56307, 56329), (56454, 56467), (57245, 57282), (57344, 57405), (62500, 62570), (65610, 65696), (68644, 68799), (68800, 68804), (68921, 69050), (71289, 71447), (71448, 71449), (73205, 73327), (85805, 85843), (89383, 89533), (93845, 93910), (98415, 98464), (102152, 102170), (137842, 137941), (148955, 149037)]

theorem row161_bounds_eq : row161.goods.map goodSegmentBounds = row161_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row161_layer000_intervals : List ColouredInterval :=
  [(2, 26624, 26784), (2, 28672, 28832), (2, 28672, 28832), (2, 32768, 32928), (2, 36864, 37024), (2, 40960, 41120), (2, 45056, 45216), (2, 49152, 49312), (2, 32768, 32928), (2, 40960, 41120), (2, 49152, 49312), (2, 32768, 32928), (2, 49152, 49312), (2, 32768, 32928), (3, 26244, 26404), (3, 28431, 28591), (3, 30618, 30778), (3, 26244, 26404), (3, 32805, 32965), (3, 39366, 39526), (3, 45927, 46087), (3, 39366, 39526), (5, 28125, 28285), (5, 31250, 31410), (5, 34375, 34535), (5, 37500, 37660), (5, 40625, 40785), (5, 43750, 43910), (5, 31250, 31410), (5, 46875, 47035), (7, 33614, 33774), (11, 29282, 29442), (11, 43923, 44083), (13, 26364, 26524), (13, 28561, 28721), (13, 30758, 30918), (13, 28561, 28721), (17, 29478, 29638), (17, 34391, 34551), (17, 39304, 39464), (17, 44217, 44377), (17, 49130, 49290), (19, 27436, 27596), (19, 34295, 34455), (19, 41154, 41314), (19, 48013, 48173), (29, 48778, 48938), (31, 29791, 29951), (37, 50653, 50813), (43, 25886, 26046), (47, 26508, 26668), (47, 28717, 28877), (47, 30926, 31086), (53, 28090, 28250), (53, 30899, 31059), (53, 33708, 33868), (53, 36517, 36677), (53, 39326, 39486), (59, 27848, 28008), (59, 31329, 31489), (59, 34810, 34970), (59, 38291, 38451), (59, 41772, 41932), (59, 45253, 45413), (59, 48734, 48894), (61, 26047, 26207), (61, 29768, 29928), (61, 33489, 33649), (61, 37210, 37370), (61, 40931, 41091), (61, 44652, 44812), (61, 48373, 48533), (67, 26934, 27094), (67, 31423, 31583), (67, 35912, 36072), (67, 40401, 40561), (67, 44890, 45050), (67, 49379, 49539), (71, 30246, 30406), (71, 35287, 35447), (71, 40328, 40488), (71, 45369, 45529), (71, 50410, 50570), (73, 26645, 26805), (73, 31974, 32134), (73, 37303, 37463), (73, 42632, 42792), (73, 47961, 48121), (79, 31205, 31365), (79, 37446, 37606), (79, 43687, 43847), (79, 49928, 50088), (83, 27556, 27716), (83, 34445, 34605), (83, 41334, 41494), (83, 48223, 48383), (89, 31684, 31844), (89, 39605, 39765), (89, 47526, 47686), (97, 28227, 28387), (97, 37636, 37796), (97, 47045, 47205), (101, 30603, 30763), (101, 40804, 40964), (101, 51005, 51165), (103, 31827, 31987), (103, 42436, 42596), (107, 34347, 34507), (107, 45796, 45956), (109, 35643, 35803), (109, 47524, 47684), (113, 38307, 38467), (113, 51076, 51236), (127, 32258, 32418), (127, 48387, 48547), (131, 34322, 34482), (131, 51483, 51519), (137, 37538, 37698), (139, 38642, 38802), (149, 44402, 44562), (151, 45602, 45762), (157, 49298, 49458)]

def row161_layer000_block000 : List ColouredInterval :=
  [(2, 26624, 26784), (2, 28672, 28832), (2, 28672, 28832), (2, 32768, 32928), (2, 36864, 37024), (2, 40960, 41120), (2, 45056, 45216), (2, 49152, 49312), (2, 32768, 32928), (2, 40960, 41120), (2, 49152, 49312), (2, 32768, 32928), (2, 49152, 49312), (2, 32768, 32928), (3, 26244, 26404), (3, 28431, 28591)]

def row161_layer000_block001 : List ColouredInterval :=
  [(3, 30618, 30778), (3, 26244, 26404), (3, 32805, 32965), (3, 39366, 39526), (3, 45927, 46087), (3, 39366, 39526), (5, 28125, 28285), (5, 31250, 31410), (5, 34375, 34535), (5, 37500, 37660), (5, 40625, 40785), (5, 43750, 43910), (5, 31250, 31410), (5, 46875, 47035), (7, 33614, 33774), (11, 29282, 29442)]

def row161_layer000_block002 : List ColouredInterval :=
  [(11, 43923, 44083), (13, 26364, 26524), (13, 28561, 28721), (13, 30758, 30918), (13, 28561, 28721), (17, 29478, 29638), (17, 34391, 34551), (17, 39304, 39464), (17, 44217, 44377), (17, 49130, 49290), (19, 27436, 27596), (19, 34295, 34455), (19, 41154, 41314), (19, 48013, 48173), (29, 48778, 48938), (31, 29791, 29951)]

def row161_layer000_block003 : List ColouredInterval :=
  [(37, 50653, 50813), (43, 25886, 26046), (47, 26508, 26668), (47, 28717, 28877), (47, 30926, 31086), (53, 28090, 28250), (53, 30899, 31059), (53, 33708, 33868), (53, 36517, 36677), (53, 39326, 39486), (59, 27848, 28008), (59, 31329, 31489), (59, 34810, 34970), (59, 38291, 38451), (59, 41772, 41932), (59, 45253, 45413)]

def row161_layer000_block004 : List ColouredInterval :=
  [(59, 48734, 48894), (61, 26047, 26207), (61, 29768, 29928), (61, 33489, 33649), (61, 37210, 37370), (61, 40931, 41091), (61, 44652, 44812), (61, 48373, 48533), (67, 26934, 27094), (67, 31423, 31583), (67, 35912, 36072), (67, 40401, 40561), (67, 44890, 45050), (67, 49379, 49539), (71, 30246, 30406), (71, 35287, 35447)]

def row161_layer000_block005 : List ColouredInterval :=
  [(71, 40328, 40488), (71, 45369, 45529), (71, 50410, 50570), (73, 26645, 26805), (73, 31974, 32134), (73, 37303, 37463), (73, 42632, 42792), (73, 47961, 48121), (79, 31205, 31365), (79, 37446, 37606), (79, 43687, 43847), (79, 49928, 50088), (83, 27556, 27716), (83, 34445, 34605), (83, 41334, 41494), (83, 48223, 48383)]

def row161_layer000_block006 : List ColouredInterval :=
  [(89, 31684, 31844), (89, 39605, 39765), (89, 47526, 47686), (97, 28227, 28387), (97, 37636, 37796), (97, 47045, 47205), (101, 30603, 30763), (101, 40804, 40964), (101, 51005, 51165), (103, 31827, 31987), (103, 42436, 42596), (107, 34347, 34507), (107, 45796, 45956), (109, 35643, 35803), (109, 47524, 47684), (113, 38307, 38467)]

def row161_layer000_block007 : List ColouredInterval :=
  [(113, 51076, 51236), (127, 32258, 32418), (127, 48387, 48547), (131, 34322, 34482), (131, 51483, 51519), (137, 37538, 37698), (139, 38642, 38802), (149, 44402, 44562), (151, 45602, 45762), (157, 49298, 49458)]

def row161_layer000_chunks : List (List ColouredInterval) :=
  [row161_layer000_block000, row161_layer000_block001, row161_layer000_block002, row161_layer000_block003, row161_layer000_block004, row161_layer000_block005, row161_layer000_block006, row161_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_arithmetic : LayerArithmeticValid row161.height { lower := 25760, upper := 51520, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_enumeration :
    activePowerIntervalList 161 14 25760 51520 = row161_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs000 :
    row161_layer000_block000.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs001 :
    row161_layer000_block001.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs002 :
    row161_layer000_block002.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs003 :
    row161_layer000_block003.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs004 :
    row161_layer000_block004.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs005 :
    row161_layer000_block005.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs006 :
    row161_layer000_block006.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_pairs007 :
    row161_layer000_block007.all (fun I => row161_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row161_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_chunks_eq : row161_layer000_chunks.flatten = row161_layer000_intervals := by
  rfl

theorem row161_layer000_pairs : pairCoverCheck row161_layer000_intervals row161_bounds = true := by
  apply pairCoverCheck_of_chunks row161_layer000_chunks_eq
  intro block hblock
  simp only [row161_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row161_layer000_pairs000
  · exact row161_layer000_pairs001
  · exact row161_layer000_pairs002
  · exact row161_layer000_pairs003
  · exact row161_layer000_pairs004
  · exact row161_layer000_pairs005
  · exact row161_layer000_pairs006
  · exact row161_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row161_layer000_checked :
    coverLayerCheck row161.height row161.goods { lower := 25760, upper := 51520, M := 14 } = true := by
  exact coverLayerCheck_of_parts row161_layer000_arithmetic row161_layer000_enumeration row161_bounds_eq row161_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row161_layer000_checked
