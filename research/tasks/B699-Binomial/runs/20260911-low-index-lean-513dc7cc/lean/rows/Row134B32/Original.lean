import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row134B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer000_checked :
    coverLayerCheck row134.height row134.goods { lower := 17822, upper := 35644, M := 17 } = true := by
  exact coverLayerCheck_of_parts row134_layer000_arithmetic row134_layer000_enumeration row134_bounds_eq row134_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row134_layer001_intervals : List ColouredInterval :=
  [(2, 40960, 41093), (2, 49152, 49285), (2, 49152, 49285), (2, 65536, 65669), (2, 65536, 65669), (2, 65536, 65669), (3, 39366, 39499), (3, 45927, 46060), (3, 52488, 52621), (3, 59049, 59182), (3, 65610, 65743), (3, 39366, 39499), (3, 59049, 59182), (3, 59049, 59182), (5, 37500, 37633), (5, 40625, 40758), (5, 46875, 47008), (5, 62500, 62633), (7, 50421, 50554), (7, 67228, 67361), (11, 43923, 44056), (11, 58564, 58697), (13, 57122, 57255), (17, 39304, 39437), (17, 44217, 44350), (17, 49130, 49263), (17, 54043, 54176), (17, 58956, 59089), (17, 63869, 64002), (19, 41154, 41287), (19, 48013, 48146), (19, 54872, 55005), (19, 61731, 61864), (19, 68590, 68723), (23, 36501, 36634), (23, 48668, 48801), (23, 60835, 60968), (29, 48778, 48911), (31, 59582, 59715), (37, 50653, 50786), (41, 68921, 69054), (53, 36517, 36650), (59, 38291, 38424), (59, 41772, 41905), (59, 45253, 45386), (61, 37210, 37343), (61, 40931, 41064), (61, 44652, 44785), (61, 48373, 48506), (71, 40328, 40461), (71, 45369, 45502), (71, 50410, 50543), (71, 55451, 55584), (71, 60492, 60625), (71, 65533, 65666), (73, 37303, 37436), (73, 42632, 42765), (73, 47961, 48094), (73, 53290, 53423), (73, 58619, 58752), (73, 63948, 64081), (73, 69277, 69410), (79, 37446, 37579), (79, 43687, 43820), (79, 49928, 50061), (79, 56169, 56302), (79, 62410, 62543), (79, 68651, 68784), (83, 41334, 41467), (83, 48223, 48356), (83, 55112, 55245), (83, 62001, 62134), (83, 68890, 69023), (89, 39605, 39738), (89, 47526, 47659), (89, 55447, 55580), (89, 63368, 63501), (97, 37636, 37769), (97, 47045, 47178), (97, 56454, 56587), (97, 65863, 65996), (101, 40804, 40937), (101, 51005, 51138), (101, 61206, 61339), (103, 42436, 42569), (103, 53045, 53178), (103, 63654, 63787), (107, 45796, 45929), (107, 57245, 57378), (107, 68694, 68827), (109, 35644, 35776), (109, 47524, 47657), (109, 59405, 59538), (109, 71286, 71287), (113, 38307, 38440), (113, 51076, 51209), (113, 63845, 63978), (127, 48387, 48520), (127, 64516, 64649), (131, 51483, 51616), (131, 68644, 68777)]

def row134_layer001_block000 : List ColouredInterval :=
  [(2, 40960, 41093), (2, 49152, 49285), (2, 49152, 49285), (2, 65536, 65669), (2, 65536, 65669), (2, 65536, 65669), (3, 39366, 39499), (3, 45927, 46060), (3, 52488, 52621), (3, 59049, 59182), (3, 65610, 65743), (3, 39366, 39499), (3, 59049, 59182), (3, 59049, 59182), (5, 37500, 37633), (5, 40625, 40758)]

def row134_layer001_block001 : List ColouredInterval :=
  [(5, 46875, 47008), (5, 62500, 62633), (7, 50421, 50554), (7, 67228, 67361), (11, 43923, 44056), (11, 58564, 58697), (13, 57122, 57255), (17, 39304, 39437), (17, 44217, 44350), (17, 49130, 49263), (17, 54043, 54176), (17, 58956, 59089), (17, 63869, 64002), (19, 41154, 41287), (19, 48013, 48146), (19, 54872, 55005)]

def row134_layer001_block002 : List ColouredInterval :=
  [(19, 61731, 61864), (19, 68590, 68723), (23, 36501, 36634), (23, 48668, 48801), (23, 60835, 60968), (29, 48778, 48911), (31, 59582, 59715), (37, 50653, 50786), (41, 68921, 69054), (53, 36517, 36650), (59, 38291, 38424), (59, 41772, 41905), (59, 45253, 45386), (61, 37210, 37343), (61, 40931, 41064), (61, 44652, 44785)]

def row134_layer001_block003 : List ColouredInterval :=
  [(61, 48373, 48506), (71, 40328, 40461), (71, 45369, 45502), (71, 50410, 50543), (71, 55451, 55584), (71, 60492, 60625), (71, 65533, 65666), (73, 37303, 37436), (73, 42632, 42765), (73, 47961, 48094), (73, 53290, 53423), (73, 58619, 58752), (73, 63948, 64081), (73, 69277, 69410), (79, 37446, 37579), (79, 43687, 43820)]

def row134_layer001_block004 : List ColouredInterval :=
  [(79, 49928, 50061), (79, 56169, 56302), (79, 62410, 62543), (79, 68651, 68784), (83, 41334, 41467), (83, 48223, 48356), (83, 55112, 55245), (83, 62001, 62134), (83, 68890, 69023), (89, 39605, 39738), (89, 47526, 47659), (89, 55447, 55580), (89, 63368, 63501), (97, 37636, 37769), (97, 47045, 47178), (97, 56454, 56587)]

def row134_layer001_block005 : List ColouredInterval :=
  [(97, 65863, 65996), (101, 40804, 40937), (101, 51005, 51138), (101, 61206, 61339), (103, 42436, 42569), (103, 53045, 53178), (103, 63654, 63787), (107, 45796, 45929), (107, 57245, 57378), (107, 68694, 68827), (109, 35644, 35776), (109, 47524, 47657), (109, 59405, 59538), (109, 71286, 71287), (113, 38307, 38440), (113, 51076, 51209)]

def row134_layer001_block006 : List ColouredInterval :=
  [(113, 63845, 63978), (127, 48387, 48520), (127, 64516, 64649), (131, 51483, 51616), (131, 68644, 68777)]

def row134_layer001_chunks : List (List ColouredInterval) :=
  [row134_layer001_block000, row134_layer001_block001, row134_layer001_block002, row134_layer001_block003, row134_layer001_block004, row134_layer001_block005, row134_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_arithmetic : LayerArithmeticValid row134.height { lower := 35644, upper := 71288, M := 13 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_enumeration :
    activePowerIntervalList 134 13 35644 71288 = row134_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_pairs000 :
    row134_layer001_block000.all (fun I => row134_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_pairs001 :
    row134_layer001_block001.all (fun I => row134_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_pairs002 :
    row134_layer001_block002.all (fun I => row134_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_pairs003 :
    row134_layer001_block003.all (fun I => row134_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_pairs004 :
    row134_layer001_block004.all (fun I => row134_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_pairs005 :
    row134_layer001_block005.all (fun I => row134_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_pairs006 :
    row134_layer001_block006.all (fun I => row134_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_chunks_eq : row134_layer001_chunks.flatten = row134_layer001_intervals := by
  rfl

theorem row134_layer001_pairs : pairCoverCheck row134_layer001_intervals row134_bounds = true := by
  apply pairCoverCheck_of_chunks row134_layer001_chunks_eq
  intro block hblock
  simp only [row134_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row134_layer001_pairs000
  · exact row134_layer001_pairs001
  · exact row134_layer001_pairs002
  · exact row134_layer001_pairs003
  · exact row134_layer001_pairs004
  · exact row134_layer001_pairs005
  · exact row134_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer001_checked :
    coverLayerCheck row134.height row134.goods { lower := 35644, upper := 71288, M := 13 } = true := by
  exact coverLayerCheck_of_parts row134_layer001_arithmetic row134_layer001_enumeration row134_bounds_eq row134_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row134_layer002_intervals : List ColouredInterval :=
  [(2, 81920, 82053), (2, 98304, 98437), (2, 131072, 131205), (2, 131072, 131205), (2, 131072, 131205), (3, 78732, 78865), (3, 98415, 98548), (3, 118098, 118231), (3, 137781, 137914), (3, 118098, 118231), (5, 78125, 78258), (5, 93750, 93883), (5, 109375, 109508), (5, 125000, 125133), (5, 140625, 140758), (5, 78125, 78258), (7, 84035, 84168), (7, 100842, 100975), (7, 117649, 117782), (7, 134456, 134589), (7, 117649, 117782), (11, 73205, 73338), (11, 87846, 87979), (11, 102487, 102620), (11, 117128, 117261), (11, 131769, 131902), (13, 85683, 85816), (13, 114244, 114377), (17, 83521, 83654), (19, 130321, 130454), (23, 73002, 73135), (23, 85169, 85302), (23, 97336, 97469), (23, 109503, 109636), (23, 121670, 121803), (29, 73167, 73300), (29, 97556, 97689), (29, 121945, 122078), (31, 89373, 89506), (31, 119164, 119297), (37, 101306, 101439), (41, 137842, 137975), (43, 79507, 79640), (47, 103823, 103956), (89, 71289, 71422), (89, 79210, 79343), (97, 75272, 75405), (97, 84681, 84814), (97, 94090, 94223), (101, 71407, 71540), (101, 81608, 81741), (101, 91809, 91942), (101, 102010, 102143), (103, 74263, 74396), (103, 84872, 85005), (103, 95481, 95614), (103, 106090, 106223), (107, 80143, 80276), (107, 91592, 91725), (107, 103041, 103174), (107, 114490, 114623), (109, 71288, 71419), (109, 83167, 83300), (109, 95048, 95181), (109, 106929, 107062), (109, 118810, 118943), (113, 76614, 76747), (113, 89383, 89516), (113, 102152, 102285), (113, 114921, 115054), (113, 127690, 127823), (127, 80645, 80778), (127, 96774, 96907), (127, 112903, 113036), (127, 129032, 129165), (131, 85805, 85938), (131, 102966, 103099), (131, 120127, 120260), (131, 137288, 137421)]

def row134_layer002_block000 : List ColouredInterval :=
  [(2, 81920, 82053), (2, 98304, 98437), (2, 131072, 131205), (2, 131072, 131205), (2, 131072, 131205), (3, 78732, 78865), (3, 98415, 98548), (3, 118098, 118231), (3, 137781, 137914), (3, 118098, 118231), (5, 78125, 78258), (5, 93750, 93883), (5, 109375, 109508), (5, 125000, 125133), (5, 140625, 140758), (5, 78125, 78258)]

def row134_layer002_block001 : List ColouredInterval :=
  [(7, 84035, 84168), (7, 100842, 100975), (7, 117649, 117782), (7, 134456, 134589), (7, 117649, 117782), (11, 73205, 73338), (11, 87846, 87979), (11, 102487, 102620), (11, 117128, 117261), (11, 131769, 131902), (13, 85683, 85816), (13, 114244, 114377), (17, 83521, 83654), (19, 130321, 130454), (23, 73002, 73135), (23, 85169, 85302)]

def row134_layer002_block002 : List ColouredInterval :=
  [(23, 97336, 97469), (23, 109503, 109636), (23, 121670, 121803), (29, 73167, 73300), (29, 97556, 97689), (29, 121945, 122078), (31, 89373, 89506), (31, 119164, 119297), (37, 101306, 101439), (41, 137842, 137975), (43, 79507, 79640), (47, 103823, 103956), (89, 71289, 71422), (89, 79210, 79343), (97, 75272, 75405), (97, 84681, 84814)]

def row134_layer002_block003 : List ColouredInterval :=
  [(97, 94090, 94223), (101, 71407, 71540), (101, 81608, 81741), (101, 91809, 91942), (101, 102010, 102143), (103, 74263, 74396), (103, 84872, 85005), (103, 95481, 95614), (103, 106090, 106223), (107, 80143, 80276), (107, 91592, 91725), (107, 103041, 103174), (107, 114490, 114623), (109, 71288, 71419), (109, 83167, 83300), (109, 95048, 95181)]

def row134_layer002_block004 : List ColouredInterval :=
  [(109, 106929, 107062), (109, 118810, 118943), (113, 76614, 76747), (113, 89383, 89516), (113, 102152, 102285), (113, 114921, 115054), (113, 127690, 127823), (127, 80645, 80778), (127, 96774, 96907), (127, 112903, 113036), (127, 129032, 129165), (131, 85805, 85938), (131, 102966, 103099), (131, 120127, 120260), (131, 137288, 137421)]

def row134_layer002_chunks : List (List ColouredInterval) :=
  [row134_layer002_block000, row134_layer002_block001, row134_layer002_block002, row134_layer002_block003, row134_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_arithmetic : LayerArithmeticValid row134.height { lower := 71288, upper := 142576, M := 10 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_enumeration :
    activePowerIntervalList 134 10 71288 142576 = row134_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_pairs000 :
    row134_layer002_block000.all (fun I => row134_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_pairs001 :
    row134_layer002_block001.all (fun I => row134_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_pairs002 :
    row134_layer002_block002.all (fun I => row134_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_pairs003 :
    row134_layer002_block003.all (fun I => row134_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_pairs004 :
    row134_layer002_block004.all (fun I => row134_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row134_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_chunks_eq : row134_layer002_chunks.flatten = row134_layer002_intervals := by
  rfl

theorem row134_layer002_pairs : pairCoverCheck row134_layer002_intervals row134_bounds = true := by
  apply pairCoverCheck_of_chunks row134_layer002_chunks_eq
  intro block hblock
  simp only [row134_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row134_layer002_pairs000
  · exact row134_layer002_pairs001
  · exact row134_layer002_pairs002
  · exact row134_layer002_pairs003
  · exact row134_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer002_checked :
    coverLayerCheck row134.height row134.goods { lower := 71288, upper := 142576, M := 10 } = true := by
  exact coverLayerCheck_of_parts row134_layer002_arithmetic row134_layer002_enumeration row134_bounds_eq row134_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer003_checked :
    coverLayerCheck row134.height row134.goods { lower := 142576, upper := 285152, M := 8 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer004_checked :
    coverLayerCheck row134.height row134.goods { lower := 285152, upper := 570304, M := 6 } = true := by
  decide +kernel

theorem row134_layer005_checked :
    coverLayerCheck row134.height row134.goods { lower := 570304, upper := 1140608, M := 5 } = true := by
  decide +kernel

theorem row134_layer006_checked :
    coverLayerCheck row134.height row134.goods { lower := 1140608, upper := 2281216, M := 4 } = true := by
  decide +kernel

theorem row134_layer007_checked :
    coverLayerCheck row134.height row134.goods { lower := 2281216, upper := 4562432, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer008_checked :
    coverLayerCheck row134.height row134.goods { lower := 4562432, upper := 9124864, M := 2 } = true := by
  decide +kernel

theorem row134_layer009_checked :
    coverLayerCheck row134.height row134.goods { lower := 9124864, upper := 18249728, M := 2 } = true := by
  decide +kernel

theorem row134_layer010_checked :
    coverLayerCheck row134.height row134.goods { lower := 18249728, upper := 36499456, M := 2 } = true := by
  decide +kernel

theorem row134_layer011_checked :
    coverLayerCheck row134.height row134.goods { lower := 36499456, upper := 72998912, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layer012_checked :
    coverLayerCheck row134.height row134.goods { lower := 72998912, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layer012_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_layers_checked :
    row134.layers.all (coverLayerCheck row134.height row134.goods) = true := by
  change row134_layers.all (coverLayerCheck row134.height row134.goods) = true
  simp only [row134_layers, List.all_cons, List.all_nil,
    row134_layer000_checked,
    row134_layer001_checked,
    row134_layer002_checked,
    row134_layer003_checked,
    row134_layer004_checked,
    row134_layer005_checked,
    row134_layer006_checked,
    row134_layer007_checked,
    row134_layer008_checked,
    row134_layer009_checked,
    row134_layer010_checked,
    row134_layer011_checked,
    row134_layer012_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row134_checked : finiteCoverRowCheck row134 = true := by
  simp only [finiteCoverRowCheck, row134_registered, row134_goods_checked,
    row134_small_checked, row134_layerCover_checked, row134_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row134_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i134 :
    ∀ n j : ℕ, 1 ≤ 134 ∧ 134 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 134 ≤ p ∧ p ∣ Nat.choose n 134 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row134_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i134
