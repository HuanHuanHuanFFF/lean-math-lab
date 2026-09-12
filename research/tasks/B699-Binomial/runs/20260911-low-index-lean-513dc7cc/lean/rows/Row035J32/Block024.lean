import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035J32.Block023

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer106_arithmetic : LayerArithmeticValid row035.height { lower := 96544269713381951217988916121436160, upper := 193088539426763902435977832242872320, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer106_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer106_enumeration :
    activePowerIntervalList 35 4 96544269713381951217988916121436160 193088539426763902435977832242872320 = row035_layer106_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer106_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer106_pairs : pairCoverCheck row035_layer106_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer106_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer106_checked :
    coverLayerCheck row035.height row035.goods { lower := 96544269713381951217988916121436160, upper := 193088539426763902435977832242872320, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer106_arithmetic row035_layer106_enumeration row035_bounds_eq row035_layer106_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer106_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer107_intervals : List ColouredInterval :=
  [(2, 249230249209671726169463823802564608, 249230249209671726169463823802564642), (2, 332306998946228968225951765070086144, 332306998946228968225951765070086178), (2, 332306998946228968225951765070086144, 332306998946228968225951765070086178), (3, 202755595904452569706561330872953769, 202755595904452569706561330872953803), (3, 202755595904452569706561330872953769, 202755595904452569706561330872953803), (11, 255476698618765889551019445759400441, 255476698618765889551019445759400475), (23, 254052654154149545721997685422868689, 254052654154149545721997685422868723), (29, 250369801629466114702967465618919362, 250369801629466114702967465618919396), (29, 375554702444199172054451198428379043, 375554702444199172054451198428379077)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer107_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer107_arithmetic : LayerArithmeticValid row035.height { lower := 193088539426763902435977832242872320, upper := 386177078853527804871955664485744640, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer107_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer107_enumeration :
    activePowerIntervalList 35 3 193088539426763902435977832242872320 386177078853527804871955664485744640 = row035_layer107_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer107_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer107_pairs : pairCoverCheck row035_layer107_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer107_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer107_checked :
    coverLayerCheck row035.height row035.goods { lower := 193088539426763902435977832242872320, upper := 386177078853527804871955664485744640, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer107_arithmetic row035_layer107_enumeration row035_bounds_eq row035_layer107_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer107_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer104_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer105_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer106_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer107_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer108_intervals : List ColouredInterval :=
  [(2, 498460498419343452338927647605129216, 498460498419343452338927647605129250), (2, 664613997892457936451903530140172288, 664613997892457936451903530140172322), (2, 664613997892457936451903530140172288, 664613997892457936451903530140172322), (3, 405511191808905139413122661745907538, 405511191808905139413122661745907572), (3, 608266787713357709119683992618861307, 608266787713357709119683992618861341), (3, 608266787713357709119683992618861307, 608266787713357709119683992618861341), (11, 510953397237531779102038891518800882, 510953397237531779102038891518800916), (11, 766430095856297668653058337278201323, 766430095856297668653058337278201357), (13, 442779263776840698304313192148785281, 442779263776840698304313192148785315), (17, 481968572106750915091411825223071697, 481968572106750915091411825223071731), (19, 638411683925748518131605316913942641, 638411683925748518131605316913942675), (23, 508105308308299091443995370845737378, 508105308308299091443995370845737412), (23, 762157962462448637165993056268606067, 762157962462448637165993056268606101), (31, 620412660965527688188300451573157121, 620412660965527688188300451573157155)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer108_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer108_arithmetic : LayerArithmeticValid row035.height { lower := 386177078853527804871955664485744640, upper := 772354157707055609743911328971489280, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer108_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer108_enumeration :
    activePowerIntervalList 35 3 386177078853527804871955664485744640 772354157707055609743911328971489280 = row035_layer108_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer108_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer108_pairs : pairCoverCheck row035_layer108_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer108_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer108_checked :
    coverLayerCheck row035.height row035.goods { lower := 386177078853527804871955664485744640, upper := 772354157707055609743911328971489280, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer108_arithmetic row035_layer108_enumeration row035_bounds_eq row035_layer108_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer108_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer109_intervals : List ColouredInterval :=
  [(2, 996920996838686904677855295210258432, 996920996838686904677855295210258466), (2, 1329227995784915872903807060280344576, 1329227995784915872903807060280344610), (2, 1329227995784915872903807060280344576, 1329227995784915872903807060280344610), (3, 1216533575426715418239367985237722614, 1216533575426715418239367985237722648), (13, 885558527553681396608626384297570562, 885558527553681396608626384297570596), (13, 1328337791330522094912939576446355843, 1328337791330522094912939576446355877), (17, 963937144213501830182823650446143394, 963937144213501830182823650446143428), (17, 1445905716320252745274235475669215091, 1445905716320252745274235475669215125), (19, 1276823367851497036263210633827885282, 1276823367851497036263210633827885316), (31, 1240825321931055376376600903146314242, 1240825321931055376376600903146314276)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer109_arithmetic : LayerArithmeticValid row035.height { lower := 772354157707055609743911328971489280, upper := 1544708315414111219487822657942978560, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer109_enumeration :
    activePowerIntervalList 35 3 772354157707055609743911328971489280 1544708315414111219487822657942978560 = row035_layer109_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer109_pairs : pairCoverCheck row035_layer109_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer109_checked :
    coverLayerCheck row035.height row035.goods { lower := 772354157707055609743911328971489280, upper := 1544708315414111219487822657942978560, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer109_arithmetic row035_layer109_enumeration row035_bounds_eq row035_layer109_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer110_intervals : List ColouredInterval :=
  [(2, 1993841993677373809355710590420516864, 1993841993677373809355710590420516898), (2, 2658455991569831745807614120560689152, 2658455991569831745807614120560689186), (2, 2658455991569831745807614120560689152, 2658455991569831745807614120560689186), (3, 1824800363140073127359051977856583921, 1824800363140073127359051977856583955), (3, 1824800363140073127359051977856583921, 1824800363140073127359051977856583955), (11, 2810243684806424785061213903353404851, 2810243684806424785061213903353404885), (19, 1915235051777245554394815950741827923, 1915235051777245554394815950741827957), (31, 1861237982896583064564901354719471363, 1861237982896583064564901354719471397)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer110_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer110_arithmetic : LayerArithmeticValid row035.height { lower := 1544708315414111219487822657942978560, upper := 3089416630828222438975645315885957120, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer110_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer110_enumeration :
    activePowerIntervalList 35 3 1544708315414111219487822657942978560 3089416630828222438975645315885957120 = row035_layer110_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer110_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer110_pairs : pairCoverCheck row035_layer110_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer110_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer110_checked :
    coverLayerCheck row035.height row035.goods { lower := 1544708315414111219487822657942978560, upper := 3089416630828222438975645315885957120, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer110_arithmetic row035_layer110_enumeration row035_bounds_eq row035_layer110_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer110_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer111_intervals : List ColouredInterval :=
  [(2, 3987683987354747618711421180841033728, 3987683987354747618711421180841033762), (2, 5316911983139663491615228241121378304, 5316911983139663491615228241121378338), (2, 5316911983139663491615228241121378304, 5316911983139663491615228241121378338), (3, 3649600726280146254718103955713167842, 3649600726280146254718103955713167876), (3, 5474401089420219382077155933569751763, 5474401089420219382077155933569751797), (3, 5474401089420219382077155933569751763, 5474401089420219382077155933569751797), (11, 5620487369612849570122427806706809702, 5620487369612849570122427806706809736), (13, 5756130429098929077956071497934208653, 5756130429098929077956071497934208687), (23, 5843211045545439551605946764725979847, 5843211045545439551605946764725979881), (29, 3630362123627258663193028251474330749, 3630362123627258663193028251474330783)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer111_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer111_arithmetic : LayerArithmeticValid row035.height { lower := 3089416630828222438975645315885957120, upper := 6178833261656444877951290631771914240, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer111_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer111_enumeration :
    activePowerIntervalList 35 3 3089416630828222438975645315885957120 6178833261656444877951290631771914240 = row035_layer111_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer111_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer111_pairs : pairCoverCheck row035_layer111_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer111_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer111_checked :
    coverLayerCheck row035.height row035.goods { lower := 3089416630828222438975645315885957120, upper := 6178833261656444877951290631771914240, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer111_arithmetic row035_layer111_enumeration row035_bounds_eq row035_layer111_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer108_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer109_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer110_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer111_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer112_intervals : List ColouredInterval :=
  [(2, 7975367974709495237422842361682067456, 7975367974709495237422842361682067490), (2, 10633823966279326983230456482242756608, 10633823966279326983230456482242756642), (2, 10633823966279326983230456482242756608, 10633823966279326983230456482242756642), (3, 10948802178840438764154311867139503526, 10948802178840438764154311867139503560), (11, 8430731054419274355183641710060214553, 8430731054419274355183641710060214587), (13, 11512260858197858155912142995868417306, 11512260858197858155912142995868417340), (17, 8193465725814765556554001028792218849, 8193465725814765556554001028792218883), (19, 12129821994589221844500501021364910179, 12129821994589221844500501021364910213), (23, 11686422091090879103211893529451959694, 11686422091090879103211893529451959728), (29, 7260724247254517326386056502948661498, 7260724247254517326386056502948661532), (29, 10891086370881775989579084754422992247, 10891086370881775989579084754422992281)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer112_intervals
