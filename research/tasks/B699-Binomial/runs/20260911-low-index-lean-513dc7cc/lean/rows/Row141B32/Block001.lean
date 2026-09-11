import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row141B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs008 :
    row141_layer000_block008.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs009 :
    row141_layer000_block009.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_pairs010 :
    row141_layer000_block010.all (fun I => row141_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_chunks_eq : row141_layer000_chunks.flatten = row141_layer000_intervals := by
  rfl

theorem row141_layer000_pairs : pairCoverCheck row141_layer000_intervals row141_bounds = true := by
  apply pairCoverCheck_of_chunks row141_layer000_chunks_eq
  intro block hblock
  simp only [row141_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row141_layer000_pairs000
  · exact row141_layer000_pairs001
  · exact row141_layer000_pairs002
  · exact row141_layer000_pairs003
  · exact row141_layer000_pairs004
  · exact row141_layer000_pairs005
  · exact row141_layer000_pairs006
  · exact row141_layer000_pairs007
  · exact row141_layer000_pairs008
  · exact row141_layer000_pairs009
  · exact row141_layer000_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer000_checked :
    coverLayerCheck row141.height row141.goods { lower := 19740, upper := 39480, M := 19 } = true := by
  exact coverLayerCheck_of_parts row141_layer000_arithmetic row141_layer000_enumeration row141_bounds_eq row141_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row141_layer001_intervals : List ColouredInterval :=
  [(2, 40960, 41100), (2, 45056, 45196), (2, 49152, 49292), (2, 53248, 53388), (2, 57344, 57484), (2, 40960, 41100), (2, 49152, 49292), (2, 57344, 57484), (2, 65536, 65676), (2, 73728, 73868), (2, 49152, 49292), (2, 65536, 65676), (2, 65536, 65676), (2, 65536, 65676), (3, 39480, 39506), (3, 59049, 59189), (3, 78732, 78872), (3, 59049, 59189), (5, 40625, 40765), (5, 43750, 43890), (5, 46875, 47015), (5, 62500, 62640), (5, 78125, 78265), (5, 78125, 78265), (7, 50421, 50561), (7, 67228, 67368), (11, 43923, 44063), (11, 58564, 58704), (11, 73205, 73345), (13, 57122, 57262), (17, 44217, 44357), (17, 49130, 49270), (17, 54043, 54183), (17, 58956, 59096), (17, 63869, 64009), (17, 68782, 68922), (19, 41154, 41294), (19, 48013, 48153), (19, 54872, 55012), (19, 61731, 61871), (19, 68590, 68730), (19, 75449, 75589), (23, 48668, 48808), (23, 60835, 60975), (23, 73002, 73142), (29, 48778, 48918), (29, 73167, 73307), (31, 59582, 59722), (37, 50653, 50793), (41, 68921, 69061), (59, 41772, 41912), (59, 45253, 45393), (59, 48734, 48874), (61, 40931, 41071), (61, 44652, 44792), (61, 48373, 48513), (61, 52094, 52234), (67, 40401, 40541), (67, 44890, 45030), (67, 49379, 49519), (67, 53868, 54008), (67, 58357, 58497), (67, 62846, 62986), (71, 40328, 40468), (71, 45369, 45509), (71, 50410, 50550), (71, 55451, 55591), (71, 60492, 60632), (71, 65533, 65673), (71, 70574, 70714), (73, 42632, 42772), (73, 47961, 48101), (73, 53290, 53430), (73, 58619, 58759), (73, 63948, 64088), (73, 69277, 69417), (73, 74606, 74746), (79, 43687, 43827), (79, 49928, 50068), (79, 56169, 56309), (79, 62410, 62550), (79, 68651, 68791), (79, 74892, 75032), (83, 41334, 41474), (83, 48223, 48363), (83, 55112, 55252), (83, 62001, 62141), (83, 68890, 69030), (83, 75779, 75919), (89, 39605, 39745), (89, 47526, 47666), (89, 55447, 55587), (89, 63368, 63508), (89, 71289, 71429), (97, 47045, 47185), (97, 56454, 56594), (97, 65863, 66003), (97, 75272, 75412), (101, 40804, 40944), (101, 51005, 51145), (101, 61206, 61346), (101, 71407, 71547), (103, 42436, 42576), (103, 53045, 53185), (103, 63654, 63794), (103, 74263, 74403), (107, 45796, 45936), (107, 57245, 57385), (107, 68694, 68834), (109, 47524, 47664), (109, 59405, 59545), (109, 71286, 71426), (113, 51076, 51216), (113, 63845, 63985), (113, 76614, 76754), (127, 48387, 48527), (127, 64516, 64656), (131, 51483, 51623), (131, 68644, 68784), (137, 56307, 56447), (137, 75076, 75216), (139, 57963, 58103), (139, 77284, 77424)]

def row141_layer001_block000 : List ColouredInterval :=
  [(2, 40960, 41100), (2, 45056, 45196), (2, 49152, 49292), (2, 53248, 53388), (2, 57344, 57484), (2, 40960, 41100), (2, 49152, 49292), (2, 57344, 57484), (2, 65536, 65676), (2, 73728, 73868), (2, 49152, 49292), (2, 65536, 65676), (2, 65536, 65676), (2, 65536, 65676), (3, 39480, 39506), (3, 59049, 59189)]

def row141_layer001_block001 : List ColouredInterval :=
  [(3, 78732, 78872), (3, 59049, 59189), (5, 40625, 40765), (5, 43750, 43890), (5, 46875, 47015), (5, 62500, 62640), (5, 78125, 78265), (5, 78125, 78265), (7, 50421, 50561), (7, 67228, 67368), (11, 43923, 44063), (11, 58564, 58704), (11, 73205, 73345), (13, 57122, 57262), (17, 44217, 44357), (17, 49130, 49270)]

def row141_layer001_block002 : List ColouredInterval :=
  [(17, 54043, 54183), (17, 58956, 59096), (17, 63869, 64009), (17, 68782, 68922), (19, 41154, 41294), (19, 48013, 48153), (19, 54872, 55012), (19, 61731, 61871), (19, 68590, 68730), (19, 75449, 75589), (23, 48668, 48808), (23, 60835, 60975), (23, 73002, 73142), (29, 48778, 48918), (29, 73167, 73307), (31, 59582, 59722)]

def row141_layer001_block003 : List ColouredInterval :=
  [(37, 50653, 50793), (41, 68921, 69061), (59, 41772, 41912), (59, 45253, 45393), (59, 48734, 48874), (61, 40931, 41071), (61, 44652, 44792), (61, 48373, 48513), (61, 52094, 52234), (67, 40401, 40541), (67, 44890, 45030), (67, 49379, 49519), (67, 53868, 54008), (67, 58357, 58497), (67, 62846, 62986), (71, 40328, 40468)]

def row141_layer001_block004 : List ColouredInterval :=
  [(71, 45369, 45509), (71, 50410, 50550), (71, 55451, 55591), (71, 60492, 60632), (71, 65533, 65673), (71, 70574, 70714), (73, 42632, 42772), (73, 47961, 48101), (73, 53290, 53430), (73, 58619, 58759), (73, 63948, 64088), (73, 69277, 69417), (73, 74606, 74746), (79, 43687, 43827), (79, 49928, 50068), (79, 56169, 56309)]

def row141_layer001_block005 : List ColouredInterval :=
  [(79, 62410, 62550), (79, 68651, 68791), (79, 74892, 75032), (83, 41334, 41474), (83, 48223, 48363), (83, 55112, 55252), (83, 62001, 62141), (83, 68890, 69030), (83, 75779, 75919), (89, 39605, 39745), (89, 47526, 47666), (89, 55447, 55587), (89, 63368, 63508), (89, 71289, 71429), (97, 47045, 47185), (97, 56454, 56594)]

def row141_layer001_block006 : List ColouredInterval :=
  [(97, 65863, 66003), (97, 75272, 75412), (101, 40804, 40944), (101, 51005, 51145), (101, 61206, 61346), (101, 71407, 71547), (103, 42436, 42576), (103, 53045, 53185), (103, 63654, 63794), (103, 74263, 74403), (107, 45796, 45936), (107, 57245, 57385), (107, 68694, 68834), (109, 47524, 47664), (109, 59405, 59545), (109, 71286, 71426)]

def row141_layer001_block007 : List ColouredInterval :=
  [(113, 51076, 51216), (113, 63845, 63985), (113, 76614, 76754), (127, 48387, 48527), (127, 64516, 64656), (131, 51483, 51623), (131, 68644, 68784), (137, 56307, 56447), (137, 75076, 75216), (139, 57963, 58103), (139, 77284, 77424)]

def row141_layer001_chunks : List (List ColouredInterval) :=
  [row141_layer001_block000, row141_layer001_block001, row141_layer001_block002, row141_layer001_block003, row141_layer001_block004, row141_layer001_block005, row141_layer001_block006, row141_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_arithmetic : LayerArithmeticValid row141.height { lower := 39480, upper := 78960, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_enumeration :
    activePowerIntervalList 141 14 39480 78960 = row141_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs000 :
    row141_layer001_block000.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs001 :
    row141_layer001_block001.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs002 :
    row141_layer001_block002.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs003 :
    row141_layer001_block003.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs004 :
    row141_layer001_block004.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs005 :
    row141_layer001_block005.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs006 :
    row141_layer001_block006.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_pairs007 :
    row141_layer001_block007.all (fun I => row141_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_chunks_eq : row141_layer001_chunks.flatten = row141_layer001_intervals := by
  rfl

theorem row141_layer001_pairs : pairCoverCheck row141_layer001_intervals row141_bounds = true := by
  apply pairCoverCheck_of_chunks row141_layer001_chunks_eq
  intro block hblock
  simp only [row141_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row141_layer001_pairs000
  · exact row141_layer001_pairs001
  · exact row141_layer001_pairs002
  · exact row141_layer001_pairs003
  · exact row141_layer001_pairs004
  · exact row141_layer001_pairs005
  · exact row141_layer001_pairs006
  · exact row141_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer001_checked :
    coverLayerCheck row141.height row141.goods { lower := 39480, upper := 78960, M := 14 } = true := by
  exact coverLayerCheck_of_parts row141_layer001_arithmetic row141_layer001_enumeration row141_bounds_eq row141_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row141_layer002_intervals : List ColouredInterval :=
  [(2, 81920, 82060), (2, 90112, 90252), (2, 81920, 82060), (2, 98304, 98444), (2, 114688, 114828), (2, 131072, 131212), (2, 147456, 147596), (2, 98304, 98444), (2, 131072, 131212), (2, 131072, 131212), (2, 131072, 131212), (3, 118098, 118238), (5, 93750, 93890), (5, 109375, 109515), (5, 125000, 125140), (5, 140625, 140765), (5, 156250, 156390), (5, 156250, 156390), (7, 84035, 84175), (7, 100842, 100982), (7, 117649, 117789), (7, 134456, 134596), (7, 151263, 151403), (7, 117649, 117789), (11, 87846, 87986), (11, 102487, 102627), (11, 117128, 117268), (11, 131769, 131909), (11, 146410, 146550), (13, 85683, 85823), (13, 114244, 114384), (13, 142805, 142945), (17, 83521, 83661), (19, 130321, 130461), (23, 85169, 85309), (23, 97336, 97476), (23, 109503, 109643), (23, 121670, 121810), (23, 133837, 133977), (29, 97556, 97696), (29, 121945, 122085), (29, 146334, 146474), (31, 89373, 89513), (31, 119164, 119304), (31, 148955, 149095), (37, 101306, 101446), (37, 151959, 152099), (41, 137842, 137982), (43, 79507, 79647), (53, 148877, 149017), (89, 79210, 79350), (89, 87131, 87271), (97, 84681, 84821), (97, 94090, 94230), (97, 103499, 103639), (101, 81608, 81748), (101, 91809, 91949), (101, 102010, 102150), (101, 112211, 112351), (103, 84872, 85012), (103, 95481, 95621), (103, 106090, 106230), (103, 116699, 116839), (107, 80143, 80283), (107, 91592, 91732), (107, 103041, 103181), (107, 114490, 114630), (107, 125939, 126079), (109, 83167, 83307), (109, 95048, 95188), (109, 106929, 107069), (109, 118810, 118950), (109, 130691, 130831), (113, 89383, 89523), (113, 102152, 102292), (113, 114921, 115061), (113, 127690, 127830), (113, 140459, 140599), (127, 80645, 80785), (127, 96774, 96914), (127, 112903, 113043), (127, 129032, 129172), (127, 145161, 145301), (131, 85805, 85945), (131, 102966, 103106), (131, 120127, 120267), (131, 137288, 137428), (131, 154449, 154589), (137, 93845, 93985), (137, 112614, 112754), (137, 131383, 131523), (137, 150152, 150292), (139, 96605, 96745), (139, 115926, 116066), (139, 135247, 135387), (139, 154568, 154708)]

def row141_layer002_block000 : List ColouredInterval :=
  [(2, 81920, 82060), (2, 90112, 90252), (2, 81920, 82060), (2, 98304, 98444), (2, 114688, 114828), (2, 131072, 131212), (2, 147456, 147596), (2, 98304, 98444), (2, 131072, 131212), (2, 131072, 131212), (2, 131072, 131212), (3, 118098, 118238), (5, 93750, 93890), (5, 109375, 109515), (5, 125000, 125140), (5, 140625, 140765)]

def row141_layer002_block001 : List ColouredInterval :=
  [(5, 156250, 156390), (5, 156250, 156390), (7, 84035, 84175), (7, 100842, 100982), (7, 117649, 117789), (7, 134456, 134596), (7, 151263, 151403), (7, 117649, 117789), (11, 87846, 87986), (11, 102487, 102627), (11, 117128, 117268), (11, 131769, 131909), (11, 146410, 146550), (13, 85683, 85823), (13, 114244, 114384), (13, 142805, 142945)]

def row141_layer002_block002 : List ColouredInterval :=
  [(17, 83521, 83661), (19, 130321, 130461), (23, 85169, 85309), (23, 97336, 97476), (23, 109503, 109643), (23, 121670, 121810), (23, 133837, 133977), (29, 97556, 97696), (29, 121945, 122085), (29, 146334, 146474), (31, 89373, 89513), (31, 119164, 119304), (31, 148955, 149095), (37, 101306, 101446), (37, 151959, 152099), (41, 137842, 137982)]

def row141_layer002_block003 : List ColouredInterval :=
  [(43, 79507, 79647), (53, 148877, 149017), (89, 79210, 79350), (89, 87131, 87271), (97, 84681, 84821), (97, 94090, 94230), (97, 103499, 103639), (101, 81608, 81748), (101, 91809, 91949), (101, 102010, 102150), (101, 112211, 112351), (103, 84872, 85012), (103, 95481, 95621), (103, 106090, 106230), (103, 116699, 116839), (107, 80143, 80283)]

def row141_layer002_block004 : List ColouredInterval :=
  [(107, 91592, 91732), (107, 103041, 103181), (107, 114490, 114630), (107, 125939, 126079), (109, 83167, 83307), (109, 95048, 95188), (109, 106929, 107069), (109, 118810, 118950), (109, 130691, 130831), (113, 89383, 89523), (113, 102152, 102292), (113, 114921, 115061), (113, 127690, 127830), (113, 140459, 140599), (127, 80645, 80785), (127, 96774, 96914)]

def row141_layer002_block005 : List ColouredInterval :=
  [(127, 112903, 113043), (127, 129032, 129172), (127, 145161, 145301), (131, 85805, 85945), (131, 102966, 103106), (131, 120127, 120267), (131, 137288, 137428), (131, 154449, 154589), (137, 93845, 93985), (137, 112614, 112754), (137, 131383, 131523), (137, 150152, 150292), (139, 96605, 96745), (139, 115926, 116066), (139, 135247, 135387), (139, 154568, 154708)]

def row141_layer002_chunks : List (List ColouredInterval) :=
  [row141_layer002_block000, row141_layer002_block001, row141_layer002_block002, row141_layer002_block003, row141_layer002_block004, row141_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_arithmetic : LayerArithmeticValid row141.height { lower := 78960, upper := 157920, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_enumeration :
    activePowerIntervalList 141 11 78960 157920 = row141_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_pairs000 :
    row141_layer002_block000.all (fun I => row141_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_pairs001 :
    row141_layer002_block001.all (fun I => row141_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_pairs002 :
    row141_layer002_block002.all (fun I => row141_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_pairs003 :
    row141_layer002_block003.all (fun I => row141_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_pairs004 :
    row141_layer002_block004.all (fun I => row141_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_pairs005 :
    row141_layer002_block005.all (fun I => row141_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row141_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_chunks_eq : row141_layer002_chunks.flatten = row141_layer002_intervals := by
  rfl

theorem row141_layer002_pairs : pairCoverCheck row141_layer002_intervals row141_bounds = true := by
  apply pairCoverCheck_of_chunks row141_layer002_chunks_eq
  intro block hblock
  simp only [row141_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row141_layer002_pairs000
  · exact row141_layer002_pairs001
  · exact row141_layer002_pairs002
  · exact row141_layer002_pairs003
  · exact row141_layer002_pairs004
  · exact row141_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer002_checked :
    coverLayerCheck row141.height row141.goods { lower := 78960, upper := 157920, M := 11 } = true := by
  exact coverLayerCheck_of_parts row141_layer002_arithmetic row141_layer002_enumeration row141_bounds_eq row141_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer003_checked :
    coverLayerCheck row141.height row141.goods { lower := 157920, upper := 315840, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer004_checked :
    coverLayerCheck row141.height row141.goods { lower := 315840, upper := 631680, M := 7 } = true := by
  decide +kernel

theorem row141_layer005_checked :
    coverLayerCheck row141.height row141.goods { lower := 631680, upper := 1263360, M := 5 } = true := by
  decide +kernel

theorem row141_layer006_checked :
    coverLayerCheck row141.height row141.goods { lower := 1263360, upper := 2526720, M := 4 } = true := by
  decide +kernel

theorem row141_layer007_checked :
    coverLayerCheck row141.height row141.goods { lower := 2526720, upper := 5053440, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row141_layer008_checked :
    coverLayerCheck row141.height row141.goods { lower := 5053440, upper := 10106880, M := 3 } = true := by
  decide +kernel

theorem row141_layer009_checked :
    coverLayerCheck row141.height row141.goods { lower := 10106880, upper := 20213760, M := 2 } = true := by
  decide +kernel

theorem row141_layer010_checked :
    coverLayerCheck row141.height row141.goods { lower := 20213760, upper := 40427520, M := 2 } = true := by
  decide +kernel

theorem row141_layer011_checked :
    coverLayerCheck row141.height row141.goods { lower := 40427520, upper := 80855040, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row141_layer011_checked
