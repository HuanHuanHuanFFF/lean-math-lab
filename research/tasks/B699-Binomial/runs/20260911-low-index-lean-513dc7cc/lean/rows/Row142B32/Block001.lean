import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row142B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs009 :
    row142_layer000_block009.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_pairs010 :
    row142_layer000_block010.all (fun I => row142_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_chunks_eq : row142_layer000_chunks.flatten = row142_layer000_intervals := by
  rfl

theorem row142_layer000_pairs : pairCoverCheck row142_layer000_intervals row142_bounds = true := by
  apply pairCoverCheck_of_chunks row142_layer000_chunks_eq
  intro block hblock
  simp only [row142_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row142_layer000_pairs000
  · exact row142_layer000_pairs001
  · exact row142_layer000_pairs002
  · exact row142_layer000_pairs003
  · exact row142_layer000_pairs004
  · exact row142_layer000_pairs005
  · exact row142_layer000_pairs006
  · exact row142_layer000_pairs007
  · exact row142_layer000_pairs008
  · exact row142_layer000_pairs009
  · exact row142_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer000_checked :
    coverLayerCheck row142.height row142.goods { lower := 20022, upper := 40044, M := 18 } = true := by
  exact coverLayerCheck_of_parts row142_layer000_arithmetic row142_layer000_enumeration row142_bounds_eq row142_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row142_layer001_intervals : List ColouredInterval :=
  [(2, 40960, 41101), (2, 49152, 49293), (2, 57344, 57485), (2, 49152, 49293), (2, 65536, 65677), (2, 65536, 65677), (2, 65536, 65677), (3, 45927, 46068), (3, 52488, 52629), (3, 59049, 59190), (3, 65610, 65751), (3, 72171, 72312), (3, 78732, 78873), (3, 59049, 59190), (3, 78732, 78873), (3, 59049, 59190), (5, 40625, 40766), (5, 43750, 43891), (5, 46875, 47016), (5, 62500, 62641), (5, 78125, 78266), (5, 78125, 78266), (7, 50421, 50562), (7, 67228, 67369), (11, 43923, 44064), (11, 58564, 58705), (11, 73205, 73346), (13, 57122, 57263), (17, 44217, 44358), (17, 49130, 49271), (17, 54043, 54184), (17, 58956, 59097), (17, 63869, 64010), (17, 68782, 68923), (19, 41154, 41295), (19, 48013, 48154), (19, 54872, 55013), (19, 61731, 61872), (19, 68590, 68731), (19, 75449, 75590), (23, 48668, 48809), (23, 60835, 60976), (23, 73002, 73143), (29, 48778, 48919), (29, 73167, 73308), (31, 59582, 59723), (37, 50653, 50794), (41, 68921, 69062), (43, 79507, 79648), (59, 41772, 41913), (59, 45253, 45394), (59, 48734, 48875), (61, 40931, 41072), (61, 44652, 44793), (61, 48373, 48514), (61, 52094, 52235), (67, 40401, 40542), (67, 44890, 45031), (67, 49379, 49520), (67, 53868, 54009), (67, 58357, 58498), (67, 62846, 62987), (73, 42632, 42773), (73, 47961, 48102), (73, 53290, 53431), (73, 58619, 58760), (73, 63948, 64089), (73, 69277, 69418), (73, 74606, 74747), (79, 43687, 43828), (79, 49928, 50069), (79, 56169, 56310), (79, 62410, 62551), (79, 68651, 68792), (79, 74892, 75033), (83, 41334, 41475), (83, 48223, 48364), (83, 55112, 55253), (83, 62001, 62142), (83, 68890, 69031), (83, 75779, 75920), (89, 47526, 47667), (89, 55447, 55588), (89, 63368, 63509), (89, 71289, 71430), (89, 79210, 79351), (97, 47045, 47186), (97, 56454, 56595), (97, 65863, 66004), (97, 75272, 75413), (101, 40804, 40945), (101, 51005, 51146), (101, 61206, 61347), (101, 71407, 71548), (103, 42436, 42577), (103, 53045, 53186), (103, 63654, 63795), (103, 74263, 74404), (107, 45796, 45937), (107, 57245, 57386), (107, 68694, 68835), (109, 47524, 47665), (109, 59405, 59546), (109, 71286, 71427), (113, 51076, 51217), (113, 63845, 63986), (113, 76614, 76755), (127, 48387, 48528), (127, 64516, 64657), (131, 51483, 51624), (131, 68644, 68785), (137, 56307, 56448), (137, 75076, 75217), (139, 57963, 58104), (139, 77284, 77425)]

def row142_layer001_block000 : List ColouredInterval :=
  [(2, 40960, 41101), (2, 49152, 49293), (2, 57344, 57485), (2, 49152, 49293), (2, 65536, 65677), (2, 65536, 65677), (2, 65536, 65677), (3, 45927, 46068), (3, 52488, 52629), (3, 59049, 59190), (3, 65610, 65751), (3, 72171, 72312), (3, 78732, 78873), (3, 59049, 59190), (3, 78732, 78873), (3, 59049, 59190)]

def row142_layer001_block001 : List ColouredInterval :=
  [(5, 40625, 40766), (5, 43750, 43891), (5, 46875, 47016), (5, 62500, 62641), (5, 78125, 78266), (5, 78125, 78266), (7, 50421, 50562), (7, 67228, 67369), (11, 43923, 44064), (11, 58564, 58705), (11, 73205, 73346), (13, 57122, 57263), (17, 44217, 44358), (17, 49130, 49271), (17, 54043, 54184), (17, 58956, 59097)]

def row142_layer001_block002 : List ColouredInterval :=
  [(17, 63869, 64010), (17, 68782, 68923), (19, 41154, 41295), (19, 48013, 48154), (19, 54872, 55013), (19, 61731, 61872), (19, 68590, 68731), (19, 75449, 75590), (23, 48668, 48809), (23, 60835, 60976), (23, 73002, 73143), (29, 48778, 48919), (29, 73167, 73308), (31, 59582, 59723), (37, 50653, 50794), (41, 68921, 69062)]

def row142_layer001_block003 : List ColouredInterval :=
  [(43, 79507, 79648), (59, 41772, 41913), (59, 45253, 45394), (59, 48734, 48875), (61, 40931, 41072), (61, 44652, 44793), (61, 48373, 48514), (61, 52094, 52235), (67, 40401, 40542), (67, 44890, 45031), (67, 49379, 49520), (67, 53868, 54009), (67, 58357, 58498), (67, 62846, 62987), (73, 42632, 42773), (73, 47961, 48102)]

def row142_layer001_block004 : List ColouredInterval :=
  [(73, 53290, 53431), (73, 58619, 58760), (73, 63948, 64089), (73, 69277, 69418), (73, 74606, 74747), (79, 43687, 43828), (79, 49928, 50069), (79, 56169, 56310), (79, 62410, 62551), (79, 68651, 68792), (79, 74892, 75033), (83, 41334, 41475), (83, 48223, 48364), (83, 55112, 55253), (83, 62001, 62142), (83, 68890, 69031)]

def row142_layer001_block005 : List ColouredInterval :=
  [(83, 75779, 75920), (89, 47526, 47667), (89, 55447, 55588), (89, 63368, 63509), (89, 71289, 71430), (89, 79210, 79351), (97, 47045, 47186), (97, 56454, 56595), (97, 65863, 66004), (97, 75272, 75413), (101, 40804, 40945), (101, 51005, 51146), (101, 61206, 61347), (101, 71407, 71548), (103, 42436, 42577), (103, 53045, 53186)]

def row142_layer001_block006 : List ColouredInterval :=
  [(103, 63654, 63795), (103, 74263, 74404), (107, 45796, 45937), (107, 57245, 57386), (107, 68694, 68835), (109, 47524, 47665), (109, 59405, 59546), (109, 71286, 71427), (113, 51076, 51217), (113, 63845, 63986), (113, 76614, 76755), (127, 48387, 48528), (127, 64516, 64657), (131, 51483, 51624), (131, 68644, 68785), (137, 56307, 56448)]

def row142_layer001_block007 : List ColouredInterval :=
  [(137, 75076, 75217), (139, 57963, 58104), (139, 77284, 77425)]

def row142_layer001_chunks : List (List ColouredInterval) :=
  [row142_layer001_block000, row142_layer001_block001, row142_layer001_block002, row142_layer001_block003, row142_layer001_block004, row142_layer001_block005, row142_layer001_block006, row142_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_arithmetic : LayerArithmeticValid row142.height { lower := 40044, upper := 80088, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_enumeration :
    activePowerIntervalList 142 14 40044 80088 = row142_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs000 :
    row142_layer001_block000.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs001 :
    row142_layer001_block001.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs002 :
    row142_layer001_block002.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs003 :
    row142_layer001_block003.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs004 :
    row142_layer001_block004.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs005 :
    row142_layer001_block005.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs006 :
    row142_layer001_block006.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_pairs007 :
    row142_layer001_block007.all (fun I => row142_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_chunks_eq : row142_layer001_chunks.flatten = row142_layer001_intervals := by
  rfl

theorem row142_layer001_pairs : pairCoverCheck row142_layer001_intervals row142_bounds = true := by
  apply pairCoverCheck_of_chunks row142_layer001_chunks_eq
  intro block hblock
  simp only [row142_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row142_layer001_pairs000
  · exact row142_layer001_pairs001
  · exact row142_layer001_pairs002
  · exact row142_layer001_pairs003
  · exact row142_layer001_pairs004
  · exact row142_layer001_pairs005
  · exact row142_layer001_pairs006
  · exact row142_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer001_checked :
    coverLayerCheck row142.height row142.goods { lower := 40044, upper := 80088, M := 14 } = true := by
  exact coverLayerCheck_of_parts row142_layer001_arithmetic row142_layer001_enumeration row142_bounds_eq row142_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row142_layer002_intervals : List ColouredInterval :=
  [(2, 81920, 82061), (2, 98304, 98445), (2, 131072, 131213), (2, 131072, 131213), (2, 131072, 131213), (3, 98415, 98556), (3, 118098, 118239), (3, 137781, 137922), (3, 157464, 157605), (3, 118098, 118239), (5, 93750, 93891), (5, 109375, 109516), (5, 125000, 125141), (5, 140625, 140766), (5, 156250, 156391), (5, 156250, 156391), (7, 84035, 84176), (7, 100842, 100983), (7, 117649, 117790), (7, 134456, 134597), (7, 151263, 151404), (7, 117649, 117790), (11, 87846, 87987), (11, 102487, 102628), (11, 117128, 117269), (11, 131769, 131910), (11, 146410, 146551), (13, 85683, 85824), (13, 114244, 114385), (13, 142805, 142946), (17, 83521, 83662), (19, 130321, 130462), (23, 85169, 85310), (23, 97336, 97477), (23, 109503, 109644), (23, 121670, 121811), (29, 97556, 97697), (29, 121945, 122086), (29, 146334, 146475), (31, 89373, 89514), (31, 119164, 119305), (31, 148955, 149096), (37, 101306, 101447), (37, 151959, 152100), (41, 137842, 137983), (43, 159014, 159155), (47, 103823, 103964), (53, 148877, 149018), (97, 84681, 84822), (97, 94090, 94231), (101, 81608, 81749), (101, 91809, 91950), (101, 102010, 102151), (103, 84872, 85013), (103, 95481, 95622), (103, 106090, 106231), (107, 80143, 80284), (107, 91592, 91733), (107, 103041, 103182), (107, 114490, 114631), (109, 83167, 83308), (109, 95048, 95189), (109, 106929, 107070), (109, 118810, 118951), (113, 89383, 89524), (113, 102152, 102293), (113, 114921, 115062), (113, 127690, 127831), (127, 80645, 80786), (127, 96774, 96915), (127, 112903, 113044), (127, 129032, 129173), (127, 145161, 145302), (131, 85805, 85946), (131, 102966, 103107), (131, 120127, 120268), (131, 137288, 137429), (131, 154449, 154590), (137, 93845, 93986), (137, 112614, 112755), (137, 131383, 131524), (137, 150152, 150293), (139, 96605, 96746), (139, 115926, 116067), (139, 135247, 135388), (139, 154568, 154709)]

def row142_layer002_block000 : List ColouredInterval :=
  [(2, 81920, 82061), (2, 98304, 98445), (2, 131072, 131213), (2, 131072, 131213), (2, 131072, 131213), (3, 98415, 98556), (3, 118098, 118239), (3, 137781, 137922), (3, 157464, 157605), (3, 118098, 118239), (5, 93750, 93891), (5, 109375, 109516), (5, 125000, 125141), (5, 140625, 140766), (5, 156250, 156391), (5, 156250, 156391)]

def row142_layer002_block001 : List ColouredInterval :=
  [(7, 84035, 84176), (7, 100842, 100983), (7, 117649, 117790), (7, 134456, 134597), (7, 151263, 151404), (7, 117649, 117790), (11, 87846, 87987), (11, 102487, 102628), (11, 117128, 117269), (11, 131769, 131910), (11, 146410, 146551), (13, 85683, 85824), (13, 114244, 114385), (13, 142805, 142946), (17, 83521, 83662), (19, 130321, 130462)]

def row142_layer002_block002 : List ColouredInterval :=
  [(23, 85169, 85310), (23, 97336, 97477), (23, 109503, 109644), (23, 121670, 121811), (29, 97556, 97697), (29, 121945, 122086), (29, 146334, 146475), (31, 89373, 89514), (31, 119164, 119305), (31, 148955, 149096), (37, 101306, 101447), (37, 151959, 152100), (41, 137842, 137983), (43, 159014, 159155), (47, 103823, 103964), (53, 148877, 149018)]

def row142_layer002_block003 : List ColouredInterval :=
  [(97, 84681, 84822), (97, 94090, 94231), (101, 81608, 81749), (101, 91809, 91950), (101, 102010, 102151), (103, 84872, 85013), (103, 95481, 95622), (103, 106090, 106231), (107, 80143, 80284), (107, 91592, 91733), (107, 103041, 103182), (107, 114490, 114631), (109, 83167, 83308), (109, 95048, 95189), (109, 106929, 107070), (109, 118810, 118951)]

def row142_layer002_block004 : List ColouredInterval :=
  [(113, 89383, 89524), (113, 102152, 102293), (113, 114921, 115062), (113, 127690, 127831), (127, 80645, 80786), (127, 96774, 96915), (127, 112903, 113044), (127, 129032, 129173), (127, 145161, 145302), (131, 85805, 85946), (131, 102966, 103107), (131, 120127, 120268), (131, 137288, 137429), (131, 154449, 154590), (137, 93845, 93986), (137, 112614, 112755)]

def row142_layer002_block005 : List ColouredInterval :=
  [(137, 131383, 131524), (137, 150152, 150293), (139, 96605, 96746), (139, 115926, 116067), (139, 135247, 135388), (139, 154568, 154709)]

def row142_layer002_chunks : List (List ColouredInterval) :=
  [row142_layer002_block000, row142_layer002_block001, row142_layer002_block002, row142_layer002_block003, row142_layer002_block004, row142_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_arithmetic : LayerArithmeticValid row142.height { lower := 80088, upper := 160176, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_enumeration :
    activePowerIntervalList 142 10 80088 160176 = row142_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_pairs000 :
    row142_layer002_block000.all (fun I => row142_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_pairs001 :
    row142_layer002_block001.all (fun I => row142_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_pairs002 :
    row142_layer002_block002.all (fun I => row142_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_pairs003 :
    row142_layer002_block003.all (fun I => row142_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_pairs004 :
    row142_layer002_block004.all (fun I => row142_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_pairs005 :
    row142_layer002_block005.all (fun I => row142_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row142_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_chunks_eq : row142_layer002_chunks.flatten = row142_layer002_intervals := by
  rfl

theorem row142_layer002_pairs : pairCoverCheck row142_layer002_intervals row142_bounds = true := by
  apply pairCoverCheck_of_chunks row142_layer002_chunks_eq
  intro block hblock
  simp only [row142_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row142_layer002_pairs000
  · exact row142_layer002_pairs001
  · exact row142_layer002_pairs002
  · exact row142_layer002_pairs003
  · exact row142_layer002_pairs004
  · exact row142_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer002_checked :
    coverLayerCheck row142.height row142.goods { lower := 80088, upper := 160176, M := 10 } = true := by
  exact coverLayerCheck_of_parts row142_layer002_arithmetic row142_layer002_enumeration row142_bounds_eq row142_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer003_checked :
    coverLayerCheck row142.height row142.goods { lower := 160176, upper := 320352, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer004_checked :
    coverLayerCheck row142.height row142.goods { lower := 320352, upper := 640704, M := 6 } = true := by
  decide +kernel

theorem row142_layer005_checked :
    coverLayerCheck row142.height row142.goods { lower := 640704, upper := 1281408, M := 5 } = true := by
  decide +kernel

theorem row142_layer006_checked :
    coverLayerCheck row142.height row142.goods { lower := 1281408, upper := 2562816, M := 4 } = true := by
  decide +kernel

theorem row142_layer007_checked :
    coverLayerCheck row142.height row142.goods { lower := 2562816, upper := 5125632, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer008_checked :
    coverLayerCheck row142.height row142.goods { lower := 5125632, upper := 10251264, M := 2 } = true := by
  decide +kernel

theorem row142_layer009_checked :
    coverLayerCheck row142.height row142.goods { lower := 10251264, upper := 20502528, M := 2 } = true := by
  decide +kernel

theorem row142_layer010_checked :
    coverLayerCheck row142.height row142.goods { lower := 20502528, upper := 41005056, M := 2 } = true := by
  decide +kernel

theorem row142_layer011_checked :
    coverLayerCheck row142.height row142.goods { lower := 41005056, upper := 82010112, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row142_layer012_checked :
    coverLayerCheck row142.height row142.goods { lower := 82010112, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row142_layer012_checked
