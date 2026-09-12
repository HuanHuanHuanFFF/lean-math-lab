import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block003
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block002

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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs001 :
    row049_layer016_block001.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs002 :
    row049_layer016_block002.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs003 :
    row049_layer016_block003.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_pairs004 :
    row049_layer016_block004.all (fun I => row049_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_chunks_eq : row049_layer016_chunks.flatten = row049_layer016_intervals := by
  rfl

theorem row049_layer016_pairs : pairCoverCheck row049_layer016_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer016_chunks_eq
  intro block hblock
  simp only [row049_layer016_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer016_pairs000
  · exact row049_layer016_pairs001
  · exact row049_layer016_pairs002
  · exact row049_layer016_pairs003
  · exact row049_layer016_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer016_checked :
    coverLayerCheck row049.height row049.goods { lower := 154140672, upper := 308281344, M := 18 } = true := by
  exact coverLayerCheck_of_parts row049_layer016_arithmetic row049_layer016_enumeration row049_bounds_eq row049_layer016_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer017_intervals : List ColouredInterval :=
  [(2, 335544320, 335544368), (2, 369098752, 369098800), (2, 402653184, 402653232), (2, 436207616, 436207664), (2, 469762048, 469762096), (2, 503316480, 503316528), (2, 536870912, 536870960), (2, 570425344, 570425392), (2, 603979776, 603979824), (2, 335544320, 335544368), (2, 402653184, 402653232), (2, 469762048, 469762096), (2, 536870912, 536870960), (2, 603979776, 603979824), (2, 402653184, 402653232), (2, 536870912, 536870960), (2, 536870912, 536870960), (2, 536870912, 536870960), (3, 344373768, 344373816), (3, 387420489, 387420537), (3, 430467210, 430467258), (3, 473513931, 473513979), (3, 516560652, 516560700), (3, 559607373, 559607421), (3, 602654094, 602654142), (3, 387420489, 387420537), (3, 516560652, 516560700), (3, 387420489, 387420537), (5, 341796875, 341796923), (5, 390625000, 390625048), (5, 439453125, 439453173), (5, 488281250, 488281298), (5, 537109375, 537109423), (5, 585937500, 585937548), (5, 488281250, 488281298), (11, 311794736, 311794784), (11, 331281907, 331281955), (11, 350769078, 350769126), (11, 428717762, 428717810), (13, 313742585, 313742633), (13, 376491102, 376491150), (13, 439239619, 439239667), (13, 501988136, 501988184), (13, 564736653, 564736701), (17, 313788397, 313788445), (17, 337925966, 337926014), (17, 362063535, 362063583), (17, 386201104, 386201152), (17, 410338673, 410338721), (17, 434476242, 434476290), (17, 410338673, 410338721), (19, 329321167, 329321215), (19, 376367048, 376367096), (19, 423412929, 423412977), (19, 470458810, 470458858), (19, 517504691, 517504739), (19, 564550572, 564550620), (19, 611596453, 611596501), (23, 444107667, 444107715), (23, 592143556, 592143604), (29, 328178384, 328178432), (29, 348689533, 348689581), (29, 369200682, 369200730), (29, 594823321, 594823369), (31, 314920661, 314920709), (31, 343549812, 343549860), (31, 372178963, 372179011), (31, 400808114, 400808162), (31, 429437265, 429437313), (31, 458066416, 458066464), (31, 486695567, 486695615), (31, 515324718, 515324766), (37, 346719785, 346719833), (37, 416063742, 416063790), (37, 485407699, 485407747), (37, 554751656, 554751704), (41, 347568603, 347568651), (41, 463424804, 463424852), (41, 579281005, 579281053), (43, 441025329, 441025377), (43, 588033772, 588033820), (47, 458690014, 458690062)]

def row049_layer017_block000 : List ColouredInterval :=
  [(2, 335544320, 335544368), (2, 369098752, 369098800), (2, 402653184, 402653232), (2, 436207616, 436207664), (2, 469762048, 469762096), (2, 503316480, 503316528), (2, 536870912, 536870960), (2, 570425344, 570425392), (2, 603979776, 603979824), (2, 335544320, 335544368), (2, 402653184, 402653232), (2, 469762048, 469762096), (2, 536870912, 536870960), (2, 603979776, 603979824), (2, 402653184, 402653232), (2, 536870912, 536870960)]

def row049_layer017_block001 : List ColouredInterval :=
  [(2, 536870912, 536870960), (2, 536870912, 536870960), (3, 344373768, 344373816), (3, 387420489, 387420537), (3, 430467210, 430467258), (3, 473513931, 473513979), (3, 516560652, 516560700), (3, 559607373, 559607421), (3, 602654094, 602654142), (3, 387420489, 387420537), (3, 516560652, 516560700), (3, 387420489, 387420537), (5, 341796875, 341796923), (5, 390625000, 390625048), (5, 439453125, 439453173), (5, 488281250, 488281298)]

def row049_layer017_block002 : List ColouredInterval :=
  [(5, 537109375, 537109423), (5, 585937500, 585937548), (5, 488281250, 488281298), (11, 311794736, 311794784), (11, 331281907, 331281955), (11, 350769078, 350769126), (11, 428717762, 428717810), (13, 313742585, 313742633), (13, 376491102, 376491150), (13, 439239619, 439239667), (13, 501988136, 501988184), (13, 564736653, 564736701), (17, 313788397, 313788445), (17, 337925966, 337926014), (17, 362063535, 362063583), (17, 386201104, 386201152)]

def row049_layer017_block003 : List ColouredInterval :=
  [(17, 410338673, 410338721), (17, 434476242, 434476290), (17, 410338673, 410338721), (19, 329321167, 329321215), (19, 376367048, 376367096), (19, 423412929, 423412977), (19, 470458810, 470458858), (19, 517504691, 517504739), (19, 564550572, 564550620), (19, 611596453, 611596501), (23, 444107667, 444107715), (23, 592143556, 592143604), (29, 328178384, 328178432), (29, 348689533, 348689581), (29, 369200682, 369200730), (29, 594823321, 594823369)]

def row049_layer017_block004 : List ColouredInterval :=
  [(31, 314920661, 314920709), (31, 343549812, 343549860), (31, 372178963, 372179011), (31, 400808114, 400808162), (31, 429437265, 429437313), (31, 458066416, 458066464), (31, 486695567, 486695615), (31, 515324718, 515324766), (37, 346719785, 346719833), (37, 416063742, 416063790), (37, 485407699, 485407747), (37, 554751656, 554751704), (41, 347568603, 347568651), (41, 463424804, 463424852), (41, 579281005, 579281053), (43, 441025329, 441025377)]

def row049_layer017_block005 : List ColouredInterval :=
  [(43, 588033772, 588033820), (47, 458690014, 458690062)]

def row049_layer017_chunks : List (List ColouredInterval) :=
  [row049_layer017_block000, row049_layer017_block001, row049_layer017_block002, row049_layer017_block003, row049_layer017_block004, row049_layer017_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_arithmetic : LayerArithmeticValid row049.height { lower := 308281344, upper := 616562688, M := 18 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_enumeration :
    activePowerIntervalList 49 18 308281344 616562688 = row049_layer017_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs000 :
    row049_layer017_block000.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs001 :
    row049_layer017_block001.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs002 :
    row049_layer017_block002.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs003 :
    row049_layer017_block003.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs004 :
    row049_layer017_block004.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_pairs005 :
    row049_layer017_block005.all (fun I => row049_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_chunks_eq : row049_layer017_chunks.flatten = row049_layer017_intervals := by
  rfl

theorem row049_layer017_pairs : pairCoverCheck row049_layer017_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer017_chunks_eq
  intro block hblock
  simp only [row049_layer017_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer017_pairs000
  · exact row049_layer017_pairs001
  · exact row049_layer017_pairs002
  · exact row049_layer017_pairs003
  · exact row049_layer017_pairs004
  · exact row049_layer017_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer017_checked :
    coverLayerCheck row049.height row049.goods { lower := 308281344, upper := 616562688, M := 18 } = true := by
  exact coverLayerCheck_of_parts row049_layer017_arithmetic row049_layer017_enumeration row049_bounds_eq row049_layer017_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer018_intervals : List ColouredInterval :=
  [(2, 671088640, 671088688), (2, 738197504, 738197552), (2, 805306368, 805306416), (2, 872415232, 872415280), (2, 939524096, 939524144), (2, 1006632960, 1006633008), (2, 1073741824, 1073741872), (2, 1140850688, 1140850736), (2, 671088640, 671088688), (2, 805306368, 805306416), (2, 939524096, 939524144), (2, 1073741824, 1073741872), (2, 1207959552, 1207959600), (2, 805306368, 805306416), (2, 1073741824, 1073741872), (2, 1073741824, 1073741872), (2, 1073741824, 1073741872), (3, 645700815, 645700863), (3, 688747536, 688747584), (3, 731794257, 731794305), (3, 645700815, 645700863), (3, 774840978, 774841026), (3, 903981141, 903981189), (3, 1033121304, 1033121352), (3, 1162261467, 1162261515), (3, 774840978, 774841026), (3, 1162261467, 1162261515), (3, 1162261467, 1162261515), (5, 634765625, 634765673), (5, 683593750, 683593798), (5, 732421875, 732421923), (5, 781250000, 781250048), (5, 830078125, 830078173), (5, 732421875, 732421923), (5, 976562500, 976562548), (5, 1220703125, 1220703173), (5, 1220703125, 1220703173), (11, 643076643, 643076691), (11, 857435524, 857435572), (11, 1071794405, 1071794453), (13, 627485170, 627485218), (13, 690233687, 690233735), (13, 752982204, 752982252), (13, 815730721, 815730769), (13, 878479238, 878479286), (13, 941227755, 941227803), (13, 1003976272, 1003976320), (13, 1066724789, 1066724837), (13, 815730721, 815730769), (17, 820677346, 820677394), (17, 1231016019, 1231016067), (19, 658642334, 658642382), (19, 705688215, 705688263), (19, 752734096, 752734144), (19, 799779977, 799780025), (19, 893871739, 893871787), (23, 740179445, 740179493), (23, 888215334, 888215382), (23, 1036251223, 1036251271), (23, 1184287112, 1184287160), (29, 1189646642, 1189646690), (31, 887503681, 887503729), (37, 624095613, 624095661), (37, 693439570, 693439618), (37, 762783527, 762783575), (37, 832127484, 832127532), (37, 901471441, 901471489), (37, 970815398, 970815446), (37, 1040159355, 1040159403), (37, 1109503312, 1109503360), (37, 1178847269, 1178847317), (41, 695137206, 695137254), (41, 810993407, 810993455), (41, 926849608, 926849656), (41, 1042705809, 1042705857), (41, 1158562010, 1158562058), (43, 735042215, 735042263), (43, 882050658, 882050706), (43, 1029059101, 1029059149), (43, 1176067544, 1176067592), (47, 688035021, 688035069), (47, 917380028, 917380076), (47, 1146725035, 1146725083)]

def row049_layer018_block000 : List ColouredInterval :=
  [(2, 671088640, 671088688), (2, 738197504, 738197552), (2, 805306368, 805306416), (2, 872415232, 872415280), (2, 939524096, 939524144), (2, 1006632960, 1006633008), (2, 1073741824, 1073741872), (2, 1140850688, 1140850736), (2, 671088640, 671088688), (2, 805306368, 805306416), (2, 939524096, 939524144), (2, 1073741824, 1073741872), (2, 1207959552, 1207959600), (2, 805306368, 805306416), (2, 1073741824, 1073741872), (2, 1073741824, 1073741872)]

def row049_layer018_block001 : List ColouredInterval :=
  [(2, 1073741824, 1073741872), (3, 645700815, 645700863), (3, 688747536, 688747584), (3, 731794257, 731794305), (3, 645700815, 645700863), (3, 774840978, 774841026), (3, 903981141, 903981189), (3, 1033121304, 1033121352), (3, 1162261467, 1162261515), (3, 774840978, 774841026), (3, 1162261467, 1162261515), (3, 1162261467, 1162261515), (5, 634765625, 634765673), (5, 683593750, 683593798), (5, 732421875, 732421923), (5, 781250000, 781250048)]

def row049_layer018_block002 : List ColouredInterval :=
  [(5, 830078125, 830078173), (5, 732421875, 732421923), (5, 976562500, 976562548), (5, 1220703125, 1220703173), (5, 1220703125, 1220703173), (11, 643076643, 643076691), (11, 857435524, 857435572), (11, 1071794405, 1071794453), (13, 627485170, 627485218), (13, 690233687, 690233735), (13, 752982204, 752982252), (13, 815730721, 815730769), (13, 878479238, 878479286), (13, 941227755, 941227803), (13, 1003976272, 1003976320), (13, 1066724789, 1066724837)]

def row049_layer018_block003 : List ColouredInterval :=
  [(13, 815730721, 815730769), (17, 820677346, 820677394), (17, 1231016019, 1231016067), (19, 658642334, 658642382), (19, 705688215, 705688263), (19, 752734096, 752734144), (19, 799779977, 799780025), (19, 893871739, 893871787), (23, 740179445, 740179493), (23, 888215334, 888215382), (23, 1036251223, 1036251271), (23, 1184287112, 1184287160), (29, 1189646642, 1189646690), (31, 887503681, 887503729), (37, 624095613, 624095661), (37, 693439570, 693439618)]

def row049_layer018_block004 : List ColouredInterval :=
  [(37, 762783527, 762783575), (37, 832127484, 832127532), (37, 901471441, 901471489), (37, 970815398, 970815446), (37, 1040159355, 1040159403), (37, 1109503312, 1109503360), (37, 1178847269, 1178847317), (41, 695137206, 695137254), (41, 810993407, 810993455), (41, 926849608, 926849656), (41, 1042705809, 1042705857), (41, 1158562010, 1158562058), (43, 735042215, 735042263), (43, 882050658, 882050706), (43, 1029059101, 1029059149), (43, 1176067544, 1176067592)]

def row049_layer018_block005 : List ColouredInterval :=
  [(47, 688035021, 688035069), (47, 917380028, 917380076), (47, 1146725035, 1146725083)]

def row049_layer018_chunks : List (List ColouredInterval) :=
  [row049_layer018_block000, row049_layer018_block001, row049_layer018_block002, row049_layer018_block003, row049_layer018_block004, row049_layer018_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_arithmetic : LayerArithmeticValid row049.height { lower := 616562688, upper := 1233125376, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_enumeration :
    activePowerIntervalList 49 17 616562688 1233125376 = row049_layer018_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs000 :
    row049_layer018_block000.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs001 :
    row049_layer018_block001.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs002 :
    row049_layer018_block002.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs003 :
    row049_layer018_block003.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs004 :
    row049_layer018_block004.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_pairs005 :
    row049_layer018_block005.all (fun I => row049_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_chunks_eq : row049_layer018_chunks.flatten = row049_layer018_intervals := by
  rfl

theorem row049_layer018_pairs : pairCoverCheck row049_layer018_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer018_chunks_eq
  intro block hblock
  simp only [row049_layer018_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer018_pairs000
  · exact row049_layer018_pairs001
  · exact row049_layer018_pairs002
  · exact row049_layer018_pairs003
  · exact row049_layer018_pairs004
  · exact row049_layer018_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer018_checked :
    coverLayerCheck row049.height row049.goods { lower := 616562688, upper := 1233125376, M := 17 } = true := by
  exact coverLayerCheck_of_parts row049_layer018_arithmetic row049_layer018_enumeration row049_bounds_eq row049_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer019_intervals : List ColouredInterval :=
  [(2, 1342177280, 1342177328), (2, 1476395008, 1476395056), (2, 1610612736, 1610612784), (2, 1744830464, 1744830512), (2, 1879048192, 1879048240), (2, 2013265920, 2013265968), (2, 2147483648, 2147483696), (2, 1342177280, 1342177328), (2, 1610612736, 1610612784), (2, 1879048192, 1879048240), (2, 2147483648, 2147483696), (2, 2415919104, 2415919152), (2, 1610612736, 1610612784), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (3, 1291401630, 1291401678), (3, 1420541793, 1420541841), (3, 1549681956, 1549682004), (3, 1678822119, 1678822167), (3, 1807962282, 1807962330), (3, 1937102445, 1937102493), (3, 2066242608, 2066242656), (3, 1549681956, 1549682004), (3, 1937102445, 1937102493), (3, 2324522934, 2324522982), (3, 2324522934, 2324522982), (5, 1464843750, 1464843798), (5, 1708984375, 1708984423), (5, 1953125000, 1953125048), (5, 2197265625, 2197265673), (5, 2441406250, 2441406298), (5, 2441406250, 2441406298), (11, 1286153286, 1286153334), (11, 1500512167, 1500512215), (11, 1714871048, 1714871096), (11, 1929229929, 1929229977), (11, 2143588810, 2143588858), (11, 2357947691, 2357947739), (11, 2357947691, 2357947739), (13, 1631461442, 1631461490), (13, 2447192163, 2447192211), (17, 1641354692, 1641354740), (17, 2051693365, 2051693413), (17, 2462032038, 2462032086), (19, 1787743478, 1787743526), (23, 1332323001, 1332323049), (23, 1480358890, 1480358938), (23, 1628394779, 1628394827), (23, 1776430668, 1776430716), (23, 1924466557, 1924466605), (23, 2072502446, 2072502494), (23, 2220538335, 2220538383), (23, 2368574224, 2368574272), (29, 1784469963, 1784470011), (29, 2379293284, 2379293332), (31, 1775007362, 1775007410), (41, 1274418211, 1274418259), (41, 1390274412, 1390274460), (41, 1506130613, 1506130661), (41, 1621986814, 1621986862), (41, 1737843015, 1737843063), (41, 1853699216, 1853699264), (43, 1323075987, 1323076035), (43, 1470084430, 1470084478), (43, 1617092873, 1617092921), (43, 1764101316, 1764101364), (43, 1911109759, 1911109807), (43, 2058118202, 2058118250), (43, 2205126645, 2205126693), (43, 2352135088, 2352135136), (47, 1376070042, 1376070090), (47, 1605415049, 1605415097), (47, 1834760056, 1834760104), (47, 2064105063, 2064105111), (47, 2293450070, 2293450118)]

def row049_layer019_block000 : List ColouredInterval :=
  [(2, 1342177280, 1342177328), (2, 1476395008, 1476395056), (2, 1610612736, 1610612784), (2, 1744830464, 1744830512), (2, 1879048192, 1879048240), (2, 2013265920, 2013265968), (2, 2147483648, 2147483696), (2, 1342177280, 1342177328), (2, 1610612736, 1610612784), (2, 1879048192, 1879048240), (2, 2147483648, 2147483696), (2, 2415919104, 2415919152), (2, 1610612736, 1610612784), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696), (2, 2147483648, 2147483696)]

def row049_layer019_block001 : List ColouredInterval :=
  [(3, 1291401630, 1291401678), (3, 1420541793, 1420541841), (3, 1549681956, 1549682004), (3, 1678822119, 1678822167), (3, 1807962282, 1807962330), (3, 1937102445, 1937102493), (3, 2066242608, 2066242656), (3, 1549681956, 1549682004), (3, 1937102445, 1937102493), (3, 2324522934, 2324522982), (3, 2324522934, 2324522982), (5, 1464843750, 1464843798), (5, 1708984375, 1708984423), (5, 1953125000, 1953125048), (5, 2197265625, 2197265673), (5, 2441406250, 2441406298)]

def row049_layer019_block002 : List ColouredInterval :=
  [(5, 2441406250, 2441406298), (11, 1286153286, 1286153334), (11, 1500512167, 1500512215), (11, 1714871048, 1714871096), (11, 1929229929, 1929229977), (11, 2143588810, 2143588858), (11, 2357947691, 2357947739), (11, 2357947691, 2357947739), (13, 1631461442, 1631461490), (13, 2447192163, 2447192211), (17, 1641354692, 1641354740), (17, 2051693365, 2051693413), (17, 2462032038, 2462032086), (19, 1787743478, 1787743526), (23, 1332323001, 1332323049), (23, 1480358890, 1480358938)]

def row049_layer019_block003 : List ColouredInterval :=
  [(23, 1628394779, 1628394827), (23, 1776430668, 1776430716), (23, 1924466557, 1924466605), (23, 2072502446, 2072502494), (23, 2220538335, 2220538383), (23, 2368574224, 2368574272), (29, 1784469963, 1784470011), (29, 2379293284, 2379293332), (31, 1775007362, 1775007410), (41, 1274418211, 1274418259), (41, 1390274412, 1390274460), (41, 1506130613, 1506130661), (41, 1621986814, 1621986862), (41, 1737843015, 1737843063), (41, 1853699216, 1853699264), (43, 1323075987, 1323076035)]

def row049_layer019_block004 : List ColouredInterval :=
  [(43, 1470084430, 1470084478), (43, 1617092873, 1617092921), (43, 1764101316, 1764101364), (43, 1911109759, 1911109807), (43, 2058118202, 2058118250), (43, 2205126645, 2205126693), (43, 2352135088, 2352135136), (47, 1376070042, 1376070090), (47, 1605415049, 1605415097), (47, 1834760056, 1834760104), (47, 2064105063, 2064105111), (47, 2293450070, 2293450118)]

def row049_layer019_chunks : List (List ColouredInterval) :=
  [row049_layer019_block000, row049_layer019_block001, row049_layer019_block002, row049_layer019_block003, row049_layer019_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_arithmetic : LayerArithmeticValid row049.height { lower := 1233125376, upper := 2466250752, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_enumeration :
    activePowerIntervalList 49 16 1233125376 2466250752 = row049_layer019_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs000 :
    row049_layer019_block000.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs001 :
    row049_layer019_block001.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs002 :
    row049_layer019_block002.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs003 :
    row049_layer019_block003.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_pairs004 :
    row049_layer019_block004.all (fun I => row049_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_chunks_eq : row049_layer019_chunks.flatten = row049_layer019_intervals := by
  rfl

theorem row049_layer019_pairs : pairCoverCheck row049_layer019_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer019_chunks_eq
  intro block hblock
  simp only [row049_layer019_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row049_layer019_pairs000
  · exact row049_layer019_pairs001
  · exact row049_layer019_pairs002
  · exact row049_layer019_pairs003
  · exact row049_layer019_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer019_checked :
    coverLayerCheck row049.height row049.goods { lower := 1233125376, upper := 2466250752, M := 16 } = true := by
  exact coverLayerCheck_of_parts row049_layer019_arithmetic row049_layer019_enumeration row049_bounds_eq row049_layer019_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer020_checked :
    coverLayerCheck row049.height row049.goods { lower := 2466250752, upper := 4932501504, M := 15 } = true := by
  decide +kernel

theorem row049_layer021_checked :
    coverLayerCheck row049.height row049.goods { lower := 4932501504, upper := 9865003008, M := 15 } = true := by
  decide +kernel

theorem row049_layer022_checked :
    coverLayerCheck row049.height row049.goods { lower := 9865003008, upper := 19730006016, M := 14 } = true := by
  decide +kernel

theorem row049_layer023_checked :
    coverLayerCheck row049.height row049.goods { lower := 19730006016, upper := 39460012032, M := 13 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer020_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer021_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer022_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer023_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer024_checked :
    coverLayerCheck row049.height row049.goods { lower := 39460012032, upper := 78920024064, M := 13 } = true := by
  decide +kernel

theorem row049_layer025_checked :
    coverLayerCheck row049.height row049.goods { lower := 78920024064, upper := 157840048128, M := 12 } = true := by
  decide +kernel

theorem row049_layer026_checked :
    coverLayerCheck row049.height row049.goods { lower := 157840048128, upper := 315680096256, M := 11 } = true := by
  decide +kernel

theorem row049_layer027_checked :
    coverLayerCheck row049.height row049.goods { lower := 315680096256, upper := 631360192512, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer024_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer025_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer026_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer027_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer028_checked :
    coverLayerCheck row049.height row049.goods { lower := 631360192512, upper := 1262720385024, M := 10 } = true := by
  decide +kernel

theorem row049_layer029_checked :
    coverLayerCheck row049.height row049.goods { lower := 1262720385024, upper := 2525440770048, M := 10 } = true := by
  decide +kernel

theorem row049_layer030_checked :
    coverLayerCheck row049.height row049.goods { lower := 2525440770048, upper := 5050881540096, M := 9 } = true := by
  decide +kernel

theorem row049_layer031_checked :
    coverLayerCheck row049.height row049.goods { lower := 5050881540096, upper := 10101763080192, M := 9 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer028_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer029_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer030_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer031_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer032_checked :
    coverLayerCheck row049.height row049.goods { lower := 10101763080192, upper := 20203526160384, M := 9 } = true := by
  decide +kernel

theorem row049_layer033_checked :
    coverLayerCheck row049.height row049.goods { lower := 20203526160384, upper := 40407052320768, M := 8 } = true := by
  decide +kernel

theorem row049_layer034_checked :
    coverLayerCheck row049.height row049.goods { lower := 40407052320768, upper := 80814104641536, M := 8 } = true := by
  decide +kernel

theorem row049_layer035_checked :
    coverLayerCheck row049.height row049.goods { lower := 80814104641536, upper := 161628209283072, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer032_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer033_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer034_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer035_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer036_checked :
    coverLayerCheck row049.height row049.goods { lower := 161628209283072, upper := 323256418566144, M := 7 } = true := by
  decide +kernel

theorem row049_layer037_checked :
    coverLayerCheck row049.height row049.goods { lower := 323256418566144, upper := 646512837132288, M := 7 } = true := by
  decide +kernel

theorem row049_layer038_checked :
    coverLayerCheck row049.height row049.goods { lower := 646512837132288, upper := 1293025674264576, M := 7 } = true := by
  decide +kernel

theorem row049_layer039_checked :
    coverLayerCheck row049.height row049.goods { lower := 1293025674264576, upper := 2586051348529152, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer036_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer037_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer038_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer039_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer040_checked :
    coverLayerCheck row049.height row049.goods { lower := 2586051348529152, upper := 5172102697058304, M := 6 } = true := by
  decide +kernel

theorem row049_layer041_checked :
    coverLayerCheck row049.height row049.goods { lower := 5172102697058304, upper := 10344205394116608, M := 6 } = true := by
  decide +kernel

theorem row049_layer042_checked :
    coverLayerCheck row049.height row049.goods { lower := 10344205394116608, upper := 20688410788233216, M := 5 } = true := by
  decide +kernel

theorem row049_layer043_checked :
    coverLayerCheck row049.height row049.goods { lower := 20688410788233216, upper := 41376821576466432, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer040_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer041_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer042_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer043_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer044_checked :
    coverLayerCheck row049.height row049.goods { lower := 41376821576466432, upper := 82753643152932864, M := 5 } = true := by
  decide +kernel

theorem row049_layer045_checked :
    coverLayerCheck row049.height row049.goods { lower := 82753643152932864, upper := 165507286305865728, M := 5 } = true := by
  decide +kernel

theorem row049_layer046_checked :
    coverLayerCheck row049.height row049.goods { lower := 165507286305865728, upper := 331014572611731456, M := 5 } = true := by
  decide +kernel

theorem row049_layer047_checked :
    coverLayerCheck row049.height row049.goods { lower := 331014572611731456, upper := 662029145223462912, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer044_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer045_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer046_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer047_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer048_checked :
    coverLayerCheck row049.height row049.goods { lower := 662029145223462912, upper := 1324058290446925824, M := 4 } = true := by
  decide +kernel

theorem row049_layer049_checked :
    coverLayerCheck row049.height row049.goods { lower := 1324058290446925824, upper := 2648116580893851648, M := 4 } = true := by
  decide +kernel

theorem row049_layer050_checked :
    coverLayerCheck row049.height row049.goods { lower := 2648116580893851648, upper := 5296233161787703296, M := 4 } = true := by
  decide +kernel

theorem row049_layer051_checked :
    coverLayerCheck row049.height row049.goods { lower := 5296233161787703296, upper := 10592466323575406592, M := 4 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer048_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer049_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer050_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer051_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer052_checked :
    coverLayerCheck row049.height row049.goods { lower := 10592466323575406592, upper := 21184932647150813184, M := 4 } = true := by
  decide +kernel

theorem row049_layer053_checked :
    coverLayerCheck row049.height row049.goods { lower := 21184932647150813184, upper := 42369865294301626368, M := 3 } = true := by
  decide +kernel

theorem row049_layer054_checked :
    coverLayerCheck row049.height row049.goods { lower := 42369865294301626368, upper := 84739730588603252736, M := 3 } = true := by
  decide +kernel

theorem row049_layer055_checked :
    coverLayerCheck row049.height row049.goods { lower := 84739730588603252736, upper := 169479461177206505472, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer052_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer053_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer054_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer055_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer056_checked :
    coverLayerCheck row049.height row049.goods { lower := 169479461177206505472, upper := 338958922354413010944, M := 3 } = true := by
  decide +kernel

theorem row049_layer057_checked :
    coverLayerCheck row049.height row049.goods { lower := 338958922354413010944, upper := 677917844708826021888, M := 3 } = true := by
  decide +kernel

theorem row049_layer058_checked :
    coverLayerCheck row049.height row049.goods { lower := 677917844708826021888, upper := 1355835689417652043776, M := 3 } = true := by
  decide +kernel

theorem row049_layer059_checked :
    coverLayerCheck row049.height row049.goods { lower := 1355835689417652043776, upper := 2711671378835304087552, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer056_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer057_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer058_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer059_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer060_checked :
    coverLayerCheck row049.height row049.goods { lower := 2711671378835304087552, upper := 5423342757670608175104, M := 3 } = true := by
  decide +kernel

theorem row049_layer061_checked :
    coverLayerCheck row049.height row049.goods { lower := 5423342757670608175104, upper := 10846685515341216350208, M := 2 } = true := by
  decide +kernel

theorem row049_layer062_checked :
    coverLayerCheck row049.height row049.goods { lower := 10846685515341216350208, upper := 21693371030682432700416, M := 2 } = true := by
  decide +kernel

theorem row049_layer063_checked :
    coverLayerCheck row049.height row049.goods { lower := 21693371030682432700416, upper := 43386742061364865400832, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer060_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer061_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer062_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer063_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer064_checked :
    coverLayerCheck row049.height row049.goods { lower := 43386742061364865400832, upper := 86773484122729730801664, M := 2 } = true := by
  decide +kernel

theorem row049_layer065_checked :
    coverLayerCheck row049.height row049.goods { lower := 86773484122729730801664, upper := 173546968245459461603328, M := 2 } = true := by
  decide +kernel

theorem row049_layer066_checked :
    coverLayerCheck row049.height row049.goods { lower := 173546968245459461603328, upper := 347093936490918923206656, M := 2 } = true := by
  decide +kernel

theorem row049_layer067_checked :
    coverLayerCheck row049.height row049.goods { lower := 347093936490918923206656, upper := 694187872981837846413312, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer064_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer065_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer066_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer067_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer068_checked :
    coverLayerCheck row049.height row049.goods { lower := 694187872981837846413312, upper := 1388375745963675692826624, M := 2 } = true := by
  decide +kernel

theorem row049_layer069_checked :
    coverLayerCheck row049.height row049.goods { lower := 1388375745963675692826624, upper := 2776751491927351385653248, M := 2 } = true := by
  decide +kernel

theorem row049_layer070_checked :
    coverLayerCheck row049.height row049.goods { lower := 2776751491927351385653248, upper := 5553502983854702771306496, M := 2 } = true := by
  decide +kernel

theorem row049_layer071_checked :
    coverLayerCheck row049.height row049.goods { lower := 5553502983854702771306496, upper := 11107005967709405542612992, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer068_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer069_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer070_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer071_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer072_checked :
    coverLayerCheck row049.height row049.goods { lower := 11107005967709405542612992, upper := 22214011935418811085225984, M := 2 } = true := by
  decide +kernel

theorem row049_layer073_checked :
    coverLayerCheck row049.height row049.goods { lower := 22214011935418811085225984, upper := 44428023870837622170451968, M := 2 } = true := by
  decide +kernel

theorem row049_layer074_checked :
    coverLayerCheck row049.height row049.goods { lower := 44428023870837622170451968, upper := 88856047741675244340903936, M := 2 } = true := by
  decide +kernel

theorem row049_layer075_checked :
    coverLayerCheck row049.height row049.goods { lower := 88856047741675244340903936, upper := 100000000000000000000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer072_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer073_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer074_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer075_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layers_checked :
    row049.layers.all (coverLayerCheck row049.height row049.goods) = true := by
  change row049_layers.all (coverLayerCheck row049.height row049.goods) = true
  simp only [row049_layers, List.all_cons, List.all_nil,
    row049_layer000_checked,
    row049_layer001_checked,
    row049_layer002_checked,
    row049_layer003_checked,
    row049_layer004_checked,
    row049_layer005_checked,
    row049_layer006_checked,
    row049_layer007_checked,
    row049_layer008_checked,
    row049_layer009_checked,
    row049_layer010_checked,
    row049_layer011_checked,
    row049_layer012_checked,
    row049_layer013_checked,
    row049_layer014_checked,
    row049_layer015_checked,
    row049_layer016_checked,
    row049_layer017_checked,
    row049_layer018_checked,
    row049_layer019_checked,
    row049_layer020_checked,
    row049_layer021_checked,
    row049_layer022_checked,
    row049_layer023_checked,
    row049_layer024_checked,
    row049_layer025_checked,
    row049_layer026_checked,
    row049_layer027_checked,
    row049_layer028_checked,
    row049_layer029_checked,
    row049_layer030_checked,
    row049_layer031_checked,
    row049_layer032_checked,
    row049_layer033_checked,
    row049_layer034_checked,
    row049_layer035_checked,
    row049_layer036_checked,
    row049_layer037_checked,
    row049_layer038_checked,
    row049_layer039_checked,
    row049_layer040_checked,
    row049_layer041_checked,
    row049_layer042_checked,
    row049_layer043_checked,
    row049_layer044_checked,
    row049_layer045_checked,
    row049_layer046_checked,
    row049_layer047_checked,
    row049_layer048_checked,
    row049_layer049_checked,
    row049_layer050_checked,
    row049_layer051_checked,
    row049_layer052_checked,
    row049_layer053_checked,
    row049_layer054_checked,
    row049_layer055_checked,
    row049_layer056_checked,
    row049_layer057_checked,
    row049_layer058_checked,
    row049_layer059_checked,
    row049_layer060_checked,
    row049_layer061_checked,
    row049_layer062_checked,
    row049_layer063_checked,
    row049_layer064_checked,
    row049_layer065_checked,
    row049_layer066_checked,
    row049_layer067_checked,
    row049_layer068_checked,
    row049_layer069_checked,
    row049_layer070_checked,
    row049_layer071_checked,
    row049_layer072_checked,
    row049_layer073_checked,
    row049_layer074_checked,
    row049_layer075_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_checked : finiteCoverRowCheck row049 = true := by
  simp only [finiteCoverRowCheck, row049_registered, row049_goods_checked,
    row049_small_checked, row049_layerCover_checked, row049_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i049 :
    ∀ n j : ℕ, 1 ≤ 49 ∧ 49 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 49 ≤ p ∧ p ∣ Nat.choose n 49 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row049_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i049
