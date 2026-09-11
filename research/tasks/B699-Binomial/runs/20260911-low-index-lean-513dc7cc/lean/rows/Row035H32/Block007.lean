import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block006
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row035H32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_pairs002 :
    row035_layer016_block002.all (fun I => row035_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_pairs003 :
    row035_layer016_block003.all (fun I => row035_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_pairs004 :
    row035_layer016_block004.all (fun I => row035_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_pairs005 :
    row035_layer016_block005.all (fun I => row035_layer016_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_chunks_eq : row035_layer016_chunks.flatten = row035_layer016_intervals := by
  rfl

theorem row035_layer016_pairs : pairCoverCheck row035_layer016_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer016_chunks_eq
  intro block hblock
  simp only [row035_layer016_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer016_pairs000
  · exact row035_layer016_pairs001
  · exact row035_layer016_pairs002
  · exact row035_layer016_pairs003
  · exact row035_layer016_pairs004
  · exact row035_layer016_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer016_checked :
    coverLayerCheck row035.height row035.goods { lower := 77987840, upper := 155975680, M := 26 } = true := by
  exact coverLayerCheck_of_parts row035_layer016_arithmetic row035_layer016_enumeration row035_bounds_eq row035_layer016_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer017_intervals : List ColouredInterval :=
  [(2, 159383552, 159383586), (2, 167772160, 167772194), (2, 176160768, 176160802), (2, 184549376, 184549410), (2, 192937984, 192938018), (2, 201326592, 201326626), (2, 209715200, 209715234), (2, 167772160, 167772194), (2, 184549376, 184549410), (2, 201326592, 201326626), (2, 218103808, 218103842), (2, 234881024, 234881058), (2, 251658240, 251658274), (2, 268435456, 268435490), (2, 285212672, 285212706), (2, 301989888, 301989922), (2, 167772160, 167772194), (2, 201326592, 201326626), (2, 234881024, 234881058), (2, 268435456, 268435490), (2, 301989888, 301989922), (2, 201326592, 201326626), (2, 268435456, 268435490), (2, 268435456, 268435490), (2, 268435456, 268435490), (3, 157837977, 157838011), (3, 172186884, 172186918), (3, 186535791, 186535825), (3, 200884698, 200884732), (3, 215233605, 215233639), (3, 229582512, 229582546), (3, 243931419, 243931453), (3, 258280326, 258280360), (3, 272629233, 272629267), (3, 286978140, 286978174), (3, 301327047, 301327081), (3, 172186884, 172186918), (3, 215233605, 215233639), (3, 258280326, 258280360), (3, 301327047, 301327081), (3, 258280326, 258280360), (5, 195312500, 195312534), (5, 244140625, 244140659), (5, 244140625, 244140659), (7, 282475249, 282475283), (11, 175384539, 175384573), (11, 194871710, 194871744), (11, 214358881, 214358915), (11, 233846052, 233846086), (11, 253333223, 253333257), (11, 272820394, 272820428), (11, 292307565, 292307599), (11, 311794736, 311794770), (11, 214358881, 214358915), (13, 188245551, 188245585), (13, 250994068, 250994102), (17, 168962983, 168963017), (17, 193100552, 193100586), (17, 217238121, 217238155), (17, 241375690, 241375724), (17, 265513259, 265513293), (17, 289650828, 289650862), (19, 188183524, 188183558), (19, 235229405, 235229439), (19, 282275286, 282275320), (23, 160908575, 160908609), (23, 296071778, 296071812), (29, 164089192, 164089226), (29, 184600341, 184600375), (29, 205111490, 205111524), (29, 225622639, 225622673), (29, 246133788, 246133822), (29, 266644937, 266644971), (29, 287156086, 287156120), (29, 307667235, 307667269), (31, 171774906, 171774940), (31, 200404057, 200404091), (31, 229033208, 229033242), (31, 257662359, 257662393), (31, 286291510, 286291544)]

def row035_layer017_block000 : List ColouredInterval :=
  [(2, 159383552, 159383586), (2, 167772160, 167772194), (2, 176160768, 176160802), (2, 184549376, 184549410), (2, 192937984, 192938018), (2, 201326592, 201326626), (2, 209715200, 209715234), (2, 167772160, 167772194), (2, 184549376, 184549410), (2, 201326592, 201326626), (2, 218103808, 218103842), (2, 234881024, 234881058), (2, 251658240, 251658274), (2, 268435456, 268435490), (2, 285212672, 285212706), (2, 301989888, 301989922)]

def row035_layer017_block001 : List ColouredInterval :=
  [(2, 167772160, 167772194), (2, 201326592, 201326626), (2, 234881024, 234881058), (2, 268435456, 268435490), (2, 301989888, 301989922), (2, 201326592, 201326626), (2, 268435456, 268435490), (2, 268435456, 268435490), (2, 268435456, 268435490), (3, 157837977, 157838011), (3, 172186884, 172186918), (3, 186535791, 186535825), (3, 200884698, 200884732), (3, 215233605, 215233639), (3, 229582512, 229582546), (3, 243931419, 243931453)]

def row035_layer017_block002 : List ColouredInterval :=
  [(3, 258280326, 258280360), (3, 272629233, 272629267), (3, 286978140, 286978174), (3, 301327047, 301327081), (3, 172186884, 172186918), (3, 215233605, 215233639), (3, 258280326, 258280360), (3, 301327047, 301327081), (3, 258280326, 258280360), (5, 195312500, 195312534), (5, 244140625, 244140659), (5, 244140625, 244140659), (7, 282475249, 282475283), (11, 175384539, 175384573), (11, 194871710, 194871744), (11, 214358881, 214358915)]

def row035_layer017_block003 : List ColouredInterval :=
  [(11, 233846052, 233846086), (11, 253333223, 253333257), (11, 272820394, 272820428), (11, 292307565, 292307599), (11, 311794736, 311794770), (11, 214358881, 214358915), (13, 188245551, 188245585), (13, 250994068, 250994102), (17, 168962983, 168963017), (17, 193100552, 193100586), (17, 217238121, 217238155), (17, 241375690, 241375724), (17, 265513259, 265513293), (17, 289650828, 289650862), (19, 188183524, 188183558), (19, 235229405, 235229439)]

def row035_layer017_block004 : List ColouredInterval :=
  [(19, 282275286, 282275320), (23, 160908575, 160908609), (23, 296071778, 296071812), (29, 164089192, 164089226), (29, 184600341, 184600375), (29, 205111490, 205111524), (29, 225622639, 225622673), (29, 246133788, 246133822), (29, 266644937, 266644971), (29, 287156086, 287156120), (29, 307667235, 307667269), (31, 171774906, 171774940), (31, 200404057, 200404091), (31, 229033208, 229033242), (31, 257662359, 257662393), (31, 286291510, 286291544)]

def row035_layer017_chunks : List (List ColouredInterval) :=
  [row035_layer017_block000, row035_layer017_block001, row035_layer017_block002, row035_layer017_block003, row035_layer017_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_arithmetic : LayerArithmeticValid row035.height { lower := 155975680, upper := 311951360, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_enumeration :
    activePowerIntervalList 35 25 155975680 311951360 = row035_layer017_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_pairs000 :
    row035_layer017_block000.all (fun I => row035_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_pairs001 :
    row035_layer017_block001.all (fun I => row035_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_pairs002 :
    row035_layer017_block002.all (fun I => row035_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_pairs003 :
    row035_layer017_block003.all (fun I => row035_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_pairs004 :
    row035_layer017_block004.all (fun I => row035_layer017_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_chunks_eq : row035_layer017_chunks.flatten = row035_layer017_intervals := by
  rfl

theorem row035_layer017_pairs : pairCoverCheck row035_layer017_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer017_chunks_eq
  intro block hblock
  simp only [row035_layer017_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer017_pairs000
  · exact row035_layer017_pairs001
  · exact row035_layer017_pairs002
  · exact row035_layer017_pairs003
  · exact row035_layer017_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer017_checked :
    coverLayerCheck row035.height row035.goods { lower := 155975680, upper := 311951360, M := 25 } = true := by
  exact coverLayerCheck_of_parts row035_layer017_arithmetic row035_layer017_enumeration row035_bounds_eq row035_layer017_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer018_intervals : List ColouredInterval :=
  [(2, 318767104, 318767138), (2, 335544320, 335544354), (2, 352321536, 352321570), (2, 369098752, 369098786), (2, 385875968, 385876002), (2, 402653184, 402653218), (2, 419430400, 419430434), (2, 335544320, 335544354), (2, 369098752, 369098786), (2, 402653184, 402653218), (2, 436207616, 436207650), (2, 469762048, 469762082), (2, 503316480, 503316514), (2, 536870912, 536870946), (2, 570425344, 570425378), (2, 603979776, 603979810), (2, 335544320, 335544354), (2, 402653184, 402653218), (2, 469762048, 469762082), (2, 536870912, 536870946), (2, 603979776, 603979810), (2, 402653184, 402653218), (2, 536870912, 536870946), (2, 536870912, 536870946), (2, 536870912, 536870946), (3, 315675954, 315675988), (3, 330024861, 330024895), (3, 344373768, 344373802), (3, 358722675, 358722709), (3, 344373768, 344373802), (3, 387420489, 387420523), (3, 430467210, 430467244), (3, 473513931, 473513965), (3, 516560652, 516560686), (3, 559607373, 559607407), (3, 602654094, 602654128), (3, 387420489, 387420523), (3, 516560652, 516560686), (3, 387420489, 387420523), (5, 488281250, 488281284), (7, 564950498, 564950532), (11, 331281907, 331281941), (11, 350769078, 350769112), (11, 370256249, 370256283), (11, 389743420, 389743454), (11, 409230591, 409230625), (11, 428717762, 428717796), (11, 448204933, 448204967), (11, 467692104, 467692138), (11, 487179275, 487179309), (11, 428717762, 428717796), (13, 313742585, 313742619), (13, 376491102, 376491136), (13, 439239619, 439239653), (13, 501988136, 501988170), (13, 564736653, 564736687), (17, 313788397, 313788431), (17, 337925966, 337926000), (17, 362063535, 362063569), (17, 386201104, 386201138), (17, 410338673, 410338707), (17, 434476242, 434476276), (17, 458613811, 458613845), (17, 482751380, 482751414), (17, 506888949, 506888983), (17, 531026518, 531026552), (17, 555164087, 555164121), (17, 579301656, 579301690), (17, 603439225, 603439259), (17, 410338673, 410338707), (19, 329321167, 329321201), (19, 376367048, 376367082), (19, 423412929, 423412963), (19, 470458810, 470458844), (19, 517504691, 517504725), (19, 564550572, 564550606), (19, 611596453, 611596487), (23, 444107667, 444107701), (23, 592143556, 592143590), (29, 328178384, 328178418), (29, 348689533, 348689567), (29, 369200682, 369200716), (29, 389711831, 389711865), (29, 410222980, 410223014), (29, 430734129, 430734163), (29, 451245278, 451245312), (29, 471756427, 471756461), (29, 492267576, 492267610), (29, 512778725, 512778759), (29, 594823321, 594823355), (31, 314920661, 314920695), (31, 343549812, 343549846), (31, 372178963, 372178997), (31, 400808114, 400808148), (31, 429437265, 429437299), (31, 458066416, 458066450), (31, 486695567, 486695601), (31, 515324718, 515324752), (31, 543953869, 543953903), (31, 572583020, 572583054), (31, 601212171, 601212205)]

def row035_layer018_block000 : List ColouredInterval :=
  [(2, 318767104, 318767138), (2, 335544320, 335544354), (2, 352321536, 352321570), (2, 369098752, 369098786), (2, 385875968, 385876002), (2, 402653184, 402653218), (2, 419430400, 419430434), (2, 335544320, 335544354), (2, 369098752, 369098786), (2, 402653184, 402653218), (2, 436207616, 436207650), (2, 469762048, 469762082), (2, 503316480, 503316514), (2, 536870912, 536870946), (2, 570425344, 570425378), (2, 603979776, 603979810)]

def row035_layer018_block001 : List ColouredInterval :=
  [(2, 335544320, 335544354), (2, 402653184, 402653218), (2, 469762048, 469762082), (2, 536870912, 536870946), (2, 603979776, 603979810), (2, 402653184, 402653218), (2, 536870912, 536870946), (2, 536870912, 536870946), (2, 536870912, 536870946), (3, 315675954, 315675988), (3, 330024861, 330024895), (3, 344373768, 344373802), (3, 358722675, 358722709), (3, 344373768, 344373802), (3, 387420489, 387420523), (3, 430467210, 430467244)]

def row035_layer018_block002 : List ColouredInterval :=
  [(3, 473513931, 473513965), (3, 516560652, 516560686), (3, 559607373, 559607407), (3, 602654094, 602654128), (3, 387420489, 387420523), (3, 516560652, 516560686), (3, 387420489, 387420523), (5, 488281250, 488281284), (7, 564950498, 564950532), (11, 331281907, 331281941), (11, 350769078, 350769112), (11, 370256249, 370256283), (11, 389743420, 389743454), (11, 409230591, 409230625), (11, 428717762, 428717796), (11, 448204933, 448204967)]

def row035_layer018_block003 : List ColouredInterval :=
  [(11, 467692104, 467692138), (11, 487179275, 487179309), (11, 428717762, 428717796), (13, 313742585, 313742619), (13, 376491102, 376491136), (13, 439239619, 439239653), (13, 501988136, 501988170), (13, 564736653, 564736687), (17, 313788397, 313788431), (17, 337925966, 337926000), (17, 362063535, 362063569), (17, 386201104, 386201138), (17, 410338673, 410338707), (17, 434476242, 434476276), (17, 458613811, 458613845), (17, 482751380, 482751414)]

def row035_layer018_block004 : List ColouredInterval :=
  [(17, 506888949, 506888983), (17, 531026518, 531026552), (17, 555164087, 555164121), (17, 579301656, 579301690), (17, 603439225, 603439259), (17, 410338673, 410338707), (19, 329321167, 329321201), (19, 376367048, 376367082), (19, 423412929, 423412963), (19, 470458810, 470458844), (19, 517504691, 517504725), (19, 564550572, 564550606), (19, 611596453, 611596487), (23, 444107667, 444107701), (23, 592143556, 592143590), (29, 328178384, 328178418)]

def row035_layer018_block005 : List ColouredInterval :=
  [(29, 348689533, 348689567), (29, 369200682, 369200716), (29, 389711831, 389711865), (29, 410222980, 410223014), (29, 430734129, 430734163), (29, 451245278, 451245312), (29, 471756427, 471756461), (29, 492267576, 492267610), (29, 512778725, 512778759), (29, 594823321, 594823355), (31, 314920661, 314920695), (31, 343549812, 343549846), (31, 372178963, 372178997), (31, 400808114, 400808148), (31, 429437265, 429437299), (31, 458066416, 458066450)]

def row035_layer018_block006 : List ColouredInterval :=
  [(31, 486695567, 486695601), (31, 515324718, 515324752), (31, 543953869, 543953903), (31, 572583020, 572583054), (31, 601212171, 601212205)]

def row035_layer018_chunks : List (List ColouredInterval) :=
  [row035_layer018_block000, row035_layer018_block001, row035_layer018_block002, row035_layer018_block003, row035_layer018_block004, row035_layer018_block005, row035_layer018_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_arithmetic : LayerArithmeticValid row035.height { lower := 311951360, upper := 623902720, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_enumeration :
    activePowerIntervalList 35 25 311951360 623902720 = row035_layer018_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_pairs000 :
    row035_layer018_block000.all (fun I => row035_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_pairs001 :
    row035_layer018_block001.all (fun I => row035_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_pairs002 :
    row035_layer018_block002.all (fun I => row035_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_pairs003 :
    row035_layer018_block003.all (fun I => row035_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_pairs004 :
    row035_layer018_block004.all (fun I => row035_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_pairs005 :
    row035_layer018_block005.all (fun I => row035_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_pairs006 :
    row035_layer018_block006.all (fun I => row035_layer018_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_chunks_eq : row035_layer018_chunks.flatten = row035_layer018_intervals := by
  rfl

theorem row035_layer018_pairs : pairCoverCheck row035_layer018_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer018_chunks_eq
  intro block hblock
  simp only [row035_layer018_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer018_pairs000
  · exact row035_layer018_pairs001
  · exact row035_layer018_pairs002
  · exact row035_layer018_pairs003
  · exact row035_layer018_pairs004
  · exact row035_layer018_pairs005
  · exact row035_layer018_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer018_checked :
    coverLayerCheck row035.height row035.goods { lower := 311951360, upper := 623902720, M := 25 } = true := by
  exact coverLayerCheck_of_parts row035_layer018_arithmetic row035_layer018_enumeration row035_bounds_eq row035_layer018_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer019_intervals : List ColouredInterval :=
  [(2, 637534208, 637534242), (2, 671088640, 671088674), (2, 704643072, 704643106), (2, 738197504, 738197538), (2, 771751936, 771751970), (2, 805306368, 805306402), (2, 671088640, 671088674), (2, 738197504, 738197538), (2, 805306368, 805306402), (2, 872415232, 872415266), (2, 939524096, 939524130), (2, 1006632960, 1006632994), (2, 1073741824, 1073741858), (2, 1140850688, 1140850722), (2, 1207959552, 1207959586), (2, 671088640, 671088674), (2, 805306368, 805306402), (2, 939524096, 939524130), (2, 1073741824, 1073741858), (2, 1207959552, 1207959586), (2, 805306368, 805306402), (2, 1073741824, 1073741858), (2, 1073741824, 1073741858), (2, 1073741824, 1073741858), (3, 645700815, 645700849), (3, 688747536, 688747570), (3, 731794257, 731794291), (3, 774840978, 774841012), (3, 817887699, 817887733), (3, 860934420, 860934454), (3, 903981141, 903981175), (3, 947027862, 947027896), (3, 990074583, 990074617), (3, 1033121304, 1033121338), (3, 645700815, 645700849), (3, 774840978, 774841012), (3, 903981141, 903981175), (3, 1033121304, 1033121338), (3, 1162261467, 1162261501), (3, 774840978, 774841012), (3, 1162261467, 1162261501), (3, 1162261467, 1162261501), (5, 732421875, 732421909), (5, 976562500, 976562534), (5, 1220703125, 1220703159), (7, 847425747, 847425781), (11, 643076643, 643076677), (11, 857435524, 857435558), (11, 1071794405, 1071794439), (13, 627485170, 627485204), (13, 690233687, 690233721), (13, 752982204, 752982238), (13, 815730721, 815730755), (13, 878479238, 878479272), (13, 941227755, 941227789), (13, 1003976272, 1003976306), (13, 1066724789, 1066724823), (13, 1129473306, 1129473340), (13, 1192221823, 1192221857), (13, 815730721, 815730755), (17, 820677346, 820677380), (17, 1231016019, 1231016053), (19, 658642334, 658642368), (19, 705688215, 705688249), (19, 752734096, 752734130), (19, 799779977, 799780011), (19, 846825858, 846825892), (19, 893871739, 893871773), (19, 940917620, 940917654), (19, 987963501, 987963535), (19, 1035009382, 1035009416), (19, 1082055263, 1082055297), (19, 1129101144, 1129101178), (19, 893871739, 893871773), (23, 740179445, 740179479), (23, 888215334, 888215368), (23, 1036251223, 1036251257), (23, 1184287112, 1184287146), (29, 1189646642, 1189646676), (31, 629841322, 629841356), (31, 658470473, 658470507), (31, 687099624, 687099658), (31, 887503681, 887503715)]

def row035_layer019_block000 : List ColouredInterval :=
  [(2, 637534208, 637534242), (2, 671088640, 671088674), (2, 704643072, 704643106), (2, 738197504, 738197538), (2, 771751936, 771751970), (2, 805306368, 805306402), (2, 671088640, 671088674), (2, 738197504, 738197538), (2, 805306368, 805306402), (2, 872415232, 872415266), (2, 939524096, 939524130), (2, 1006632960, 1006632994), (2, 1073741824, 1073741858), (2, 1140850688, 1140850722), (2, 1207959552, 1207959586), (2, 671088640, 671088674)]

def row035_layer019_block001 : List ColouredInterval :=
  [(2, 805306368, 805306402), (2, 939524096, 939524130), (2, 1073741824, 1073741858), (2, 1207959552, 1207959586), (2, 805306368, 805306402), (2, 1073741824, 1073741858), (2, 1073741824, 1073741858), (2, 1073741824, 1073741858), (3, 645700815, 645700849), (3, 688747536, 688747570), (3, 731794257, 731794291), (3, 774840978, 774841012), (3, 817887699, 817887733), (3, 860934420, 860934454), (3, 903981141, 903981175), (3, 947027862, 947027896)]

def row035_layer019_block002 : List ColouredInterval :=
  [(3, 990074583, 990074617), (3, 1033121304, 1033121338), (3, 645700815, 645700849), (3, 774840978, 774841012), (3, 903981141, 903981175), (3, 1033121304, 1033121338), (3, 1162261467, 1162261501), (3, 774840978, 774841012), (3, 1162261467, 1162261501), (3, 1162261467, 1162261501), (5, 732421875, 732421909), (5, 976562500, 976562534), (5, 1220703125, 1220703159), (7, 847425747, 847425781), (11, 643076643, 643076677), (11, 857435524, 857435558)]

def row035_layer019_block003 : List ColouredInterval :=
  [(11, 1071794405, 1071794439), (13, 627485170, 627485204), (13, 690233687, 690233721), (13, 752982204, 752982238), (13, 815730721, 815730755), (13, 878479238, 878479272), (13, 941227755, 941227789), (13, 1003976272, 1003976306), (13, 1066724789, 1066724823), (13, 1129473306, 1129473340), (13, 1192221823, 1192221857), (13, 815730721, 815730755), (17, 820677346, 820677380), (17, 1231016019, 1231016053), (19, 658642334, 658642368), (19, 705688215, 705688249)]

def row035_layer019_block004 : List ColouredInterval :=
  [(19, 752734096, 752734130), (19, 799779977, 799780011), (19, 846825858, 846825892), (19, 893871739, 893871773), (19, 940917620, 940917654), (19, 987963501, 987963535), (19, 1035009382, 1035009416), (19, 1082055263, 1082055297), (19, 1129101144, 1129101178), (19, 893871739, 893871773), (23, 740179445, 740179479), (23, 888215334, 888215368), (23, 1036251223, 1036251257), (23, 1184287112, 1184287146), (29, 1189646642, 1189646676), (31, 629841322, 629841356)]

def row035_layer019_block005 : List ColouredInterval :=
  [(31, 658470473, 658470507), (31, 687099624, 687099658), (31, 887503681, 887503715)]

def row035_layer019_chunks : List (List ColouredInterval) :=
  [row035_layer019_block000, row035_layer019_block001, row035_layer019_block002, row035_layer019_block003, row035_layer019_block004, row035_layer019_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_arithmetic : LayerArithmeticValid row035.height { lower := 623902720, upper := 1247805440, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_enumeration :
    activePowerIntervalList 35 24 623902720 1247805440 = row035_layer019_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_pairs000 :
    row035_layer019_block000.all (fun I => row035_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs000
