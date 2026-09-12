import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block024

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer112_arithmetic : LayerArithmeticValid row035.height { lower := 6178833261656444877951290631771914240, upper := 12357666523312889755902581263543828480, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer112_enumeration :
    activePowerIntervalList 35 3 6178833261656444877951290631771914240 12357666523312889755902581263543828480 = row035_layer112_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer112_pairs : pairCoverCheck row035_layer112_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer112_checked :
    coverLayerCheck row035.height row035.goods { lower := 6178833261656444877951290631771914240, upper := 12357666523312889755902581263543828480, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer112_arithmetic row035_layer112_enumeration row035_bounds_eq row035_layer112_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer113_intervals : List ColouredInterval :=
  [(2, 15950735949418990474845684723364134912, 15950735949418990474845684723364134946), (2, 21267647932558653966460912964485513216, 21267647932558653966460912964485513250), (2, 21267647932558653966460912964485513216, 21267647932558653966460912964485513250), (3, 16423203268260658146231467800709255289, 16423203268260658146231467800709255323), (3, 16423203268260658146231467800709255289, 16423203268260658146231467800709255323), (13, 17268391287296787233868214493802625959, 17268391287296787233868214493802625993), (17, 16386931451629531113108002057584437698, 16386931451629531113108002057584437732), (17, 24580397177444296669662003086376656547, 24580397177444296669662003086376656581), (19, 24259643989178443689001002042729820358, 24259643989178443689001002042729820392), (23, 17529633136636318654817840294177939541, 17529633136636318654817840294177939575), (31, 19232792489931358333837313998767870751, 19232792489931358333837313998767870785)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer113_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer113_arithmetic : LayerArithmeticValid row035.height { lower := 12357666523312889755902581263543828480, upper := 24715333046625779511805162527087656960, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer113_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer113_enumeration :
    activePowerIntervalList 35 3 12357666523312889755902581263543828480 24715333046625779511805162527087656960 = row035_layer113_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer113_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer113_pairs : pairCoverCheck row035_layer113_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer113_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer113_checked :
    coverLayerCheck row035.height row035.goods { lower := 12357666523312889755902581263543828480, upper := 24715333046625779511805162527087656960, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer113_arithmetic row035_layer113_enumeration row035_bounds_eq row035_layer113_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer113_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer114_intervals : List ColouredInterval :=
  [(2, 31901471898837980949691369446728269824, 31901471898837980949691369446728269858), (2, 42535295865117307932921825928971026432, 42535295865117307932921825928971026466), (2, 42535295865117307932921825928971026432, 42535295865117307932921825928971026466), (3, 32846406536521316292462935601418510578, 32846406536521316292462935601418510612), (3, 49269609804781974438694403402127765867, 49269609804781974438694403402127765901), (3, 49269609804781974438694403402127765867, 49269609804781974438694403402127765901), (11, 30912680532870672635673352936887453361, 30912680532870672635673352936887453395), (19, 36389465983767665533501503064094730537, 36389465983767665533501503064094730571), (31, 38465584979862716667674627997535741502, 38465584979862716667674627997535741536)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer114_arithmetic : LayerArithmeticValid row035.height { lower := 24715333046625779511805162527087656960, upper := 49430666093251559023610325054175313920, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer114_enumeration :
    activePowerIntervalList 35 3 24715333046625779511805162527087656960 49430666093251559023610325054175313920 = row035_layer114_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer114_pairs : pairCoverCheck row035_layer114_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer114_checked :
    coverLayerCheck row035.height row035.goods { lower := 24715333046625779511805162527087656960, upper := 49430666093251559023610325054175313920, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer114_arithmetic row035_layer114_enumeration row035_bounds_eq row035_layer114_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer115_intervals : List ColouredInterval :=
  [(2, 63802943797675961899382738893456539648, 63802943797675961899382738893456539682), (2, 85070591730234615865843651857942052864, 85070591730234615865843651857942052898), (2, 85070591730234615865843651857942052864, 85070591730234615865843651857942052898), (3, 98539219609563948877388806804255531734, 98539219609563948877388806804255531768), (11, 61825361065741345271346705873774906722, 61825361065741345271346705873774906756), (11, 92738041598612017907020058810662360083, 92738041598612017907020058810662360117), (13, 74829695578286078013428929473144712489, 74829695578286078013428929473144712523), (31, 57698377469794075001511941996303612253, 57698377469794075001511941996303612287)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer115_arithmetic : LayerArithmeticValid row035.height { lower := 49430666093251559023610325054175313920, upper := 98861332186503118047220650108350627840, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer115_enumeration :
    activePowerIntervalList 35 3 49430666093251559023610325054175313920 98861332186503118047220650108350627840 = row035_layer115_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer115_pairs : pairCoverCheck row035_layer115_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer115_checked :
    coverLayerCheck row035.height row035.goods { lower := 49430666093251559023610325054175313920, upper := 98861332186503118047220650108350627840, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer115_arithmetic row035_layer115_enumeration row035_bounds_eq row035_layer115_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer113_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer114_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer115_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer116_intervals : List ColouredInterval :=
  [(2, 127605887595351923798765477786913079296, 127605887595351923798765477786913079330), (2, 170141183460469231731687303715884105728, 170141183460469231731687303715884105762), (2, 170141183460469231731687303715884105728, 170141183460469231731687303715884105762), (3, 147808829414345923316083210206383297601, 147808829414345923316083210206383297635), (3, 147808829414345923316083210206383297601, 147808829414345923316083210206383297635), (13, 149659391156572156026857858946289424978, 149659391156572156026857858946289425012), (17, 139288917338851014461418017489467720433, 139288917338851014461418017489467720467), (23, 134393854047545109686936775588697536481, 134393854047545109686936775588697536515), (29, 105280501585190501232597819292755591721, 105280501585190501232597819292755591755)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer116_arithmetic : LayerArithmeticValid row035.height { lower := 98861332186503118047220650108350627840, upper := 197722664373006236094441300216701255680, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer116_enumeration :
    activePowerIntervalList 35 3 98861332186503118047220650108350627840 197722664373006236094441300216701255680 = row035_layer116_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer116_pairs : pairCoverCheck row035_layer116_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer116_checked :
    coverLayerCheck row035.height row035.goods { lower := 98861332186503118047220650108350627840, upper := 197722664373006236094441300216701255680, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer116_arithmetic row035_layer116_enumeration row035_bounds_eq row035_layer116_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer117_intervals : List ColouredInterval :=
  [(2, 255211775190703847597530955573826158592, 255211775190703847597530955573826158626), (2, 340282366920938463463374607431768211456, 340282366920938463463374607431768211490), (2, 340282366920938463463374607431768211456, 340282366920938463463374607431768211490), (3, 295617658828691846632166420412766595202, 295617658828691846632166420412766595236), (11, 340039485861577398992406882305761986971, 340039485861577398992406882305761987005), (13, 224489086734858234040286788419434137467, 224489086734858234040286788419434137501), (17, 278577834677702028922836034978935440866, 278577834677702028922836034978935440900), (19, 230466617897195215045509519405933293401, 230466617897195215045509519405933293435), (23, 268787708095090219373873551177395072962, 268787708095090219373873551177395072996), (29, 210561003170381002465195638585511183442, 210561003170381002465195638585511183476), (29, 315841504755571503697793457878266775163, 315841504755571503697793457878266775197)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer117_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer117_arithmetic : LayerArithmeticValid row035.height { lower := 197722664373006236094441300216701255680, upper := 395445328746012472188882600433402511360, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer117_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer117_enumeration :
    activePowerIntervalList 35 3 197722664373006236094441300216701255680 395445328746012472188882600433402511360 = row035_layer117_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer117_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer117_pairs : pairCoverCheck row035_layer117_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer117_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer117_checked :
    coverLayerCheck row035.height row035.goods { lower := 197722664373006236094441300216701255680, upper := 395445328746012472188882600433402511360, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer117_arithmetic row035_layer117_enumeration row035_bounds_eq row035_layer117_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer117_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer118_intervals : List ColouredInterval :=
  [(2, 510423550381407695195061911147652317184, 510423550381407695195061911147652317218), (2, 680564733841876926926749214863536422912, 680564733841876926926749214863536422946), (2, 680564733841876926926749214863536422912, 680564733841876926926749214863536422946), (3, 443426488243037769948249630619149892803, 443426488243037769948249630619149892837), (3, 443426488243037769948249630619149892803, 443426488243037769948249630619149892837), (11, 680078971723154797984813764611523973942, 680078971723154797984813764611523973976), (17, 417866752016553043384254052468403161299, 417866752016553043384254052468403161333), (19, 460933235794390430091019038811866586802, 460933235794390430091019038811866586836), (19, 691399853691585645136528558217799880203, 691399853691585645136528558217799880237), (23, 403181562142635329060810326766092609443, 403181562142635329060810326766092609477), (31, 596216567187872108348956733961803993281, 596216567187872108348956733961803993315)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer118_arithmetic : LayerArithmeticValid row035.height { lower := 395445328746012472188882600433402511360, upper := 790890657492024944377765200866805022720, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_arithmetic
