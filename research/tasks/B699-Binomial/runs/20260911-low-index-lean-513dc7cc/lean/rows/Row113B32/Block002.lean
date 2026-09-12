import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row113B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer001_checked :
    coverLayerCheck row113.height row113.goods { lower := 25312, upper := 50624, M := 21 } = true := by
  exact coverLayerCheck_of_parts row113_layer001_arithmetic row113_layer001_enumeration row113_bounds_eq row113_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row113_layer002_intervals : List ColouredInterval :=
  [(2, 53248, 53360), (2, 57344, 57456), (2, 61440, 61552), (2, 65536, 65648), (2, 69632, 69744), (2, 57344, 57456), (2, 65536, 65648), (2, 73728, 73840), (2, 81920, 82032), (2, 90112, 90224), (2, 98304, 98416), (2, 65536, 65648), (2, 81920, 82032), (2, 98304, 98416), (2, 65536, 65648), (2, 98304, 98416), (2, 65536, 65648), (3, 52488, 52600), (3, 59049, 59161), (3, 65610, 65722), (3, 72171, 72283), (3, 78732, 78844), (3, 85293, 85405), (3, 91854, 91966), (3, 98415, 98527), (3, 59049, 59161), (3, 78732, 78844), (3, 98415, 98527), (3, 59049, 59161), (5, 53125, 53237), (5, 62500, 62612), (5, 78125, 78237), (5, 93750, 93862), (5, 78125, 78237), (7, 67228, 67340), (7, 84035, 84147), (7, 100842, 100954), (11, 58564, 58676), (11, 73205, 73317), (11, 87846, 87958), (13, 57122, 57234), (13, 85683, 85795), (17, 54043, 54155), (17, 58956, 59068), (17, 63869, 63981), (17, 68782, 68894), (17, 73695, 73807), (17, 78608, 78720), (17, 83521, 83633), (17, 83521, 83633), (19, 54872, 54984), (19, 61731, 61843), (19, 68590, 68702), (19, 75449, 75561), (19, 82308, 82420), (19, 89167, 89279), (19, 96026, 96138), (23, 60835, 60947), (23, 73002, 73114), (23, 85169, 85281), (23, 97336, 97448), (29, 73167, 73279), (29, 97556, 97668), (31, 59582, 59694), (31, 89373, 89485), (37, 50653, 50765), (41, 68921, 69033), (43, 79507, 79619), (59, 52215, 52327), (59, 55696, 55808), (59, 59177, 59289), (61, 52094, 52206), (61, 55815, 55927), (61, 59536, 59648), (61, 63257, 63369), (67, 53868, 53980), (67, 58357, 58469), (67, 62846, 62958), (67, 67335, 67447), (67, 71824, 71936), (67, 76313, 76425), (71, 55451, 55563), (71, 60492, 60604), (71, 65533, 65645), (71, 70574, 70686), (71, 75615, 75727), (71, 80656, 80768), (71, 85697, 85809), (73, 53290, 53402), (73, 58619, 58731), (73, 63948, 64060), (73, 69277, 69389), (73, 74606, 74718), (73, 79935, 80047), (73, 85264, 85376), (73, 90593, 90705), (79, 56169, 56281), (79, 62410, 62522), (79, 68651, 68763), (79, 74892, 75004), (79, 81133, 81245), (79, 87374, 87486), (79, 93615, 93727), (79, 99856, 99968), (83, 55112, 55224), (83, 62001, 62113), (83, 68890, 69002), (83, 75779, 75891), (83, 82668, 82780), (83, 89557, 89669), (83, 96446, 96558), (89, 55447, 55559), (89, 63368, 63480), (89, 71289, 71401), (89, 79210, 79322), (89, 87131, 87243), (89, 95052, 95164), (97, 56454, 56566), (97, 65863, 65975), (97, 75272, 75384), (97, 84681, 84793), (97, 94090, 94202), (101, 51005, 51117), (101, 61206, 61318), (101, 71407, 71519), (101, 81608, 81720), (101, 91809, 91921), (103, 53045, 53157), (103, 63654, 63766), (103, 74263, 74375), (103, 84872, 84984), (103, 95481, 95593), (107, 57245, 57357), (107, 68694, 68806), (107, 80143, 80255), (107, 91592, 91704), (109, 59405, 59517), (109, 71286, 71398), (109, 83167, 83279), (109, 95048, 95160)]

def row113_layer002_block000 : List ColouredInterval :=
  [(2, 53248, 53360), (2, 57344, 57456), (2, 61440, 61552), (2, 65536, 65648), (2, 69632, 69744), (2, 57344, 57456), (2, 65536, 65648), (2, 73728, 73840), (2, 81920, 82032), (2, 90112, 90224), (2, 98304, 98416), (2, 65536, 65648), (2, 81920, 82032), (2, 98304, 98416)]

def row113_layer002_block001 : List ColouredInterval :=
  [(2, 65536, 65648), (2, 98304, 98416), (2, 65536, 65648), (3, 52488, 52600), (3, 59049, 59161), (3, 65610, 65722), (3, 72171, 72283), (3, 78732, 78844), (3, 85293, 85405), (3, 91854, 91966), (3, 98415, 98527), (3, 59049, 59161), (3, 78732, 78844), (3, 98415, 98527)]

def row113_layer002_block002 : List ColouredInterval :=
  [(3, 59049, 59161), (5, 53125, 53237), (5, 62500, 62612), (5, 78125, 78237), (5, 93750, 93862), (5, 78125, 78237), (7, 67228, 67340), (7, 84035, 84147), (7, 100842, 100954), (11, 58564, 58676), (11, 73205, 73317), (11, 87846, 87958), (13, 57122, 57234), (13, 85683, 85795)]

def row113_layer002_block003 : List ColouredInterval :=
  [(17, 54043, 54155), (17, 58956, 59068), (17, 63869, 63981), (17, 68782, 68894), (17, 73695, 73807), (17, 78608, 78720), (17, 83521, 83633), (17, 83521, 83633), (19, 54872, 54984), (19, 61731, 61843), (19, 68590, 68702), (19, 75449, 75561), (19, 82308, 82420), (19, 89167, 89279)]

def row113_layer002_block004 : List ColouredInterval :=
  [(19, 96026, 96138), (23, 60835, 60947), (23, 73002, 73114), (23, 85169, 85281), (23, 97336, 97448), (29, 73167, 73279), (29, 97556, 97668), (31, 59582, 59694), (31, 89373, 89485), (37, 50653, 50765), (41, 68921, 69033), (43, 79507, 79619), (59, 52215, 52327), (59, 55696, 55808)]

def row113_layer002_block005 : List ColouredInterval :=
  [(59, 59177, 59289), (61, 52094, 52206), (61, 55815, 55927), (61, 59536, 59648), (61, 63257, 63369), (67, 53868, 53980), (67, 58357, 58469), (67, 62846, 62958), (67, 67335, 67447), (67, 71824, 71936), (67, 76313, 76425), (71, 55451, 55563), (71, 60492, 60604), (71, 65533, 65645)]

def row113_layer002_block006 : List ColouredInterval :=
  [(71, 70574, 70686), (71, 75615, 75727), (71, 80656, 80768), (71, 85697, 85809), (73, 53290, 53402), (73, 58619, 58731), (73, 63948, 64060), (73, 69277, 69389), (73, 74606, 74718), (73, 79935, 80047), (73, 85264, 85376), (73, 90593, 90705), (79, 56169, 56281), (79, 62410, 62522)]

def row113_layer002_block007 : List ColouredInterval :=
  [(79, 68651, 68763), (79, 74892, 75004), (79, 81133, 81245), (79, 87374, 87486), (79, 93615, 93727), (79, 99856, 99968), (83, 55112, 55224), (83, 62001, 62113), (83, 68890, 69002), (83, 75779, 75891), (83, 82668, 82780), (83, 89557, 89669), (83, 96446, 96558), (89, 55447, 55559)]

def row113_layer002_block008 : List ColouredInterval :=
  [(89, 63368, 63480), (89, 71289, 71401), (89, 79210, 79322), (89, 87131, 87243), (89, 95052, 95164), (97, 56454, 56566), (97, 65863, 65975), (97, 75272, 75384), (97, 84681, 84793), (97, 94090, 94202), (101, 51005, 51117), (101, 61206, 61318), (101, 71407, 71519), (101, 81608, 81720)]

def row113_layer002_block009 : List ColouredInterval :=
  [(101, 91809, 91921), (103, 53045, 53157), (103, 63654, 63766), (103, 74263, 74375), (103, 84872, 84984), (103, 95481, 95593), (107, 57245, 57357), (107, 68694, 68806), (107, 80143, 80255), (107, 91592, 91704), (109, 59405, 59517), (109, 71286, 71398), (109, 83167, 83279), (109, 95048, 95160)]

def row113_layer002_chunks : List (List ColouredInterval) :=
  [row113_layer002_block000, row113_layer002_block001, row113_layer002_block002, row113_layer002_block003, row113_layer002_block004, row113_layer002_block005, row113_layer002_block006, row113_layer002_block007, row113_layer002_block008, row113_layer002_block009]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_arithmetic : LayerArithmeticValid row113.height { lower := 50624, upper := 101248, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_enumeration :
    activePowerIntervalList 113 17 50624 101248 = row113_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs000 :
    row113_layer002_block000.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs001 :
    row113_layer002_block001.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs002 :
    row113_layer002_block002.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs003 :
    row113_layer002_block003.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs004 :
    row113_layer002_block004.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs005 :
    row113_layer002_block005.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs006 :
    row113_layer002_block006.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs007 :
    row113_layer002_block007.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs008 :
    row113_layer002_block008.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_pairs009 :
    row113_layer002_block009.all (fun I => row113_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_chunks_eq : row113_layer002_chunks.flatten = row113_layer002_intervals := by
  rfl

theorem row113_layer002_pairs : pairCoverCheck row113_layer002_intervals row113_bounds = true := by
  apply pairCoverCheck_of_chunks row113_layer002_chunks_eq
  intro block hblock
  simp only [row113_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row113_layer002_pairs000
  · exact row113_layer002_pairs001
  · exact row113_layer002_pairs002
  · exact row113_layer002_pairs003
  · exact row113_layer002_pairs004
  · exact row113_layer002_pairs005
  · exact row113_layer002_pairs006
  · exact row113_layer002_pairs007
  · exact row113_layer002_pairs008
  · exact row113_layer002_pairs009

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer002_checked :
    coverLayerCheck row113.height row113.goods { lower := 50624, upper := 101248, M := 17 } = true := by
  exact coverLayerCheck_of_parts row113_layer002_arithmetic row113_layer002_enumeration row113_bounds_eq row113_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row113_layer003_intervals : List ColouredInterval :=
  [(2, 106496, 106608), (2, 114688, 114800), (2, 114688, 114800), (2, 131072, 131184), (2, 147456, 147568), (2, 163840, 163952), (2, 180224, 180336), (2, 196608, 196720), (2, 131072, 131184), (2, 163840, 163952), (2, 196608, 196720), (2, 131072, 131184), (2, 196608, 196720), (2, 131072, 131184), (3, 118098, 118210), (3, 137781, 137893), (3, 157464, 157576), (3, 177147, 177259), (3, 196830, 196942), (3, 118098, 118210), (3, 177147, 177259), (3, 177147, 177259), (5, 109375, 109487), (5, 125000, 125112), (5, 140625, 140737), (5, 156250, 156362), (5, 171875, 171987), (5, 187500, 187612), (5, 156250, 156362), (7, 117649, 117761), (7, 134456, 134568), (7, 151263, 151375), (7, 168070, 168182), (7, 184877, 184989), (7, 201684, 201796), (7, 117649, 117761), (11, 102487, 102599), (11, 117128, 117240), (11, 131769, 131881), (11, 146410, 146522), (11, 161051, 161163), (11, 175692, 175804), (11, 190333, 190445), (11, 161051, 161163), (13, 114244, 114356), (13, 142805, 142917), (13, 171366, 171478), (13, 199927, 200039), (17, 167042, 167154), (19, 130321, 130433), (23, 109503, 109615), (23, 121670, 121782), (23, 133837, 133949), (23, 146004, 146116), (23, 158171, 158283), (23, 170338, 170450), (29, 121945, 122057), (29, 146334, 146446), (29, 170723, 170835), (29, 195112, 195224), (31, 119164, 119276), (31, 148955, 149067), (31, 178746, 178858), (37, 101306, 101418), (37, 151959, 152071), (41, 137842, 137954), (43, 159014, 159126), (47, 103823, 103935), (53, 148877, 148989), (89, 102973, 103085), (89, 110894, 111006), (97, 103499, 103611), (97, 112908, 113020), (97, 122317, 122429), (97, 131726, 131838), (101, 102010, 102122), (101, 112211, 112323), (101, 122412, 122524), (101, 132613, 132725), (101, 142814, 142926), (103, 106090, 106202), (103, 116699, 116811), (103, 127308, 127420), (103, 137917, 138029), (103, 148526, 148638), (107, 103041, 103153), (107, 114490, 114602), (107, 125939, 126051), (107, 137388, 137500), (107, 148837, 148949), (107, 160286, 160398), (109, 106929, 107041), (109, 118810, 118922), (109, 130691, 130803), (109, 142572, 142684), (109, 154453, 154565), (109, 166334, 166446)]

def row113_layer003_block000 : List ColouredInterval :=
  [(2, 106496, 106608), (2, 114688, 114800), (2, 114688, 114800), (2, 131072, 131184), (2, 147456, 147568), (2, 163840, 163952), (2, 180224, 180336), (2, 196608, 196720), (2, 131072, 131184), (2, 163840, 163952), (2, 196608, 196720), (2, 131072, 131184), (2, 196608, 196720), (2, 131072, 131184), (3, 118098, 118210), (3, 137781, 137893)]

def row113_layer003_block001 : List ColouredInterval :=
  [(3, 157464, 157576), (3, 177147, 177259), (3, 196830, 196942), (3, 118098, 118210), (3, 177147, 177259), (3, 177147, 177259), (5, 109375, 109487), (5, 125000, 125112), (5, 140625, 140737), (5, 156250, 156362), (5, 171875, 171987), (5, 187500, 187612), (5, 156250, 156362), (7, 117649, 117761), (7, 134456, 134568), (7, 151263, 151375)]

def row113_layer003_block002 : List ColouredInterval :=
  [(7, 168070, 168182), (7, 184877, 184989), (7, 201684, 201796), (7, 117649, 117761), (11, 102487, 102599), (11, 117128, 117240), (11, 131769, 131881), (11, 146410, 146522), (11, 161051, 161163), (11, 175692, 175804), (11, 190333, 190445), (11, 161051, 161163), (13, 114244, 114356), (13, 142805, 142917), (13, 171366, 171478), (13, 199927, 200039)]

def row113_layer003_block003 : List ColouredInterval :=
  [(17, 167042, 167154), (19, 130321, 130433), (23, 109503, 109615), (23, 121670, 121782), (23, 133837, 133949), (23, 146004, 146116), (23, 158171, 158283), (23, 170338, 170450), (29, 121945, 122057), (29, 146334, 146446), (29, 170723, 170835), (29, 195112, 195224), (31, 119164, 119276), (31, 148955, 149067), (31, 178746, 178858), (37, 101306, 101418)]

def row113_layer003_block004 : List ColouredInterval :=
  [(37, 151959, 152071), (41, 137842, 137954), (43, 159014, 159126), (47, 103823, 103935), (53, 148877, 148989), (89, 102973, 103085), (89, 110894, 111006), (97, 103499, 103611), (97, 112908, 113020), (97, 122317, 122429), (97, 131726, 131838), (101, 102010, 102122), (101, 112211, 112323), (101, 122412, 122524), (101, 132613, 132725), (101, 142814, 142926)]

def row113_layer003_block005 : List ColouredInterval :=
  [(103, 106090, 106202), (103, 116699, 116811), (103, 127308, 127420), (103, 137917, 138029), (103, 148526, 148638), (107, 103041, 103153), (107, 114490, 114602), (107, 125939, 126051), (107, 137388, 137500), (107, 148837, 148949), (107, 160286, 160398), (109, 106929, 107041), (109, 118810, 118922), (109, 130691, 130803), (109, 142572, 142684), (109, 154453, 154565)]

def row113_layer003_block006 : List ColouredInterval :=
  [(109, 166334, 166446)]

def row113_layer003_chunks : List (List ColouredInterval) :=
  [row113_layer003_block000, row113_layer003_block001, row113_layer003_block002, row113_layer003_block003, row113_layer003_block004, row113_layer003_block005, row113_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_arithmetic : LayerArithmeticValid row113.height { lower := 101248, upper := 202496, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_enumeration :
    activePowerIntervalList 113 14 101248 202496 = row113_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_pairs000 :
    row113_layer003_block000.all (fun I => row113_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_pairs001 :
    row113_layer003_block001.all (fun I => row113_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_pairs002 :
    row113_layer003_block002.all (fun I => row113_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_pairs003 :
    row113_layer003_block003.all (fun I => row113_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_pairs004 :
    row113_layer003_block004.all (fun I => row113_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_pairs005 :
    row113_layer003_block005.all (fun I => row113_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_pairs006 :
    row113_layer003_block006.all (fun I => row113_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row113_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_chunks_eq : row113_layer003_chunks.flatten = row113_layer003_intervals := by
  rfl

theorem row113_layer003_pairs : pairCoverCheck row113_layer003_intervals row113_bounds = true := by
  apply pairCoverCheck_of_chunks row113_layer003_chunks_eq
  intro block hblock
  simp only [row113_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row113_layer003_pairs000
  · exact row113_layer003_pairs001
  · exact row113_layer003_pairs002
  · exact row113_layer003_pairs003
  · exact row113_layer003_pairs004
  · exact row113_layer003_pairs005
  · exact row113_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer003_checked :
    coverLayerCheck row113.height row113.goods { lower := 101248, upper := 202496, M := 14 } = true := by
  exact coverLayerCheck_of_parts row113_layer003_arithmetic row113_layer003_enumeration row113_bounds_eq row113_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer004_checked :
    coverLayerCheck row113.height row113.goods { lower := 202496, upper := 404992, M := 11 } = true := by
  decide +kernel

theorem row113_layer005_checked :
    coverLayerCheck row113.height row113.goods { lower := 404992, upper := 809984, M := 9 } = true := by
  decide +kernel

theorem row113_layer006_checked :
    coverLayerCheck row113.height row113.goods { lower := 809984, upper := 1619968, M := 8 } = true := by
  decide +kernel

theorem row113_layer007_checked :
    coverLayerCheck row113.height row113.goods { lower := 1619968, upper := 3239936, M := 6 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer008_checked :
    coverLayerCheck row113.height row113.goods { lower := 3239936, upper := 6479872, M := 5 } = true := by
  decide +kernel

theorem row113_layer009_checked :
    coverLayerCheck row113.height row113.goods { lower := 6479872, upper := 12959744, M := 4 } = true := by
  decide +kernel

theorem row113_layer010_checked :
    coverLayerCheck row113.height row113.goods { lower := 12959744, upper := 25919488, M := 4 } = true := by
  decide +kernel

theorem row113_layer011_checked :
    coverLayerCheck row113.height row113.goods { lower := 25919488, upper := 51838976, M := 3 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row113_layer012_checked :
    coverLayerCheck row113.height row113.goods { lower := 51838976, upper := 103677952, M := 3 } = true := by
  decide +kernel

theorem row113_layer013_checked :
    coverLayerCheck row113.height row113.goods { lower := 103677952, upper := 207355904, M := 2 } = true := by
  decide +kernel

theorem row113_layer014_checked :
    coverLayerCheck row113.height row113.goods { lower := 207355904, upper := 414711808, M := 2 } = true := by
  decide +kernel

theorem row113_layer015_checked :
    coverLayerCheck row113.height row113.goods { lower := 414711808, upper := 829423616, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row113_layer015_checked
