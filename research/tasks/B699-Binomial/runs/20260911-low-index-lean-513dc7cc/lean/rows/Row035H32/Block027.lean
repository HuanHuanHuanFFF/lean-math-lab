import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block026
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer124_enumeration :
    activePowerIntervalList 35 2 25308501039744798220088486427737760727040 50617002079489596440176972855475521454080 = row035_layer124_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer124_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer124_pairs : pairCoverCheck row035_layer124_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer124_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer124_checked :
    coverLayerCheck row035.height row035.goods { lower := 25308501039744798220088486427737760727040, upper := 50617002079489596440176972855475521454080, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer124_arithmetic row035_layer124_enumeration row035_bounds_eq row035_layer124_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer124_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer125_intervals : List ColouredInterval :=
  [(2, 87112285931760246646623899502532662132736, 87112285931760246646623899502532662132770), (2, 87112285931760246646623899502532662132736, 87112285931760246646623899502532662132770), (3, 71835091095372118731616440160302282634086, 71835091095372118731616440160302282634120), (11, 82289555578501730556162465517994400846982, 82289555578501730556162465517994400847016), (17, 80508994221855886358699614108912342410274, 80508994221855886358699614108912342410308), (19, 83198449060887472631428936505541918917761, 83198449060887472631428936505541918917795), (23, 71094348791151363024389554286420996798449, 71094348791151363024389554286420996798483), (29, 88540901833145211536614766025207452637361, 88540901833145211536614766025207452637395)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer125_arithmetic : LayerArithmeticValid row035.height { lower := 50617002079489596440176972855475521454080, upper := 101234004158979192880353945710951042908160, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer125_enumeration :
    activePowerIntervalList 35 2 50617002079489596440176972855475521454080 101234004158979192880353945710951042908160 = row035_layer125_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer125_pairs : pairCoverCheck row035_layer125_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer125_checked :
    coverLayerCheck row035.height row035.goods { lower := 50617002079489596440176972855475521454080, upper := 101234004158979192880353945710951042908160, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer125_arithmetic row035_layer125_enumeration row035_bounds_eq row035_layer125_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer126_intervals : List ColouredInterval :=
  [(2, 174224571863520493293247799005065324265472, 174224571863520493293247799005065324265506), (2, 174224571863520493293247799005065324265472, 174224571863520493293247799005065324265506), (3, 107752636643058178097424660240453423951129, 107752636643058178097424660240453423951163), (13, 164400841185494513395503358052498933338333, 164400841185494513395503358052498933338367), (19, 166396898121774945262857873011083837835522, 166396898121774945262857873011083837835556), (23, 142188697582302726048779108572841993596898, 142188697582302726048779108572841993596932), (29, 177081803666290423073229532050414905274722, 177081803666290423073229532050414905274756)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer126_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer126_arithmetic : LayerArithmeticValid row035.height { lower := 101234004158979192880353945710951042908160, upper := 202468008317958385760707891421902085816320, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer126_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer126_enumeration :
    activePowerIntervalList 35 2 101234004158979192880353945710951042908160 202468008317958385760707891421902085816320 = row035_layer126_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer126_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer126_pairs : pairCoverCheck row035_layer126_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer126_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer126_checked :
    coverLayerCheck row035.height row035.goods { lower := 101234004158979192880353945710951042908160, upper := 202468008317958385760707891421902085816320, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer126_arithmetic row035_layer126_enumeration row035_bounds_eq row035_layer126_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer126_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer127_intervals : List ColouredInterval :=
  [(2, 348449143727040986586495598010130648530944, 348449143727040986586495598010130648530978), (2, 348449143727040986586495598010130648530944, 348449143727040986586495598010130648530978), (3, 215505273286116356194849320480906847902258, 215505273286116356194849320480906847902292), (3, 323257909929174534292273980721360271853387, 323257909929174534292273980721360271853421), (13, 328801682370989026791006716104997866676666, 328801682370989026791006716104997866676700)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer127_arithmetic : LayerArithmeticValid row035.height { lower := 202468008317958385760707891421902085816320, upper := 404936016635916771521415782843804171632640, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer127_enumeration :
    activePowerIntervalList 35 2 202468008317958385760707891421902085816320 404936016635916771521415782843804171632640 = row035_layer127_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer127_pairs : pairCoverCheck row035_layer127_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer127_checked :
    coverLayerCheck row035.height row035.goods { lower := 202468008317958385760707891421902085816320, upper := 404936016635916771521415782843804171632640, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer127_arithmetic row035_layer127_enumeration row035_bounds_eq row035_layer127_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer124_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer125_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer126_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer127_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer128_intervals : List ColouredInterval :=
  [(2, 696898287454081973172991196020261297061888, 696898287454081973172991196020261297061922), (2, 696898287454081973172991196020261297061888, 696898287454081973172991196020261297061922), (3, 646515819858349068584547961442720543706774, 646515819858349068584547961442720543706808), (11, 452592555681759518058893560348969204658401, 452592555681759518058893560348969204658435), (17, 684326450885775034048946719925754910487329, 684326450885775034048946719925754910487363), (31, 572964121067545096123347421337293637543041, 572964121067545096123347421337293637543075)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer128_arithmetic : LayerArithmeticValid row035.height { lower := 404936016635916771521415782843804171632640, upper := 809872033271833543042831565687608343265280, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer128_enumeration :
    activePowerIntervalList 35 2 404936016635916771521415782843804171632640 809872033271833543042831565687608343265280 = row035_layer128_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer128_pairs : pairCoverCheck row035_layer128_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer128_checked :
    coverLayerCheck row035.height row035.goods { lower := 404936016635916771521415782843804171632640, upper := 809872033271833543042831565687608343265280, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer128_arithmetic row035_layer128_enumeration row035_bounds_eq row035_layer128_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer128_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer129_intervals : List ColouredInterval :=
  [(2, 1393796574908163946345982392040522594123776, 1393796574908163946345982392040522594123810), (2, 1393796574908163946345982392040522594123776, 1393796574908163946345982392040522594123810), (3, 969773729787523602876821942164080815560161, 969773729787523602876821942164080815560195), (11, 905185111363519036117787120697938409316802, 905185111363519036117787120697938409316836), (17, 1368652901771550068097893439851509820974658, 1368652901771550068097893439851509820974692), (19, 1580770532156861979997149793605296459437459, 1580770532156861979997149793605296459437493), (31, 1145928242135090192246694842674587275086082, 1145928242135090192246694842674587275086116)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer129_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer129_arithmetic : LayerArithmeticValid row035.height { lower := 809872033271833543042831565687608343265280, upper := 1619744066543667086085663131375216686530560, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer129_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer129_enumeration :
    activePowerIntervalList 35 2 809872033271833543042831565687608343265280 1619744066543667086085663131375216686530560 = row035_layer129_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer129_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer129_pairs : pairCoverCheck row035_layer129_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer129_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer129_checked :
    coverLayerCheck row035.height row035.goods { lower := 809872033271833543042831565687608343265280, upper := 1619744066543667086085663131375216686530560, M := 2 } = true := by
  exact coverLayerCheck_of_parts row035_layer129_arithmetic row035_layer129_enumeration row035_bounds_eq row035_layer129_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer129_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer130_intervals : List ColouredInterval :=
  [(2, 2787593149816327892691964784081045188247552, 2787593149816327892691964784081045188247586), (2, 2787593149816327892691964784081045188247552, 2787593149816327892691964784081045188247586), (3, 1939547459575047205753643884328161631120322, 1939547459575047205753643884328161631120356), (3, 2909321189362570808630465826492242446680483, 2909321189362570808630465826492242446680517), (13, 2137210935411428674141543654682486133398329, 2137210935411428674141543654682486133398363), (19, 3161541064313723959994299587210592918874918, 3161541064313723959994299587210592918874952), (23, 1635170022196481349560959748587682926364327, 1635170022196481349560959748587682926364361), (29, 2567686153161211134561828214731016126483469, 2567686153161211134561828214731016126483503)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer130_arithmetic : LayerArithmeticValid row035.height { lower := 1619744066543667086085663131375216686530560, upper := 3239488133087334172171326262750433373061120, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer130_enumeration :
    activePowerIntervalList 35 2 1619744066543667086085663131375216686530560 3239488133087334172171326262750433373061120 = row035_layer130_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer130_enumeration
