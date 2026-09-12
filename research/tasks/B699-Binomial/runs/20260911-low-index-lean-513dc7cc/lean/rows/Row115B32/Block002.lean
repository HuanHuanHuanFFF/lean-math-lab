import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115B32.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row115B32.Block000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer001_pairs016 :
    row115_layer001_block016.all (fun I => row115_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer001_pairs016

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer001_chunks_eq : row115_layer001_chunks.flatten = row115_layer001_intervals := by
  rfl

theorem row115_layer001_pairs : pairCoverCheck row115_layer001_intervals row115_bounds = true := by
  apply pairCoverCheck_of_chunks row115_layer001_chunks_eq
  intro block hblock
  simp only [row115_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row115_layer001_pairs000
  · exact row115_layer001_pairs001
  · exact row115_layer001_pairs002
  · exact row115_layer001_pairs003
  · exact row115_layer001_pairs004
  · exact row115_layer001_pairs005
  · exact row115_layer001_pairs006
  · exact row115_layer001_pairs007
  · exact row115_layer001_pairs008
  · exact row115_layer001_pairs009
  · exact row115_layer001_pairs010
  · exact row115_layer001_pairs011
  · exact row115_layer001_pairs012
  · exact row115_layer001_pairs013
  · exact row115_layer001_pairs014
  · exact row115_layer001_pairs015
  · exact row115_layer001_pairs016

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer001_checked :
    coverLayerCheck row115.height row115.goods { lower := 26220, upper := 52440, M := 23 } = true := by
  exact coverLayerCheck_of_parts row115_layer001_arithmetic row115_layer001_enumeration row115_bounds_eq row115_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row115_layer002_intervals : List ColouredInterval :=
  [(2, 53248, 53362), (2, 57344, 57458), (2, 61440, 61554), (2, 65536, 65650), (2, 69632, 69746), (2, 73728, 73842), (2, 77824, 77938), (2, 81920, 82034), (2, 57344, 57458), (2, 65536, 65650), (2, 73728, 73842), (2, 81920, 82034), (2, 90112, 90226), (2, 98304, 98418), (2, 65536, 65650), (2, 81920, 82034), (2, 98304, 98418), (2, 65536, 65650), (2, 98304, 98418), (2, 65536, 65650), (3, 52488, 52602), (3, 59049, 59163), (3, 65610, 65724), (3, 72171, 72285), (3, 78732, 78846), (3, 85293, 85407), (3, 91854, 91968), (3, 98415, 98529), (3, 59049, 59163), (3, 78732, 78846), (3, 98415, 98529), (3, 59049, 59163), (5, 62500, 62614), (5, 78125, 78239), (7, 67228, 67342), (7, 84035, 84149), (7, 100842, 100956), (11, 58564, 58678), (11, 73205, 73319), (11, 87846, 87960), (11, 102487, 102601), (13, 57122, 57236), (13, 85683, 85797), (17, 54043, 54157), (17, 58956, 59070), (17, 63869, 63983), (17, 68782, 68896), (17, 73695, 73809), (17, 78608, 78722), (17, 83521, 83635), (17, 88434, 88548), (17, 93347, 93461), (17, 98260, 98374), (17, 83521, 83635), (19, 54872, 54986), (19, 61731, 61845), (19, 68590, 68704), (19, 75449, 75563), (19, 82308, 82422), (19, 89167, 89281), (19, 96026, 96140), (19, 102885, 102999), (29, 73167, 73281), (29, 97556, 97670), (31, 59582, 59696), (31, 89373, 89487), (37, 101306, 101420), (41, 68921, 69035), (43, 79507, 79621), (47, 103823, 103937), (53, 53371, 53485), (53, 56180, 56294), (59, 55696, 55810), (59, 59177, 59291), (59, 62658, 62772), (59, 66139, 66253), (59, 69620, 69734), (61, 55815, 55929), (61, 59536, 59650), (61, 63257, 63371), (61, 66978, 67092), (61, 70699, 70813), (61, 74420, 74534), (67, 53868, 53982), (67, 58357, 58471), (67, 62846, 62960), (67, 67335, 67449), (67, 71824, 71938), (67, 76313, 76427), (67, 80802, 80916), (67, 85291, 85405), (67, 89780, 89894), (71, 55451, 55565), (71, 60492, 60606), (71, 65533, 65647), (71, 70574, 70688), (71, 75615, 75729), (71, 80656, 80770), (71, 85697, 85811), (71, 90738, 90852), (71, 95779, 95893), (71, 100820, 100934), (73, 53290, 53404), (73, 58619, 58733), (73, 63948, 64062), (73, 69277, 69391), (73, 74606, 74720), (73, 79935, 80049), (73, 85264, 85378), (73, 90593, 90707), (73, 95922, 96036), (73, 101251, 101365), (79, 56169, 56283), (79, 62410, 62524), (79, 68651, 68765), (79, 74892, 75006), (79, 81133, 81247), (79, 87374, 87488), (79, 93615, 93729), (79, 99856, 99970), (83, 55112, 55226), (83, 62001, 62115), (83, 68890, 69004), (83, 75779, 75893), (83, 82668, 82782), (83, 89557, 89671), (83, 96446, 96560), (83, 103335, 103449), (89, 55447, 55561), (89, 63368, 63482), (89, 71289, 71403), (89, 79210, 79324), (89, 87131, 87245), (89, 95052, 95166), (89, 102973, 103087), (97, 56454, 56568), (97, 65863, 65977), (97, 75272, 75386), (97, 84681, 84795), (97, 94090, 94204), (97, 103499, 103613), (101, 61206, 61320), (101, 71407, 71521), (101, 81608, 81722), (101, 91809, 91923), (101, 102010, 102124), (103, 53045, 53159), (103, 63654, 63768), (103, 74263, 74377), (103, 84872, 84986), (103, 95481, 95595), (107, 57245, 57359), (107, 68694, 68808), (107, 80143, 80257), (107, 91592, 91706), (107, 103041, 103155), (109, 59405, 59519), (109, 71286, 71400), (109, 83167, 83281), (109, 95048, 95162), (113, 63845, 63959), (113, 76614, 76728), (113, 89383, 89497), (113, 102152, 102266)]

def row115_layer002_block000 : List ColouredInterval :=
  [(2, 53248, 53362), (2, 57344, 57458), (2, 61440, 61554), (2, 65536, 65650), (2, 69632, 69746), (2, 73728, 73842), (2, 77824, 77938), (2, 81920, 82034), (2, 57344, 57458), (2, 65536, 65650), (2, 73728, 73842), (2, 81920, 82034)]

def row115_layer002_block001 : List ColouredInterval :=
  [(2, 90112, 90226), (2, 98304, 98418), (2, 65536, 65650), (2, 81920, 82034), (2, 98304, 98418), (2, 65536, 65650), (2, 98304, 98418), (2, 65536, 65650), (3, 52488, 52602), (3, 59049, 59163), (3, 65610, 65724), (3, 72171, 72285)]

def row115_layer002_block002 : List ColouredInterval :=
  [(3, 78732, 78846), (3, 85293, 85407), (3, 91854, 91968), (3, 98415, 98529), (3, 59049, 59163), (3, 78732, 78846), (3, 98415, 98529), (3, 59049, 59163), (5, 62500, 62614), (5, 78125, 78239), (7, 67228, 67342), (7, 84035, 84149)]

def row115_layer002_block003 : List ColouredInterval :=
  [(7, 100842, 100956), (11, 58564, 58678), (11, 73205, 73319), (11, 87846, 87960), (11, 102487, 102601), (13, 57122, 57236), (13, 85683, 85797), (17, 54043, 54157), (17, 58956, 59070), (17, 63869, 63983), (17, 68782, 68896), (17, 73695, 73809)]

def row115_layer002_block004 : List ColouredInterval :=
  [(17, 78608, 78722), (17, 83521, 83635), (17, 88434, 88548), (17, 93347, 93461), (17, 98260, 98374), (17, 83521, 83635), (19, 54872, 54986), (19, 61731, 61845), (19, 68590, 68704), (19, 75449, 75563), (19, 82308, 82422), (19, 89167, 89281)]

def row115_layer002_block005 : List ColouredInterval :=
  [(19, 96026, 96140), (19, 102885, 102999), (29, 73167, 73281), (29, 97556, 97670), (31, 59582, 59696), (31, 89373, 89487), (37, 101306, 101420), (41, 68921, 69035), (43, 79507, 79621), (47, 103823, 103937), (53, 53371, 53485), (53, 56180, 56294)]

def row115_layer002_block006 : List ColouredInterval :=
  [(59, 55696, 55810), (59, 59177, 59291), (59, 62658, 62772), (59, 66139, 66253), (59, 69620, 69734), (61, 55815, 55929), (61, 59536, 59650), (61, 63257, 63371), (61, 66978, 67092), (61, 70699, 70813), (61, 74420, 74534), (67, 53868, 53982)]

def row115_layer002_block007 : List ColouredInterval :=
  [(67, 58357, 58471), (67, 62846, 62960), (67, 67335, 67449), (67, 71824, 71938), (67, 76313, 76427), (67, 80802, 80916), (67, 85291, 85405), (67, 89780, 89894), (71, 55451, 55565), (71, 60492, 60606), (71, 65533, 65647), (71, 70574, 70688)]

def row115_layer002_block008 : List ColouredInterval :=
  [(71, 75615, 75729), (71, 80656, 80770), (71, 85697, 85811), (71, 90738, 90852), (71, 95779, 95893), (71, 100820, 100934), (73, 53290, 53404), (73, 58619, 58733), (73, 63948, 64062), (73, 69277, 69391), (73, 74606, 74720), (73, 79935, 80049)]

def row115_layer002_block009 : List ColouredInterval :=
  [(73, 85264, 85378), (73, 90593, 90707), (73, 95922, 96036), (73, 101251, 101365), (79, 56169, 56283), (79, 62410, 62524), (79, 68651, 68765), (79, 74892, 75006), (79, 81133, 81247), (79, 87374, 87488), (79, 93615, 93729), (79, 99856, 99970)]

def row115_layer002_block010 : List ColouredInterval :=
  [(83, 55112, 55226), (83, 62001, 62115), (83, 68890, 69004), (83, 75779, 75893), (83, 82668, 82782), (83, 89557, 89671), (83, 96446, 96560), (83, 103335, 103449), (89, 55447, 55561), (89, 63368, 63482), (89, 71289, 71403), (89, 79210, 79324)]

def row115_layer002_block011 : List ColouredInterval :=
  [(89, 87131, 87245), (89, 95052, 95166), (89, 102973, 103087), (97, 56454, 56568), (97, 65863, 65977), (97, 75272, 75386), (97, 84681, 84795), (97, 94090, 94204), (97, 103499, 103613), (101, 61206, 61320), (101, 71407, 71521), (101, 81608, 81722)]

def row115_layer002_block012 : List ColouredInterval :=
  [(101, 91809, 91923), (101, 102010, 102124), (103, 53045, 53159), (103, 63654, 63768), (103, 74263, 74377), (103, 84872, 84986), (103, 95481, 95595), (107, 57245, 57359), (107, 68694, 68808), (107, 80143, 80257), (107, 91592, 91706), (107, 103041, 103155)]

def row115_layer002_block013 : List ColouredInterval :=
  [(109, 59405, 59519), (109, 71286, 71400), (109, 83167, 83281), (109, 95048, 95162), (113, 63845, 63959), (113, 76614, 76728), (113, 89383, 89497), (113, 102152, 102266)]

def row115_layer002_chunks : List (List ColouredInterval) :=
  [row115_layer002_block000, row115_layer002_block001, row115_layer002_block002, row115_layer002_block003, row115_layer002_block004, row115_layer002_block005, row115_layer002_block006, row115_layer002_block007, row115_layer002_block008, row115_layer002_block009, row115_layer002_block010, row115_layer002_block011, row115_layer002_block012, row115_layer002_block013]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_arithmetic : LayerArithmeticValid row115.height { lower := 52440, upper := 104880, M := 20 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_enumeration :
    activePowerIntervalList 115 20 52440 104880 = row115_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs000 :
    row115_layer002_block000.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs001 :
    row115_layer002_block001.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs002 :
    row115_layer002_block002.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs003 :
    row115_layer002_block003.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs004 :
    row115_layer002_block004.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs005 :
    row115_layer002_block005.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs006 :
    row115_layer002_block006.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs007 :
    row115_layer002_block007.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs008 :
    row115_layer002_block008.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs008

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs009 :
    row115_layer002_block009.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs009

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs010 :
    row115_layer002_block010.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs010

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs011 :
    row115_layer002_block011.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs011

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs012 :
    row115_layer002_block012.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs012

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_pairs013 :
    row115_layer002_block013.all (fun I => row115_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs013

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_chunks_eq : row115_layer002_chunks.flatten = row115_layer002_intervals := by
  rfl

theorem row115_layer002_pairs : pairCoverCheck row115_layer002_intervals row115_bounds = true := by
  apply pairCoverCheck_of_chunks row115_layer002_chunks_eq
  intro block hblock
  simp only [row115_layer002_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row115_layer002_pairs000
  · exact row115_layer002_pairs001
  · exact row115_layer002_pairs002
  · exact row115_layer002_pairs003
  · exact row115_layer002_pairs004
  · exact row115_layer002_pairs005
  · exact row115_layer002_pairs006
  · exact row115_layer002_pairs007
  · exact row115_layer002_pairs008
  · exact row115_layer002_pairs009
  · exact row115_layer002_pairs010
  · exact row115_layer002_pairs011
  · exact row115_layer002_pairs012
  · exact row115_layer002_pairs013

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer002_checked :
    coverLayerCheck row115.height row115.goods { lower := 52440, upper := 104880, M := 20 } = true := by
  exact coverLayerCheck_of_parts row115_layer002_arithmetic row115_layer002_enumeration row115_bounds_eq row115_layer002_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer002_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row115_layer003_intervals : List ColouredInterval :=
  [(2, 106496, 106610), (2, 114688, 114802), (2, 122880, 122994), (2, 131072, 131186), (2, 114688, 114802), (2, 131072, 131186), (2, 147456, 147570), (2, 163840, 163954), (2, 180224, 180338), (2, 196608, 196722), (2, 131072, 131186), (2, 163840, 163954), (2, 196608, 196722), (2, 131072, 131186), (2, 196608, 196722), (2, 131072, 131186), (3, 104976, 105090), (3, 118098, 118212), (3, 137781, 137895), (3, 157464, 157578), (3, 177147, 177261), (3, 196830, 196944), (3, 118098, 118212), (3, 177147, 177261), (3, 177147, 177261), (5, 156250, 156364), (7, 117649, 117763), (7, 134456, 134570), (7, 151263, 151377), (7, 168070, 168184), (7, 184877, 184991), (7, 201684, 201798), (7, 117649, 117763), (11, 117128, 117242), (11, 131769, 131883), (11, 146410, 146524), (11, 161051, 161165), (11, 175692, 175806), (11, 190333, 190447), (11, 204974, 205088), (11, 161051, 161165), (13, 114244, 114358), (13, 142805, 142919), (13, 171366, 171480), (13, 199927, 200041), (17, 167042, 167156), (19, 109744, 109858), (19, 130321, 130435), (29, 121945, 122059), (29, 146334, 146448), (29, 170723, 170837), (29, 195112, 195226), (31, 119164, 119278), (31, 148955, 149069), (31, 178746, 178860), (31, 208537, 208651), (37, 151959, 152073), (37, 202612, 202726), (41, 137842, 137956), (41, 206763, 206877), (43, 159014, 159128), (47, 207646, 207760), (53, 148877, 148991), (59, 205379, 205493), (83, 110224, 110338), (89, 110894, 111008), (89, 118815, 118929), (89, 126736, 126850), (97, 112908, 113022), (97, 122317, 122431), (97, 131726, 131840), (97, 141135, 141249), (97, 150544, 150658), (101, 112211, 112325), (101, 122412, 122526), (101, 132613, 132727), (101, 142814, 142928), (101, 153015, 153129), (101, 163216, 163330), (103, 106090, 106204), (103, 116699, 116813), (103, 127308, 127422), (103, 137917, 138031), (103, 148526, 148640), (103, 159135, 159249), (103, 169744, 169858), (107, 114490, 114604), (107, 125939, 126053), (107, 137388, 137502), (107, 148837, 148951), (107, 160286, 160400), (107, 171735, 171849), (107, 183184, 183298), (109, 106929, 107043), (109, 118810, 118924), (109, 130691, 130805), (109, 142572, 142686), (109, 154453, 154567), (109, 166334, 166448), (109, 178215, 178329), (109, 190096, 190210), (113, 114921, 115035), (113, 127690, 127804), (113, 140459, 140573), (113, 153228, 153342), (113, 165997, 166111), (113, 178766, 178880), (113, 191535, 191649), (113, 204304, 204418)]

def row115_layer003_block000 : List ColouredInterval :=
  [(2, 106496, 106610), (2, 114688, 114802), (2, 122880, 122994), (2, 131072, 131186), (2, 114688, 114802), (2, 131072, 131186), (2, 147456, 147570), (2, 163840, 163954), (2, 180224, 180338), (2, 196608, 196722), (2, 131072, 131186), (2, 163840, 163954), (2, 196608, 196722), (2, 131072, 131186), (2, 196608, 196722), (2, 131072, 131186)]

def row115_layer003_block001 : List ColouredInterval :=
  [(3, 104976, 105090), (3, 118098, 118212), (3, 137781, 137895), (3, 157464, 157578), (3, 177147, 177261), (3, 196830, 196944), (3, 118098, 118212), (3, 177147, 177261), (3, 177147, 177261), (5, 156250, 156364), (7, 117649, 117763), (7, 134456, 134570), (7, 151263, 151377), (7, 168070, 168184), (7, 184877, 184991), (7, 201684, 201798)]

def row115_layer003_block002 : List ColouredInterval :=
  [(7, 117649, 117763), (11, 117128, 117242), (11, 131769, 131883), (11, 146410, 146524), (11, 161051, 161165), (11, 175692, 175806), (11, 190333, 190447), (11, 204974, 205088), (11, 161051, 161165), (13, 114244, 114358), (13, 142805, 142919), (13, 171366, 171480), (13, 199927, 200041), (17, 167042, 167156), (19, 109744, 109858), (19, 130321, 130435)]

def row115_layer003_block003 : List ColouredInterval :=
  [(29, 121945, 122059), (29, 146334, 146448), (29, 170723, 170837), (29, 195112, 195226), (31, 119164, 119278), (31, 148955, 149069), (31, 178746, 178860), (31, 208537, 208651), (37, 151959, 152073), (37, 202612, 202726), (41, 137842, 137956), (41, 206763, 206877), (43, 159014, 159128), (47, 207646, 207760), (53, 148877, 148991), (59, 205379, 205493)]

def row115_layer003_block004 : List ColouredInterval :=
  [(83, 110224, 110338), (89, 110894, 111008), (89, 118815, 118929), (89, 126736, 126850), (97, 112908, 113022), (97, 122317, 122431), (97, 131726, 131840), (97, 141135, 141249), (97, 150544, 150658), (101, 112211, 112325), (101, 122412, 122526), (101, 132613, 132727), (101, 142814, 142928), (101, 153015, 153129), (101, 163216, 163330), (103, 106090, 106204)]

def row115_layer003_block005 : List ColouredInterval :=
  [(103, 116699, 116813), (103, 127308, 127422), (103, 137917, 138031), (103, 148526, 148640), (103, 159135, 159249), (103, 169744, 169858), (107, 114490, 114604), (107, 125939, 126053), (107, 137388, 137502), (107, 148837, 148951), (107, 160286, 160400), (107, 171735, 171849), (107, 183184, 183298), (109, 106929, 107043), (109, 118810, 118924), (109, 130691, 130805)]

def row115_layer003_block006 : List ColouredInterval :=
  [(109, 142572, 142686), (109, 154453, 154567), (109, 166334, 166448), (109, 178215, 178329), (109, 190096, 190210), (113, 114921, 115035), (113, 127690, 127804), (113, 140459, 140573), (113, 153228, 153342), (113, 165997, 166111), (113, 178766, 178880), (113, 191535, 191649), (113, 204304, 204418)]

def row115_layer003_chunks : List (List ColouredInterval) :=
  [row115_layer003_block000, row115_layer003_block001, row115_layer003_block002, row115_layer003_block003, row115_layer003_block004, row115_layer003_block005, row115_layer003_block006]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_arithmetic : LayerArithmeticValid row115.height { lower := 104880, upper := 209760, M := 16 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_enumeration :
    activePowerIntervalList 115 16 104880 209760 = row115_layer003_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_pairs000 :
    row115_layer003_block000.all (fun I => row115_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_pairs001 :
    row115_layer003_block001.all (fun I => row115_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_pairs002 :
    row115_layer003_block002.all (fun I => row115_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_pairs003 :
    row115_layer003_block003.all (fun I => row115_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_pairs004 :
    row115_layer003_block004.all (fun I => row115_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_pairs005 :
    row115_layer003_block005.all (fun I => row115_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row115_layer003_pairs006 :
    row115_layer003_block006.all (fun I => row115_layer003_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row115_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row115_layer003_pairs006
