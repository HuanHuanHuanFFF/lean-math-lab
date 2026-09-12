import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block024
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block023
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_chunks_eq : row049_layer010_chunks.flatten = row049_layer010_intervals := by
  rfl

theorem row049_layer010_pairs : pairCoverCheck row049_layer010_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer010_chunks_eq
  intro block hblock
  simp only [row049_layer010_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer010_pairs000
  · exact row049_layer010_pairs001
  · exact row049_layer010_pairs002
  · exact row049_layer010_pairs003
  · exact row049_layer010_pairs004
  · exact row049_layer010_pairs005
  · exact row049_layer010_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_checked :
    coverLayerCheck row049.height row049.goods { lower := 2408448, upper := 4816896, M := 25 } = true := by
  exact coverLayerCheck_of_parts row049_layer010_arithmetic row049_layer010_enumeration row049_bounds_eq row049_layer010_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer011_intervals : List ColouredInterval :=
  [(2, 4980736, 4980784), (2, 5242880, 5242928), (2, 5505024, 5505072), (2, 5767168, 5767216), (2, 6029312, 6029360), (2, 5242880, 5242928), (2, 5767168, 5767216), (2, 6291456, 6291504), (2, 6815744, 6815792), (2, 7340032, 7340080), (2, 7864320, 7864368), (2, 8388608, 8388656), (2, 8912896, 8912944), (2, 9437184, 9437232), (2, 5242880, 5242928), (2, 6291456, 6291504), (2, 7340032, 7340080), (2, 8388608, 8388656), (2, 9437184, 9437232), (2, 6291456, 6291504), (2, 8388608, 8388656), (2, 8388608, 8388656), (2, 8388608, 8388656), (3, 5314410, 5314458), (3, 5845851, 5845899), (3, 6377292, 6377340), (3, 6908733, 6908781), (3, 7440174, 7440222), (3, 7971615, 7971663), (3, 8503056, 8503104), (3, 9034497, 9034545), (3, 9565938, 9565986), (3, 6377292, 6377340), (3, 7971615, 7971663), (3, 9565938, 9565986), (3, 9565938, 9565986), (5, 5078125, 5078173), (5, 5468750, 5468798), (5, 5859375, 5859423), (5, 6250000, 6250048), (5, 6640625, 6640673), (5, 7031250, 7031298), (5, 7421875, 7421923), (5, 7812500, 7812548), (5, 8203125, 8203173), (5, 8593750, 8593798), (5, 8984375, 8984423), (5, 5859375, 5859423), (5, 7812500, 7812548), (11, 5314683, 5314731), (11, 7086244, 7086292), (11, 8857805, 8857853), (13, 4826809, 4826857), (13, 5198102, 5198150), (13, 5569395, 5569443), (13, 5940688, 5940736), (13, 6311981, 6312029), (13, 6683274, 6683322), (13, 7054567, 7054615), (13, 7425860, 7425908), (13, 7797153, 7797201), (13, 8168446, 8168494), (13, 8539739, 8539787), (13, 4826809, 4826857), (17, 5679428, 5679476), (17, 7099285, 7099333), (17, 8519142, 8519190), (19, 4952198, 4952246), (19, 7428297, 7428345), (23, 5037138, 5037186), (23, 5316979, 5317027), (23, 5596820, 5596868), (23, 5876661, 5876709), (23, 6156502, 6156550), (23, 6436343, 6436391), (23, 6436343, 6436391), (29, 4950967, 4951015), (29, 5658248, 5658296), (29, 6365529, 6365577), (29, 7072810, 7072858), (29, 7780091, 7780139), (29, 8487372, 8487420), (29, 9194653, 9194701), (31, 5541126, 5541174), (31, 6464647, 6464695), (31, 7388168, 7388216), (31, 8311689, 8311737), (31, 9235210, 9235258), (37, 5622483, 5622531), (37, 7496644, 7496692), (37, 9370805, 9370853), (41, 5651522, 5651570), (41, 8477283, 8477331), (43, 6837602, 6837650), (47, 4879681, 4879729)]

def row049_layer011_block000 : List ColouredInterval :=
  [(2, 4980736, 4980784), (2, 5242880, 5242928), (2, 5505024, 5505072), (2, 5767168, 5767216), (2, 6029312, 6029360), (2, 5242880, 5242928), (2, 5767168, 5767216), (2, 6291456, 6291504), (2, 6815744, 6815792), (2, 7340032, 7340080), (2, 7864320, 7864368), (2, 8388608, 8388656), (2, 8912896, 8912944), (2, 9437184, 9437232), (2, 5242880, 5242928), (2, 6291456, 6291504)]

def row049_layer011_block001 : List ColouredInterval :=
  [(2, 7340032, 7340080), (2, 8388608, 8388656), (2, 9437184, 9437232), (2, 6291456, 6291504), (2, 8388608, 8388656), (2, 8388608, 8388656), (2, 8388608, 8388656), (3, 5314410, 5314458), (3, 5845851, 5845899), (3, 6377292, 6377340), (3, 6908733, 6908781), (3, 7440174, 7440222), (3, 7971615, 7971663), (3, 8503056, 8503104), (3, 9034497, 9034545), (3, 9565938, 9565986)]

def row049_layer011_block002 : List ColouredInterval :=
  [(3, 6377292, 6377340), (3, 7971615, 7971663), (3, 9565938, 9565986), (3, 9565938, 9565986), (5, 5078125, 5078173), (5, 5468750, 5468798), (5, 5859375, 5859423), (5, 6250000, 6250048), (5, 6640625, 6640673), (5, 7031250, 7031298), (5, 7421875, 7421923), (5, 7812500, 7812548), (5, 8203125, 8203173), (5, 8593750, 8593798), (5, 8984375, 8984423), (5, 5859375, 5859423)]

def row049_layer011_block003 : List ColouredInterval :=
  [(5, 7812500, 7812548), (11, 5314683, 5314731), (11, 7086244, 7086292), (11, 8857805, 8857853), (13, 4826809, 4826857), (13, 5198102, 5198150), (13, 5569395, 5569443), (13, 5940688, 5940736), (13, 6311981, 6312029), (13, 6683274, 6683322), (13, 7054567, 7054615), (13, 7425860, 7425908), (13, 7797153, 7797201), (13, 8168446, 8168494), (13, 8539739, 8539787), (13, 4826809, 4826857)]

def row049_layer011_block004 : List ColouredInterval :=
  [(17, 5679428, 5679476), (17, 7099285, 7099333), (17, 8519142, 8519190), (19, 4952198, 4952246), (19, 7428297, 7428345), (23, 5037138, 5037186), (23, 5316979, 5317027), (23, 5596820, 5596868), (23, 5876661, 5876709), (23, 6156502, 6156550), (23, 6436343, 6436391), (23, 6436343, 6436391), (29, 4950967, 4951015), (29, 5658248, 5658296), (29, 6365529, 6365577), (29, 7072810, 7072858)]

def row049_layer011_block005 : List ColouredInterval :=
  [(29, 7780091, 7780139), (29, 8487372, 8487420), (29, 9194653, 9194701), (31, 5541126, 5541174), (31, 6464647, 6464695), (31, 7388168, 7388216), (31, 8311689, 8311737), (31, 9235210, 9235258), (37, 5622483, 5622531), (37, 7496644, 7496692), (37, 9370805, 9370853), (41, 5651522, 5651570), (41, 8477283, 8477331), (43, 6837602, 6837650), (47, 4879681, 4879729)]

def row049_layer011_chunks : List (List ColouredInterval) :=
  [row049_layer011_block000, row049_layer011_block001, row049_layer011_block002, row049_layer011_block003, row049_layer011_block004, row049_layer011_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_arithmetic : LayerArithmeticValid row049.height { lower := 4816896, upper := 9633792, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_enumeration :
    activePowerIntervalList 49 23 4816896 9633792 = row049_layer011_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs000 :
    row049_layer011_block000.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs001 :
    row049_layer011_block001.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs002 :
    row049_layer011_block002.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs002
