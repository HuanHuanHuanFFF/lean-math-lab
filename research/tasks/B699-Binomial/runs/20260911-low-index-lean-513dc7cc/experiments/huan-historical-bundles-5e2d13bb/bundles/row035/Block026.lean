import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row035.Block025
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row035.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer118_enumeration :
    activePowerIntervalList 35 3 395445328746012472188882600433402511360 790890657492024944377765200866805022720 = row035_layer118_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer118_pairs : pairCoverCheck row035_layer118_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer118_checked :
    coverLayerCheck row035.height row035.goods { lower := 395445328746012472188882600433402511360, upper := 790890657492024944377765200866805022720, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer118_arithmetic row035_layer118_enumeration row035_bounds_eq row035_layer118_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer119_intervals : List ColouredInterval :=
  [(2, 1020847100762815390390123822295304634368, 1020847100762815390390123822295304634402), (2, 1361129467683753853853498429727072845824, 1361129467683753853853498429727072845858), (2, 1361129467683753853853498429727072845824, 1361129467683753853853498429727072845858), (3, 886852976486075539896499261238299785606, 886852976486075539896499261238299785640), (3, 1330279464729113309844748891857449678409, 1330279464729113309844748891857449678443), (3, 1330279464729113309844748891857449678409, 1330279464729113309844748891857449678443), (11, 1020118457584732196977220646917285960913, 1020118457584732196977220646917285960947), (13, 972786042517719014174576083150881262357, 972786042517719014174576083150881262391), (31, 1192433134375744216697913467923607986562, 1192433134375744216697913467923607986596)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer119_arithmetic : LayerArithmeticValid row035.height { lower := 790890657492024944377765200866805022720, upper := 1581781314984049888755530401733610045440, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer119_enumeration :
    activePowerIntervalList 35 3 790890657492024944377765200866805022720 1581781314984049888755530401733610045440 = row035_layer119_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer119_pairs : pairCoverCheck row035_layer119_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer119_checked :
    coverLayerCheck row035.height row035.goods { lower := 790890657492024944377765200866805022720, upper := 1581781314984049888755530401733610045440, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer119_arithmetic row035_layer119_enumeration row035_bounds_eq row035_layer119_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer116_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer117_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer118_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer119_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer120_intervals : List ColouredInterval :=
  [(2, 2041694201525630780780247644590609268736, 2041694201525630780780247644590609268770), (2, 2722258935367507707706996859454145691648, 2722258935367507707706996859454145691682), (2, 2722258935367507707706996859454145691648, 2722258935367507707706996859454145691682), (3, 2660558929458226619689497783714899356818, 2660558929458226619689497783714899356852), (13, 1945572085035438028349152166301762524714, 1945572085035438028349152166301762524748), (13, 2918358127553157042523728249452643787071, 2918358127553157042523728249452643787105), (17, 2367911594760467245844106297320951247361, 2367911594760467245844106297320951247395), (23, 3091058643093537522799545838540043339063, 3091058643093537522799545838540043339097), (29, 3053134545970524535745336759489912159909, 3053134545970524535745336759489912159943), (31, 1788649701563616325046870201885411979843, 1788649701563616325046870201885411979877)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer120_arithmetic : LayerArithmeticValid row035.height { lower := 1581781314984049888755530401733610045440, upper := 3163562629968099777511060803467220090880, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer120_enumeration :
    activePowerIntervalList 35 3 1581781314984049888755530401733610045440 3163562629968099777511060803467220090880 = row035_layer120_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer120_pairs : pairCoverCheck row035_layer120_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer120_checked :
    coverLayerCheck row035.height row035.goods { lower := 1581781314984049888755530401733610045440, upper := 3163562629968099777511060803467220090880, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer120_arithmetic row035_layer120_enumeration row035_bounds_eq row035_layer120_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer121_intervals : List ColouredInterval :=
  [(2, 4083388403051261561560495289181218537472, 4083388403051261561560495289181218537506), (2, 5444517870735015415413993718908291383296, 5444517870735015415413993718908291383330), (2, 5444517870735015415413993718908291383296, 5444517870735015415413993718908291383330), (3, 3990838394187339929534246675572349035227, 3990838394187339929534246675572349035261), (3, 3990838394187339929534246675572349035227, 3990838394187339929534246675572349035261), (11, 3740434344477351388916475705363381856681, 3740434344477351388916475705363381856715), (17, 4735823189520934491688212594641902494722, 4735823189520934491688212594641902494756), (19, 4378865740046709085864680868712732574619, 4378865740046709085864680868712732574653), (23, 6182117286187075045599091677080086678126, 6182117286187075045599091677080086678160), (29, 6106269091941049071490673518979824319818, 6106269091941049071490673518979824319852)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer121_arithmetic : LayerArithmeticValid row035.height { lower := 3163562629968099777511060803467220090880, upper := 6327125259936199555022121606934440181760, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer121_enumeration :
    activePowerIntervalList 35 3 3163562629968099777511060803467220090880 6327125259936199555022121606934440181760 = row035_layer121_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer121_pairs : pairCoverCheck row035_layer121_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer121_checked :
    coverLayerCheck row035.height row035.goods { lower := 3163562629968099777511060803467220090880, upper := 6327125259936199555022121606934440181760, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer121_arithmetic row035_layer121_enumeration row035_bounds_eq row035_layer121_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer122_intervals : List ColouredInterval :=
  [(2, 8166776806102523123120990578362437074944, 8166776806102523123120990578362437074978), (2, 10889035741470030830827987437816582766592, 10889035741470030830827987437816582766626), (2, 10889035741470030830827987437816582766592, 10889035741470030830827987437816582766626), (3, 7981676788374679859068493351144698070454, 7981676788374679859068493351144698070488), (3, 11972515182562019788602740026717047105681, 11972515182562019788602740026717047105715), (3, 11972515182562019788602740026717047105681, 11972515182562019788602740026717047105715), (11, 7480868688954702777832951410726763713362, 7480868688954702777832951410726763713396), (11, 11221303033432054166749427116090145570043, 11221303033432054166749427116090145570077), (13, 12646218552730347184269489080961456410641, 12646218552730347184269489080961456410675), (17, 7103734784281401737532318891962853742083, 7103734784281401737532318891962853742117), (19, 8757731480093418171729361737425465149238, 8757731480093418171729361737425465149272), (23, 9273175929280612568398637515620130017189, 9273175929280612568398637515620130017223), (29, 9159403637911573607236010278469736479727, 9159403637911573607236010278469736479761)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer122_arithmetic : LayerArithmeticValid row035.height { lower := 6327125259936199555022121606934440181760, upper := 12654250519872399110044243213868880363520, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer122_enumeration :
    activePowerIntervalList 35 3 6327125259936199555022121606934440181760 12654250519872399110044243213868880363520 = row035_layer122_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer122_pairs : pairCoverCheck row035_layer122_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer122_checked :
    coverLayerCheck row035.height row035.goods { lower := 6327125259936199555022121606934440181760, upper := 12654250519872399110044243213868880363520, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer122_arithmetic row035_layer122_enumeration row035_bounds_eq row035_layer122_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer123_intervals : List ColouredInterval :=
  [(2, 16333553612205046246241981156724874149888, 16333553612205046246241981156724874149922), (2, 21778071482940061661655974875633165533184, 21778071482940061661655974875633165533218), (2, 21778071482940061661655974875633165533184, 21778071482940061661655974875633165533218), (3, 23945030365124039577205480053434094211362, 23945030365124039577205480053434094211396), (13, 25292437105460694368538978161922912821282, 25292437105460694368538978161922912821316), (19, 13136597220140127257594042606138197723857, 13136597220140127257594042606138197723891), (31, 18482713582824035358817658752815923791711, 18482713582824035358817658752815923791745)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer123_arithmetic : LayerArithmeticValid row035.height { lower := 12654250519872399110044243213868880363520, upper := 25308501039744798220088486427737760727040, M := 3 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer123_enumeration :
    activePowerIntervalList 35 3 12654250519872399110044243213868880363520 25308501039744798220088486427737760727040 = row035_layer123_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer123_pairs : pairCoverCheck row035_layer123_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer123_checked :
    coverLayerCheck row035.height row035.goods { lower := 12654250519872399110044243213868880363520, upper := 25308501039744798220088486427737760727040, M := 3 } = true := by
  exact coverLayerCheck_of_parts row035_layer123_arithmetic row035_layer123_enumeration row035_bounds_eq row035_layer123_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer120_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer121_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer122_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer123_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer124_intervals : List ColouredInterval :=
  [(2, 43556142965880123323311949751266331066368, 43556142965880123323311949751266331066402), (2, 43556142965880123323311949751266331066368, 43556142965880123323311949751266331066402), (3, 35917545547686059365808220080151141317043, 35917545547686059365808220080151141317077), (11, 41144777789250865278081232758997200423491, 41144777789250865278081232758997200423525), (17, 40254497110927943179349807054456171205137, 40254497110927943179349807054456171205171), (31, 36965427165648070717635317505631847583422, 36965427165648070717635317505631847583456)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer124_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer124_arithmetic : LayerArithmeticValid row035.height { lower := 25308501039744798220088486427737760727040, upper := 50617002079489596440176972855475521454080, M := 2 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer124_arithmetic
