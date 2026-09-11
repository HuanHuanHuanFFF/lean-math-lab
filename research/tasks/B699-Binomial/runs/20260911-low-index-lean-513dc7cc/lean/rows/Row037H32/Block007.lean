import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037H32.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037H32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer028_intervals : List ColouredInterval :=
  [(2, 412316860416, 412316860452), (2, 549755813888, 549755813924), (2, 687194767360, 687194767396), (2, 549755813888, 549755813924), (2, 549755813888, 549755813924), (3, 376572715308, 376572715344), (3, 470715894135, 470715894171), (3, 564859072962, 564859072998), (5, 457763671875, 457763671911), (5, 610351562500, 610351562536), (7, 387556041628, 387556041664), (7, 484445052035, 484445052071), (7, 678223072849, 678223072885), (11, 570623341222, 570623341258), (13, 413575475547, 413575475583), (13, 551433967396, 551433967432), (13, 689292459245, 689292459281), (17, 474351505988, 474351506024), (17, 592939382485, 592939382521), (19, 645375395558, 645375395594), (23, 391554926405, 391554926441), (29, 500246412961, 500246412997)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer028_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer028_arithmetic : LayerArithmeticValid row037.height { lower := 357556027392, upper := 715112054784, M := 5 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer028_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer028_enumeration :
    activePowerIntervalList 37 5 357556027392 715112054784 = row037_layer028_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer028_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer028_pairs : pairCoverCheck row037_layer028_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer028_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer028_checked :
    coverLayerCheck row037.height row037.goods { lower := 357556027392, upper := 715112054784, M := 5 } = true := by
  exact coverLayerCheck_of_parts row037_layer028_arithmetic row037_layer028_enumeration row037_bounds_eq row037_layer028_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer028_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer029_intervals : List ColouredInterval :=
  [(2, 824633720832, 824633720868), (2, 1099511627776, 1099511627812), (2, 1099511627776, 1099511627812), (2, 1099511627776, 1099511627812), (3, 847288609443, 847288609479), (3, 1129718145924, 1129718145960), (3, 847288609443, 847288609479), (5, 762939453125, 762939453161), (7, 1356446145698, 1356446145734), (11, 855935011833, 855935011869), (11, 1141246682444, 1141246682480), (19, 968063093337, 968063093373), (19, 1290750791116, 1290750791152), (29, 1000492825922, 1000492825958), (31, 852891037441, 852891037477)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer029_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer029_arithmetic : LayerArithmeticValid row037.height { lower := 715112054784, upper := 1430224109568, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer029_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer029_enumeration :
    activePowerIntervalList 37 4 715112054784 1430224109568 = row037_layer029_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer029_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer029_pairs : pairCoverCheck row037_layer029_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer029_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer029_checked :
    coverLayerCheck row037.height row037.goods { lower := 715112054784, upper := 1430224109568, M := 4 } = true := by
  exact coverLayerCheck_of_parts row037_layer029_arithmetic row037_layer029_enumeration row037_bounds_eq row037_layer029_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer029_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer030_intervals : List ColouredInterval :=
  [(2, 1649267441664, 1649267441700), (2, 2199023255552, 2199023255588), (2, 2199023255552, 2199023255588), (2, 2199023255552, 2199023255588), (3, 1694577218886, 1694577218922), (3, 2541865828329, 2541865828365), (3, 2541865828329, 2541865828365), (5, 1525878906250, 1525878906286), (5, 2288818359375, 2288818359411), (7, 2034669218547, 2034669218583), (7, 2712892291396, 2712892291432), (13, 1792160394037, 1792160394073), (17, 2015993900449, 2015993900485), (23, 1801152661463, 1801152661499), (29, 1500739238883, 1500739238919), (29, 2000985651844, 2000985651880), (31, 1705782074882, 1705782074918), (31, 2558673112323, 2558673112359)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer030_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer030_arithmetic : LayerArithmeticValid row037.height { lower := 1430224109568, upper := 2860448219136, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer030_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer030_enumeration :
    activePowerIntervalList 37 4 1430224109568 2860448219136 = row037_layer030_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer030_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer030_pairs : pairCoverCheck row037_layer030_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer030_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer030_checked :
    coverLayerCheck row037.height row037.goods { lower := 1430224109568, upper := 2860448219136, M := 4 } = true := by
  exact coverLayerCheck_of_parts row037_layer030_arithmetic row037_layer030_enumeration row037_bounds_eq row037_layer030_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer030_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer031_intervals : List ColouredInterval :=
  [(2, 3298534883328, 3298534883364), (2, 4398046511104, 4398046511140), (2, 4398046511104, 4398046511140), (2, 4398046511104, 4398046511140), (3, 3389154437772, 3389154437808), (3, 5083731656658, 5083731656694), (5, 3051757812500, 3051757812536), (5, 3814697265625, 3814697265661), (7, 4747561509943, 4747561509979), (11, 3138428376721, 3138428376757), (13, 3584320788074, 3584320788110), (13, 5376481182111, 5376481182147), (17, 4031987800898, 4031987800934), (23, 3602305322926, 3602305322962), (23, 5403457984389, 5403457984425), (31, 3411564149764, 3411564149800)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer031_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer031_arithmetic : LayerArithmeticValid row037.height { lower := 2860448219136, upper := 5720896438272, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer031_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer031_enumeration :
    activePowerIntervalList 37 4 2860448219136 5720896438272 = row037_layer031_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer031_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer031_pairs : pairCoverCheck row037_layer031_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer031_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer031_checked :
    coverLayerCheck row037.height row037.goods { lower := 2860448219136, upper := 5720896438272, M := 4 } = true := by
  exact coverLayerCheck_of_parts row037_layer031_arithmetic row037_layer031_enumeration row037_bounds_eq row037_layer031_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer032_intervals : List ColouredInterval :=
  [(2, 6597069766656, 6597069766692), (2, 8796093022208, 8796093022244), (2, 8796093022208, 8796093022244), (2, 8796093022208, 8796093022244), (3, 7625597484987, 7625597485023), (3, 10167463313316, 10167463313352), (3, 7625597484987, 7625597485023), (5, 7629394531250, 7629394531286), (7, 9495123019886, 9495123019922), (11, 6276856753442, 6276856753478), (11, 9415285130163, 9415285130199), (13, 7168641576148, 7168641576184), (17, 6047981701347, 6047981701383), (17, 8063975601796, 8063975601832), (19, 6131066257801, 6131066257837), (23, 7204610645852, 7204610645888)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer032_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer032_arithmetic : LayerArithmeticValid row037.height { lower := 5720896438272, upper := 11441792876544, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer032_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer032_enumeration :
    activePowerIntervalList 37 4 5720896438272 11441792876544 = row037_layer032_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer032_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer032_pairs : pairCoverCheck row037_layer032_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer032_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer032_checked :
    coverLayerCheck row037.height row037.goods { lower := 5720896438272, upper := 11441792876544, M := 4 } = true := by
  exact coverLayerCheck_of_parts row037_layer032_arithmetic row037_layer032_enumeration row037_bounds_eq row037_layer032_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer032_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer033_intervals : List ColouredInterval :=
  [(2, 13194139533312, 13194139533348), (2, 17592186044416, 17592186044452), (2, 17592186044416, 17592186044452), (3, 15251194969974, 15251194970010), (3, 22876792454961, 22876792454997), (3, 22876792454961, 22876792454997), (5, 11444091796875, 11444091796911), (5, 19073486328125, 19073486328161), (7, 14242684529829, 14242684529865), (19, 12262132515602, 12262132515638), (19, 18393198773403, 18393198773439), (29, 14507145975869, 14507145975905)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer033_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer033_arithmetic : LayerArithmeticValid row037.height { lower := 11441792876544, upper := 22883585753088, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer033_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer033_enumeration :
    activePowerIntervalList 37 3 11441792876544 22883585753088 = row037_layer033_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer033_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer033_pairs : pairCoverCheck row037_layer033_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer033_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer033_checked :
    coverLayerCheck row037.height row037.goods { lower := 11441792876544, upper := 22883585753088, M := 3 } = true := by
  exact coverLayerCheck_of_parts row037_layer033_arithmetic row037_layer033_enumeration row037_bounds_eq row037_layer033_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer033_checked
