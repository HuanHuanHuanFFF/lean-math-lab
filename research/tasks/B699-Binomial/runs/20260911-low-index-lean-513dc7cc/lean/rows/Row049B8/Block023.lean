import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block022
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row049B8.Block002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs005 :
    row049_layer009_block005.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs006 :
    row049_layer009_block006.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs007 :
    row049_layer009_block007.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_pairs008 :
    row049_layer009_block008.all (fun I => row049_layer009_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row049_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_chunks_eq : row049_layer009_chunks.flatten = row049_layer009_intervals := by
  rfl

theorem row049_layer009_pairs : pairCoverCheck row049_layer009_intervals row049_bounds = true := by
  apply pairCoverCheck_of_chunks row049_layer009_chunks_eq
  intro block hblock
  simp only [row049_layer009_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row049_layer009_pairs000
  · exact row049_layer009_pairs001
  · exact row049_layer009_pairs002
  · exact row049_layer009_pairs003
  · exact row049_layer009_pairs004
  · exact row049_layer009_pairs005
  · exact row049_layer009_pairs006
  · exact row049_layer009_pairs007
  · exact row049_layer009_pairs008

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer009_checked :
    coverLayerCheck row049.height row049.goods { lower := 1204224, upper := 2408448, M := 26 } = true := by
  exact coverLayerCheck_of_parts row049_layer009_arithmetic row049_layer009_enumeration row049_bounds_eq row049_layer009_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer009_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row049_layer010_intervals : List ColouredInterval :=
  [(2, 2490368, 2490416), (2, 2621440, 2621488), (2, 2752512, 2752560), (2, 2883584, 2883632), (2, 3014656, 3014704), (2, 3145728, 3145776), (2, 3276800, 3276848), (2, 2621440, 2621488), (2, 2883584, 2883632), (2, 3145728, 3145776), (2, 3407872, 3407920), (2, 3670016, 3670064), (2, 3932160, 3932208), (2, 4194304, 4194352), (2, 4456448, 4456496), (2, 4718592, 4718640), (2, 2621440, 2621488), (2, 3145728, 3145776), (2, 3670016, 3670064), (2, 4194304, 4194352), (2, 4718592, 4718640), (2, 3145728, 3145776), (2, 4194304, 4194352), (2, 4194304, 4194352), (2, 4194304, 4194352), (3, 2480058, 2480106), (3, 2657205, 2657253), (3, 2834352, 2834400), (3, 3011499, 3011547), (3, 3188646, 3188694), (3, 3365793, 3365841), (3, 3542940, 3542988), (3, 3720087, 3720135), (3, 3897234, 3897282), (3, 4074381, 4074429), (3, 4251528, 4251576), (3, 4428675, 4428723), (3, 2657205, 2657253), (3, 3188646, 3188694), (3, 3720087, 3720135), (3, 4251528, 4251576), (3, 4782969, 4783017), (3, 3188646, 3188694), (3, 4782969, 4783017), (3, 4782969, 4783017), (5, 2734375, 2734423), (5, 3125000, 3125048), (5, 3515625, 3515673), (5, 3906250, 3906298), (5, 4296875, 4296923), (5, 4687500, 4687548), (5, 3906250, 3906298), (11, 2415765, 2415813), (11, 2576816, 2576864), (11, 2737867, 2737915), (11, 2898918, 2898966), (11, 3059969, 3060017), (11, 3221020, 3221068), (11, 3382071, 3382119), (11, 3543122, 3543170), (11, 3704173, 3704221), (11, 3865224, 3865272), (11, 4026275, 4026323), (11, 3543122, 3543170), (13, 2599051, 2599099), (13, 2970344, 2970392), (13, 3341637, 3341685), (13, 3712930, 3712978), (13, 4084223, 4084271), (13, 4455516, 4455564), (17, 2839714, 2839762), (17, 4259571, 4259619), (19, 2476099, 2476147), (19, 2606420, 2606468), (19, 2736741, 2736789), (19, 2867062, 2867110), (19, 2997383, 2997431), (19, 3127704, 3127752), (19, 3258025, 3258073), (19, 2476099, 2476147), (23, 2518569, 2518617), (23, 2798410, 2798458), (23, 3078251, 3078299), (23, 3358092, 3358140), (23, 3637933, 3637981), (23, 3917774, 3917822), (23, 4197615, 4197663), (23, 4477456, 4477504), (23, 4757297, 4757345), (29, 2829124, 2829172), (29, 3536405, 3536453), (29, 4243686, 4243734), (31, 2770563, 2770611), (31, 3694084, 3694132), (31, 4617605, 4617653), (37, 3748322, 3748370), (41, 2825761, 2825809), (43, 3418801, 3418849), (47, 2491752, 2491800), (47, 2595575, 2595623)]

def row049_layer010_block000 : List ColouredInterval :=
  [(2, 2490368, 2490416), (2, 2621440, 2621488), (2, 2752512, 2752560), (2, 2883584, 2883632), (2, 3014656, 3014704), (2, 3145728, 3145776), (2, 3276800, 3276848), (2, 2621440, 2621488), (2, 2883584, 2883632), (2, 3145728, 3145776), (2, 3407872, 3407920), (2, 3670016, 3670064), (2, 3932160, 3932208), (2, 4194304, 4194352), (2, 4456448, 4456496), (2, 4718592, 4718640)]

def row049_layer010_block001 : List ColouredInterval :=
  [(2, 2621440, 2621488), (2, 3145728, 3145776), (2, 3670016, 3670064), (2, 4194304, 4194352), (2, 4718592, 4718640), (2, 3145728, 3145776), (2, 4194304, 4194352), (2, 4194304, 4194352), (2, 4194304, 4194352), (3, 2480058, 2480106), (3, 2657205, 2657253), (3, 2834352, 2834400), (3, 3011499, 3011547), (3, 3188646, 3188694), (3, 3365793, 3365841), (3, 3542940, 3542988)]

def row049_layer010_block002 : List ColouredInterval :=
  [(3, 3720087, 3720135), (3, 3897234, 3897282), (3, 4074381, 4074429), (3, 4251528, 4251576), (3, 4428675, 4428723), (3, 2657205, 2657253), (3, 3188646, 3188694), (3, 3720087, 3720135), (3, 4251528, 4251576), (3, 4782969, 4783017), (3, 3188646, 3188694), (3, 4782969, 4783017), (3, 4782969, 4783017), (5, 2734375, 2734423), (5, 3125000, 3125048), (5, 3515625, 3515673)]

def row049_layer010_block003 : List ColouredInterval :=
  [(5, 3906250, 3906298), (5, 4296875, 4296923), (5, 4687500, 4687548), (5, 3906250, 3906298), (11, 2415765, 2415813), (11, 2576816, 2576864), (11, 2737867, 2737915), (11, 2898918, 2898966), (11, 3059969, 3060017), (11, 3221020, 3221068), (11, 3382071, 3382119), (11, 3543122, 3543170), (11, 3704173, 3704221), (11, 3865224, 3865272), (11, 4026275, 4026323), (11, 3543122, 3543170)]

def row049_layer010_block004 : List ColouredInterval :=
  [(13, 2599051, 2599099), (13, 2970344, 2970392), (13, 3341637, 3341685), (13, 3712930, 3712978), (13, 4084223, 4084271), (13, 4455516, 4455564), (17, 2839714, 2839762), (17, 4259571, 4259619), (19, 2476099, 2476147), (19, 2606420, 2606468), (19, 2736741, 2736789), (19, 2867062, 2867110), (19, 2997383, 2997431), (19, 3127704, 3127752), (19, 3258025, 3258073), (19, 2476099, 2476147)]

def row049_layer010_block005 : List ColouredInterval :=
  [(23, 2518569, 2518617), (23, 2798410, 2798458), (23, 3078251, 3078299), (23, 3358092, 3358140), (23, 3637933, 3637981), (23, 3917774, 3917822), (23, 4197615, 4197663), (23, 4477456, 4477504), (23, 4757297, 4757345), (29, 2829124, 2829172), (29, 3536405, 3536453), (29, 4243686, 4243734), (31, 2770563, 2770611), (31, 3694084, 3694132), (31, 4617605, 4617653), (37, 3748322, 3748370)]

def row049_layer010_block006 : List ColouredInterval :=
  [(41, 2825761, 2825809), (43, 3418801, 3418849), (47, 2491752, 2491800), (47, 2595575, 2595623)]

def row049_layer010_chunks : List (List ColouredInterval) :=
  [row049_layer010_block000, row049_layer010_block001, row049_layer010_block002, row049_layer010_block003, row049_layer010_block004, row049_layer010_block005, row049_layer010_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row049_layer010_arithmetic : LayerArithmeticValid row049.height { lower := 2408448, upper := 4816896, M := 25 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row049_layer010_arithmetic
