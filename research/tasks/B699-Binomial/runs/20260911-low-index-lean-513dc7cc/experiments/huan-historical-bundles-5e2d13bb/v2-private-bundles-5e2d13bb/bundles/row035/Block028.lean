import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row035.Block027
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row035.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer130_pairs : pairCoverCheck row035_layer130_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer130_checked :
    coverLayerCheck row035.height row035.goods { lower := 1619744066543667086085663131375216686530560, upper := 3239488133087334172171326262750433373061120, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer130_arithmetic row035_layer130_enumeration row035_bounds_eq row035_layer130_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer131_intervals : List ColouredInterval :=
  [(2, 5575186299632655785383929568162090376495104, 5575186299632655785383929568162090376495138), (2, 5575186299632655785383929568162090376495104, 5575186299632655785383929568162090376495138), (3, 5818642378725141617260931652984484893360966, 5818642378725141617260931652984484893361000), (11, 4978518112499354698647829163838661251242411, 4978518112499354698647829163838661251242445), (13, 4274421870822857348283087309364972266796658, 4274421870822857348283087309364972266796692), (23, 3270340044392962699121919497175365852728654, 3270340044392962699121919497175365852728688), (29, 5135372306322422269123656429462032252966938, 5135372306322422269123656429462032252966972)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer131_arithmetic : LayerArithmeticValid row035.height { lower := 3239488133087334172171326262750433373061120, upper := 6478976266174668344342652525500866746122240, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer131_enumeration :
    activePowerIntervalList 35 2 3239488133087334172171326262750433373061120 6478976266174668344342652525500866746122240 = row035_layer131_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer131_pairs : pairCoverCheck row035_layer131_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer131_checked :
    coverLayerCheck row035.height row035.goods { lower := 3239488133087334172171326262750433373061120, upper := 6478976266174668344342652525500866746122240, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer131_arithmetic row035_layer131_enumeration row035_bounds_eq row035_layer131_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer129_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer131_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer132_intervals : List ColouredInterval :=
  [(2, 11150372599265311570767859136324180752990208, 11150372599265311570767859136324180752990242), (2, 11150372599265311570767859136324180752990208, 11150372599265311570767859136324180752990242), (3, 8727963568087712425891397479476727340041449, 8727963568087712425891397479476727340041483), (11, 9957036224998709397295658327677322502484822, 9957036224998709397295658327677322502484856), (17, 11633549665058175578832094238737833478284593, 11633549665058175578832094238737833478284627)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer132_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer132_arithmetic : LayerArithmeticValid row035.height { lower := 6478976266174668344342652525500866746122240, upper := 12957952532349336688685305051001733492244480, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer132_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer132_enumeration :
    activePowerIntervalList 35 2 6478976266174668344342652525500866746122240 12957952532349336688685305051001733492244480 = row035_layer132_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer132_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer132_pairs : pairCoverCheck row035_layer132_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer132_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer132_checked :
    coverLayerCheck row035.height row035.goods { lower := 6478976266174668344342652525500866746122240, upper := 12957952532349336688685305051001733492244480, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer132_arithmetic row035_layer132_enumeration row035_bounds_eq row035_layer132_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer132_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer133_intervals : List ColouredInterval :=
  [(2, 22300745198530623141535718272648361505980416, 22300745198530623141535718272648361505980450), (2, 22300745198530623141535718272648361505980416, 22300745198530623141535718272648361505980450), (3, 17455927136175424851782794958953454680082898, 17455927136175424851782794958953454680082932), (17, 23267099330116351157664188477475666956569186, 23267099330116351157664188477475666956569220), (31, 17761887753093897979823770061456102763834271, 17761887753093897979823770061456102763834305)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer133_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer133_arithmetic : LayerArithmeticValid row035.height { lower := 12957952532349336688685305051001733492244480, upper := 25915905064698673377370610102003466984488960, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer133_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer133_enumeration :
    activePowerIntervalList 35 2 12957952532349336688685305051001733492244480 25915905064698673377370610102003466984488960 = row035_layer133_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer133_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer133_pairs : pairCoverCheck row035_layer133_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer133_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer133_checked :
    coverLayerCheck row035.height row035.goods { lower := 12957952532349336688685305051001733492244480, upper := 25915905064698673377370610102003466984488960, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer133_arithmetic row035_layer133_enumeration row035_bounds_eq row035_layer133_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer133_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer134_intervals : List ColouredInterval :=
  [(2, 44601490397061246283071436545296723011960832, 44601490397061246283071436545296723011960866), (2, 44601490397061246283071436545296723011960832, 44601490397061246283071436545296723011960866), (3, 26183890704263137277674192438430182020124347, 26183890704263137277674192438430182020124381), (13, 27783742160348572763840067510872319734178277, 27783742160348572763840067510872319734178311), (19, 30034640110980377619945846078500632729311721, 30034640110980377619945846078500632729311755), (23, 37608910510519071039902074217516707306379521, 37608910510519071039902074217516707306379555), (31, 35523775506187795959647540122912205527668542, 35523775506187795959647540122912205527668576)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer134_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer134_arithmetic : LayerArithmeticValid row035.height { lower := 25915905064698673377370610102003466984488960, upper := 51831810129397346754741220204006933968977920, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer134_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer134_enumeration :
    activePowerIntervalList 35 2 25915905064698673377370610102003466984488960 51831810129397346754741220204006933968977920 = row035_layer134_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer134_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer134_pairs : pairCoverCheck row035_layer134_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer134_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer134_checked :
    coverLayerCheck row035.height row035.goods { lower := 25915905064698673377370610102003466984488960, upper := 51831810129397346754741220204006933968977920, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer134_arithmetic row035_layer134_enumeration row035_bounds_eq row035_layer134_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer134_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer135_intervals : List ColouredInterval :=
  [(2, 89202980794122492566142873090593446023921664, 89202980794122492566142873090593446023921698), (2, 89202980794122492566142873090593446023921664, 89202980794122492566142873090593446023921698), (3, 52367781408526274555348384876860364040248694, 52367781408526274555348384876860364040248728), (3, 78551672112789411833022577315290546060373041, 78551672112789411833022577315290546060373075), (11, 54763699237492901685126120802225273763666521, 54763699237492901685126120802225273763666555), (13, 55567484320697145527680135021744639468356554, 55567484320697145527680135021744639468356588), (19, 60069280221960755239891692157001265458623442, 60069280221960755239891692157001265458623476), (23, 75217821021038142079804148435033414612759042, 75217821021038142079804148435033414612759076), (29, 74462898441675122902293018227199467668020601, 74462898441675122902293018227199467668020635)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer135_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer135_arithmetic : LayerArithmeticValid row035.height { lower := 51831810129397346754741220204006933968977920, upper := 103663620258794693509482440408013867937955840, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer135_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer135_enumeration :
    activePowerIntervalList 35 2 51831810129397346754741220204006933968977920 103663620258794693509482440408013867937955840 = row035_layer135_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer135_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer135_pairs : pairCoverCheck row035_layer135_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer135_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer135_checked :
    coverLayerCheck row035.height row035.goods { lower := 51831810129397346754741220204006933968977920, upper := 103663620258794693509482440408013867937955840, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer135_arithmetic row035_layer135_enumeration row035_bounds_eq row035_layer135_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer135_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer132_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer133_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer134_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer135_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer136_intervals : List ColouredInterval :=
  [(2, 178405961588244985132285746181186892047843328, 178405961588244985132285746181186892047843362), (2, 178405961588244985132285746181186892047843328, 178405961588244985132285746181186892047843362), (3, 157103344225578823666045154630581092120746082, 157103344225578823666045154630581092120746116), (11, 109527398474985803370252241604450547527333042, 109527398474985803370252241604450547527333076), (17, 197770344305988984840145602058543169130838081, 197770344305988984840145602058543169130838115), (29, 148925796883350245804586036454398935336041202, 148925796883350245804586036454398935336041236)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer136_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer136_arithmetic : LayerArithmeticValid row035.height { lower := 103663620258794693509482440408013867937955840, upper := 207327240517589387018964880816027735875911680, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer136_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer136_enumeration :
    activePowerIntervalList 35 2 103663620258794693509482440408013867937955840 207327240517589387018964880816027735875911680 = row035_layer136_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer136_enumeration
