import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer001_pairs008 :
    row048_layer001_block008.all (fun I => row048_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer001_chunks_eq : row048_layer001_chunks.flatten = row048_layer001_intervals := by
  rfl

theorem row048_layer001_pairs : pairCoverCheck row048_layer001_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer001_chunks_eq
  intro block hblock
  simp only [row048_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer001_pairs000
  · exact row048_layer001_pairs001
  · exact row048_layer001_pairs002
  · exact row048_layer001_pairs003
  · exact row048_layer001_pairs004
  · exact row048_layer001_pairs005
  · exact row048_layer001_pairs006
  · exact row048_layer001_pairs007
  · exact row048_layer001_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer001_checked :
    coverLayerCheck row048.height row048.goods { lower := 4512, upper := 9024, M := 43 } = true := by
  exact coverLayerCheck_of_parts row048_layer001_arithmetic row048_layer001_enumeration row048_bounds_eq row048_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer002_intervals : List ColouredInterval :=
  [(2, 16384, 16431), (2, 16384, 16431), (3, 9477, 9524), (3, 10935, 10982), (3, 13122, 13169), (3, 15309, 15356), (3, 17496, 17543), (3, 13122, 13169), (5, 9375, 9422), (5, 10000, 10047), (5, 10625, 10672), (5, 11250, 11297), (5, 11875, 11922), (5, 12500, 12547), (5, 13125, 13172), (5, 13750, 13797), (5, 14375, 14422), (5, 15000, 15047), (5, 15625, 15672), (5, 16250, 16297), (5, 16875, 16922), (5, 17500, 17547), (5, 9375, 9422), (5, 12500, 12547), (5, 15625, 15672), (5, 15625, 15672), (7, 9261, 9308), (7, 9604, 9651), (7, 9947, 9994), (7, 10290, 10337), (7, 10633, 10680), (7, 10976, 11023), (7, 11319, 11366), (7, 11662, 11709), (7, 12005, 12052), (7, 12348, 12395), (7, 12691, 12738), (7, 13034, 13081), (7, 13377, 13424), (7, 13720, 13767), (7, 14063, 14110), (7, 9604, 9651), (7, 12005, 12052), (7, 14406, 14453), (7, 16807, 16854), (7, 16807, 16854), (11, 9317, 9364), (11, 10648, 10695), (11, 11979, 12026), (11, 13310, 13357), (11, 14641, 14688), (11, 15972, 16019), (11, 17303, 17350), (11, 14641, 14688), (13, 10985, 11032), (13, 13182, 13229), (13, 15379, 15426), (13, 17576, 17623), (17, 9248, 9295), (17, 9537, 9584), (17, 9826, 9873), (17, 10115, 10162), (17, 10404, 10451), (17, 10693, 10740), (17, 10982, 11029), (17, 11271, 11318), (17, 11560, 11607), (17, 11849, 11896), (17, 9826, 9873), (17, 14739, 14786), (19, 9025, 9072), (19, 9386, 9433), (19, 9747, 9794), (19, 10108, 10155), (19, 10469, 10516), (19, 10830, 10877), (19, 11191, 11238), (19, 11552, 11599), (19, 11913, 11960), (19, 12274, 12321), (19, 12635, 12682), (19, 12996, 13043), (19, 13357, 13404), (19, 13718, 13765), (19, 14079, 14126), (19, 14440, 14487), (19, 14801, 14848), (19, 13718, 13765), (23, 9024, 9040), (23, 9522, 9569), (23, 10051, 10098), (23, 10580, 10627), (23, 11109, 11156), (23, 11638, 11685), (23, 12167, 12214), (23, 12696, 12743), (23, 13225, 13272), (23, 13754, 13801), (23, 14283, 14330), (23, 14812, 14859), (23, 15341, 15388), (23, 15870, 15917), (23, 16399, 16446), (23, 16928, 16975), (23, 17457, 17504), (23, 17986, 18033), (23, 12167, 12214), (29, 9251, 9298), (29, 10092, 10139), (29, 10933, 10980), (29, 11774, 11821), (29, 12615, 12662), (29, 13456, 13503), (29, 14297, 14344), (29, 15138, 15185), (29, 15979, 16026), (29, 16820, 16867), (29, 17661, 17708), (31, 9610, 9657), (31, 10571, 10618), (31, 11532, 11579), (31, 12493, 12540), (31, 13454, 13501), (31, 14415, 14462), (31, 15376, 15423), (31, 16337, 16384), (31, 17298, 17345), (37, 9583, 9630), (37, 10952, 10999), (37, 12321, 12368), (37, 13690, 13737), (37, 15059, 15106), (37, 16428, 16475), (37, 17797, 17844), (41, 10086, 10133), (41, 11767, 11814), (41, 13448, 13495), (41, 15129, 15176), (41, 16810, 16857), (43, 9245, 9292), (43, 11094, 11141), (43, 12943, 12990), (43, 14792, 14839), (43, 16641, 16688), (47, 11045, 11092), (47, 13254, 13301), (47, 15463, 15510), (47, 17672, 17719)]

def row048_layer002_block000 : List ColouredInterval :=
  [(2, 16384, 16431), (2, 16384, 16431), (3, 9477, 9524), (3, 10935, 10982), (3, 13122, 13169), (3, 15309, 15356), (3, 17496, 17543), (3, 13122, 13169), (5, 9375, 9422), (5, 10000, 10047), (5, 10625, 10672), (5, 11250, 11297), (5, 11875, 11922)]

def row048_layer002_block001 : List ColouredInterval :=
  [(5, 12500, 12547), (5, 13125, 13172), (5, 13750, 13797), (5, 14375, 14422), (5, 15000, 15047), (5, 15625, 15672), (5, 16250, 16297), (5, 16875, 16922), (5, 17500, 17547), (5, 9375, 9422), (5, 12500, 12547), (5, 15625, 15672), (5, 15625, 15672)]

def row048_layer002_block002 : List ColouredInterval :=
  [(7, 9261, 9308), (7, 9604, 9651), (7, 9947, 9994), (7, 10290, 10337), (7, 10633, 10680), (7, 10976, 11023), (7, 11319, 11366), (7, 11662, 11709), (7, 12005, 12052), (7, 12348, 12395), (7, 12691, 12738), (7, 13034, 13081), (7, 13377, 13424)]

def row048_layer002_block003 : List ColouredInterval :=
  [(7, 13720, 13767), (7, 14063, 14110), (7, 9604, 9651), (7, 12005, 12052), (7, 14406, 14453), (7, 16807, 16854), (7, 16807, 16854), (11, 9317, 9364), (11, 10648, 10695), (11, 11979, 12026), (11, 13310, 13357), (11, 14641, 14688), (11, 15972, 16019)]

def row048_layer002_block004 : List ColouredInterval :=
  [(11, 17303, 17350), (11, 14641, 14688), (13, 10985, 11032), (13, 13182, 13229), (13, 15379, 15426), (13, 17576, 17623), (17, 9248, 9295), (17, 9537, 9584), (17, 9826, 9873), (17, 10115, 10162), (17, 10404, 10451), (17, 10693, 10740), (17, 10982, 11029)]

def row048_layer002_block005 : List ColouredInterval :=
  [(17, 11271, 11318), (17, 11560, 11607), (17, 11849, 11896), (17, 9826, 9873), (17, 14739, 14786), (19, 9025, 9072), (19, 9386, 9433), (19, 9747, 9794), (19, 10108, 10155), (19, 10469, 10516), (19, 10830, 10877), (19, 11191, 11238), (19, 11552, 11599)]

def row048_layer002_block006 : List ColouredInterval :=
  [(19, 11913, 11960), (19, 12274, 12321), (19, 12635, 12682), (19, 12996, 13043), (19, 13357, 13404), (19, 13718, 13765), (19, 14079, 14126), (19, 14440, 14487), (19, 14801, 14848), (19, 13718, 13765), (23, 9024, 9040), (23, 9522, 9569), (23, 10051, 10098)]

def row048_layer002_block007 : List ColouredInterval :=
  [(23, 10580, 10627), (23, 11109, 11156), (23, 11638, 11685), (23, 12167, 12214), (23, 12696, 12743), (23, 13225, 13272), (23, 13754, 13801), (23, 14283, 14330), (23, 14812, 14859), (23, 15341, 15388), (23, 15870, 15917), (23, 16399, 16446), (23, 16928, 16975)]

def row048_layer002_block008 : List ColouredInterval :=
  [(23, 17457, 17504), (23, 17986, 18033), (23, 12167, 12214), (29, 9251, 9298), (29, 10092, 10139), (29, 10933, 10980), (29, 11774, 11821), (29, 12615, 12662), (29, 13456, 13503), (29, 14297, 14344), (29, 15138, 15185), (29, 15979, 16026), (29, 16820, 16867)]

def row048_layer002_block009 : List ColouredInterval :=
  [(29, 17661, 17708), (31, 9610, 9657), (31, 10571, 10618), (31, 11532, 11579), (31, 12493, 12540), (31, 13454, 13501), (31, 14415, 14462), (31, 15376, 15423), (31, 16337, 16384), (31, 17298, 17345), (37, 9583, 9630), (37, 10952, 10999), (37, 12321, 12368)]

def row048_layer002_block010 : List ColouredInterval :=
  [(37, 13690, 13737), (37, 15059, 15106), (37, 16428, 16475), (37, 17797, 17844), (41, 10086, 10133), (41, 11767, 11814), (41, 13448, 13495), (41, 15129, 15176), (41, 16810, 16857), (43, 9245, 9292), (43, 11094, 11141), (43, 12943, 12990), (43, 14792, 14839)]

def row048_layer002_block011 : List ColouredInterval :=
  [(43, 16641, 16688), (47, 11045, 11092), (47, 13254, 13301), (47, 15463, 15510), (47, 17672, 17719)]

def row048_layer002_chunks : List (List ColouredInterval) :=
  [row048_layer002_block000, row048_layer002_block001, row048_layer002_block002, row048_layer002_block003, row048_layer002_block004, row048_layer002_block005, row048_layer002_block006, row048_layer002_block007, row048_layer002_block008, row048_layer002_block009, row048_layer002_block010, row048_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_arithmetic : LayerArithmeticValid row048.height { lower := 9024, upper := 18048, M := 41 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_enumeration :
    activePowerIntervalList 48 41 9024 18048 = row048_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_pairs000 :
    row048_layer002_block000.all (fun I => row048_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer002_pairs001 :
    row048_layer002_block001.all (fun I => row048_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer002_pairs001
