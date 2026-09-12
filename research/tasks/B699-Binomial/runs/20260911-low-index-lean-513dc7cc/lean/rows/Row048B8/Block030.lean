import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block029
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block026
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block027
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer015_pairs002 :
    row048_layer015_block002.all (fun I => row048_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer015_pairs003 :
    row048_layer015_block003.all (fun I => row048_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer015_pairs004 :
    row048_layer015_block004.all (fun I => row048_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer015_pairs005 :
    row048_layer015_block005.all (fun I => row048_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer015_chunks_eq : row048_layer015_chunks.flatten = row048_layer015_intervals := by
  rfl

theorem row048_layer015_pairs : pairCoverCheck row048_layer015_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer015_chunks_eq
  intro block hblock
  simp only [row048_layer015_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer015_pairs000
  · exact row048_layer015_pairs001
  · exact row048_layer015_pairs002
  · exact row048_layer015_pairs003
  · exact row048_layer015_pairs004
  · exact row048_layer015_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer015_checked :
    coverLayerCheck row048.height row048.goods { lower := 73924608, upper := 147849216, M := 27 } = true := by
  exact coverLayerCheck_of_parts row048_layer015_arithmetic row048_layer015_enumeration row048_bounds_eq row048_layer015_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer016_intervals : List ColouredInterval :=
  [(2, 268435456, 268435503), (3, 172186884, 172186931), (3, 215233605, 215233652), (3, 258280326, 258280373), (3, 258280326, 258280373), (5, 156250000, 156250047), (5, 166015625, 166015672), (5, 175781250, 175781297), (5, 185546875, 185546922), (5, 195312500, 195312547), (5, 205078125, 205078172), (5, 214843750, 214843797), (5, 224609375, 224609422), (5, 234375000, 234375047), (5, 244140625, 244140672), (5, 253906250, 253906297), (5, 195312500, 195312547), (5, 244140625, 244140672), (5, 292968750, 292968797), (5, 244140625, 244140672), (7, 149884826, 149884873), (7, 161414428, 161414475), (7, 201768035, 201768082), (7, 242121642, 242121689), (7, 282475249, 282475296), (7, 282475249, 282475296), (11, 155897368, 155897415), (11, 175384539, 175384586), (11, 194871710, 194871757), (11, 214358881, 214358928), (11, 233846052, 233846099), (11, 253333223, 253333270), (11, 272820394, 272820441), (11, 292307565, 292307612), (11, 214358881, 214358928), (13, 188245551, 188245598), (13, 250994068, 250994115), (17, 168962983, 168963030), (17, 193100552, 193100599), (17, 217238121, 217238168), (17, 241375690, 241375737), (17, 265513259, 265513306), (17, 289650828, 289650875), (19, 188183524, 188183571), (19, 235229405, 235229452), (19, 282275286, 282275333), (23, 148035889, 148035936), (23, 154472232, 154472279), (23, 160908575, 160908622), (23, 167344918, 167344965), (23, 148035889, 148035936), (29, 164089192, 164089239), (29, 184600341, 184600388), (29, 205111490, 205111537), (29, 225622639, 225622686), (29, 246133788, 246133835), (29, 266644937, 266644984), (29, 287156086, 287156133), (31, 171774906, 171774953), (31, 200404057, 200404104), (31, 229033208, 229033255), (31, 257662359, 257662406), (31, 286291510, 286291557), (37, 208031871, 208031918), (37, 277375828, 277375875), (41, 231712402, 231712449), (43, 294016886, 294016933), (47, 229345007, 229345054)]

def row048_layer016_block000 : List ColouredInterval :=
  [(2, 268435456, 268435503), (3, 172186884, 172186931), (3, 215233605, 215233652), (3, 258280326, 258280373), (3, 258280326, 258280373), (5, 156250000, 156250047), (5, 166015625, 166015672), (5, 175781250, 175781297), (5, 185546875, 185546922), (5, 195312500, 195312547), (5, 205078125, 205078172), (5, 214843750, 214843797), (5, 224609375, 224609422), (5, 234375000, 234375047), (5, 244140625, 244140672), (5, 253906250, 253906297)]

def row048_layer016_block001 : List ColouredInterval :=
  [(5, 195312500, 195312547), (5, 244140625, 244140672), (5, 292968750, 292968797), (5, 244140625, 244140672), (7, 149884826, 149884873), (7, 161414428, 161414475), (7, 201768035, 201768082), (7, 242121642, 242121689), (7, 282475249, 282475296), (7, 282475249, 282475296), (11, 155897368, 155897415), (11, 175384539, 175384586), (11, 194871710, 194871757), (11, 214358881, 214358928), (11, 233846052, 233846099), (11, 253333223, 253333270)]

def row048_layer016_block002 : List ColouredInterval :=
  [(11, 272820394, 272820441), (11, 292307565, 292307612), (11, 214358881, 214358928), (13, 188245551, 188245598), (13, 250994068, 250994115), (17, 168962983, 168963030), (17, 193100552, 193100599), (17, 217238121, 217238168), (17, 241375690, 241375737), (17, 265513259, 265513306), (17, 289650828, 289650875), (19, 188183524, 188183571), (19, 235229405, 235229452), (19, 282275286, 282275333), (23, 148035889, 148035936), (23, 154472232, 154472279)]

def row048_layer016_block003 : List ColouredInterval :=
  [(23, 160908575, 160908622), (23, 167344918, 167344965), (23, 148035889, 148035936), (29, 164089192, 164089239), (29, 184600341, 184600388), (29, 205111490, 205111537), (29, 225622639, 225622686), (29, 246133788, 246133835), (29, 266644937, 266644984), (29, 287156086, 287156133), (31, 171774906, 171774953), (31, 200404057, 200404104), (31, 229033208, 229033255), (31, 257662359, 257662406), (31, 286291510, 286291557), (37, 208031871, 208031918)]

def row048_layer016_block004 : List ColouredInterval :=
  [(37, 277375828, 277375875), (41, 231712402, 231712449), (43, 294016886, 294016933), (47, 229345007, 229345054)]

def row048_layer016_chunks : List (List ColouredInterval) :=
  [row048_layer016_block000, row048_layer016_block001, row048_layer016_block002, row048_layer016_block003, row048_layer016_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer016_intervals
