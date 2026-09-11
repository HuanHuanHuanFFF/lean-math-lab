import research.tasks.«B699-Binomial».runs.«20260909-low-index-structure-b41a5a63».lean.FiniteCover
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.LayerParts
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row167_height : HeightCertificateDatum := { i := 167, r := 55, s := 119, n0Power10 := 7 }

def row167_goods : List GoodSegment := [
  { lower := 336, upper := 497, witness := RowWitness.topPrime 331 },
  { lower := 498, upper := 657, witness := RowWitness.topPrime 491 },
  { lower := 658, upper := 819, witness := RowWitness.topPrime 653 },
  { lower := 820, upper := 977, witness := RowWitness.topPrime 811 },
  { lower := 978, upper := 1143, witness := RowWitness.topPrime 977 },
  { lower := 1144, upper := 1295, witness := RowWitness.topPrime 1129 },
  { lower := 1296, upper := 1457, witness := RowWitness.topPrime 1291 },
  { lower := 1458, upper := 1619, witness := RowWitness.topPrime 1453 },
  { lower := 1620, upper := 1785, witness := RowWitness.topPrime 1619 },
  { lower := 1786, upper := 1949, witness := RowWitness.topPrime 1783 },
  { lower := 1950, upper := 2115, witness := RowWitness.topPrime 1949 },
  { lower := 2116, upper := 2279, witness := RowWitness.topPrime 2113 },
  { lower := 2280, upper := 2439, witness := RowWitness.topPrime 2273 },
  { lower := 2440, upper := 2603, witness := RowWitness.topPrime 2437 },
  { lower := 2604, upper := 2759, witness := RowWitness.topPrime 2593 },
  { lower := 2760, upper := 2919, witness := RowWitness.topPrime 2753 },
  { lower := 2920, upper := 3083, witness := RowWitness.topPrime 2917 },
  { lower := 3084, upper := 3249, witness := RowWitness.topPrime 3083 },
  { lower := 3250, upper := 3395, witness := RowWitness.topPrime 3229 },
  { lower := 3396, upper := 3557, witness := RowWitness.topPrime 3391 },
  { lower := 3558, upper := 3723, witness := RowWitness.topPrime 3557 },
  { lower := 3724, upper := 3885, witness := RowWitness.topPrime 3719 },
  { lower := 3886, upper := 4047, witness := RowWitness.topPrime 3881 },
  { lower := 4048, upper := 4193, witness := RowWitness.topPrime 4027 },
  { lower := 4194, upper := 4343, witness := RowWitness.topPrime 4177 },
  { lower := 4344, upper := 4505, witness := RowWitness.topPrime 4339 },
  { lower := 4506, upper := 4659, witness := RowWitness.topPrime 4493 },
  { lower := 4660, upper := 4823, witness := RowWitness.topPrime 4657 },
  { lower := 4824, upper := 4983, witness := RowWitness.topPrime 4817 },
  { lower := 4984, upper := 5139, witness := RowWitness.topPrime 4973 },
  { lower := 5140, upper := 5285, witness := RowWitness.topPrime 5119 },
  { lower := 5286, upper := 5447, witness := RowWitness.topPrime 5281 },
  { lower := 5448, upper := 5609, witness := RowWitness.topPrime 5443 },
  { lower := 5610, upper := 5757, witness := RowWitness.topPrime 5591 },
  { lower := 5758, upper := 5915, witness := RowWitness.topPrime 5749 },
  { lower := 5916, upper := 6069, witness := RowWitness.topPrime 5903 },
  { lower := 6070, upper := 6233, witness := RowWitness.topPrime 6067 },
  { lower := 6234, upper := 6395, witness := RowWitness.topPrime 6229 },
  { lower := 6396, upper := 6555, witness := RowWitness.topPrime 6389 },
  { lower := 6556, upper := 6719, witness := RowWitness.topPrime 6553 },
  { lower := 6720, upper := 6885, witness := RowWitness.topPrime 6719 },
  { lower := 6886, upper := 7049, witness := RowWitness.topPrime 6883 },
  { lower := 7050, upper := 7209, witness := RowWitness.topPrime 7043 },
  { lower := 7210, upper := 7373, witness := RowWitness.topPrime 7207 },
  { lower := 7374, upper := 7535, witness := RowWitness.topPrime 7369 },
  { lower := 7536, upper := 7695, witness := RowWitness.topPrime 7529 },
  { lower := 7696, upper := 7857, witness := RowWitness.topPrime 7691 },
  { lower := 7858, upper := 8019, witness := RowWitness.topPrime 7853 },
  { lower := 8020, upper := 8183, witness := RowWitness.topPrime 8017 },
  { lower := 8184, upper := 8345, witness := RowWitness.topPrime 8179 },
  { lower := 8346, upper := 8495, witness := RowWitness.topPrime 8329 },
  { lower := 8496, upper := 8633, witness := RowWitness.topPrime 8467 },
  { lower := 8634, upper := 8795, witness := RowWitness.topPrime 8629 },
  { lower := 8796, upper := 8949, witness := RowWitness.topPrime 8783 },
  { lower := 8950, upper := 9107, witness := RowWitness.topPrime 8941 },
  { lower := 9108, upper := 9269, witness := RowWitness.topPrime 9103 },
  { lower := 9270, upper := 9423, witness := RowWitness.topPrime 9257 },
  { lower := 9424, upper := 9587, witness := RowWitness.topPrime 9421 },
  { lower := 9588, upper := 9753, witness := RowWitness.topPrime 9587 },
  { lower := 9754, upper := 9915, witness := RowWitness.topPrime 9749 },
  { lower := 9916, upper := 10073, witness := RowWitness.topPrime 9907 },
  { lower := 10074, upper := 10235, witness := RowWitness.topPrime 10069 },
  { lower := 10236, upper := 10389, witness := RowWitness.topPrime 10223 },
  { lower := 10390, upper := 10535, witness := RowWitness.topPrime 10369 },
  { lower := 10536, upper := 10697, witness := RowWitness.topPrime 10531 },
  { lower := 10698, upper := 10857, witness := RowWitness.topPrime 10691 },
  { lower := 10858, upper := 11019, witness := RowWitness.topPrime 10853 },
  { lower := 11020, upper := 11169, witness := RowWitness.topPrime 11003 },
  { lower := 11170, upper := 11327, witness := RowWitness.topPrime 11161 },
  { lower := 11328, upper := 11487, witness := RowWitness.topPrime 11321 },
  { lower := 11488, upper := 11649, witness := RowWitness.topPrime 11483 },
  { lower := 11650, upper := 11799, witness := RowWitness.topPrime 11633 },
  { lower := 11800, upper := 11955, witness := RowWitness.topPrime 11789 },
  { lower := 11956, upper := 12119, witness := RowWitness.topPrime 11953 },
  { lower := 12120, upper := 12285, witness := RowWitness.topPrime 12119 },
  { lower := 12286, upper := 12447, witness := RowWitness.topPrime 12281 },
  { lower := 12448, upper := 12603, witness := RowWitness.topPrime 12437 },
  { lower := 12604, upper := 12767, witness := RowWitness.topPrime 12601 },
  { lower := 12768, upper := 12929, witness := RowWitness.topPrime 12763 },
  { lower := 12930, upper := 13089, witness := RowWitness.topPrime 12923 },
  { lower := 13090, upper := 13229, witness := RowWitness.topPrime 13063 },
  { lower := 13230, upper := 13395, witness := RowWitness.topPrime 13229 },
  { lower := 13396, upper := 13547, witness := RowWitness.topPrime 13381 },
  { lower := 13548, upper := 13703, witness := RowWitness.topPrime 13537 },
  { lower := 13704, upper := 13863, witness := RowWitness.topPrime 13697 },
  { lower := 13864, upper := 14025, witness := RowWitness.topPrime 13859 },
  { lower := 14026, upper := 14177, witness := RowWitness.topPrime 14011 },
  { lower := 14178, upper := 14343, witness := RowWitness.topPrime 14177 },
  { lower := 14344, upper := 14507, witness := RowWitness.topPrime 14341 },
  { lower := 14508, upper := 14669, witness := RowWitness.topPrime 14503 },
  { lower := 14670, upper := 14835, witness := RowWitness.topPrime 14669 },
  { lower := 14836, upper := 14997, witness := RowWitness.topPrime 14831 },
  { lower := 14998, upper := 15149, witness := RowWitness.topPrime 14983 },
  { lower := 15150, upper := 15315, witness := RowWitness.topPrime 15149 },
  { lower := 15316, upper := 15479, witness := RowWitness.topPrime 15313 },
  { lower := 15480, upper := 15639, witness := RowWitness.topPrime 15473 },
  { lower := 15640, upper := 15795, witness := RowWitness.topPrime 15629 },
  { lower := 15796, upper := 15957, witness := RowWitness.topPrime 15791 },
  { lower := 15958, upper := 16103, witness := RowWitness.topPrime 15937 },
  { lower := 16104, upper := 16269, witness := RowWitness.topPrime 16103 },
  { lower := 16270, upper := 16433, witness := RowWitness.topPrime 16267 },
  { lower := 16434, upper := 16599, witness := RowWitness.topPrime 16433 },
  { lower := 16600, upper := 16739, witness := RowWitness.topPrime 16573 },
  { lower := 16740, upper := 16895, witness := RowWitness.topPrime 16729 },
  { lower := 16896, upper := 17055, witness := RowWitness.topPrime 16889 },
  { lower := 17056, upper := 17219, witness := RowWitness.topPrime 17053 },
  { lower := 17220, upper := 17375, witness := RowWitness.topPrime 17209 },
  { lower := 17376, upper := 17525, witness := RowWitness.topPrime 17359 },
  { lower := 17526, upper := 17685, witness := RowWitness.topPrime 17519 },
  { lower := 17686, upper := 17849, witness := RowWitness.topPrime 17683 },
  { lower := 17850, upper := 18005, witness := RowWitness.topPrime 17839 },
  { lower := 18006, upper := 18155, witness := RowWitness.topPrime 17989 },
  { lower := 18156, upper := 18315, witness := RowWitness.topPrime 18149 },
  { lower := 18316, upper := 18479, witness := RowWitness.topPrime 18313 },
  { lower := 18480, upper := 18627, witness := RowWitness.topPrime 18461 },
  { lower := 18628, upper := 18783, witness := RowWitness.topPrime 18617 },
  { lower := 18784, upper := 18939, witness := RowWitness.topPrime 18773 },
  { lower := 18940, upper := 19085, witness := RowWitness.topPrime 18919 },
  { lower := 19086, upper := 19247, witness := RowWitness.topPrime 19081 },
  { lower := 19248, upper := 19403, witness := RowWitness.topPrime 19237 },
  { lower := 19404, upper := 19569, witness := RowWitness.topPrime 19403 },
  { lower := 19570, upper := 19725, witness := RowWitness.topPrime 19559 },
  { lower := 19726, upper := 19883, witness := RowWitness.topPrime 19717 },
  { lower := 19884, upper := 20033, witness := RowWitness.topPrime 19867 },
  { lower := 20034, upper := 20195, witness := RowWitness.topPrime 20029 },
  { lower := 20196, upper := 20349, witness := RowWitness.topPrime 20183 },
  { lower := 20350, upper := 20513, witness := RowWitness.topPrime 20347 },
  { lower := 20514, upper := 20675, witness := RowWitness.topPrime 20509 },
  { lower := 20676, upper := 20829, witness := RowWitness.topPrime 20663 },
  { lower := 20830, upper := 20975, witness := RowWitness.topPrime 20809 },
  { lower := 20976, upper := 21129, witness := RowWitness.topPrime 20963 },
  { lower := 21130, upper := 21287, witness := RowWitness.topPrime 21121 },
  { lower := 21288, upper := 21449, witness := RowWitness.topPrime 21283 },
  { lower := 21450, upper := 21599, witness := RowWitness.topPrime 21433 },
  { lower := 21600, upper := 21765, witness := RowWitness.topPrime 21599 },
  { lower := 21766, upper := 21923, witness := RowWitness.topPrime 21757 },
  { lower := 21924, upper := 22077, witness := RowWitness.topPrime 21911 },
  { lower := 22078, upper := 22239, witness := RowWitness.topPrime 22073 },
  { lower := 22240, upper := 22395, witness := RowWitness.topPrime 22229 },
  { lower := 22396, upper := 22557, witness := RowWitness.topPrime 22391 },
  { lower := 22558, upper := 22715, witness := RowWitness.topPrime 22549 },
  { lower := 22716, upper := 22875, witness := RowWitness.topPrime 22709 },
  { lower := 22876, upper := 23037, witness := RowWitness.topPrime 22871 },
  { lower := 23038, upper := 23195, witness := RowWitness.topPrime 23029 },
  { lower := 23196, upper := 23355, witness := RowWitness.topPrime 23189 },
  { lower := 23356, upper := 23505, witness := RowWitness.topPrime 23339 },
  { lower := 23506, upper := 23663, witness := RowWitness.topPrime 23497 },
  { lower := 23664, upper := 23829, witness := RowWitness.topPrime 23663 },
  { lower := 23830, upper := 23993, witness := RowWitness.topPrime 23827 },
  { lower := 23994, upper := 24159, witness := RowWitness.topPrime 23993 },
  { lower := 24160, upper := 24317, witness := RowWitness.topPrime 24151 },
  { lower := 24318, upper := 24483, witness := RowWitness.topPrime 24317 },
  { lower := 24484, upper := 24647, witness := RowWitness.topPrime 24481 },
  { lower := 24648, upper := 24797, witness := RowWitness.topPrime 24631 },
  { lower := 24798, upper := 24959, witness := RowWitness.topPrime 24793 },
  { lower := 24960, upper := 25119, witness := RowWitness.topPrime 24953 },
  { lower := 25120, upper := 25283, witness := RowWitness.topPrime 25117 },
  { lower := 25284, upper := 25427, witness := RowWitness.topPrime 25261 },
  { lower := 25428, upper := 25589, witness := RowWitness.topPrime 25423 },
  { lower := 25590, upper := 25755, witness := RowWitness.topPrime 25589 },
  { lower := 25756, upper := 25913, witness := RowWitness.topPrime 25747 },
  { lower := 25914, upper := 26079, witness := RowWitness.topPrime 25913 },
  { lower := 26080, upper := 26219, witness := RowWitness.topPrime 26053 },
  { lower := 26220, upper := 26375, witness := RowWitness.topPrime 26209 },
  { lower := 26376, upper := 26537, witness := RowWitness.topPrime 26371 },
  { lower := 26538, upper := 26679, witness := RowWitness.topPrime 26513 },
  { lower := 26680, upper := 26835, witness := RowWitness.topPrime 26669 },
  { lower := 26836, upper := 26999, witness := RowWitness.topPrime 26833 },
  { lower := 27000, upper := 27159, witness := RowWitness.topPrime 26993 },
  { lower := 27160, upper := 27309, witness := RowWitness.topPrime 27143 },
  { lower := 27310, upper := 27465, witness := RowWitness.topPrime 27299 },
  { lower := 27466, upper := 27623, witness := RowWitness.topPrime 27457 },
  { lower := 27624, upper := 27721, witness := RowWitness.topPrime 27617 },
  { lower := 28125, upper := 28289, witness := RowWitness.topPrime 28123 },
  { lower := 28290, upper := 28291, witness := RowWitness.topPrime 28289 },
  { lower := 28561, upper := 28597, witness := RowWitness.topPrime 28559 },
  { lower := 28672, upper := 28835, witness := RowWitness.topPrime 28669 },
  { lower := 28836, upper := 28883, witness := RowWitness.topPrime 28817 },
  { lower := 29791, upper := 29934, witness := RowWitness.topPrime 29789 },
  { lower := 31213, upper := 31359, witness := RowWitness.topPrime 31193 },
  { lower := 31360, upper := 31416, witness := RowWitness.topPrime 31357 },
  { lower := 31423, upper := 31495, witness := RowWitness.topPrime 31397 },
  { lower := 31827, upper := 31850, witness := RowWitness.topPrime 31817 },
  { lower := 31974, upper := 31993, witness := RowWitness.topPrime 31973 },
  { lower := 32805, upper := 32934, witness := RowWitness.topPrime 32803 },
  { lower := 33614, upper := 33655, witness := RowWitness.topPrime 33613 },
  { lower := 33708, upper := 33780, witness := RowWitness.topPrime 33703 },
  { lower := 34322, upper := 34485, witness := RowWitness.topPrime 34319 },
  { lower := 34486, upper := 34557, witness := RowWitness.topPrime 34483 },
  { lower := 36517, upper := 36663, witness := RowWitness.topPrime 36497 },
  { lower := 36664, upper := 36667, witness := RowWitness.topPrime 36653 },
  { lower := 37303, upper := 37376, witness := RowWitness.topPrime 37277 },
  { lower := 37446, upper := 37469, witness := RowWitness.topPrime 37441 },
  { lower := 37500, upper := 37659, witness := RowWitness.topPrime 37493 },
  { lower := 37660, upper := 37704, witness := RowWitness.topPrime 37657 },
  { lower := 38307, upper := 38457, witness := RowWitness.topPrime 38303 },
  { lower := 39366, upper := 39470, witness := RowWitness.topPrime 39359 },
  { lower := 40401, upper := 40494, witness := RowWitness.topPrime 40387 },
  { lower := 40931, upper := 41093, witness := RowWitness.topPrime 40927 },
  { lower := 41094, upper := 41097, witness := RowWitness.topPrime 41081 },
  { lower := 45056, upper := 45056, witness := RowWitness.topPrime 45053 },
  { lower := 45369, upper := 45419, witness := RowWitness.topPrime 45361 },
  { lower := 45927, upper := 45962, witness := RowWitness.topPrime 45893 },
  { lower := 47526, upper := 47687, witness := RowWitness.topPrime 47521 },
  { lower := 47688, upper := 47690, witness := RowWitness.topPrime 47681 },
  { lower := 48013, upper := 48127, witness := RowWitness.topPrime 47981 },
  { lower := 48373, upper := 48537, witness := RowWitness.topPrime 48371 },
  { lower := 48538, upper := 48539, witness := RowWitness.topPrime 48533 },
  { lower := 48778, upper := 48834, witness := RowWitness.topPrime 48767 },
  { lower := 49152, upper := 49296, witness := RowWitness.topPrime 49139 },
  { lower := 49298, upper := 49318, witness := RowWitness.topPrime 49297 },
  { lower := 49379, upper := 49464, witness := RowWitness.topPrime 49369 },
  { lower := 50421, upper := 50576, witness := RowWitness.topPrime 50417 },
  { lower := 51076, upper := 51171, witness := RowWitness.topPrime 51071 },
  { lower := 53138, upper := 53211, witness := RowWitness.topPrime 53129 },
  { lower := 53248, upper := 53405, witness := RowWitness.topPrime 53239 },
  { lower := 53406, upper := 53414, witness := RowWitness.topPrime 53401 },
  { lower := 56307, upper := 56335, witness := RowWitness.topPrime 56299 },
  { lower := 56454, upper := 56473, witness := RowWitness.topPrime 56453 },
  { lower := 57245, upper := 57288, witness := RowWitness.topPrime 57241 },
  { lower := 57344, upper := 57411, witness := RowWitness.topPrime 57331 },
  { lower := 62500, upper := 62576, witness := RowWitness.topPrime 62497 },
  { lower := 65610, upper := 65702, witness := RowWitness.topPrime 65609 },
  { lower := 68644, upper := 68805, witness := RowWitness.topPrime 68639 },
  { lower := 68806, upper := 68810, witness := RowWitness.topPrime 68791 },
  { lower := 68921, upper := 69056, witness := RowWitness.topPrime 68917 },
  { lower := 71289, upper := 71453, witness := RowWitness.topPrime 71287 },
  { lower := 71454, upper := 71455, witness := RowWitness.topPrime 71453 },
  { lower := 73167, upper := 73168, witness := RowWitness.topPrime 73141 },
  { lower := 73205, upper := 73333, witness := RowWitness.topPrime 73189 },
  { lower := 85805, upper := 85849, witness := RowWitness.topPrime 85793 },
  { lower := 89383, upper := 89539, witness := RowWitness.topPrime 89381 },
  { lower := 93845, upper := 93916, witness := RowWitness.topPrime 93827 },
  { lower := 98415, upper := 98470, witness := RowWitness.topPrime 98411 },
  { lower := 102152, upper := 102176, witness := RowWitness.topPrime 102149 },
  { lower := 103041, upper := 103132, witness := RowWitness.topPrime 103007 },
  { lower := 109503, upper := 109541, witness := RowWitness.topPrime 109481 },
  { lower := 137842, upper := 137947, witness := RowWitness.topPrime 137831 },
  { lower := 148955, upper := 149043, witness := RowWitness.topPrime 148949 }
]

def row167_layers : List CoverLayer := [
  { lower := 27722, upper := 55444, M := 13 },
  { lower := 55444, upper := 110888, M := 10 },
  { lower := 110888, upper := 221776, M := 7 },
  { lower := 221776, upper := 443552, M := 5 },
  { lower := 443552, upper := 887104, M := 4 },
  { lower := 887104, upper := 1774208, M := 3 },
  { lower := 1774208, upper := 3548416, M := 2 },
  { lower := 3548416, upper := 7096832, M := 2 },
  { lower := 7096832, upper := 10000000, M := 1 }
]

def row167 : FiniteCoverRow := {
  height := row167_height,
  goods := row167_goods,
  layers := row167_layers
}


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good000_checked :
    goodSegmentCheck 167 55 119
      { lower := 336, upper := 497, witness := RowWitness.topPrime 331 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good001_checked :
    goodSegmentCheck 167 55 119
      { lower := 498, upper := 657, witness := RowWitness.topPrime 491 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good002_checked :
    goodSegmentCheck 167 55 119
      { lower := 658, upper := 819, witness := RowWitness.topPrime 653 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good003_checked :
    goodSegmentCheck 167 55 119
      { lower := 820, upper := 977, witness := RowWitness.topPrime 811 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good004_checked :
    goodSegmentCheck 167 55 119
      { lower := 978, upper := 1143, witness := RowWitness.topPrime 977 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good005_checked :
    goodSegmentCheck 167 55 119
      { lower := 1144, upper := 1295, witness := RowWitness.topPrime 1129 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good006_checked :
    goodSegmentCheck 167 55 119
      { lower := 1296, upper := 1457, witness := RowWitness.topPrime 1291 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good007_checked :
    goodSegmentCheck 167 55 119
      { lower := 1458, upper := 1619, witness := RowWitness.topPrime 1453 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good008_checked :
    goodSegmentCheck 167 55 119
      { lower := 1620, upper := 1785, witness := RowWitness.topPrime 1619 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good009_checked :
    goodSegmentCheck 167 55 119
      { lower := 1786, upper := 1949, witness := RowWitness.topPrime 1783 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good010_checked :
    goodSegmentCheck 167 55 119
      { lower := 1950, upper := 2115, witness := RowWitness.topPrime 1949 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good011_checked :
    goodSegmentCheck 167 55 119
      { lower := 2116, upper := 2279, witness := RowWitness.topPrime 2113 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good012_checked :
    goodSegmentCheck 167 55 119
      { lower := 2280, upper := 2439, witness := RowWitness.topPrime 2273 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good013_checked :
    goodSegmentCheck 167 55 119
      { lower := 2440, upper := 2603, witness := RowWitness.topPrime 2437 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good014_checked :
    goodSegmentCheck 167 55 119
      { lower := 2604, upper := 2759, witness := RowWitness.topPrime 2593 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good015_checked :
    goodSegmentCheck 167 55 119
      { lower := 2760, upper := 2919, witness := RowWitness.topPrime 2753 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good003_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good007_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good011_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good016_checked :
    goodSegmentCheck 167 55 119
      { lower := 2920, upper := 3083, witness := RowWitness.topPrime 2917 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good017_checked :
    goodSegmentCheck 167 55 119
      { lower := 3084, upper := 3249, witness := RowWitness.topPrime 3083 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good018_checked :
    goodSegmentCheck 167 55 119
      { lower := 3250, upper := 3395, witness := RowWitness.topPrime 3229 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good019_checked :
    goodSegmentCheck 167 55 119
      { lower := 3396, upper := 3557, witness := RowWitness.topPrime 3391 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good020_checked :
    goodSegmentCheck 167 55 119
      { lower := 3558, upper := 3723, witness := RowWitness.topPrime 3557 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good021_checked :
    goodSegmentCheck 167 55 119
      { lower := 3724, upper := 3885, witness := RowWitness.topPrime 3719 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good022_checked :
    goodSegmentCheck 167 55 119
      { lower := 3886, upper := 4047, witness := RowWitness.topPrime 3881 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good023_checked :
    goodSegmentCheck 167 55 119
      { lower := 4048, upper := 4193, witness := RowWitness.topPrime 4027 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good024_checked :
    goodSegmentCheck 167 55 119
      { lower := 4194, upper := 4343, witness := RowWitness.topPrime 4177 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good025_checked :
    goodSegmentCheck 167 55 119
      { lower := 4344, upper := 4505, witness := RowWitness.topPrime 4339 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good026_checked :
    goodSegmentCheck 167 55 119
      { lower := 4506, upper := 4659, witness := RowWitness.topPrime 4493 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good027_checked :
    goodSegmentCheck 167 55 119
      { lower := 4660, upper := 4823, witness := RowWitness.topPrime 4657 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good028_checked :
    goodSegmentCheck 167 55 119
      { lower := 4824, upper := 4983, witness := RowWitness.topPrime 4817 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good029_checked :
    goodSegmentCheck 167 55 119
      { lower := 4984, upper := 5139, witness := RowWitness.topPrime 4973 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good030_checked :
    goodSegmentCheck 167 55 119
      { lower := 5140, upper := 5285, witness := RowWitness.topPrime 5119 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good031_checked :
    goodSegmentCheck 167 55 119
      { lower := 5286, upper := 5447, witness := RowWitness.topPrime 5281 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good019_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good023_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good027_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good032_checked :
    goodSegmentCheck 167 55 119
      { lower := 5448, upper := 5609, witness := RowWitness.topPrime 5443 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good033_checked :
    goodSegmentCheck 167 55 119
      { lower := 5610, upper := 5757, witness := RowWitness.topPrime 5591 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good034_checked :
    goodSegmentCheck 167 55 119
      { lower := 5758, upper := 5915, witness := RowWitness.topPrime 5749 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good035_checked :
    goodSegmentCheck 167 55 119
      { lower := 5916, upper := 6069, witness := RowWitness.topPrime 5903 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good036_checked :
    goodSegmentCheck 167 55 119
      { lower := 6070, upper := 6233, witness := RowWitness.topPrime 6067 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good037_checked :
    goodSegmentCheck 167 55 119
      { lower := 6234, upper := 6395, witness := RowWitness.topPrime 6229 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good038_checked :
    goodSegmentCheck 167 55 119
      { lower := 6396, upper := 6555, witness := RowWitness.topPrime 6389 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good039_checked :
    goodSegmentCheck 167 55 119
      { lower := 6556, upper := 6719, witness := RowWitness.topPrime 6553 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good040_checked :
    goodSegmentCheck 167 55 119
      { lower := 6720, upper := 6885, witness := RowWitness.topPrime 6719 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good041_checked :
    goodSegmentCheck 167 55 119
      { lower := 6886, upper := 7049, witness := RowWitness.topPrime 6883 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good042_checked :
    goodSegmentCheck 167 55 119
      { lower := 7050, upper := 7209, witness := RowWitness.topPrime 7043 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good043_checked :
    goodSegmentCheck 167 55 119
      { lower := 7210, upper := 7373, witness := RowWitness.topPrime 7207 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good044_checked :
    goodSegmentCheck 167 55 119
      { lower := 7374, upper := 7535, witness := RowWitness.topPrime 7369 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good045_checked :
    goodSegmentCheck 167 55 119
      { lower := 7536, upper := 7695, witness := RowWitness.topPrime 7529 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good046_checked :
    goodSegmentCheck 167 55 119
      { lower := 7696, upper := 7857, witness := RowWitness.topPrime 7691 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good047_checked :
    goodSegmentCheck 167 55 119
      { lower := 7858, upper := 8019, witness := RowWitness.topPrime 7853 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good035_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good039_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good043_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good048_checked :
    goodSegmentCheck 167 55 119
      { lower := 8020, upper := 8183, witness := RowWitness.topPrime 8017 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good049_checked :
    goodSegmentCheck 167 55 119
      { lower := 8184, upper := 8345, witness := RowWitness.topPrime 8179 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good050_checked :
    goodSegmentCheck 167 55 119
      { lower := 8346, upper := 8495, witness := RowWitness.topPrime 8329 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good051_checked :
    goodSegmentCheck 167 55 119
      { lower := 8496, upper := 8633, witness := RowWitness.topPrime 8467 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good052_checked :
    goodSegmentCheck 167 55 119
      { lower := 8634, upper := 8795, witness := RowWitness.topPrime 8629 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good053_checked :
    goodSegmentCheck 167 55 119
      { lower := 8796, upper := 8949, witness := RowWitness.topPrime 8783 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good054_checked :
    goodSegmentCheck 167 55 119
      { lower := 8950, upper := 9107, witness := RowWitness.topPrime 8941 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good055_checked :
    goodSegmentCheck 167 55 119
      { lower := 9108, upper := 9269, witness := RowWitness.topPrime 9103 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good056_checked :
    goodSegmentCheck 167 55 119
      { lower := 9270, upper := 9423, witness := RowWitness.topPrime 9257 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good057_checked :
    goodSegmentCheck 167 55 119
      { lower := 9424, upper := 9587, witness := RowWitness.topPrime 9421 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good058_checked :
    goodSegmentCheck 167 55 119
      { lower := 9588, upper := 9753, witness := RowWitness.topPrime 9587 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good059_checked :
    goodSegmentCheck 167 55 119
      { lower := 9754, upper := 9915, witness := RowWitness.topPrime 9749 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good060_checked :
    goodSegmentCheck 167 55 119
      { lower := 9916, upper := 10073, witness := RowWitness.topPrime 9907 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good061_checked :
    goodSegmentCheck 167 55 119
      { lower := 10074, upper := 10235, witness := RowWitness.topPrime 10069 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good062_checked :
    goodSegmentCheck 167 55 119
      { lower := 10236, upper := 10389, witness := RowWitness.topPrime 10223 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good063_checked :
    goodSegmentCheck 167 55 119
      { lower := 10390, upper := 10535, witness := RowWitness.topPrime 10369 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good051_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good055_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good059_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good064_checked :
    goodSegmentCheck 167 55 119
      { lower := 10536, upper := 10697, witness := RowWitness.topPrime 10531 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good065_checked :
    goodSegmentCheck 167 55 119
      { lower := 10698, upper := 10857, witness := RowWitness.topPrime 10691 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good066_checked :
    goodSegmentCheck 167 55 119
      { lower := 10858, upper := 11019, witness := RowWitness.topPrime 10853 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good067_checked :
    goodSegmentCheck 167 55 119
      { lower := 11020, upper := 11169, witness := RowWitness.topPrime 11003 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good068_checked :
    goodSegmentCheck 167 55 119
      { lower := 11170, upper := 11327, witness := RowWitness.topPrime 11161 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good069_checked :
    goodSegmentCheck 167 55 119
      { lower := 11328, upper := 11487, witness := RowWitness.topPrime 11321 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good070_checked :
    goodSegmentCheck 167 55 119
      { lower := 11488, upper := 11649, witness := RowWitness.topPrime 11483 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good071_checked :
    goodSegmentCheck 167 55 119
      { lower := 11650, upper := 11799, witness := RowWitness.topPrime 11633 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good072_checked :
    goodSegmentCheck 167 55 119
      { lower := 11800, upper := 11955, witness := RowWitness.topPrime 11789 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good073_checked :
    goodSegmentCheck 167 55 119
      { lower := 11956, upper := 12119, witness := RowWitness.topPrime 11953 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good074_checked :
    goodSegmentCheck 167 55 119
      { lower := 12120, upper := 12285, witness := RowWitness.topPrime 12119 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good075_checked :
    goodSegmentCheck 167 55 119
      { lower := 12286, upper := 12447, witness := RowWitness.topPrime 12281 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good076_checked :
    goodSegmentCheck 167 55 119
      { lower := 12448, upper := 12603, witness := RowWitness.topPrime 12437 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good077_checked :
    goodSegmentCheck 167 55 119
      { lower := 12604, upper := 12767, witness := RowWitness.topPrime 12601 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good078_checked :
    goodSegmentCheck 167 55 119
      { lower := 12768, upper := 12929, witness := RowWitness.topPrime 12763 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good079_checked :
    goodSegmentCheck 167 55 119
      { lower := 12930, upper := 13089, witness := RowWitness.topPrime 12923 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good067_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good071_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good075_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good076_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good077_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good078_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good079_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good080_checked :
    goodSegmentCheck 167 55 119
      { lower := 13090, upper := 13229, witness := RowWitness.topPrime 13063 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good081_checked :
    goodSegmentCheck 167 55 119
      { lower := 13230, upper := 13395, witness := RowWitness.topPrime 13229 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good082_checked :
    goodSegmentCheck 167 55 119
      { lower := 13396, upper := 13547, witness := RowWitness.topPrime 13381 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good083_checked :
    goodSegmentCheck 167 55 119
      { lower := 13548, upper := 13703, witness := RowWitness.topPrime 13537 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good084_checked :
    goodSegmentCheck 167 55 119
      { lower := 13704, upper := 13863, witness := RowWitness.topPrime 13697 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good085_checked :
    goodSegmentCheck 167 55 119
      { lower := 13864, upper := 14025, witness := RowWitness.topPrime 13859 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good086_checked :
    goodSegmentCheck 167 55 119
      { lower := 14026, upper := 14177, witness := RowWitness.topPrime 14011 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good087_checked :
    goodSegmentCheck 167 55 119
      { lower := 14178, upper := 14343, witness := RowWitness.topPrime 14177 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good088_checked :
    goodSegmentCheck 167 55 119
      { lower := 14344, upper := 14507, witness := RowWitness.topPrime 14341 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good089_checked :
    goodSegmentCheck 167 55 119
      { lower := 14508, upper := 14669, witness := RowWitness.topPrime 14503 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good090_checked :
    goodSegmentCheck 167 55 119
      { lower := 14670, upper := 14835, witness := RowWitness.topPrime 14669 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good091_checked :
    goodSegmentCheck 167 55 119
      { lower := 14836, upper := 14997, witness := RowWitness.topPrime 14831 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good092_checked :
    goodSegmentCheck 167 55 119
      { lower := 14998, upper := 15149, witness := RowWitness.topPrime 14983 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good093_checked :
    goodSegmentCheck 167 55 119
      { lower := 15150, upper := 15315, witness := RowWitness.topPrime 15149 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good094_checked :
    goodSegmentCheck 167 55 119
      { lower := 15316, upper := 15479, witness := RowWitness.topPrime 15313 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good095_checked :
    goodSegmentCheck 167 55 119
      { lower := 15480, upper := 15639, witness := RowWitness.topPrime 15473 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good080_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good081_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good082_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good083_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good084_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good085_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good086_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good087_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good088_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good089_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good090_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good091_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good096_checked :
    goodSegmentCheck 167 55 119
      { lower := 15640, upper := 15795, witness := RowWitness.topPrime 15629 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good097_checked :
    goodSegmentCheck 167 55 119
      { lower := 15796, upper := 15957, witness := RowWitness.topPrime 15791 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good098_checked :
    goodSegmentCheck 167 55 119
      { lower := 15958, upper := 16103, witness := RowWitness.topPrime 15937 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good099_checked :
    goodSegmentCheck 167 55 119
      { lower := 16104, upper := 16269, witness := RowWitness.topPrime 16103 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good100_checked :
    goodSegmentCheck 167 55 119
      { lower := 16270, upper := 16433, witness := RowWitness.topPrime 16267 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good101_checked :
    goodSegmentCheck 167 55 119
      { lower := 16434, upper := 16599, witness := RowWitness.topPrime 16433 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good102_checked :
    goodSegmentCheck 167 55 119
      { lower := 16600, upper := 16739, witness := RowWitness.topPrime 16573 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good103_checked :
    goodSegmentCheck 167 55 119
      { lower := 16740, upper := 16895, witness := RowWitness.topPrime 16729 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good104_checked :
    goodSegmentCheck 167 55 119
      { lower := 16896, upper := 17055, witness := RowWitness.topPrime 16889 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good105_checked :
    goodSegmentCheck 167 55 119
      { lower := 17056, upper := 17219, witness := RowWitness.topPrime 17053 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good106_checked :
    goodSegmentCheck 167 55 119
      { lower := 17220, upper := 17375, witness := RowWitness.topPrime 17209 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good107_checked :
    goodSegmentCheck 167 55 119
      { lower := 17376, upper := 17525, witness := RowWitness.topPrime 17359 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good108_checked :
    goodSegmentCheck 167 55 119
      { lower := 17526, upper := 17685, witness := RowWitness.topPrime 17519 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good109_checked :
    goodSegmentCheck 167 55 119
      { lower := 17686, upper := 17849, witness := RowWitness.topPrime 17683 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good110_checked :
    goodSegmentCheck 167 55 119
      { lower := 17850, upper := 18005, witness := RowWitness.topPrime 17839 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good111_checked :
    goodSegmentCheck 167 55 119
      { lower := 18006, upper := 18155, witness := RowWitness.topPrime 17989 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good099_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good100_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good101_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good102_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good103_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good107_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good112_checked :
    goodSegmentCheck 167 55 119
      { lower := 18156, upper := 18315, witness := RowWitness.topPrime 18149 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good113_checked :
    goodSegmentCheck 167 55 119
      { lower := 18316, upper := 18479, witness := RowWitness.topPrime 18313 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good114_checked :
    goodSegmentCheck 167 55 119
      { lower := 18480, upper := 18627, witness := RowWitness.topPrime 18461 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good115_checked :
    goodSegmentCheck 167 55 119
      { lower := 18628, upper := 18783, witness := RowWitness.topPrime 18617 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good116_checked :
    goodSegmentCheck 167 55 119
      { lower := 18784, upper := 18939, witness := RowWitness.topPrime 18773 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good117_checked :
    goodSegmentCheck 167 55 119
      { lower := 18940, upper := 19085, witness := RowWitness.topPrime 18919 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good118_checked :
    goodSegmentCheck 167 55 119
      { lower := 19086, upper := 19247, witness := RowWitness.topPrime 19081 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good119_checked :
    goodSegmentCheck 167 55 119
      { lower := 19248, upper := 19403, witness := RowWitness.topPrime 19237 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good120_checked :
    goodSegmentCheck 167 55 119
      { lower := 19404, upper := 19569, witness := RowWitness.topPrime 19403 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good121_checked :
    goodSegmentCheck 167 55 119
      { lower := 19570, upper := 19725, witness := RowWitness.topPrime 19559 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good122_checked :
    goodSegmentCheck 167 55 119
      { lower := 19726, upper := 19883, witness := RowWitness.topPrime 19717 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good123_checked :
    goodSegmentCheck 167 55 119
      { lower := 19884, upper := 20033, witness := RowWitness.topPrime 19867 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good124_checked :
    goodSegmentCheck 167 55 119
      { lower := 20034, upper := 20195, witness := RowWitness.topPrime 20029 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good125_checked :
    goodSegmentCheck 167 55 119
      { lower := 20196, upper := 20349, witness := RowWitness.topPrime 20183 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good126_checked :
    goodSegmentCheck 167 55 119
      { lower := 20350, upper := 20513, witness := RowWitness.topPrime 20347 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good127_checked :
    goodSegmentCheck 167 55 119
      { lower := 20514, upper := 20675, witness := RowWitness.topPrime 20509 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good115_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good119_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good123_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good128_checked :
    goodSegmentCheck 167 55 119
      { lower := 20676, upper := 20829, witness := RowWitness.topPrime 20663 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good129_checked :
    goodSegmentCheck 167 55 119
      { lower := 20830, upper := 20975, witness := RowWitness.topPrime 20809 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good130_checked :
    goodSegmentCheck 167 55 119
      { lower := 20976, upper := 21129, witness := RowWitness.topPrime 20963 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good131_checked :
    goodSegmentCheck 167 55 119
      { lower := 21130, upper := 21287, witness := RowWitness.topPrime 21121 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good132_checked :
    goodSegmentCheck 167 55 119
      { lower := 21288, upper := 21449, witness := RowWitness.topPrime 21283 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good133_checked :
    goodSegmentCheck 167 55 119
      { lower := 21450, upper := 21599, witness := RowWitness.topPrime 21433 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good134_checked :
    goodSegmentCheck 167 55 119
      { lower := 21600, upper := 21765, witness := RowWitness.topPrime 21599 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good135_checked :
    goodSegmentCheck 167 55 119
      { lower := 21766, upper := 21923, witness := RowWitness.topPrime 21757 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good136_checked :
    goodSegmentCheck 167 55 119
      { lower := 21924, upper := 22077, witness := RowWitness.topPrime 21911 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good137_checked :
    goodSegmentCheck 167 55 119
      { lower := 22078, upper := 22239, witness := RowWitness.topPrime 22073 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good138_checked :
    goodSegmentCheck 167 55 119
      { lower := 22240, upper := 22395, witness := RowWitness.topPrime 22229 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good139_checked :
    goodSegmentCheck 167 55 119
      { lower := 22396, upper := 22557, witness := RowWitness.topPrime 22391 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good140_checked :
    goodSegmentCheck 167 55 119
      { lower := 22558, upper := 22715, witness := RowWitness.topPrime 22549 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good141_checked :
    goodSegmentCheck 167 55 119
      { lower := 22716, upper := 22875, witness := RowWitness.topPrime 22709 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good142_checked :
    goodSegmentCheck 167 55 119
      { lower := 22876, upper := 23037, witness := RowWitness.topPrime 22871 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good143_checked :
    goodSegmentCheck 167 55 119
      { lower := 23038, upper := 23195, witness := RowWitness.topPrime 23029 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good131_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good135_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good136_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good137_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good138_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good139_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good140_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good141_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good142_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good143_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good144_checked :
    goodSegmentCheck 167 55 119
      { lower := 23196, upper := 23355, witness := RowWitness.topPrime 23189 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good145_checked :
    goodSegmentCheck 167 55 119
      { lower := 23356, upper := 23505, witness := RowWitness.topPrime 23339 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good146_checked :
    goodSegmentCheck 167 55 119
      { lower := 23506, upper := 23663, witness := RowWitness.topPrime 23497 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good147_checked :
    goodSegmentCheck 167 55 119
      { lower := 23664, upper := 23829, witness := RowWitness.topPrime 23663 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good148_checked :
    goodSegmentCheck 167 55 119
      { lower := 23830, upper := 23993, witness := RowWitness.topPrime 23827 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good149_checked :
    goodSegmentCheck 167 55 119
      { lower := 23994, upper := 24159, witness := RowWitness.topPrime 23993 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good150_checked :
    goodSegmentCheck 167 55 119
      { lower := 24160, upper := 24317, witness := RowWitness.topPrime 24151 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good151_checked :
    goodSegmentCheck 167 55 119
      { lower := 24318, upper := 24483, witness := RowWitness.topPrime 24317 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good152_checked :
    goodSegmentCheck 167 55 119
      { lower := 24484, upper := 24647, witness := RowWitness.topPrime 24481 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good153_checked :
    goodSegmentCheck 167 55 119
      { lower := 24648, upper := 24797, witness := RowWitness.topPrime 24631 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good154_checked :
    goodSegmentCheck 167 55 119
      { lower := 24798, upper := 24959, witness := RowWitness.topPrime 24793 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good155_checked :
    goodSegmentCheck 167 55 119
      { lower := 24960, upper := 25119, witness := RowWitness.topPrime 24953 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good156_checked :
    goodSegmentCheck 167 55 119
      { lower := 25120, upper := 25283, witness := RowWitness.topPrime 25117 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good157_checked :
    goodSegmentCheck 167 55 119
      { lower := 25284, upper := 25427, witness := RowWitness.topPrime 25261 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good158_checked :
    goodSegmentCheck 167 55 119
      { lower := 25428, upper := 25589, witness := RowWitness.topPrime 25423 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good159_checked :
    goodSegmentCheck 167 55 119
      { lower := 25590, upper := 25755, witness := RowWitness.topPrime 25589 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good144_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good145_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good146_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good147_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good148_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good149_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good150_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good151_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good152_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good153_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good154_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good155_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good156_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good157_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good158_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good159_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good160_checked :
    goodSegmentCheck 167 55 119
      { lower := 25756, upper := 25913, witness := RowWitness.topPrime 25747 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good161_checked :
    goodSegmentCheck 167 55 119
      { lower := 25914, upper := 26079, witness := RowWitness.topPrime 25913 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good162_checked :
    goodSegmentCheck 167 55 119
      { lower := 26080, upper := 26219, witness := RowWitness.topPrime 26053 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good163_checked :
    goodSegmentCheck 167 55 119
      { lower := 26220, upper := 26375, witness := RowWitness.topPrime 26209 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good164_checked :
    goodSegmentCheck 167 55 119
      { lower := 26376, upper := 26537, witness := RowWitness.topPrime 26371 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good165_checked :
    goodSegmentCheck 167 55 119
      { lower := 26538, upper := 26679, witness := RowWitness.topPrime 26513 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good166_checked :
    goodSegmentCheck 167 55 119
      { lower := 26680, upper := 26835, witness := RowWitness.topPrime 26669 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good167_checked :
    goodSegmentCheck 167 55 119
      { lower := 26836, upper := 26999, witness := RowWitness.topPrime 26833 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good168_checked :
    goodSegmentCheck 167 55 119
      { lower := 27000, upper := 27159, witness := RowWitness.topPrime 26993 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good169_checked :
    goodSegmentCheck 167 55 119
      { lower := 27160, upper := 27309, witness := RowWitness.topPrime 27143 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good170_checked :
    goodSegmentCheck 167 55 119
      { lower := 27310, upper := 27465, witness := RowWitness.topPrime 27299 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good171_checked :
    goodSegmentCheck 167 55 119
      { lower := 27466, upper := 27623, witness := RowWitness.topPrime 27457 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good172_checked :
    goodSegmentCheck 167 55 119
      { lower := 27624, upper := 27721, witness := RowWitness.topPrime 27617 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good173_checked :
    goodSegmentCheck 167 55 119
      { lower := 28125, upper := 28289, witness := RowWitness.topPrime 28123 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good174_checked :
    goodSegmentCheck 167 55 119
      { lower := 28290, upper := 28291, witness := RowWitness.topPrime 28289 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good175_checked :
    goodSegmentCheck 167 55 119
      { lower := 28561, upper := 28597, witness := RowWitness.topPrime 28559 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good160_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good161_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good162_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good163_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good164_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good165_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good166_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good167_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good168_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good169_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good170_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good171_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good172_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good173_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good174_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good175_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good176_checked :
    goodSegmentCheck 167 55 119
      { lower := 28672, upper := 28835, witness := RowWitness.topPrime 28669 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good177_checked :
    goodSegmentCheck 167 55 119
      { lower := 28836, upper := 28883, witness := RowWitness.topPrime 28817 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good178_checked :
    goodSegmentCheck 167 55 119
      { lower := 29791, upper := 29934, witness := RowWitness.topPrime 29789 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good179_checked :
    goodSegmentCheck 167 55 119
      { lower := 31213, upper := 31359, witness := RowWitness.topPrime 31193 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good180_checked :
    goodSegmentCheck 167 55 119
      { lower := 31360, upper := 31416, witness := RowWitness.topPrime 31357 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good181_checked :
    goodSegmentCheck 167 55 119
      { lower := 31423, upper := 31495, witness := RowWitness.topPrime 31397 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good182_checked :
    goodSegmentCheck 167 55 119
      { lower := 31827, upper := 31850, witness := RowWitness.topPrime 31817 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good183_checked :
    goodSegmentCheck 167 55 119
      { lower := 31974, upper := 31993, witness := RowWitness.topPrime 31973 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good184_checked :
    goodSegmentCheck 167 55 119
      { lower := 32805, upper := 32934, witness := RowWitness.topPrime 32803 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good185_checked :
    goodSegmentCheck 167 55 119
      { lower := 33614, upper := 33655, witness := RowWitness.topPrime 33613 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good186_checked :
    goodSegmentCheck 167 55 119
      { lower := 33708, upper := 33780, witness := RowWitness.topPrime 33703 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good187_checked :
    goodSegmentCheck 167 55 119
      { lower := 34322, upper := 34485, witness := RowWitness.topPrime 34319 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good188_checked :
    goodSegmentCheck 167 55 119
      { lower := 34486, upper := 34557, witness := RowWitness.topPrime 34483 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good189_checked :
    goodSegmentCheck 167 55 119
      { lower := 36517, upper := 36663, witness := RowWitness.topPrime 36497 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good190_checked :
    goodSegmentCheck 167 55 119
      { lower := 36664, upper := 36667, witness := RowWitness.topPrime 36653 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good191_checked :
    goodSegmentCheck 167 55 119
      { lower := 37303, upper := 37376, witness := RowWitness.topPrime 37277 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good176_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good177_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good178_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good179_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good180_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good181_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good182_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good183_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good184_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good185_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good186_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good187_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good188_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good189_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good190_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good191_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good192_checked :
    goodSegmentCheck 167 55 119
      { lower := 37446, upper := 37469, witness := RowWitness.topPrime 37441 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good193_checked :
    goodSegmentCheck 167 55 119
      { lower := 37500, upper := 37659, witness := RowWitness.topPrime 37493 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good194_checked :
    goodSegmentCheck 167 55 119
      { lower := 37660, upper := 37704, witness := RowWitness.topPrime 37657 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good195_checked :
    goodSegmentCheck 167 55 119
      { lower := 38307, upper := 38457, witness := RowWitness.topPrime 38303 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good196_checked :
    goodSegmentCheck 167 55 119
      { lower := 39366, upper := 39470, witness := RowWitness.topPrime 39359 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good197_checked :
    goodSegmentCheck 167 55 119
      { lower := 40401, upper := 40494, witness := RowWitness.topPrime 40387 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good198_checked :
    goodSegmentCheck 167 55 119
      { lower := 40931, upper := 41093, witness := RowWitness.topPrime 40927 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good199_checked :
    goodSegmentCheck 167 55 119
      { lower := 41094, upper := 41097, witness := RowWitness.topPrime 41081 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good200_checked :
    goodSegmentCheck 167 55 119
      { lower := 45056, upper := 45056, witness := RowWitness.topPrime 45053 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good201_checked :
    goodSegmentCheck 167 55 119
      { lower := 45369, upper := 45419, witness := RowWitness.topPrime 45361 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good202_checked :
    goodSegmentCheck 167 55 119
      { lower := 45927, upper := 45962, witness := RowWitness.topPrime 45893 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good203_checked :
    goodSegmentCheck 167 55 119
      { lower := 47526, upper := 47687, witness := RowWitness.topPrime 47521 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good204_checked :
    goodSegmentCheck 167 55 119
      { lower := 47688, upper := 47690, witness := RowWitness.topPrime 47681 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good205_checked :
    goodSegmentCheck 167 55 119
      { lower := 48013, upper := 48127, witness := RowWitness.topPrime 47981 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good206_checked :
    goodSegmentCheck 167 55 119
      { lower := 48373, upper := 48537, witness := RowWitness.topPrime 48371 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good207_checked :
    goodSegmentCheck 167 55 119
      { lower := 48538, upper := 48539, witness := RowWitness.topPrime 48533 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good192_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good193_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good194_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good195_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good196_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good197_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good198_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good199_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good200_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good201_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good202_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good203_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good204_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good205_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good206_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good207_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good208_checked :
    goodSegmentCheck 167 55 119
      { lower := 48778, upper := 48834, witness := RowWitness.topPrime 48767 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good209_checked :
    goodSegmentCheck 167 55 119
      { lower := 49152, upper := 49296, witness := RowWitness.topPrime 49139 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good210_checked :
    goodSegmentCheck 167 55 119
      { lower := 49298, upper := 49318, witness := RowWitness.topPrime 49297 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good211_checked :
    goodSegmentCheck 167 55 119
      { lower := 49379, upper := 49464, witness := RowWitness.topPrime 49369 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good212_checked :
    goodSegmentCheck 167 55 119
      { lower := 50421, upper := 50576, witness := RowWitness.topPrime 50417 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good213_checked :
    goodSegmentCheck 167 55 119
      { lower := 51076, upper := 51171, witness := RowWitness.topPrime 51071 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good214_checked :
    goodSegmentCheck 167 55 119
      { lower := 53138, upper := 53211, witness := RowWitness.topPrime 53129 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good215_checked :
    goodSegmentCheck 167 55 119
      { lower := 53248, upper := 53405, witness := RowWitness.topPrime 53239 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good216_checked :
    goodSegmentCheck 167 55 119
      { lower := 53406, upper := 53414, witness := RowWitness.topPrime 53401 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good217_checked :
    goodSegmentCheck 167 55 119
      { lower := 56307, upper := 56335, witness := RowWitness.topPrime 56299 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good218_checked :
    goodSegmentCheck 167 55 119
      { lower := 56454, upper := 56473, witness := RowWitness.topPrime 56453 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good219_checked :
    goodSegmentCheck 167 55 119
      { lower := 57245, upper := 57288, witness := RowWitness.topPrime 57241 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good220_checked :
    goodSegmentCheck 167 55 119
      { lower := 57344, upper := 57411, witness := RowWitness.topPrime 57331 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good221_checked :
    goodSegmentCheck 167 55 119
      { lower := 62500, upper := 62576, witness := RowWitness.topPrime 62497 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good222_checked :
    goodSegmentCheck 167 55 119
      { lower := 65610, upper := 65702, witness := RowWitness.topPrime 65609 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good223_checked :
    goodSegmentCheck 167 55 119
      { lower := 68644, upper := 68805, witness := RowWitness.topPrime 68639 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good208_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good209_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good210_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good211_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good212_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good213_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good214_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good215_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good216_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good217_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good218_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good219_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good220_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good221_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good222_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good223_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_good224_checked :
    goodSegmentCheck 167 55 119
      { lower := 68806, upper := 68810, witness := RowWitness.topPrime 68791 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good225_checked :
    goodSegmentCheck 167 55 119
      { lower := 68921, upper := 69056, witness := RowWitness.topPrime 68917 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good226_checked :
    goodSegmentCheck 167 55 119
      { lower := 71289, upper := 71453, witness := RowWitness.topPrime 71287 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good227_checked :
    goodSegmentCheck 167 55 119
      { lower := 71454, upper := 71455, witness := RowWitness.topPrime 71453 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good228_checked :
    goodSegmentCheck 167 55 119
      { lower := 73167, upper := 73168, witness := RowWitness.topPrime 73141 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good229_checked :
    goodSegmentCheck 167 55 119
      { lower := 73205, upper := 73333, witness := RowWitness.topPrime 73189 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good230_checked :
    goodSegmentCheck 167 55 119
      { lower := 85805, upper := 85849, witness := RowWitness.topPrime 85793 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good231_checked :
    goodSegmentCheck 167 55 119
      { lower := 89383, upper := 89539, witness := RowWitness.topPrime 89381 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good232_checked :
    goodSegmentCheck 167 55 119
      { lower := 93845, upper := 93916, witness := RowWitness.topPrime 93827 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good233_checked :
    goodSegmentCheck 167 55 119
      { lower := 98415, upper := 98470, witness := RowWitness.topPrime 98411 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good234_checked :
    goodSegmentCheck 167 55 119
      { lower := 102152, upper := 102176, witness := RowWitness.topPrime 102149 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good235_checked :
    goodSegmentCheck 167 55 119
      { lower := 103041, upper := 103132, witness := RowWitness.topPrime 103007 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good236_checked :
    goodSegmentCheck 167 55 119
      { lower := 109503, upper := 109541, witness := RowWitness.topPrime 109481 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good237_checked :
    goodSegmentCheck 167 55 119
      { lower := 137842, upper := 137947, witness := RowWitness.topPrime 137831 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)

theorem row167_good238_checked :
    goodSegmentCheck 167 55 119
      { lower := 148955, upper := 149043, witness := RowWitness.topPrime 148949 } = true := by
  exact good_top_prime_checked (i := 167) (r := 55) (s := 119) (by decide) (by decide +kernel) (by decide) (by decide)


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good224_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good225_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good226_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good227_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good228_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good229_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good230_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good231_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good232_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good233_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good234_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good235_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good236_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good237_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_good238_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_goods_checked :
    row167.goods.all (goodSegmentCheck row167.height.i row167.height.r row167.height.s) = true := by
  change row167_goods.all (goodSegmentCheck 167 55 119) = true
  simp only [row167_goods, List.all_cons, List.all_nil,
    row167_good000_checked,
    row167_good001_checked,
    row167_good002_checked,
    row167_good003_checked,
    row167_good004_checked,
    row167_good005_checked,
    row167_good006_checked,
    row167_good007_checked,
    row167_good008_checked,
    row167_good009_checked,
    row167_good010_checked,
    row167_good011_checked,
    row167_good012_checked,
    row167_good013_checked,
    row167_good014_checked,
    row167_good015_checked,
    row167_good016_checked,
    row167_good017_checked,
    row167_good018_checked,
    row167_good019_checked,
    row167_good020_checked,
    row167_good021_checked,
    row167_good022_checked,
    row167_good023_checked,
    row167_good024_checked,
    row167_good025_checked,
    row167_good026_checked,
    row167_good027_checked,
    row167_good028_checked,
    row167_good029_checked,
    row167_good030_checked,
    row167_good031_checked,
    row167_good032_checked,
    row167_good033_checked,
    row167_good034_checked,
    row167_good035_checked,
    row167_good036_checked,
    row167_good037_checked,
    row167_good038_checked,
    row167_good039_checked,
    row167_good040_checked,
    row167_good041_checked,
    row167_good042_checked,
    row167_good043_checked,
    row167_good044_checked,
    row167_good045_checked,
    row167_good046_checked,
    row167_good047_checked,
    row167_good048_checked,
    row167_good049_checked,
    row167_good050_checked,
    row167_good051_checked,
    row167_good052_checked,
    row167_good053_checked,
    row167_good054_checked,
    row167_good055_checked,
    row167_good056_checked,
    row167_good057_checked,
    row167_good058_checked,
    row167_good059_checked,
    row167_good060_checked,
    row167_good061_checked,
    row167_good062_checked,
    row167_good063_checked,
    row167_good064_checked,
    row167_good065_checked,
    row167_good066_checked,
    row167_good067_checked,
    row167_good068_checked,
    row167_good069_checked,
    row167_good070_checked,
    row167_good071_checked,
    row167_good072_checked,
    row167_good073_checked,
    row167_good074_checked,
    row167_good075_checked,
    row167_good076_checked,
    row167_good077_checked,
    row167_good078_checked,
    row167_good079_checked,
    row167_good080_checked,
    row167_good081_checked,
    row167_good082_checked,
    row167_good083_checked,
    row167_good084_checked,
    row167_good085_checked,
    row167_good086_checked,
    row167_good087_checked,
    row167_good088_checked,
    row167_good089_checked,
    row167_good090_checked,
    row167_good091_checked,
    row167_good092_checked,
    row167_good093_checked,
    row167_good094_checked,
    row167_good095_checked,
    row167_good096_checked,
    row167_good097_checked,
    row167_good098_checked,
    row167_good099_checked,
    row167_good100_checked,
    row167_good101_checked,
    row167_good102_checked,
    row167_good103_checked,
    row167_good104_checked,
    row167_good105_checked,
    row167_good106_checked,
    row167_good107_checked,
    row167_good108_checked,
    row167_good109_checked,
    row167_good110_checked,
    row167_good111_checked,
    row167_good112_checked,
    row167_good113_checked,
    row167_good114_checked,
    row167_good115_checked,
    row167_good116_checked,
    row167_good117_checked,
    row167_good118_checked,
    row167_good119_checked,
    row167_good120_checked,
    row167_good121_checked,
    row167_good122_checked,
    row167_good123_checked,
    row167_good124_checked,
    row167_good125_checked,
    row167_good126_checked,
    row167_good127_checked,
    row167_good128_checked,
    row167_good129_checked,
    row167_good130_checked,
    row167_good131_checked,
    row167_good132_checked,
    row167_good133_checked,
    row167_good134_checked,
    row167_good135_checked,
    row167_good136_checked,
    row167_good137_checked,
    row167_good138_checked,
    row167_good139_checked,
    row167_good140_checked,
    row167_good141_checked,
    row167_good142_checked,
    row167_good143_checked,
    row167_good144_checked,
    row167_good145_checked,
    row167_good146_checked,
    row167_good147_checked,
    row167_good148_checked,
    row167_good149_checked,
    row167_good150_checked,
    row167_good151_checked,
    row167_good152_checked,
    row167_good153_checked,
    row167_good154_checked,
    row167_good155_checked,
    row167_good156_checked,
    row167_good157_checked,
    row167_good158_checked,
    row167_good159_checked,
    row167_good160_checked,
    row167_good161_checked,
    row167_good162_checked,
    row167_good163_checked,
    row167_good164_checked,
    row167_good165_checked,
    row167_good166_checked,
    row167_good167_checked,
    row167_good168_checked,
    row167_good169_checked,
    row167_good170_checked,
    row167_good171_checked,
    row167_good172_checked,
    row167_good173_checked,
    row167_good174_checked,
    row167_good175_checked,
    row167_good176_checked,
    row167_good177_checked,
    row167_good178_checked,
    row167_good179_checked,
    row167_good180_checked,
    row167_good181_checked,
    row167_good182_checked,
    row167_good183_checked,
    row167_good184_checked,
    row167_good185_checked,
    row167_good186_checked,
    row167_good187_checked,
    row167_good188_checked,
    row167_good189_checked,
    row167_good190_checked,
    row167_good191_checked,
    row167_good192_checked,
    row167_good193_checked,
    row167_good194_checked,
    row167_good195_checked,
    row167_good196_checked,
    row167_good197_checked,
    row167_good198_checked,
    row167_good199_checked,
    row167_good200_checked,
    row167_good201_checked,
    row167_good202_checked,
    row167_good203_checked,
    row167_good204_checked,
    row167_good205_checked,
    row167_good206_checked,
    row167_good207_checked,
    row167_good208_checked,
    row167_good209_checked,
    row167_good210_checked,
    row167_good211_checked,
    row167_good212_checked,
    row167_good213_checked,
    row167_good214_checked,
    row167_good215_checked,
    row167_good216_checked,
    row167_good217_checked,
    row167_good218_checked,
    row167_good219_checked,
    row167_good220_checked,
    row167_good221_checked,
    row167_good222_checked,
    row167_good223_checked,
    row167_good224_checked,
    row167_good225_checked,
    row167_good226_checked,
    row167_good227_checked,
    row167_good228_checked,
    row167_good229_checked,
    row167_good230_checked,
    row167_good231_checked,
    row167_good232_checked,
    row167_good233_checked,
    row167_good234_checked,
    row167_good235_checked,
    row167_good236_checked,
    row167_good237_checked,
    row167_good238_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_goods_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_registered :
    decide (row167.height ∈ heightCertificateData) = true := by
  decide +kernel

theorem row167_small_checked :
    coverCheck (2 * row167.height.i + 2) (row167.height.i * (row167.height.i - 1) - 1)
      (row167.goods.map goodSegmentBounds) = true := by
  decide +kernel

theorem row167_layerCover_checked :
    coverCheck (row167.height.i * (row167.height.i - 1)) (row167.height.n0 - 1)
      (row167.layers.map CoverLayer.bounds) = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_registered
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_small_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layerCover_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row167_bounds : List NatInterval :=
  [(336, 497), (498, 657), (658, 819), (820, 977), (978, 1143), (1144, 1295), (1296, 1457), (1458, 1619), (1620, 1785), (1786, 1949), (1950, 2115), (2116, 2279), (2280, 2439), (2440, 2603), (2604, 2759), (2760, 2919), (2920, 3083), (3084, 3249), (3250, 3395), (3396, 3557), (3558, 3723), (3724, 3885), (3886, 4047), (4048, 4193), (4194, 4343), (4344, 4505), (4506, 4659), (4660, 4823), (4824, 4983), (4984, 5139), (5140, 5285), (5286, 5447), (5448, 5609), (5610, 5757), (5758, 5915), (5916, 6069), (6070, 6233), (6234, 6395), (6396, 6555), (6556, 6719), (6720, 6885), (6886, 7049), (7050, 7209), (7210, 7373), (7374, 7535), (7536, 7695), (7696, 7857), (7858, 8019), (8020, 8183), (8184, 8345), (8346, 8495), (8496, 8633), (8634, 8795), (8796, 8949), (8950, 9107), (9108, 9269), (9270, 9423), (9424, 9587), (9588, 9753), (9754, 9915), (9916, 10073), (10074, 10235), (10236, 10389), (10390, 10535), (10536, 10697), (10698, 10857), (10858, 11019), (11020, 11169), (11170, 11327), (11328, 11487), (11488, 11649), (11650, 11799), (11800, 11955), (11956, 12119), (12120, 12285), (12286, 12447), (12448, 12603), (12604, 12767), (12768, 12929), (12930, 13089), (13090, 13229), (13230, 13395), (13396, 13547), (13548, 13703), (13704, 13863), (13864, 14025), (14026, 14177), (14178, 14343), (14344, 14507), (14508, 14669), (14670, 14835), (14836, 14997), (14998, 15149), (15150, 15315), (15316, 15479), (15480, 15639), (15640, 15795), (15796, 15957), (15958, 16103), (16104, 16269), (16270, 16433), (16434, 16599), (16600, 16739), (16740, 16895), (16896, 17055), (17056, 17219), (17220, 17375), (17376, 17525), (17526, 17685), (17686, 17849), (17850, 18005), (18006, 18155), (18156, 18315), (18316, 18479), (18480, 18627), (18628, 18783), (18784, 18939), (18940, 19085), (19086, 19247), (19248, 19403), (19404, 19569), (19570, 19725), (19726, 19883), (19884, 20033), (20034, 20195), (20196, 20349), (20350, 20513), (20514, 20675), (20676, 20829), (20830, 20975), (20976, 21129), (21130, 21287), (21288, 21449), (21450, 21599), (21600, 21765), (21766, 21923), (21924, 22077), (22078, 22239), (22240, 22395), (22396, 22557), (22558, 22715), (22716, 22875), (22876, 23037), (23038, 23195), (23196, 23355), (23356, 23505), (23506, 23663), (23664, 23829), (23830, 23993), (23994, 24159), (24160, 24317), (24318, 24483), (24484, 24647), (24648, 24797), (24798, 24959), (24960, 25119), (25120, 25283), (25284, 25427), (25428, 25589), (25590, 25755), (25756, 25913), (25914, 26079), (26080, 26219), (26220, 26375), (26376, 26537), (26538, 26679), (26680, 26835), (26836, 26999), (27000, 27159), (27160, 27309), (27310, 27465), (27466, 27623), (27624, 27721), (28125, 28289), (28290, 28291), (28561, 28597), (28672, 28835), (28836, 28883), (29791, 29934), (31213, 31359), (31360, 31416), (31423, 31495), (31827, 31850), (31974, 31993), (32805, 32934), (33614, 33655), (33708, 33780), (34322, 34485), (34486, 34557), (36517, 36663), (36664, 36667), (37303, 37376), (37446, 37469), (37500, 37659), (37660, 37704), (38307, 38457), (39366, 39470), (40401, 40494), (40931, 41093), (41094, 41097), (45056, 45056), (45369, 45419), (45927, 45962), (47526, 47687), (47688, 47690), (48013, 48127), (48373, 48537), (48538, 48539), (48778, 48834), (49152, 49296), (49298, 49318), (49379, 49464), (50421, 50576), (51076, 51171), (53138, 53211), (53248, 53405), (53406, 53414), (56307, 56335), (56454, 56473), (57245, 57288), (57344, 57411), (62500, 62576), (65610, 65702), (68644, 68805), (68806, 68810), (68921, 69056), (71289, 71453), (71454, 71455), (73167, 73168), (73205, 73333), (85805, 85849), (89383, 89539), (93845, 93916), (98415, 98470), (102152, 102176), (103041, 103132), (109503, 109541), (137842, 137947), (148955, 149043)]

theorem row167_bounds_eq : row167.goods.map goodSegmentBounds = row167_bounds := by
  rfl

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_bounds_eq

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row167_layer000_intervals : List ColouredInterval :=
  [(2, 28672, 28838), (2, 32768, 32934), (2, 36864, 37030), (2, 40960, 41126), (2, 45056, 45222), (2, 49152, 49318), (2, 53248, 53414), (2, 32768, 32934), (2, 40960, 41126), (2, 49152, 49318), (2, 32768, 32934), (2, 49152, 49318), (2, 32768, 32934), (3, 28431, 28597), (3, 32805, 32971), (3, 39366, 39532), (3, 45927, 46093), (3, 52488, 52654), (3, 39366, 39532), (5, 28125, 28291), (5, 31250, 31416), (5, 34375, 34541), (5, 37500, 37666), (5, 40625, 40791), (5, 31250, 31416), (5, 46875, 47041), (7, 28812, 28978), (7, 31213, 31379), (7, 33614, 33780), (7, 50421, 50587), (11, 29282, 29448), (11, 43923, 44089), (13, 28561, 28727), (13, 28561, 28727), (17, 29478, 29644), (17, 34391, 34557), (17, 39304, 39470), (17, 44217, 44383), (17, 49130, 49296), (17, 54043, 54209), (19, 34295, 34461), (19, 41154, 41320), (19, 48013, 48179), (19, 54872, 55038), (23, 36501, 36667), (23, 48668, 48834), (29, 48778, 48944), (31, 29791, 29957), (37, 50653, 50819), (47, 28717, 28883), (53, 28090, 28256), (53, 30899, 31065), (53, 33708, 33874), (53, 36517, 36683), (59, 27848, 28014), (59, 31329, 31495), (59, 34810, 34976), (59, 38291, 38457), (59, 41772, 41938), (59, 45253, 45419), (61, 29768, 29934), (61, 33489, 33655), (61, 37210, 37376), (61, 40931, 41097), (61, 44652, 44818), (61, 48373, 48539), (67, 31423, 31589), (67, 35912, 36078), (67, 40401, 40567), (67, 44890, 45056), (67, 49379, 49545), (67, 53868, 54034), (71, 30246, 30412), (71, 35287, 35453), (71, 40328, 40494), (71, 45369, 45535), (71, 50410, 50576), (73, 31974, 32140), (73, 37303, 37469), (73, 42632, 42798), (73, 47961, 48127), (73, 53290, 53456), (79, 31205, 31371), (79, 37446, 37612), (79, 43687, 43853), (79, 49928, 50094), (83, 27722, 27722), (83, 34445, 34611), (83, 41334, 41500), (83, 48223, 48389), (83, 55112, 55278), (89, 31684, 31850), (89, 39605, 39771), (89, 47526, 47692), (97, 28227, 28393), (97, 37636, 37802), (97, 47045, 47211), (101, 30603, 30769), (101, 40804, 40970), (101, 51005, 51171), (103, 31827, 31993), (103, 42436, 42602), (103, 53045, 53211), (107, 34347, 34513), (107, 45796, 45962), (109, 35643, 35809), (109, 47524, 47690), (113, 38307, 38473), (113, 51076, 51242), (127, 32258, 32424), (127, 48387, 48553), (131, 34322, 34488), (131, 51483, 51649), (137, 37538, 37704), (139, 38642, 38808), (149, 44402, 44568), (151, 45602, 45768), (157, 49298, 49464), (163, 53138, 53304)]

def row167_layer000_block000 : List ColouredInterval :=
  [(2, 28672, 28838), (2, 32768, 32934), (2, 36864, 37030), (2, 40960, 41126), (2, 45056, 45222), (2, 49152, 49318), (2, 53248, 53414), (2, 32768, 32934), (2, 40960, 41126), (2, 49152, 49318), (2, 32768, 32934), (2, 49152, 49318), (2, 32768, 32934), (3, 28431, 28597), (3, 32805, 32971), (3, 39366, 39532)]

def row167_layer000_block001 : List ColouredInterval :=
  [(3, 45927, 46093), (3, 52488, 52654), (3, 39366, 39532), (5, 28125, 28291), (5, 31250, 31416), (5, 34375, 34541), (5, 37500, 37666), (5, 40625, 40791), (5, 31250, 31416), (5, 46875, 47041), (7, 28812, 28978), (7, 31213, 31379), (7, 33614, 33780), (7, 50421, 50587), (11, 29282, 29448), (11, 43923, 44089)]

def row167_layer000_block002 : List ColouredInterval :=
  [(13, 28561, 28727), (13, 28561, 28727), (17, 29478, 29644), (17, 34391, 34557), (17, 39304, 39470), (17, 44217, 44383), (17, 49130, 49296), (17, 54043, 54209), (19, 34295, 34461), (19, 41154, 41320), (19, 48013, 48179), (19, 54872, 55038), (23, 36501, 36667), (23, 48668, 48834), (29, 48778, 48944), (31, 29791, 29957)]

def row167_layer000_block003 : List ColouredInterval :=
  [(37, 50653, 50819), (47, 28717, 28883), (53, 28090, 28256), (53, 30899, 31065), (53, 33708, 33874), (53, 36517, 36683), (59, 27848, 28014), (59, 31329, 31495), (59, 34810, 34976), (59, 38291, 38457), (59, 41772, 41938), (59, 45253, 45419), (61, 29768, 29934), (61, 33489, 33655), (61, 37210, 37376), (61, 40931, 41097)]

def row167_layer000_block004 : List ColouredInterval :=
  [(61, 44652, 44818), (61, 48373, 48539), (67, 31423, 31589), (67, 35912, 36078), (67, 40401, 40567), (67, 44890, 45056), (67, 49379, 49545), (67, 53868, 54034), (71, 30246, 30412), (71, 35287, 35453), (71, 40328, 40494), (71, 45369, 45535), (71, 50410, 50576), (73, 31974, 32140), (73, 37303, 37469), (73, 42632, 42798)]

def row167_layer000_block005 : List ColouredInterval :=
  [(73, 47961, 48127), (73, 53290, 53456), (79, 31205, 31371), (79, 37446, 37612), (79, 43687, 43853), (79, 49928, 50094), (83, 27722, 27722), (83, 34445, 34611), (83, 41334, 41500), (83, 48223, 48389), (83, 55112, 55278), (89, 31684, 31850), (89, 39605, 39771), (89, 47526, 47692), (97, 28227, 28393), (97, 37636, 37802)]

def row167_layer000_block006 : List ColouredInterval :=
  [(97, 47045, 47211), (101, 30603, 30769), (101, 40804, 40970), (101, 51005, 51171), (103, 31827, 31993), (103, 42436, 42602), (103, 53045, 53211), (107, 34347, 34513), (107, 45796, 45962), (109, 35643, 35809), (109, 47524, 47690), (113, 38307, 38473), (113, 51076, 51242), (127, 32258, 32424), (127, 48387, 48553), (131, 34322, 34488)]

def row167_layer000_block007 : List ColouredInterval :=
  [(131, 51483, 51649), (137, 37538, 37704), (139, 38642, 38808), (149, 44402, 44568), (151, 45602, 45768), (157, 49298, 49464), (163, 53138, 53304)]

def row167_layer000_chunks : List (List ColouredInterval) :=
  [row167_layer000_block000, row167_layer000_block001, row167_layer000_block002, row167_layer000_block003, row167_layer000_block004, row167_layer000_block005, row167_layer000_block006, row167_layer000_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_arithmetic : LayerArithmeticValid row167.height { lower := 27722, upper := 55444, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_enumeration :
    activePowerIntervalList 167 13 27722 55444 = row167_layer000_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs000 :
    row167_layer000_block000.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs001 :
    row167_layer000_block001.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs002 :
    row167_layer000_block002.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs003 :
    row167_layer000_block003.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs004 :
    row167_layer000_block004.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs005 :
    row167_layer000_block005.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs006 :
    row167_layer000_block006.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_pairs007 :
    row167_layer000_block007.all (fun I => row167_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row167_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_chunks_eq : row167_layer000_chunks.flatten = row167_layer000_intervals := by
  rfl

theorem row167_layer000_pairs : pairCoverCheck row167_layer000_intervals row167_bounds = true := by
  apply pairCoverCheck_of_chunks row167_layer000_chunks_eq
  intro block hblock
  simp only [row167_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row167_layer000_pairs000
  · exact row167_layer000_pairs001
  · exact row167_layer000_pairs002
  · exact row167_layer000_pairs003
  · exact row167_layer000_pairs004
  · exact row167_layer000_pairs005
  · exact row167_layer000_pairs006
  · exact row167_layer000_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row167_layer000_checked :
    coverLayerCheck row167.height row167.goods { lower := 27722, upper := 55444, M := 13 } = true := by
  exact coverLayerCheck_of_parts row167_layer000_arithmetic row167_layer000_enumeration row167_bounds_eq row167_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row167_layer000_checked
