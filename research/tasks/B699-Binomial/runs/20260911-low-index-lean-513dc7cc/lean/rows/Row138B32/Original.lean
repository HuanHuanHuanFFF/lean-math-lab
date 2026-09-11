import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row138B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer000_checked :
    coverLayerCheck row138.height row138.goods { lower := 18906, upper := 37812, M := 17 } = true := by
  exact coverLayerCheck_of_parts row138_layer000_arithmetic row138_layer000_enumeration row138_bounds_eq row138_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row138_layer001_intervals : List ColouredInterval :=
  [(2, 40960, 41097), (2, 49152, 49289), (2, 49152, 49289), (2, 65536, 65673), (2, 65536, 65673), (2, 65536, 65673), (3, 39366, 39503), (3, 59049, 59186), (3, 59049, 59186), (5, 40625, 40762), (5, 46875, 47012), (5, 62500, 62637), (7, 50421, 50558), (7, 67228, 67365), (11, 43923, 44060), (11, 58564, 58701), (11, 73205, 73342), (13, 57122, 57259), (17, 39304, 39441), (17, 44217, 44354), (17, 49130, 49267), (17, 54043, 54180), (17, 58956, 59093), (17, 63869, 64006), (19, 41154, 41291), (19, 48013, 48150), (19, 54872, 55009), (19, 61731, 61868), (19, 68590, 68727), (19, 75449, 75586), (29, 48778, 48915), (29, 73167, 73304), (31, 59582, 59719), (37, 50653, 50790), (41, 68921, 69058), (59, 38291, 38428), (59, 41772, 41909), (59, 45253, 45390), (61, 40931, 41068), (61, 44652, 44789), (61, 48373, 48510), (67, 40401, 40538), (67, 44890, 45027), (67, 49379, 49516), (67, 53868, 54005), (67, 58357, 58494), (71, 40328, 40465), (71, 45369, 45506), (71, 50410, 50547), (71, 55451, 55588), (71, 60492, 60629), (71, 65533, 65670), (73, 42632, 42769), (73, 47961, 48098), (73, 53290, 53427), (73, 58619, 58756), (73, 63948, 64085), (73, 69277, 69414), (79, 43687, 43824), (79, 49928, 50065), (79, 56169, 56306), (79, 62410, 62547), (79, 68651, 68788), (79, 74892, 75029), (83, 41334, 41471), (83, 48223, 48360), (83, 55112, 55249), (83, 62001, 62138), (83, 68890, 69027), (89, 39605, 39742), (89, 47526, 47663), (89, 55447, 55584), (89, 63368, 63505), (89, 71289, 71426), (97, 47045, 47182), (97, 56454, 56591), (97, 65863, 66000), (97, 75272, 75409), (101, 40804, 40941), (101, 51005, 51142), (101, 61206, 61343), (101, 71407, 71544), (103, 42436, 42573), (103, 53045, 53182), (103, 63654, 63791), (103, 74263, 74400), (107, 45796, 45933), (107, 57245, 57382), (107, 68694, 68831), (109, 47524, 47661), (109, 59405, 59542), (109, 71286, 71423), (113, 38307, 38444), (113, 51076, 51213), (113, 63845, 63982), (127, 48387, 48524), (127, 64516, 64653), (131, 51483, 51620), (131, 68644, 68781), (137, 56307, 56444), (137, 75076, 75213)]

def row138_layer001_block000 : List ColouredInterval :=
  [(2, 40960, 41097), (2, 49152, 49289), (2, 49152, 49289), (2, 65536, 65673), (2, 65536, 65673), (2, 65536, 65673), (3, 39366, 39503), (3, 59049, 59186), (3, 59049, 59186), (5, 40625, 40762), (5, 46875, 47012), (5, 62500, 62637), (7, 50421, 50558), (7, 67228, 67365), (11, 43923, 44060), (11, 58564, 58701)]

def row138_layer001_block001 : List ColouredInterval :=
  [(11, 73205, 73342), (13, 57122, 57259), (17, 39304, 39441), (17, 44217, 44354), (17, 49130, 49267), (17, 54043, 54180), (17, 58956, 59093), (17, 63869, 64006), (19, 41154, 41291), (19, 48013, 48150), (19, 54872, 55009), (19, 61731, 61868), (19, 68590, 68727), (19, 75449, 75586), (29, 48778, 48915), (29, 73167, 73304)]

def row138_layer001_block002 : List ColouredInterval :=
  [(31, 59582, 59719), (37, 50653, 50790), (41, 68921, 69058), (59, 38291, 38428), (59, 41772, 41909), (59, 45253, 45390), (61, 40931, 41068), (61, 44652, 44789), (61, 48373, 48510), (67, 40401, 40538), (67, 44890, 45027), (67, 49379, 49516), (67, 53868, 54005), (67, 58357, 58494), (71, 40328, 40465), (71, 45369, 45506)]

def row138_layer001_block003 : List ColouredInterval :=
  [(71, 50410, 50547), (71, 55451, 55588), (71, 60492, 60629), (71, 65533, 65670), (73, 42632, 42769), (73, 47961, 48098), (73, 53290, 53427), (73, 58619, 58756), (73, 63948, 64085), (73, 69277, 69414), (79, 43687, 43824), (79, 49928, 50065), (79, 56169, 56306), (79, 62410, 62547), (79, 68651, 68788), (79, 74892, 75029)]

def row138_layer001_block004 : List ColouredInterval :=
  [(83, 41334, 41471), (83, 48223, 48360), (83, 55112, 55249), (83, 62001, 62138), (83, 68890, 69027), (89, 39605, 39742), (89, 47526, 47663), (89, 55447, 55584), (89, 63368, 63505), (89, 71289, 71426), (97, 47045, 47182), (97, 56454, 56591), (97, 65863, 66000), (97, 75272, 75409), (101, 40804, 40941), (101, 51005, 51142)]

def row138_layer001_block005 : List ColouredInterval :=
  [(101, 61206, 61343), (101, 71407, 71544), (103, 42436, 42573), (103, 53045, 53182), (103, 63654, 63791), (103, 74263, 74400), (107, 45796, 45933), (107, 57245, 57382), (107, 68694, 68831), (109, 47524, 47661), (109, 59405, 59542), (109, 71286, 71423), (113, 38307, 38444), (113, 51076, 51213), (113, 63845, 63982), (127, 48387, 48524)]

def row138_layer001_block006 : List ColouredInterval :=
  [(127, 64516, 64653), (131, 51483, 51620), (131, 68644, 68781), (137, 56307, 56444), (137, 75076, 75213)]

def row138_layer001_chunks : List (List ColouredInterval) :=
  [row138_layer001_block000, row138_layer001_block001, row138_layer001_block002, row138_layer001_block003, row138_layer001_block004, row138_layer001_block005, row138_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_arithmetic : LayerArithmeticValid row138.height { lower := 37812, upper := 75624, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_enumeration :
    activePowerIntervalList 138 13 37812 75624 = row138_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_pairs000 :
    row138_layer001_block000.all (fun I => row138_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_pairs001 :
    row138_layer001_block001.all (fun I => row138_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_pairs002 :
    row138_layer001_block002.all (fun I => row138_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_pairs003 :
    row138_layer001_block003.all (fun I => row138_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_pairs004 :
    row138_layer001_block004.all (fun I => row138_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_pairs005 :
    row138_layer001_block005.all (fun I => row138_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_pairs006 :
    row138_layer001_block006.all (fun I => row138_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_chunks_eq : row138_layer001_chunks.flatten = row138_layer001_intervals := by
  rfl

theorem row138_layer001_pairs : pairCoverCheck row138_layer001_intervals row138_bounds = true := by
  apply pairCoverCheck_of_chunks row138_layer001_chunks_eq
  intro block hblock
  simp only [row138_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row138_layer001_pairs000
  · exact row138_layer001_pairs001
  · exact row138_layer001_pairs002
  · exact row138_layer001_pairs003
  · exact row138_layer001_pairs004
  · exact row138_layer001_pairs005
  · exact row138_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer001_checked :
    coverLayerCheck row138.height row138.goods { lower := 37812, upper := 75624, M := 13 } = true := by
  exact coverLayerCheck_of_parts row138_layer001_arithmetic row138_layer001_enumeration row138_bounds_eq row138_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row138_layer002_intervals : List ColouredInterval :=
  [(2, 81920, 82057), (2, 98304, 98441), (2, 131072, 131209), (2, 131072, 131209), (2, 131072, 131209), (3, 118098, 118235), (5, 78125, 78262), (5, 93750, 93887), (5, 109375, 109512), (5, 125000, 125137), (5, 140625, 140762), (5, 78125, 78262), (7, 84035, 84172), (7, 100842, 100979), (7, 117649, 117786), (7, 134456, 134593), (7, 117649, 117786), (11, 87846, 87983), (11, 102487, 102624), (11, 117128, 117265), (11, 131769, 131906), (11, 146410, 146547), (13, 85683, 85820), (13, 114244, 114381), (13, 142805, 142942), (17, 83521, 83658), (19, 130321, 130458), (29, 97556, 97693), (29, 121945, 122082), (29, 146334, 146471), (31, 89373, 89510), (31, 119164, 119301), (31, 148955, 149092), (37, 101306, 101443), (41, 137842, 137979), (43, 79507, 79644), (47, 103823, 103960), (53, 148877, 149014), (89, 79210, 79347), (97, 84681, 84818), (97, 94090, 94227), (101, 81608, 81745), (101, 91809, 91946), (101, 102010, 102147), (103, 84872, 85009), (103, 95481, 95618), (103, 106090, 106227), (107, 80143, 80280), (107, 91592, 91729), (107, 103041, 103178), (107, 114490, 114627), (109, 83167, 83304), (109, 95048, 95185), (109, 106929, 107066), (109, 118810, 118947), (113, 76614, 76751), (113, 89383, 89520), (113, 102152, 102289), (113, 114921, 115058), (113, 127690, 127827), (127, 80645, 80782), (127, 96774, 96911), (127, 112903, 113040), (127, 129032, 129169), (127, 145161, 145298), (131, 85805, 85942), (131, 102966, 103103), (131, 120127, 120264), (131, 137288, 137425), (137, 93845, 93982), (137, 112614, 112751), (137, 131383, 131520), (137, 150152, 150289)]

def row138_layer002_block000 : List ColouredInterval :=
  [(2, 81920, 82057), (2, 98304, 98441), (2, 131072, 131209), (2, 131072, 131209), (2, 131072, 131209), (3, 118098, 118235), (5, 78125, 78262), (5, 93750, 93887), (5, 109375, 109512), (5, 125000, 125137), (5, 140625, 140762), (5, 78125, 78262), (7, 84035, 84172), (7, 100842, 100979), (7, 117649, 117786), (7, 134456, 134593)]

def row138_layer002_block001 : List ColouredInterval :=
  [(7, 117649, 117786), (11, 87846, 87983), (11, 102487, 102624), (11, 117128, 117265), (11, 131769, 131906), (11, 146410, 146547), (13, 85683, 85820), (13, 114244, 114381), (13, 142805, 142942), (17, 83521, 83658), (19, 130321, 130458), (29, 97556, 97693), (29, 121945, 122082), (29, 146334, 146471), (31, 89373, 89510), (31, 119164, 119301)]

def row138_layer002_block002 : List ColouredInterval :=
  [(31, 148955, 149092), (37, 101306, 101443), (41, 137842, 137979), (43, 79507, 79644), (47, 103823, 103960), (53, 148877, 149014), (89, 79210, 79347), (97, 84681, 84818), (97, 94090, 94227), (101, 81608, 81745), (101, 91809, 91946), (101, 102010, 102147), (103, 84872, 85009), (103, 95481, 95618), (103, 106090, 106227), (107, 80143, 80280)]

def row138_layer002_block003 : List ColouredInterval :=
  [(107, 91592, 91729), (107, 103041, 103178), (107, 114490, 114627), (109, 83167, 83304), (109, 95048, 95185), (109, 106929, 107066), (109, 118810, 118947), (113, 76614, 76751), (113, 89383, 89520), (113, 102152, 102289), (113, 114921, 115058), (113, 127690, 127827), (127, 80645, 80782), (127, 96774, 96911), (127, 112903, 113040), (127, 129032, 129169)]

def row138_layer002_block004 : List ColouredInterval :=
  [(127, 145161, 145298), (131, 85805, 85942), (131, 102966, 103103), (131, 120127, 120264), (131, 137288, 137425), (137, 93845, 93982), (137, 112614, 112751), (137, 131383, 131520), (137, 150152, 150289)]

def row138_layer002_chunks : List (List ColouredInterval) :=
  [row138_layer002_block000, row138_layer002_block001, row138_layer002_block002, row138_layer002_block003, row138_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_arithmetic : LayerArithmeticValid row138.height { lower := 75624, upper := 151248, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_enumeration :
    activePowerIntervalList 138 10 75624 151248 = row138_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_pairs000 :
    row138_layer002_block000.all (fun I => row138_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_pairs001 :
    row138_layer002_block001.all (fun I => row138_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_pairs002 :
    row138_layer002_block002.all (fun I => row138_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_pairs003 :
    row138_layer002_block003.all (fun I => row138_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_pairs004 :
    row138_layer002_block004.all (fun I => row138_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row138_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_chunks_eq : row138_layer002_chunks.flatten = row138_layer002_intervals := by
  rfl

theorem row138_layer002_pairs : pairCoverCheck row138_layer002_intervals row138_bounds = true := by
  apply pairCoverCheck_of_chunks row138_layer002_chunks_eq
  intro block hblock
  simp only [row138_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row138_layer002_pairs000
  · exact row138_layer002_pairs001
  · exact row138_layer002_pairs002
  · exact row138_layer002_pairs003
  · exact row138_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer002_checked :
    coverLayerCheck row138.height row138.goods { lower := 75624, upper := 151248, M := 10 } = true := by
  exact coverLayerCheck_of_parts row138_layer002_arithmetic row138_layer002_enumeration row138_bounds_eq row138_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer003_checked :
    coverLayerCheck row138.height row138.goods { lower := 151248, upper := 302496, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer004_checked :
    coverLayerCheck row138.height row138.goods { lower := 302496, upper := 604992, M := 6 } = true := by
  decide +kernel

theorem row138_layer005_checked :
    coverLayerCheck row138.height row138.goods { lower := 604992, upper := 1209984, M := 5 } = true := by
  decide +kernel

theorem row138_layer006_checked :
    coverLayerCheck row138.height row138.goods { lower := 1209984, upper := 2419968, M := 4 } = true := by
  decide +kernel

theorem row138_layer007_checked :
    coverLayerCheck row138.height row138.goods { lower := 2419968, upper := 4839936, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer008_checked :
    coverLayerCheck row138.height row138.goods { lower := 4839936, upper := 9679872, M := 2 } = true := by
  decide +kernel

theorem row138_layer009_checked :
    coverLayerCheck row138.height row138.goods { lower := 9679872, upper := 19359744, M := 2 } = true := by
  decide +kernel

theorem row138_layer010_checked :
    coverLayerCheck row138.height row138.goods { lower := 19359744, upper := 38719488, M := 2 } = true := by
  decide +kernel

theorem row138_layer011_checked :
    coverLayerCheck row138.height row138.goods { lower := 38719488, upper := 77438976, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layer012_checked :
    coverLayerCheck row138.height row138.goods { lower := 77438976, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_layers_checked :
    row138.layers.all (coverLayerCheck row138.height row138.goods) = true := by
  change row138_layers.all (coverLayerCheck row138.height row138.goods) = true
  simp only [row138_layers, List.all_cons, List.all_nil,
    row138_layer000_checked,
    row138_layer001_checked,
    row138_layer002_checked,
    row138_layer003_checked,
    row138_layer004_checked,
    row138_layer005_checked,
    row138_layer006_checked,
    row138_layer007_checked,
    row138_layer008_checked,
    row138_layer009_checked,
    row138_layer010_checked,
    row138_layer011_checked,
    row138_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row138_checked : finiteCoverRowCheck row138 = true := by
  simp only [finiteCoverRowCheck, row138_registered, row138_goods_checked,
    row138_small_checked, row138_layerCover_checked, row138_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row138_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i138 :
    ∀ n j : ℕ, 1 ≤ 138 ∧ 138 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 138 ≤ p ∧ p ∣ Nat.choose n 138 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row138_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i138
