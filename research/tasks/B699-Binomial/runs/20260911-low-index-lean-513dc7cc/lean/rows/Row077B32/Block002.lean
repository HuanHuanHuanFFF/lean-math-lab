import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row077B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_chunks_eq : row077_layer002_chunks.flatten = row077_layer002_intervals := by
  rfl

theorem row077_layer002_pairs : pairCoverCheck row077_layer002_intervals row077_bounds = true := by
  apply pairCoverCheck_of_chunks row077_layer002_chunks_eq
  intro block hblock
  simp only [row077_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row077_layer002_pairs000
  · exact row077_layer002_pairs001
  · exact row077_layer002_pairs002
  · exact row077_layer002_pairs003
  · exact row077_layer002_pairs004
  · exact row077_layer002_pairs005
  · exact row077_layer002_pairs006
  · exact row077_layer002_pairs007
  · exact row077_layer002_pairs008
  · exact row077_layer002_pairs009
  · exact row077_layer002_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer002_checked :
    coverLayerCheck row077.height row077.goods { lower := 23408, upper := 46816, M := 22 } = true := by
  exact coverLayerCheck_of_parts row077_layer002_arithmetic row077_layer002_enumeration row077_bounds_eq row077_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer003_intervals : List ColouredInterval :=
  [(2, 49152, 49228), (2, 53248, 53324), (2, 57344, 57420), (2, 61440, 61516), (2, 65536, 65612), (2, 69632, 69708), (2, 73728, 73804), (2, 77824, 77900), (2, 49152, 49228), (2, 57344, 57420), (2, 65536, 65612), (2, 73728, 73804), (2, 81920, 81996), (2, 90112, 90188), (2, 49152, 49228), (2, 65536, 65612), (2, 81920, 81996), (2, 65536, 65612), (2, 65536, 65612), (3, 52488, 52564), (3, 59049, 59125), (3, 65610, 65686), (3, 72171, 72247), (3, 78732, 78808), (3, 85293, 85369), (3, 91854, 91930), (3, 59049, 59125), (3, 78732, 78808), (3, 59049, 59125), (5, 46875, 46951), (5, 50000, 50076), (5, 53125, 53201), (5, 56250, 56326), (5, 59375, 59451), (5, 46875, 46951), (5, 62500, 62576), (5, 78125, 78201), (5, 78125, 78201), (13, 57122, 57198), (13, 85683, 85759), (17, 49130, 49206), (17, 54043, 54119), (17, 58956, 59032), (17, 63869, 63945), (17, 68782, 68858), (17, 73695, 73771), (17, 78608, 78684), (17, 83521, 83597), (17, 88434, 88510), (17, 93347, 93423), (17, 83521, 83597), (19, 48013, 48089), (19, 54872, 54948), (19, 61731, 61807), (19, 68590, 68666), (19, 75449, 75525), (19, 82308, 82384), (19, 89167, 89243), (23, 48668, 48744), (23, 60835, 60911), (23, 73002, 73078), (23, 85169, 85245), (29, 48778, 48854), (29, 73167, 73243), (31, 59582, 59658), (31, 89373, 89449), (37, 50653, 50729), (41, 68921, 68997), (43, 79507, 79583), (53, 47753, 47829), (53, 50562, 50638), (53, 53371, 53447), (59, 48734, 48810), (59, 52215, 52291), (59, 55696, 55772), (59, 59177, 59253), (59, 62658, 62734), (59, 66139, 66215), (61, 48373, 48449), (61, 52094, 52170), (61, 55815, 55891), (61, 59536, 59612), (61, 63257, 63333), (61, 66978, 67054), (61, 70699, 70775), (67, 49379, 49455), (67, 53868, 53944), (67, 58357, 58433), (67, 62846, 62922), (67, 67335, 67411), (67, 71824, 71900), (67, 76313, 76389), (67, 80802, 80878), (67, 85291, 85367), (71, 50410, 50486), (71, 55451, 55527), (71, 60492, 60568), (71, 65533, 65609), (71, 70574, 70650), (71, 75615, 75691), (71, 80656, 80732), (71, 85697, 85773), (71, 90738, 90814), (73, 47961, 48037), (73, 53290, 53366), (73, 58619, 58695), (73, 63948, 64024), (73, 69277, 69353), (73, 74606, 74682), (73, 79935, 80011), (73, 85264, 85340), (73, 90593, 90669)]

def row077_layer003_block000 : List ColouredInterval :=
  [(2, 49152, 49228), (2, 53248, 53324), (2, 57344, 57420), (2, 61440, 61516), (2, 65536, 65612), (2, 69632, 69708), (2, 73728, 73804), (2, 77824, 77900), (2, 49152, 49228), (2, 57344, 57420), (2, 65536, 65612), (2, 73728, 73804), (2, 81920, 81996), (2, 90112, 90188), (2, 49152, 49228), (2, 65536, 65612)]

def row077_layer003_block001 : List ColouredInterval :=
  [(2, 81920, 81996), (2, 65536, 65612), (2, 65536, 65612), (3, 52488, 52564), (3, 59049, 59125), (3, 65610, 65686), (3, 72171, 72247), (3, 78732, 78808), (3, 85293, 85369), (3, 91854, 91930), (3, 59049, 59125), (3, 78732, 78808), (3, 59049, 59125), (5, 46875, 46951), (5, 50000, 50076), (5, 53125, 53201)]

def row077_layer003_block002 : List ColouredInterval :=
  [(5, 56250, 56326), (5, 59375, 59451), (5, 46875, 46951), (5, 62500, 62576), (5, 78125, 78201), (5, 78125, 78201), (13, 57122, 57198), (13, 85683, 85759), (17, 49130, 49206), (17, 54043, 54119), (17, 58956, 59032), (17, 63869, 63945), (17, 68782, 68858), (17, 73695, 73771), (17, 78608, 78684), (17, 83521, 83597)]

def row077_layer003_block003 : List ColouredInterval :=
  [(17, 88434, 88510), (17, 93347, 93423), (17, 83521, 83597), (19, 48013, 48089), (19, 54872, 54948), (19, 61731, 61807), (19, 68590, 68666), (19, 75449, 75525), (19, 82308, 82384), (19, 89167, 89243), (23, 48668, 48744), (23, 60835, 60911), (23, 73002, 73078), (23, 85169, 85245), (29, 48778, 48854), (29, 73167, 73243)]

def row077_layer003_block004 : List ColouredInterval :=
  [(31, 59582, 59658), (31, 89373, 89449), (37, 50653, 50729), (41, 68921, 68997), (43, 79507, 79583), (53, 47753, 47829), (53, 50562, 50638), (53, 53371, 53447), (59, 48734, 48810), (59, 52215, 52291), (59, 55696, 55772), (59, 59177, 59253), (59, 62658, 62734), (59, 66139, 66215), (61, 48373, 48449), (61, 52094, 52170)]

def row077_layer003_block005 : List ColouredInterval :=
  [(61, 55815, 55891), (61, 59536, 59612), (61, 63257, 63333), (61, 66978, 67054), (61, 70699, 70775), (67, 49379, 49455), (67, 53868, 53944), (67, 58357, 58433), (67, 62846, 62922), (67, 67335, 67411), (67, 71824, 71900), (67, 76313, 76389), (67, 80802, 80878), (67, 85291, 85367), (71, 50410, 50486), (71, 55451, 55527)]

def row077_layer003_block006 : List ColouredInterval :=
  [(71, 60492, 60568), (71, 65533, 65609), (71, 70574, 70650), (71, 75615, 75691), (71, 80656, 80732), (71, 85697, 85773), (71, 90738, 90814), (73, 47961, 48037), (73, 53290, 53366), (73, 58619, 58695), (73, 63948, 64024), (73, 69277, 69353), (73, 74606, 74682), (73, 79935, 80011), (73, 85264, 85340), (73, 90593, 90669)]

def row077_layer003_chunks : List (List ColouredInterval) :=
  [row077_layer003_block000, row077_layer003_block001, row077_layer003_block002, row077_layer003_block003, row077_layer003_block004, row077_layer003_block005, row077_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_arithmetic : LayerArithmeticValid row077.height { lower := 46816, upper := 93632, M := 19 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_enumeration :
    activePowerIntervalList 77 19 46816 93632 = row077_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_pairs000 :
    row077_layer003_block000.all (fun I => row077_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_pairs001 :
    row077_layer003_block001.all (fun I => row077_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_pairs002 :
    row077_layer003_block002.all (fun I => row077_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_pairs003 :
    row077_layer003_block003.all (fun I => row077_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_pairs004 :
    row077_layer003_block004.all (fun I => row077_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_pairs005 :
    row077_layer003_block005.all (fun I => row077_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_pairs006 :
    row077_layer003_block006.all (fun I => row077_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_chunks_eq : row077_layer003_chunks.flatten = row077_layer003_intervals := by
  rfl

theorem row077_layer003_pairs : pairCoverCheck row077_layer003_intervals row077_bounds = true := by
  apply pairCoverCheck_of_chunks row077_layer003_chunks_eq
  intro block hblock
  simp only [row077_layer003_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row077_layer003_pairs000
  · exact row077_layer003_pairs001
  · exact row077_layer003_pairs002
  · exact row077_layer003_pairs003
  · exact row077_layer003_pairs004
  · exact row077_layer003_pairs005
  · exact row077_layer003_pairs006

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer003_checked :
    coverLayerCheck row077.height row077.goods { lower := 46816, upper := 93632, M := 19 } = true := by
  exact coverLayerCheck_of_parts row077_layer003_arithmetic row077_layer003_enumeration row077_bounds_eq row077_layer003_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer005_intervals : List ColouredInterval :=
  [(2, 196608, 196684), (2, 212992, 213068), (2, 229376, 229452), (2, 196608, 196684), (2, 229376, 229452), (2, 262144, 262220), (2, 294912, 294988), (2, 327680, 327756), (2, 360448, 360524), (2, 196608, 196684), (2, 262144, 262220), (2, 327680, 327756), (2, 262144, 262220), (2, 262144, 262220), (3, 196830, 196906), (3, 216513, 216589), (3, 236196, 236272), (3, 255879, 255955), (3, 275562, 275638), (3, 236196, 236272), (3, 295245, 295321), (3, 354294, 354370), (3, 354294, 354370), (5, 187500, 187576), (5, 203125, 203201), (5, 218750, 218826), (5, 234375, 234451), (5, 312500, 312576), (7, 235298, 235374), (13, 199927, 200003), (13, 228488, 228564), (13, 257049, 257125), (13, 285610, 285686), (13, 314171, 314247), (13, 342732, 342808), (13, 371293, 371369), (13, 371293, 371369), (17, 250563, 250639), (17, 334084, 334160), (19, 260642, 260718), (23, 279841, 279917), (29, 195112, 195188), (29, 219501, 219577), (29, 243890, 243966), (29, 268279, 268355), (29, 292668, 292744), (29, 317057, 317133), (29, 341446, 341522), (31, 208537, 208613), (31, 238328, 238404), (31, 268119, 268195), (31, 297910, 297986), (31, 327701, 327777), (31, 357492, 357568), (37, 202612, 202688), (37, 253265, 253341), (37, 303918, 303994), (37, 354571, 354647), (41, 206763, 206839), (41, 275684, 275760), (41, 344605, 344681), (43, 238521, 238597), (43, 318028, 318104), (47, 207646, 207722), (47, 311469, 311545), (53, 297754, 297830), (59, 205379, 205455), (61, 226981, 227057), (67, 300763, 300839), (71, 357911, 357987)]

def row077_layer005_block000 : List ColouredInterval :=
  [(2, 196608, 196684), (2, 212992, 213068), (2, 229376, 229452), (2, 196608, 196684), (2, 229376, 229452), (2, 262144, 262220), (2, 294912, 294988), (2, 327680, 327756), (2, 360448, 360524), (2, 196608, 196684), (2, 262144, 262220), (2, 327680, 327756), (2, 262144, 262220), (2, 262144, 262220), (3, 196830, 196906), (3, 216513, 216589)]

def row077_layer005_block001 : List ColouredInterval :=
  [(3, 236196, 236272), (3, 255879, 255955), (3, 275562, 275638), (3, 236196, 236272), (3, 295245, 295321), (3, 354294, 354370), (3, 354294, 354370), (5, 187500, 187576), (5, 203125, 203201), (5, 218750, 218826), (5, 234375, 234451), (5, 312500, 312576), (7, 235298, 235374), (13, 199927, 200003), (13, 228488, 228564), (13, 257049, 257125)]

def row077_layer005_block002 : List ColouredInterval :=
  [(13, 285610, 285686), (13, 314171, 314247), (13, 342732, 342808), (13, 371293, 371369), (13, 371293, 371369), (17, 250563, 250639), (17, 334084, 334160), (19, 260642, 260718), (23, 279841, 279917), (29, 195112, 195188), (29, 219501, 219577), (29, 243890, 243966), (29, 268279, 268355), (29, 292668, 292744), (29, 317057, 317133), (29, 341446, 341522)]

def row077_layer005_block003 : List ColouredInterval :=
  [(31, 208537, 208613), (31, 238328, 238404), (31, 268119, 268195), (31, 297910, 297986), (31, 327701, 327777), (31, 357492, 357568), (37, 202612, 202688), (37, 253265, 253341), (37, 303918, 303994), (37, 354571, 354647), (41, 206763, 206839), (41, 275684, 275760), (41, 344605, 344681), (43, 238521, 238597), (43, 318028, 318104), (47, 207646, 207722)]

def row077_layer005_block004 : List ColouredInterval :=
  [(47, 311469, 311545), (53, 297754, 297830), (59, 205379, 205455), (61, 226981, 227057), (67, 300763, 300839), (71, 357911, 357987)]

def row077_layer005_chunks : List (List ColouredInterval) :=
  [row077_layer005_block000, row077_layer005_block001, row077_layer005_block002, row077_layer005_block003, row077_layer005_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_arithmetic : LayerArithmeticValid row077.height { lower := 187264, upper := 374528, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_enumeration :
    activePowerIntervalList 77 14 187264 374528 = row077_layer005_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs000 :
    row077_layer005_block000.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs001 :
    row077_layer005_block001.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs002 :
    row077_layer005_block002.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs003 :
    row077_layer005_block003.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_pairs004 :
    row077_layer005_block004.all (fun I => row077_layer005_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_chunks_eq : row077_layer005_chunks.flatten = row077_layer005_intervals := by
  rfl

theorem row077_layer005_pairs : pairCoverCheck row077_layer005_intervals row077_bounds = true := by
  apply pairCoverCheck_of_chunks row077_layer005_chunks_eq
  intro block hblock
  simp only [row077_layer005_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row077_layer005_pairs000
  · exact row077_layer005_pairs001
  · exact row077_layer005_pairs002
  · exact row077_layer005_pairs003
  · exact row077_layer005_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer005_checked :
    coverLayerCheck row077.height row077.goods { lower := 187264, upper := 374528, M := 14 } = true := by
  exact coverLayerCheck_of_parts row077_layer005_arithmetic row077_layer005_enumeration row077_bounds_eq row077_layer005_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer005_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row077_layer006_intervals : List ColouredInterval :=
  [(2, 393216, 393292), (2, 393216, 393292), (2, 458752, 458828), (2, 524288, 524364), (2, 589824, 589900), (2, 655360, 655436), (2, 720896, 720972), (2, 393216, 393292), (2, 524288, 524364), (2, 655360, 655436), (2, 524288, 524364), (2, 524288, 524364), (3, 413343, 413419), (3, 472392, 472468), (3, 531441, 531517), (3, 590490, 590566), (3, 649539, 649615), (3, 708588, 708664), (3, 531441, 531517), (3, 708588, 708664), (3, 531441, 531517), (5, 390625, 390701), (5, 468750, 468826), (5, 546875, 546951), (5, 625000, 625076), (5, 703125, 703201), (5, 390625, 390701), (13, 742586, 742662), (17, 417605, 417681), (17, 501126, 501202), (17, 584647, 584723), (17, 668168, 668244), (19, 390963, 391039), (19, 521284, 521360), (19, 651605, 651681), (23, 559682, 559758), (29, 707281, 707357), (37, 405224, 405300), (37, 455877, 455953), (37, 506530, 506606), (37, 557183, 557259), (37, 607836, 607912), (41, 413526, 413602), (41, 482447, 482523), (41, 551368, 551444), (41, 620289, 620365), (41, 689210, 689286), (43, 397535, 397611), (43, 477042, 477118), (43, 556549, 556625), (43, 636056, 636132), (43, 715563, 715639), (47, 415292, 415368), (47, 519115, 519191), (47, 622938, 623014), (47, 726761, 726837), (53, 446631, 446707), (53, 595508, 595584), (53, 744385, 744461), (59, 410758, 410834), (59, 616137, 616213), (61, 453962, 454038), (61, 680943, 681019), (67, 601526, 601602), (71, 715822, 715898), (73, 389017, 389093)]

def row077_layer006_block000 : List ColouredInterval :=
  [(2, 393216, 393292), (2, 393216, 393292), (2, 458752, 458828), (2, 524288, 524364), (2, 589824, 589900), (2, 655360, 655436), (2, 720896, 720972), (2, 393216, 393292), (2, 524288, 524364), (2, 655360, 655436), (2, 524288, 524364), (2, 524288, 524364), (3, 413343, 413419), (3, 472392, 472468), (3, 531441, 531517), (3, 590490, 590566)]

def row077_layer006_block001 : List ColouredInterval :=
  [(3, 649539, 649615), (3, 708588, 708664), (3, 531441, 531517), (3, 708588, 708664), (3, 531441, 531517), (5, 390625, 390701), (5, 468750, 468826), (5, 546875, 546951), (5, 625000, 625076), (5, 703125, 703201), (5, 390625, 390701), (13, 742586, 742662), (17, 417605, 417681), (17, 501126, 501202), (17, 584647, 584723), (17, 668168, 668244)]

def row077_layer006_block002 : List ColouredInterval :=
  [(19, 390963, 391039), (19, 521284, 521360), (19, 651605, 651681), (23, 559682, 559758), (29, 707281, 707357), (37, 405224, 405300), (37, 455877, 455953), (37, 506530, 506606), (37, 557183, 557259), (37, 607836, 607912), (41, 413526, 413602), (41, 482447, 482523), (41, 551368, 551444), (41, 620289, 620365), (41, 689210, 689286), (43, 397535, 397611)]

def row077_layer006_block003 : List ColouredInterval :=
  [(43, 477042, 477118), (43, 556549, 556625), (43, 636056, 636132), (43, 715563, 715639), (47, 415292, 415368), (47, 519115, 519191), (47, 622938, 623014), (47, 726761, 726837), (53, 446631, 446707), (53, 595508, 595584), (53, 744385, 744461), (59, 410758, 410834), (59, 616137, 616213), (61, 453962, 454038), (61, 680943, 681019), (67, 601526, 601602)]

def row077_layer006_block004 : List ColouredInterval :=
  [(71, 715822, 715898), (73, 389017, 389093)]

def row077_layer006_chunks : List (List ColouredInterval) :=
  [row077_layer006_block000, row077_layer006_block001, row077_layer006_block002, row077_layer006_block003, row077_layer006_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_arithmetic : LayerArithmeticValid row077.height { lower := 374528, upper := 749056, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_enumeration :
    activePowerIntervalList 77 12 374528 749056 = row077_layer006_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs000 :
    row077_layer006_block000.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs001 :
    row077_layer006_block001.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs002 :
    row077_layer006_block002.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row077_layer006_pairs003 :
    row077_layer006_block003.all (fun I => row077_layer006_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row077_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row077_layer006_pairs003
