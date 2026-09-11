import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block020
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer010_checked :
    coverLayerCheck row047.height row047.goods { lower := 2213888, upper := 4427776, M := 17 } = true := by
  exact coverLayerCheck_of_parts row047_layer010_arithmetic row047_layer010_enumeration row047_bounds_eq row047_layer010_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer010_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer011_intervals : List ColouredInterval :=
  [(2, 4718592, 4718638), (2, 5242880, 5242926), (2, 5767168, 5767214), (2, 6291456, 6291502), (2, 6815744, 6815790), (2, 7340032, 7340078), (2, 7864320, 7864366), (2, 8388608, 8388654), (2, 5242880, 5242926), (2, 6291456, 6291502), (2, 7340032, 7340078), (2, 8388608, 8388654), (2, 6291456, 6291502), (2, 8388608, 8388654), (2, 8388608, 8388654), (2, 8388608, 8388654), (3, 4782969, 4783015), (3, 5314410, 5314456), (3, 5845851, 5845897), (3, 6377292, 6377338), (3, 6908733, 6908779), (3, 7440174, 7440220), (3, 7971615, 7971661), (3, 8503056, 8503102), (3, 4782969, 4783015), (3, 6377292, 6377338), (3, 7971615, 7971661), (3, 4782969, 4783015), (5, 4687500, 4687546), (5, 5078125, 5078171), (5, 5468750, 5468796), (5, 5859375, 5859421), (5, 6250000, 6250046), (5, 5859375, 5859421), (5, 7812500, 7812546), (7, 4941258, 4941304), (7, 5764801, 5764847), (7, 6588344, 6588390), (7, 7411887, 7411933), (7, 8235430, 8235476), (7, 5764801, 5764847), (11, 5314683, 5314729), (11, 7086244, 7086290), (13, 4455516, 4455562), (13, 4826809, 4826855), (13, 5198102, 5198148), (13, 5569395, 5569441), (13, 5940688, 5940734), (13, 4826809, 4826855), (17, 5679428, 5679474), (17, 7099285, 7099331), (17, 8519142, 8519188), (19, 4952198, 4952244), (19, 7428297, 7428343), (23, 4477456, 4477502), (23, 6436343, 6436389), (29, 4950967, 4951013), (29, 5658248, 5658294), (29, 6365529, 6365575), (29, 7072810, 7072856), (29, 7780091, 7780137), (29, 8487372, 8487418), (31, 4617605, 4617651), (31, 5541126, 5541172), (31, 6464647, 6464693), (31, 7388168, 7388214), (31, 8311689, 8311735), (37, 5622483, 5622529), (37, 7496644, 7496690), (41, 5651522, 5651568), (41, 8477283, 8477329), (43, 6837602, 6837648)]

def row047_layer011_block000 : List ColouredInterval :=
  [(2, 4718592, 4718638), (2, 5242880, 5242926), (2, 5767168, 5767214), (2, 6291456, 6291502), (2, 6815744, 6815790), (2, 7340032, 7340078), (2, 7864320, 7864366), (2, 8388608, 8388654), (2, 5242880, 5242926), (2, 6291456, 6291502), (2, 7340032, 7340078), (2, 8388608, 8388654), (2, 6291456, 6291502), (2, 8388608, 8388654), (2, 8388608, 8388654), (2, 8388608, 8388654)]

def row047_layer011_block001 : List ColouredInterval :=
  [(3, 4782969, 4783015), (3, 5314410, 5314456), (3, 5845851, 5845897), (3, 6377292, 6377338), (3, 6908733, 6908779), (3, 7440174, 7440220), (3, 7971615, 7971661), (3, 8503056, 8503102), (3, 4782969, 4783015), (3, 6377292, 6377338), (3, 7971615, 7971661), (3, 4782969, 4783015), (5, 4687500, 4687546), (5, 5078125, 5078171), (5, 5468750, 5468796), (5, 5859375, 5859421)]

def row047_layer011_block002 : List ColouredInterval :=
  [(5, 6250000, 6250046), (5, 5859375, 5859421), (5, 7812500, 7812546), (7, 4941258, 4941304), (7, 5764801, 5764847), (7, 6588344, 6588390), (7, 7411887, 7411933), (7, 8235430, 8235476), (7, 5764801, 5764847), (11, 5314683, 5314729), (11, 7086244, 7086290), (13, 4455516, 4455562), (13, 4826809, 4826855), (13, 5198102, 5198148), (13, 5569395, 5569441), (13, 5940688, 5940734)]

def row047_layer011_block003 : List ColouredInterval :=
  [(13, 4826809, 4826855), (17, 5679428, 5679474), (17, 7099285, 7099331), (17, 8519142, 8519188), (19, 4952198, 4952244), (19, 7428297, 7428343), (23, 4477456, 4477502), (23, 6436343, 6436389), (29, 4950967, 4951013), (29, 5658248, 5658294), (29, 6365529, 6365575), (29, 7072810, 7072856), (29, 7780091, 7780137), (29, 8487372, 8487418), (31, 4617605, 4617651), (31, 5541126, 5541172)]

def row047_layer011_block004 : List ColouredInterval :=
  [(31, 6464647, 6464693), (31, 7388168, 7388214), (31, 8311689, 8311735), (37, 5622483, 5622529), (37, 7496644, 7496690), (41, 5651522, 5651568), (41, 8477283, 8477329), (43, 6837602, 6837648)]

def row047_layer011_chunks : List (List ColouredInterval) :=
  [row047_layer011_block000, row047_layer011_block001, row047_layer011_block002, row047_layer011_block003, row047_layer011_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer011_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer011_arithmetic : LayerArithmeticValid row047.height { lower := 4427776, upper := 8855552, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer011_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer011_enumeration :
    activePowerIntervalList 47 16 4427776 8855552 = row047_layer011_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer011_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer011_pairs000 :
    row047_layer011_block000.all (fun I => row047_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer011_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer011_pairs001 :
    row047_layer011_block001.all (fun I => row047_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer011_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer011_pairs002 :
    row047_layer011_block002.all (fun I => row047_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer011_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer011_pairs003 :
    row047_layer011_block003.all (fun I => row047_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer011_pairs003
