import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row152B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_chunks_eq : row152_layer000_chunks.flatten = row152_layer000_intervals := by
  rfl

theorem row152_layer000_pairs : pairCoverCheck row152_layer000_intervals row152_bounds = true := by
  apply pairCoverCheck_of_chunks row152_layer000_chunks_eq
  intro block hblock
  simp only [row152_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row152_layer000_pairs000
  · exact row152_layer000_pairs001
  · exact row152_layer000_pairs002
  · exact row152_layer000_pairs003
  · exact row152_layer000_pairs004
  · exact row152_layer000_pairs005
  · exact row152_layer000_pairs006
  · exact row152_layer000_pairs007
  · exact row152_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer000_checked :
    coverLayerCheck row152.height row152.goods { lower := 22952, upper := 45904, M := 17 } = true := by
  exact coverLayerCheck_of_parts row152_layer000_arithmetic row152_layer000_enumeration row152_bounds_eq row152_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row152_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65687), (3, 45927, 46078), (3, 52488, 52639), (3, 59049, 59200), (3, 65610, 65761), (3, 72171, 72322), (3, 78732, 78883), (3, 85293, 85444), (3, 59049, 59200), (3, 78732, 78883), (3, 59049, 59200), (5, 46875, 47026), (5, 62500, 62651), (5, 78125, 78276), (5, 78125, 78276), (7, 50421, 50572), (7, 67228, 67379), (7, 84035, 84186), (11, 58564, 58715), (11, 73205, 73356), (11, 87846, 87997), (13, 57122, 57273), (13, 85683, 85834), (17, 49130, 49281), (17, 54043, 54194), (17, 58956, 59107), (17, 63869, 64020), (17, 83521, 83672), (23, 48668, 48819), (23, 60835, 60986), (23, 73002, 73153), (23, 85169, 85320), (29, 48778, 48929), (29, 73167, 73318), (31, 59582, 59733), (31, 89373, 89524), (37, 50653, 50804), (41, 68921, 69072), (43, 79507, 79658), (61, 48373, 48524), (67, 49379, 49530), (67, 53868, 54019), (67, 58357, 58508), (71, 50410, 50561), (71, 55451, 55602), (71, 60492, 60643), (71, 65533, 65684), (73, 47961, 48112), (73, 53290, 53441), (73, 58619, 58770), (73, 63948, 64099), (73, 69277, 69428), (79, 49928, 50079), (79, 56169, 56320), (79, 62410, 62561), (79, 68651, 68802), (79, 74892, 75043), (79, 81133, 81284), (83, 48223, 48374), (83, 55112, 55263), (83, 62001, 62152), (83, 68890, 69041), (83, 75779, 75930), (83, 82668, 82819), (83, 89557, 89708), (89, 47526, 47677), (89, 55447, 55598), (89, 63368, 63519), (89, 71289, 71440), (89, 79210, 79361), (89, 87131, 87282), (97, 47045, 47196), (97, 56454, 56605), (97, 65863, 66014), (97, 75272, 75423), (97, 84681, 84832), (101, 51005, 51156), (101, 61206, 61357), (101, 71407, 71558), (101, 81608, 81759), (103, 53045, 53196), (103, 63654, 63805), (103, 74263, 74414), (103, 84872, 85023), (107, 45904, 45947), (107, 57245, 57396), (107, 68694, 68845), (107, 80143, 80294), (107, 91592, 91743), (109, 47524, 47675), (109, 59405, 59556), (109, 71286, 71437), (109, 83167, 83318), (113, 51076, 51227), (113, 63845, 63996), (113, 76614, 76765), (113, 89383, 89534), (127, 48387, 48538), (127, 64516, 64667), (127, 80645, 80796), (131, 51483, 51634), (131, 68644, 68795), (131, 85805, 85956), (137, 56307, 56458), (137, 75076, 75227), (139, 57963, 58114), (139, 77284, 77435), (149, 66603, 66754), (149, 88804, 88955), (151, 68403, 68554), (151, 91204, 91355)]

def row152_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65687), (3, 45927, 46078), (3, 52488, 52639), (3, 59049, 59200), (3, 65610, 65761), (3, 72171, 72322), (3, 78732, 78883), (3, 85293, 85444), (3, 59049, 59200), (3, 78732, 78883), (3, 59049, 59200), (5, 46875, 47026), (5, 62500, 62651), (5, 78125, 78276), (5, 78125, 78276), (7, 50421, 50572)]

def row152_layer001_block001 : List ColouredInterval :=
  [(7, 67228, 67379), (7, 84035, 84186), (11, 58564, 58715), (11, 73205, 73356), (11, 87846, 87997), (13, 57122, 57273), (13, 85683, 85834), (17, 49130, 49281), (17, 54043, 54194), (17, 58956, 59107), (17, 63869, 64020), (17, 83521, 83672), (23, 48668, 48819), (23, 60835, 60986), (23, 73002, 73153), (23, 85169, 85320)]

def row152_layer001_block002 : List ColouredInterval :=
  [(29, 48778, 48929), (29, 73167, 73318), (31, 59582, 59733), (31, 89373, 89524), (37, 50653, 50804), (41, 68921, 69072), (43, 79507, 79658), (61, 48373, 48524), (67, 49379, 49530), (67, 53868, 54019), (67, 58357, 58508), (71, 50410, 50561), (71, 55451, 55602), (71, 60492, 60643), (71, 65533, 65684), (73, 47961, 48112)]

def row152_layer001_block003 : List ColouredInterval :=
  [(73, 53290, 53441), (73, 58619, 58770), (73, 63948, 64099), (73, 69277, 69428), (79, 49928, 50079), (79, 56169, 56320), (79, 62410, 62561), (79, 68651, 68802), (79, 74892, 75043), (79, 81133, 81284), (83, 48223, 48374), (83, 55112, 55263), (83, 62001, 62152), (83, 68890, 69041), (83, 75779, 75930), (83, 82668, 82819)]

def row152_layer001_block004 : List ColouredInterval :=
  [(83, 89557, 89708), (89, 47526, 47677), (89, 55447, 55598), (89, 63368, 63519), (89, 71289, 71440), (89, 79210, 79361), (89, 87131, 87282), (97, 47045, 47196), (97, 56454, 56605), (97, 65863, 66014), (97, 75272, 75423), (97, 84681, 84832), (101, 51005, 51156), (101, 61206, 61357), (101, 71407, 71558), (101, 81608, 81759)]

def row152_layer001_block005 : List ColouredInterval :=
  [(103, 53045, 53196), (103, 63654, 63805), (103, 74263, 74414), (103, 84872, 85023), (107, 45904, 45947), (107, 57245, 57396), (107, 68694, 68845), (107, 80143, 80294), (107, 91592, 91743), (109, 47524, 47675), (109, 59405, 59556), (109, 71286, 71437), (109, 83167, 83318), (113, 51076, 51227), (113, 63845, 63996), (113, 76614, 76765)]

def row152_layer001_block006 : List ColouredInterval :=
  [(113, 89383, 89534), (127, 48387, 48538), (127, 64516, 64667), (127, 80645, 80796), (131, 51483, 51634), (131, 68644, 68795), (131, 85805, 85956), (137, 56307, 56458), (137, 75076, 75227), (139, 57963, 58114), (139, 77284, 77435), (149, 66603, 66754), (149, 88804, 88955), (151, 68403, 68554), (151, 91204, 91355)]

def row152_layer001_chunks : List (List ColouredInterval) :=
  [row152_layer001_block000, row152_layer001_block001, row152_layer001_block002, row152_layer001_block003, row152_layer001_block004, row152_layer001_block005, row152_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_arithmetic : LayerArithmeticValid row152.height { lower := 45904, upper := 91808, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_enumeration :
    activePowerIntervalList 152 13 45904 91808 = row152_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_pairs000 :
    row152_layer001_block000.all (fun I => row152_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_pairs001 :
    row152_layer001_block001.all (fun I => row152_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_pairs002 :
    row152_layer001_block002.all (fun I => row152_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_pairs003 :
    row152_layer001_block003.all (fun I => row152_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_pairs004 :
    row152_layer001_block004.all (fun I => row152_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_pairs005 :
    row152_layer001_block005.all (fun I => row152_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_pairs006 :
    row152_layer001_block006.all (fun I => row152_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_chunks_eq : row152_layer001_chunks.flatten = row152_layer001_intervals := by
  rfl

theorem row152_layer001_pairs : pairCoverCheck row152_layer001_intervals row152_bounds = true := by
  apply pairCoverCheck_of_chunks row152_layer001_chunks_eq
  intro block hblock
  simp only [row152_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row152_layer001_pairs000
  · exact row152_layer001_pairs001
  · exact row152_layer001_pairs002
  · exact row152_layer001_pairs003
  · exact row152_layer001_pairs004
  · exact row152_layer001_pairs005
  · exact row152_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer001_checked :
    coverLayerCheck row152.height row152.goods { lower := 45904, upper := 91808, M := 13 } = true := by
  exact coverLayerCheck_of_parts row152_layer001_arithmetic row152_layer001_enumeration row152_bounds_eq row152_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row152_layer002_intervals : List ColouredInterval :=
  [(2, 131072, 131223), (3, 98415, 98566), (3, 118098, 118249), (3, 137781, 137932), (3, 157464, 157615), (3, 177147, 177298), (3, 118098, 118249), (3, 177147, 177298), (3, 177147, 177298), (5, 93750, 93901), (5, 109375, 109526), (5, 125000, 125151), (5, 140625, 140776), (5, 156250, 156401), (5, 156250, 156401), (7, 100842, 100993), (7, 117649, 117800), (7, 134456, 134607), (7, 151263, 151414), (7, 168070, 168221), (7, 117649, 117800), (11, 102487, 102638), (11, 117128, 117279), (11, 131769, 131920), (11, 146410, 146561), (11, 161051, 161202), (13, 114244, 114395), (13, 142805, 142956), (13, 171366, 171517), (17, 167042, 167193), (23, 97336, 97487), (23, 109503, 109654), (23, 121670, 121821), (29, 97556, 97707), (29, 121945, 122096), (29, 146334, 146485), (29, 170723, 170874), (31, 119164, 119315), (31, 148955, 149106), (31, 178746, 178897), (37, 101306, 101457), (37, 151959, 152110), (41, 137842, 137993), (43, 159014, 159165), (47, 103823, 103974), (53, 148877, 149028), (97, 94090, 94241), (101, 91809, 91960), (101, 102010, 102161), (103, 95481, 95632), (103, 106090, 106241), (107, 103041, 103192), (107, 114490, 114641), (109, 95048, 95199), (109, 106929, 107080), (109, 118810, 118961), (113, 102152, 102303), (113, 114921, 115072), (113, 127690, 127841), (127, 96774, 96925), (127, 112903, 113054), (127, 129032, 129183), (127, 145161, 145312), (127, 161290, 161441), (131, 102966, 103117), (131, 120127, 120278), (131, 137288, 137439), (131, 154449, 154600), (131, 171610, 171761), (137, 93845, 93996), (137, 112614, 112765), (137, 131383, 131534), (137, 150152, 150303), (137, 168921, 169072), (139, 96605, 96756), (139, 115926, 116077), (139, 135247, 135398), (139, 154568, 154719), (139, 173889, 174040), (149, 111005, 111156), (149, 133206, 133357), (149, 155407, 155558), (149, 177608, 177759), (151, 114005, 114156), (151, 136806, 136957), (151, 159607, 159758), (151, 182408, 182559)]

def row152_layer002_block000 : List ColouredInterval :=
  [(2, 131072, 131223), (3, 98415, 98566), (3, 118098, 118249), (3, 137781, 137932), (3, 157464, 157615), (3, 177147, 177298), (3, 118098, 118249), (3, 177147, 177298), (3, 177147, 177298), (5, 93750, 93901), (5, 109375, 109526), (5, 125000, 125151), (5, 140625, 140776), (5, 156250, 156401), (5, 156250, 156401), (7, 100842, 100993)]

def row152_layer002_block001 : List ColouredInterval :=
  [(7, 117649, 117800), (7, 134456, 134607), (7, 151263, 151414), (7, 168070, 168221), (7, 117649, 117800), (11, 102487, 102638), (11, 117128, 117279), (11, 131769, 131920), (11, 146410, 146561), (11, 161051, 161202), (13, 114244, 114395), (13, 142805, 142956), (13, 171366, 171517), (17, 167042, 167193), (23, 97336, 97487), (23, 109503, 109654)]

def row152_layer002_block002 : List ColouredInterval :=
  [(23, 121670, 121821), (29, 97556, 97707), (29, 121945, 122096), (29, 146334, 146485), (29, 170723, 170874), (31, 119164, 119315), (31, 148955, 149106), (31, 178746, 178897), (37, 101306, 101457), (37, 151959, 152110), (41, 137842, 137993), (43, 159014, 159165), (47, 103823, 103974), (53, 148877, 149028), (97, 94090, 94241), (101, 91809, 91960)]

def row152_layer002_block003 : List ColouredInterval :=
  [(101, 102010, 102161), (103, 95481, 95632), (103, 106090, 106241), (107, 103041, 103192), (107, 114490, 114641), (109, 95048, 95199), (109, 106929, 107080), (109, 118810, 118961), (113, 102152, 102303), (113, 114921, 115072), (113, 127690, 127841), (127, 96774, 96925), (127, 112903, 113054), (127, 129032, 129183), (127, 145161, 145312), (127, 161290, 161441)]

def row152_layer002_block004 : List ColouredInterval :=
  [(131, 102966, 103117), (131, 120127, 120278), (131, 137288, 137439), (131, 154449, 154600), (131, 171610, 171761), (137, 93845, 93996), (137, 112614, 112765), (137, 131383, 131534), (137, 150152, 150303), (137, 168921, 169072), (139, 96605, 96756), (139, 115926, 116077), (139, 135247, 135398), (139, 154568, 154719), (139, 173889, 174040), (149, 111005, 111156)]

def row152_layer002_block005 : List ColouredInterval :=
  [(149, 133206, 133357), (149, 155407, 155558), (149, 177608, 177759), (151, 114005, 114156), (151, 136806, 136957), (151, 159607, 159758), (151, 182408, 182559)]

def row152_layer002_chunks : List (List ColouredInterval) :=
  [row152_layer002_block000, row152_layer002_block001, row152_layer002_block002, row152_layer002_block003, row152_layer002_block004, row152_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_arithmetic : LayerArithmeticValid row152.height { lower := 91808, upper := 183616, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_enumeration :
    activePowerIntervalList 152 10 91808 183616 = row152_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_pairs000 :
    row152_layer002_block000.all (fun I => row152_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_pairs001 :
    row152_layer002_block001.all (fun I => row152_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_pairs002 :
    row152_layer002_block002.all (fun I => row152_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_pairs003 :
    row152_layer002_block003.all (fun I => row152_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_pairs004 :
    row152_layer002_block004.all (fun I => row152_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_pairs005 :
    row152_layer002_block005.all (fun I => row152_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row152_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_chunks_eq : row152_layer002_chunks.flatten = row152_layer002_intervals := by
  rfl

theorem row152_layer002_pairs : pairCoverCheck row152_layer002_intervals row152_bounds = true := by
  apply pairCoverCheck_of_chunks row152_layer002_chunks_eq
  intro block hblock
  simp only [row152_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row152_layer002_pairs000
  · exact row152_layer002_pairs001
  · exact row152_layer002_pairs002
  · exact row152_layer002_pairs003
  · exact row152_layer002_pairs004
  · exact row152_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer002_checked :
    coverLayerCheck row152.height row152.goods { lower := 91808, upper := 183616, M := 10 } = true := by
  exact coverLayerCheck_of_parts row152_layer002_arithmetic row152_layer002_enumeration row152_bounds_eq row152_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer003_checked :
    coverLayerCheck row152.height row152.goods { lower := 183616, upper := 367232, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer004_checked :
    coverLayerCheck row152.height row152.goods { lower := 367232, upper := 734464, M := 6 } = true := by
  decide +kernel

theorem row152_layer005_checked :
    coverLayerCheck row152.height row152.goods { lower := 734464, upper := 1468928, M := 5 } = true := by
  decide +kernel

theorem row152_layer006_checked :
    coverLayerCheck row152.height row152.goods { lower := 1468928, upper := 2937856, M := 4 } = true := by
  decide +kernel

theorem row152_layer007_checked :
    coverLayerCheck row152.height row152.goods { lower := 2937856, upper := 5875712, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer008_checked :
    coverLayerCheck row152.height row152.goods { lower := 5875712, upper := 11751424, M := 2 } = true := by
  decide +kernel

theorem row152_layer009_checked :
    coverLayerCheck row152.height row152.goods { lower := 11751424, upper := 23502848, M := 2 } = true := by
  decide +kernel

theorem row152_layer010_checked :
    coverLayerCheck row152.height row152.goods { lower := 23502848, upper := 47005696, M := 1 } = true := by
  decide +kernel

theorem row152_layer011_checked :
    coverLayerCheck row152.height row152.goods { lower := 47005696, upper := 94011392, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layer012_checked :
    coverLayerCheck row152.height row152.goods { lower := 94011392, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_layers_checked :
    row152.layers.all (coverLayerCheck row152.height row152.goods) = true := by
  change row152_layers.all (coverLayerCheck row152.height row152.goods) = true
  simp only [row152_layers, List.all_cons, List.all_nil,
    row152_layer000_checked,
    row152_layer001_checked,
    row152_layer002_checked,
    row152_layer003_checked,
    row152_layer004_checked,
    row152_layer005_checked,
    row152_layer006_checked,
    row152_layer007_checked,
    row152_layer008_checked,
    row152_layer009_checked,
    row152_layer010_checked,
    row152_layer011_checked,
    row152_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row152_checked : finiteCoverRowCheck row152 = true := by
  simp only [finiteCoverRowCheck, row152_registered, row152_goods_checked,
    row152_small_checked, row152_layerCover_checked, row152_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row152_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i152 :
    ∀ n j : ℕ, 1 ≤ 152 ∧ 152 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 152 ≤ p ∧ p ∣ Nat.choose n 152 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row152_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i152
