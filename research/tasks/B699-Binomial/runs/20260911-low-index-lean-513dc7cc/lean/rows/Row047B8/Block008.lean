import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_pairs007 :
    row047_layer002_block007.all (fun I => row047_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_pairs008 :
    row047_layer002_block008.all (fun I => row047_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_pairs009 :
    row047_layer002_block009.all (fun I => row047_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_pairs010 :
    row047_layer002_block010.all (fun I => row047_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_pairs011 :
    row047_layer002_block011.all (fun I => row047_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_chunks_eq : row047_layer002_chunks.flatten = row047_layer002_intervals := by
  rfl

theorem row047_layer002_pairs : pairCoverCheck row047_layer002_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer002_chunks_eq
  intro block hblock
  simp only [row047_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row047_layer002_pairs000
  · exact row047_layer002_pairs001
  · exact row047_layer002_pairs002
  · exact row047_layer002_pairs003
  · exact row047_layer002_pairs004
  · exact row047_layer002_pairs005
  · exact row047_layer002_pairs006
  · exact row047_layer002_pairs007
  · exact row047_layer002_pairs008
  · exact row047_layer002_pairs009
  · exact row047_layer002_pairs010
  · exact row047_layer002_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_checked :
    coverLayerCheck row047.height row047.goods { lower := 8648, upper := 17296, M := 30 } = true := by
  exact coverLayerCheck_of_parts row047_layer002_arithmetic row047_layer002_enumeration row047_bounds_eq row047_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer003_intervals : List ColouredInterval :=
  [(2, 17408, 17454), (2, 18432, 18478), (2, 19456, 19502), (2, 20480, 20526), (2, 21504, 21550), (2, 22528, 22574), (2, 23552, 23598), (2, 24576, 24622), (2, 25600, 25646), (2, 26624, 26670), (2, 27648, 27694), (2, 28672, 28718), (2, 18432, 18478), (2, 20480, 20526), (2, 22528, 22574), (2, 24576, 24622), (2, 26624, 26670), (2, 28672, 28718), (2, 30720, 30766), (2, 32768, 32814), (2, 20480, 20526), (2, 24576, 24622), (2, 28672, 28718), (2, 32768, 32814), (2, 24576, 24622), (2, 32768, 32814), (2, 32768, 32814), (2, 32768, 32814), (3, 17496, 17542), (3, 18225, 18271), (3, 18954, 19000), (3, 19683, 19729), (3, 20412, 20458), (3, 17496, 17542), (3, 19683, 19729), (3, 21870, 21916), (3, 24057, 24103), (3, 26244, 26290), (3, 28431, 28477), (3, 30618, 30664), (3, 32805, 32851), (3, 19683, 19729), (3, 26244, 26290), (3, 32805, 32851), (3, 19683, 19729), (5, 17500, 17546), (5, 18750, 18796), (5, 21875, 21921), (5, 25000, 25046), (5, 28125, 28171), (5, 31250, 31296), (5, 34375, 34421), (5, 31250, 31296), (7, 19208, 19254), (7, 21609, 21655), (7, 24010, 24056), (7, 26411, 26457), (7, 28812, 28858), (7, 31213, 31259), (7, 33614, 33660), (7, 33614, 33660), (11, 17303, 17349), (11, 18634, 18680), (11, 19965, 20011), (11, 21296, 21342), (11, 22627, 22673), (11, 23958, 24004), (11, 25289, 25335), (11, 26620, 26666), (11, 27951, 27997), (11, 29282, 29328), (11, 30613, 30659), (11, 31944, 31990), (11, 33275, 33321), (11, 29282, 29328), (13, 17576, 17622), (13, 19773, 19819), (13, 21970, 22016), (13, 24167, 24213), (13, 26364, 26410), (13, 28561, 28607), (13, 30758, 30804), (13, 32955, 33001), (13, 28561, 28607), (17, 19652, 19698), (17, 24565, 24611), (17, 29478, 29524), (17, 34391, 34437), (19, 20577, 20623), (19, 27436, 27482), (19, 34295, 34341), (23, 24334, 24380), (29, 17661, 17707), (29, 18502, 18548), (29, 19343, 19389), (29, 20184, 20230), (29, 21025, 21071), (29, 21866, 21912), (29, 22707, 22753), (29, 23548, 23594), (29, 24389, 24435), (31, 17298, 17344), (31, 18259, 18305), (31, 19220, 19266), (31, 20181, 20227), (31, 21142, 21188), (31, 22103, 22149), (31, 23064, 23110), (31, 24025, 24071), (31, 24986, 25032), (31, 25947, 25993), (31, 26908, 26954), (31, 29791, 29837), (37, 17797, 17843), (37, 19166, 19212), (37, 20535, 20581), (37, 21904, 21950), (37, 23273, 23319), (37, 24642, 24688), (37, 26011, 26057), (37, 27380, 27426), (37, 28749, 28795), (37, 30118, 30164), (37, 31487, 31533), (37, 32856, 32902), (37, 34225, 34271), (41, 18491, 18537), (41, 20172, 20218), (41, 21853, 21899), (41, 23534, 23580), (41, 25215, 25261), (41, 26896, 26942), (41, 28577, 28623), (41, 30258, 30304), (41, 31939, 31985), (41, 33620, 33666), (43, 18490, 18536), (43, 20339, 20385), (43, 22188, 22234), (43, 24037, 24083), (43, 25886, 25932), (43, 27735, 27781), (43, 29584, 29630), (43, 31433, 31479), (43, 33282, 33328)]

def row047_layer003_block000 : List ColouredInterval :=
  [(2, 17408, 17454), (2, 18432, 18478), (2, 19456, 19502), (2, 20480, 20526), (2, 21504, 21550), (2, 22528, 22574), (2, 23552, 23598), (2, 24576, 24622), (2, 25600, 25646), (2, 26624, 26670), (2, 27648, 27694), (2, 28672, 28718), (2, 18432, 18478), (2, 20480, 20526)]

def row047_layer003_block001 : List ColouredInterval :=
  [(2, 22528, 22574), (2, 24576, 24622), (2, 26624, 26670), (2, 28672, 28718), (2, 30720, 30766), (2, 32768, 32814), (2, 20480, 20526), (2, 24576, 24622), (2, 28672, 28718), (2, 32768, 32814), (2, 24576, 24622), (2, 32768, 32814), (2, 32768, 32814), (2, 32768, 32814)]

def row047_layer003_block002 : List ColouredInterval :=
  [(3, 17496, 17542), (3, 18225, 18271), (3, 18954, 19000), (3, 19683, 19729), (3, 20412, 20458), (3, 17496, 17542), (3, 19683, 19729), (3, 21870, 21916), (3, 24057, 24103), (3, 26244, 26290), (3, 28431, 28477), (3, 30618, 30664), (3, 32805, 32851), (3, 19683, 19729)]

def row047_layer003_block003 : List ColouredInterval :=
  [(3, 26244, 26290), (3, 32805, 32851), (3, 19683, 19729), (5, 17500, 17546), (5, 18750, 18796), (5, 21875, 21921), (5, 25000, 25046), (5, 28125, 28171), (5, 31250, 31296), (5, 34375, 34421), (5, 31250, 31296), (7, 19208, 19254), (7, 21609, 21655), (7, 24010, 24056)]

def row047_layer003_block004 : List ColouredInterval :=
  [(7, 26411, 26457), (7, 28812, 28858), (7, 31213, 31259), (7, 33614, 33660), (7, 33614, 33660), (11, 17303, 17349), (11, 18634, 18680), (11, 19965, 20011), (11, 21296, 21342), (11, 22627, 22673), (11, 23958, 24004), (11, 25289, 25335), (11, 26620, 26666), (11, 27951, 27997)]

def row047_layer003_block005 : List ColouredInterval :=
  [(11, 29282, 29328), (11, 30613, 30659), (11, 31944, 31990), (11, 33275, 33321), (11, 29282, 29328), (13, 17576, 17622), (13, 19773, 19819), (13, 21970, 22016), (13, 24167, 24213), (13, 26364, 26410), (13, 28561, 28607), (13, 30758, 30804), (13, 32955, 33001), (13, 28561, 28607)]

def row047_layer003_block006 : List ColouredInterval :=
  [(17, 19652, 19698), (17, 24565, 24611), (17, 29478, 29524), (17, 34391, 34437), (19, 20577, 20623), (19, 27436, 27482), (19, 34295, 34341), (23, 24334, 24380), (29, 17661, 17707), (29, 18502, 18548), (29, 19343, 19389), (29, 20184, 20230), (29, 21025, 21071), (29, 21866, 21912)]

def row047_layer003_block007 : List ColouredInterval :=
  [(29, 22707, 22753), (29, 23548, 23594), (29, 24389, 24435), (31, 17298, 17344), (31, 18259, 18305), (31, 19220, 19266), (31, 20181, 20227), (31, 21142, 21188), (31, 22103, 22149), (31, 23064, 23110), (31, 24025, 24071), (31, 24986, 25032), (31, 25947, 25993), (31, 26908, 26954)]

def row047_layer003_block008 : List ColouredInterval :=
  [(31, 29791, 29837), (37, 17797, 17843), (37, 19166, 19212), (37, 20535, 20581), (37, 21904, 21950), (37, 23273, 23319), (37, 24642, 24688), (37, 26011, 26057), (37, 27380, 27426), (37, 28749, 28795), (37, 30118, 30164), (37, 31487, 31533), (37, 32856, 32902), (37, 34225, 34271)]

def row047_layer003_block009 : List ColouredInterval :=
  [(41, 18491, 18537), (41, 20172, 20218), (41, 21853, 21899), (41, 23534, 23580), (41, 25215, 25261), (41, 26896, 26942), (41, 28577, 28623), (41, 30258, 30304), (41, 31939, 31985), (41, 33620, 33666), (43, 18490, 18536), (43, 20339, 20385), (43, 22188, 22234), (43, 24037, 24083)]

def row047_layer003_block010 : List ColouredInterval :=
  [(43, 25886, 25932), (43, 27735, 27781), (43, 29584, 29630), (43, 31433, 31479), (43, 33282, 33328)]

def row047_layer003_chunks : List (List ColouredInterval) :=
  [row047_layer003_block000, row047_layer003_block001, row047_layer003_block002, row047_layer003_block003, row047_layer003_block004, row047_layer003_block005, row047_layer003_block006, row047_layer003_block007, row047_layer003_block008, row047_layer003_block009, row047_layer003_block010]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer003_intervals
