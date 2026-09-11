import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row143B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_pairs009 :
    row143_layer000_block009.all (fun I => row143_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_chunks_eq : row143_layer000_chunks.flatten = row143_layer000_intervals := by
  rfl

theorem row143_layer000_pairs : pairCoverCheck row143_layer000_intervals row143_bounds = true := by
  apply pairCoverCheck_of_chunks row143_layer000_chunks_eq
  intro block hblock
  simp only [row143_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row143_layer000_pairs000
  · exact row143_layer000_pairs001
  · exact row143_layer000_pairs002
  · exact row143_layer000_pairs003
  · exact row143_layer000_pairs004
  · exact row143_layer000_pairs005
  · exact row143_layer000_pairs006
  · exact row143_layer000_pairs007
  · exact row143_layer000_pairs008
  · exact row143_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer000_checked :
    coverLayerCheck row143.height row143.goods { lower := 20306, upper := 40612, M := 17 } = true := by
  exact coverLayerCheck_of_parts row143_layer000_arithmetic row143_layer000_enumeration row143_bounds_eq row143_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row143_layer001_intervals : List ColouredInterval :=
  [(2, 40960, 41102), (2, 45056, 45198), (2, 49152, 49294), (2, 53248, 53390), (2, 40960, 41102), (2, 49152, 49294), (2, 57344, 57486), (2, 65536, 65678), (2, 73728, 73870), (2, 49152, 49294), (2, 65536, 65678), (2, 65536, 65678), (2, 65536, 65678), (3, 45927, 46069), (3, 52488, 52630), (3, 59049, 59191), (3, 65610, 65752), (3, 72171, 72313), (3, 78732, 78874), (3, 59049, 59191), (3, 78732, 78874), (3, 59049, 59191), (5, 40625, 40767), (5, 46875, 47017), (5, 62500, 62642), (5, 78125, 78267), (5, 78125, 78267), (7, 50421, 50563), (7, 67228, 67370), (17, 44217, 44359), (17, 49130, 49272), (17, 54043, 54185), (17, 58956, 59098), (17, 63869, 64011), (19, 41154, 41296), (19, 48013, 48155), (19, 54872, 55014), (19, 61731, 61873), (19, 68590, 68732), (19, 75449, 75591), (23, 48668, 48810), (23, 60835, 60977), (23, 73002, 73144), (29, 48778, 48920), (29, 73167, 73309), (31, 59582, 59724), (37, 50653, 50795), (41, 68921, 69063), (43, 79507, 79649), (59, 41772, 41914), (59, 45253, 45395), (61, 40931, 41073), (61, 44652, 44794), (61, 48373, 48515), (67, 44890, 45032), (67, 49379, 49521), (67, 53868, 54010), (67, 58357, 58499), (71, 45369, 45511), (71, 50410, 50552), (71, 55451, 55593), (71, 60492, 60634), (71, 65533, 65675), (73, 42632, 42774), (73, 47961, 48103), (73, 53290, 53432), (73, 58619, 58761), (73, 63948, 64090), (73, 69277, 69419), (79, 43687, 43829), (79, 49928, 50070), (79, 56169, 56311), (79, 62410, 62552), (79, 68651, 68793), (79, 74892, 75034), (79, 81133, 81223), (83, 41334, 41476), (83, 48223, 48365), (83, 55112, 55254), (83, 62001, 62143), (83, 68890, 69032), (83, 75779, 75921), (89, 47526, 47668), (89, 55447, 55589), (89, 63368, 63510), (89, 71289, 71431), (89, 79210, 79352), (97, 47045, 47187), (97, 56454, 56596), (97, 65863, 66005), (97, 75272, 75414), (101, 40804, 40946), (101, 51005, 51147), (101, 61206, 61348), (101, 71407, 71549), (103, 42436, 42578), (103, 53045, 53187), (103, 63654, 63796), (103, 74263, 74405), (107, 45796, 45938), (107, 57245, 57387), (107, 68694, 68836), (107, 80143, 80285), (109, 47524, 47666), (109, 59405, 59547), (109, 71286, 71428), (113, 51076, 51218), (113, 63845, 63987), (113, 76614, 76756), (127, 48387, 48529), (127, 64516, 64658), (127, 80645, 80787), (131, 51483, 51625), (131, 68644, 68786), (137, 56307, 56449), (137, 75076, 75218), (139, 57963, 58105), (139, 77284, 77426)]

def row143_layer001_block000 : List ColouredInterval :=
  [(2, 40960, 41102), (2, 45056, 45198), (2, 49152, 49294), (2, 53248, 53390), (2, 40960, 41102), (2, 49152, 49294), (2, 57344, 57486), (2, 65536, 65678), (2, 73728, 73870), (2, 49152, 49294), (2, 65536, 65678), (2, 65536, 65678), (2, 65536, 65678), (3, 45927, 46069), (3, 52488, 52630), (3, 59049, 59191)]

def row143_layer001_block001 : List ColouredInterval :=
  [(3, 65610, 65752), (3, 72171, 72313), (3, 78732, 78874), (3, 59049, 59191), (3, 78732, 78874), (3, 59049, 59191), (5, 40625, 40767), (5, 46875, 47017), (5, 62500, 62642), (5, 78125, 78267), (5, 78125, 78267), (7, 50421, 50563), (7, 67228, 67370), (17, 44217, 44359), (17, 49130, 49272), (17, 54043, 54185)]

def row143_layer001_block002 : List ColouredInterval :=
  [(17, 58956, 59098), (17, 63869, 64011), (19, 41154, 41296), (19, 48013, 48155), (19, 54872, 55014), (19, 61731, 61873), (19, 68590, 68732), (19, 75449, 75591), (23, 48668, 48810), (23, 60835, 60977), (23, 73002, 73144), (29, 48778, 48920), (29, 73167, 73309), (31, 59582, 59724), (37, 50653, 50795), (41, 68921, 69063)]

def row143_layer001_block003 : List ColouredInterval :=
  [(43, 79507, 79649), (59, 41772, 41914), (59, 45253, 45395), (61, 40931, 41073), (61, 44652, 44794), (61, 48373, 48515), (67, 44890, 45032), (67, 49379, 49521), (67, 53868, 54010), (67, 58357, 58499), (71, 45369, 45511), (71, 50410, 50552), (71, 55451, 55593), (71, 60492, 60634), (71, 65533, 65675), (73, 42632, 42774)]

def row143_layer001_block004 : List ColouredInterval :=
  [(73, 47961, 48103), (73, 53290, 53432), (73, 58619, 58761), (73, 63948, 64090), (73, 69277, 69419), (79, 43687, 43829), (79, 49928, 50070), (79, 56169, 56311), (79, 62410, 62552), (79, 68651, 68793), (79, 74892, 75034), (79, 81133, 81223), (83, 41334, 41476), (83, 48223, 48365), (83, 55112, 55254), (83, 62001, 62143)]

def row143_layer001_block005 : List ColouredInterval :=
  [(83, 68890, 69032), (83, 75779, 75921), (89, 47526, 47668), (89, 55447, 55589), (89, 63368, 63510), (89, 71289, 71431), (89, 79210, 79352), (97, 47045, 47187), (97, 56454, 56596), (97, 65863, 66005), (97, 75272, 75414), (101, 40804, 40946), (101, 51005, 51147), (101, 61206, 61348), (101, 71407, 71549), (103, 42436, 42578)]

def row143_layer001_block006 : List ColouredInterval :=
  [(103, 53045, 53187), (103, 63654, 63796), (103, 74263, 74405), (107, 45796, 45938), (107, 57245, 57387), (107, 68694, 68836), (107, 80143, 80285), (109, 47524, 47666), (109, 59405, 59547), (109, 71286, 71428), (113, 51076, 51218), (113, 63845, 63987), (113, 76614, 76756), (127, 48387, 48529), (127, 64516, 64658), (127, 80645, 80787)]

def row143_layer001_block007 : List ColouredInterval :=
  [(131, 51483, 51625), (131, 68644, 68786), (137, 56307, 56449), (137, 75076, 75218), (139, 57963, 58105), (139, 77284, 77426)]

def row143_layer001_chunks : List (List ColouredInterval) :=
  [row143_layer001_block000, row143_layer001_block001, row143_layer001_block002, row143_layer001_block003, row143_layer001_block004, row143_layer001_block005, row143_layer001_block006, row143_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_arithmetic : LayerArithmeticValid row143.height { lower := 40612, upper := 81224, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_enumeration :
    activePowerIntervalList 143 13 40612 81224 = row143_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs000 :
    row143_layer001_block000.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs001 :
    row143_layer001_block001.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs002 :
    row143_layer001_block002.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs003 :
    row143_layer001_block003.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs004 :
    row143_layer001_block004.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs005 :
    row143_layer001_block005.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs006 :
    row143_layer001_block006.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_pairs007 :
    row143_layer001_block007.all (fun I => row143_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_chunks_eq : row143_layer001_chunks.flatten = row143_layer001_intervals := by
  rfl

theorem row143_layer001_pairs : pairCoverCheck row143_layer001_intervals row143_bounds = true := by
  apply pairCoverCheck_of_chunks row143_layer001_chunks_eq
  intro block hblock
  simp only [row143_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row143_layer001_pairs000
  · exact row143_layer001_pairs001
  · exact row143_layer001_pairs002
  · exact row143_layer001_pairs003
  · exact row143_layer001_pairs004
  · exact row143_layer001_pairs005
  · exact row143_layer001_pairs006
  · exact row143_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer001_checked :
    coverLayerCheck row143.height row143.goods { lower := 40612, upper := 81224, M := 13 } = true := by
  exact coverLayerCheck_of_parts row143_layer001_arithmetic row143_layer001_enumeration row143_bounds_eq row143_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row143_layer002_intervals : List ColouredInterval :=
  [(2, 81920, 82062), (2, 81920, 82062), (2, 98304, 98446), (2, 114688, 114830), (2, 131072, 131214), (2, 147456, 147598), (2, 98304, 98446), (2, 131072, 131214), (2, 131072, 131214), (2, 131072, 131214), (3, 98415, 98557), (3, 118098, 118240), (3, 137781, 137923), (3, 157464, 157606), (3, 118098, 118240), (5, 93750, 93892), (5, 109375, 109517), (5, 125000, 125142), (5, 140625, 140767), (5, 156250, 156392), (5, 156250, 156392), (7, 84035, 84177), (7, 100842, 100984), (7, 117649, 117791), (7, 134456, 134598), (7, 151263, 151405), (7, 117649, 117791), (17, 83521, 83663), (19, 130321, 130463), (23, 85169, 85311), (23, 97336, 97478), (23, 109503, 109645), (23, 121670, 121812), (29, 97556, 97698), (29, 121945, 122087), (29, 146334, 146476), (31, 89373, 89515), (31, 119164, 119306), (31, 148955, 149097), (37, 101306, 101448), (37, 151959, 152101), (41, 137842, 137984), (43, 159014, 159156), (47, 103823, 103965), (53, 148877, 149019), (97, 84681, 84823), (97, 94090, 94232), (101, 81608, 81750), (101, 91809, 91951), (101, 102010, 102152), (103, 84872, 85014), (103, 95481, 95623), (103, 106090, 106232), (107, 91592, 91734), (107, 103041, 103183), (107, 114490, 114632), (109, 83167, 83309), (109, 95048, 95190), (109, 106929, 107071), (109, 118810, 118952), (113, 89383, 89525), (113, 102152, 102294), (113, 114921, 115063), (113, 127690, 127832), (127, 96774, 96916), (127, 112903, 113045), (127, 129032, 129174), (127, 145161, 145303), (127, 161290, 161432), (131, 85805, 85947), (131, 102966, 103108), (131, 120127, 120269), (131, 137288, 137430), (131, 154449, 154591), (137, 93845, 93987), (137, 112614, 112756), (137, 131383, 131525), (137, 150152, 150294), (139, 96605, 96747), (139, 115926, 116068), (139, 135247, 135389), (139, 154568, 154710)]

def row143_layer002_block000 : List ColouredInterval :=
  [(2, 81920, 82062), (2, 81920, 82062), (2, 98304, 98446), (2, 114688, 114830), (2, 131072, 131214), (2, 147456, 147598), (2, 98304, 98446), (2, 131072, 131214), (2, 131072, 131214), (2, 131072, 131214), (3, 98415, 98557), (3, 118098, 118240), (3, 137781, 137923), (3, 157464, 157606), (3, 118098, 118240), (5, 93750, 93892)]

def row143_layer002_block001 : List ColouredInterval :=
  [(5, 109375, 109517), (5, 125000, 125142), (5, 140625, 140767), (5, 156250, 156392), (5, 156250, 156392), (7, 84035, 84177), (7, 100842, 100984), (7, 117649, 117791), (7, 134456, 134598), (7, 151263, 151405), (7, 117649, 117791), (17, 83521, 83663), (19, 130321, 130463), (23, 85169, 85311), (23, 97336, 97478), (23, 109503, 109645)]

def row143_layer002_block002 : List ColouredInterval :=
  [(23, 121670, 121812), (29, 97556, 97698), (29, 121945, 122087), (29, 146334, 146476), (31, 89373, 89515), (31, 119164, 119306), (31, 148955, 149097), (37, 101306, 101448), (37, 151959, 152101), (41, 137842, 137984), (43, 159014, 159156), (47, 103823, 103965), (53, 148877, 149019), (97, 84681, 84823), (97, 94090, 94232), (101, 81608, 81750)]

def row143_layer002_block003 : List ColouredInterval :=
  [(101, 91809, 91951), (101, 102010, 102152), (103, 84872, 85014), (103, 95481, 95623), (103, 106090, 106232), (107, 91592, 91734), (107, 103041, 103183), (107, 114490, 114632), (109, 83167, 83309), (109, 95048, 95190), (109, 106929, 107071), (109, 118810, 118952), (113, 89383, 89525), (113, 102152, 102294), (113, 114921, 115063), (113, 127690, 127832)]

def row143_layer002_block004 : List ColouredInterval :=
  [(127, 96774, 96916), (127, 112903, 113045), (127, 129032, 129174), (127, 145161, 145303), (127, 161290, 161432), (131, 85805, 85947), (131, 102966, 103108), (131, 120127, 120269), (131, 137288, 137430), (131, 154449, 154591), (137, 93845, 93987), (137, 112614, 112756), (137, 131383, 131525), (137, 150152, 150294), (139, 96605, 96747), (139, 115926, 116068)]

def row143_layer002_block005 : List ColouredInterval :=
  [(139, 135247, 135389), (139, 154568, 154710)]

def row143_layer002_chunks : List (List ColouredInterval) :=
  [row143_layer002_block000, row143_layer002_block001, row143_layer002_block002, row143_layer002_block003, row143_layer002_block004, row143_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_arithmetic : LayerArithmeticValid row143.height { lower := 81224, upper := 162448, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_enumeration :
    activePowerIntervalList 143 10 81224 162448 = row143_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_pairs000 :
    row143_layer002_block000.all (fun I => row143_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_pairs001 :
    row143_layer002_block001.all (fun I => row143_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_pairs002 :
    row143_layer002_block002.all (fun I => row143_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_pairs003 :
    row143_layer002_block003.all (fun I => row143_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_pairs004 :
    row143_layer002_block004.all (fun I => row143_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_pairs005 :
    row143_layer002_block005.all (fun I => row143_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row143_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_chunks_eq : row143_layer002_chunks.flatten = row143_layer002_intervals := by
  rfl

theorem row143_layer002_pairs : pairCoverCheck row143_layer002_intervals row143_bounds = true := by
  apply pairCoverCheck_of_chunks row143_layer002_chunks_eq
  intro block hblock
  simp only [row143_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row143_layer002_pairs000
  · exact row143_layer002_pairs001
  · exact row143_layer002_pairs002
  · exact row143_layer002_pairs003
  · exact row143_layer002_pairs004
  · exact row143_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer002_checked :
    coverLayerCheck row143.height row143.goods { lower := 81224, upper := 162448, M := 10 } = true := by
  exact coverLayerCheck_of_parts row143_layer002_arithmetic row143_layer002_enumeration row143_bounds_eq row143_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer003_checked :
    coverLayerCheck row143.height row143.goods { lower := 162448, upper := 324896, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer004_checked :
    coverLayerCheck row143.height row143.goods { lower := 324896, upper := 649792, M := 6 } = true := by
  decide +kernel

theorem row143_layer005_checked :
    coverLayerCheck row143.height row143.goods { lower := 649792, upper := 1299584, M := 5 } = true := by
  decide +kernel

theorem row143_layer006_checked :
    coverLayerCheck row143.height row143.goods { lower := 1299584, upper := 2599168, M := 4 } = true := by
  decide +kernel

theorem row143_layer007_checked :
    coverLayerCheck row143.height row143.goods { lower := 2599168, upper := 5198336, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer008_checked :
    coverLayerCheck row143.height row143.goods { lower := 5198336, upper := 10396672, M := 2 } = true := by
  decide +kernel

theorem row143_layer009_checked :
    coverLayerCheck row143.height row143.goods { lower := 10396672, upper := 20793344, M := 2 } = true := by
  decide +kernel

theorem row143_layer010_checked :
    coverLayerCheck row143.height row143.goods { lower := 20793344, upper := 41586688, M := 2 } = true := by
  decide +kernel

theorem row143_layer011_checked :
    coverLayerCheck row143.height row143.goods { lower := 41586688, upper := 83173376, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layer012_checked :
    coverLayerCheck row143.height row143.goods { lower := 83173376, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row143_layers_checked :
    row143.layers.all (coverLayerCheck row143.height row143.goods) = true := by
  change row143_layers.all (coverLayerCheck row143.height row143.goods) = true
  simp only [row143_layers, List.all_cons, List.all_nil,
    row143_layer000_checked,
    row143_layer001_checked,
    row143_layer002_checked,
    row143_layer003_checked,
    row143_layer004_checked,
    row143_layer005_checked,
    row143_layer006_checked,
    row143_layer007_checked,
    row143_layer008_checked,
    row143_layer009_checked,
    row143_layer010_checked,
    row143_layer011_checked,
    row143_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row143_layers_checked
