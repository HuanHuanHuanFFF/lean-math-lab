import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_pairs001 :
    row035_layer022_block001.all (fun I => row035_layer022_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_pairs002 :
    row035_layer022_block002.all (fun I => row035_layer022_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_pairs003 :
    row035_layer022_block003.all (fun I => row035_layer022_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_pairs004 :
    row035_layer022_block004.all (fun I => row035_layer022_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_pairs005 :
    row035_layer022_block005.all (fun I => row035_layer022_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_chunks_eq : row035_layer022_chunks.flatten = row035_layer022_intervals := by
  rfl

theorem row035_layer022_pairs : pairCoverCheck row035_layer022_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer022_chunks_eq
  intro block hblock
  simp only [row035_layer022_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer022_pairs000
  · exact row035_layer022_pairs001
  · exact row035_layer022_pairs002
  · exact row035_layer022_pairs003
  · exact row035_layer022_pairs004
  · exact row035_layer022_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_checked :
    coverLayerCheck row035.height row035.goods { lower := 4991221760, upper := 9982443520, M := 23 } = true := by
  exact coverLayerCheck_of_parts row035_layer022_arithmetic row035_layer022_enumeration row035_bounds_eq row035_layer022_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer023_intervals : List ColouredInterval :=
  [(2, 10200547328, 10200547362), (2, 10737418240, 10737418274), (2, 11274289152, 11274289186), (2, 11811160064, 11811160098), (2, 10737418240, 10737418274), (2, 11811160064, 11811160098), (2, 12884901888, 12884901922), (2, 13958643712, 13958643746), (2, 15032385536, 15032385570), (2, 16106127360, 16106127394), (2, 17179869184, 17179869218), (2, 18253611008, 18253611042), (2, 19327352832, 19327352866), (2, 10737418240, 10737418274), (2, 12884901888, 12884901922), (2, 15032385536, 15032385570), (2, 17179869184, 17179869218), (2, 19327352832, 19327352866), (2, 12884901888, 12884901922), (2, 17179869184, 17179869218), (2, 17179869184, 17179869218), (2, 17179869184, 17179869218), (3, 10460353203, 10460353237), (3, 11622614670, 11622614704), (3, 12784876137, 12784876171), (3, 13947137604, 13947137638), (3, 15109399071, 15109399105), (3, 16271660538, 16271660572), (3, 17433922005, 17433922039), (3, 18596183472, 18596183506), (3, 19758444939, 19758444973), (3, 10460353203, 10460353237), (3, 13947137604, 13947137638), (3, 17433922005, 17433922039), (3, 10460353203, 10460353237), (5, 12207031250, 12207031284), (5, 18310546875, 18310546909), (7, 13841287201, 13841287235), (11, 11789738455, 11789738489), (11, 14147686146, 14147686180), (11, 16505633837, 16505633871), (11, 18863581528, 18863581562), (13, 10604499373, 10604499407), (13, 11420230094, 11420230128), (13, 12235960815, 12235960849), (13, 13051691536, 13051691570), (13, 13867422257, 13867422291), (13, 14683152978, 14683153012), (13, 15498883699, 15498883733), (13, 16314614420, 16314614454), (13, 17130345141, 17130345175), (13, 17946075862, 17946075896), (13, 10604499373, 10604499407), (17, 13951514882, 13951514916), (19, 10726460868, 10726460902), (19, 11620332607, 11620332641), (19, 12514204346, 12514204380), (19, 13408076085, 13408076119), (19, 14301947824, 14301947858), (19, 15195819563, 15195819597), (19, 16089691302, 16089691336), (19, 16983563041, 16983563075), (19, 17877434780, 17877434814), (19, 18771306519, 18771306553), (19, 19665178258, 19665178292), (19, 16983563041, 16983563075), (23, 10214476341, 10214476375), (23, 13619301788, 13619301822), (23, 17024127235, 17024127269), (29, 10111996457, 10111996491), (29, 10706819778, 10706819812), (29, 11301643099, 11301643133), (29, 11896466420, 11896466454), (29, 12491289741, 12491289775), (29, 13086113062, 13086113096), (29, 17249876309, 17249876343), (31, 10650044172, 10650044206), (31, 11537547853, 11537547887), (31, 12425051534, 12425051568), (31, 13312555215, 13312555249), (31, 14200058896, 14200058930), (31, 15087562577, 15087562611), (31, 15975066258, 15975066292), (31, 16862569939, 16862569973), (31, 17750073620, 17750073654), (31, 18637577301, 18637577335), (31, 19525080982, 19525081016)]

def row035_layer023_block000 : List ColouredInterval :=
  [(2, 10200547328, 10200547362), (2, 10737418240, 10737418274), (2, 11274289152, 11274289186), (2, 11811160064, 11811160098), (2, 10737418240, 10737418274), (2, 11811160064, 11811160098), (2, 12884901888, 12884901922), (2, 13958643712, 13958643746), (2, 15032385536, 15032385570), (2, 16106127360, 16106127394), (2, 17179869184, 17179869218), (2, 18253611008, 18253611042), (2, 19327352832, 19327352866), (2, 10737418240, 10737418274), (2, 12884901888, 12884901922), (2, 15032385536, 15032385570)]

def row035_layer023_block001 : List ColouredInterval :=
  [(2, 17179869184, 17179869218), (2, 19327352832, 19327352866), (2, 12884901888, 12884901922), (2, 17179869184, 17179869218), (2, 17179869184, 17179869218), (2, 17179869184, 17179869218), (3, 10460353203, 10460353237), (3, 11622614670, 11622614704), (3, 12784876137, 12784876171), (3, 13947137604, 13947137638), (3, 15109399071, 15109399105), (3, 16271660538, 16271660572), (3, 17433922005, 17433922039), (3, 18596183472, 18596183506), (3, 19758444939, 19758444973), (3, 10460353203, 10460353237)]

def row035_layer023_block002 : List ColouredInterval :=
  [(3, 13947137604, 13947137638), (3, 17433922005, 17433922039), (3, 10460353203, 10460353237), (5, 12207031250, 12207031284), (5, 18310546875, 18310546909), (7, 13841287201, 13841287235), (11, 11789738455, 11789738489), (11, 14147686146, 14147686180), (11, 16505633837, 16505633871), (11, 18863581528, 18863581562), (13, 10604499373, 10604499407), (13, 11420230094, 11420230128), (13, 12235960815, 12235960849), (13, 13051691536, 13051691570), (13, 13867422257, 13867422291), (13, 14683152978, 14683153012)]

def row035_layer023_block003 : List ColouredInterval :=
  [(13, 15498883699, 15498883733), (13, 16314614420, 16314614454), (13, 17130345141, 17130345175), (13, 17946075862, 17946075896), (13, 10604499373, 10604499407), (17, 13951514882, 13951514916), (19, 10726460868, 10726460902), (19, 11620332607, 11620332641), (19, 12514204346, 12514204380), (19, 13408076085, 13408076119), (19, 14301947824, 14301947858), (19, 15195819563, 15195819597), (19, 16089691302, 16089691336), (19, 16983563041, 16983563075), (19, 17877434780, 17877434814), (19, 18771306519, 18771306553)]

def row035_layer023_block004 : List ColouredInterval :=
  [(19, 19665178258, 19665178292), (19, 16983563041, 16983563075), (23, 10214476341, 10214476375), (23, 13619301788, 13619301822), (23, 17024127235, 17024127269), (29, 10111996457, 10111996491), (29, 10706819778, 10706819812), (29, 11301643099, 11301643133), (29, 11896466420, 11896466454), (29, 12491289741, 12491289775), (29, 13086113062, 13086113096), (29, 17249876309, 17249876343), (31, 10650044172, 10650044206), (31, 11537547853, 11537547887), (31, 12425051534, 12425051568), (31, 13312555215, 13312555249)]

def row035_layer023_block005 : List ColouredInterval :=
  [(31, 14200058896, 14200058930), (31, 15087562577, 15087562611), (31, 15975066258, 15975066292), (31, 16862569939, 16862569973), (31, 17750073620, 17750073654), (31, 18637577301, 18637577335), (31, 19525080982, 19525081016)]

def row035_layer023_chunks : List (List ColouredInterval) :=
  [row035_layer023_block000, row035_layer023_block001, row035_layer023_block002, row035_layer023_block003, row035_layer023_block004, row035_layer023_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_arithmetic : LayerArithmeticValid row035.height { lower := 9982443520, upper := 19964887040, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_enumeration :
    activePowerIntervalList 35 22 9982443520 19964887040 = row035_layer023_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_pairs000 :
    row035_layer023_block000.all (fun I => row035_layer023_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_pairs001 :
    row035_layer023_block001.all (fun I => row035_layer023_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_pairs002 :
    row035_layer023_block002.all (fun I => row035_layer023_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_pairs003 :
    row035_layer023_block003.all (fun I => row035_layer023_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_pairs004 :
    row035_layer023_block004.all (fun I => row035_layer023_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_pairs005 :
    row035_layer023_block005.all (fun I => row035_layer023_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_chunks_eq : row035_layer023_chunks.flatten = row035_layer023_intervals := by
  rfl

theorem row035_layer023_pairs : pairCoverCheck row035_layer023_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer023_chunks_eq
  intro block hblock
  simp only [row035_layer023_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer023_pairs000
  · exact row035_layer023_pairs001
  · exact row035_layer023_pairs002
  · exact row035_layer023_pairs003
  · exact row035_layer023_pairs004
  · exact row035_layer023_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer023_checked :
    coverLayerCheck row035.height row035.goods { lower := 9982443520, upper := 19964887040, M := 22 } = true := by
  exact coverLayerCheck_of_parts row035_layer023_arithmetic row035_layer023_enumeration row035_bounds_eq row035_layer023_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer024_intervals : List ColouredInterval :=
  [(2, 20401094656, 20401094690), (2, 21474836480, 21474836514), (2, 22548578304, 22548578338), (2, 23622320128, 23622320162), (2, 21474836480, 21474836514), (2, 23622320128, 23622320162), (2, 25769803776, 25769803810), (2, 27917287424, 27917287458), (2, 30064771072, 30064771106), (2, 32212254720, 32212254754), (2, 34359738368, 34359738402), (2, 36507222016, 36507222050), (2, 38654705664, 38654705698), (2, 21474836480, 21474836514), (2, 25769803776, 25769803810), (2, 30064771072, 30064771106), (2, 34359738368, 34359738402), (2, 38654705664, 38654705698), (2, 25769803776, 25769803810), (2, 34359738368, 34359738402), (2, 34359738368, 34359738402), (2, 34359738368, 34359738402), (3, 20920706406, 20920706440), (3, 22082967873, 22082967907), (3, 23245229340, 23245229374), (3, 24407490807, 24407490841), (3, 25569752274, 25569752308), (3, 20920706406, 20920706440), (3, 24407490807, 24407490841), (3, 27894275208, 27894275242), (3, 31381059609, 31381059643), (3, 34867844010, 34867844044), (3, 38354628411, 38354628445), (3, 20920706406, 20920706440), (3, 31381059609, 31381059643), (3, 31381059609, 31381059643), (5, 24414062500, 24414062534), (5, 30517578125, 30517578159), (7, 27682574402, 27682574436), (11, 21221529219, 21221529253), (11, 23579476910, 23579476944), (11, 25937424601, 25937424635), (11, 28295372292, 28295372326), (11, 30653319983, 30653320017), (11, 33011267674, 33011267708), (11, 35369215365, 35369215399), (11, 37727163056, 37727163090), (11, 25937424601, 25937424635), (13, 21208998746, 21208998780), (13, 31813498119, 31813498153), (17, 20927272323, 20927272357), (17, 27903029764, 27903029798), (17, 34878787205, 34878787239), (19, 33967126082, 33967126116), (23, 20428952682, 20428952716), (23, 23833778129, 23833778163), (23, 27238603576, 27238603610), (23, 30643429023, 30643429057), (23, 34048254470, 34048254504), (23, 37453079917, 37453079951), (29, 34499752618, 34499752652), (31, 27512614111, 27512614145)]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer024_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer024_arithmetic : LayerArithmeticValid row035.height { lower := 19964887040, upper := 39929774080, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer024_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer024_enumeration :
    activePowerIntervalList 35 22 19964887040 39929774080 = row035_layer024_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer024_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer024_pairs : pairCoverCheck row035_layer024_intervals row035_bounds = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer024_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer024_checked :
    coverLayerCheck row035.height row035.goods { lower := 19964887040, upper := 39929774080, M := 22 } = true := by
  exact coverLayerCheck_of_parts row035_layer024_arithmetic row035_layer024_enumeration row035_bounds_eq row035_layer024_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer024_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer025_intervals : List ColouredInterval :=
  [(2, 40802189312, 40802189346), (2, 42949672960, 42949672994), (2, 45097156608, 45097156642), (2, 42949672960, 42949672994), (2, 47244640256, 47244640290), (2, 51539607552, 51539607586), (2, 55834574848, 55834574882), (2, 60129542144, 60129542178), (2, 64424509440, 64424509474), (2, 68719476736, 68719476770), (2, 73014444032, 73014444066), (2, 77309411328, 77309411362), (2, 42949672960, 42949672994), (2, 51539607552, 51539607586), (2, 60129542144, 60129542178), (2, 68719476736, 68719476770), (2, 77309411328, 77309411362), (2, 51539607552, 51539607586), (2, 68719476736, 68719476770), (2, 68719476736, 68719476770), (2, 68719476736, 68719476770), (3, 41841412812, 41841412846), (3, 45328197213, 45328197247), (3, 48814981614, 48814981648), (3, 52301766015, 52301766049), (3, 55788550416, 55788550450), (3, 59275334817, 59275334851), (3, 62762119218, 62762119252), (3, 66248903619, 66248903653), (3, 69735688020, 69735688054), (3, 73222472421, 73222472455), (3, 41841412812, 41841412846), (3, 52301766015, 52301766049), (3, 62762119218, 62762119252), (3, 73222472421, 73222472455), (3, 62762119218, 62762119252), (5, 61035156250, 61035156284), (7, 41523861603, 41523861637), (11, 40085110747, 40085110781), (11, 42443058438, 42443058472), (11, 44801006129, 44801006163), (11, 47158953820, 47158953854), (11, 49516901511, 49516901545), (11, 51874849202, 51874849236), (11, 77812273803, 77812273837), (13, 42417997492, 42417997526), (13, 53022496865, 53022496899), (13, 63626996238, 63626996272), (13, 74231495611, 74231495645), (17, 41854544646, 41854544680), (17, 48830302087, 48830302121), (17, 55806059528, 55806059562), (17, 62781816969, 62781817003), (17, 69757574410, 69757574444), (17, 76733331851, 76733331885), (19, 50950689123, 50950689157), (19, 67934252164, 67934252198), (23, 40857905364, 40857905398), (23, 44262730811, 44262730845), (23, 47667556258, 47667556292), (23, 51072381705, 51072381739), (23, 54477207152, 54477207186), (23, 57882032599, 57882032633), (23, 61286858046, 61286858080), (23, 64691683493, 64691683527), (23, 68096508940, 68096508974), (23, 71501334387, 71501334421), (23, 78310985281, 78310985315), (29, 51749628927, 51749628961), (29, 68999505236, 68999505270), (31, 55025228222, 55025228256)]

def row035_layer025_block000 : List ColouredInterval :=
  [(2, 40802189312, 40802189346), (2, 42949672960, 42949672994), (2, 45097156608, 45097156642), (2, 42949672960, 42949672994), (2, 47244640256, 47244640290), (2, 51539607552, 51539607586), (2, 55834574848, 55834574882), (2, 60129542144, 60129542178), (2, 64424509440, 64424509474), (2, 68719476736, 68719476770), (2, 73014444032, 73014444066), (2, 77309411328, 77309411362), (2, 42949672960, 42949672994), (2, 51539607552, 51539607586), (2, 60129542144, 60129542178), (2, 68719476736, 68719476770)]

def row035_layer025_block001 : List ColouredInterval :=
  [(2, 77309411328, 77309411362), (2, 51539607552, 51539607586), (2, 68719476736, 68719476770), (2, 68719476736, 68719476770), (2, 68719476736, 68719476770), (3, 41841412812, 41841412846), (3, 45328197213, 45328197247), (3, 48814981614, 48814981648), (3, 52301766015, 52301766049), (3, 55788550416, 55788550450), (3, 59275334817, 59275334851), (3, 62762119218, 62762119252), (3, 66248903619, 66248903653), (3, 69735688020, 69735688054), (3, 73222472421, 73222472455), (3, 41841412812, 41841412846)]

def row035_layer025_block002 : List ColouredInterval :=
  [(3, 52301766015, 52301766049), (3, 62762119218, 62762119252), (3, 73222472421, 73222472455), (3, 62762119218, 62762119252), (5, 61035156250, 61035156284), (7, 41523861603, 41523861637), (11, 40085110747, 40085110781), (11, 42443058438, 42443058472), (11, 44801006129, 44801006163), (11, 47158953820, 47158953854), (11, 49516901511, 49516901545), (11, 51874849202, 51874849236), (11, 77812273803, 77812273837), (13, 42417997492, 42417997526), (13, 53022496865, 53022496899), (13, 63626996238, 63626996272)]

def row035_layer025_block003 : List ColouredInterval :=
  [(13, 74231495611, 74231495645), (17, 41854544646, 41854544680), (17, 48830302087, 48830302121), (17, 55806059528, 55806059562), (17, 62781816969, 62781817003), (17, 69757574410, 69757574444), (17, 76733331851, 76733331885), (19, 50950689123, 50950689157), (19, 67934252164, 67934252198), (23, 40857905364, 40857905398), (23, 44262730811, 44262730845), (23, 47667556258, 47667556292), (23, 51072381705, 51072381739), (23, 54477207152, 54477207186), (23, 57882032599, 57882032633), (23, 61286858046, 61286858080)]

def row035_layer025_block004 : List ColouredInterval :=
  [(23, 64691683493, 64691683527), (23, 68096508940, 68096508974), (23, 71501334387, 71501334421), (23, 78310985281, 78310985315), (29, 51749628927, 51749628961), (29, 68999505236, 68999505270), (31, 55025228222, 55025228256)]

def row035_layer025_chunks : List (List ColouredInterval) :=
  [row035_layer025_block000, row035_layer025_block001, row035_layer025_block002, row035_layer025_block003, row035_layer025_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_arithmetic : LayerArithmeticValid row035.height { lower := 39929774080, upper := 79859548160, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_enumeration :
    activePowerIntervalList 35 21 39929774080 79859548160 = row035_layer025_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_pairs000 :
    row035_layer025_block000.all (fun I => row035_layer025_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_pairs001 :
    row035_layer025_block001.all (fun I => row035_layer025_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_pairs002 :
    row035_layer025_block002.all (fun I => row035_layer025_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_pairs003 :
    row035_layer025_block003.all (fun I => row035_layer025_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer025_pairs004 :
    row035_layer025_block004.all (fun I => row035_layer025_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer025_pairs004
