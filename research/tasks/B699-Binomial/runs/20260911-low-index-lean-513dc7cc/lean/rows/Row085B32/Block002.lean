import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row085B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs009 :
    row085_layer002_block009.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs010 :
    row085_layer002_block010.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_pairs011 :
    row085_layer002_block011.all (fun I => row085_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_chunks_eq : row085_layer002_chunks.flatten = row085_layer002_intervals := by
  rfl

theorem row085_layer002_pairs : pairCoverCheck row085_layer002_intervals row085_bounds = true := by
  apply pairCoverCheck_of_chunks row085_layer002_chunks_eq
  intro block hblock
  simp only [row085_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row085_layer002_pairs000
  · exact row085_layer002_pairs001
  · exact row085_layer002_pairs002
  · exact row085_layer002_pairs003
  · exact row085_layer002_pairs004
  · exact row085_layer002_pairs005
  · exact row085_layer002_pairs006
  · exact row085_layer002_pairs007
  · exact row085_layer002_pairs008
  · exact row085_layer002_pairs009
  · exact row085_layer002_pairs010
  · exact row085_layer002_pairs011

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer002_checked :
    coverLayerCheck row085.height row085.goods { lower := 28560, upper := 57120, M := 22 } = true := by
  exact coverLayerCheck_of_parts row085_layer002_arithmetic row085_layer002_enumeration row085_bounds_eq row085_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_layer003_intervals : List ColouredInterval :=
  [(2, 57344, 57428), (2, 61440, 61524), (2, 65536, 65620), (2, 69632, 69716), (2, 73728, 73812), (2, 77824, 77908), (2, 57344, 57428), (2, 65536, 65620), (2, 73728, 73812), (2, 81920, 82004), (2, 90112, 90196), (2, 98304, 98388), (2, 106496, 106580), (2, 65536, 65620), (2, 81920, 82004), (2, 98304, 98388), (2, 65536, 65620), (2, 98304, 98388), (2, 65536, 65620), (3, 59049, 59133), (3, 65610, 65694), (3, 72171, 72255), (3, 78732, 78816), (3, 85293, 85377), (3, 91854, 91938), (3, 98415, 98499), (3, 104976, 105060), (3, 111537, 111621), (3, 59049, 59133), (3, 78732, 78816), (3, 98415, 98499), (3, 59049, 59133), (5, 78125, 78209), (7, 67228, 67312), (7, 84035, 84119), (7, 100842, 100926), (11, 58564, 58648), (11, 73205, 73289), (11, 87846, 87930), (11, 102487, 102571), (13, 57122, 57206), (13, 85683, 85767), (17, 83521, 83605), (19, 61731, 61815), (19, 68590, 68674), (19, 75449, 75533), (19, 82308, 82392), (19, 89167, 89251), (19, 96026, 96110), (19, 102885, 102969), (19, 109744, 109828), (23, 60835, 60919), (23, 73002, 73086), (23, 85169, 85253), (23, 97336, 97420), (23, 109503, 109587), (29, 73167, 73251), (29, 97556, 97640), (31, 59582, 59666), (31, 89373, 89457), (37, 101306, 101390), (41, 68921, 69005), (43, 79507, 79591), (47, 103823, 103907), (59, 59177, 59261), (59, 62658, 62742), (59, 66139, 66223), (61, 59536, 59620), (61, 63257, 63341), (61, 66978, 67062), (61, 70699, 70783), (67, 58357, 58441), (67, 62846, 62930), (67, 67335, 67419), (67, 71824, 71908), (67, 76313, 76397), (67, 80802, 80886), (67, 85291, 85375), (71, 60492, 60576), (71, 65533, 65617), (71, 70574, 70658), (71, 75615, 75699), (71, 80656, 80740), (71, 85697, 85781), (71, 90738, 90822), (71, 95779, 95863), (73, 58619, 58703), (73, 63948, 64032), (73, 69277, 69361), (73, 74606, 74690), (73, 79935, 80019), (73, 85264, 85348), (73, 90593, 90677), (73, 95922, 96006), (73, 101251, 101335), (79, 62410, 62494), (79, 68651, 68735), (79, 74892, 74976), (79, 81133, 81217), (79, 87374, 87458), (79, 93615, 93699), (79, 99856, 99940), (79, 106097, 106181), (79, 112338, 112422), (83, 62001, 62085), (83, 68890, 68974), (83, 75779, 75863), (83, 82668, 82752), (83, 89557, 89641), (83, 96446, 96530), (83, 103335, 103419), (83, 110224, 110308)]

def row085_layer003_block000 : List ColouredInterval :=
  [(2, 57344, 57428), (2, 61440, 61524), (2, 65536, 65620), (2, 69632, 69716), (2, 73728, 73812), (2, 77824, 77908), (2, 57344, 57428), (2, 65536, 65620), (2, 73728, 73812), (2, 81920, 82004), (2, 90112, 90196), (2, 98304, 98388), (2, 106496, 106580), (2, 65536, 65620), (2, 81920, 82004), (2, 98304, 98388)]

def row085_layer003_block001 : List ColouredInterval :=
  [(2, 65536, 65620), (2, 98304, 98388), (2, 65536, 65620), (3, 59049, 59133), (3, 65610, 65694), (3, 72171, 72255), (3, 78732, 78816), (3, 85293, 85377), (3, 91854, 91938), (3, 98415, 98499), (3, 104976, 105060), (3, 111537, 111621), (3, 59049, 59133), (3, 78732, 78816), (3, 98415, 98499), (3, 59049, 59133)]

def row085_layer003_block002 : List ColouredInterval :=
  [(5, 78125, 78209), (7, 67228, 67312), (7, 84035, 84119), (7, 100842, 100926), (11, 58564, 58648), (11, 73205, 73289), (11, 87846, 87930), (11, 102487, 102571), (13, 57122, 57206), (13, 85683, 85767), (17, 83521, 83605), (19, 61731, 61815), (19, 68590, 68674), (19, 75449, 75533), (19, 82308, 82392), (19, 89167, 89251)]

def row085_layer003_block003 : List ColouredInterval :=
  [(19, 96026, 96110), (19, 102885, 102969), (19, 109744, 109828), (23, 60835, 60919), (23, 73002, 73086), (23, 85169, 85253), (23, 97336, 97420), (23, 109503, 109587), (29, 73167, 73251), (29, 97556, 97640), (31, 59582, 59666), (31, 89373, 89457), (37, 101306, 101390), (41, 68921, 69005), (43, 79507, 79591), (47, 103823, 103907)]

def row085_layer003_block004 : List ColouredInterval :=
  [(59, 59177, 59261), (59, 62658, 62742), (59, 66139, 66223), (61, 59536, 59620), (61, 63257, 63341), (61, 66978, 67062), (61, 70699, 70783), (67, 58357, 58441), (67, 62846, 62930), (67, 67335, 67419), (67, 71824, 71908), (67, 76313, 76397), (67, 80802, 80886), (67, 85291, 85375), (71, 60492, 60576), (71, 65533, 65617)]

def row085_layer003_block005 : List ColouredInterval :=
  [(71, 70574, 70658), (71, 75615, 75699), (71, 80656, 80740), (71, 85697, 85781), (71, 90738, 90822), (71, 95779, 95863), (73, 58619, 58703), (73, 63948, 64032), (73, 69277, 69361), (73, 74606, 74690), (73, 79935, 80019), (73, 85264, 85348), (73, 90593, 90677), (73, 95922, 96006), (73, 101251, 101335), (79, 62410, 62494)]

def row085_layer003_block006 : List ColouredInterval :=
  [(79, 68651, 68735), (79, 74892, 74976), (79, 81133, 81217), (79, 87374, 87458), (79, 93615, 93699), (79, 99856, 99940), (79, 106097, 106181), (79, 112338, 112422), (83, 62001, 62085), (83, 68890, 68974), (83, 75779, 75863), (83, 82668, 82752), (83, 89557, 89641), (83, 96446, 96530), (83, 103335, 103419), (83, 110224, 110308)]

def row085_layer003_chunks : List (List ColouredInterval) :=
  [row085_layer003_block000, row085_layer003_block001, row085_layer003_block002, row085_layer003_block003, row085_layer003_block004, row085_layer003_block005, row085_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_arithmetic : LayerArithmeticValid row085.height { lower := 57120, upper := 114240, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_enumeration :
    activePowerIntervalList 85 19 57120 114240 = row085_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_pairs000 :
    row085_layer003_block000.all (fun I => row085_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_pairs001 :
    row085_layer003_block001.all (fun I => row085_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_pairs002 :
    row085_layer003_block002.all (fun I => row085_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_pairs003 :
    row085_layer003_block003.all (fun I => row085_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_pairs004 :
    row085_layer003_block004.all (fun I => row085_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_pairs005 :
    row085_layer003_block005.all (fun I => row085_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_pairs006 :
    row085_layer003_block006.all (fun I => row085_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_chunks_eq : row085_layer003_chunks.flatten = row085_layer003_intervals := by
  rfl

theorem row085_layer003_pairs : pairCoverCheck row085_layer003_intervals row085_bounds = true := by
  apply pairCoverCheck_of_chunks row085_layer003_chunks_eq
  intro block hblock
  simp only [row085_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row085_layer003_pairs000
  · exact row085_layer003_pairs001
  · exact row085_layer003_pairs002
  · exact row085_layer003_pairs003
  · exact row085_layer003_pairs004
  · exact row085_layer003_pairs005
  · exact row085_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer003_checked :
    coverLayerCheck row085.height row085.goods { lower := 57120, upper := 114240, M := 19 } = true := by
  exact coverLayerCheck_of_parts row085_layer003_arithmetic row085_layer003_enumeration row085_bounds_eq row085_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_layer004_intervals : List ColouredInterval :=
  [(2, 114688, 114772), (2, 122880, 122964), (2, 131072, 131156), (2, 114688, 114772), (2, 131072, 131156), (2, 147456, 147540), (2, 163840, 163924), (2, 180224, 180308), (2, 196608, 196692), (2, 212992, 213076), (2, 131072, 131156), (2, 163840, 163924), (2, 196608, 196692), (2, 131072, 131156), (2, 196608, 196692), (2, 131072, 131156), (3, 118098, 118182), (3, 137781, 137865), (3, 157464, 157548), (3, 177147, 177231), (3, 196830, 196914), (3, 216513, 216597), (3, 118098, 118182), (3, 177147, 177231), (3, 177147, 177231), (5, 156250, 156334), (7, 117649, 117733), (7, 134456, 134540), (7, 151263, 151347), (7, 168070, 168154), (7, 184877, 184961), (7, 201684, 201768), (7, 218491, 218575), (7, 117649, 117733), (11, 117128, 117212), (11, 131769, 131853), (11, 146410, 146494), (11, 161051, 161135), (11, 175692, 175776), (11, 190333, 190417), (11, 204974, 205058), (11, 219615, 219699), (11, 161051, 161135), (13, 114244, 114328), (13, 142805, 142889), (13, 171366, 171450), (13, 199927, 200011), (19, 130321, 130405), (23, 121670, 121754), (23, 133837, 133921), (23, 146004, 146088), (23, 158171, 158255), (23, 170338, 170422), (23, 182505, 182589), (23, 194672, 194756), (29, 121945, 122029), (29, 146334, 146418), (29, 170723, 170807), (29, 195112, 195196), (29, 219501, 219585), (31, 119164, 119248), (31, 148955, 149039), (31, 178746, 178830), (31, 208537, 208621), (37, 151959, 152043), (37, 202612, 202696), (41, 137842, 137926), (41, 206763, 206847), (43, 159014, 159098), (47, 207646, 207730), (53, 148877, 148961), (59, 205379, 205463), (61, 226981, 227065)]

def row085_layer004_block000 : List ColouredInterval :=
  [(2, 114688, 114772), (2, 122880, 122964), (2, 131072, 131156), (2, 114688, 114772), (2, 131072, 131156), (2, 147456, 147540), (2, 163840, 163924), (2, 180224, 180308), (2, 196608, 196692), (2, 212992, 213076), (2, 131072, 131156), (2, 163840, 163924), (2, 196608, 196692), (2, 131072, 131156), (2, 196608, 196692), (2, 131072, 131156)]

def row085_layer004_block001 : List ColouredInterval :=
  [(3, 118098, 118182), (3, 137781, 137865), (3, 157464, 157548), (3, 177147, 177231), (3, 196830, 196914), (3, 216513, 216597), (3, 118098, 118182), (3, 177147, 177231), (3, 177147, 177231), (5, 156250, 156334), (7, 117649, 117733), (7, 134456, 134540), (7, 151263, 151347), (7, 168070, 168154), (7, 184877, 184961), (7, 201684, 201768)]

def row085_layer004_block002 : List ColouredInterval :=
  [(7, 218491, 218575), (7, 117649, 117733), (11, 117128, 117212), (11, 131769, 131853), (11, 146410, 146494), (11, 161051, 161135), (11, 175692, 175776), (11, 190333, 190417), (11, 204974, 205058), (11, 219615, 219699), (11, 161051, 161135), (13, 114244, 114328), (13, 142805, 142889), (13, 171366, 171450), (13, 199927, 200011), (19, 130321, 130405)]

def row085_layer004_block003 : List ColouredInterval :=
  [(23, 121670, 121754), (23, 133837, 133921), (23, 146004, 146088), (23, 158171, 158255), (23, 170338, 170422), (23, 182505, 182589), (23, 194672, 194756), (29, 121945, 122029), (29, 146334, 146418), (29, 170723, 170807), (29, 195112, 195196), (29, 219501, 219585), (31, 119164, 119248), (31, 148955, 149039), (31, 178746, 178830), (31, 208537, 208621)]

def row085_layer004_block004 : List ColouredInterval :=
  [(37, 151959, 152043), (37, 202612, 202696), (41, 137842, 137926), (41, 206763, 206847), (43, 159014, 159098), (47, 207646, 207730), (53, 148877, 148961), (59, 205379, 205463), (61, 226981, 227065)]

def row085_layer004_chunks : List (List ColouredInterval) :=
  [row085_layer004_block000, row085_layer004_block001, row085_layer004_block002, row085_layer004_block003, row085_layer004_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_arithmetic : LayerArithmeticValid row085.height { lower := 114240, upper := 228480, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_enumeration :
    activePowerIntervalList 85 16 114240 228480 = row085_layer004_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_pairs000 :
    row085_layer004_block000.all (fun I => row085_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_pairs001 :
    row085_layer004_block001.all (fun I => row085_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_pairs002 :
    row085_layer004_block002.all (fun I => row085_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_pairs003 :
    row085_layer004_block003.all (fun I => row085_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_pairs004 :
    row085_layer004_block004.all (fun I => row085_layer004_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_chunks_eq : row085_layer004_chunks.flatten = row085_layer004_intervals := by
  rfl

theorem row085_layer004_pairs : pairCoverCheck row085_layer004_intervals row085_bounds = true := by
  apply pairCoverCheck_of_chunks row085_layer004_chunks_eq
  intro block hblock
  simp only [row085_layer004_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row085_layer004_pairs000
  · exact row085_layer004_pairs001
  · exact row085_layer004_pairs002
  · exact row085_layer004_pairs003
  · exact row085_layer004_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer004_checked :
    coverLayerCheck row085.height row085.goods { lower := 114240, upper := 228480, M := 16 } = true := by
  exact coverLayerCheck_of_parts row085_layer004_arithmetic row085_layer004_enumeration row085_bounds_eq row085_layer004_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer004_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row085_layer005_intervals : List ColouredInterval :=
  [(2, 229376, 229460), (2, 229376, 229460), (2, 262144, 262228), (2, 294912, 294996), (2, 327680, 327764), (2, 360448, 360532), (2, 393216, 393300), (2, 425984, 426068), (2, 262144, 262228), (2, 327680, 327764), (2, 393216, 393300), (2, 262144, 262228), (2, 393216, 393300), (2, 262144, 262228), (3, 236196, 236280), (3, 255879, 255963), (3, 275562, 275646), (3, 236196, 236280), (3, 295245, 295329), (3, 354294, 354378), (3, 413343, 413427), (3, 354294, 354378), (5, 390625, 390709), (7, 235298, 235382), (7, 235298, 235382), (7, 352947, 353031), (11, 322102, 322186), (13, 228488, 228572), (13, 257049, 257133), (13, 285610, 285694), (13, 314171, 314255), (13, 342732, 342816), (13, 371293, 371377), (13, 399854, 399938), (13, 371293, 371377), (19, 260642, 260726), (19, 390963, 391047), (23, 279841, 279925), (29, 243890, 243974), (29, 268279, 268363), (29, 292668, 292752), (29, 317057, 317141), (29, 341446, 341530), (31, 238328, 238412), (31, 268119, 268203), (31, 297910, 297994), (31, 327701, 327785), (31, 357492, 357576), (31, 387283, 387367), (31, 417074, 417158), (37, 253265, 253349), (37, 303918, 304002), (37, 354571, 354655), (37, 405224, 405308), (37, 455877, 455961), (41, 275684, 275768), (41, 344605, 344689), (41, 413526, 413610), (43, 238521, 238605), (43, 318028, 318112), (43, 397535, 397619), (47, 311469, 311553), (47, 415292, 415376), (53, 297754, 297838), (53, 446631, 446715), (59, 410758, 410842), (61, 453962, 454046), (67, 300763, 300847), (71, 357911, 357995), (73, 389017, 389101)]

def row085_layer005_block000 : List ColouredInterval :=
  [(2, 229376, 229460), (2, 229376, 229460), (2, 262144, 262228), (2, 294912, 294996), (2, 327680, 327764), (2, 360448, 360532), (2, 393216, 393300), (2, 425984, 426068), (2, 262144, 262228), (2, 327680, 327764), (2, 393216, 393300), (2, 262144, 262228), (2, 393216, 393300), (2, 262144, 262228), (3, 236196, 236280), (3, 255879, 255963)]

def row085_layer005_block001 : List ColouredInterval :=
  [(3, 275562, 275646), (3, 236196, 236280), (3, 295245, 295329), (3, 354294, 354378), (3, 413343, 413427), (3, 354294, 354378), (5, 390625, 390709), (7, 235298, 235382), (7, 235298, 235382), (7, 352947, 353031), (11, 322102, 322186), (13, 228488, 228572), (13, 257049, 257133), (13, 285610, 285694), (13, 314171, 314255), (13, 342732, 342816)]

def row085_layer005_block002 : List ColouredInterval :=
  [(13, 371293, 371377), (13, 399854, 399938), (13, 371293, 371377), (19, 260642, 260726), (19, 390963, 391047), (23, 279841, 279925), (29, 243890, 243974), (29, 268279, 268363), (29, 292668, 292752), (29, 317057, 317141), (29, 341446, 341530), (31, 238328, 238412), (31, 268119, 268203), (31, 297910, 297994), (31, 327701, 327785), (31, 357492, 357576)]

def row085_layer005_block003 : List ColouredInterval :=
  [(31, 387283, 387367), (31, 417074, 417158), (37, 253265, 253349), (37, 303918, 304002), (37, 354571, 354655), (37, 405224, 405308), (37, 455877, 455961), (41, 275684, 275768), (41, 344605, 344689), (41, 413526, 413610), (43, 238521, 238605), (43, 318028, 318112), (43, 397535, 397619), (47, 311469, 311553), (47, 415292, 415376), (53, 297754, 297838)]

def row085_layer005_block004 : List ColouredInterval :=
  [(53, 446631, 446715), (59, 410758, 410842), (61, 453962, 454046), (67, 300763, 300847), (71, 357911, 357995), (73, 389017, 389101)]

def row085_layer005_chunks : List (List ColouredInterval) :=
  [row085_layer005_block000, row085_layer005_block001, row085_layer005_block002, row085_layer005_block003, row085_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_arithmetic : LayerArithmeticValid row085.height { lower := 228480, upper := 456960, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_enumeration :
    activePowerIntervalList 85 14 228480 456960 = row085_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row085_layer005_pairs000 :
    row085_layer005_block000.all (fun I => row085_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row085_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row085_layer005_pairs000
