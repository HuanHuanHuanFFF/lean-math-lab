import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row101B16.Block001
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_arithmetic : LayerArithmeticValid row101.height { lower := 20200, upper := 40400, M := 15 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_enumeration :
    activePowerIntervalList 101 15 20200 40400 = row101_layer001_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs000 :
    row101_layer001_block000.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs000

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs001 :
    row101_layer001_block001.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs001

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs002 :
    row101_layer001_block002.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs002

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs003 :
    row101_layer001_block003.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs004 :
    row101_layer001_block004.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs005 :
    row101_layer001_block005.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs006 :
    row101_layer001_block006.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs006

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_pairs007 :
    row101_layer001_block007.all (fun I => row101_layer001_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs007

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_chunks_eq : row101_layer001_chunks.flatten = row101_layer001_intervals := by
  rfl

theorem row101_layer001_pairs : pairCoverCheck row101_layer001_intervals row101_bounds = true := by
  apply pairCoverCheck_of_chunks row101_layer001_chunks_eq
  intro block hblock
  simp only [row101_layer001_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact row101_layer001_pairs000
  · exact row101_layer001_pairs001
  · exact row101_layer001_pairs002
  · exact row101_layer001_pairs003
  · exact row101_layer001_pairs004
  · exact row101_layer001_pairs005
  · exact row101_layer001_pairs006
  · exact row101_layer001_pairs007

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer001_checked :
    coverLayerCheck row101.height row101.goods { lower := 20200, upper := 40400, M := 15 } = true := by
  exact coverLayerCheck_of_parts row101_layer001_arithmetic row101_layer001_enumeration row101_bounds_eq row101_layer001_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer001_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row101_layer002_intervals : List ColouredInterval :=
  [(2, 40960, 41060), (2, 45056, 45156), (2, 49152, 49252), (2, 40960, 41060), (2, 49152, 49252), (2, 57344, 57444), (2, 65536, 65636), (2, 73728, 73828), (2, 49152, 49252), (2, 65536, 65636), (2, 65536, 65636), (2, 65536, 65636), (3, 45927, 46027), (3, 52488, 52588), (3, 59049, 59149), (3, 65610, 65710), (3, 72171, 72271), (3, 78732, 78832), (3, 59049, 59149), (3, 78732, 78832), (3, 59049, 59149), (5, 46875, 46975), (5, 62500, 62600), (5, 78125, 78225), (5, 78125, 78225), (7, 50421, 50521), (7, 67228, 67328), (11, 43923, 44023), (11, 58564, 58664), (11, 73205, 73305), (13, 57122, 57222), (17, 44217, 44317), (17, 49130, 49230), (17, 54043, 54143), (17, 58956, 59056), (19, 41154, 41254), (19, 48013, 48113), (19, 54872, 54972), (19, 61731, 61831), (19, 68590, 68690), (19, 75449, 75549), (23, 48668, 48768), (23, 60835, 60935), (23, 73002, 73102), (29, 48778, 48878), (29, 73167, 73267), (31, 59582, 59682), (37, 50653, 50753), (41, 68921, 69021), (43, 79507, 79607), (59, 41772, 41872), (61, 40931, 41031), (61, 44652, 44752), (67, 40401, 40501), (67, 44890, 44990), (67, 49379, 49479), (67, 53868, 53968), (71, 40400, 40428), (71, 45369, 45469), (71, 50410, 50510), (71, 55451, 55551), (71, 60492, 60592), (73, 42632, 42732), (73, 47961, 48061), (73, 53290, 53390), (73, 58619, 58719), (73, 63948, 64048), (79, 43687, 43787), (79, 49928, 50028), (79, 56169, 56269), (79, 62410, 62510), (79, 68651, 68751), (79, 74892, 74992), (83, 41334, 41434), (83, 48223, 48323), (83, 55112, 55212), (83, 62001, 62101), (83, 68890, 68990), (83, 75779, 75879), (89, 47526, 47626), (89, 55447, 55547), (89, 63368, 63468), (89, 71289, 71389), (89, 79210, 79310), (97, 47045, 47145), (97, 56454, 56554), (97, 65863, 65963), (97, 75272, 75372)]

def row101_layer002_block000 : List ColouredInterval :=
  [(2, 40960, 41060), (2, 45056, 45156), (2, 49152, 49252), (2, 40960, 41060), (2, 49152, 49252), (2, 57344, 57444), (2, 65536, 65636), (2, 73728, 73828), (2, 49152, 49252), (2, 65536, 65636), (2, 65536, 65636), (2, 65536, 65636), (3, 45927, 46027), (3, 52488, 52588), (3, 59049, 59149), (3, 65610, 65710)]

def row101_layer002_block001 : List ColouredInterval :=
  [(3, 72171, 72271), (3, 78732, 78832), (3, 59049, 59149), (3, 78732, 78832), (3, 59049, 59149), (5, 46875, 46975), (5, 62500, 62600), (5, 78125, 78225), (5, 78125, 78225), (7, 50421, 50521), (7, 67228, 67328), (11, 43923, 44023), (11, 58564, 58664), (11, 73205, 73305), (13, 57122, 57222), (17, 44217, 44317)]

def row101_layer002_block002 : List ColouredInterval :=
  [(17, 49130, 49230), (17, 54043, 54143), (17, 58956, 59056), (19, 41154, 41254), (19, 48013, 48113), (19, 54872, 54972), (19, 61731, 61831), (19, 68590, 68690), (19, 75449, 75549), (23, 48668, 48768), (23, 60835, 60935), (23, 73002, 73102), (29, 48778, 48878), (29, 73167, 73267), (31, 59582, 59682), (37, 50653, 50753)]

def row101_layer002_block003 : List ColouredInterval :=
  [(41, 68921, 69021), (43, 79507, 79607), (59, 41772, 41872), (61, 40931, 41031), (61, 44652, 44752), (67, 40401, 40501), (67, 44890, 44990), (67, 49379, 49479), (67, 53868, 53968), (71, 40400, 40428), (71, 45369, 45469), (71, 50410, 50510), (71, 55451, 55551), (71, 60492, 60592), (73, 42632, 42732), (73, 47961, 48061)]

def row101_layer002_block004 : List ColouredInterval :=
  [(73, 53290, 53390), (73, 58619, 58719), (73, 63948, 64048), (79, 43687, 43787), (79, 49928, 50028), (79, 56169, 56269), (79, 62410, 62510), (79, 68651, 68751), (79, 74892, 74992), (83, 41334, 41434), (83, 48223, 48323), (83, 55112, 55212), (83, 62001, 62101), (83, 68890, 68990), (83, 75779, 75879), (89, 47526, 47626)]

def row101_layer002_block005 : List ColouredInterval :=
  [(89, 55447, 55547), (89, 63368, 63468), (89, 71289, 71389), (89, 79210, 79310), (97, 47045, 47145), (97, 56454, 56554), (97, 65863, 65963), (97, 75272, 75372)]

def row101_layer002_chunks : List (List ColouredInterval) :=
  [row101_layer002_block000, row101_layer002_block001, row101_layer002_block002, row101_layer002_block003, row101_layer002_block004, row101_layer002_block005]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_arithmetic : LayerArithmeticValid row101.height { lower := 40400, upper := 80800, M := 12 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_enumeration :
    activePowerIntervalList 101 12 40400 80800 = row101_layer002_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_enumeration

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row101_layer002_pairs000 :
    row101_layer002_block000.all (fun I => row101_layer002_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row101_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row101_layer002_pairs000
