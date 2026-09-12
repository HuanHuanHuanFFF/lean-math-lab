import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block004
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block005
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row047B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer001_pairs007 :
    row047_layer001_block007.all (fun I => row047_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer001_pairs008 :
    row047_layer001_block008.all (fun I => row047_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer001_pairs009 :
    row047_layer001_block009.all (fun I => row047_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer001_pairs010 :
    row047_layer001_block010.all (fun I => row047_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row047_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer001_chunks_eq : row047_layer001_chunks.flatten = row047_layer001_intervals := by
  rfl

theorem row047_layer001_pairs : pairCoverCheck row047_layer001_intervals row047_bounds = true := by
  apply pairCoverCheck_of_chunks row047_layer001_chunks_eq
  intro block hblock
  simp only [row047_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row047_layer001_pairs000
  · exact row047_layer001_pairs001
  · exact row047_layer001_pairs002
  · exact row047_layer001_pairs003
  · exact row047_layer001_pairs004
  · exact row047_layer001_pairs005
  · exact row047_layer001_pairs006
  · exact row047_layer001_pairs007
  · exact row047_layer001_pairs008
  · exact row047_layer001_pairs009
  · exact row047_layer001_pairs010

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer001_checked :
    coverLayerCheck row047.height row047.goods { lower := 4324, upper := 8648, M := 32 } = true := by
  exact coverLayerCheck_of_parts row047_layer001_arithmetic row047_layer001_enumeration row047_bounds_eq row047_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row047_layer002_intervals : List ColouredInterval :=
  [(2, 8704, 8750), (2, 9216, 9262), (2, 9728, 9774), (2, 10240, 10286), (2, 10752, 10798), (2, 11264, 11310), (2, 11776, 11822), (2, 12288, 12334), (2, 12800, 12846), (2, 13312, 13358), (2, 13824, 13870), (2, 14336, 14382), (2, 14848, 14894), (2, 15360, 15406), (2, 9216, 9262), (2, 10240, 10286), (2, 11264, 11310), (2, 12288, 12334), (2, 13312, 13358), (2, 14336, 14382), (2, 15360, 15406), (2, 16384, 16430), (2, 10240, 10286), (2, 12288, 12334), (2, 14336, 14382), (2, 16384, 16430), (2, 12288, 12334), (2, 16384, 16430), (2, 16384, 16430), (2, 16384, 16430), (3, 8748, 8794), (3, 9477, 9523), (3, 10206, 10252), (3, 10935, 10981), (3, 11664, 11710), (3, 12393, 12439), (3, 13122, 13168), (3, 13851, 13897), (3, 14580, 14626), (3, 15309, 15355), (3, 16038, 16084), (3, 16767, 16813), (3, 8748, 8794), (3, 10935, 10981), (3, 13122, 13168), (3, 15309, 15355), (3, 13122, 13168), (5, 8750, 8796), (5, 9375, 9421), (5, 10000, 10046), (5, 10625, 10671), (5, 11250, 11296), (5, 11875, 11921), (5, 12500, 12546), (5, 13125, 13171), (5, 13750, 13796), (5, 14375, 14421), (5, 15000, 15046), (5, 15625, 15671), (5, 16250, 16296), (5, 16875, 16921), (5, 9375, 9421), (5, 12500, 12546), (5, 15625, 15671), (5, 15625, 15671), (7, 8918, 8964), (7, 9261, 9307), (7, 9604, 9650), (7, 9947, 9993), (7, 10290, 10336), (7, 9604, 9650), (7, 12005, 12051), (7, 14406, 14452), (7, 16807, 16853), (7, 16807, 16853), (11, 9317, 9363), (11, 10648, 10694), (11, 11979, 12025), (11, 13310, 13356), (11, 14641, 14687), (11, 15972, 16018), (11, 14641, 14687), (13, 8788, 8834), (13, 10985, 11031), (13, 13182, 13228), (13, 15379, 15425), (17, 8670, 8716), (17, 9826, 9872), (17, 14739, 14785), (19, 8664, 8710), (19, 9025, 9071), (19, 9386, 9432), (19, 9747, 9793), (19, 10108, 10154), (19, 10469, 10515), (19, 10830, 10876), (19, 13718, 13764), (23, 8993, 9039), (23, 9522, 9568), (23, 10051, 10097), (23, 10580, 10626), (23, 11109, 11155), (23, 11638, 11684), (23, 12167, 12213), (23, 12696, 12742), (23, 13225, 13271), (23, 13754, 13800), (23, 14283, 14329), (23, 14812, 14858), (23, 15341, 15387), (23, 15870, 15916), (23, 12167, 12213), (29, 9251, 9297), (29, 10092, 10138), (29, 10933, 10979), (29, 11774, 11820), (29, 12615, 12661), (29, 13456, 13502), (29, 14297, 14343), (29, 15138, 15184), (29, 15979, 16025), (29, 16820, 16866), (31, 8649, 8695), (31, 9610, 9656), (31, 10571, 10617), (31, 11532, 11578), (31, 12493, 12539), (31, 13454, 13500), (31, 14415, 14461), (31, 15376, 15422), (31, 16337, 16383), (37, 9583, 9629), (37, 10952, 10998), (37, 12321, 12367), (37, 13690, 13736), (37, 15059, 15105), (37, 16428, 16474), (41, 10086, 10132), (41, 11767, 11813), (41, 13448, 13494), (41, 15129, 15175), (41, 16810, 16856), (43, 9245, 9291), (43, 11094, 11140), (43, 12943, 12989), (43, 14792, 14838), (43, 16641, 16687)]

def row047_layer002_block000 : List ColouredInterval :=
  [(2, 8704, 8750), (2, 9216, 9262), (2, 9728, 9774), (2, 10240, 10286), (2, 10752, 10798), (2, 11264, 11310), (2, 11776, 11822), (2, 12288, 12334), (2, 12800, 12846), (2, 13312, 13358), (2, 13824, 13870), (2, 14336, 14382), (2, 14848, 14894)]

def row047_layer002_block001 : List ColouredInterval :=
  [(2, 15360, 15406), (2, 9216, 9262), (2, 10240, 10286), (2, 11264, 11310), (2, 12288, 12334), (2, 13312, 13358), (2, 14336, 14382), (2, 15360, 15406), (2, 16384, 16430), (2, 10240, 10286), (2, 12288, 12334), (2, 14336, 14382), (2, 16384, 16430)]

def row047_layer002_block002 : List ColouredInterval :=
  [(2, 12288, 12334), (2, 16384, 16430), (2, 16384, 16430), (2, 16384, 16430), (3, 8748, 8794), (3, 9477, 9523), (3, 10206, 10252), (3, 10935, 10981), (3, 11664, 11710), (3, 12393, 12439), (3, 13122, 13168), (3, 13851, 13897), (3, 14580, 14626)]

def row047_layer002_block003 : List ColouredInterval :=
  [(3, 15309, 15355), (3, 16038, 16084), (3, 16767, 16813), (3, 8748, 8794), (3, 10935, 10981), (3, 13122, 13168), (3, 15309, 15355), (3, 13122, 13168), (5, 8750, 8796), (5, 9375, 9421), (5, 10000, 10046), (5, 10625, 10671), (5, 11250, 11296)]

def row047_layer002_block004 : List ColouredInterval :=
  [(5, 11875, 11921), (5, 12500, 12546), (5, 13125, 13171), (5, 13750, 13796), (5, 14375, 14421), (5, 15000, 15046), (5, 15625, 15671), (5, 16250, 16296), (5, 16875, 16921), (5, 9375, 9421), (5, 12500, 12546), (5, 15625, 15671), (5, 15625, 15671)]

def row047_layer002_block005 : List ColouredInterval :=
  [(7, 8918, 8964), (7, 9261, 9307), (7, 9604, 9650), (7, 9947, 9993), (7, 10290, 10336), (7, 9604, 9650), (7, 12005, 12051), (7, 14406, 14452), (7, 16807, 16853), (7, 16807, 16853), (11, 9317, 9363), (11, 10648, 10694), (11, 11979, 12025)]

def row047_layer002_block006 : List ColouredInterval :=
  [(11, 13310, 13356), (11, 14641, 14687), (11, 15972, 16018), (11, 14641, 14687), (13, 8788, 8834), (13, 10985, 11031), (13, 13182, 13228), (13, 15379, 15425), (17, 8670, 8716), (17, 9826, 9872), (17, 14739, 14785), (19, 8664, 8710), (19, 9025, 9071)]

def row047_layer002_block007 : List ColouredInterval :=
  [(19, 9386, 9432), (19, 9747, 9793), (19, 10108, 10154), (19, 10469, 10515), (19, 10830, 10876), (19, 13718, 13764), (23, 8993, 9039), (23, 9522, 9568), (23, 10051, 10097), (23, 10580, 10626), (23, 11109, 11155), (23, 11638, 11684), (23, 12167, 12213)]

def row047_layer002_block008 : List ColouredInterval :=
  [(23, 12696, 12742), (23, 13225, 13271), (23, 13754, 13800), (23, 14283, 14329), (23, 14812, 14858), (23, 15341, 15387), (23, 15870, 15916), (23, 12167, 12213), (29, 9251, 9297), (29, 10092, 10138), (29, 10933, 10979), (29, 11774, 11820), (29, 12615, 12661)]

def row047_layer002_block009 : List ColouredInterval :=
  [(29, 13456, 13502), (29, 14297, 14343), (29, 15138, 15184), (29, 15979, 16025), (29, 16820, 16866), (31, 8649, 8695), (31, 9610, 9656), (31, 10571, 10617), (31, 11532, 11578), (31, 12493, 12539), (31, 13454, 13500), (31, 14415, 14461), (31, 15376, 15422)]

def row047_layer002_block010 : List ColouredInterval :=
  [(31, 16337, 16383), (37, 9583, 9629), (37, 10952, 10998), (37, 12321, 12367), (37, 13690, 13736), (37, 15059, 15105), (37, 16428, 16474), (41, 10086, 10132), (41, 11767, 11813), (41, 13448, 13494), (41, 15129, 15175), (41, 16810, 16856), (43, 9245, 9291)]

def row047_layer002_block011 : List ColouredInterval :=
  [(43, 11094, 11140), (43, 12943, 12989), (43, 14792, 14838), (43, 16641, 16687)]

def row047_layer002_chunks : List (List ColouredInterval) :=
  [row047_layer002_block000, row047_layer002_block001, row047_layer002_block002, row047_layer002_block003, row047_layer002_block004, row047_layer002_block005, row047_layer002_block006, row047_layer002_block007, row047_layer002_block008, row047_layer002_block009, row047_layer002_block010, row047_layer002_block011]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row047_layer002_arithmetic : LayerArithmeticValid row047.height { lower := 8648, upper := 17296, M := 30 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row047_layer002_arithmetic
