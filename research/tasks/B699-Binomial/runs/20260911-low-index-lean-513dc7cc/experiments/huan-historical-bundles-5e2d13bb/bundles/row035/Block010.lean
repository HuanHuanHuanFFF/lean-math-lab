import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row035.Block009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».bundles.row035.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_chunks_eq : row035_layer025_chunks.flatten = row035_layer025_intervals := by
  rfl

theorem row035_layer025_pairs : pairCoverCheck row035_layer025_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer025_chunks_eq
  intro block hblock
  simp only [row035_layer025_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer025_pairs000
  · exact row035_layer025_pairs001
  · exact row035_layer025_pairs002
  · exact row035_layer025_pairs003
  · exact row035_layer025_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_checked :
    coverLayerCheck row035.height row035.goods { lower := 39929774080, upper := 79859548160, M := 21 } = true := by
  exact coverLayerCheck_of_parts row035_layer025_arithmetic row035_layer025_enumeration row035_bounds_eq row035_layer025_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer026_intervals : List ColouredInterval :=
  [(2, 81604378624, 81604378658), (2, 85899345920, 85899345954), (2, 90194313216, 90194313250), (2, 85899345920, 85899345954), (2, 94489280512, 94489280546), (2, 103079215104, 103079215138), (2, 111669149696, 111669149730), (2, 120259084288, 120259084322), (2, 128849018880, 128849018914), (2, 137438953472, 137438953506), (2, 146028888064, 146028888098), (2, 154618822656, 154618822690), (2, 85899345920, 85899345954), (2, 103079215104, 103079215138), (2, 120259084288, 120259084322), (2, 137438953472, 137438953506), (2, 154618822656, 154618822690), (2, 103079215104, 103079215138), (2, 137438953472, 137438953506), (2, 137438953472, 137438953506), (2, 137438953472, 137438953506), (3, 83682825624, 83682825658), (3, 94143178827, 94143178861), (3, 104603532030, 104603532064), (3, 115063885233, 115063885267), (3, 125524238436, 125524238470), (3, 135984591639, 135984591673), (3, 146444944842, 146444944876), (3, 156905298045, 156905298079), (3, 94143178827, 94143178861), (3, 125524238436, 125524238470), (3, 156905298045, 156905298079), (3, 94143178827, 94143178861), (5, 91552734375, 91552734409), (5, 122070312500, 122070312534), (5, 152587890625, 152587890659), (7, 96889010407, 96889010441), (11, 103749698404, 103749698438), (11, 129687123005, 129687123039), (11, 155624547606, 155624547640), (13, 84835994984, 84835995018), (13, 95440494357, 95440494391), (13, 106044993730, 106044993764), (13, 116649493103, 116649493137), (13, 127253992476, 127253992510), (13, 137858491849, 137858491883), (13, 148462991222, 148462991256), (13, 159067490595, 159067490629), (13, 137858491849, 137858491883), (17, 83709089292, 83709089326), (17, 90684846733, 90684846767), (17, 97660604174, 97660604208), (17, 104636361615, 104636361649), (17, 111612119056, 111612119090), (17, 118587876497, 118587876531), (17, 125563633938, 125563633972), (17, 132539391379, 132539391413), (17, 139515148820, 139515148854), (17, 146490906261, 146490906295), (17, 118587876497, 118587876531), (19, 84917815205, 84917815239), (19, 101901378246, 101901378280), (19, 118884941287, 118884941321), (19, 135868504328, 135868504362), (19, 152852067369, 152852067403), (23, 156621970562, 156621970596), (29, 86249381545, 86249381579), (29, 103499257854, 103499257888), (29, 120749134163, 120749134197), (29, 137999010472, 137999010506), (29, 155248886781, 155248886815), (31, 82537842333, 82537842367), (31, 110050456444, 110050456478), (31, 137563070555, 137563070589)]

def row035_layer026_block000 : List ColouredInterval :=
  [(2, 81604378624, 81604378658), (2, 85899345920, 85899345954), (2, 90194313216, 90194313250), (2, 85899345920, 85899345954), (2, 94489280512, 94489280546), (2, 103079215104, 103079215138), (2, 111669149696, 111669149730), (2, 120259084288, 120259084322), (2, 128849018880, 128849018914), (2, 137438953472, 137438953506), (2, 146028888064, 146028888098), (2, 154618822656, 154618822690), (2, 85899345920, 85899345954), (2, 103079215104, 103079215138), (2, 120259084288, 120259084322), (2, 137438953472, 137438953506)]

def row035_layer026_block001 : List ColouredInterval :=
  [(2, 154618822656, 154618822690), (2, 103079215104, 103079215138), (2, 137438953472, 137438953506), (2, 137438953472, 137438953506), (2, 137438953472, 137438953506), (3, 83682825624, 83682825658), (3, 94143178827, 94143178861), (3, 104603532030, 104603532064), (3, 115063885233, 115063885267), (3, 125524238436, 125524238470), (3, 135984591639, 135984591673), (3, 146444944842, 146444944876), (3, 156905298045, 156905298079), (3, 94143178827, 94143178861), (3, 125524238436, 125524238470), (3, 156905298045, 156905298079)]

def row035_layer026_block002 : List ColouredInterval :=
  [(3, 94143178827, 94143178861), (5, 91552734375, 91552734409), (5, 122070312500, 122070312534), (5, 152587890625, 152587890659), (7, 96889010407, 96889010441), (11, 103749698404, 103749698438), (11, 129687123005, 129687123039), (11, 155624547606, 155624547640), (13, 84835994984, 84835995018), (13, 95440494357, 95440494391), (13, 106044993730, 106044993764), (13, 116649493103, 116649493137), (13, 127253992476, 127253992510), (13, 137858491849, 137858491883), (13, 148462991222, 148462991256), (13, 159067490595, 159067490629)]

def row035_layer026_block003 : List ColouredInterval :=
  [(13, 137858491849, 137858491883), (17, 83709089292, 83709089326), (17, 90684846733, 90684846767), (17, 97660604174, 97660604208), (17, 104636361615, 104636361649), (17, 111612119056, 111612119090), (17, 118587876497, 118587876531), (17, 125563633938, 125563633972), (17, 132539391379, 132539391413), (17, 139515148820, 139515148854), (17, 146490906261, 146490906295), (17, 118587876497, 118587876531), (19, 84917815205, 84917815239), (19, 101901378246, 101901378280), (19, 118884941287, 118884941321), (19, 135868504328, 135868504362)]

def row035_layer026_block004 : List ColouredInterval :=
  [(19, 152852067369, 152852067403), (23, 156621970562, 156621970596), (29, 86249381545, 86249381579), (29, 103499257854, 103499257888), (29, 120749134163, 120749134197), (29, 137999010472, 137999010506), (29, 155248886781, 155248886815), (31, 82537842333, 82537842367), (31, 110050456444, 110050456478), (31, 137563070555, 137563070589)]

def row035_layer026_chunks : List (List ColouredInterval) :=
  [row035_layer026_block000, row035_layer026_block001, row035_layer026_block002, row035_layer026_block003, row035_layer026_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_arithmetic : LayerArithmeticValid row035.height { lower := 79859548160, upper := 159719096320, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_enumeration :
    activePowerIntervalList 35 21 79859548160 159719096320 = row035_layer026_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_pairs000 :
    row035_layer026_block000.all (fun I => row035_layer026_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_pairs001 :
    row035_layer026_block001.all (fun I => row035_layer026_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_pairs002 :
    row035_layer026_block002.all (fun I => row035_layer026_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_pairs003 :
    row035_layer026_block003.all (fun I => row035_layer026_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_pairs004 :
    row035_layer026_block004.all (fun I => row035_layer026_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_chunks_eq : row035_layer026_chunks.flatten = row035_layer026_intervals := by
  rfl

theorem row035_layer026_pairs : pairCoverCheck row035_layer026_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer026_chunks_eq
  intro block hblock
  simp only [row035_layer026_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer026_pairs000
  · exact row035_layer026_pairs001
  · exact row035_layer026_pairs002
  · exact row035_layer026_pairs003
  · exact row035_layer026_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer026_checked :
    coverLayerCheck row035.height row035.goods { lower := 79859548160, upper := 159719096320, M := 21 } = true := by
  exact coverLayerCheck_of_parts row035_layer026_arithmetic row035_layer026_enumeration row035_bounds_eq row035_layer026_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer027_intervals : List ColouredInterval :=
  [(2, 163208757248, 163208757282), (2, 171798691840, 171798691874), (2, 171798691840, 171798691874), (2, 188978561024, 188978561058), (2, 206158430208, 206158430242), (2, 223338299392, 223338299426), (2, 240518168576, 240518168610), (2, 257698037760, 257698037794), (2, 274877906944, 274877906978), (2, 292057776128, 292057776162), (2, 309237645312, 309237645346), (2, 171798691840, 171798691874), (2, 206158430208, 206158430242), (2, 240518168576, 240518168610), (2, 274877906944, 274877906978), (2, 309237645312, 309237645346), (2, 206158430208, 206158430242), (2, 274877906944, 274877906978), (2, 274877906944, 274877906978), (2, 274877906944, 274877906978), (3, 167365651248, 167365651282), (3, 177826004451, 177826004485), (3, 188286357654, 188286357688), (3, 198746710857, 198746710891), (3, 209207064060, 209207064094), (3, 188286357654, 188286357688), (3, 219667417263, 219667417297), (3, 251048476872, 251048476906), (3, 282429536481, 282429536515), (3, 313810596090, 313810596124), (3, 188286357654, 188286357688), (3, 282429536481, 282429536515), (3, 282429536481, 282429536515), (5, 305175781250, 305175781284), (7, 193778020814, 193778020848), (11, 181561972207, 181561972241), (11, 207499396808, 207499396842), (11, 233436821409, 233436821443), (11, 259374246010, 259374246044), (11, 285311670611, 285311670645), (11, 311249095212, 311249095246), (11, 285311670611, 285311670645), (13, 169671989968, 169671990002), (13, 180276489341, 180276489375), (13, 190880988714, 190880988748), (13, 201485488087, 201485488121), (13, 212089987460, 212089987494), (13, 275716983698, 275716983732), (17, 237175752994, 237175753028), (19, 169835630410, 169835630444), (19, 186819193451, 186819193485), (19, 203802756492, 203802756526), (19, 220786319533, 220786319567), (19, 237769882574, 237769882608), (19, 254753445615, 254753445649), (19, 271737008656, 271737008690), (19, 288720571697, 288720571731), (19, 305704134738, 305704134772), (23, 234932955843, 234932955877), (23, 313243941124, 313243941158), (29, 172498763090, 172498763124), (29, 189748639399, 189748639433), (29, 206998515708, 206998515742), (29, 224248392017, 224248392051), (29, 241498268326, 241498268360), (29, 258748144635, 258748144669), (29, 275998020944, 275998020978), (29, 293247897253, 293247897287), (29, 310497773562, 310497773596), (31, 165075684666, 165075684700), (31, 192588298777, 192588298811), (31, 220100912888, 220100912922), (31, 247613526999, 247613527033), (31, 275126141110, 275126141144), (31, 302638755221, 302638755255)]

def row035_layer027_block000 : List ColouredInterval :=
  [(2, 163208757248, 163208757282), (2, 171798691840, 171798691874), (2, 171798691840, 171798691874), (2, 188978561024, 188978561058), (2, 206158430208, 206158430242), (2, 223338299392, 223338299426), (2, 240518168576, 240518168610), (2, 257698037760, 257698037794), (2, 274877906944, 274877906978), (2, 292057776128, 292057776162), (2, 309237645312, 309237645346), (2, 171798691840, 171798691874), (2, 206158430208, 206158430242), (2, 240518168576, 240518168610), (2, 274877906944, 274877906978), (2, 309237645312, 309237645346)]

def row035_layer027_block001 : List ColouredInterval :=
  [(2, 206158430208, 206158430242), (2, 274877906944, 274877906978), (2, 274877906944, 274877906978), (2, 274877906944, 274877906978), (3, 167365651248, 167365651282), (3, 177826004451, 177826004485), (3, 188286357654, 188286357688), (3, 198746710857, 198746710891), (3, 209207064060, 209207064094), (3, 188286357654, 188286357688), (3, 219667417263, 219667417297), (3, 251048476872, 251048476906), (3, 282429536481, 282429536515), (3, 313810596090, 313810596124), (3, 188286357654, 188286357688), (3, 282429536481, 282429536515)]

def row035_layer027_block002 : List ColouredInterval :=
  [(3, 282429536481, 282429536515), (5, 305175781250, 305175781284), (7, 193778020814, 193778020848), (11, 181561972207, 181561972241), (11, 207499396808, 207499396842), (11, 233436821409, 233436821443), (11, 259374246010, 259374246044), (11, 285311670611, 285311670645), (11, 311249095212, 311249095246), (11, 285311670611, 285311670645), (13, 169671989968, 169671990002), (13, 180276489341, 180276489375), (13, 190880988714, 190880988748), (13, 201485488087, 201485488121), (13, 212089987460, 212089987494), (13, 275716983698, 275716983732)]

def row035_layer027_block003 : List ColouredInterval :=
  [(17, 237175752994, 237175753028), (19, 169835630410, 169835630444), (19, 186819193451, 186819193485), (19, 203802756492, 203802756526), (19, 220786319533, 220786319567), (19, 237769882574, 237769882608), (19, 254753445615, 254753445649), (19, 271737008656, 271737008690), (19, 288720571697, 288720571731), (19, 305704134738, 305704134772), (23, 234932955843, 234932955877), (23, 313243941124, 313243941158), (29, 172498763090, 172498763124), (29, 189748639399, 189748639433), (29, 206998515708, 206998515742), (29, 224248392017, 224248392051)]

def row035_layer027_block004 : List ColouredInterval :=
  [(29, 241498268326, 241498268360), (29, 258748144635, 258748144669), (29, 275998020944, 275998020978), (29, 293247897253, 293247897287), (29, 310497773562, 310497773596), (31, 165075684666, 165075684700), (31, 192588298777, 192588298811), (31, 220100912888, 220100912922), (31, 247613526999, 247613527033), (31, 275126141110, 275126141144), (31, 302638755221, 302638755255)]

def row035_layer027_chunks : List (List ColouredInterval) :=
  [row035_layer027_block000, row035_layer027_block001, row035_layer027_block002, row035_layer027_block003, row035_layer027_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_arithmetic : LayerArithmeticValid row035.height { lower := 159719096320, upper := 319438192640, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_enumeration :
    activePowerIntervalList 35 20 159719096320 319438192640 = row035_layer027_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_pairs000 :
    row035_layer027_block000.all (fun I => row035_layer027_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_pairs001 :
    row035_layer027_block001.all (fun I => row035_layer027_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_pairs002 :
    row035_layer027_block002.all (fun I => row035_layer027_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_pairs003 :
    row035_layer027_block003.all (fun I => row035_layer027_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_pairs004 :
    row035_layer027_block004.all (fun I => row035_layer027_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_chunks_eq : row035_layer027_chunks.flatten = row035_layer027_intervals := by
  rfl

theorem row035_layer027_pairs : pairCoverCheck row035_layer027_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer027_chunks_eq
  intro block hblock
  simp only [row035_layer027_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer027_pairs000
  · exact row035_layer027_pairs001
  · exact row035_layer027_pairs002
  · exact row035_layer027_pairs003
  · exact row035_layer027_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer027_checked :
    coverLayerCheck row035.height row035.goods { lower := 159719096320, upper := 319438192640, M := 20 } = true := by
  exact coverLayerCheck_of_parts row035_layer027_arithmetic row035_layer027_enumeration row035_bounds_eq row035_layer027_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer028_intervals : List ColouredInterval :=
  [(2, 326417514496, 326417514530), (2, 343597383680, 343597383714), (2, 343597383680, 343597383714), (2, 377957122048, 377957122082), (2, 412316860416, 412316860450), (2, 446676598784, 446676598818), (2, 481036337152, 481036337186), (2, 515396075520, 515396075554), (2, 549755813888, 549755813922), (2, 584115552256, 584115552290), (2, 618475290624, 618475290658), (2, 343597383680, 343597383714), (2, 412316860416, 412316860450), (2, 481036337152, 481036337186), (2, 549755813888, 549755813922), (2, 618475290624, 618475290658), (2, 412316860416, 412316860450), (2, 549755813888, 549755813922), (2, 549755813888, 549755813922), (2, 549755813888, 549755813922), (3, 345191655699, 345191655733), (3, 376572715308, 376572715342), (3, 407953774917, 407953774951), (3, 439334834526, 439334834560), (3, 470715894135, 470715894169), (3, 502096953744, 502096953778), (3, 533478013353, 533478013387), (3, 564859072962, 564859072996), (3, 596240132571, 596240132605), (3, 627621192180, 627621192214), (3, 376572715308, 376572715342), (3, 470715894135, 470715894169), (3, 564859072962, 564859072996), (3, 564859072962, 564859072996), (5, 457763671875, 457763671909), (5, 610351562500, 610351562534), (11, 337186519813, 337186519847), (11, 363123944414, 363123944448), (11, 389061369015, 389061369049), (11, 414998793616, 414998793650), (11, 440936218217, 440936218251), (11, 466873642818, 466873642852), (11, 492811067419, 492811067453), (11, 518748492020, 518748492054), (11, 570623341222, 570623341256), (13, 413575475547, 413575475581), (13, 551433967396, 551433967430), (17, 355763629491, 355763629525), (17, 474351505988, 474351506022), (17, 592939382485, 592939382519), (19, 322687697779, 322687697813), (19, 339671260820, 339671260854), (19, 322687697779, 322687697813), (23, 391554926405, 391554926439), (23, 469865911686, 469865911720), (23, 548176896967, 548176897001), (23, 626487882248, 626487882282), (29, 327747649871, 327747649905), (29, 344997526180, 344997526214), (29, 500246412961, 500246412995), (31, 330151369332, 330151369366), (31, 357663983443, 357663983477), (31, 385176597554, 385176597588), (31, 412689211665, 412689211699), (31, 440201825776, 440201825810), (31, 467714439887, 467714439921), (31, 495227053998, 495227054032), (31, 522739668109, 522739668143), (31, 550252282220, 550252282254)]

def row035_layer028_block000 : List ColouredInterval :=
  [(2, 326417514496, 326417514530), (2, 343597383680, 343597383714), (2, 343597383680, 343597383714), (2, 377957122048, 377957122082), (2, 412316860416, 412316860450), (2, 446676598784, 446676598818), (2, 481036337152, 481036337186), (2, 515396075520, 515396075554), (2, 549755813888, 549755813922), (2, 584115552256, 584115552290), (2, 618475290624, 618475290658), (2, 343597383680, 343597383714), (2, 412316860416, 412316860450), (2, 481036337152, 481036337186), (2, 549755813888, 549755813922), (2, 618475290624, 618475290658)]

def row035_layer028_block001 : List ColouredInterval :=
  [(2, 412316860416, 412316860450), (2, 549755813888, 549755813922), (2, 549755813888, 549755813922), (2, 549755813888, 549755813922), (3, 345191655699, 345191655733), (3, 376572715308, 376572715342), (3, 407953774917, 407953774951), (3, 439334834526, 439334834560), (3, 470715894135, 470715894169), (3, 502096953744, 502096953778), (3, 533478013353, 533478013387), (3, 564859072962, 564859072996), (3, 596240132571, 596240132605), (3, 627621192180, 627621192214), (3, 376572715308, 376572715342), (3, 470715894135, 470715894169)]

def row035_layer028_block002 : List ColouredInterval :=
  [(3, 564859072962, 564859072996), (3, 564859072962, 564859072996), (5, 457763671875, 457763671909), (5, 610351562500, 610351562534), (11, 337186519813, 337186519847), (11, 363123944414, 363123944448), (11, 389061369015, 389061369049), (11, 414998793616, 414998793650), (11, 440936218217, 440936218251), (11, 466873642818, 466873642852), (11, 492811067419, 492811067453), (11, 518748492020, 518748492054), (11, 570623341222, 570623341256), (13, 413575475547, 413575475581), (13, 551433967396, 551433967430), (17, 355763629491, 355763629525)]

def row035_layer028_block003 : List ColouredInterval :=
  [(17, 474351505988, 474351506022), (17, 592939382485, 592939382519), (19, 322687697779, 322687697813), (19, 339671260820, 339671260854), (19, 322687697779, 322687697813), (23, 391554926405, 391554926439), (23, 469865911686, 469865911720), (23, 548176896967, 548176897001), (23, 626487882248, 626487882282), (29, 327747649871, 327747649905), (29, 344997526180, 344997526214), (29, 500246412961, 500246412995), (31, 330151369332, 330151369366), (31, 357663983443, 357663983477), (31, 385176597554, 385176597588), (31, 412689211665, 412689211699)]

def row035_layer028_block004 : List ColouredInterval :=
  [(31, 440201825776, 440201825810), (31, 467714439887, 467714439921), (31, 495227053998, 495227054032), (31, 522739668109, 522739668143), (31, 550252282220, 550252282254)]

def row035_layer028_chunks : List (List ColouredInterval) :=
  [row035_layer028_block000, row035_layer028_block001, row035_layer028_block002, row035_layer028_block003, row035_layer028_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_arithmetic : LayerArithmeticValid row035.height { lower := 319438192640, upper := 638876385280, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_enumeration :
    activePowerIntervalList 35 20 319438192640 638876385280 = row035_layer028_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_pairs000 :
    row035_layer028_block000.all (fun I => row035_layer028_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_pairs001 :
    row035_layer028_block001.all (fun I => row035_layer028_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_pairs002 :
    row035_layer028_block002.all (fun I => row035_layer028_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_pairs003 :
    row035_layer028_block003.all (fun I => row035_layer028_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_pairs004 :
    row035_layer028_block004.all (fun I => row035_layer028_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer028_chunks_eq : row035_layer028_chunks.flatten = row035_layer028_intervals := by
  rfl

theorem row035_layer028_pairs : pairCoverCheck row035_layer028_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer028_chunks_eq
  intro block hblock
  simp only [row035_layer028_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer028_pairs000
  · exact row035_layer028_pairs001
  · exact row035_layer028_pairs002
  · exact row035_layer028_pairs003
  · exact row035_layer028_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer028_pairs
