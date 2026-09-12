import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row133B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_pairs009 :
    row133_layer000_block009.all (fun I => row133_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_chunks_eq : row133_layer000_chunks.flatten = row133_layer000_intervals := by
  rfl

theorem row133_layer000_pairs : pairCoverCheck row133_layer000_intervals row133_bounds = true := by
  apply pairCoverCheck_of_chunks row133_layer000_chunks_eq
  intro block hblock
  simp only [row133_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row133_layer000_pairs000
  · exact row133_layer000_pairs001
  · exact row133_layer000_pairs002
  · exact row133_layer000_pairs003
  · exact row133_layer000_pairs004
  · exact row133_layer000_pairs005
  · exact row133_layer000_pairs006
  · exact row133_layer000_pairs007
  · exact row133_layer000_pairs008
  · exact row133_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer000_checked :
    coverLayerCheck row133.height row133.goods { lower := 17556, upper := 35112, M := 18 } = true := by
  exact coverLayerCheck_of_parts row133_layer000_arithmetic row133_layer000_enumeration row133_bounds_eq row133_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row133_layer001_intervals : List ColouredInterval :=
  [(2, 36864, 36996), (2, 40960, 41092), (2, 45056, 45188), (2, 49152, 49284), (2, 53248, 53380), (2, 57344, 57476), (2, 40960, 41092), (2, 49152, 49284), (2, 57344, 57476), (2, 65536, 65668), (2, 49152, 49284), (2, 65536, 65668), (2, 65536, 65668), (2, 65536, 65668), (3, 39366, 39498), (3, 45927, 46059), (3, 52488, 52620), (3, 59049, 59181), (3, 65610, 65742), (3, 39366, 39498), (3, 59049, 59181), (3, 59049, 59181), (5, 37500, 37632), (5, 40625, 40757), (5, 43750, 43882), (5, 46875, 47007), (5, 62500, 62632), (11, 43923, 44055), (11, 58564, 58696), (13, 57122, 57254), (17, 39304, 39436), (17, 44217, 44349), (17, 49130, 49262), (17, 54043, 54175), (17, 58956, 59088), (17, 63869, 64001), (17, 68782, 68914), (23, 36501, 36633), (23, 48668, 48800), (23, 60835, 60967), (29, 48778, 48910), (31, 59582, 59714), (37, 50653, 50785), (41, 68921, 69053), (53, 36517, 36649), (53, 39326, 39458), (59, 38291, 38423), (59, 41772, 41904), (59, 45253, 45385), (59, 48734, 48866), (61, 37210, 37342), (61, 40931, 41063), (61, 44652, 44784), (61, 48373, 48505), (61, 52094, 52226), (67, 35912, 36044), (67, 40401, 40533), (67, 44890, 45022), (67, 49379, 49511), (67, 53868, 54000), (67, 58357, 58489), (67, 62846, 62978), (71, 35287, 35419), (71, 40328, 40460), (71, 45369, 45501), (71, 50410, 50542), (71, 55451, 55583), (71, 60492, 60624), (71, 65533, 65665), (73, 37303, 37435), (73, 42632, 42764), (73, 47961, 48093), (73, 53290, 53422), (73, 58619, 58751), (73, 63948, 64080), (73, 69277, 69409), (79, 37446, 37578), (79, 43687, 43819), (79, 49928, 50060), (79, 56169, 56301), (79, 62410, 62542), (79, 68651, 68783), (83, 41334, 41466), (83, 48223, 48355), (83, 55112, 55244), (83, 62001, 62133), (83, 68890, 69022), (89, 39605, 39737), (89, 47526, 47658), (89, 55447, 55579), (89, 63368, 63500), (97, 37636, 37768), (97, 47045, 47177), (97, 56454, 56586), (97, 65863, 65995), (101, 40804, 40936), (101, 51005, 51137), (101, 61206, 61338), (103, 42436, 42568), (103, 53045, 53177), (103, 63654, 63786), (107, 45796, 45928), (107, 57245, 57377), (107, 68694, 68826), (109, 35643, 35775), (109, 47524, 47656), (109, 59405, 59537), (113, 38307, 38439), (113, 51076, 51208), (113, 63845, 63977), (127, 48387, 48519), (127, 64516, 64648), (131, 51483, 51615), (131, 68644, 68776)]

def row133_layer001_block000 : List ColouredInterval :=
  [(2, 36864, 36996), (2, 40960, 41092), (2, 45056, 45188), (2, 49152, 49284), (2, 53248, 53380), (2, 57344, 57476), (2, 40960, 41092), (2, 49152, 49284), (2, 57344, 57476), (2, 65536, 65668), (2, 49152, 49284), (2, 65536, 65668), (2, 65536, 65668), (2, 65536, 65668), (3, 39366, 39498), (3, 45927, 46059)]

def row133_layer001_block001 : List ColouredInterval :=
  [(3, 52488, 52620), (3, 59049, 59181), (3, 65610, 65742), (3, 39366, 39498), (3, 59049, 59181), (3, 59049, 59181), (5, 37500, 37632), (5, 40625, 40757), (5, 43750, 43882), (5, 46875, 47007), (5, 62500, 62632), (11, 43923, 44055), (11, 58564, 58696), (13, 57122, 57254), (17, 39304, 39436), (17, 44217, 44349)]

def row133_layer001_block002 : List ColouredInterval :=
  [(17, 49130, 49262), (17, 54043, 54175), (17, 58956, 59088), (17, 63869, 64001), (17, 68782, 68914), (23, 36501, 36633), (23, 48668, 48800), (23, 60835, 60967), (29, 48778, 48910), (31, 59582, 59714), (37, 50653, 50785), (41, 68921, 69053), (53, 36517, 36649), (53, 39326, 39458), (59, 38291, 38423), (59, 41772, 41904)]

def row133_layer001_block003 : List ColouredInterval :=
  [(59, 45253, 45385), (59, 48734, 48866), (61, 37210, 37342), (61, 40931, 41063), (61, 44652, 44784), (61, 48373, 48505), (61, 52094, 52226), (67, 35912, 36044), (67, 40401, 40533), (67, 44890, 45022), (67, 49379, 49511), (67, 53868, 54000), (67, 58357, 58489), (67, 62846, 62978), (71, 35287, 35419), (71, 40328, 40460)]

def row133_layer001_block004 : List ColouredInterval :=
  [(71, 45369, 45501), (71, 50410, 50542), (71, 55451, 55583), (71, 60492, 60624), (71, 65533, 65665), (73, 37303, 37435), (73, 42632, 42764), (73, 47961, 48093), (73, 53290, 53422), (73, 58619, 58751), (73, 63948, 64080), (73, 69277, 69409), (79, 37446, 37578), (79, 43687, 43819), (79, 49928, 50060), (79, 56169, 56301)]

def row133_layer001_block005 : List ColouredInterval :=
  [(79, 62410, 62542), (79, 68651, 68783), (83, 41334, 41466), (83, 48223, 48355), (83, 55112, 55244), (83, 62001, 62133), (83, 68890, 69022), (89, 39605, 39737), (89, 47526, 47658), (89, 55447, 55579), (89, 63368, 63500), (97, 37636, 37768), (97, 47045, 47177), (97, 56454, 56586), (97, 65863, 65995), (101, 40804, 40936)]

def row133_layer001_block006 : List ColouredInterval :=
  [(101, 51005, 51137), (101, 61206, 61338), (103, 42436, 42568), (103, 53045, 53177), (103, 63654, 63786), (107, 45796, 45928), (107, 57245, 57377), (107, 68694, 68826), (109, 35643, 35775), (109, 47524, 47656), (109, 59405, 59537), (113, 38307, 38439), (113, 51076, 51208), (113, 63845, 63977), (127, 48387, 48519), (127, 64516, 64648)]

def row133_layer001_block007 : List ColouredInterval :=
  [(131, 51483, 51615), (131, 68644, 68776)]

def row133_layer001_chunks : List (List ColouredInterval) :=
  [row133_layer001_block000, row133_layer001_block001, row133_layer001_block002, row133_layer001_block003, row133_layer001_block004, row133_layer001_block005, row133_layer001_block006, row133_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_arithmetic : LayerArithmeticValid row133.height { lower := 35112, upper := 70224, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_enumeration :
    activePowerIntervalList 133 14 35112 70224 = row133_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs000 :
    row133_layer001_block000.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs001 :
    row133_layer001_block001.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs002 :
    row133_layer001_block002.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs003 :
    row133_layer001_block003.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs004 :
    row133_layer001_block004.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs005 :
    row133_layer001_block005.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs006 :
    row133_layer001_block006.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_pairs007 :
    row133_layer001_block007.all (fun I => row133_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_chunks_eq : row133_layer001_chunks.flatten = row133_layer001_intervals := by
  rfl

theorem row133_layer001_pairs : pairCoverCheck row133_layer001_intervals row133_bounds = true := by
  apply pairCoverCheck_of_chunks row133_layer001_chunks_eq
  intro block hblock
  simp only [row133_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row133_layer001_pairs000
  · exact row133_layer001_pairs001
  · exact row133_layer001_pairs002
  · exact row133_layer001_pairs003
  · exact row133_layer001_pairs004
  · exact row133_layer001_pairs005
  · exact row133_layer001_pairs006
  · exact row133_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer001_checked :
    coverLayerCheck row133.height row133.goods { lower := 35112, upper := 70224, M := 14 } = true := by
  exact coverLayerCheck_of_parts row133_layer001_arithmetic row133_layer001_enumeration row133_bounds_eq row133_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row133_layer002_intervals : List ColouredInterval :=
  [(2, 73728, 73860), (2, 81920, 82052), (2, 90112, 90244), (2, 81920, 82052), (2, 98304, 98436), (2, 114688, 114820), (2, 131072, 131204), (2, 98304, 98436), (2, 131072, 131204), (2, 131072, 131204), (2, 131072, 131204), (3, 72171, 72303), (3, 78732, 78864), (3, 98415, 98547), (3, 118098, 118230), (3, 137781, 137913), (3, 118098, 118230), (5, 78125, 78257), (5, 93750, 93882), (5, 109375, 109507), (5, 125000, 125132), (5, 78125, 78257), (7, 117649, 117781), (11, 73205, 73337), (11, 87846, 87978), (11, 102487, 102619), (11, 117128, 117260), (11, 131769, 131901), (13, 85683, 85815), (13, 114244, 114376), (17, 83521, 83653), (23, 73002, 73134), (23, 85169, 85301), (23, 97336, 97468), (23, 109503, 109635), (23, 121670, 121802), (23, 133837, 133969), (29, 73167, 73299), (29, 97556, 97688), (29, 121945, 122077), (31, 89373, 89505), (31, 119164, 119296), (37, 101306, 101438), (41, 137842, 137974), (43, 79507, 79639), (47, 103823, 103955), (83, 75779, 75911), (89, 71289, 71421), (89, 79210, 79342), (89, 87131, 87263), (97, 75272, 75404), (97, 84681, 84813), (97, 94090, 94222), (97, 103499, 103631), (101, 71407, 71539), (101, 81608, 81740), (101, 91809, 91941), (101, 102010, 102142), (101, 112211, 112343), (103, 74263, 74395), (103, 84872, 85004), (103, 95481, 95613), (103, 106090, 106222), (103, 116699, 116831), (107, 80143, 80275), (107, 91592, 91724), (107, 103041, 103173), (107, 114490, 114622), (107, 125939, 126071), (109, 71286, 71418), (109, 83167, 83299), (109, 95048, 95180), (109, 106929, 107061), (109, 118810, 118942), (109, 130691, 130823), (113, 76614, 76746), (113, 89383, 89515), (113, 102152, 102284), (113, 114921, 115053), (113, 127690, 127822), (127, 80645, 80777), (127, 96774, 96906), (127, 112903, 113035), (127, 129032, 129164), (131, 85805, 85937), (131, 102966, 103098), (131, 120127, 120259), (131, 137288, 137420)]

def row133_layer002_block000 : List ColouredInterval :=
  [(2, 73728, 73860), (2, 81920, 82052), (2, 90112, 90244), (2, 81920, 82052), (2, 98304, 98436), (2, 114688, 114820), (2, 131072, 131204), (2, 98304, 98436), (2, 131072, 131204), (2, 131072, 131204), (2, 131072, 131204), (3, 72171, 72303), (3, 78732, 78864), (3, 98415, 98547), (3, 118098, 118230), (3, 137781, 137913)]

def row133_layer002_block001 : List ColouredInterval :=
  [(3, 118098, 118230), (5, 78125, 78257), (5, 93750, 93882), (5, 109375, 109507), (5, 125000, 125132), (5, 78125, 78257), (7, 117649, 117781), (11, 73205, 73337), (11, 87846, 87978), (11, 102487, 102619), (11, 117128, 117260), (11, 131769, 131901), (13, 85683, 85815), (13, 114244, 114376), (17, 83521, 83653), (23, 73002, 73134)]

def row133_layer002_block002 : List ColouredInterval :=
  [(23, 85169, 85301), (23, 97336, 97468), (23, 109503, 109635), (23, 121670, 121802), (23, 133837, 133969), (29, 73167, 73299), (29, 97556, 97688), (29, 121945, 122077), (31, 89373, 89505), (31, 119164, 119296), (37, 101306, 101438), (41, 137842, 137974), (43, 79507, 79639), (47, 103823, 103955), (83, 75779, 75911), (89, 71289, 71421)]

def row133_layer002_block003 : List ColouredInterval :=
  [(89, 79210, 79342), (89, 87131, 87263), (97, 75272, 75404), (97, 84681, 84813), (97, 94090, 94222), (97, 103499, 103631), (101, 71407, 71539), (101, 81608, 81740), (101, 91809, 91941), (101, 102010, 102142), (101, 112211, 112343), (103, 74263, 74395), (103, 84872, 85004), (103, 95481, 95613), (103, 106090, 106222), (103, 116699, 116831)]

def row133_layer002_block004 : List ColouredInterval :=
  [(107, 80143, 80275), (107, 91592, 91724), (107, 103041, 103173), (107, 114490, 114622), (107, 125939, 126071), (109, 71286, 71418), (109, 83167, 83299), (109, 95048, 95180), (109, 106929, 107061), (109, 118810, 118942), (109, 130691, 130823), (113, 76614, 76746), (113, 89383, 89515), (113, 102152, 102284), (113, 114921, 115053), (113, 127690, 127822)]

def row133_layer002_block005 : List ColouredInterval :=
  [(127, 80645, 80777), (127, 96774, 96906), (127, 112903, 113035), (127, 129032, 129164), (131, 85805, 85937), (131, 102966, 103098), (131, 120127, 120259), (131, 137288, 137420)]

def row133_layer002_chunks : List (List ColouredInterval) :=
  [row133_layer002_block000, row133_layer002_block001, row133_layer002_block002, row133_layer002_block003, row133_layer002_block004, row133_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_arithmetic : LayerArithmeticValid row133.height { lower := 70224, upper := 140448, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_enumeration :
    activePowerIntervalList 133 11 70224 140448 = row133_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_pairs000 :
    row133_layer002_block000.all (fun I => row133_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_pairs001 :
    row133_layer002_block001.all (fun I => row133_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_pairs002 :
    row133_layer002_block002.all (fun I => row133_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_pairs003 :
    row133_layer002_block003.all (fun I => row133_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_pairs004 :
    row133_layer002_block004.all (fun I => row133_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_pairs005 :
    row133_layer002_block005.all (fun I => row133_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row133_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_chunks_eq : row133_layer002_chunks.flatten = row133_layer002_intervals := by
  rfl

theorem row133_layer002_pairs : pairCoverCheck row133_layer002_intervals row133_bounds = true := by
  apply pairCoverCheck_of_chunks row133_layer002_chunks_eq
  intro block hblock
  simp only [row133_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row133_layer002_pairs000
  · exact row133_layer002_pairs001
  · exact row133_layer002_pairs002
  · exact row133_layer002_pairs003
  · exact row133_layer002_pairs004
  · exact row133_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer002_checked :
    coverLayerCheck row133.height row133.goods { lower := 70224, upper := 140448, M := 11 } = true := by
  exact coverLayerCheck_of_parts row133_layer002_arithmetic row133_layer002_enumeration row133_bounds_eq row133_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer003_checked :
    coverLayerCheck row133.height row133.goods { lower := 140448, upper := 280896, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer004_checked :
    coverLayerCheck row133.height row133.goods { lower := 280896, upper := 561792, M := 6 } = true := by
  decide +kernel

theorem row133_layer005_checked :
    coverLayerCheck row133.height row133.goods { lower := 561792, upper := 1123584, M := 5 } = true := by
  decide +kernel

theorem row133_layer006_checked :
    coverLayerCheck row133.height row133.goods { lower := 1123584, upper := 2247168, M := 4 } = true := by
  decide +kernel

theorem row133_layer007_checked :
    coverLayerCheck row133.height row133.goods { lower := 2247168, upper := 4494336, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer008_checked :
    coverLayerCheck row133.height row133.goods { lower := 4494336, upper := 8988672, M := 3 } = true := by
  decide +kernel

theorem row133_layer009_checked :
    coverLayerCheck row133.height row133.goods { lower := 8988672, upper := 17977344, M := 2 } = true := by
  decide +kernel

theorem row133_layer010_checked :
    coverLayerCheck row133.height row133.goods { lower := 17977344, upper := 35954688, M := 2 } = true := by
  decide +kernel

theorem row133_layer011_checked :
    coverLayerCheck row133.height row133.goods { lower := 35954688, upper := 71909376, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layer012_checked :
    coverLayerCheck row133.height row133.goods { lower := 71909376, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row133_layers_checked :
    row133.layers.all (coverLayerCheck row133.height row133.goods) = true := by
  change row133_layers.all (coverLayerCheck row133.height row133.goods) = true
  simp only [row133_layers, List.all_cons, List.all_nil,
    row133_layer000_checked,
    row133_layer001_checked,
    row133_layer002_checked,
    row133_layer003_checked,
    row133_layer004_checked,
    row133_layer005_checked,
    row133_layer006_checked,
    row133_layer007_checked,
    row133_layer008_checked,
    row133_layer009_checked,
    row133_layer010_checked,
    row133_layer011_checked,
    row133_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row133_layers_checked
