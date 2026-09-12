import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row037.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer021_checked :
    coverLayerCheck row037.height row037.goods { lower := 2793406464, upper := 5586812928, M := 7 } = true := by
  exact coverLayerCheck_of_parts row037_layer021_arithmetic row037_layer021_enumeration row037_bounds_eq row037_layer021_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer021_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer022_intervals : List ColouredInterval :=
  [(2, 6442450944, 6442450980), (2, 7516192768, 7516192804), (2, 6442450944, 6442450980), (2, 8589934592, 8589934628), (2, 10737418240, 10737418276), (2, 8589934592, 8589934628), (2, 8589934592, 8589934628), (3, 5811307335, 5811307371), (3, 6973568802, 6973568838), (3, 8135830269, 8135830305), (3, 6973568802, 6973568838), (3, 10460353203, 10460353239), (3, 10460353203, 10460353239), (5, 6103515625, 6103515661), (5, 7324218750, 7324218786), (5, 8544921875, 8544921911), (5, 6103515625, 6103515661), (7, 5931980229, 5931980265), (7, 7909306972, 7909307008), (7, 9886633715, 9886633751), (11, 7073843073, 7073843109), (11, 9431790764, 9431790800), (13, 5710115047, 5710115083), (13, 10604499373, 10604499409), (17, 6975757441, 6975757477), (19, 6257102173, 6257102209), (23, 6809650894, 6809650930), (23, 10214476341, 10214476377), (31, 6212525767, 6212525803)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer022_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer022_arithmetic : LayerArithmeticValid row037.height { lower := 5586812928, upper := 11173625856, M := 7 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer022_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer022_enumeration :
    activePowerIntervalList 37 7 5586812928 11173625856 = row037_layer022_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer022_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer022_pairs : pairCoverCheck row037_layer022_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer022_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer022_checked :
    coverLayerCheck row037.height row037.goods { lower := 5586812928, upper := 11173625856, M := 7 } = true := by
  exact coverLayerCheck_of_parts row037_layer022_arithmetic row037_layer022_enumeration row037_bounds_eq row037_layer022_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer022_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer023_intervals : List ColouredInterval :=
  [(2, 12884901888, 12884901924), (2, 12884901888, 12884901924), (2, 17179869184, 17179869220), (2, 21474836480, 21474836516), (2, 17179869184, 17179869220), (2, 17179869184, 17179869220), (3, 13947137604, 13947137640), (3, 17433922005, 17433922041), (3, 20920706406, 20920706442), (3, 20920706406, 20920706442), (5, 12207031250, 12207031286), (5, 18310546875, 18310546911), (7, 11863960458, 11863960494), (7, 13841287201, 13841287237), (11, 11789738455, 11789738491), (11, 14147686146, 14147686182), (13, 21208998746, 21208998782), (17, 13951514882, 13951514918), (17, 20927272323, 20927272359), (19, 16983563041, 16983563077), (23, 13619301788, 13619301824), (23, 17024127235, 17024127271), (23, 20428952682, 20428952718), (29, 17249876309, 17249876345)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer023_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer023_arithmetic : LayerArithmeticValid row037.height { lower := 11173625856, upper := 22347251712, M := 6 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer023_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer023_enumeration :
    activePowerIntervalList 37 6 11173625856 22347251712 = row037_layer023_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer023_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer023_pairs : pairCoverCheck row037_layer023_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer023_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer023_checked :
    coverLayerCheck row037.height row037.goods { lower := 11173625856, upper := 22347251712, M := 6 } = true := by
  exact coverLayerCheck_of_parts row037_layer023_arithmetic row037_layer023_enumeration row037_bounds_eq row037_layer023_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer024_intervals : List ColouredInterval :=
  [(2, 25769803776, 25769803812), (2, 25769803776, 25769803812), (2, 34359738368, 34359738404), (2, 42949672960, 42949672996), (2, 34359738368, 34359738404), (2, 34359738368, 34359738404), (3, 31381059609, 31381059645), (3, 41841412812, 41841412848), (3, 31381059609, 31381059645), (5, 24414062500, 24414062536), (5, 30517578125, 30517578161), (5, 36621093750, 36621093786), (5, 30517578125, 30517578161), (7, 27682574402, 27682574438), (7, 41523861603, 41523861639), (11, 25937424601, 25937424637), (13, 31813498119, 31813498155), (13, 42417997492, 42417997528), (17, 27903029764, 27903029800), (17, 34878787205, 34878787241), (17, 41854544646, 41854544682), (19, 33967126082, 33967126118), (29, 34499752618, 34499752654), (31, 27512614111, 27512614147)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer024_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer024_arithmetic : LayerArithmeticValid row037.height { lower := 22347251712, upper := 44694503424, M := 6 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer024_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer024_enumeration :
    activePowerIntervalList 37 6 22347251712 44694503424 = row037_layer024_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer024_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer024_pairs : pairCoverCheck row037_layer024_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer024_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer024_checked :
    coverLayerCheck row037.height row037.goods { lower := 22347251712, upper := 44694503424, M := 6 } = true := by
  exact coverLayerCheck_of_parts row037_layer024_arithmetic row037_layer024_enumeration row037_bounds_eq row037_layer024_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer024_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer025_intervals : List ColouredInterval :=
  [(2, 51539607552, 51539607588), (2, 51539607552, 51539607588), (2, 68719476736, 68719476772), (2, 85899345920, 85899345956), (2, 68719476736, 68719476772), (2, 68719476736, 68719476772), (3, 52301766015, 52301766051), (3, 62762119218, 62762119254), (3, 62762119218, 62762119254), (5, 61035156250, 61035156286), (7, 55365148804, 55365148840), (7, 69206436005, 69206436041), (7, 83047723206, 83047723242), (11, 51874849202, 51874849238), (11, 77812273803, 77812273839), (13, 53022496865, 53022496901), (13, 63626996238, 63626996274), (19, 50950689123, 50950689159), (19, 67934252164, 67934252200), (19, 84917815205, 84917815241), (23, 78310985281, 78310985317), (29, 51749628927, 51749628963), (29, 68999505236, 68999505272), (29, 86249381545, 86249381581), (31, 55025228222, 55025228258), (31, 82537842333, 82537842369)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer025_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer025_arithmetic : LayerArithmeticValid row037.height { lower := 44694503424, upper := 89389006848, M := 6 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer025_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer025_enumeration :
    activePowerIntervalList 37 6 44694503424 89389006848 = row037_layer025_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer025_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer025_pairs : pairCoverCheck row037_layer025_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer025_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer025_checked :
    coverLayerCheck row037.height row037.goods { lower := 44694503424, upper := 89389006848, M := 6 } = true := by
  exact coverLayerCheck_of_parts row037_layer025_arithmetic row037_layer025_enumeration row037_bounds_eq row037_layer025_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer025_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer026_intervals : List ColouredInterval :=
  [(2, 103079215104, 103079215140), (2, 137438953472, 137438953508), (2, 171798691840, 171798691876), (2, 137438953472, 137438953508), (2, 137438953472, 137438953508), (3, 94143178827, 94143178863), (3, 125524238436, 125524238472), (3, 156905298045, 156905298081), (3, 94143178827, 94143178863), (5, 91552734375, 91552734411), (5, 122070312500, 122070312536), (5, 152587890625, 152587890661), (5, 152587890625, 152587890661), (7, 96889010407, 96889010443), (11, 103749698404, 103749698440), (11, 129687123005, 129687123041), (13, 137858491849, 137858491885), (17, 118587876497, 118587876533), (23, 156621970562, 156621970598), (31, 110050456444, 110050456480), (31, 137563070555, 137563070591)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer026_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer026_arithmetic : LayerArithmeticValid row037.height { lower := 89389006848, upper := 178778013696, M := 5 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer026_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer026_enumeration :
    activePowerIntervalList 37 5 89389006848 178778013696 = row037_layer026_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer026_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer026_pairs : pairCoverCheck row037_layer026_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer026_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer026_checked :
    coverLayerCheck row037.height row037.goods { lower := 89389006848, upper := 178778013696, M := 5 } = true := by
  exact coverLayerCheck_of_parts row037_layer026_arithmetic row037_layer026_enumeration row037_bounds_eq row037_layer026_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer026_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row037_layer027_intervals : List ColouredInterval :=
  [(2, 206158430208, 206158430244), (2, 274877906944, 274877906980), (2, 343597383680, 343597383716), (2, 274877906944, 274877906980), (2, 274877906944, 274877906980), (3, 188286357654, 188286357690), (3, 282429536481, 282429536517), (3, 282429536481, 282429536517), (5, 305175781250, 305175781286), (7, 193778020814, 193778020850), (7, 290667031221, 290667031257), (11, 285311670611, 285311670647), (13, 275716983698, 275716983734), (17, 237175752994, 237175753030), (17, 355763629491, 355763629527), (19, 322687697779, 322687697815), (23, 234932955843, 234932955879), (23, 313243941124, 313243941160)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer027_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer027_arithmetic : LayerArithmeticValid row037.height { lower := 178778013696, upper := 357556027392, M := 5 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer027_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer027_enumeration :
    activePowerIntervalList 37 5 178778013696 357556027392 = row037_layer027_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer027_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer027_pairs : pairCoverCheck row037_layer027_intervals row037_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer027_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row037_layer027_checked :
    coverLayerCheck row037.height row037.goods { lower := 178778013696, upper := 357556027392, M := 5 } = true := by
  exact coverLayerCheck_of_parts row037_layer027_arithmetic row037_layer027_enumeration row037_bounds_eq row037_layer027_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row037_layer027_checked
