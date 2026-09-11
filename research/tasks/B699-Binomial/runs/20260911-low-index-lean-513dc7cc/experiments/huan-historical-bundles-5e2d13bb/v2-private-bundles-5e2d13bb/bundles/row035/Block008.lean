import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row035.Block007
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».experiments.«huan-historical-bundles-5e2d13bb».«v2-private-bundles-5e2d13bb».bundles.row035.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_pairs001 :
    row035_layer019_block001.all (fun I => row035_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_pairs002 :
    row035_layer019_block002.all (fun I => row035_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_pairs003 :
    row035_layer019_block003.all (fun I => row035_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_pairs004 :
    row035_layer019_block004.all (fun I => row035_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_pairs005 :
    row035_layer019_block005.all (fun I => row035_layer019_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_chunks_eq : row035_layer019_chunks.flatten = row035_layer019_intervals := by
  rfl

theorem row035_layer019_pairs : pairCoverCheck row035_layer019_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer019_chunks_eq
  intro block hblock
  simp only [row035_layer019_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row035_layer019_pairs000
  · exact row035_layer019_pairs001
  · exact row035_layer019_pairs002
  · exact row035_layer019_pairs003
  · exact row035_layer019_pairs004
  · exact row035_layer019_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer019_checked :
    coverLayerCheck row035.height row035.goods { lower := 623902720, upper := 1247805440, M := 24 } = true := by
  exact coverLayerCheck_of_parts row035_layer019_arithmetic row035_layer019_enumeration row035_bounds_eq row035_layer019_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer016_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer017_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer018_checked
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer019_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer020_intervals : List ColouredInterval :=
  [(2, 1275068416, 1275068450), (2, 1342177280, 1342177314), (2, 1409286144, 1409286178), (2, 1476395008, 1476395042), (2, 1543503872, 1543503906), (2, 1610612736, 1610612770), (2, 1342177280, 1342177314), (2, 1476395008, 1476395042), (2, 1610612736, 1610612770), (2, 1744830464, 1744830498), (2, 1879048192, 1879048226), (2, 2013265920, 2013265954), (2, 2147483648, 2147483682), (2, 2281701376, 2281701410), (2, 2415919104, 2415919138), (2, 1342177280, 1342177314), (2, 1610612736, 1610612770), (2, 1879048192, 1879048226), (2, 2147483648, 2147483682), (2, 2415919104, 2415919138), (2, 1610612736, 1610612770), (2, 2147483648, 2147483682), (2, 2147483648, 2147483682), (2, 2147483648, 2147483682), (3, 1291401630, 1291401664), (3, 1420541793, 1420541827), (3, 1549681956, 1549681990), (3, 1678822119, 1678822153), (3, 1807962282, 1807962316), (3, 1937102445, 1937102479), (3, 2066242608, 2066242642), (3, 2195382771, 2195382805), (3, 2324522934, 2324522968), (3, 2453663097, 2453663131), (3, 1549681956, 1549681990), (3, 1937102445, 1937102479), (3, 2324522934, 2324522968), (3, 2324522934, 2324522968), (5, 2441406250, 2441406284), (7, 1977326743, 1977326777), (11, 1286153286, 1286153320), (11, 1500512167, 1500512201), (11, 1714871048, 1714871082), (11, 1929229929, 1929229963), (11, 2143588810, 2143588844), (11, 2357947691, 2357947725), (11, 2357947691, 2357947725), (13, 1254970340, 1254970374), (13, 1317718857, 1317718891), (13, 1380467374, 1380467408), (13, 1443215891, 1443215925), (13, 1505964408, 1505964442), (13, 1631461442, 1631461476), (13, 2447192163, 2447192197), (17, 1641354692, 1641354726), (17, 2051693365, 2051693399), (17, 2462032038, 2462032072), (19, 1787743478, 1787743512), (23, 1332323001, 1332323035), (23, 1480358890, 1480358924), (23, 1628394779, 1628394813), (23, 1776430668, 1776430702), (23, 1924466557, 1924466591), (23, 2072502446, 2072502480), (23, 2220538335, 2220538369), (23, 2368574224, 2368574258), (29, 1784469963, 1784469997), (29, 2379293284, 2379293318), (31, 1775007362, 1775007396)]

def row035_layer020_block000 : List ColouredInterval :=
  [(2, 1275068416, 1275068450), (2, 1342177280, 1342177314), (2, 1409286144, 1409286178), (2, 1476395008, 1476395042), (2, 1543503872, 1543503906), (2, 1610612736, 1610612770), (2, 1342177280, 1342177314), (2, 1476395008, 1476395042), (2, 1610612736, 1610612770), (2, 1744830464, 1744830498), (2, 1879048192, 1879048226), (2, 2013265920, 2013265954), (2, 2147483648, 2147483682), (2, 2281701376, 2281701410), (2, 2415919104, 2415919138), (2, 1342177280, 1342177314)]

def row035_layer020_block001 : List ColouredInterval :=
  [(2, 1610612736, 1610612770), (2, 1879048192, 1879048226), (2, 2147483648, 2147483682), (2, 2415919104, 2415919138), (2, 1610612736, 1610612770), (2, 2147483648, 2147483682), (2, 2147483648, 2147483682), (2, 2147483648, 2147483682), (3, 1291401630, 1291401664), (3, 1420541793, 1420541827), (3, 1549681956, 1549681990), (3, 1678822119, 1678822153), (3, 1807962282, 1807962316), (3, 1937102445, 1937102479), (3, 2066242608, 2066242642), (3, 2195382771, 2195382805)]

def row035_layer020_block002 : List ColouredInterval :=
  [(3, 2324522934, 2324522968), (3, 2453663097, 2453663131), (3, 1549681956, 1549681990), (3, 1937102445, 1937102479), (3, 2324522934, 2324522968), (3, 2324522934, 2324522968), (5, 2441406250, 2441406284), (7, 1977326743, 1977326777), (11, 1286153286, 1286153320), (11, 1500512167, 1500512201), (11, 1714871048, 1714871082), (11, 1929229929, 1929229963), (11, 2143588810, 2143588844), (11, 2357947691, 2357947725), (11, 2357947691, 2357947725), (13, 1254970340, 1254970374)]

def row035_layer020_block003 : List ColouredInterval :=
  [(13, 1317718857, 1317718891), (13, 1380467374, 1380467408), (13, 1443215891, 1443215925), (13, 1505964408, 1505964442), (13, 1631461442, 1631461476), (13, 2447192163, 2447192197), (17, 1641354692, 1641354726), (17, 2051693365, 2051693399), (17, 2462032038, 2462032072), (19, 1787743478, 1787743512), (23, 1332323001, 1332323035), (23, 1480358890, 1480358924), (23, 1628394779, 1628394813), (23, 1776430668, 1776430702), (23, 1924466557, 1924466591), (23, 2072502446, 2072502480)]

def row035_layer020_block004 : List ColouredInterval :=
  [(23, 2220538335, 2220538369), (23, 2368574224, 2368574258), (29, 1784469963, 1784469997), (29, 2379293284, 2379293318), (31, 1775007362, 1775007396)]

def row035_layer020_chunks : List (List ColouredInterval) :=
  [row035_layer020_block000, row035_layer020_block001, row035_layer020_block002, row035_layer020_block003, row035_layer020_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_arithmetic : LayerArithmeticValid row035.height { lower := 1247805440, upper := 2495610880, M := 24 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_enumeration :
    activePowerIntervalList 35 24 1247805440 2495610880 = row035_layer020_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_pairs000 :
    row035_layer020_block000.all (fun I => row035_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_pairs001 :
    row035_layer020_block001.all (fun I => row035_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_pairs002 :
    row035_layer020_block002.all (fun I => row035_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_pairs003 :
    row035_layer020_block003.all (fun I => row035_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_pairs004 :
    row035_layer020_block004.all (fun I => row035_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_chunks_eq : row035_layer020_chunks.flatten = row035_layer020_intervals := by
  rfl

theorem row035_layer020_pairs : pairCoverCheck row035_layer020_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer020_chunks_eq
  intro block hblock
  simp only [row035_layer020_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer020_pairs000
  · exact row035_layer020_pairs001
  · exact row035_layer020_pairs002
  · exact row035_layer020_pairs003
  · exact row035_layer020_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer020_checked :
    coverLayerCheck row035.height row035.goods { lower := 1247805440, upper := 2495610880, M := 24 } = true := by
  exact coverLayerCheck_of_parts row035_layer020_arithmetic row035_layer020_enumeration row035_bounds_eq row035_layer020_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer021_intervals : List ColouredInterval :=
  [(2, 2550136832, 2550136866), (2, 2684354560, 2684354594), (2, 2818572288, 2818572322), (2, 2952790016, 2952790050), (2, 3087007744, 3087007778), (2, 2684354560, 2684354594), (2, 2952790016, 2952790050), (2, 3221225472, 3221225506), (2, 3489660928, 3489660962), (2, 3758096384, 3758096418), (2, 4026531840, 4026531874), (2, 4294967296, 4294967330), (2, 4563402752, 4563402786), (2, 4831838208, 4831838242), (2, 2684354560, 2684354594), (2, 3221225472, 3221225506), (2, 3758096384, 3758096418), (2, 4294967296, 4294967330), (2, 4831838208, 4831838242), (2, 3221225472, 3221225506), (2, 4294967296, 4294967330), (2, 4294967296, 4294967330), (2, 4294967296, 4294967330), (3, 2582803260, 2582803294), (3, 2711943423, 2711943457), (3, 2841083586, 2841083620), (3, 2970223749, 2970223783), (3, 2711943423, 2711943457), (3, 3099363912, 3099363946), (3, 3486784401, 3486784435), (3, 3874204890, 3874204924), (3, 4261625379, 4261625413), (3, 4649045868, 4649045902), (3, 3486784401, 3486784435), (3, 4649045868, 4649045902), (3, 3486784401, 3486784435), (5, 3662109375, 3662109409), (5, 4882812500, 4882812534), (7, 3954653486, 3954653520), (11, 2572306572, 2572306606), (11, 2786665453, 2786665487), (11, 3001024334, 3001024368), (11, 3215383215, 3215383249), (11, 3429742096, 3429742130), (11, 3644100977, 3644101011), (11, 3858459858, 3858459892), (11, 4072818739, 4072818773), (11, 4287177620, 4287177654), (11, 4501536501, 4501536535), (11, 4715895382, 4715895416), (11, 4930254263, 4930254297), (11, 4715895382, 4715895416), (13, 3262922884, 3262922918), (13, 4078653605, 4078653639), (13, 4894384326, 4894384360), (17, 2872370711, 2872370745), (17, 3282709384, 3282709418), (17, 3693048057, 3693048091), (17, 4103386730, 4103386764), (17, 4513725403, 4513725437), (17, 4924064076, 4924064110), (19, 2681615217, 2681615251), (19, 3575486956, 3575486990), (19, 4469358695, 4469358729), (23, 2516610113, 2516610147), (23, 2664646002, 2664646036), (23, 2812681891, 2812681925), (23, 2960717780, 2960717814), (23, 3108753669, 3108753703), (23, 3256789558, 3256789592), (23, 3404825447, 3404825481), (23, 3404825447, 3404825481), (29, 2974116605, 2974116639), (29, 3568939926, 3568939960), (29, 4163763247, 4163763281), (29, 4758586568, 4758586602), (31, 2662511043, 2662511077), (31, 3550014724, 3550014758), (31, 4437518405, 4437518439)]

def row035_layer021_block000 : List ColouredInterval :=
  [(2, 2550136832, 2550136866), (2, 2684354560, 2684354594), (2, 2818572288, 2818572322), (2, 2952790016, 2952790050), (2, 3087007744, 3087007778), (2, 2684354560, 2684354594), (2, 2952790016, 2952790050), (2, 3221225472, 3221225506), (2, 3489660928, 3489660962), (2, 3758096384, 3758096418), (2, 4026531840, 4026531874), (2, 4294967296, 4294967330), (2, 4563402752, 4563402786), (2, 4831838208, 4831838242), (2, 2684354560, 2684354594), (2, 3221225472, 3221225506)]

def row035_layer021_block001 : List ColouredInterval :=
  [(2, 3758096384, 3758096418), (2, 4294967296, 4294967330), (2, 4831838208, 4831838242), (2, 3221225472, 3221225506), (2, 4294967296, 4294967330), (2, 4294967296, 4294967330), (2, 4294967296, 4294967330), (3, 2582803260, 2582803294), (3, 2711943423, 2711943457), (3, 2841083586, 2841083620), (3, 2970223749, 2970223783), (3, 2711943423, 2711943457), (3, 3099363912, 3099363946), (3, 3486784401, 3486784435), (3, 3874204890, 3874204924), (3, 4261625379, 4261625413)]

def row035_layer021_block002 : List ColouredInterval :=
  [(3, 4649045868, 4649045902), (3, 3486784401, 3486784435), (3, 4649045868, 4649045902), (3, 3486784401, 3486784435), (5, 3662109375, 3662109409), (5, 4882812500, 4882812534), (7, 3954653486, 3954653520), (11, 2572306572, 2572306606), (11, 2786665453, 2786665487), (11, 3001024334, 3001024368), (11, 3215383215, 3215383249), (11, 3429742096, 3429742130), (11, 3644100977, 3644101011), (11, 3858459858, 3858459892), (11, 4072818739, 4072818773), (11, 4287177620, 4287177654)]

def row035_layer021_block003 : List ColouredInterval :=
  [(11, 4501536501, 4501536535), (11, 4715895382, 4715895416), (11, 4930254263, 4930254297), (11, 4715895382, 4715895416), (13, 3262922884, 3262922918), (13, 4078653605, 4078653639), (13, 4894384326, 4894384360), (17, 2872370711, 2872370745), (17, 3282709384, 3282709418), (17, 3693048057, 3693048091), (17, 4103386730, 4103386764), (17, 4513725403, 4513725437), (17, 4924064076, 4924064110), (19, 2681615217, 2681615251), (19, 3575486956, 3575486990), (19, 4469358695, 4469358729)]

def row035_layer021_block004 : List ColouredInterval :=
  [(23, 2516610113, 2516610147), (23, 2664646002, 2664646036), (23, 2812681891, 2812681925), (23, 2960717780, 2960717814), (23, 3108753669, 3108753703), (23, 3256789558, 3256789592), (23, 3404825447, 3404825481), (23, 3404825447, 3404825481), (29, 2974116605, 2974116639), (29, 3568939926, 3568939960), (29, 4163763247, 4163763281), (29, 4758586568, 4758586602), (31, 2662511043, 2662511077), (31, 3550014724, 3550014758), (31, 4437518405, 4437518439)]

def row035_layer021_chunks : List (List ColouredInterval) :=
  [row035_layer021_block000, row035_layer021_block001, row035_layer021_block002, row035_layer021_block003, row035_layer021_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_arithmetic : LayerArithmeticValid row035.height { lower := 2495610880, upper := 4991221760, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_enumeration :
    activePowerIntervalList 35 23 2495610880 4991221760 = row035_layer021_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_pairs000 :
    row035_layer021_block000.all (fun I => row035_layer021_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_pairs001 :
    row035_layer021_block001.all (fun I => row035_layer021_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_pairs002 :
    row035_layer021_block002.all (fun I => row035_layer021_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_pairs003 :
    row035_layer021_block003.all (fun I => row035_layer021_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_pairs004 :
    row035_layer021_block004.all (fun I => row035_layer021_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_chunks_eq : row035_layer021_chunks.flatten = row035_layer021_intervals := by
  rfl

theorem row035_layer021_pairs : pairCoverCheck row035_layer021_intervals row035_bounds = true := by
  apply pairCoverCheck_of_chunks row035_layer021_chunks_eq
  intro block hblock
  simp only [row035_layer021_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl
  · exact row035_layer021_pairs000
  · exact row035_layer021_pairs001
  · exact row035_layer021_pairs002
  · exact row035_layer021_pairs003
  · exact row035_layer021_pairs004

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer021_checked :
    coverLayerCheck row035.height row035.goods { lower := 2495610880, upper := 4991221760, M := 23 } = true := by
  exact coverLayerCheck_of_parts row035_layer021_arithmetic row035_layer021_enumeration row035_bounds_eq row035_layer021_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer021_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row035_layer022_intervals : List ColouredInterval :=
  [(2, 5100273664, 5100273698), (2, 5368709120, 5368709154), (2, 5637144576, 5637144610), (2, 5905580032, 5905580066), (2, 6174015488, 6174015522), (2, 5368709120, 5368709154), (2, 5905580032, 5905580066), (2, 6442450944, 6442450978), (2, 6979321856, 6979321890), (2, 7516192768, 7516192802), (2, 8053063680, 8053063714), (2, 8589934592, 8589934626), (2, 9126805504, 9126805538), (2, 9663676416, 9663676450), (2, 5368709120, 5368709154), (2, 6442450944, 6442450978), (2, 7516192768, 7516192802), (2, 8589934592, 8589934626), (2, 9663676416, 9663676450), (2, 6442450944, 6442450978), (2, 8589934592, 8589934626), (2, 8589934592, 8589934626), (2, 8589934592, 8589934626), (3, 5036466357, 5036466391), (3, 5423886846, 5423886880), (3, 5811307335, 5811307369), (3, 6198727824, 6198727858), (3, 6586148313, 6586148347), (3, 6973568802, 6973568836), (3, 7360989291, 7360989325), (3, 7748409780, 7748409814), (3, 8135830269, 8135830303), (3, 8523250758, 8523250792), (3, 8910671247, 8910671281), (3, 5811307335, 5811307369), (3, 6973568802, 6973568836), (3, 8135830269, 8135830303), (3, 9298091736, 9298091770), (3, 6973568802, 6973568836), (5, 6103515625, 6103515659), (7, 5931980229, 5931980263), (11, 7073843073, 7073843107), (11, 9431790764, 9431790798), (13, 5710115047, 5710115081), (13, 6525845768, 6525845802), (13, 7341576489, 7341576523), (13, 8157307210, 8157307244), (13, 8973037931, 8973037965), (13, 9788768652, 9788768686), (17, 5334402749, 5334402783), (17, 5744741422, 5744741456), (17, 6155080095, 6155080129), (17, 6565418768, 6565418802), (17, 6975757441, 6975757475), (17, 7386096114, 7386096148), (17, 7796434787, 7796434821), (17, 8206773460, 8206773494), (17, 8617112133, 8617112167), (17, 9027450806, 9027450840), (17, 9437789479, 9437789513), (17, 6975757441, 6975757475), (19, 5363230434, 5363230468), (19, 6257102173, 6257102207), (19, 7150973912, 7150973946), (19, 8044845651, 8044845685), (19, 8938717390, 8938717424), (19, 9832589129, 9832589163), (23, 6809650894, 6809650928), (29, 5353409889, 5353409923), (29, 5948233210, 5948233244), (29, 6543056531, 6543056565), (29, 7137879852, 7137879886), (29, 7732703173, 7732703207), (29, 8327526494, 8327526528), (29, 8922349815, 8922349849), (29, 9517173136, 9517173170), (31, 5325022086, 5325022120), (31, 6212525767, 6212525801), (31, 7100029448, 7100029482), (31, 7987533129, 7987533163), (31, 8875036810, 8875036844), (31, 9762540491, 9762540525)]

def row035_layer022_block000 : List ColouredInterval :=
  [(2, 5100273664, 5100273698), (2, 5368709120, 5368709154), (2, 5637144576, 5637144610), (2, 5905580032, 5905580066), (2, 6174015488, 6174015522), (2, 5368709120, 5368709154), (2, 5905580032, 5905580066), (2, 6442450944, 6442450978), (2, 6979321856, 6979321890), (2, 7516192768, 7516192802), (2, 8053063680, 8053063714), (2, 8589934592, 8589934626), (2, 9126805504, 9126805538), (2, 9663676416, 9663676450), (2, 5368709120, 5368709154), (2, 6442450944, 6442450978)]

def row035_layer022_block001 : List ColouredInterval :=
  [(2, 7516192768, 7516192802), (2, 8589934592, 8589934626), (2, 9663676416, 9663676450), (2, 6442450944, 6442450978), (2, 8589934592, 8589934626), (2, 8589934592, 8589934626), (2, 8589934592, 8589934626), (3, 5036466357, 5036466391), (3, 5423886846, 5423886880), (3, 5811307335, 5811307369), (3, 6198727824, 6198727858), (3, 6586148313, 6586148347), (3, 6973568802, 6973568836), (3, 7360989291, 7360989325), (3, 7748409780, 7748409814), (3, 8135830269, 8135830303)]

def row035_layer022_block002 : List ColouredInterval :=
  [(3, 8523250758, 8523250792), (3, 8910671247, 8910671281), (3, 5811307335, 5811307369), (3, 6973568802, 6973568836), (3, 8135830269, 8135830303), (3, 9298091736, 9298091770), (3, 6973568802, 6973568836), (5, 6103515625, 6103515659), (7, 5931980229, 5931980263), (11, 7073843073, 7073843107), (11, 9431790764, 9431790798), (13, 5710115047, 5710115081), (13, 6525845768, 6525845802), (13, 7341576489, 7341576523), (13, 8157307210, 8157307244), (13, 8973037931, 8973037965)]

def row035_layer022_block003 : List ColouredInterval :=
  [(13, 9788768652, 9788768686), (17, 5334402749, 5334402783), (17, 5744741422, 5744741456), (17, 6155080095, 6155080129), (17, 6565418768, 6565418802), (17, 6975757441, 6975757475), (17, 7386096114, 7386096148), (17, 7796434787, 7796434821), (17, 8206773460, 8206773494), (17, 8617112133, 8617112167), (17, 9027450806, 9027450840), (17, 9437789479, 9437789513), (17, 6975757441, 6975757475), (19, 5363230434, 5363230468), (19, 6257102173, 6257102207), (19, 7150973912, 7150973946)]

def row035_layer022_block004 : List ColouredInterval :=
  [(19, 8044845651, 8044845685), (19, 8938717390, 8938717424), (19, 9832589129, 9832589163), (23, 6809650894, 6809650928), (29, 5353409889, 5353409923), (29, 5948233210, 5948233244), (29, 6543056531, 6543056565), (29, 7137879852, 7137879886), (29, 7732703173, 7732703207), (29, 8327526494, 8327526528), (29, 8922349815, 8922349849), (29, 9517173136, 9517173170), (31, 5325022086, 5325022120), (31, 6212525767, 6212525801), (31, 7100029448, 7100029482), (31, 7987533129, 7987533163)]

def row035_layer022_block005 : List ColouredInterval :=
  [(31, 8875036810, 8875036844), (31, 9762540491, 9762540525)]

def row035_layer022_chunks : List (List ColouredInterval) :=
  [row035_layer022_block000, row035_layer022_block001, row035_layer022_block002, row035_layer022_block003, row035_layer022_block004, row035_layer022_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_arithmetic : LayerArithmeticValid row035.height { lower := 4991221760, upper := 9982443520, M := 23 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_enumeration :
    activePowerIntervalList 35 23 4991221760 9982443520 = row035_layer022_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row035_layer022_pairs000 :
    row035_layer022_block000.all (fun I => row035_layer022_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row035_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row035_layer022_pairs000
