import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row120B32.Block000
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer000_checked :
    coverLayerCheck row120.height row120.goods { lower := 14280, upper := 28560, M := 22 } = true := by
  exact coverLayerCheck_of_parts row120_layer000_arithmetic row120_layer000_enumeration row120_bounds_eq row120_layer000_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row120_layer001_intervals : List ColouredInterval :=
  [(2, 32768, 32887), (2, 32768, 32887), (3, 32805, 32924), (3, 39366, 39485), (5, 31250, 31369), (5, 46875, 46994), (7, 28812, 28931), (7, 31213, 31332), (7, 33614, 33733), (7, 36015, 36134), (7, 38416, 38535), (7, 40817, 40936), (7, 33614, 33733), (7, 50421, 50540), (11, 29282, 29401), (11, 43923, 44042), (13, 28561, 28680), (13, 30758, 30877), (13, 32955, 33074), (13, 35152, 35271), (13, 37349, 37468), (13, 28561, 28680), (17, 29478, 29597), (17, 34391, 34510), (17, 39304, 39423), (17, 44217, 44336), (17, 49130, 49249), (17, 54043, 54162), (19, 34295, 34414), (19, 41154, 41273), (19, 48013, 48132), (19, 54872, 54991), (23, 36501, 36620), (23, 48668, 48787), (29, 48778, 48897), (31, 29791, 29910), (37, 50653, 50772), (41, 28577, 28696), (43, 29584, 29703), (43, 31433, 31552), (47, 28717, 28836), (47, 30926, 31045), (47, 33135, 33254), (47, 35344, 35463), (47, 37553, 37672), (53, 30899, 31018), (53, 33708, 33827), (53, 36517, 36636), (53, 39326, 39445), (53, 42135, 42254), (53, 44944, 45063), (53, 47753, 47872), (59, 31329, 31448), (59, 34810, 34929), (59, 38291, 38410), (59, 41772, 41891), (59, 45253, 45372), (59, 48734, 48853), (59, 52215, 52334), (59, 55696, 55815), (61, 29768, 29887), (61, 33489, 33608), (61, 37210, 37329), (61, 40931, 41050), (61, 44652, 44771), (61, 48373, 48492), (61, 52094, 52213), (61, 55815, 55934), (67, 31423, 31542), (67, 35912, 36031), (67, 40401, 40520), (67, 44890, 45009), (67, 49379, 49498), (67, 53868, 53987), (71, 30246, 30365), (71, 35287, 35406), (71, 40328, 40447), (71, 45369, 45488), (71, 50410, 50529), (71, 55451, 55570), (73, 31974, 32093), (73, 37303, 37422), (73, 42632, 42751), (73, 47961, 48080), (73, 53290, 53409), (79, 31205, 31324), (79, 37446, 37565), (79, 43687, 43806), (79, 49928, 50047), (79, 56169, 56288), (83, 34445, 34564), (83, 41334, 41453), (83, 48223, 48342), (83, 55112, 55231), (89, 31684, 31803), (89, 39605, 39724), (89, 47526, 47645), (89, 55447, 55566), (97, 37636, 37755), (97, 47045, 47164), (97, 56454, 56573), (101, 30603, 30722), (101, 40804, 40923), (101, 51005, 51124), (103, 31827, 31946), (103, 42436, 42555), (103, 53045, 53164), (107, 34347, 34466), (107, 45796, 45915), (109, 35643, 35762), (109, 47524, 47643), (113, 38307, 38426), (113, 51076, 51195)]

def row120_layer001_block000 : List ColouredInterval :=
  [(2, 32768, 32887), (2, 32768, 32887), (3, 32805, 32924), (3, 39366, 39485), (5, 31250, 31369), (5, 46875, 46994), (7, 28812, 28931), (7, 31213, 31332), (7, 33614, 33733), (7, 36015, 36134), (7, 38416, 38535), (7, 40817, 40936), (7, 33614, 33733), (7, 50421, 50540), (11, 29282, 29401), (11, 43923, 44042)]

def row120_layer001_block001 : List ColouredInterval :=
  [(13, 28561, 28680), (13, 30758, 30877), (13, 32955, 33074), (13, 35152, 35271), (13, 37349, 37468), (13, 28561, 28680), (17, 29478, 29597), (17, 34391, 34510), (17, 39304, 39423), (17, 44217, 44336), (17, 49130, 49249), (17, 54043, 54162), (19, 34295, 34414), (19, 41154, 41273), (19, 48013, 48132), (19, 54872, 54991)]

def row120_layer001_block002 : List ColouredInterval :=
  [(23, 36501, 36620), (23, 48668, 48787), (29, 48778, 48897), (31, 29791, 29910), (37, 50653, 50772), (41, 28577, 28696), (43, 29584, 29703), (43, 31433, 31552), (47, 28717, 28836), (47, 30926, 31045), (47, 33135, 33254), (47, 35344, 35463), (47, 37553, 37672), (53, 30899, 31018), (53, 33708, 33827), (53, 36517, 36636)]

def row120_layer001_block003 : List ColouredInterval :=
  [(53, 39326, 39445), (53, 42135, 42254), (53, 44944, 45063), (53, 47753, 47872), (59, 31329, 31448), (59, 34810, 34929), (59, 38291, 38410), (59, 41772, 41891), (59, 45253, 45372), (59, 48734, 48853), (59, 52215, 52334), (59, 55696, 55815), (61, 29768, 29887), (61, 33489, 33608), (61, 37210, 37329), (61, 40931, 41050)]

def row120_layer001_block004 : List ColouredInterval :=
  [(61, 44652, 44771), (61, 48373, 48492), (61, 52094, 52213), (61, 55815, 55934), (67, 31423, 31542), (67, 35912, 36031), (67, 40401, 40520), (67, 44890, 45009), (67, 49379, 49498), (67, 53868, 53987), (71, 30246, 30365), (71, 35287, 35406), (71, 40328, 40447), (71, 45369, 45488), (71, 50410, 50529), (71, 55451, 55570)]

def row120_layer001_block005 : List ColouredInterval :=
  [(73, 31974, 32093), (73, 37303, 37422), (73, 42632, 42751), (73, 47961, 48080), (73, 53290, 53409), (79, 31205, 31324), (79, 37446, 37565), (79, 43687, 43806), (79, 49928, 50047), (79, 56169, 56288), (83, 34445, 34564), (83, 41334, 41453), (83, 48223, 48342), (83, 55112, 55231), (89, 31684, 31803), (89, 39605, 39724)]

def row120_layer001_block006 : List ColouredInterval :=
  [(89, 47526, 47645), (89, 55447, 55566), (97, 37636, 37755), (97, 47045, 47164), (97, 56454, 56573), (101, 30603, 30722), (101, 40804, 40923), (101, 51005, 51124), (103, 31827, 31946), (103, 42436, 42555), (103, 53045, 53164), (107, 34347, 34466), (107, 45796, 45915), (109, 35643, 35762), (109, 47524, 47643), (113, 38307, 38426)]

def row120_layer001_block007 : List ColouredInterval :=
  [(113, 51076, 51195)]

def row120_layer001_chunks : List (List ColouredInterval) :=
  [row120_layer001_block000, row120_layer001_block001, row120_layer001_block002, row120_layer001_block003, row120_layer001_block004, row120_layer001_block005, row120_layer001_block006, row120_layer001_block007]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_arithmetic : LayerArithmeticValid row120.height { lower := 28560, upper := 57120, M := 17 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_enumeration :
    activePowerIntervalList 120 17 28560 57120 = row120_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs000 :
    row120_layer001_block000.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs001 :
    row120_layer001_block001.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs002 :
    row120_layer001_block002.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs003 :
    row120_layer001_block003.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs004 :
    row120_layer001_block004.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs005 :
    row120_layer001_block005.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs006 :
    row120_layer001_block006.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_pairs007 :
    row120_layer001_block007.all (fun I => row120_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_chunks_eq : row120_layer001_chunks.flatten = row120_layer001_intervals := by
  rfl

theorem row120_layer001_pairs : pairCoverCheck row120_layer001_intervals row120_bounds = true := by
  apply pairCoverCheck_of_chunks row120_layer001_chunks_eq
  intro block hblock
  simp only [row120_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row120_layer001_pairs000
  · exact row120_layer001_pairs001
  · exact row120_layer001_pairs002
  · exact row120_layer001_pairs003
  · exact row120_layer001_pairs004
  · exact row120_layer001_pairs005
  · exact row120_layer001_pairs006
  · exact row120_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer001_checked :
    coverLayerCheck row120.height row120.goods { lower := 28560, upper := 57120, M := 17 } = true := by
  exact coverLayerCheck_of_parts row120_layer001_arithmetic row120_layer001_enumeration row120_bounds_eq row120_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row120_layer002_intervals : List ColouredInterval :=
  [(2, 65536, 65655), (3, 59049, 59168), (3, 78732, 78851), (3, 59049, 59168), (5, 78125, 78244), (7, 67228, 67347), (7, 84035, 84154), (7, 100842, 100961), (11, 58564, 58683), (11, 73205, 73324), (11, 87846, 87965), (11, 102487, 102606), (13, 57122, 57241), (13, 85683, 85802), (17, 58956, 59075), (17, 63869, 63988), (17, 68782, 68901), (17, 83521, 83640), (19, 61731, 61850), (19, 68590, 68709), (19, 75449, 75568), (19, 82308, 82427), (19, 89167, 89286), (19, 96026, 96145), (23, 60835, 60954), (23, 73002, 73121), (23, 85169, 85288), (23, 97336, 97455), (23, 109503, 109622), (29, 73167, 73286), (29, 97556, 97675), (31, 59582, 59701), (31, 89373, 89492), (37, 101306, 101425), (41, 68921, 69040), (43, 79507, 79626), (47, 103823, 103942), (67, 58357, 58476), (67, 62846, 62965), (71, 60492, 60611), (71, 65533, 65652), (71, 70574, 70693), (73, 58619, 58738), (73, 63948, 64067), (73, 69277, 69396), (73, 74606, 74725), (79, 62410, 62529), (79, 68651, 68770), (79, 74892, 75011), (79, 81133, 81252), (79, 87374, 87493), (83, 62001, 62120), (83, 68890, 69009), (83, 75779, 75898), (83, 82668, 82787), (83, 89557, 89676), (83, 96446, 96565), (89, 63368, 63487), (89, 71289, 71408), (89, 79210, 79329), (89, 87131, 87250), (89, 95052, 95171), (89, 102973, 103092), (89, 110894, 111013), (97, 65863, 65982), (97, 75272, 75391), (97, 84681, 84800), (97, 94090, 94209), (97, 103499, 103618), (97, 112908, 113027), (101, 61206, 61325), (101, 71407, 71526), (101, 81608, 81727), (101, 91809, 91928), (101, 102010, 102129), (101, 112211, 112330), (103, 63654, 63773), (103, 74263, 74382), (103, 84872, 84991), (103, 95481, 95600), (103, 106090, 106209), (107, 57245, 57364), (107, 68694, 68813), (107, 80143, 80262), (107, 91592, 91711), (107, 103041, 103160), (109, 59405, 59524), (109, 71286, 71405), (109, 83167, 83286), (109, 95048, 95167), (109, 106929, 107048), (113, 63845, 63964), (113, 76614, 76733), (113, 89383, 89502), (113, 102152, 102271)]

def row120_layer002_block000 : List ColouredInterval :=
  [(2, 65536, 65655), (3, 59049, 59168), (3, 78732, 78851), (3, 59049, 59168), (5, 78125, 78244), (7, 67228, 67347), (7, 84035, 84154), (7, 100842, 100961), (11, 58564, 58683), (11, 73205, 73324), (11, 87846, 87965), (11, 102487, 102606), (13, 57122, 57241), (13, 85683, 85802), (17, 58956, 59075), (17, 63869, 63988)]

def row120_layer002_block001 : List ColouredInterval :=
  [(17, 68782, 68901), (17, 83521, 83640), (19, 61731, 61850), (19, 68590, 68709), (19, 75449, 75568), (19, 82308, 82427), (19, 89167, 89286), (19, 96026, 96145), (23, 60835, 60954), (23, 73002, 73121), (23, 85169, 85288), (23, 97336, 97455), (23, 109503, 109622), (29, 73167, 73286), (29, 97556, 97675), (31, 59582, 59701)]

def row120_layer002_block002 : List ColouredInterval :=
  [(31, 89373, 89492), (37, 101306, 101425), (41, 68921, 69040), (43, 79507, 79626), (47, 103823, 103942), (67, 58357, 58476), (67, 62846, 62965), (71, 60492, 60611), (71, 65533, 65652), (71, 70574, 70693), (73, 58619, 58738), (73, 63948, 64067), (73, 69277, 69396), (73, 74606, 74725), (79, 62410, 62529), (79, 68651, 68770)]

def row120_layer002_block003 : List ColouredInterval :=
  [(79, 74892, 75011), (79, 81133, 81252), (79, 87374, 87493), (83, 62001, 62120), (83, 68890, 69009), (83, 75779, 75898), (83, 82668, 82787), (83, 89557, 89676), (83, 96446, 96565), (89, 63368, 63487), (89, 71289, 71408), (89, 79210, 79329), (89, 87131, 87250), (89, 95052, 95171), (89, 102973, 103092), (89, 110894, 111013)]

def row120_layer002_block004 : List ColouredInterval :=
  [(97, 65863, 65982), (97, 75272, 75391), (97, 84681, 84800), (97, 94090, 94209), (97, 103499, 103618), (97, 112908, 113027), (101, 61206, 61325), (101, 71407, 71526), (101, 81608, 81727), (101, 91809, 91928), (101, 102010, 102129), (101, 112211, 112330), (103, 63654, 63773), (103, 74263, 74382), (103, 84872, 84991), (103, 95481, 95600)]

def row120_layer002_block005 : List ColouredInterval :=
  [(103, 106090, 106209), (107, 57245, 57364), (107, 68694, 68813), (107, 80143, 80262), (107, 91592, 91711), (107, 103041, 103160), (109, 59405, 59524), (109, 71286, 71405), (109, 83167, 83286), (109, 95048, 95167), (109, 106929, 107048), (113, 63845, 63964), (113, 76614, 76733), (113, 89383, 89502), (113, 102152, 102271)]

def row120_layer002_chunks : List (List ColouredInterval) :=
  [row120_layer002_block000, row120_layer002_block001, row120_layer002_block002, row120_layer002_block003, row120_layer002_block004, row120_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_arithmetic : LayerArithmeticValid row120.height { lower := 57120, upper := 114240, M := 14 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_enumeration :
    activePowerIntervalList 120 14 57120 114240 = row120_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_pairs000 :
    row120_layer002_block000.all (fun I => row120_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_pairs001 :
    row120_layer002_block001.all (fun I => row120_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_pairs002 :
    row120_layer002_block002.all (fun I => row120_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_pairs003 :
    row120_layer002_block003.all (fun I => row120_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_pairs004 :
    row120_layer002_block004.all (fun I => row120_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_pairs005 :
    row120_layer002_block005.all (fun I => row120_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row120_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_chunks_eq : row120_layer002_chunks.flatten = row120_layer002_intervals := by
  rfl

theorem row120_layer002_pairs : pairCoverCheck row120_layer002_intervals row120_bounds = true := by
  apply pairCoverCheck_of_chunks row120_layer002_chunks_eq
  intro block hblock
  simp only [row120_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row120_layer002_pairs000
  · exact row120_layer002_pairs001
  · exact row120_layer002_pairs002
  · exact row120_layer002_pairs003
  · exact row120_layer002_pairs004
  · exact row120_layer002_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer002_checked :
    coverLayerCheck row120.height row120.goods { lower := 57120, upper := 114240, M := 14 } = true := by
  exact coverLayerCheck_of_parts row120_layer002_arithmetic row120_layer002_enumeration row120_bounds_eq row120_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer003_checked :
    coverLayerCheck row120.height row120.goods { lower := 114240, upper := 228480, M := 11 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer000_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer001_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer002_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer003_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer004_checked :
    coverLayerCheck row120.height row120.goods { lower := 228480, upper := 456960, M := 9 } = true := by
  decide +kernel

theorem row120_layer005_checked :
    coverLayerCheck row120.height row120.goods { lower := 456960, upper := 913920, M := 7 } = true := by
  decide +kernel

theorem row120_layer006_checked :
    coverLayerCheck row120.height row120.goods { lower := 913920, upper := 1827840, M := 6 } = true := by
  decide +kernel

theorem row120_layer007_checked :
    coverLayerCheck row120.height row120.goods { lower := 1827840, upper := 3655680, M := 5 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer004_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer005_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer006_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer007_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer008_checked :
    coverLayerCheck row120.height row120.goods { lower := 3655680, upper := 7311360, M := 4 } = true := by
  decide +kernel

theorem row120_layer009_checked :
    coverLayerCheck row120.height row120.goods { lower := 7311360, upper := 14622720, M := 3 } = true := by
  decide +kernel

theorem row120_layer010_checked :
    coverLayerCheck row120.height row120.goods { lower := 14622720, upper := 29245440, M := 3 } = true := by
  decide +kernel

theorem row120_layer011_checked :
    coverLayerCheck row120.height row120.goods { lower := 29245440, upper := 58490880, M := 2 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer008_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer009_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer010_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer011_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer012_checked :
    coverLayerCheck row120.height row120.goods { lower := 58490880, upper := 116981760, M := 2 } = true := by
  decide +kernel

theorem row120_layer013_checked :
    coverLayerCheck row120.height row120.goods { lower := 116981760, upper := 233963520, M := 2 } = true := by
  decide +kernel

theorem row120_layer014_checked :
    coverLayerCheck row120.height row120.goods { lower := 233963520, upper := 467927040, M := 1 } = true := by
  decide +kernel

theorem row120_layer015_checked :
    coverLayerCheck row120.height row120.goods { lower := 467927040, upper := 935854080, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer012_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer013_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer014_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer015_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layer016_checked :
    coverLayerCheck row120.height row120.goods { lower := 935854080, upper := 1000000000, M := 1 } = true := by
  decide +kernel


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layer016_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_layers_checked :
    row120.layers.all (coverLayerCheck row120.height row120.goods) = true := by
  change row120_layers.all (coverLayerCheck row120.height row120.goods) = true
  simp only [row120_layers, List.all_cons, List.all_nil,
    row120_layer000_checked,
    row120_layer001_checked,
    row120_layer002_checked,
    row120_layer003_checked,
    row120_layer004_checked,
    row120_layer005_checked,
    row120_layer006_checked,
    row120_layer007_checked,
    row120_layer008_checked,
    row120_layer009_checked,
    row120_layer010_checked,
    row120_layer011_checked,
    row120_layer012_checked,
    row120_layer013_checked,
    row120_layer014_checked,
    row120_layer015_checked,
    row120_layer016_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_layers_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row120_checked : finiteCoverRowCheck row120 = true := by
  simp only [finiteCoverRowCheck, row120_registered, row120_goods_checked,
    row120_small_checked, row120_layerCover_checked, row120_layers_checked, Bool.true_and]

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row120_checked
