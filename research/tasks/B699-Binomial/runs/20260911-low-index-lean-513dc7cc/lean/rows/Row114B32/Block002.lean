import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row114B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer001_checked :
    coverLayerCheck row114.height row114.goods { lower := 25764, upper := 51528, M := 25 } = true := by
  exact coverLayerCheck_of_parts row114_layer001_arithmetic row114_layer001_enumeration row114_bounds_eq row114_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row114_layer002_intervals : List ColouredInterval :=
  [(2, 57344, 57457), (2, 65536, 65649), (2, 73728, 73841), (2, 81920, 82033), (2, 65536, 65649), (2, 81920, 82033), (2, 98304, 98417), (2, 65536, 65649), (2, 98304, 98417), (2, 65536, 65649), (3, 59049, 59162), (3, 78732, 78845), (3, 98415, 98528), (3, 59049, 59162), (5, 53125, 53238), (5, 56250, 56363), (5, 59375, 59488), (5, 62500, 62613), (5, 65625, 65738), (5, 62500, 62613), (5, 78125, 78238), (5, 93750, 93863), (5, 78125, 78238), (7, 67228, 67341), (7, 84035, 84148), (7, 100842, 100955), (11, 58564, 58677), (11, 73205, 73318), (11, 87846, 87959), (11, 102487, 102600), (13, 57122, 57235), (13, 85683, 85796), (17, 54043, 54156), (17, 58956, 59069), (17, 63869, 63982), (17, 68782, 68895), (17, 73695, 73808), (17, 78608, 78721), (17, 83521, 83634), (17, 88434, 88547), (17, 93347, 93460), (17, 98260, 98373), (17, 83521, 83634), (23, 60835, 60948), (23, 73002, 73115), (23, 85169, 85282), (23, 97336, 97449), (29, 73167, 73280), (29, 97556, 97669), (31, 59582, 59695), (31, 89373, 89486), (37, 101306, 101419), (41, 68921, 69034), (43, 79507, 79620), (53, 53371, 53484), (53, 56180, 56293), (53, 58989, 59102), (59, 52215, 52328), (59, 55696, 55809), (59, 59177, 59290), (59, 62658, 62771), (59, 66139, 66252), (59, 69620, 69733), (59, 73101, 73214), (61, 52094, 52207), (61, 55815, 55928), (61, 59536, 59649), (61, 63257, 63370), (61, 66978, 67091), (61, 70699, 70812), (61, 74420, 74533), (61, 78141, 78254), (67, 53868, 53981), (67, 58357, 58470), (67, 62846, 62959), (67, 67335, 67448), (67, 71824, 71937), (67, 76313, 76426), (67, 80802, 80915), (67, 85291, 85404), (67, 89780, 89893), (67, 94269, 94382), (71, 55451, 55564), (71, 60492, 60605), (71, 65533, 65646), (71, 70574, 70687), (71, 75615, 75728), (71, 80656, 80769), (71, 85697, 85810), (71, 90738, 90851), (71, 95779, 95892), (71, 100820, 100933), (73, 53290, 53403), (73, 58619, 58732), (73, 63948, 64061), (73, 69277, 69390), (73, 74606, 74719), (73, 79935, 80048), (73, 85264, 85377), (73, 90593, 90706), (73, 95922, 96035), (73, 101251, 101364), (79, 56169, 56282), (79, 62410, 62523), (79, 68651, 68764), (79, 74892, 75005), (79, 81133, 81246), (79, 87374, 87487), (79, 93615, 93728), (79, 99856, 99969), (83, 55112, 55225), (83, 62001, 62114), (83, 68890, 69003), (83, 75779, 75892), (83, 82668, 82781), (83, 89557, 89670), (83, 96446, 96559), (89, 55447, 55560), (89, 63368, 63481), (89, 71289, 71402), (89, 79210, 79323), (89, 87131, 87244), (89, 95052, 95165), (89, 102973, 103055), (97, 56454, 56567), (97, 65863, 65976), (97, 75272, 75385), (97, 84681, 84794), (97, 94090, 94203), (101, 61206, 61319), (101, 71407, 71520), (101, 81608, 81721), (101, 91809, 91922), (101, 102010, 102123), (103, 53045, 53158), (103, 63654, 63767), (103, 74263, 74376), (103, 84872, 84985), (103, 95481, 95594), (107, 57245, 57358), (107, 68694, 68807), (107, 80143, 80256), (107, 91592, 91705), (107, 103041, 103055), (109, 59405, 59518), (109, 71286, 71399), (109, 83167, 83280), (109, 95048, 95161), (113, 63845, 63958), (113, 76614, 76727), (113, 89383, 89496), (113, 102152, 102265)]

def row114_layer002_block000 : List ColouredInterval :=
  [(2, 57344, 57457), (2, 65536, 65649), (2, 73728, 73841), (2, 81920, 82033), (2, 65536, 65649), (2, 81920, 82033), (2, 98304, 98417), (2, 65536, 65649), (2, 98304, 98417), (2, 65536, 65649), (3, 59049, 59162), (3, 78732, 78845), (3, 98415, 98528)]

def row114_layer002_block001 : List ColouredInterval :=
  [(3, 59049, 59162), (5, 53125, 53238), (5, 56250, 56363), (5, 59375, 59488), (5, 62500, 62613), (5, 65625, 65738), (5, 62500, 62613), (5, 78125, 78238), (5, 93750, 93863), (5, 78125, 78238), (7, 67228, 67341), (7, 84035, 84148), (7, 100842, 100955)]

def row114_layer002_block002 : List ColouredInterval :=
  [(11, 58564, 58677), (11, 73205, 73318), (11, 87846, 87959), (11, 102487, 102600), (13, 57122, 57235), (13, 85683, 85796), (17, 54043, 54156), (17, 58956, 59069), (17, 63869, 63982), (17, 68782, 68895), (17, 73695, 73808), (17, 78608, 78721), (17, 83521, 83634)]

def row114_layer002_block003 : List ColouredInterval :=
  [(17, 88434, 88547), (17, 93347, 93460), (17, 98260, 98373), (17, 83521, 83634), (23, 60835, 60948), (23, 73002, 73115), (23, 85169, 85282), (23, 97336, 97449), (29, 73167, 73280), (29, 97556, 97669), (31, 59582, 59695), (31, 89373, 89486), (37, 101306, 101419)]

def row114_layer002_block004 : List ColouredInterval :=
  [(41, 68921, 69034), (43, 79507, 79620), (53, 53371, 53484), (53, 56180, 56293), (53, 58989, 59102), (59, 52215, 52328), (59, 55696, 55809), (59, 59177, 59290), (59, 62658, 62771), (59, 66139, 66252), (59, 69620, 69733), (59, 73101, 73214), (61, 52094, 52207)]

def row114_layer002_block005 : List ColouredInterval :=
  [(61, 55815, 55928), (61, 59536, 59649), (61, 63257, 63370), (61, 66978, 67091), (61, 70699, 70812), (61, 74420, 74533), (61, 78141, 78254), (67, 53868, 53981), (67, 58357, 58470), (67, 62846, 62959), (67, 67335, 67448), (67, 71824, 71937), (67, 76313, 76426)]

def row114_layer002_block006 : List ColouredInterval :=
  [(67, 80802, 80915), (67, 85291, 85404), (67, 89780, 89893), (67, 94269, 94382), (71, 55451, 55564), (71, 60492, 60605), (71, 65533, 65646), (71, 70574, 70687), (71, 75615, 75728), (71, 80656, 80769), (71, 85697, 85810), (71, 90738, 90851), (71, 95779, 95892)]

def row114_layer002_block007 : List ColouredInterval :=
  [(71, 100820, 100933), (73, 53290, 53403), (73, 58619, 58732), (73, 63948, 64061), (73, 69277, 69390), (73, 74606, 74719), (73, 79935, 80048), (73, 85264, 85377), (73, 90593, 90706), (73, 95922, 96035), (73, 101251, 101364), (79, 56169, 56282), (79, 62410, 62523)]

def row114_layer002_block008 : List ColouredInterval :=
  [(79, 68651, 68764), (79, 74892, 75005), (79, 81133, 81246), (79, 87374, 87487), (79, 93615, 93728), (79, 99856, 99969), (83, 55112, 55225), (83, 62001, 62114), (83, 68890, 69003), (83, 75779, 75892), (83, 82668, 82781), (83, 89557, 89670), (83, 96446, 96559)]

def row114_layer002_block009 : List ColouredInterval :=
  [(89, 55447, 55560), (89, 63368, 63481), (89, 71289, 71402), (89, 79210, 79323), (89, 87131, 87244), (89, 95052, 95165), (89, 102973, 103055), (97, 56454, 56567), (97, 65863, 65976), (97, 75272, 75385), (97, 84681, 84794), (97, 94090, 94203), (101, 61206, 61319)]

def row114_layer002_block010 : List ColouredInterval :=
  [(101, 71407, 71520), (101, 81608, 81721), (101, 91809, 91922), (101, 102010, 102123), (103, 53045, 53158), (103, 63654, 63767), (103, 74263, 74376), (103, 84872, 84985), (103, 95481, 95594), (107, 57245, 57358), (107, 68694, 68807), (107, 80143, 80256), (107, 91592, 91705)]

def row114_layer002_block011 : List ColouredInterval :=
  [(107, 103041, 103055), (109, 59405, 59518), (109, 71286, 71399), (109, 83167, 83280), (109, 95048, 95161), (113, 63845, 63958), (113, 76614, 76727), (113, 89383, 89496), (113, 102152, 102265)]

def row114_layer002_chunks : List (List ColouredInterval) :=
  [row114_layer002_block000, row114_layer002_block001, row114_layer002_block002, row114_layer002_block003, row114_layer002_block004, row114_layer002_block005, row114_layer002_block006, row114_layer002_block007, row114_layer002_block008, row114_layer002_block009, row114_layer002_block010, row114_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_arithmetic : LayerArithmeticValid row114.height { lower := 51528, upper := 103056, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_enumeration :
    activePowerIntervalList 114 21 51528 103056 = row114_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs000 :
    row114_layer002_block000.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs001 :
    row114_layer002_block001.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs002 :
    row114_layer002_block002.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs003 :
    row114_layer002_block003.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs004 :
    row114_layer002_block004.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs005 :
    row114_layer002_block005.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs006 :
    row114_layer002_block006.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs007 :
    row114_layer002_block007.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs008 :
    row114_layer002_block008.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs009 :
    row114_layer002_block009.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs010 :
    row114_layer002_block010.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_pairs011 :
    row114_layer002_block011.all (fun I => row114_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_chunks_eq : row114_layer002_chunks.flatten = row114_layer002_intervals := by
  rfl

theorem row114_layer002_pairs : pairCoverCheck row114_layer002_intervals row114_bounds = true := by
  apply pairCoverCheck_of_chunks row114_layer002_chunks_eq
  intro block hblock
  simp only [row114_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row114_layer002_pairs000
  · exact row114_layer002_pairs001
  · exact row114_layer002_pairs002
  · exact row114_layer002_pairs003
  · exact row114_layer002_pairs004
  · exact row114_layer002_pairs005
  · exact row114_layer002_pairs006
  · exact row114_layer002_pairs007
  · exact row114_layer002_pairs008
  · exact row114_layer002_pairs009
  · exact row114_layer002_pairs010
  · exact row114_layer002_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer002_checked :
    coverLayerCheck row114.height row114.goods { lower := 51528, upper := 103056, M := 21 } = true := by
  exact coverLayerCheck_of_parts row114_layer002_arithmetic row114_layer002_enumeration row114_bounds_eq row114_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row114_layer003_intervals : List ColouredInterval :=
  [(2, 114688, 114801), (2, 131072, 131185), (2, 147456, 147569), (2, 131072, 131185), (2, 163840, 163953), (2, 196608, 196721), (2, 131072, 131185), (2, 196608, 196721), (2, 131072, 131185), (3, 118098, 118211), (3, 118098, 118211), (3, 177147, 177260), (3, 177147, 177260), (5, 109375, 109488), (5, 125000, 125113), (5, 140625, 140738), (5, 156250, 156363), (5, 171875, 171988), (5, 187500, 187613), (5, 203125, 203238), (5, 156250, 156363), (7, 117649, 117762), (7, 134456, 134569), (7, 151263, 151376), (7, 168070, 168183), (7, 184877, 184990), (7, 201684, 201797), (7, 117649, 117762), (11, 117128, 117241), (11, 131769, 131882), (11, 146410, 146523), (11, 161051, 161164), (11, 175692, 175805), (11, 190333, 190446), (11, 204974, 205087), (11, 161051, 161164), (13, 114244, 114357), (13, 142805, 142918), (13, 171366, 171479), (13, 199927, 200040), (17, 167042, 167155), (23, 109503, 109616), (23, 121670, 121783), (23, 133837, 133950), (23, 146004, 146117), (23, 158171, 158284), (23, 170338, 170451), (23, 182505, 182618), (23, 194672, 194785), (29, 121945, 122058), (29, 146334, 146447), (29, 170723, 170836), (29, 195112, 195225), (31, 119164, 119277), (31, 148955, 149068), (31, 178746, 178859), (37, 151959, 152072), (37, 202612, 202725), (41, 137842, 137955), (43, 159014, 159127), (47, 103823, 103936), (53, 148877, 148990), (59, 205379, 205492), (79, 106097, 106210), (79, 112338, 112451), (83, 103335, 103448), (83, 110224, 110337), (83, 117113, 117226), (83, 124002, 124115), (89, 103056, 103086), (89, 110894, 111007), (89, 118815, 118928), (89, 126736, 126849), (89, 134657, 134770), (89, 142578, 142691), (97, 103499, 103612), (97, 112908, 113021), (97, 122317, 122430), (97, 131726, 131839), (97, 141135, 141248), (97, 150544, 150657), (97, 159953, 160066), (97, 169362, 169475), (101, 112211, 112324), (101, 122412, 122525), (101, 132613, 132726), (101, 142814, 142927), (101, 153015, 153128), (101, 163216, 163329), (101, 173417, 173530), (101, 183618, 183731), (103, 106090, 106203), (103, 116699, 116812), (103, 127308, 127421), (103, 137917, 138030), (103, 148526, 148639), (103, 159135, 159248), (103, 169744, 169857), (103, 180353, 180466), (103, 190962, 191075), (107, 103056, 103154), (107, 114490, 114603), (107, 125939, 126052), (107, 137388, 137501), (107, 148837, 148950), (107, 160286, 160399), (107, 171735, 171848), (107, 183184, 183297), (107, 194633, 194746), (107, 206082, 206111), (109, 106929, 107042), (109, 118810, 118923), (109, 130691, 130804), (109, 142572, 142685), (109, 154453, 154566), (109, 166334, 166447), (109, 178215, 178328), (109, 190096, 190209), (109, 201977, 202090), (113, 114921, 115034), (113, 127690, 127803), (113, 140459, 140572), (113, 153228, 153341), (113, 165997, 166110), (113, 178766, 178879), (113, 191535, 191648), (113, 204304, 204417)]

def row114_layer003_block000 : List ColouredInterval :=
  [(2, 114688, 114801), (2, 131072, 131185), (2, 147456, 147569), (2, 131072, 131185), (2, 163840, 163953), (2, 196608, 196721), (2, 131072, 131185), (2, 196608, 196721), (2, 131072, 131185), (3, 118098, 118211), (3, 118098, 118211), (3, 177147, 177260), (3, 177147, 177260), (5, 109375, 109488), (5, 125000, 125113), (5, 140625, 140738)]

def row114_layer003_block001 : List ColouredInterval :=
  [(5, 156250, 156363), (5, 171875, 171988), (5, 187500, 187613), (5, 203125, 203238), (5, 156250, 156363), (7, 117649, 117762), (7, 134456, 134569), (7, 151263, 151376), (7, 168070, 168183), (7, 184877, 184990), (7, 201684, 201797), (7, 117649, 117762), (11, 117128, 117241), (11, 131769, 131882), (11, 146410, 146523), (11, 161051, 161164)]

def row114_layer003_block002 : List ColouredInterval :=
  [(11, 175692, 175805), (11, 190333, 190446), (11, 204974, 205087), (11, 161051, 161164), (13, 114244, 114357), (13, 142805, 142918), (13, 171366, 171479), (13, 199927, 200040), (17, 167042, 167155), (23, 109503, 109616), (23, 121670, 121783), (23, 133837, 133950), (23, 146004, 146117), (23, 158171, 158284), (23, 170338, 170451), (23, 182505, 182618)]

def row114_layer003_block003 : List ColouredInterval :=
  [(23, 194672, 194785), (29, 121945, 122058), (29, 146334, 146447), (29, 170723, 170836), (29, 195112, 195225), (31, 119164, 119277), (31, 148955, 149068), (31, 178746, 178859), (37, 151959, 152072), (37, 202612, 202725), (41, 137842, 137955), (43, 159014, 159127), (47, 103823, 103936), (53, 148877, 148990), (59, 205379, 205492), (79, 106097, 106210)]

def row114_layer003_block004 : List ColouredInterval :=
  [(79, 112338, 112451), (83, 103335, 103448), (83, 110224, 110337), (83, 117113, 117226), (83, 124002, 124115), (89, 103056, 103086), (89, 110894, 111007), (89, 118815, 118928), (89, 126736, 126849), (89, 134657, 134770), (89, 142578, 142691), (97, 103499, 103612), (97, 112908, 113021), (97, 122317, 122430), (97, 131726, 131839), (97, 141135, 141248)]

def row114_layer003_block005 : List ColouredInterval :=
  [(97, 150544, 150657), (97, 159953, 160066), (97, 169362, 169475), (101, 112211, 112324), (101, 122412, 122525), (101, 132613, 132726), (101, 142814, 142927), (101, 153015, 153128), (101, 163216, 163329), (101, 173417, 173530), (101, 183618, 183731), (103, 106090, 106203), (103, 116699, 116812), (103, 127308, 127421), (103, 137917, 138030), (103, 148526, 148639)]

def row114_layer003_block006 : List ColouredInterval :=
  [(103, 159135, 159248), (103, 169744, 169857), (103, 180353, 180466), (103, 190962, 191075), (107, 103056, 103154), (107, 114490, 114603), (107, 125939, 126052), (107, 137388, 137501), (107, 148837, 148950), (107, 160286, 160399), (107, 171735, 171848), (107, 183184, 183297), (107, 194633, 194746), (107, 206082, 206111), (109, 106929, 107042), (109, 118810, 118923)]

def row114_layer003_block007 : List ColouredInterval :=
  [(109, 130691, 130804), (109, 142572, 142685), (109, 154453, 154566), (109, 166334, 166447), (109, 178215, 178328), (109, 190096, 190209), (109, 201977, 202090), (113, 114921, 115034), (113, 127690, 127803), (113, 140459, 140572), (113, 153228, 153341), (113, 165997, 166110), (113, 178766, 178879), (113, 191535, 191648), (113, 204304, 204417)]

def row114_layer003_chunks : List (List ColouredInterval) :=
  [row114_layer003_block000, row114_layer003_block001, row114_layer003_block002, row114_layer003_block003, row114_layer003_block004, row114_layer003_block005, row114_layer003_block006, row114_layer003_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_arithmetic : LayerArithmeticValid row114.height { lower := 103056, upper := 206112, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_enumeration :
    activePowerIntervalList 114 18 103056 206112 = row114_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs000 :
    row114_layer003_block000.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs001 :
    row114_layer003_block001.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs002 :
    row114_layer003_block002.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs003 :
    row114_layer003_block003.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs004 :
    row114_layer003_block004.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs005 :
    row114_layer003_block005.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs006 :
    row114_layer003_block006.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_pairs007 :
    row114_layer003_block007.all (fun I => row114_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row114_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_chunks_eq : row114_layer003_chunks.flatten = row114_layer003_intervals := by
  rfl

theorem row114_layer003_pairs : pairCoverCheck row114_layer003_intervals row114_bounds = true := by
  apply pairCoverCheck_of_chunks row114_layer003_chunks_eq
  intro block hblock
  simp only [row114_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row114_layer003_pairs000
  · exact row114_layer003_pairs001
  · exact row114_layer003_pairs002
  · exact row114_layer003_pairs003
  · exact row114_layer003_pairs004
  · exact row114_layer003_pairs005
  · exact row114_layer003_pairs006
  · exact row114_layer003_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row114_layer003_checked :
    coverLayerCheck row114.height row114.goods { lower := 103056, upper := 206112, M := 18 } = true := by
  exact coverLayerCheck_of_parts row114_layer003_arithmetic row114_layer003_enumeration row114_bounds_eq row114_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row114_layer003_checked
