import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row106B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_pairs009 :
    row106_layer000_block009.all (fun I => row106_layer000_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_chunks_eq : row106_layer000_chunks.flatten = row106_layer000_intervals := by
  rfl

theorem row106_layer000_pairs : pairCoverCheck row106_layer000_intervals row106_bounds = true := by
  apply pairCoverCheck_of_chunks row106_layer000_chunks_eq
  intro block hblock
  simp only [row106_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row106_layer000_pairs000
  · exact row106_layer000_pairs001
  · exact row106_layer000_pairs002
  · exact row106_layer000_pairs003
  · exact row106_layer000_pairs004
  · exact row106_layer000_pairs005
  · exact row106_layer000_pairs006
  · exact row106_layer000_pairs007
  · exact row106_layer000_pairs008
  · exact row106_layer000_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer000_checked :
    coverLayerCheck row106.height row106.goods { lower := 11130, upper := 22260, M := 23 } = true := by
  exact coverLayerCheck_of_parts row106_layer000_arithmetic row106_layer000_enumeration row106_bounds_eq row106_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row106_layer001_intervals : List ColouredInterval :=
  [(2, 24576, 24681), (2, 28672, 28777), (2, 32768, 32873), (2, 36864, 36969), (2, 24576, 24681), (2, 32768, 32873), (2, 40960, 41065), (2, 32768, 32873), (2, 32768, 32873), (3, 24057, 24162), (3, 26244, 26349), (3, 28431, 28536), (3, 30618, 30723), (3, 32805, 32910), (3, 34992, 35097), (3, 37179, 37284), (3, 39366, 39471), (3, 41553, 41658), (3, 26244, 26349), (3, 32805, 32910), (3, 39366, 39471), (3, 39366, 39471), (5, 25000, 25105), (5, 28125, 28230), (5, 31250, 31355), (5, 34375, 34480), (5, 37500, 37605), (5, 40625, 40730), (5, 43750, 43855), (5, 31250, 31355), (7, 24010, 24115), (7, 26411, 26516), (7, 28812, 28917), (7, 31213, 31318), (7, 33614, 33719), (7, 36015, 36120), (7, 38416, 38521), (7, 40817, 40922), (7, 43218, 43323), (7, 33614, 33719), (11, 22627, 22732), (11, 23958, 24063), (11, 25289, 25394), (11, 29282, 29387), (11, 43923, 44028), (13, 24167, 24272), (13, 26364, 26469), (13, 28561, 28666), (13, 30758, 30863), (13, 32955, 33060), (13, 35152, 35257), (13, 37349, 37454), (13, 39546, 39651), (13, 41743, 41848), (13, 28561, 28666), (17, 24565, 24670), (17, 29478, 29583), (17, 34391, 34496), (17, 39304, 39409), (17, 44217, 44322), (19, 27436, 27541), (19, 34295, 34400), (19, 41154, 41259), (23, 24334, 24439), (23, 36501, 36606), (29, 24389, 24494), (31, 29791, 29896), (37, 23273, 23378), (37, 24642, 24747), (37, 26011, 26116), (41, 23534, 23639), (41, 25215, 25320), (41, 26896, 27001), (41, 28577, 28682), (41, 30258, 30363), (41, 31939, 32044), (43, 22260, 22293), (43, 24037, 24142), (43, 25886, 25991), (43, 27735, 27840), (43, 29584, 29689), (43, 31433, 31538), (43, 33282, 33387), (43, 35131, 35236), (47, 24299, 24404), (47, 26508, 26613), (47, 28717, 28822), (47, 30926, 31031), (47, 33135, 33240), (47, 35344, 35449), (47, 37553, 37658), (47, 39762, 39867), (47, 41971, 42076), (59, 24367, 24472), (59, 27848, 27953), (59, 31329, 31434), (59, 34810, 34915), (59, 38291, 38396), (59, 41772, 41877), (61, 22326, 22431), (61, 26047, 26152), (61, 29768, 29873), (61, 33489, 33594), (61, 37210, 37315), (61, 40931, 41036), (67, 22445, 22550), (67, 26934, 27039), (67, 31423, 31528), (67, 35912, 36017), (67, 40401, 40506), (71, 25205, 25310), (71, 30246, 30351), (71, 35287, 35392), (71, 40328, 40433), (73, 26645, 26750), (73, 31974, 32079), (73, 37303, 37408), (73, 42632, 42737), (79, 24964, 25069), (79, 31205, 31310), (79, 37446, 37551), (79, 43687, 43792), (83, 27556, 27661), (83, 34445, 34550), (83, 41334, 41439), (89, 23763, 23868), (89, 31684, 31789), (89, 39605, 39710), (97, 28227, 28332), (97, 37636, 37741), (101, 30603, 30708), (101, 40804, 40909), (103, 31827, 31932), (103, 42436, 42541)]

def row106_layer001_block000 : List ColouredInterval :=
  [(2, 24576, 24681), (2, 28672, 28777), (2, 32768, 32873), (2, 36864, 36969), (2, 24576, 24681), (2, 32768, 32873), (2, 40960, 41065), (2, 32768, 32873), (2, 32768, 32873), (3, 24057, 24162), (3, 26244, 26349), (3, 28431, 28536), (3, 30618, 30723), (3, 32805, 32910), (3, 34992, 35097)]

def row106_layer001_block001 : List ColouredInterval :=
  [(3, 37179, 37284), (3, 39366, 39471), (3, 41553, 41658), (3, 26244, 26349), (3, 32805, 32910), (3, 39366, 39471), (3, 39366, 39471), (5, 25000, 25105), (5, 28125, 28230), (5, 31250, 31355), (5, 34375, 34480), (5, 37500, 37605), (5, 40625, 40730), (5, 43750, 43855), (5, 31250, 31355)]

def row106_layer001_block002 : List ColouredInterval :=
  [(7, 24010, 24115), (7, 26411, 26516), (7, 28812, 28917), (7, 31213, 31318), (7, 33614, 33719), (7, 36015, 36120), (7, 38416, 38521), (7, 40817, 40922), (7, 43218, 43323), (7, 33614, 33719), (11, 22627, 22732), (11, 23958, 24063), (11, 25289, 25394), (11, 29282, 29387), (11, 43923, 44028)]

def row106_layer001_block003 : List ColouredInterval :=
  [(13, 24167, 24272), (13, 26364, 26469), (13, 28561, 28666), (13, 30758, 30863), (13, 32955, 33060), (13, 35152, 35257), (13, 37349, 37454), (13, 39546, 39651), (13, 41743, 41848), (13, 28561, 28666), (17, 24565, 24670), (17, 29478, 29583), (17, 34391, 34496), (17, 39304, 39409), (17, 44217, 44322)]

def row106_layer001_block004 : List ColouredInterval :=
  [(19, 27436, 27541), (19, 34295, 34400), (19, 41154, 41259), (23, 24334, 24439), (23, 36501, 36606), (29, 24389, 24494), (31, 29791, 29896), (37, 23273, 23378), (37, 24642, 24747), (37, 26011, 26116), (41, 23534, 23639), (41, 25215, 25320), (41, 26896, 27001), (41, 28577, 28682), (41, 30258, 30363)]

def row106_layer001_block005 : List ColouredInterval :=
  [(41, 31939, 32044), (43, 22260, 22293), (43, 24037, 24142), (43, 25886, 25991), (43, 27735, 27840), (43, 29584, 29689), (43, 31433, 31538), (43, 33282, 33387), (43, 35131, 35236), (47, 24299, 24404), (47, 26508, 26613), (47, 28717, 28822), (47, 30926, 31031), (47, 33135, 33240), (47, 35344, 35449)]

def row106_layer001_block006 : List ColouredInterval :=
  [(47, 37553, 37658), (47, 39762, 39867), (47, 41971, 42076), (59, 24367, 24472), (59, 27848, 27953), (59, 31329, 31434), (59, 34810, 34915), (59, 38291, 38396), (59, 41772, 41877), (61, 22326, 22431), (61, 26047, 26152), (61, 29768, 29873), (61, 33489, 33594), (61, 37210, 37315), (61, 40931, 41036)]

def row106_layer001_block007 : List ColouredInterval :=
  [(67, 22445, 22550), (67, 26934, 27039), (67, 31423, 31528), (67, 35912, 36017), (67, 40401, 40506), (71, 25205, 25310), (71, 30246, 30351), (71, 35287, 35392), (71, 40328, 40433), (73, 26645, 26750), (73, 31974, 32079), (73, 37303, 37408), (73, 42632, 42737), (79, 24964, 25069), (79, 31205, 31310)]

def row106_layer001_block008 : List ColouredInterval :=
  [(79, 37446, 37551), (79, 43687, 43792), (83, 27556, 27661), (83, 34445, 34550), (83, 41334, 41439), (89, 23763, 23868), (89, 31684, 31789), (89, 39605, 39710), (97, 28227, 28332), (97, 37636, 37741), (101, 30603, 30708), (101, 40804, 40909), (103, 31827, 31932), (103, 42436, 42541)]

def row106_layer001_chunks : List (List ColouredInterval) :=
  [row106_layer001_block000, row106_layer001_block001, row106_layer001_block002, row106_layer001_block003, row106_layer001_block004, row106_layer001_block005, row106_layer001_block006, row106_layer001_block007, row106_layer001_block008]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_arithmetic : LayerArithmeticValid row106.height { lower := 22260, upper := 44520, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_enumeration :
    activePowerIntervalList 106 19 22260 44520 = row106_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs000 :
    row106_layer001_block000.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs001 :
    row106_layer001_block001.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs002 :
    row106_layer001_block002.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs003 :
    row106_layer001_block003.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs004 :
    row106_layer001_block004.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs005 :
    row106_layer001_block005.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs006 :
    row106_layer001_block006.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs007 :
    row106_layer001_block007.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_pairs008 :
    row106_layer001_block008.all (fun I => row106_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_chunks_eq : row106_layer001_chunks.flatten = row106_layer001_intervals := by
  rfl

theorem row106_layer001_pairs : pairCoverCheck row106_layer001_intervals row106_bounds = true := by
  apply pairCoverCheck_of_chunks row106_layer001_chunks_eq
  intro block hblock
  simp only [row106_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row106_layer001_pairs000
  · exact row106_layer001_pairs001
  · exact row106_layer001_pairs002
  · exact row106_layer001_pairs003
  · exact row106_layer001_pairs004
  · exact row106_layer001_pairs005
  · exact row106_layer001_pairs006
  · exact row106_layer001_pairs007
  · exact row106_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer001_checked :
    coverLayerCheck row106.height row106.goods { lower := 22260, upper := 44520, M := 19 } = true := by
  exact coverLayerCheck_of_parts row106_layer001_arithmetic row106_layer001_enumeration row106_bounds_eq row106_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row106_layer002_intervals : List ColouredInterval :=
  [(2, 49152, 49257), (2, 57344, 57449), (2, 49152, 49257), (2, 65536, 65641), (2, 81920, 82025), (2, 65536, 65641), (2, 65536, 65641), (3, 45927, 46032), (3, 52488, 52593), (3, 59049, 59154), (3, 65610, 65715), (3, 72171, 72276), (3, 78732, 78837), (3, 85293, 85398), (3, 59049, 59154), (3, 78732, 78837), (3, 59049, 59154), (5, 46875, 46980), (5, 46875, 46980), (5, 62500, 62605), (5, 78125, 78230), (5, 78125, 78230), (7, 50421, 50526), (7, 67228, 67333), (7, 84035, 84140), (11, 58564, 58669), (11, 73205, 73310), (11, 87846, 87951), (13, 57122, 57227), (13, 85683, 85788), (17, 49130, 49235), (17, 54043, 54148), (17, 58956, 59061), (17, 63869, 63974), (17, 68782, 68887), (17, 73695, 73800), (17, 83521, 83626), (19, 48013, 48118), (19, 54872, 54977), (19, 61731, 61836), (19, 68590, 68695), (19, 75449, 75554), (19, 82308, 82413), (23, 48668, 48773), (23, 60835, 60940), (23, 73002, 73107), (23, 85169, 85274), (29, 48778, 48883), (29, 73167, 73272), (31, 59582, 59687), (37, 50653, 50758), (41, 68921, 69026), (43, 79507, 79612), (59, 45253, 45358), (59, 48734, 48839), (59, 52215, 52320), (61, 44652, 44757), (61, 48373, 48478), (61, 52094, 52199), (61, 55815, 55920), (67, 44890, 44995), (67, 49379, 49484), (67, 53868, 53973), (67, 58357, 58462), (67, 62846, 62951), (67, 67335, 67440), (71, 45369, 45474), (71, 50410, 50515), (71, 55451, 55556), (71, 60492, 60597), (71, 65533, 65638), (71, 70574, 70679), (71, 75615, 75720), (73, 47961, 48066), (73, 53290, 53395), (73, 58619, 58724), (73, 63948, 64053), (73, 69277, 69382), (73, 74606, 74711), (73, 79935, 80040), (79, 49928, 50033), (79, 56169, 56274), (79, 62410, 62515), (79, 68651, 68756), (79, 74892, 74997), (79, 81133, 81238), (79, 87374, 87479), (83, 48223, 48328), (83, 55112, 55217), (83, 62001, 62106), (83, 68890, 68995), (83, 75779, 75884), (83, 82668, 82773), (89, 47526, 47631), (89, 55447, 55552), (89, 63368, 63473), (89, 71289, 71394), (89, 79210, 79315), (89, 87131, 87236), (97, 47045, 47150), (97, 56454, 56559), (97, 65863, 65968), (97, 75272, 75377), (97, 84681, 84786), (101, 51005, 51110), (101, 61206, 61311), (101, 71407, 71512), (101, 81608, 81713), (103, 53045, 53150), (103, 63654, 63759), (103, 74263, 74368), (103, 84872, 84977)]

def row106_layer002_block000 : List ColouredInterval :=
  [(2, 49152, 49257), (2, 57344, 57449), (2, 49152, 49257), (2, 65536, 65641), (2, 81920, 82025), (2, 65536, 65641), (2, 65536, 65641), (3, 45927, 46032), (3, 52488, 52593), (3, 59049, 59154), (3, 65610, 65715), (3, 72171, 72276), (3, 78732, 78837), (3, 85293, 85398), (3, 59049, 59154), (3, 78732, 78837)]

def row106_layer002_block001 : List ColouredInterval :=
  [(3, 59049, 59154), (5, 46875, 46980), (5, 46875, 46980), (5, 62500, 62605), (5, 78125, 78230), (5, 78125, 78230), (7, 50421, 50526), (7, 67228, 67333), (7, 84035, 84140), (11, 58564, 58669), (11, 73205, 73310), (11, 87846, 87951), (13, 57122, 57227), (13, 85683, 85788), (17, 49130, 49235), (17, 54043, 54148)]

def row106_layer002_block002 : List ColouredInterval :=
  [(17, 58956, 59061), (17, 63869, 63974), (17, 68782, 68887), (17, 73695, 73800), (17, 83521, 83626), (19, 48013, 48118), (19, 54872, 54977), (19, 61731, 61836), (19, 68590, 68695), (19, 75449, 75554), (19, 82308, 82413), (23, 48668, 48773), (23, 60835, 60940), (23, 73002, 73107), (23, 85169, 85274), (29, 48778, 48883)]

def row106_layer002_block003 : List ColouredInterval :=
  [(29, 73167, 73272), (31, 59582, 59687), (37, 50653, 50758), (41, 68921, 69026), (43, 79507, 79612), (59, 45253, 45358), (59, 48734, 48839), (59, 52215, 52320), (61, 44652, 44757), (61, 48373, 48478), (61, 52094, 52199), (61, 55815, 55920), (67, 44890, 44995), (67, 49379, 49484), (67, 53868, 53973), (67, 58357, 58462)]

def row106_layer002_block004 : List ColouredInterval :=
  [(67, 62846, 62951), (67, 67335, 67440), (71, 45369, 45474), (71, 50410, 50515), (71, 55451, 55556), (71, 60492, 60597), (71, 65533, 65638), (71, 70574, 70679), (71, 75615, 75720), (73, 47961, 48066), (73, 53290, 53395), (73, 58619, 58724), (73, 63948, 64053), (73, 69277, 69382), (73, 74606, 74711), (73, 79935, 80040)]

def row106_layer002_block005 : List ColouredInterval :=
  [(79, 49928, 50033), (79, 56169, 56274), (79, 62410, 62515), (79, 68651, 68756), (79, 74892, 74997), (79, 81133, 81238), (79, 87374, 87479), (83, 48223, 48328), (83, 55112, 55217), (83, 62001, 62106), (83, 68890, 68995), (83, 75779, 75884), (83, 82668, 82773), (89, 47526, 47631), (89, 55447, 55552), (89, 63368, 63473)]

def row106_layer002_block006 : List ColouredInterval :=
  [(89, 71289, 71394), (89, 79210, 79315), (89, 87131, 87236), (97, 47045, 47150), (97, 56454, 56559), (97, 65863, 65968), (97, 75272, 75377), (97, 84681, 84786), (101, 51005, 51110), (101, 61206, 61311), (101, 71407, 71512), (101, 81608, 81713), (103, 53045, 53150), (103, 63654, 63759), (103, 74263, 74368), (103, 84872, 84977)]

def row106_layer002_chunks : List (List ColouredInterval) :=
  [row106_layer002_block000, row106_layer002_block001, row106_layer002_block002, row106_layer002_block003, row106_layer002_block004, row106_layer002_block005, row106_layer002_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_arithmetic : LayerArithmeticValid row106.height { lower := 44520, upper := 89040, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_enumeration :
    activePowerIntervalList 106 15 44520 89040 = row106_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_pairs000 :
    row106_layer002_block000.all (fun I => row106_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_pairs001 :
    row106_layer002_block001.all (fun I => row106_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_pairs002 :
    row106_layer002_block002.all (fun I => row106_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_pairs003 :
    row106_layer002_block003.all (fun I => row106_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_pairs004 :
    row106_layer002_block004.all (fun I => row106_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_pairs005 :
    row106_layer002_block005.all (fun I => row106_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_pairs006 :
    row106_layer002_block006.all (fun I => row106_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row106_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_chunks_eq : row106_layer002_chunks.flatten = row106_layer002_intervals := by
  rfl

theorem row106_layer002_pairs : pairCoverCheck row106_layer002_intervals row106_bounds = true := by
  apply pairCoverCheck_of_chunks row106_layer002_chunks_eq
  intro block hblock
  simp only [row106_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row106_layer002_pairs000
  · exact row106_layer002_pairs001
  · exact row106_layer002_pairs002
  · exact row106_layer002_pairs003
  · exact row106_layer002_pairs004
  · exact row106_layer002_pairs005
  · exact row106_layer002_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer002_checked :
    coverLayerCheck row106.height row106.goods { lower := 44520, upper := 89040, M := 15 } = true := by
  exact coverLayerCheck_of_parts row106_layer002_arithmetic row106_layer002_enumeration row106_bounds_eq row106_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row106_layer003_intervals : List ColouredInterval :=
  [(2, 98304, 98409), (2, 98304, 98409), (2, 131072, 131177), (2, 163840, 163945), (2, 131072, 131177), (2, 131072, 131177), (3, 98415, 98520), (3, 118098, 118203), (3, 137781, 137886), (3, 157464, 157569), (3, 177147, 177252), (3, 118098, 118203), (3, 177147, 177252), (3, 177147, 177252), (5, 93750, 93855), (5, 109375, 109480), (5, 125000, 125105), (5, 140625, 140730), (5, 156250, 156355), (5, 171875, 171980), (5, 156250, 156355), (7, 100842, 100947), (7, 117649, 117754), (7, 134456, 134561), (7, 151263, 151368), (7, 168070, 168175), (7, 117649, 117754), (11, 102487, 102592), (11, 117128, 117233), (11, 131769, 131874), (11, 146410, 146515), (11, 161051, 161156), (11, 175692, 175797), (11, 161051, 161156), (13, 114244, 114349), (13, 142805, 142910), (13, 171366, 171471), (17, 167042, 167147), (19, 130321, 130426), (23, 97336, 97441), (23, 109503, 109608), (23, 121670, 121775), (23, 133837, 133942), (23, 146004, 146109), (29, 97556, 97661), (29, 121945, 122050), (29, 146334, 146439), (29, 170723, 170828), (31, 89373, 89478), (31, 119164, 119269), (31, 148955, 149060), (37, 101306, 101411), (37, 151959, 152064), (41, 137842, 137947), (43, 159014, 159119), (47, 103823, 103928), (89, 95052, 95157), (97, 94090, 94195), (97, 103499, 103604), (97, 112908, 113013), (101, 91809, 91914), (101, 102010, 102115), (101, 112211, 112316), (101, 122412, 122517), (103, 95481, 95586), (103, 106090, 106195), (103, 116699, 116804), (103, 127308, 127413)]

def row106_layer003_block000 : List ColouredInterval :=
  [(2, 98304, 98409), (2, 98304, 98409), (2, 131072, 131177), (2, 163840, 163945), (2, 131072, 131177), (2, 131072, 131177), (3, 98415, 98520), (3, 118098, 118203), (3, 137781, 137886), (3, 157464, 157569), (3, 177147, 177252), (3, 118098, 118203), (3, 177147, 177252), (3, 177147, 177252), (5, 93750, 93855), (5, 109375, 109480)]

def row106_layer003_block001 : List ColouredInterval :=
  [(5, 125000, 125105), (5, 140625, 140730), (5, 156250, 156355), (5, 171875, 171980), (5, 156250, 156355), (7, 100842, 100947), (7, 117649, 117754), (7, 134456, 134561), (7, 151263, 151368), (7, 168070, 168175), (7, 117649, 117754), (11, 102487, 102592), (11, 117128, 117233), (11, 131769, 131874), (11, 146410, 146515), (11, 161051, 161156)]

def row106_layer003_block002 : List ColouredInterval :=
  [(11, 175692, 175797), (11, 161051, 161156), (13, 114244, 114349), (13, 142805, 142910), (13, 171366, 171471), (17, 167042, 167147), (19, 130321, 130426), (23, 97336, 97441), (23, 109503, 109608), (23, 121670, 121775), (23, 133837, 133942), (23, 146004, 146109), (29, 97556, 97661), (29, 121945, 122050), (29, 146334, 146439), (29, 170723, 170828)]

def row106_layer003_block003 : List ColouredInterval :=
  [(31, 89373, 89478), (31, 119164, 119269), (31, 148955, 149060), (37, 101306, 101411), (37, 151959, 152064), (41, 137842, 137947), (43, 159014, 159119), (47, 103823, 103928), (89, 95052, 95157), (97, 94090, 94195), (97, 103499, 103604), (97, 112908, 113013), (101, 91809, 91914), (101, 102010, 102115), (101, 112211, 112316), (101, 122412, 122517)]

def row106_layer003_block004 : List ColouredInterval :=
  [(103, 95481, 95586), (103, 106090, 106195), (103, 116699, 116804), (103, 127308, 127413)]

def row106_layer003_chunks : List (List ColouredInterval) :=
  [row106_layer003_block000, row106_layer003_block001, row106_layer003_block002, row106_layer003_block003, row106_layer003_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_arithmetic : LayerArithmeticValid row106.height { lower := 89040, upper := 178080, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row106_layer003_enumeration :
    activePowerIntervalList 106 12 89040 178080 = row106_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row106_layer003_enumeration
