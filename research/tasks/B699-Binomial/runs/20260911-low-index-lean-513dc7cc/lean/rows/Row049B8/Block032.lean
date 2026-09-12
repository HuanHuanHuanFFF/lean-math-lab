import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block031
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block028
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block029
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs004 :
    row049_layer015_block004.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_chunks_eq : row049_layer015_chunks.flatten = row049_layer015_intervals := by
  rfl

theorem row049_layer015_pairs : pairCoverCheck row049_layer015_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer015_chunks_eq
  intro block hblock
  simp only [row049_layer015_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer015_pairs000
  · exact row049_layer015_pairs001
  · exact row049_layer015_pairs002
  · exact row049_layer015_pairs003
  · exact row049_layer015_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_checked :
    coverLayerCheck row049.height row049.goods { lower := 77070336, upper := 154140672, M := 19 } = true := by
  exact coverLayerCheck_of_parts row049_layer015_arithmetic row049_layer015_enumeration row049_bounds_eq row049_layer015_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer016_intervals : List ColouredInterval :=
  [(2, 167772160, 167772208), (2, 184549376, 184549424), (2, 201326592, 201326640), (2, 218103808, 218103856), (2, 234881024, 234881072), (2, 251658240, 251658288), (2, 268435456, 268435504), (2, 285212672, 285212720), (2, 301989888, 301989936), (2, 167772160, 167772208), (2, 201326592, 201326640), (2, 234881024, 234881072), (2, 268435456, 268435504), (2, 301989888, 301989936), (2, 201326592, 201326640), (2, 268435456, 268435504), (2, 268435456, 268435504), (2, 268435456, 268435504), (3, 157837977, 157838025), (3, 172186884, 172186932), (3, 186535791, 186535839), (3, 200884698, 200884746), (3, 215233605, 215233653), (3, 229582512, 229582560), (3, 243931419, 243931467), (3, 258280326, 258280374), (3, 172186884, 172186932), (3, 215233605, 215233653), (3, 258280326, 258280374), (3, 301327047, 301327095), (3, 258280326, 258280374), (5, 156250000, 156250048), (5, 166015625, 166015673), (5, 175781250, 175781298), (5, 195312500, 195312548), (5, 244140625, 244140673), (5, 292968750, 292968798), (5, 244140625, 244140673), (11, 155897368, 155897416), (11, 175384539, 175384587), (11, 194871710, 194871758), (11, 214358881, 214358929), (11, 233846052, 233846100), (11, 253333223, 253333271), (11, 272820394, 272820442), (11, 292307565, 292307613), (11, 214358881, 214358929), (13, 188245551, 188245599), (13, 250994068, 250994116), (17, 168962983, 168963031), (17, 193100552, 193100600), (17, 217238121, 217238169), (17, 241375690, 241375738), (17, 265513259, 265513307), (17, 289650828, 289650876), (19, 188183524, 188183572), (19, 235229405, 235229453), (19, 282275286, 282275334), (23, 296071778, 296071826), (29, 164089192, 164089240), (29, 184600341, 184600389), (29, 205111490, 205111538), (29, 225622639, 225622687), (29, 246133788, 246133836), (29, 266644937, 266644985), (29, 287156086, 287156134), (29, 307667235, 307667283), (31, 171774906, 171774954), (31, 200404057, 200404105), (31, 229033208, 229033256), (31, 257662359, 257662407), (31, 286291510, 286291558), (37, 208031871, 208031919), (37, 277375828, 277375876), (41, 231712402, 231712450), (43, 294016886, 294016934), (47, 229345007, 229345055)]

def row049_layer016_block000 : List ColouredInterval :=
  [(2, 167772160, 167772208), (2, 184549376, 184549424), (2, 201326592, 201326640), (2, 218103808, 218103856), (2, 234881024, 234881072), (2, 251658240, 251658288), (2, 268435456, 268435504), (2, 285212672, 285212720), (2, 301989888, 301989936), (2, 167772160, 167772208), (2, 201326592, 201326640), (2, 234881024, 234881072), (2, 268435456, 268435504), (2, 301989888, 301989936), (2, 201326592, 201326640), (2, 268435456, 268435504)]

def row049_layer016_block001 : List ColouredInterval :=
  [(2, 268435456, 268435504), (2, 268435456, 268435504), (3, 157837977, 157838025), (3, 172186884, 172186932), (3, 186535791, 186535839), (3, 200884698, 200884746), (3, 215233605, 215233653), (3, 229582512, 229582560), (3, 243931419, 243931467), (3, 258280326, 258280374), (3, 172186884, 172186932), (3, 215233605, 215233653), (3, 258280326, 258280374), (3, 301327047, 301327095), (3, 258280326, 258280374), (5, 156250000, 156250048)]

def row049_layer016_block002 : List ColouredInterval :=
  [(5, 166015625, 166015673), (5, 175781250, 175781298), (5, 195312500, 195312548), (5, 244140625, 244140673), (5, 292968750, 292968798), (5, 244140625, 244140673), (11, 155897368, 155897416), (11, 175384539, 175384587), (11, 194871710, 194871758), (11, 214358881, 214358929), (11, 233846052, 233846100), (11, 253333223, 253333271), (11, 272820394, 272820442), (11, 292307565, 292307613), (11, 214358881, 214358929), (13, 188245551, 188245599)]

def row049_layer016_block003 : List ColouredInterval :=
  [(13, 250994068, 250994116), (17, 168962983, 168963031), (17, 193100552, 193100600), (17, 217238121, 217238169), (17, 241375690, 241375738), (17, 265513259, 265513307), (17, 289650828, 289650876), (19, 188183524, 188183572), (19, 235229405, 235229453), (19, 282275286, 282275334), (23, 296071778, 296071826), (29, 164089192, 164089240), (29, 184600341, 184600389), (29, 205111490, 205111538), (29, 225622639, 225622687), (29, 246133788, 246133836)]

def row049_layer016_block004 : List ColouredInterval :=
  [(29, 266644937, 266644985), (29, 287156086, 287156134), (29, 307667235, 307667283), (31, 171774906, 171774954), (31, 200404057, 200404105), (31, 229033208, 229033256), (31, 257662359, 257662407), (31, 286291510, 286291558), (37, 208031871, 208031919), (37, 277375828, 277375876), (41, 231712402, 231712450), (43, 294016886, 294016934), (47, 229345007, 229345055)]

def row049_layer016_chunks : List (List ColouredInterval) :=
  [row049_layer016_block000, row049_layer016_block001, row049_layer016_block002, row049_layer016_block003, row049_layer016_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_arithmetic : LayerArithmeticValid row049.height { lower := 154140672, upper := 308281344, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_enumeration :
    activePowerIntervalList 49 18 154140672 308281344 = row049_layer016_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs000 :
    row049_layer016_block000.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs000
