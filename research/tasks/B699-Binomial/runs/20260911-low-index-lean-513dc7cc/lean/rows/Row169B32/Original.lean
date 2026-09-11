import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row169B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer000_checked :
    coverLayerCheck row169.height row169.goods { lower := 28392, upper := 56784, M := 14 } = true := by
  exact coverLayerCheck_of_parts row169_layer000_arithmetic row169_layer000_enumeration row169_bounds_eq row169_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row169_layer001_intervals : List ColouredInterval :=
  [(2, 57344, 57512), (2, 65536, 65704), (2, 73728, 73896), (2, 81920, 82088), (2, 90112, 90280), (2, 65536, 65704), (2, 81920, 82088), (2, 98304, 98472), (2, 65536, 65704), (2, 98304, 98472), (2, 65536, 65704), (3, 59049, 59217), (3, 65610, 65778), (3, 72171, 72339), (3, 59049, 59217), (3, 78732, 78900), (3, 98415, 98583), (3, 59049, 59217), (5, 62500, 62668), (5, 78125, 78293), (5, 93750, 93918), (5, 109375, 109543), (5, 78125, 78293), (7, 67228, 67396), (7, 84035, 84203), (7, 100842, 101010), (11, 58564, 58732), (11, 73205, 73373), (11, 87846, 88014), (11, 102487, 102655), (17, 83521, 83689), (19, 61731, 61899), (19, 68590, 68758), (19, 75449, 75617), (23, 60835, 61003), (23, 73002, 73170), (23, 85169, 85337), (23, 97336, 97504), (23, 109503, 109671), (29, 73167, 73335), (29, 97556, 97724), (31, 59582, 59750), (31, 89373, 89541), (37, 101306, 101474), (41, 68921, 69089), (43, 79507, 79675), (47, 103823, 103991), (73, 58619, 58787), (79, 62410, 62578), (79, 68651, 68819), (83, 62001, 62169), (83, 68890, 69058), (83, 75779, 75947), (89, 63368, 63536), (89, 71289, 71457), (89, 79210, 79378), (89, 87131, 87299), (97, 65863, 66031), (97, 75272, 75440), (97, 84681, 84849), (97, 94090, 94258), (97, 103499, 103667), (101, 61206, 61374), (101, 71407, 71575), (101, 81608, 81776), (101, 91809, 91977), (101, 102010, 102178), (101, 112211, 112379), (103, 63654, 63822), (103, 74263, 74431), (103, 84872, 85040), (103, 95481, 95649), (103, 106090, 106258), (107, 57245, 57413), (107, 68694, 68862), (107, 80143, 80311), (107, 91592, 91760), (107, 103041, 103209), (109, 59405, 59573), (109, 71286, 71454), (109, 83167, 83335), (109, 95048, 95216), (109, 106929, 107097), (113, 63845, 64013), (113, 76614, 76782), (113, 89383, 89551), (113, 102152, 102320), (127, 64516, 64684), (127, 80645, 80813), (127, 96774, 96942), (127, 112903, 113071), (131, 68644, 68812), (131, 85805, 85973), (131, 102966, 103134), (137, 75076, 75244), (137, 93845, 94013), (137, 112614, 112782), (139, 57963, 58131), (139, 77284, 77452), (139, 96605, 96773), (149, 66603, 66771), (149, 88804, 88972), (149, 111005, 111173), (151, 68403, 68571), (151, 91204, 91372), (157, 73947, 74115), (157, 98596, 98764), (163, 79707, 79875), (163, 106276, 106444), (167, 83667, 83835), (167, 111556, 111724)]

def row169_layer001_block000 : List ColouredInterval :=
  [(2, 57344, 57512), (2, 65536, 65704), (2, 73728, 73896), (2, 81920, 82088), (2, 90112, 90280), (2, 65536, 65704), (2, 81920, 82088), (2, 98304, 98472), (2, 65536, 65704), (2, 98304, 98472), (2, 65536, 65704), (3, 59049, 59217), (3, 65610, 65778), (3, 72171, 72339), (3, 59049, 59217), (3, 78732, 78900)]

def row169_layer001_block001 : List ColouredInterval :=
  [(3, 98415, 98583), (3, 59049, 59217), (5, 62500, 62668), (5, 78125, 78293), (5, 93750, 93918), (5, 109375, 109543), (5, 78125, 78293), (7, 67228, 67396), (7, 84035, 84203), (7, 100842, 101010), (11, 58564, 58732), (11, 73205, 73373), (11, 87846, 88014), (11, 102487, 102655), (17, 83521, 83689), (19, 61731, 61899)]

def row169_layer001_block002 : List ColouredInterval :=
  [(19, 68590, 68758), (19, 75449, 75617), (23, 60835, 61003), (23, 73002, 73170), (23, 85169, 85337), (23, 97336, 97504), (23, 109503, 109671), (29, 73167, 73335), (29, 97556, 97724), (31, 59582, 59750), (31, 89373, 89541), (37, 101306, 101474), (41, 68921, 69089), (43, 79507, 79675), (47, 103823, 103991), (73, 58619, 58787)]

def row169_layer001_block003 : List ColouredInterval :=
  [(79, 62410, 62578), (79, 68651, 68819), (83, 62001, 62169), (83, 68890, 69058), (83, 75779, 75947), (89, 63368, 63536), (89, 71289, 71457), (89, 79210, 79378), (89, 87131, 87299), (97, 65863, 66031), (97, 75272, 75440), (97, 84681, 84849), (97, 94090, 94258), (97, 103499, 103667), (101, 61206, 61374), (101, 71407, 71575)]

def row169_layer001_block004 : List ColouredInterval :=
  [(101, 81608, 81776), (101, 91809, 91977), (101, 102010, 102178), (101, 112211, 112379), (103, 63654, 63822), (103, 74263, 74431), (103, 84872, 85040), (103, 95481, 95649), (103, 106090, 106258), (107, 57245, 57413), (107, 68694, 68862), (107, 80143, 80311), (107, 91592, 91760), (107, 103041, 103209), (109, 59405, 59573), (109, 71286, 71454)]

def row169_layer001_block005 : List ColouredInterval :=
  [(109, 83167, 83335), (109, 95048, 95216), (109, 106929, 107097), (113, 63845, 64013), (113, 76614, 76782), (113, 89383, 89551), (113, 102152, 102320), (127, 64516, 64684), (127, 80645, 80813), (127, 96774, 96942), (127, 112903, 113071), (131, 68644, 68812), (131, 85805, 85973), (131, 102966, 103134), (137, 75076, 75244), (137, 93845, 94013)]

def row169_layer001_block006 : List ColouredInterval :=
  [(137, 112614, 112782), (139, 57963, 58131), (139, 77284, 77452), (139, 96605, 96773), (149, 66603, 66771), (149, 88804, 88972), (149, 111005, 111173), (151, 68403, 68571), (151, 91204, 91372), (157, 73947, 74115), (157, 98596, 98764), (163, 79707, 79875), (163, 106276, 106444), (167, 83667, 83835), (167, 111556, 111724)]

def row169_layer001_chunks : List (List ColouredInterval) :=
  [row169_layer001_block000, row169_layer001_block001, row169_layer001_block002, row169_layer001_block003, row169_layer001_block004, row169_layer001_block005, row169_layer001_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_arithmetic : LayerArithmeticValid row169.height { lower := 56784, upper := 113568, M := 11 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_enumeration :
    activePowerIntervalList 169 11 56784 113568 = row169_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_pairs000 :
    row169_layer001_block000.all (fun I => row169_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_pairs001 :
    row169_layer001_block001.all (fun I => row169_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_pairs002 :
    row169_layer001_block002.all (fun I => row169_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_pairs003 :
    row169_layer001_block003.all (fun I => row169_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_pairs004 :
    row169_layer001_block004.all (fun I => row169_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_pairs005 :
    row169_layer001_block005.all (fun I => row169_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_pairs006 :
    row169_layer001_block006.all (fun I => row169_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_chunks_eq : row169_layer001_chunks.flatten = row169_layer001_intervals := by
  rfl

theorem row169_layer001_pairs : pairCoverCheck row169_layer001_intervals row169_bounds = true := by
  apply pairCoverCheck_of_chunks row169_layer001_chunks_eq
  intro block hblock
  simp only [row169_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row169_layer001_pairs000
  · exact row169_layer001_pairs001
  · exact row169_layer001_pairs002
  · exact row169_layer001_pairs003
  · exact row169_layer001_pairs004
  · exact row169_layer001_pairs005
  · exact row169_layer001_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer001_checked :
    coverLayerCheck row169.height row169.goods { lower := 56784, upper := 113568, M := 11 } = true := by
  exact coverLayerCheck_of_parts row169_layer001_arithmetic row169_layer001_enumeration row169_bounds_eq row169_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row169_layer002_intervals : List ColouredInterval :=
  [(2, 114688, 114856), (2, 131072, 131240), (2, 131072, 131240), (2, 163840, 164008), (2, 196608, 196776), (2, 131072, 131240), (2, 196608, 196776), (2, 131072, 131240), (3, 118098, 118266), (3, 137781, 137949), (3, 157464, 157632), (3, 118098, 118266), (3, 177147, 177315), (3, 177147, 177315), (5, 125000, 125168), (5, 156250, 156418), (7, 117649, 117817), (7, 134456, 134624), (7, 117649, 117817), (11, 117128, 117296), (11, 161051, 161219), (17, 167042, 167210), (19, 130321, 130489), (29, 121945, 122113), (29, 146334, 146502), (29, 170723, 170891), (29, 195112, 195280), (31, 119164, 119332), (31, 148955, 149123), (31, 178746, 178914), (31, 208537, 208705), (37, 151959, 152127), (37, 202612, 202780), (41, 137842, 138010), (41, 206763, 206931), (43, 159014, 159182), (47, 207646, 207814), (53, 148877, 149045), (59, 205379, 205547), (61, 226981, 227135), (127, 129032, 129200), (131, 120127, 120295), (131, 137288, 137456), (137, 131383, 131551), (137, 150152, 150320), (139, 115926, 116094), (139, 135247, 135415), (139, 154568, 154736), (149, 133206, 133374), (149, 155407, 155575), (149, 177608, 177776), (151, 114005, 114173), (151, 136806, 136974), (151, 159607, 159775), (151, 182408, 182576), (157, 123245, 123413), (157, 147894, 148062), (157, 172543, 172711), (157, 197192, 197360), (163, 132845, 133013), (163, 159414, 159582), (163, 185983, 186151), (163, 212552, 212720), (167, 139445, 139613), (167, 167334, 167502), (167, 195223, 195391), (167, 223112, 223280)]

def row169_layer002_block000 : List ColouredInterval :=
  [(2, 114688, 114856), (2, 131072, 131240), (2, 131072, 131240), (2, 163840, 164008), (2, 196608, 196776), (2, 131072, 131240), (2, 196608, 196776), (2, 131072, 131240), (3, 118098, 118266), (3, 137781, 137949), (3, 157464, 157632), (3, 118098, 118266), (3, 177147, 177315), (3, 177147, 177315), (5, 125000, 125168), (5, 156250, 156418)]

def row169_layer002_block001 : List ColouredInterval :=
  [(7, 117649, 117817), (7, 134456, 134624), (7, 117649, 117817), (11, 117128, 117296), (11, 161051, 161219), (17, 167042, 167210), (19, 130321, 130489), (29, 121945, 122113), (29, 146334, 146502), (29, 170723, 170891), (29, 195112, 195280), (31, 119164, 119332), (31, 148955, 149123), (31, 178746, 178914), (31, 208537, 208705), (37, 151959, 152127)]

def row169_layer002_block002 : List ColouredInterval :=
  [(37, 202612, 202780), (41, 137842, 138010), (41, 206763, 206931), (43, 159014, 159182), (47, 207646, 207814), (53, 148877, 149045), (59, 205379, 205547), (61, 226981, 227135), (127, 129032, 129200), (131, 120127, 120295), (131, 137288, 137456), (137, 131383, 131551), (137, 150152, 150320), (139, 115926, 116094), (139, 135247, 135415), (139, 154568, 154736)]

def row169_layer002_block003 : List ColouredInterval :=
  [(149, 133206, 133374), (149, 155407, 155575), (149, 177608, 177776), (151, 114005, 114173), (151, 136806, 136974), (151, 159607, 159775), (151, 182408, 182576), (157, 123245, 123413), (157, 147894, 148062), (157, 172543, 172711), (157, 197192, 197360), (163, 132845, 133013), (163, 159414, 159582), (163, 185983, 186151), (163, 212552, 212720), (167, 139445, 139613)]

def row169_layer002_block004 : List ColouredInterval :=
  [(167, 167334, 167502), (167, 195223, 195391), (167, 223112, 223280)]

def row169_layer002_chunks : List (List ColouredInterval) :=
  [row169_layer002_block000, row169_layer002_block001, row169_layer002_block002, row169_layer002_block003, row169_layer002_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_arithmetic : LayerArithmeticValid row169.height { lower := 113568, upper := 227136, M := 8 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_enumeration :
    activePowerIntervalList 169 8 113568 227136 = row169_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_pairs000 :
    row169_layer002_block000.all (fun I => row169_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_pairs001 :
    row169_layer002_block001.all (fun I => row169_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_pairs002 :
    row169_layer002_block002.all (fun I => row169_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_pairs003 :
    row169_layer002_block003.all (fun I => row169_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_pairs004 :
    row169_layer002_block004.all (fun I => row169_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row169_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_chunks_eq : row169_layer002_chunks.flatten = row169_layer002_intervals := by
  rfl

theorem row169_layer002_pairs : pairCoverCheck row169_layer002_intervals row169_bounds = true := by
  apply pairCoverCheck_of_chunks row169_layer002_chunks_eq
  intro block hblock
  simp only [row169_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row169_layer002_pairs000
  · exact row169_layer002_pairs001
  · exact row169_layer002_pairs002
  · exact row169_layer002_pairs003
  · exact row169_layer002_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer002_checked :
    coverLayerCheck row169.height row169.goods { lower := 113568, upper := 227136, M := 8 } = true := by
  exact coverLayerCheck_of_parts row169_layer002_arithmetic row169_layer002_enumeration row169_bounds_eq row169_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer003_checked :
    coverLayerCheck row169.height row169.goods { lower := 227136, upper := 454272, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer004_checked :
    coverLayerCheck row169.height row169.goods { lower := 454272, upper := 908544, M := 5 } = true := by
  decide +kernel

theorem row169_layer005_checked :
    coverLayerCheck row169.height row169.goods { lower := 908544, upper := 1817088, M := 4 } = true := by
  decide +kernel

theorem row169_layer006_checked :
    coverLayerCheck row169.height row169.goods { lower := 1817088, upper := 3634176, M := 3 } = true := by
  decide +kernel

theorem row169_layer007_checked :
    coverLayerCheck row169.height row169.goods { lower := 3634176, upper := 7268352, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layer008_checked :
    coverLayerCheck row169.height row169.goods { lower := 7268352, upper := 14536704, M := 2 } = true := by
  decide +kernel

theorem row169_layer009_checked :
    coverLayerCheck row169.height row169.goods { lower := 14536704, upper := 29073408, M := 1 } = true := by
  decide +kernel

theorem row169_layer010_checked :
    coverLayerCheck row169.height row169.goods { lower := 29073408, upper := 58146816, M := 1 } = true := by
  decide +kernel

theorem row169_layer011_checked :
    coverLayerCheck row169.height row169.goods { lower := 58146816, upper := 100000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_layers_checked :
    row169.layers.all (coverLayerCheck row169.height row169.goods) = true := by
  change row169_layers.all (coverLayerCheck row169.height row169.goods) = true
  simp only [row169_layers, List.all_cons, List.all_nil,
    row169_layer000_checked,
    row169_layer001_checked,
    row169_layer002_checked,
    row169_layer003_checked,
    row169_layer004_checked,
    row169_layer005_checked,
    row169_layer006_checked,
    row169_layer007_checked,
    row169_layer008_checked,
    row169_layer009_checked,
    row169_layer010_checked,
    row169_layer011_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row169_checked : finiteCoverRowCheck row169 = true := by
  simp only [finiteCoverRowCheck, row169_registered, row169_goods_checked,
    row169_small_checked, row169_layerCover_checked, row169_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row169_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem common_i169 :
    ∀ n j : ℕ, 1 ≤ 169 ∧ 169 < j ∧ j ≤ n / 2 →
      ∃ p : ℕ, p.Prime ∧ 169 ≤ p ∧ p ∣ Nat.choose n 169 ∧ p ∣ Nat.choose n j := by
  intro n j h
  obtain ⟨p, hp, hpi, hgcd⟩ :=
    common_of_finite_cover_row_checked row169_checked h.2.1 h.2.2
  exact ⟨p, hp, hpi, dvd_trans hgcd (Nat.gcd_dvd_left _ _),
    dvd_trans hgcd (Nat.gcd_dvd_right _ _)⟩

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.common_i169
