import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block021
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer010_pairs006 :
    row048_layer010_block006.all (fun I => row048_layer010_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer010_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer010_chunks_eq : row048_layer010_chunks.flatten = row048_layer010_intervals := by
  rfl

theorem row048_layer010_pairs : pairCoverCheck row048_layer010_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer010_chunks_eq
  intro block hblock
  simp only [row048_layer010_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer010_pairs000
  · exact row048_layer010_pairs001
  · exact row048_layer010_pairs002
  · exact row048_layer010_pairs003
  · exact row048_layer010_pairs004
  · exact row048_layer010_pairs005
  · exact row048_layer010_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer010_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer010_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer010_checked :
    coverLayerCheck row048.height row048.goods { lower := 2310144, upper := 4620288, M := 32 } = true := by
  exact coverLayerCheck_of_parts row048_layer010_arithmetic row048_layer010_enumeration row048_bounds_eq row048_layer010_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer010_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer011_intervals : List ColouredInterval :=
  [(2, 8388608, 8388655), (3, 4782969, 4783016), (3, 5314410, 5314457), (3, 4782969, 4783016), (3, 6377292, 6377339), (3, 7971615, 7971662), (3, 4782969, 4783016), (5, 4687500, 4687547), (5, 5078125, 5078172), (5, 5468750, 5468797), (5, 5859375, 5859422), (5, 6250000, 6250047), (5, 6640625, 6640672), (5, 7031250, 7031297), (5, 7421875, 7421922), (5, 7812500, 7812547), (5, 8203125, 8203172), (5, 8593750, 8593797), (5, 8984375, 8984422), (5, 5859375, 5859422), (5, 7812500, 7812547), (7, 4941258, 4941305), (7, 5764801, 5764848), (7, 6588344, 6588391), (7, 7411887, 7411934), (7, 8235430, 8235477), (7, 9058973, 9059020), (7, 5764801, 5764848), (11, 4670479, 4670526), (11, 4831530, 4831577), (11, 4992581, 4992628), (11, 5314683, 5314730), (11, 7086244, 7086291), (11, 8857805, 8857852), (13, 4826809, 4826856), (13, 5198102, 5198149), (13, 5569395, 5569442), (13, 5940688, 5940735), (13, 6311981, 6312028), (13, 6683274, 6683321), (13, 7054567, 7054614), (13, 7425860, 7425907), (13, 7797153, 7797200), (13, 8168446, 8168493), (13, 8539739, 8539786), (13, 8911032, 8911079), (13, 4826809, 4826856), (17, 5679428, 5679475), (17, 7099285, 7099332), (17, 8519142, 8519189), (19, 4952198, 4952245), (19, 7428297, 7428344), (23, 4757297, 4757344), (23, 5037138, 5037185), (23, 5316979, 5317026), (23, 5596820, 5596867), (23, 5876661, 5876708), (23, 6156502, 6156549), (23, 6436343, 6436390), (23, 6716184, 6716231), (23, 6996025, 6996072), (23, 7275866, 7275913), (23, 7555707, 7555754), (23, 7835548, 7835595), (23, 8115389, 8115436), (23, 8395230, 8395277), (23, 8675071, 8675118), (23, 6436343, 6436390), (29, 4950967, 4951014), (29, 5658248, 5658295), (29, 6365529, 6365576), (29, 7072810, 7072857), (29, 7780091, 7780138), (29, 8487372, 8487419), (29, 9194653, 9194700), (31, 5541126, 5541173), (31, 6464647, 6464694), (31, 7388168, 7388215), (31, 8311689, 8311736), (31, 9235210, 9235257), (37, 5622483, 5622530), (37, 7496644, 7496691), (41, 5651522, 5651569), (41, 8477283, 8477330), (43, 6837602, 6837649), (47, 4879681, 4879728)]

def row048_layer011_block000 : List ColouredInterval :=
  [(2, 8388608, 8388655), (3, 4782969, 4783016), (3, 5314410, 5314457), (3, 4782969, 4783016), (3, 6377292, 6377339), (3, 7971615, 7971662), (3, 4782969, 4783016), (5, 4687500, 4687547), (5, 5078125, 5078172), (5, 5468750, 5468797), (5, 5859375, 5859422), (5, 6250000, 6250047), (5, 6640625, 6640672), (5, 7031250, 7031297), (5, 7421875, 7421922), (5, 7812500, 7812547)]

def row048_layer011_block001 : List ColouredInterval :=
  [(5, 8203125, 8203172), (5, 8593750, 8593797), (5, 8984375, 8984422), (5, 5859375, 5859422), (5, 7812500, 7812547), (7, 4941258, 4941305), (7, 5764801, 5764848), (7, 6588344, 6588391), (7, 7411887, 7411934), (7, 8235430, 8235477), (7, 9058973, 9059020), (7, 5764801, 5764848), (11, 4670479, 4670526), (11, 4831530, 4831577), (11, 4992581, 4992628), (11, 5314683, 5314730)]

def row048_layer011_block002 : List ColouredInterval :=
  [(11, 7086244, 7086291), (11, 8857805, 8857852), (13, 4826809, 4826856), (13, 5198102, 5198149), (13, 5569395, 5569442), (13, 5940688, 5940735), (13, 6311981, 6312028), (13, 6683274, 6683321), (13, 7054567, 7054614), (13, 7425860, 7425907), (13, 7797153, 7797200), (13, 8168446, 8168493), (13, 8539739, 8539786), (13, 8911032, 8911079), (13, 4826809, 4826856), (17, 5679428, 5679475)]

def row048_layer011_block003 : List ColouredInterval :=
  [(17, 7099285, 7099332), (17, 8519142, 8519189), (19, 4952198, 4952245), (19, 7428297, 7428344), (23, 4757297, 4757344), (23, 5037138, 5037185), (23, 5316979, 5317026), (23, 5596820, 5596867), (23, 5876661, 5876708), (23, 6156502, 6156549), (23, 6436343, 6436390), (23, 6716184, 6716231), (23, 6996025, 6996072), (23, 7275866, 7275913), (23, 7555707, 7555754), (23, 7835548, 7835595)]

def row048_layer011_block004 : List ColouredInterval :=
  [(23, 8115389, 8115436), (23, 8395230, 8395277), (23, 8675071, 8675118), (23, 6436343, 6436390), (29, 4950967, 4951014), (29, 5658248, 5658295), (29, 6365529, 6365576), (29, 7072810, 7072857), (29, 7780091, 7780138), (29, 8487372, 8487419), (29, 9194653, 9194700), (31, 5541126, 5541173), (31, 6464647, 6464694), (31, 7388168, 7388215), (31, 8311689, 8311736), (31, 9235210, 9235257)]

def row048_layer011_block005 : List ColouredInterval :=
  [(37, 5622483, 5622530), (37, 7496644, 7496691), (41, 5651522, 5651569), (41, 8477283, 8477330), (43, 6837602, 6837649), (47, 4879681, 4879728)]

def row048_layer011_chunks : List (List ColouredInterval) :=
  [row048_layer011_block000, row048_layer011_block001, row048_layer011_block002, row048_layer011_block003, row048_layer011_block004, row048_layer011_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer011_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer011_arithmetic : LayerArithmeticValid row048.height { lower := 4620288, upper := 9240576, M := 31 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer011_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer011_enumeration :
    activePowerIntervalList 48 31 4620288 9240576 = row048_layer011_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer011_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer011_pairs000 :
    row048_layer011_block000.all (fun I => row048_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer011_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer011_pairs001 :
    row048_layer011_block001.all (fun I => row048_layer011_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer011_pairs001
