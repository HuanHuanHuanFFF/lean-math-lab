import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037J32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037J32.Block007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer034_intervals : List ColouredInterval :=
  [(2, 26388279066624, 26388279066660), (2, 35184372088832, 35184372088868), (2, 35184372088832, 35184372088868), (3, 45753584909922, 45753584909958), (5, 38146972656250, 38146972656286), (7, 33232930569601, 33232930569637), (11, 34522712143931, 34522712143967), (13, 23298085122481, 23298085122517), (17, 34271896307633, 34271896307669), (23, 41426511213649, 41426511213685), (29, 29014291951738, 29014291951774), (29, 43521437927607, 43521437927643), (31, 26439622160671, 26439622160707)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer034_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer034_arithmetic : LayerArithmeticValid row037.height { lower := 22883585753088, upper := 45767171506176, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer034_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer034_enumeration :
    activePowerIntervalList 37 3 22883585753088 45767171506176 = row037_layer034_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer034_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer034_pairs : pairCoverCheck row037_layer034_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer034_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer034_checked :
    coverLayerCheck row037.height row037.goods { lower := 22883585753088, upper := 45767171506176, M := 3 } = true := by
  exact coverLayerCheck_of_parts row037_layer034_arithmetic row037_layer034_enumeration row037_bounds_eq row037_layer034_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer034_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer035_intervals : List ColouredInterval :=
  [(2, 52776558133248, 52776558133284), (2, 70368744177664, 70368744177700), (2, 70368744177664, 70368744177700), (3, 68630377364883, 68630377364919), (3, 68630377364883, 68630377364919), (5, 57220458984375, 57220458984411), (7, 66465861139202, 66465861139238), (11, 69045424287862, 69045424287898), (13, 46596170244962, 46596170244998), (13, 69894255367443, 69894255367479), (17, 68543792615266, 68543792615302), (23, 82853022427298, 82853022427334), (31, 52879244321342, 52879244321378), (31, 79318866482013, 79318866482049)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer035_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer035_arithmetic : LayerArithmeticValid row037.height { lower := 45767171506176, upper := 91534343012352, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer035_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer035_enumeration :
    activePowerIntervalList 37 3 45767171506176 91534343012352 = row037_layer035_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer035_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer035_pairs : pairCoverCheck row037_layer035_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer035_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer035_checked :
    coverLayerCheck row037.height row037.goods { lower := 45767171506176, upper := 91534343012352, M := 3 } = true := by
  exact coverLayerCheck_of_parts row037_layer035_arithmetic row037_layer035_enumeration row037_bounds_eq row037_layer035_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer036_intervals : List ColouredInterval :=
  [(2, 105553116266496, 105553116266532), (2, 140737488355328, 140737488355364), (2, 140737488355328, 140737488355364), (3, 137260754729766, 137260754729802), (5, 95367431640625, 95367431640661), (7, 99698791708803, 99698791708839), (11, 103568136431793, 103568136431829), (17, 102815688922899, 102815688922935), (19, 116490258898219, 116490258898255), (23, 124279533640947, 124279533640983)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer036_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer036_arithmetic : LayerArithmeticValid row037.height { lower := 91534343012352, upper := 183068686024704, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer036_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer036_enumeration :
    activePowerIntervalList 37 3 91534343012352 183068686024704 = row037_layer036_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer036_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer036_pairs : pairCoverCheck row037_layer036_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer036_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer036_checked :
    coverLayerCheck row037.height row037.goods { lower := 91534343012352, upper := 183068686024704, M := 3 } = true := by
  exact coverLayerCheck_of_parts row037_layer036_arithmetic row037_layer036_enumeration row037_bounds_eq row037_layer036_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer036_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer037_intervals : List ColouredInterval :=
  [(2, 211106232532992, 211106232533028), (2, 281474976710656, 281474976710692), (2, 281474976710656, 281474976710692), (3, 205891132094649, 205891132094685), (3, 205891132094649, 205891132094685), (5, 190734863281250, 190734863281286), (5, 286102294921875, 286102294921911), (7, 232630513987207, 232630513987243), (13, 302875106592253, 302875106592289), (19, 232980517796438, 232980517796474), (19, 349470776694657, 349470776694693)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer037_arithmetic : LayerArithmeticValid row037.height { lower := 183068686024704, upper := 366137372049408, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer037_enumeration :
    activePowerIntervalList 37 3 183068686024704 366137372049408 = row037_layer037_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer037_pairs : pairCoverCheck row037_layer037_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer037_checked :
    coverLayerCheck row037.height row037.goods { lower := 183068686024704, upper := 366137372049408, M := 3 } = true := by
  exact coverLayerCheck_of_parts row037_layer037_arithmetic row037_layer037_enumeration row037_bounds_eq row037_layer037_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer038_intervals : List ColouredInterval :=
  [(2, 422212465065984, 422212465066020), (2, 562949953421312, 562949953421348), (2, 562949953421312, 562949953421348), (3, 411782264189298, 411782264189334), (3, 617673396283947, 617673396283983), (3, 617673396283947, 617673396283983), (5, 476837158203125, 476837158203161), (7, 465261027974414, 465261027974450), (7, 697891541961621, 697891541961657), (11, 379749833583241, 379749833583277), (13, 605750213184506, 605750213184542), (17, 582622237229761, 582622237229797), (29, 420707233300201, 420707233300237)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer038_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer038_arithmetic : LayerArithmeticValid row037.height { lower := 366137372049408, upper := 732274744098816, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer038_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer038_enumeration :
    activePowerIntervalList 37 3 366137372049408 732274744098816 = row037_layer038_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer038_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer038_pairs : pairCoverCheck row037_layer038_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer038_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer038_checked :
    coverLayerCheck row037.height row037.goods { lower := 366137372049408, upper := 732274744098816, M := 3 } = true := by
  exact coverLayerCheck_of_parts row037_layer038_arithmetic row037_layer038_enumeration row037_bounds_eq row037_layer038_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer038_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer039_intervals : List ColouredInterval :=
  [(2, 1125899906842624, 1125899906842660), (2, 1125899906842624, 1125899906842660), (3, 1235346792567894, 1235346792567930), (5, 953674316406250, 953674316406286), (11, 759499667166482, 759499667166518), (17, 1165244474459522, 1165244474459558), (23, 952809757913927, 952809757913963), (29, 841414466600402, 841414466600438), (31, 819628286980801, 819628286980837)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer039_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer039_arithmetic : LayerArithmeticValid row037.height { lower := 732274744098816, upper := 1464549488197632, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer039_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer039_enumeration :
    activePowerIntervalList 37 2 732274744098816 1464549488197632 = row037_layer039_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer039_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer039_pairs : pairCoverCheck row037_layer039_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer039_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer039_checked :
    coverLayerCheck row037.height row037.goods { lower := 732274744098816, upper := 1464549488197632, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer039_arithmetic row037_layer039_enumeration row037_bounds_eq row037_layer039_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer039_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer039_checked
