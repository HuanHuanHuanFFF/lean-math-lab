import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block002
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B64.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_enumeration :
    activePowerIntervalList 49 25 2408448 4816896 = row049_layer010_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs000 :
    row049_layer010_block000.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs001 :
    row049_layer010_block001.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs002 :
    row049_layer010_block002.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs003 :
    row049_layer010_block003.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs004 :
    row049_layer010_block004.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs005 :
    row049_layer010_block005.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_pairs006 :
    row049_layer010_block006.all (fun I => row049_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_pairs006

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

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs003 :
    row049_layer011_block003.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs004 :
    row049_layer011_block004.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_pairs005 :
    row049_layer011_block005.all (fun I => row049_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_chunks_eq : row049_layer011_chunks.flatten = row049_layer011_intervals := by
  rfl

theorem row049_layer011_pairs : pairCoverCheck row049_layer011_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer011_chunks_eq
  intro block hblock
  simp only [row049_layer011_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer011_pairs000
  · exact row049_layer011_pairs001
  · exact row049_layer011_pairs002
  · exact row049_layer011_pairs003
  · exact row049_layer011_pairs004
  · exact row049_layer011_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer011_checked :
    coverLayerCheck row049.height row049.goods { lower := 4816896, upper := 9633792, M := 23 } = true := by
  exact coverLayerCheck_of_parts row049_layer011_arithmetic row049_layer011_enumeration row049_bounds_eq row049_layer011_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer012_intervals : List ColouredInterval :=
  [(2, 9961472, 9961520), (2, 10485760, 10485808), (2, 11010048, 11010096), (2, 11534336, 11534384), (2, 10485760, 10485808), (2, 11534336, 11534384), (2, 12582912, 12582960), (2, 13631488, 13631536), (2, 14680064, 14680112), (2, 15728640, 15728688), (2, 16777216, 16777264), (2, 17825792, 17825840), (2, 18874368, 18874416), (2, 10485760, 10485808), (2, 12582912, 12582960), (2, 14680064, 14680112), (2, 16777216, 16777264), (2, 18874368, 18874416), (2, 12582912, 12582960), (2, 16777216, 16777264), (2, 16777216, 16777264), (2, 16777216, 16777264), (3, 10097379, 10097427), (3, 10628820, 10628868), (3, 11160261, 11160309), (3, 11691702, 11691750), (3, 11160261, 11160309), (3, 12754584, 12754632), (3, 14348907, 14348955), (3, 15943230, 15943278), (3, 17537553, 17537601), (3, 19131876, 19131924), (3, 14348907, 14348955), (3, 19131876, 19131924), (3, 14348907, 14348955), (5, 9765625, 9765673), (5, 11718750, 11718798), (5, 13671875, 13671923), (5, 15625000, 15625048), (5, 17578125, 17578173), (5, 9765625, 9765673), (11, 10629366, 10629414), (11, 12400927, 12400975), (11, 14172488, 14172536), (11, 15944049, 15944097), (11, 17715610, 17715658), (13, 9653618, 9653666), (13, 14480427, 14480475), (17, 9938999, 9939047), (17, 11358856, 11358904), (17, 12778713, 12778761), (17, 14198570, 14198618), (17, 15618427, 15618475), (17, 17038284, 17038332), (17, 18458141, 18458189), (19, 9904396, 9904444), (19, 12380495, 12380543), (19, 14856594, 14856642), (19, 17332693, 17332741), (23, 12872686, 12872734), (29, 9901934, 9901982), (29, 10609215, 10609263), (29, 11316496, 11316544), (29, 12023777, 12023825), (29, 12731058, 12731106), (29, 13438339, 13438387), (29, 14145620, 14145668), (29, 14852901, 14852949), (29, 15560182, 15560230), (31, 10158731, 10158779), (31, 11082252, 11082300), (31, 12005773, 12005821), (31, 12929294, 12929342), (31, 13852815, 13852863), (31, 14776336, 14776384), (31, 15699857, 15699905), (31, 16623378, 16623426), (31, 17546899, 17546947), (31, 18470420, 18470468), (37, 11244966, 11245014), (37, 13119127, 13119175), (37, 14993288, 14993336), (37, 16867449, 16867497), (37, 18741610, 18741658), (41, 11303044, 11303092), (41, 14128805, 14128853), (41, 16954566, 16954614), (43, 10256403, 10256451), (43, 13675204, 13675252), (43, 17094005, 17094053), (47, 9759362, 9759410), (47, 14639043, 14639091)]

def row049_layer012_block000 : List ColouredInterval :=
  [(2, 9961472, 9961520), (2, 10485760, 10485808), (2, 11010048, 11010096), (2, 11534336, 11534384), (2, 10485760, 10485808), (2, 11534336, 11534384), (2, 12582912, 12582960), (2, 13631488, 13631536), (2, 14680064, 14680112), (2, 15728640, 15728688), (2, 16777216, 16777264), (2, 17825792, 17825840), (2, 18874368, 18874416), (2, 10485760, 10485808), (2, 12582912, 12582960), (2, 14680064, 14680112)]

def row049_layer012_block001 : List ColouredInterval :=
  [(2, 16777216, 16777264), (2, 18874368, 18874416), (2, 12582912, 12582960), (2, 16777216, 16777264), (2, 16777216, 16777264), (2, 16777216, 16777264), (3, 10097379, 10097427), (3, 10628820, 10628868), (3, 11160261, 11160309), (3, 11691702, 11691750), (3, 11160261, 11160309), (3, 12754584, 12754632), (3, 14348907, 14348955), (3, 15943230, 15943278), (3, 17537553, 17537601), (3, 19131876, 19131924)]

def row049_layer012_block002 : List ColouredInterval :=
  [(3, 14348907, 14348955), (3, 19131876, 19131924), (3, 14348907, 14348955), (5, 9765625, 9765673), (5, 11718750, 11718798), (5, 13671875, 13671923), (5, 15625000, 15625048), (5, 17578125, 17578173), (5, 9765625, 9765673), (11, 10629366, 10629414), (11, 12400927, 12400975), (11, 14172488, 14172536), (11, 15944049, 15944097), (11, 17715610, 17715658), (13, 9653618, 9653666), (13, 14480427, 14480475)]

def row049_layer012_block003 : List ColouredInterval :=
  [(17, 9938999, 9939047), (17, 11358856, 11358904), (17, 12778713, 12778761), (17, 14198570, 14198618), (17, 15618427, 15618475), (17, 17038284, 17038332), (17, 18458141, 18458189), (19, 9904396, 9904444), (19, 12380495, 12380543), (19, 14856594, 14856642), (19, 17332693, 17332741), (23, 12872686, 12872734), (29, 9901934, 9901982), (29, 10609215, 10609263), (29, 11316496, 11316544), (29, 12023777, 12023825)]

def row049_layer012_block004 : List ColouredInterval :=
  [(29, 12731058, 12731106), (29, 13438339, 13438387), (29, 14145620, 14145668), (29, 14852901, 14852949), (29, 15560182, 15560230), (31, 10158731, 10158779), (31, 11082252, 11082300), (31, 12005773, 12005821), (31, 12929294, 12929342), (31, 13852815, 13852863), (31, 14776336, 14776384), (31, 15699857, 15699905), (31, 16623378, 16623426), (31, 17546899, 17546947), (31, 18470420, 18470468), (37, 11244966, 11245014)]

def row049_layer012_block005 : List ColouredInterval :=
  [(37, 13119127, 13119175), (37, 14993288, 14993336), (37, 16867449, 16867497), (37, 18741610, 18741658), (41, 11303044, 11303092), (41, 14128805, 14128853), (41, 16954566, 16954614), (43, 10256403, 10256451), (43, 13675204, 13675252), (43, 17094005, 17094053), (47, 9759362, 9759410), (47, 14639043, 14639091)]

def row049_layer012_chunks : List (List ColouredInterval) :=
  [row049_layer012_block000, row049_layer012_block001, row049_layer012_block002, row049_layer012_block003, row049_layer012_block004, row049_layer012_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_arithmetic : LayerArithmeticValid row049.height { lower := 9633792, upper := 19267584, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_enumeration :
    activePowerIntervalList 49 22 9633792 19267584 = row049_layer012_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs000 :
    row049_layer012_block000.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs001 :
    row049_layer012_block001.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs002 :
    row049_layer012_block002.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs003 :
    row049_layer012_block003.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs004 :
    row049_layer012_block004.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_pairs005 :
    row049_layer012_block005.all (fun I => row049_layer012_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_chunks_eq : row049_layer012_chunks.flatten = row049_layer012_intervals := by
  rfl

theorem row049_layer012_pairs : pairCoverCheck row049_layer012_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer012_chunks_eq
  intro block hblock
  simp only [row049_layer012_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer012_pairs000
  · exact row049_layer012_pairs001
  · exact row049_layer012_pairs002
  · exact row049_layer012_pairs003
  · exact row049_layer012_pairs004
  · exact row049_layer012_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer012_checked :
    coverLayerCheck row049.height row049.goods { lower := 9633792, upper := 19267584, M := 22 } = true := by
  exact coverLayerCheck_of_parts row049_layer012_arithmetic row049_layer012_enumeration row049_bounds_eq row049_layer012_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer013_intervals : List ColouredInterval :=
  [(2, 19922944, 19922992), (2, 20971520, 20971568), (2, 22020096, 22020144), (2, 20971520, 20971568), (2, 23068672, 23068720), (2, 25165824, 25165872), (2, 27262976, 27263024), (2, 29360128, 29360176), (2, 31457280, 31457328), (2, 33554432, 33554480), (2, 35651584, 35651632), (2, 37748736, 37748784), (2, 20971520, 20971568), (2, 25165824, 25165872), (2, 29360128, 29360176), (2, 33554432, 33554480), (2, 37748736, 37748784), (2, 25165824, 25165872), (2, 33554432, 33554480), (2, 33554432, 33554480), (2, 33554432, 33554480), (3, 20726199, 20726247), (3, 22320522, 22320570), (3, 23914845, 23914893), (3, 25509168, 25509216), (3, 27103491, 27103539), (3, 28697814, 28697862), (3, 30292137, 30292185), (3, 31886460, 31886508), (3, 33480783, 33480831), (3, 23914845, 23914893), (3, 28697814, 28697862), (3, 33480783, 33480831), (3, 38263752, 38263800), (3, 28697814, 28697862), (5, 19531250, 19531298), (5, 21484375, 21484423), (5, 23437500, 23437548), (5, 25390625, 25390673), (5, 27343750, 27343798), (5, 29296875, 29296923), (5, 31250000, 31250048), (5, 33203125, 33203173), (5, 35156250, 35156298), (5, 37109375, 37109423), (5, 19531250, 19531298), (5, 29296875, 29296923), (11, 19487171, 19487219), (11, 21258732, 21258780), (11, 23030293, 23030341), (11, 24801854, 24801902), (11, 26573415, 26573463), (11, 28344976, 28345024), (11, 30116537, 30116585), (11, 31888098, 31888146), (11, 33659659, 33659707), (11, 35431220, 35431268), (11, 37202781, 37202829), (11, 19487171, 19487219), (13, 19307236, 19307284), (13, 24134045, 24134093), (13, 28960854, 28960902), (13, 33787663, 33787711), (17, 19877998, 19878046), (17, 21297855, 21297903), (17, 22717712, 22717760), (17, 24137569, 24137617), (17, 25557426, 25557474), (17, 26977283, 26977331), (17, 28397140, 28397188), (17, 29816997, 29817045), (17, 24137569, 24137617), (19, 19808792, 19808840), (19, 22284891, 22284939), (19, 24760990, 24761038), (19, 27237089, 27237137), (19, 29713188, 29713236), (19, 32189287, 32189335), (19, 34665386, 34665434), (19, 37141485, 37141533), (23, 19309029, 19309077), (23, 25745372, 25745420), (23, 32181715, 32181763), (29, 20511149, 20511197), (31, 19393941, 19393989), (31, 28629151, 28629199), (37, 20615771, 20615819), (37, 22489932, 22489980), (37, 24364093, 24364141), (37, 26238254, 26238302), (37, 28112415, 28112463), (37, 29986576, 29986624), (37, 31860737, 31860785), (37, 33734898, 33734946), (37, 35609059, 35609107), (37, 37483220, 37483268), (41, 19780327, 19780375), (41, 22606088, 22606136), (41, 25431849, 25431897), (41, 28257610, 28257658), (41, 31083371, 31083419), (41, 33909132, 33909180), (41, 36734893, 36734941), (43, 20512806, 20512854), (43, 23931607, 23931655), (43, 27350408, 27350456), (43, 30769209, 30769257), (43, 34188010, 34188058), (43, 37606811, 37606859), (47, 19518724, 19518772), (47, 24398405, 24398453), (47, 29278086, 29278134), (47, 34157767, 34157815)]

def row049_layer013_block000 : List ColouredInterval :=
  [(2, 19922944, 19922992), (2, 20971520, 20971568), (2, 22020096, 22020144), (2, 20971520, 20971568), (2, 23068672, 23068720), (2, 25165824, 25165872), (2, 27262976, 27263024), (2, 29360128, 29360176), (2, 31457280, 31457328), (2, 33554432, 33554480), (2, 35651584, 35651632), (2, 37748736, 37748784), (2, 20971520, 20971568), (2, 25165824, 25165872), (2, 29360128, 29360176), (2, 33554432, 33554480)]

def row049_layer013_block001 : List ColouredInterval :=
  [(2, 37748736, 37748784), (2, 25165824, 25165872), (2, 33554432, 33554480), (2, 33554432, 33554480), (2, 33554432, 33554480), (3, 20726199, 20726247), (3, 22320522, 22320570), (3, 23914845, 23914893), (3, 25509168, 25509216), (3, 27103491, 27103539), (3, 28697814, 28697862), (3, 30292137, 30292185), (3, 31886460, 31886508), (3, 33480783, 33480831), (3, 23914845, 23914893), (3, 28697814, 28697862)]

def row049_layer013_block002 : List ColouredInterval :=
  [(3, 33480783, 33480831), (3, 38263752, 38263800), (3, 28697814, 28697862), (5, 19531250, 19531298), (5, 21484375, 21484423), (5, 23437500, 23437548), (5, 25390625, 25390673), (5, 27343750, 27343798), (5, 29296875, 29296923), (5, 31250000, 31250048), (5, 33203125, 33203173), (5, 35156250, 35156298), (5, 37109375, 37109423), (5, 19531250, 19531298), (5, 29296875, 29296923), (11, 19487171, 19487219)]

def row049_layer013_block003 : List ColouredInterval :=
  [(11, 21258732, 21258780), (11, 23030293, 23030341), (11, 24801854, 24801902), (11, 26573415, 26573463), (11, 28344976, 28345024), (11, 30116537, 30116585), (11, 31888098, 31888146), (11, 33659659, 33659707), (11, 35431220, 35431268), (11, 37202781, 37202829), (11, 19487171, 19487219), (13, 19307236, 19307284), (13, 24134045, 24134093), (13, 28960854, 28960902), (13, 33787663, 33787711), (17, 19877998, 19878046)]

def row049_layer013_block004 : List ColouredInterval :=
  [(17, 21297855, 21297903), (17, 22717712, 22717760), (17, 24137569, 24137617), (17, 25557426, 25557474), (17, 26977283, 26977331), (17, 28397140, 28397188), (17, 29816997, 29817045), (17, 24137569, 24137617), (19, 19808792, 19808840), (19, 22284891, 22284939), (19, 24760990, 24761038), (19, 27237089, 27237137), (19, 29713188, 29713236), (19, 32189287, 32189335), (19, 34665386, 34665434), (19, 37141485, 37141533)]

def row049_layer013_block005 : List ColouredInterval :=
  [(23, 19309029, 19309077), (23, 25745372, 25745420), (23, 32181715, 32181763), (29, 20511149, 20511197), (31, 19393941, 19393989), (31, 28629151, 28629199), (37, 20615771, 20615819), (37, 22489932, 22489980), (37, 24364093, 24364141), (37, 26238254, 26238302), (37, 28112415, 28112463), (37, 29986576, 29986624), (37, 31860737, 31860785), (37, 33734898, 33734946), (37, 35609059, 35609107), (37, 37483220, 37483268)]

def row049_layer013_block006 : List ColouredInterval :=
  [(41, 19780327, 19780375), (41, 22606088, 22606136), (41, 25431849, 25431897), (41, 28257610, 28257658), (41, 31083371, 31083419), (41, 33909132, 33909180), (41, 36734893, 36734941), (43, 20512806, 20512854), (43, 23931607, 23931655), (43, 27350408, 27350456), (43, 30769209, 30769257), (43, 34188010, 34188058), (43, 37606811, 37606859), (47, 19518724, 19518772), (47, 24398405, 24398453), (47, 29278086, 29278134)]

def row049_layer013_block007 : List ColouredInterval :=
  [(47, 34157767, 34157815)]

def row049_layer013_chunks : List (List ColouredInterval) :=
  [row049_layer013_block000, row049_layer013_block001, row049_layer013_block002, row049_layer013_block003, row049_layer013_block004, row049_layer013_block005, row049_layer013_block006, row049_layer013_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_arithmetic : LayerArithmeticValid row049.height { lower := 19267584, upper := 38535168, M := 21 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_enumeration :
    activePowerIntervalList 49 21 19267584 38535168 = row049_layer013_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs000 :
    row049_layer013_block000.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs001 :
    row049_layer013_block001.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs002 :
    row049_layer013_block002.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs003 :
    row049_layer013_block003.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs004 :
    row049_layer013_block004.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs005 :
    row049_layer013_block005.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs006 :
    row049_layer013_block006.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_pairs007 :
    row049_layer013_block007.all (fun I => row049_layer013_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_chunks_eq : row049_layer013_chunks.flatten = row049_layer013_intervals := by
  rfl

theorem row049_layer013_pairs : pairCoverCheck row049_layer013_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer013_chunks_eq
  intro block hblock
  simp only [row049_layer013_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer013_pairs000
  · exact row049_layer013_pairs001
  · exact row049_layer013_pairs002
  · exact row049_layer013_pairs003
  · exact row049_layer013_pairs004
  · exact row049_layer013_pairs005
  · exact row049_layer013_pairs006
  · exact row049_layer013_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer013_checked :
    coverLayerCheck row049.height row049.goods { lower := 19267584, upper := 38535168, M := 21 } = true := by
  exact coverLayerCheck_of_parts row049_layer013_arithmetic row049_layer013_enumeration row049_bounds_eq row049_layer013_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer013_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer014_intervals : List ColouredInterval :=
  [(2, 39845888, 39845936), (2, 41943040, 41943088), (2, 41943040, 41943088), (2, 46137344, 46137392), (2, 50331648, 50331696), (2, 54525952, 54526000), (2, 58720256, 58720304), (2, 62914560, 62914608), (2, 67108864, 67108912), (2, 71303168, 71303216), (2, 75497472, 75497520), (2, 41943040, 41943088), (2, 50331648, 50331696), (2, 58720256, 58720304), (2, 67108864, 67108912), (2, 75497472, 75497520), (2, 50331648, 50331696), (2, 67108864, 67108912), (2, 67108864, 67108912), (2, 67108864, 67108912), (3, 43046721, 43046769), (3, 47829690, 47829738), (3, 52612659, 52612707), (3, 57395628, 57395676), (3, 62178597, 62178645), (3, 66961566, 66961614), (3, 71744535, 71744583), (3, 76527504, 76527552), (3, 43046721, 43046769), (3, 57395628, 57395676), (3, 71744535, 71744583), (3, 43046721, 43046769), (5, 39062500, 39062548), (5, 39062500, 39062548), (5, 48828125, 48828173), (5, 58593750, 58593798), (5, 68359375, 68359423), (5, 48828125, 48828173), (11, 38974342, 38974390), (11, 58461513, 58461561), (13, 38614472, 38614520), (13, 43441281, 43441329), (13, 48268090, 48268138), (13, 53094899, 53094947), (13, 57921708, 57921756), (13, 62748517, 62748565), (13, 67575326, 67575374), (13, 72402135, 72402183), (13, 62748517, 62748565), (17, 48275138, 48275186), (17, 72412707, 72412755), (19, 39617584, 39617632), (19, 42093683, 42093731), (19, 44569782, 44569830), (19, 47045881, 47045929), (19, 49521980, 49522028), (19, 47045881, 47045929), (23, 38618058, 38618106), (23, 45054401, 45054449), (23, 51490744, 51490792), (23, 57927087, 57927135), (23, 64363430, 64363478), (23, 70799773, 70799821), (29, 41022298, 41022346), (29, 61533447, 61533495), (31, 57258302, 57258350), (37, 69343957, 69344005), (41, 39560654, 39560702), (41, 42386415, 42386463), (41, 45212176, 45212224), (41, 48037937, 48037985), (41, 50863698, 50863746), (41, 53689459, 53689507), (41, 56515220, 56515268), (43, 41025612, 41025660), (43, 44444413, 44444461), (43, 47863214, 47863262), (43, 51282015, 51282063), (43, 54700816, 54700864), (43, 58119617, 58119665), (43, 61538418, 61538466), (43, 64957219, 64957267), (43, 68376020, 68376068), (47, 39037448, 39037496), (47, 43917129, 43917177), (47, 48796810, 48796858), (47, 53676491, 53676539), (47, 58556172, 58556220), (47, 63435853, 63435901), (47, 68315534, 68315582), (47, 73195215, 73195263)]

def row049_layer014_block000 : List ColouredInterval :=
  [(2, 39845888, 39845936), (2, 41943040, 41943088), (2, 41943040, 41943088), (2, 46137344, 46137392), (2, 50331648, 50331696), (2, 54525952, 54526000), (2, 58720256, 58720304), (2, 62914560, 62914608), (2, 67108864, 67108912), (2, 71303168, 71303216), (2, 75497472, 75497520), (2, 41943040, 41943088), (2, 50331648, 50331696), (2, 58720256, 58720304), (2, 67108864, 67108912), (2, 75497472, 75497520)]

def row049_layer014_block001 : List ColouredInterval :=
  [(2, 50331648, 50331696), (2, 67108864, 67108912), (2, 67108864, 67108912), (2, 67108864, 67108912), (3, 43046721, 43046769), (3, 47829690, 47829738), (3, 52612659, 52612707), (3, 57395628, 57395676), (3, 62178597, 62178645), (3, 66961566, 66961614), (3, 71744535, 71744583), (3, 76527504, 76527552), (3, 43046721, 43046769), (3, 57395628, 57395676), (3, 71744535, 71744583), (3, 43046721, 43046769)]

def row049_layer014_block002 : List ColouredInterval :=
  [(5, 39062500, 39062548), (5, 39062500, 39062548), (5, 48828125, 48828173), (5, 58593750, 58593798), (5, 68359375, 68359423), (5, 48828125, 48828173), (11, 38974342, 38974390), (11, 58461513, 58461561), (13, 38614472, 38614520), (13, 43441281, 43441329), (13, 48268090, 48268138), (13, 53094899, 53094947), (13, 57921708, 57921756), (13, 62748517, 62748565), (13, 67575326, 67575374), (13, 72402135, 72402183)]

def row049_layer014_block003 : List ColouredInterval :=
  [(13, 62748517, 62748565), (17, 48275138, 48275186), (17, 72412707, 72412755), (19, 39617584, 39617632), (19, 42093683, 42093731), (19, 44569782, 44569830), (19, 47045881, 47045929), (19, 49521980, 49522028), (19, 47045881, 47045929), (23, 38618058, 38618106), (23, 45054401, 45054449), (23, 51490744, 51490792), (23, 57927087, 57927135), (23, 64363430, 64363478), (23, 70799773, 70799821), (29, 41022298, 41022346)]

def row049_layer014_block004 : List ColouredInterval :=
  [(29, 61533447, 61533495), (31, 57258302, 57258350), (37, 69343957, 69344005), (41, 39560654, 39560702), (41, 42386415, 42386463), (41, 45212176, 45212224), (41, 48037937, 48037985), (41, 50863698, 50863746), (41, 53689459, 53689507), (41, 56515220, 56515268), (43, 41025612, 41025660), (43, 44444413, 44444461), (43, 47863214, 47863262), (43, 51282015, 51282063), (43, 54700816, 54700864), (43, 58119617, 58119665)]

def row049_layer014_block005 : List ColouredInterval :=
  [(43, 61538418, 61538466), (43, 64957219, 64957267), (43, 68376020, 68376068), (47, 39037448, 39037496), (47, 43917129, 43917177), (47, 48796810, 48796858), (47, 53676491, 53676539), (47, 58556172, 58556220), (47, 63435853, 63435901), (47, 68315534, 68315582), (47, 73195215, 73195263)]

def row049_layer014_chunks : List (List ColouredInterval) :=
  [row049_layer014_block000, row049_layer014_block001, row049_layer014_block002, row049_layer014_block003, row049_layer014_block004, row049_layer014_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_arithmetic : LayerArithmeticValid row049.height { lower := 38535168, upper := 77070336, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_enumeration :
    activePowerIntervalList 49 20 38535168 77070336 = row049_layer014_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs000 :
    row049_layer014_block000.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs001 :
    row049_layer014_block001.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs002 :
    row049_layer014_block002.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs003 :
    row049_layer014_block003.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs004 :
    row049_layer014_block004.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_pairs005 :
    row049_layer014_block005.all (fun I => row049_layer014_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_chunks_eq : row049_layer014_chunks.flatten = row049_layer014_intervals := by
  rfl

theorem row049_layer014_pairs : pairCoverCheck row049_layer014_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer014_chunks_eq
  intro block hblock
  simp only [row049_layer014_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer014_pairs000
  · exact row049_layer014_pairs001
  · exact row049_layer014_pairs002
  · exact row049_layer014_pairs003
  · exact row049_layer014_pairs004
  · exact row049_layer014_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer014_checked :
    coverLayerCheck row049.height row049.goods { lower := 38535168, upper := 77070336, M := 20 } = true := by
  exact coverLayerCheck_of_parts row049_layer014_arithmetic row049_layer014_enumeration row049_bounds_eq row049_layer014_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer014_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer015_intervals : List ColouredInterval :=
  [(2, 79691776, 79691824), (2, 83886080, 83886128), (2, 92274688, 92274736), (2, 100663296, 100663344), (2, 109051904, 109051952), (2, 117440512, 117440560), (2, 125829120, 125829168), (2, 134217728, 134217776), (2, 142606336, 142606384), (2, 150994944, 150994992), (2, 83886080, 83886128), (2, 100663296, 100663344), (2, 117440512, 117440560), (2, 134217728, 134217776), (2, 150994944, 150994992), (2, 100663296, 100663344), (2, 134217728, 134217776), (2, 134217728, 134217776), (2, 134217728, 134217776), (3, 81310473, 81310521), (3, 86093442, 86093490), (3, 90876411, 90876459), (3, 86093442, 86093490), (3, 100442349, 100442397), (3, 114791256, 114791304), (3, 129140163, 129140211), (3, 143489070, 143489118), (3, 86093442, 86093490), (3, 129140163, 129140211), (3, 129140163, 129140211), (5, 78125000, 78125048), (5, 87890625, 87890673), (5, 97656250, 97656298), (5, 107421875, 107421923), (5, 117187500, 117187548), (5, 126953125, 126953173), (5, 136718750, 136718798), (5, 146484375, 146484423), (5, 97656250, 97656298), (5, 146484375, 146484423), (11, 77948684, 77948732), (11, 97435855, 97435903), (11, 116923026, 116923074), (11, 136410197, 136410245), (13, 77228944, 77228992), (13, 82055753, 82055801), (13, 86882562, 86882610), (13, 91709371, 91709419), (13, 125497034, 125497082), (17, 96550276, 96550324), (17, 120687845, 120687893), (17, 144825414, 144825462), (19, 94091762, 94091810), (19, 141137643, 141137691), (23, 77236116, 77236164), (23, 83672459, 83672507), (23, 90108802, 90108850), (23, 96545145, 96545193), (23, 102981488, 102981536), (23, 109417831, 109417879), (23, 115854174, 115854222), (23, 122290517, 122290565), (23, 148035889, 148035937), (29, 82044596, 82044644), (29, 102555745, 102555793), (29, 123066894, 123066942), (29, 143578043, 143578091), (31, 85887453, 85887501), (31, 114516604, 114516652), (31, 143145755, 143145803), (37, 138687914, 138687962), (41, 115856201, 115856249), (43, 147008443, 147008491), (47, 78074896, 78074944), (47, 82954577, 82954625), (47, 87834258, 87834306), (47, 92713939, 92713987)]

def row049_layer015_block000 : List ColouredInterval :=
  [(2, 79691776, 79691824), (2, 83886080, 83886128), (2, 92274688, 92274736), (2, 100663296, 100663344), (2, 109051904, 109051952), (2, 117440512, 117440560), (2, 125829120, 125829168), (2, 134217728, 134217776), (2, 142606336, 142606384), (2, 150994944, 150994992), (2, 83886080, 83886128), (2, 100663296, 100663344), (2, 117440512, 117440560), (2, 134217728, 134217776), (2, 150994944, 150994992), (2, 100663296, 100663344)]

def row049_layer015_block001 : List ColouredInterval :=
  [(2, 134217728, 134217776), (2, 134217728, 134217776), (2, 134217728, 134217776), (3, 81310473, 81310521), (3, 86093442, 86093490), (3, 90876411, 90876459), (3, 86093442, 86093490), (3, 100442349, 100442397), (3, 114791256, 114791304), (3, 129140163, 129140211), (3, 143489070, 143489118), (3, 86093442, 86093490), (3, 129140163, 129140211), (3, 129140163, 129140211), (5, 78125000, 78125048), (5, 87890625, 87890673)]

def row049_layer015_block002 : List ColouredInterval :=
  [(5, 97656250, 97656298), (5, 107421875, 107421923), (5, 117187500, 117187548), (5, 126953125, 126953173), (5, 136718750, 136718798), (5, 146484375, 146484423), (5, 97656250, 97656298), (5, 146484375, 146484423), (11, 77948684, 77948732), (11, 97435855, 97435903), (11, 116923026, 116923074), (11, 136410197, 136410245), (13, 77228944, 77228992), (13, 82055753, 82055801), (13, 86882562, 86882610), (13, 91709371, 91709419)]

def row049_layer015_block003 : List ColouredInterval :=
  [(13, 125497034, 125497082), (17, 96550276, 96550324), (17, 120687845, 120687893), (17, 144825414, 144825462), (19, 94091762, 94091810), (19, 141137643, 141137691), (23, 77236116, 77236164), (23, 83672459, 83672507), (23, 90108802, 90108850), (23, 96545145, 96545193), (23, 102981488, 102981536), (23, 109417831, 109417879), (23, 115854174, 115854222), (23, 122290517, 122290565), (23, 148035889, 148035937), (29, 82044596, 82044644)]

def row049_layer015_block004 : List ColouredInterval :=
  [(29, 102555745, 102555793), (29, 123066894, 123066942), (29, 143578043, 143578091), (31, 85887453, 85887501), (31, 114516604, 114516652), (31, 143145755, 143145803), (37, 138687914, 138687962), (41, 115856201, 115856249), (43, 147008443, 147008491), (47, 78074896, 78074944), (47, 82954577, 82954625), (47, 87834258, 87834306), (47, 92713939, 92713987)]

def row049_layer015_chunks : List (List ColouredInterval) :=
  [row049_layer015_block000, row049_layer015_block001, row049_layer015_block002, row049_layer015_block003, row049_layer015_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_arithmetic : LayerArithmeticValid row049.height { lower := 77070336, upper := 154140672, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_enumeration :
    activePowerIntervalList 49 19 77070336 154140672 = row049_layer015_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs000 :
    row049_layer015_block000.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs001 :
    row049_layer015_block001.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs002 :
    row049_layer015_block002.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer015_pairs003 :
    row049_layer015_block003.all (fun I => row049_layer015_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer015_pairs003
