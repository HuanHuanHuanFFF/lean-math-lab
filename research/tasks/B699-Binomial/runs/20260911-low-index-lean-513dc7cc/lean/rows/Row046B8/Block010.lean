import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row046B8.Block008
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row046B8.Block009
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row046B8.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row046B8.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row046B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer003_chunks_eq : row046_layer003_chunks.flatten = row046_layer003_intervals := by
  rfl

theorem row046_layer003_pairs : pairCoverCheck row046_layer003_intervals row046_bounds = true := by
  apply pairCoverCheck_of_chunks row046_layer003_chunks_eq
  intro block hblock
  simp only [row046_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row046_layer003_pairs000
  · exact row046_layer003_pairs001
  · exact row046_layer003_pairs002
  · exact row046_layer003_pairs003
  · exact row046_layer003_pairs004
  · exact row046_layer003_pairs005
  · exact row046_layer003_pairs006
  · exact row046_layer003_pairs007
  · exact row046_layer003_pairs008
  · exact row046_layer003_pairs009
  · exact row046_layer003_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer003_checked :
    coverLayerCheck row046.height row046.goods { lower := 16560, upper := 33120, M := 32 } = true := by
  exact coverLayerCheck_of_parts row046_layer003_arithmetic row046_layer003_enumeration row046_bounds_eq row046_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row046_layer004_intervals : List ColouredInterval :=
  [(2, 36864, 36909), (2, 40960, 41005), (2, 45056, 45101), (2, 49152, 49197), (2, 53248, 53293), (2, 57344, 57389), (2, 61440, 61485), (2, 40960, 41005), (2, 49152, 49197), (2, 57344, 57389), (2, 65536, 65581), (2, 49152, 49197), (2, 65536, 65581), (2, 65536, 65581), (2, 65536, 65581), (3, 34992, 35037), (3, 37179, 37224), (3, 39366, 39411), (3, 41553, 41598), (3, 43740, 43785), (3, 45927, 45972), (3, 48114, 48159), (3, 50301, 50346), (3, 52488, 52533), (3, 54675, 54720), (3, 56862, 56907), (3, 59049, 59094), (3, 61236, 61281), (3, 63423, 63468), (3, 65610, 65655), (3, 39366, 39411), (3, 45927, 45972), (3, 52488, 52533), (3, 59049, 59094), (3, 65610, 65655), (3, 39366, 39411), (3, 59049, 59094), (3, 59049, 59094), (5, 34375, 34420), (5, 37500, 37545), (5, 40625, 40670), (5, 43750, 43795), (5, 46875, 46920), (5, 50000, 50045), (5, 53125, 53170), (5, 56250, 56295), (5, 59375, 59420), (5, 62500, 62545), (5, 65625, 65670), (5, 46875, 46920), (5, 62500, 62545), (7, 33614, 33659), (7, 36015, 36060), (7, 38416, 38461), (7, 40817, 40862), (7, 43218, 43263), (7, 45619, 45664), (7, 48020, 48065), (7, 50421, 50466), (7, 52822, 52867), (7, 55223, 55268), (7, 57624, 57669), (7, 60025, 60070), (7, 62426, 62471), (7, 64827, 64872), (7, 33614, 33659), (7, 50421, 50466), (11, 33275, 33320), (11, 34606, 34651), (11, 35937, 35982), (11, 37268, 37313), (11, 38599, 38644), (11, 39930, 39975), (11, 43923, 43968), (11, 58564, 58609), (13, 35152, 35197), (13, 37349, 37394), (13, 39546, 39591), (13, 41743, 41788), (13, 43940, 43985), (13, 46137, 46182), (13, 48334, 48379), (13, 50531, 50576), (13, 52728, 52773), (13, 54925, 54970), (13, 57122, 57167), (13, 59319, 59364), (13, 61516, 61561), (13, 63713, 63758), (13, 65910, 65955), (13, 57122, 57167), (17, 34391, 34436), (17, 39304, 39349), (17, 44217, 44262), (17, 49130, 49175), (17, 54043, 54088), (17, 58956, 59001), (17, 63869, 63914), (19, 34295, 34340), (19, 41154, 41199), (19, 48013, 48058), (19, 54872, 54917), (19, 61731, 61776), (29, 48778, 48823), (31, 59582, 59627), (37, 34225, 34270), (37, 35594, 35639), (37, 36963, 37008), (37, 38332, 38377), (37, 39701, 39746), (37, 41070, 41115), (37, 50653, 50698), (41, 33620, 33665), (41, 35301, 35346), (41, 36982, 37027), (41, 38663, 38708), (41, 40344, 40389), (41, 42025, 42070), (41, 43706, 43751), (41, 45387, 45432), (41, 47068, 47113), (41, 48749, 48794), (41, 50430, 50475), (43, 33282, 33327), (43, 35131, 35176), (43, 36980, 37025), (43, 38829, 38874), (43, 40678, 40723), (43, 42527, 42572), (43, 44376, 44421), (43, 46225, 46270), (43, 48074, 48119), (43, 49923, 49968), (43, 51772, 51817), (43, 53621, 53666), (43, 55470, 55515)]

def row046_layer004_block000 : List ColouredInterval :=
  [(2, 36864, 36909), (2, 40960, 41005), (2, 45056, 45101), (2, 49152, 49197), (2, 53248, 53293), (2, 57344, 57389), (2, 61440, 61485), (2, 40960, 41005), (2, 49152, 49197), (2, 57344, 57389), (2, 65536, 65581), (2, 49152, 49197), (2, 65536, 65581), (2, 65536, 65581), (2, 65536, 65581)]

def row046_layer004_block001 : List ColouredInterval :=
  [(3, 34992, 35037), (3, 37179, 37224), (3, 39366, 39411), (3, 41553, 41598), (3, 43740, 43785), (3, 45927, 45972), (3, 48114, 48159), (3, 50301, 50346), (3, 52488, 52533), (3, 54675, 54720), (3, 56862, 56907), (3, 59049, 59094), (3, 61236, 61281), (3, 63423, 63468), (3, 65610, 65655)]

def row046_layer004_block002 : List ColouredInterval :=
  [(3, 39366, 39411), (3, 45927, 45972), (3, 52488, 52533), (3, 59049, 59094), (3, 65610, 65655), (3, 39366, 39411), (3, 59049, 59094), (3, 59049, 59094), (5, 34375, 34420), (5, 37500, 37545), (5, 40625, 40670), (5, 43750, 43795), (5, 46875, 46920), (5, 50000, 50045), (5, 53125, 53170)]

def row046_layer004_block003 : List ColouredInterval :=
  [(5, 56250, 56295), (5, 59375, 59420), (5, 62500, 62545), (5, 65625, 65670), (5, 46875, 46920), (5, 62500, 62545), (7, 33614, 33659), (7, 36015, 36060), (7, 38416, 38461), (7, 40817, 40862), (7, 43218, 43263), (7, 45619, 45664), (7, 48020, 48065), (7, 50421, 50466), (7, 52822, 52867)]

def row046_layer004_block004 : List ColouredInterval :=
  [(7, 55223, 55268), (7, 57624, 57669), (7, 60025, 60070), (7, 62426, 62471), (7, 64827, 64872), (7, 33614, 33659), (7, 50421, 50466), (11, 33275, 33320), (11, 34606, 34651), (11, 35937, 35982), (11, 37268, 37313), (11, 38599, 38644), (11, 39930, 39975), (11, 43923, 43968), (11, 58564, 58609)]

def row046_layer004_block005 : List ColouredInterval :=
  [(13, 35152, 35197), (13, 37349, 37394), (13, 39546, 39591), (13, 41743, 41788), (13, 43940, 43985), (13, 46137, 46182), (13, 48334, 48379), (13, 50531, 50576), (13, 52728, 52773), (13, 54925, 54970), (13, 57122, 57167), (13, 59319, 59364), (13, 61516, 61561), (13, 63713, 63758), (13, 65910, 65955)]

def row046_layer004_block006 : List ColouredInterval :=
  [(13, 57122, 57167), (17, 34391, 34436), (17, 39304, 39349), (17, 44217, 44262), (17, 49130, 49175), (17, 54043, 54088), (17, 58956, 59001), (17, 63869, 63914), (19, 34295, 34340), (19, 41154, 41199), (19, 48013, 48058), (19, 54872, 54917), (19, 61731, 61776), (29, 48778, 48823), (31, 59582, 59627)]

def row046_layer004_block007 : List ColouredInterval :=
  [(37, 34225, 34270), (37, 35594, 35639), (37, 36963, 37008), (37, 38332, 38377), (37, 39701, 39746), (37, 41070, 41115), (37, 50653, 50698), (41, 33620, 33665), (41, 35301, 35346), (41, 36982, 37027), (41, 38663, 38708), (41, 40344, 40389), (41, 42025, 42070), (41, 43706, 43751), (41, 45387, 45432)]

def row046_layer004_block008 : List ColouredInterval :=
  [(41, 47068, 47113), (41, 48749, 48794), (41, 50430, 50475), (43, 33282, 33327), (43, 35131, 35176), (43, 36980, 37025), (43, 38829, 38874), (43, 40678, 40723), (43, 42527, 42572), (43, 44376, 44421), (43, 46225, 46270), (43, 48074, 48119), (43, 49923, 49968), (43, 51772, 51817), (43, 53621, 53666)]

def row046_layer004_block009 : List ColouredInterval :=
  [(43, 55470, 55515)]

def row046_layer004_chunks : List (List ColouredInterval) :=
  [row046_layer004_block000, row046_layer004_block001, row046_layer004_block002, row046_layer004_block003, row046_layer004_block004, row046_layer004_block005, row046_layer004_block006, row046_layer004_block007, row046_layer004_block008, row046_layer004_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer004_arithmetic : LayerArithmeticValid row046.height { lower := 33120, upper := 66240, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer004_enumeration :
    activePowerIntervalList 46 30 33120 66240 = row046_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer004_pairs000 :
    row046_layer004_block000.all (fun I => row046_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row046_layer004_pairs001 :
    row046_layer004_block001.all (fun I => row046_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row046_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row046_layer004_pairs001
