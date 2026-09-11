import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row035.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row035.Block021

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer094_intervals : List ColouredInterval :=
  [(2, 30423614405477505635920876929024, 30423614405477505635920876929058), (2, 40564819207303340847894502572032, 40564819207303340847894502572066), (2, 40564819207303340847894502572032, 40564819207303340847894502572066), (2, 40564819207303340847894502572032, 40564819207303340847894502572066), (3, 30903154382632612361920641803529, 30903154382632612361920641803563), (3, 41204205843510149815894189071372, 41204205843510149815894189071406), (3, 30903154382632612361920641803529, 30903154382632612361920641803563), (11, 34898804537772814637117607507602, 34898804537772814637117607507636), (13, 31005865605324792430539070211042, 31005865605324792430539070211076), (13, 46508798407987188645808605316563, 46508798407987188645808605316597), (23, 41760935999695824068710065821134, 41760935999695824068710065821168), (31, 41651012786783101486240841299262, 41651012786783101486240841299296)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer094_arithmetic : LayerArithmeticValid row035.height { lower := 23570378347993640434079325224960, upper := 47140756695987280868158650449920, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer094_enumeration :
    activePowerIntervalList 35 4 23570378347993640434079325224960 47140756695987280868158650449920 = row035_layer094_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer094_pairs : pairCoverCheck row035_layer094_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer094_checked :
    coverLayerCheck row035.height row035.goods { lower := 23570378347993640434079325224960, upper := 47140756695987280868158650449920, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer094_arithmetic row035_layer094_enumeration row035_bounds_eq row035_layer094_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer095_intervals : List ColouredInterval :=
  [(2, 60847228810955011271841753858048, 60847228810955011271841753858082), (2, 81129638414606681695789005144064, 81129638414606681695789005144098), (2, 81129638414606681695789005144064, 81129638414606681695789005144098), (2, 81129638414606681695789005144064, 81129638414606681695789005144098), (3, 61806308765265224723841283607058, 61806308765265224723841283607092), (3, 92709463147897837085761925410587, 92709463147897837085761925410621), (3, 92709463147897837085761925410587, 92709463147897837085761925410621), (11, 52348206806659221955676411261403, 52348206806659221955676411261437), (11, 69797609075545629274235215015204, 69797609075545629274235215015238), (13, 62011731210649584861078140422084, 62011731210649584861078140422118), (19, 93076495688256089536609610280499, 93076495688256089536609610280533), (23, 62641403999543736103065098731701, 62641403999543736103065098731735), (23, 83521871999391648137420131642268, 83521871999391648137420131642302), (31, 62476519180174652229361261948893, 62476519180174652229361261948927), (31, 83302025573566202972481682598524, 83302025573566202972481682598558)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer095_arithmetic : LayerArithmeticValid row035.height { lower := 47140756695987280868158650449920, upper := 94281513391974561736317300899840, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer095_enumeration :
    activePowerIntervalList 35 4 47140756695987280868158650449920 94281513391974561736317300899840 = row035_layer095_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer095_pairs : pairCoverCheck row035_layer095_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer095_checked :
    coverLayerCheck row035.height row035.goods { lower := 47140756695987280868158650449920, upper := 94281513391974561736317300899840, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer095_arithmetic row035_layer095_enumeration row035_bounds_eq row035_layer095_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer092_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer093_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer094_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer095_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer096_intervals : List ColouredInterval :=
  [(2, 121694457621910022543683507716096, 121694457621910022543683507716130), (2, 162259276829213363391578010288128, 162259276829213363391578010288162), (2, 162259276829213363391578010288128, 162259276829213363391578010288162), (2, 162259276829213363391578010288128, 162259276829213363391578010288162), (3, 123612617530530449447682567214116, 123612617530530449447682567214150), (3, 185418926295795674171523850821174, 185418926295795674171523850821208), (17, 98100666009922840441972689847969, 98100666009922840441972689848003), (19, 186152991376512179073219220560998, 186152991376512179073219220561032), (29, 148852438543083302439338564577241, 148852438543083302439338564577275)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer096_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer096_arithmetic : LayerArithmeticValid row035.height { lower := 94281513391974561736317300899840, upper := 188563026783949123472634601799680, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer096_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer096_enumeration :
    activePowerIntervalList 35 4 94281513391974561736317300899840 188563026783949123472634601799680 = row035_layer096_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer096_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer096_pairs : pairCoverCheck row035_layer096_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer096_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer096_checked :
    coverLayerCheck row035.height row035.goods { lower := 94281513391974561736317300899840, upper := 188563026783949123472634601799680, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer096_arithmetic row035_layer096_enumeration row035_bounds_eq row035_layer096_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer096_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer097_intervals : List ColouredInterval :=
  [(2, 243388915243820045087367015432192, 243388915243820045087367015432226), (2, 324518553658426726783156020576256, 324518553658426726783156020576290), (2, 324518553658426726783156020576256, 324518553658426726783156020576290), (2, 324518553658426726783156020576256, 324518553658426726783156020576290), (3, 278128389443693511257285776231761, 278128389443693511257285776231795), (3, 370837852591591348343047701642348, 370837852591591348343047701642382), (3, 278128389443693511257285776231761, 278128389443693511257285776231795), (11, 191943424957750480504146841291811, 191943424957750480504146841291845), (13, 201538126434611150798503956371773, 201538126434611150798503956371807), (17, 196201332019845680883945379695938, 196201332019845680883945379695972), (17, 294301998029768521325918069543907, 294301998029768521325918069543941), (19, 279229487064768268609828830841497, 279229487064768268609828830841531), (19, 372305982753024358146438441121996, 372305982753024358146438441122030), (29, 297704877086166604878677129154482, 297704877086166604878677129154516)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer097_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer097_arithmetic : LayerArithmeticValid row035.height { lower := 188563026783949123472634601799680, upper := 377126053567898246945269203599360, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer097_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer097_enumeration :
    activePowerIntervalList 35 4 188563026783949123472634601799680 377126053567898246945269203599360 = row035_layer097_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer097_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer097_pairs : pairCoverCheck row035_layer097_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer097_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer097_checked :
    coverLayerCheck row035.height row035.goods { lower := 188563026783949123472634601799680, upper := 377126053567898246945269203599360, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer097_arithmetic row035_layer097_enumeration row035_bounds_eq row035_layer097_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer097_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer098_intervals : List ColouredInterval :=
  [(2, 486777830487640090174734030864384, 486777830487640090174734030864418), (2, 649037107316853453566312041152512, 649037107316853453566312041152546), (2, 649037107316853453566312041152512, 649037107316853453566312041152546), (2, 649037107316853453566312041152512, 649037107316853453566312041152546), (3, 556256778887387022514571552463522, 556256778887387022514571552463556), (11, 383886849915500961008293682583622, 383886849915500961008293682583656), (11, 575830274873251441512440523875433, 575830274873251441512440523875467), (13, 403076252869222301597007912743546, 403076252869222301597007912743580), (13, 604614379303833452395511869115319, 604614379303833452395511869115353), (17, 392402664039691361767890759391876, 392402664039691361767890759391910), (23, 480250763996501976790165756943041, 480250763996501976790165756943075), (29, 446557315629249907318015693731723, 446557315629249907318015693731757), (29, 595409754172333209757354258308964, 595409754172333209757354258308998), (31, 645590698195138073036733040138561, 645590698195138073036733040138595)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer098_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer098_arithmetic : LayerArithmeticValid row035.height { lower := 377126053567898246945269203599360, upper := 754252107135796493890538407198720, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer098_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer098_enumeration :
    activePowerIntervalList 35 4 377126053567898246945269203599360 754252107135796493890538407198720 = row035_layer098_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer098_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer098_pairs : pairCoverCheck row035_layer098_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer098_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer098_checked :
    coverLayerCheck row035.height row035.goods { lower := 377126053567898246945269203599360, upper := 754252107135796493890538407198720, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer098_arithmetic row035_layer098_enumeration row035_bounds_eq row035_layer098_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer098_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer099_intervals : List ColouredInterval :=
  [(2, 973555660975280180349468061728768, 973555660975280180349468061728802), (2, 1298074214633706907132624082305024, 1298074214633706907132624082305058), (2, 1298074214633706907132624082305024, 1298074214633706907132624082305058), (2, 1298074214633706907132624082305024, 1298074214633706907132624082305058), (3, 834385168331080533771857328695283, 834385168331080533771857328695317), (3, 1112513557774774045029143104927044, 1112513557774774045029143104927078), (3, 834385168331080533771857328695283, 834385168331080533771857328695317), (11, 767773699831001922016587365167244, 767773699831001922016587365167278), (13, 806152505738444603194015825487092, 806152505738444603194015825487126), (23, 960501527993003953580331513886082, 960501527993003953580331513886116), (23, 1440752291989505930370497270829123, 1440752291989505930370497270829157), (31, 1291181396390276146073466080277122, 1291181396390276146073466080277156)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer099_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer099_arithmetic : LayerArithmeticValid row035.height { lower := 754252107135796493890538407198720, upper := 1508504214271592987781076814397440, M := 4 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer099_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer099_enumeration :
    activePowerIntervalList 35 4 754252107135796493890538407198720 1508504214271592987781076814397440 = row035_layer099_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer099_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer099_pairs : pairCoverCheck row035_layer099_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer099_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer099_checked :
    coverLayerCheck row035.height row035.goods { lower := 754252107135796493890538407198720, upper := 1508504214271592987781076814397440, M := 4 } = true := by
  exact coverLayerCheck_of_parts row035_layer099_arithmetic row035_layer099_enumeration row035_bounds_eq row035_layer099_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer099_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer096_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer097_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer098_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer099_checked
