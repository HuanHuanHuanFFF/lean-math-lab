import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row037.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row037.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer015_checked :
    coverLayerCheck row037.height row037.goods { lower := 43646976, upper := 87293952, M := 11 } = true := by
  exact coverLayerCheck_of_parts row037_layer015_arithmetic row037_layer015_enumeration row037_bounds_eq row037_layer015_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer016_intervals : List ColouredInterval :=
  [(2, 100663296, 100663332), (2, 117440512, 117440548), (2, 134217728, 134217764), (2, 150994944, 150994980), (2, 167772160, 167772196), (2, 100663296, 100663332), (2, 134217728, 134217764), (2, 167772160, 167772196), (2, 134217728, 134217764), (2, 134217728, 134217764), (3, 100442349, 100442385), (3, 114791256, 114791292), (3, 129140163, 129140199), (3, 143489070, 143489106), (3, 129140163, 129140199), (3, 172186884, 172186920), (3, 129140163, 129140199), (5, 87890625, 87890661), (5, 97656250, 97656286), (5, 97656250, 97656286), (5, 146484375, 146484411), (7, 121060821, 121060857), (7, 161414428, 161414464), (11, 97435855, 97435891), (11, 116923026, 116923062), (11, 136410197, 136410233), (11, 155897368, 155897404), (13, 125497034, 125497070), (17, 96550276, 96550312), (17, 120687845, 120687881), (17, 144825414, 144825450), (17, 168962983, 168963019), (19, 94091762, 94091798), (19, 141137643, 141137679), (23, 148035889, 148035925), (29, 102555745, 102555781), (29, 123066894, 123066930), (29, 143578043, 143578079), (29, 164089192, 164089228), (31, 114516604, 114516640), (31, 143145755, 143145791), (31, 171774906, 171774942)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer016_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer016_arithmetic : LayerArithmeticValid row037.height { lower := 87293952, upper := 174587904, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer016_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer016_enumeration :
    activePowerIntervalList 37 10 87293952 174587904 = row037_layer016_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer016_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer016_pairs : pairCoverCheck row037_layer016_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer016_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer016_checked :
    coverLayerCheck row037.height row037.goods { lower := 87293952, upper := 174587904, M := 10 } = true := by
  exact coverLayerCheck_of_parts row037_layer016_arithmetic row037_layer016_enumeration row037_bounds_eq row037_layer016_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer017_intervals : List ColouredInterval :=
  [(2, 201326592, 201326628), (2, 234881024, 234881060), (2, 268435456, 268435492), (2, 301989888, 301989924), (2, 201326592, 201326628), (2, 268435456, 268435492), (2, 335544320, 335544356), (2, 268435456, 268435492), (2, 268435456, 268435492), (3, 215233605, 215233641), (3, 258280326, 258280362), (3, 301327047, 301327083), (3, 344373768, 344373804), (3, 258280326, 258280362), (5, 195312500, 195312536), (5, 244140625, 244140661), (5, 292968750, 292968786), (5, 341796875, 341796911), (5, 244140625, 244140661), (7, 201768035, 201768071), (7, 242121642, 242121678), (7, 282475249, 282475285), (7, 322828856, 322828892), (7, 282475249, 282475285), (11, 175384539, 175384575), (11, 214358881, 214358917), (13, 188245551, 188245587), (13, 250994068, 250994104), (13, 313742585, 313742621), (17, 193100552, 193100588), (17, 217238121, 217238157), (19, 188183524, 188183560), (19, 235229405, 235229441), (19, 282275286, 282275322), (19, 329321167, 329321203), (23, 296071778, 296071814), (29, 184600341, 184600377), (31, 200404057, 200404093), (31, 229033208, 229033244), (31, 257662359, 257662395)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer017_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer017_arithmetic : LayerArithmeticValid row037.height { lower := 174587904, upper := 349175808, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer017_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer017_enumeration :
    activePowerIntervalList 37 9 174587904 349175808 = row037_layer017_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer017_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer017_pairs : pairCoverCheck row037_layer017_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer017_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer017_checked :
    coverLayerCheck row037.height row037.goods { lower := 174587904, upper := 349175808, M := 9 } = true := by
  exact coverLayerCheck_of_parts row037_layer017_arithmetic row037_layer017_enumeration row037_bounds_eq row037_layer017_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer017_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer018_intervals : List ColouredInterval :=
  [(2, 402653184, 402653220), (2, 469762048, 469762084), (2, 536870912, 536870948), (2, 603979776, 603979812), (2, 402653184, 402653220), (2, 536870912, 536870948), (2, 671088640, 671088676), (2, 536870912, 536870948), (2, 536870912, 536870948), (3, 387420489, 387420525), (3, 387420489, 387420525), (3, 516560652, 516560688), (3, 645700815, 645700851), (3, 387420489, 387420525), (5, 390625000, 390625036), (5, 439453125, 439453161), (5, 488281250, 488281286), (7, 363182463, 363182499), (7, 564950498, 564950534), (11, 428717762, 428717798), (11, 643076643, 643076679), (13, 376491102, 376491138), (13, 439239619, 439239655), (13, 501988136, 501988172), (13, 564736653, 564736689), (17, 410338673, 410338709), (19, 376367048, 376367084), (19, 423412929, 423412965), (23, 444107667, 444107703), (23, 592143556, 592143592), (29, 594823321, 594823357)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer018_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer018_arithmetic : LayerArithmeticValid row037.height { lower := 349175808, upper := 698351616, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer018_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer018_enumeration :
    activePowerIntervalList 37 9 349175808 698351616 = row037_layer018_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer018_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer018_pairs : pairCoverCheck row037_layer018_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer018_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer018_checked :
    coverLayerCheck row037.height row037.goods { lower := 349175808, upper := 698351616, M := 9 } = true := by
  exact coverLayerCheck_of_parts row037_layer018_arithmetic row037_layer018_enumeration row037_bounds_eq row037_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer018_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer019_intervals : List ColouredInterval :=
  [(2, 805306368, 805306404), (2, 939524096, 939524132), (2, 1073741824, 1073741860), (2, 805306368, 805306404), (2, 1073741824, 1073741860), (2, 1342177280, 1342177316), (2, 1073741824, 1073741860), (2, 1073741824, 1073741860), (3, 774840978, 774841014), (3, 903981141, 903981177), (3, 1033121304, 1033121340), (3, 774840978, 774841014), (3, 1162261467, 1162261503), (3, 1162261467, 1162261503), (5, 732421875, 732421911), (5, 976562500, 976562536), (5, 1220703125, 1220703161), (5, 1220703125, 1220703161), (7, 847425747, 847425783), (7, 1129900996, 1129901032), (11, 857435524, 857435560), (11, 1071794405, 1071794441), (11, 1286153286, 1286153322), (13, 815730721, 815730757), (17, 820677346, 820677382), (17, 1231016019, 1231016055), (19, 893871739, 893871775), (23, 740179445, 740179481), (23, 888215334, 888215370), (23, 1036251223, 1036251259), (23, 1184287112, 1184287148), (29, 1189646642, 1189646678), (31, 887503681, 887503717)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer019_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer019_arithmetic : LayerArithmeticValid row037.height { lower := 698351616, upper := 1396703232, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer019_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer019_enumeration :
    activePowerIntervalList 37 8 698351616 1396703232 = row037_layer019_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer019_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer019_pairs : pairCoverCheck row037_layer019_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer019_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer019_checked :
    coverLayerCheck row037.height row037.goods { lower := 698351616, upper := 1396703232, M := 8 } = true := by
  exact coverLayerCheck_of_parts row037_layer019_arithmetic row037_layer019_enumeration row037_bounds_eq row037_layer019_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer020_intervals : List ColouredInterval :=
  [(2, 1610612736, 1610612772), (2, 1879048192, 1879048228), (2, 2147483648, 2147483684), (2, 1610612736, 1610612772), (2, 2147483648, 2147483684), (2, 2684354560, 2684354596), (2, 2147483648, 2147483684), (2, 2147483648, 2147483684), (3, 1549681956, 1549681992), (3, 1937102445, 1937102481), (3, 2324522934, 2324522970), (3, 2711943423, 2711943459), (3, 2324522934, 2324522970), (5, 1464843750, 1464843786), (5, 1708984375, 1708984411), (5, 1953125000, 1953125036), (5, 2441406250, 2441406286), (7, 1412376245, 1412376281), (7, 1694851494, 1694851530), (7, 1977326743, 1977326779), (7, 2259801992, 2259802028), (7, 1977326743, 1977326779), (11, 1500512167, 1500512203), (11, 1714871048, 1714871084), (11, 2357947691, 2357947727), (13, 1631461442, 1631461478), (13, 2447192163, 2447192199), (17, 1641354692, 1641354728), (17, 2051693365, 2051693401), (17, 2462032038, 2462032074), (19, 1787743478, 1787743514), (19, 2681615217, 2681615253), (29, 1784469963, 1784469999), (29, 2379293284, 2379293320), (31, 1775007362, 1775007398), (31, 2662511043, 2662511079)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer020_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer020_arithmetic : LayerArithmeticValid row037.height { lower := 1396703232, upper := 2793406464, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer020_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer020_enumeration :
    activePowerIntervalList 37 8 1396703232 2793406464 = row037_layer020_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer020_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer020_pairs : pairCoverCheck row037_layer020_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer020_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer020_checked :
    coverLayerCheck row037.height row037.goods { lower := 1396703232, upper := 2793406464, M := 8 } = true := by
  exact coverLayerCheck_of_parts row037_layer020_arithmetic row037_layer020_enumeration row037_bounds_eq row037_layer020_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer021_intervals : List ColouredInterval :=
  [(2, 3221225472, 3221225508), (2, 3758096384, 3758096420), (2, 3221225472, 3221225508), (2, 4294967296, 4294967332), (2, 5368709120, 5368709156), (2, 4294967296, 4294967332), (2, 4294967296, 4294967332), (3, 3486784401, 3486784437), (3, 4649045868, 4649045904), (3, 3486784401, 3486784437), (5, 3662109375, 3662109411), (5, 4882812500, 4882812536), (7, 3954653486, 3954653522), (11, 4715895382, 4715895418), (13, 3262922884, 3262922920), (13, 4078653605, 4078653641), (13, 4894384326, 4894384362), (17, 2872370711, 2872370747), (19, 3575486956, 3575486992), (19, 4469358695, 4469358731), (19, 5363230434, 5363230470), (23, 3404825447, 3404825483), (29, 2974116605, 2974116641), (29, 3568939926, 3568939962), (29, 4163763247, 4163763283), (31, 3550014724, 3550014760), (31, 4437518405, 4437518441), (31, 5325022086, 5325022122)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer021_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer021_arithmetic : LayerArithmeticValid row037.height { lower := 2793406464, upper := 5586812928, M := 7 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer021_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer021_enumeration :
    activePowerIntervalList 37 7 2793406464 5586812928 = row037_layer021_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer021_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer021_pairs : pairCoverCheck row037_layer021_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer021_pairs
