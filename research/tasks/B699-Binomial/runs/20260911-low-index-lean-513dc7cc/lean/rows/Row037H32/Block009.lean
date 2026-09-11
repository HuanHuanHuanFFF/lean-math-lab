import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row037H32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer040_intervals : List ColouredInterval :=
  [(2, 2251799813685248, 2251799813685284), (2, 2251799813685248, 2251799813685284), (3, 1853020188851841, 1853020188851877), (5, 2384185791015625, 2384185791015661), (7, 1628413597910449, 1628413597910485), (19, 2213314919066161, 2213314919066197), (23, 1905619515827854, 1905619515827890), (31, 1639256573961602, 1639256573961638)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer040_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer040_arithmetic : LayerArithmeticValid row037.height { lower := 1464549488197632, upper := 2929098976395264, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer040_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer040_enumeration :
    activePowerIntervalList 37 2 1464549488197632 2929098976395264 = row037_layer040_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer040_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer040_pairs : pairCoverCheck row037_layer040_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer040_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer040_checked :
    coverLayerCheck row037.height row037.goods { lower := 1464549488197632, upper := 2929098976395264, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer040_arithmetic row037_layer040_enumeration row037_bounds_eq row037_layer040_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer040_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer041_intervals : List ColouredInterval :=
  [(2, 4503599627370496, 4503599627370532), (2, 4503599627370496, 4503599627370532), (3, 3706040377703682, 3706040377703718), (3, 5559060566555523, 5559060566555559), (5, 4768371582031250, 4768371582031286), (7, 3256827195820898, 3256827195820934), (11, 4177248169415651, 4177248169415687), (13, 3937376385699289, 3937376385699325), (19, 4426629838132322, 4426629838132358)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer041_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer041_arithmetic : LayerArithmeticValid row037.height { lower := 2929098976395264, upper := 5858197952790528, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer041_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer041_enumeration :
    activePowerIntervalList 37 2 2929098976395264 5858197952790528 = row037_layer041_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer041_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer041_pairs : pairCoverCheck row037_layer041_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer041_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer041_checked :
    coverLayerCheck row037.height row037.goods { lower := 2929098976395264, upper := 5858197952790528, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer041_arithmetic row037_layer041_enumeration row037_bounds_eq row037_layer041_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer041_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer042_intervals : List ColouredInterval :=
  [(2, 9007199254740992, 9007199254741028), (2, 9007199254740992, 9007199254741028), (3, 11118121133111046, 11118121133111082), (7, 11398895185373143, 11398895185373179), (11, 8354496338831302, 8354496338831338), (13, 7874752771398578, 7874752771398614), (17, 9904578032905937, 9904578032905973)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer042_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer042_arithmetic : LayerArithmeticValid row037.height { lower := 5858197952790528, upper := 11716395905581056, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer042_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer042_enumeration :
    activePowerIntervalList 37 2 5858197952790528 11716395905581056 = row037_layer042_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer042_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer042_pairs : pairCoverCheck row037_layer042_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer042_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer042_checked :
    coverLayerCheck row037.height row037.goods { lower := 5858197952790528, upper := 11716395905581056, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer042_arithmetic row037_layer042_enumeration row037_bounds_eq row037_layer042_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer042_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer043_intervals : List ColouredInterval :=
  [(2, 18014398509481984, 18014398509482020), (2, 18014398509481984, 18014398509482020), (3, 16677181699666569, 16677181699666605), (5, 11920928955078125, 11920928955078161), (7, 22797790370746286, 22797790370746322), (17, 19809156065811874, 19809156065811910), (23, 21914624432020321, 21914624432020357), (29, 12200509765705829, 12200509765705865)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer043_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer043_arithmetic : LayerArithmeticValid row037.height { lower := 11716395905581056, upper := 23432791811162112, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer043_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer043_enumeration :
    activePowerIntervalList 37 2 11716395905581056 23432791811162112 = row037_layer043_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer043_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer043_pairs : pairCoverCheck row037_layer043_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer043_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer043_checked :
    coverLayerCheck row037.height row037.goods { lower := 11716395905581056, upper := 23432791811162112, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer043_arithmetic row037_layer043_enumeration row037_bounds_eq row037_layer043_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer043_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer043_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer044_intervals : List ColouredInterval :=
  [(2, 36028797018963968, 36028797018964004), (2, 36028797018963968, 36028797018964004), (3, 33354363399333138, 33354363399333174), (5, 23841857910156250, 23841857910156286), (11, 45949729863572161, 45949729863572197), (19, 42052983462257059, 42052983462257095), (23, 43829248864040642, 43829248864040678), (29, 24401019531411658, 24401019531411694), (31, 25408476896404831, 25408476896404867)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer044_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer044_arithmetic : LayerArithmeticValid row037.height { lower := 23432791811162112, upper := 46865583622324224, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer044_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer044_enumeration :
    activePowerIntervalList 37 2 23432791811162112 46865583622324224 = row037_layer044_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer044_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer044_pairs : pairCoverCheck row037_layer044_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer044_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer044_checked :
    coverLayerCheck row037.height row037.goods { lower := 23432791811162112, upper := 46865583622324224, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer044_arithmetic row037_layer044_enumeration row037_bounds_eq row037_layer044_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer044_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer045_intervals : List ColouredInterval :=
  [(2, 72057594037927936, 72057594037927972), (2, 72057594037927936, 72057594037927972), (3, 50031545098999707, 50031545098999743), (5, 59604644775390625, 59604644775390661), (7, 79792266297612001, 79792266297612037), (11, 91899459727144322, 91899459727144358), (13, 51185893014090757, 51185893014090793), (19, 84105966924514118, 84105966924514154), (31, 50816953792809662, 50816953792809698)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer045_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer045_arithmetic : LayerArithmeticValid row037.height { lower := 46865583622324224, upper := 93731167244648448, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer045_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer045_enumeration :
    activePowerIntervalList 37 2 46865583622324224 93731167244648448 = row037_layer045_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer045_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer045_pairs : pairCoverCheck row037_layer045_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer045_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer045_checked :
    coverLayerCheck row037.height row037.goods { lower := 46865583622324224, upper := 93731167244648448, M := 2 } = true := by
  exact coverLayerCheck_of_parts row037_layer045_arithmetic row037_layer045_enumeration row037_bounds_eq row037_layer045_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer045_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer046_intervals : List ColouredInterval :=
  [(2, 144115188075855872, 144115188075855908), (2, 144115188075855872, 144115188075855908), (3, 100063090197999414, 100063090197999450), (3, 150094635296999121, 150094635296999157), (5, 119209289550781250, 119209289550781286), (7, 159584532595224002, 159584532595224038), (13, 102371786028181514, 102371786028181550), (17, 168377826559400929, 168377826559400965)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer046_intervals
