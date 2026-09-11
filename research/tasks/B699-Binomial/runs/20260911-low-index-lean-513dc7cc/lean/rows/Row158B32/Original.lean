import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row158B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_chunks_eq : row158_layer000_chunks.flatten = row158_layer000_intervals := by
  rfl

theorem row158_layer000_pairs : pairCoverCheck row158_layer000_intervals row158_bounds = true := by
  apply pairCoverCheck_of_chunks row158_layer000_chunks_eq
  intro block hblock
  simp only [row158_layer000_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row158_layer000_pairs000
  · exact row158_layer000_pairs001
  · exact row158_layer000_pairs002
  · exact row158_layer000_pairs003
  · exact row158_layer000_pairs004
  · exact row158_layer000_pairs005
  · exact row158_layer000_pairs006
  · exact row158_layer000_pairs007
  · exact row158_layer000_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer000_checked :
    coverLayerCheck row158.height row158.goods { lower := 24806, upper := 49612, M := 16 } = true := by
  exact coverLayerCheck_of_parts row158_layer000_arithmetic row158_layer000_enumeration row158_bounds_eq row158_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row158_layer001_intervals : List ColouredInterval :=
  [(2, 65536, 65693), (2, 81920, 82077), (2, 98304, 98461), (2, 65536, 65693), (2, 98304, 98461), (2, 65536, 65693), (3, 52488, 52645), (3, 59049, 59206), (3, 65610, 65767), (3, 72171, 72328), (3, 78732, 78889), (3, 59049, 59206), (3, 78732, 78889), (3, 98415, 98572), (3, 59049, 59206), (5, 62500, 62657), (5, 78125, 78282), (5, 93750, 93907), (5, 78125, 78282), (7, 50421, 50578), (7, 67228, 67385), (7, 84035, 84192), (11, 58564, 58721), (11, 73205, 73362), (11, 87846, 88003), (13, 57122, 57279), (13, 85683, 85840), (17, 54043, 54200), (17, 58956, 59113), (17, 83521, 83678), (19, 54872, 55029), (19, 61731, 61888), (19, 68590, 68747), (19, 75449, 75606), (19, 82308, 82465), (23, 60835, 60992), (23, 73002, 73159), (23, 85169, 85326), (23, 97336, 97493), (29, 73167, 73324), (29, 97556, 97713), (31, 59582, 59739), (31, 89373, 89530), (37, 50653, 50810), (41, 68921, 69078), (43, 79507, 79664), (67, 53868, 54025), (71, 50410, 50567), (71, 55451, 55608), (71, 60492, 60649), (73, 53290, 53447), (73, 58619, 58776), (73, 63948, 64105), (83, 55112, 55269), (83, 62001, 62158), (83, 68890, 69047), (83, 75779, 75936), (83, 82668, 82825), (89, 55447, 55604), (89, 63368, 63525), (89, 71289, 71446), (89, 79210, 79367), (89, 87131, 87288), (89, 95052, 95209), (97, 56454, 56611), (97, 65863, 66020), (97, 75272, 75429), (97, 84681, 84838), (97, 94090, 94247), (101, 51005, 51162), (101, 61206, 61363), (101, 71407, 71564), (101, 81608, 81765), (101, 91809, 91966), (103, 53045, 53202), (103, 63654, 63811), (103, 74263, 74420), (103, 84872, 85029), (103, 95481, 95638), (107, 57245, 57402), (107, 68694, 68851), (107, 80143, 80300), (107, 91592, 91749), (109, 59405, 59562), (109, 71286, 71443), (109, 83167, 83324), (109, 95048, 95205), (113, 51076, 51233), (113, 63845, 64002), (113, 76614, 76771), (113, 89383, 89540), (127, 64516, 64673), (127, 80645, 80802), (127, 96774, 96931), (131, 51483, 51640), (131, 68644, 68801), (131, 85805, 85962), (137, 56307, 56464), (137, 75076, 75233), (137, 93845, 94002), (139, 57963, 58120), (139, 77284, 77441), (139, 96605, 96762), (149, 66603, 66760), (149, 88804, 88961), (151, 68403, 68560), (151, 91204, 91361), (157, 73947, 74104), (157, 98596, 98753)]

def row158_layer001_block000 : List ColouredInterval :=
  [(2, 65536, 65693), (2, 81920, 82077), (2, 98304, 98461), (2, 65536, 65693), (2, 98304, 98461), (2, 65536, 65693), (3, 52488, 52645), (3, 59049, 59206), (3, 65610, 65767), (3, 72171, 72328), (3, 78732, 78889), (3, 59049, 59206), (3, 78732, 78889), (3, 98415, 98572), (3, 59049, 59206), (5, 62500, 62657)]

def row158_layer001_block001 : List ColouredInterval :=
  [(5, 78125, 78282), (5, 93750, 93907), (5, 78125, 78282), (7, 50421, 50578), (7, 67228, 67385), (7, 84035, 84192), (11, 58564, 58721), (11, 73205, 73362), (11, 87846, 88003), (13, 57122, 57279), (13, 85683, 85840), (17, 54043, 54200), (17, 58956, 59113), (17, 83521, 83678), (19, 54872, 55029), (19, 61731, 61888)]

def row158_layer001_block002 : List ColouredInterval :=
  [(19, 68590, 68747), (19, 75449, 75606), (19, 82308, 82465), (23, 60835, 60992), (23, 73002, 73159), (23, 85169, 85326), (23, 97336, 97493), (29, 73167, 73324), (29, 97556, 97713), (31, 59582, 59739), (31, 89373, 89530), (37, 50653, 50810), (41, 68921, 69078), (43, 79507, 79664), (67, 53868, 54025), (71, 50410, 50567)]

def row158_layer001_block003 : List ColouredInterval :=
  [(71, 55451, 55608), (71, 60492, 60649), (73, 53290, 53447), (73, 58619, 58776), (73, 63948, 64105), (83, 55112, 55269), (83, 62001, 62158), (83, 68890, 69047), (83, 75779, 75936), (83, 82668, 82825), (89, 55447, 55604), (89, 63368, 63525), (89, 71289, 71446), (89, 79210, 79367), (89, 87131, 87288), (89, 95052, 95209)]

def row158_layer001_block004 : List ColouredInterval :=
  [(97, 56454, 56611), (97, 65863, 66020), (97, 75272, 75429), (97, 84681, 84838), (97, 94090, 94247), (101, 51005, 51162), (101, 61206, 61363), (101, 71407, 71564), (101, 81608, 81765), (101, 91809, 91966), (103, 53045, 53202), (103, 63654, 63811), (103, 74263, 74420), (103, 84872, 85029), (103, 95481, 95638), (107, 57245, 57402)]

def row158_layer001_block005 : List ColouredInterval :=
  [(107, 68694, 68851), (107, 80143, 80300), (107, 91592, 91749), (109, 59405, 59562), (109, 71286, 71443), (109, 83167, 83324), (109, 95048, 95205), (113, 51076, 51233), (113, 63845, 64002), (113, 76614, 76771), (113, 89383, 89540), (127, 64516, 64673), (127, 80645, 80802), (127, 96774, 96931), (131, 51483, 51640), (131, 68644, 68801)]

def row158_layer001_block006 : List ColouredInterval :=
  [(131, 85805, 85962), (137, 56307, 56464), (137, 75076, 75233), (137, 93845, 94002), (139, 57963, 58120), (139, 77284, 77441), (139, 96605, 96762), (149, 66603, 66760), (149, 88804, 88961), (151, 68403, 68560), (151, 91204, 91361), (157, 73947, 74104), (157, 98596, 98753)]

def row158_layer001_chunks : List (List ColouredInterval) :=
  [row158_layer001_block000, row158_layer001_block001, row158_layer001_block002, row158_layer001_block003, row158_layer001_block004, row158_layer001_block005, row158_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_arithmetic : LayerArithmeticValid row158.height { lower := 49612, upper := 99224, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_enumeration :
    activePowerIntervalList 158 12 49612 99224 = row158_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_pairs000 :
    row158_layer001_block000.all (fun I => row158_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_pairs001 :
    row158_layer001_block001.all (fun I => row158_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_pairs002 :
    row158_layer001_block002.all (fun I => row158_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_pairs003 :
    row158_layer001_block003.all (fun I => row158_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_pairs004 :
    row158_layer001_block004.all (fun I => row158_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_pairs005 :
    row158_layer001_block005.all (fun I => row158_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_pairs006 :
    row158_layer001_block006.all (fun I => row158_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_chunks_eq : row158_layer001_chunks.flatten = row158_layer001_intervals := by
  rfl

theorem row158_layer001_pairs : pairCoverCheck row158_layer001_intervals row158_bounds = true := by
  apply pairCoverCheck_of_chunks row158_layer001_chunks_eq
  intro block hblock
  simp only [row158_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row158_layer001_pairs000
  · exact row158_layer001_pairs001
  · exact row158_layer001_pairs002
  · exact row158_layer001_pairs003
  · exact row158_layer001_pairs004
  · exact row158_layer001_pairs005
  · exact row158_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer001_checked :
    coverLayerCheck row158.height row158.goods { lower := 49612, upper := 99224, M := 12 } = true := by
  exact coverLayerCheck_of_parts row158_layer001_arithmetic row158_layer001_enumeration row158_bounds_eq row158_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row158_layer002_intervals : List ColouredInterval :=
  [(2, 131072, 131229), (2, 131072, 131229), (2, 196608, 196765), (2, 131072, 131229), (3, 118098, 118255), (3, 137781, 137938), (3, 157464, 157621), (3, 177147, 177304), (3, 118098, 118255), (3, 177147, 177304), (3, 177147, 177304), (5, 109375, 109532), (5, 125000, 125157), (5, 140625, 140782), (5, 156250, 156407), (7, 100842, 100999), (7, 117649, 117806), (7, 134456, 134613), (7, 151263, 151420), (7, 117649, 117806), (11, 102487, 102644), (11, 117128, 117285), (11, 131769, 131926), (11, 161051, 161208), (13, 114244, 114401), (13, 142805, 142962), (13, 171366, 171523), (17, 167042, 167199), (19, 130321, 130478), (23, 109503, 109660), (29, 121945, 122102), (29, 146334, 146491), (29, 170723, 170880), (29, 195112, 195269), (31, 119164, 119321), (31, 148955, 149112), (31, 178746, 178903), (37, 101306, 101463), (37, 151959, 152116), (41, 137842, 137999), (43, 159014, 159171), (47, 103823, 103980), (53, 148877, 149034), (107, 103041, 103198), (109, 106929, 107086), (113, 102152, 102309), (113, 114921, 115078), (127, 112903, 113060), (127, 129032, 129189), (127, 145161, 145318), (131, 102966, 103123), (131, 120127, 120284), (131, 137288, 137445), (131, 154449, 154606), (137, 112614, 112771), (137, 131383, 131540), (137, 150152, 150309), (137, 168921, 169078), (139, 115926, 116083), (139, 135247, 135404), (139, 154568, 154725), (139, 173889, 174046), (149, 111005, 111162), (149, 133206, 133363), (149, 155407, 155564), (149, 177608, 177765), (151, 114005, 114162), (151, 136806, 136963), (151, 159607, 159764), (151, 182408, 182565), (157, 123245, 123402), (157, 147894, 148051), (157, 172543, 172700), (157, 197192, 197349)]

def row158_layer002_block000 : List ColouredInterval :=
  [(2, 131072, 131229), (2, 131072, 131229), (2, 196608, 196765), (2, 131072, 131229), (3, 118098, 118255), (3, 137781, 137938), (3, 157464, 157621), (3, 177147, 177304), (3, 118098, 118255), (3, 177147, 177304), (3, 177147, 177304), (5, 109375, 109532), (5, 125000, 125157), (5, 140625, 140782), (5, 156250, 156407), (7, 100842, 100999)]

def row158_layer002_block001 : List ColouredInterval :=
  [(7, 117649, 117806), (7, 134456, 134613), (7, 151263, 151420), (7, 117649, 117806), (11, 102487, 102644), (11, 117128, 117285), (11, 131769, 131926), (11, 161051, 161208), (13, 114244, 114401), (13, 142805, 142962), (13, 171366, 171523), (17, 167042, 167199), (19, 130321, 130478), (23, 109503, 109660), (29, 121945, 122102), (29, 146334, 146491)]

def row158_layer002_block002 : List ColouredInterval :=
  [(29, 170723, 170880), (29, 195112, 195269), (31, 119164, 119321), (31, 148955, 149112), (31, 178746, 178903), (37, 101306, 101463), (37, 151959, 152116), (41, 137842, 137999), (43, 159014, 159171), (47, 103823, 103980), (53, 148877, 149034), (107, 103041, 103198), (109, 106929, 107086), (113, 102152, 102309), (113, 114921, 115078), (127, 112903, 113060)]

def row158_layer002_block003 : List ColouredInterval :=
  [(127, 129032, 129189), (127, 145161, 145318), (131, 102966, 103123), (131, 120127, 120284), (131, 137288, 137445), (131, 154449, 154606), (137, 112614, 112771), (137, 131383, 131540), (137, 150152, 150309), (137, 168921, 169078), (139, 115926, 116083), (139, 135247, 135404), (139, 154568, 154725), (139, 173889, 174046), (149, 111005, 111162), (149, 133206, 133363)]

def row158_layer002_block004 : List ColouredInterval :=
  [(149, 155407, 155564), (149, 177608, 177765), (151, 114005, 114162), (151, 136806, 136963), (151, 159607, 159764), (151, 182408, 182565), (157, 123245, 123402), (157, 147894, 148051), (157, 172543, 172700), (157, 197192, 197349)]

def row158_layer002_chunks : List (List ColouredInterval) :=
  [row158_layer002_block000, row158_layer002_block001, row158_layer002_block002, row158_layer002_block003, row158_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_arithmetic : LayerArithmeticValid row158.height { lower := 99224, upper := 198448, M := 9 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_enumeration :
    activePowerIntervalList 158 9 99224 198448 = row158_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_pairs000 :
    row158_layer002_block000.all (fun I => row158_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_pairs001 :
    row158_layer002_block001.all (fun I => row158_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_pairs002 :
    row158_layer002_block002.all (fun I => row158_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_pairs003 :
    row158_layer002_block003.all (fun I => row158_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_pairs004 :
    row158_layer002_block004.all (fun I => row158_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row158_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_chunks_eq : row158_layer002_chunks.flatten = row158_layer002_intervals := by
  rfl

theorem row158_layer002_pairs : pairCoverCheck row158_layer002_intervals row158_bounds = true := by
  apply pairCoverCheck_of_chunks row158_layer002_chunks_eq
  intro block hblock
  simp only [row158_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row158_layer002_pairs000
  · exact row158_layer002_pairs001
  · exact row158_layer002_pairs002
  · exact row158_layer002_pairs003
  · exact row158_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer002_checked :
    coverLayerCheck row158.height row158.goods { lower := 99224, upper := 198448, M := 9 } = true := by
  exact coverLayerCheck_of_parts row158_layer002_arithmetic row158_layer002_enumeration row158_bounds_eq row158_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer003_checked :
    coverLayerCheck row158.height row158.goods { lower := 198448, upper := 396896, M := 7 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer004_checked :
    coverLayerCheck row158.height row158.goods { lower := 396896, upper := 793792, M := 5 } = true := by
  decide +kernel

theorem row158_layer005_checked :
    coverLayerCheck row158.height row158.goods { lower := 793792, upper := 1587584, M := 4 } = true := by
  decide +kernel

theorem row158_layer006_checked :
    coverLayerCheck row158.height row158.goods { lower := 1587584, upper := 3175168, M := 3 } = true := by
  decide +kernel

theorem row158_layer007_checked :
    coverLayerCheck row158.height row158.goods { lower := 3175168, upper := 6350336, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layer008_checked :
    coverLayerCheck row158.height row158.goods { lower := 6350336, upper := 12700672, M := 2 } = true := by
  decide +kernel

theorem row158_layer009_checked :
    coverLayerCheck row158.height row158.goods { lower := 12700672, upper := 25401344, M := 2 } = true := by
  decide +kernel

theorem row158_layer010_checked :
    coverLayerCheck row158.height row158.goods { lower := 25401344, upper := 50802688, M := 1 } = true := by
  decide +kernel

theorem row158_layer011_checked :
    coverLayerCheck row158.height row158.goods { lower := 50802688, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_layers_checked :
    row158.layers.all (coverLayerCheck row158.height row158.goods) = true := by
  change row158_layers.all (coverLayerCheck row158.height row158.goods) = true
  simp only [row158_layers, List.all_cons, List.all_nil,
    row158_layer000_checked,
    row158_layer001_checked,
    row158_layer002_checked,
    row158_layer003_checked,
    row158_layer004_checked,
    row158_layer005_checked,
    row158_layer006_checked,
    row158_layer007_checked,
    row158_layer008_checked,
    row158_layer009_checked,
    row158_layer010_checked,
    row158_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row158_checked : finiteCoverRowCheck row158 = true := by
  simp only [finiteCoverRowCheck, row158_registered, row158_goods_checked,
    row158_small_checked, row158_layerCover_checked, row158_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row158_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i158 :
    ∀ n j : ℕ, 1 ≤ 158 ∧ 158 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 158 ≤ p ∧ p ∣ Nat.choose n 158 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row158_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i158
