import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block036
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.PairChunks
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row048B8.Block003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer020_pairs003 :
    row048_layer020_block003.all (fun I => row048_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer020_pairs003

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer020_pairs004 :
    row048_layer020_block004.all (fun I => row048_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer020_pairs004

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer020_pairs005 :
    row048_layer020_block005.all (fun I => row048_layer020_intervals.all (fun J =>
      if I.1 = J.1 then true else coverCheck (max I.2.1 J.2.1) (min I.2.2 J.2.2) row048_bounds)) = true := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer020_pairs005

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer020_chunks_eq : row048_layer020_chunks.flatten = row048_layer020_intervals := by
  rfl

theorem row048_layer020_pairs : pairCoverCheck row048_layer020_intervals row048_bounds = true := by
  apply pairCoverCheck_of_chunks row048_layer020_chunks_eq
  intro block hblock
  simp only [row048_layer020_chunks, List.mem_cons, List.mem_nil_iff, or_false] at hblock
  rcases hblock with rfl | rfl | rfl | rfl | rfl | rfl
  · exact row048_layer020_pairs000
  · exact row048_layer020_pairs001
  · exact row048_layer020_pairs002
  · exact row048_layer020_pairs003
  · exact row048_layer020_pairs004
  · exact row048_layer020_pairs005

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer020_chunks_eq
#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer020_pairs

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer020_checked :
    coverLayerCheck row048.height row048.goods { lower := 2365587456, upper := 4731174912, M := 23 } = true := by
  exact coverLayerCheck_of_parts row048_layer020_arithmetic row048_layer020_enumeration row048_bounds_eq row048_layer020_pairs

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer020_checked

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

def row048_layer021_intervals : List ColouredInterval :=
  [(2, 8589934592, 8589934639), (3, 5811307335, 5811307382), (3, 6973568802, 6973568849), (3, 8135830269, 8135830316), (3, 6973568802, 6973568849), (5, 4882812500, 4882812547), (5, 5126953125, 5126953172), (5, 5371093750, 5371093797), (5, 4882812500, 4882812547), (5, 6103515625, 6103515672), (5, 7324218750, 7324218797), (5, 8544921875, 8544921922), (5, 6103515625, 6103515672), (7, 4802079233, 4802079280), (7, 5084554482, 5084554529), (7, 5367029731, 5367029778), (7, 5649504980, 5649505027), (7, 5931980229, 5931980276), (7, 6214455478, 6214455525), (7, 5931980229, 5931980276), (7, 7909306972, 7909307019), (11, 7073843073, 7073843120), (11, 9431790764, 9431790811), (13, 4894384326, 4894384373), (13, 5710115047, 5710115094), (13, 6525845768, 6525845815), (13, 7341576489, 7341576536), (13, 8157307210, 8157307257), (13, 8973037931, 8973037978), (17, 4924064076, 4924064123), (17, 5334402749, 5334402796), (17, 5744741422, 5744741469), (17, 6155080095, 6155080142), (17, 6565418768, 6565418815), (17, 6975757441, 6975757488), (17, 7386096114, 7386096161), (17, 7796434787, 7796434834), (17, 8206773460, 8206773507), (17, 8617112133, 8617112180), (17, 9027450806, 9027450853), (17, 6975757441, 6975757488), (19, 5363230434, 5363230481), (19, 6257102173, 6257102220), (19, 7150973912, 7150973959), (19, 8044845651, 8044845698), (19, 8938717390, 8938717437), (23, 6809650894, 6809650941), (29, 4758586568, 4758586615), (29, 5353409889, 5353409936), (29, 5948233210, 5948233257), (29, 6543056531, 6543056578), (29, 7137879852, 7137879899), (29, 7732703173, 7732703220), (29, 8327526494, 8327526541), (29, 8922349815, 8922349862), (31, 5325022086, 5325022133), (31, 6212525767, 6212525814), (31, 7100029448, 7100029495), (31, 7987533129, 7987533176), (31, 8875036810, 8875036857), (37, 5131452818, 5131452865), (37, 7697179227, 7697179274), (41, 4750104241, 4750104288), (43, 6321363049, 6321363096), (47, 4816245147, 4816245194), (47, 5045590154, 5045590201)]

def row048_layer021_block000 : List ColouredInterval :=
  [(2, 8589934592, 8589934639), (3, 5811307335, 5811307382), (3, 6973568802, 6973568849), (3, 8135830269, 8135830316), (3, 6973568802, 6973568849), (5, 4882812500, 4882812547), (5, 5126953125, 5126953172), (5, 5371093750, 5371093797), (5, 4882812500, 4882812547), (5, 6103515625, 6103515672), (5, 7324218750, 7324218797), (5, 8544921875, 8544921922), (5, 6103515625, 6103515672), (7, 4802079233, 4802079280), (7, 5084554482, 5084554529), (7, 5367029731, 5367029778)]

def row048_layer021_block001 : List ColouredInterval :=
  [(7, 5649504980, 5649505027), (7, 5931980229, 5931980276), (7, 6214455478, 6214455525), (7, 5931980229, 5931980276), (7, 7909306972, 7909307019), (11, 7073843073, 7073843120), (11, 9431790764, 9431790811), (13, 4894384326, 4894384373), (13, 5710115047, 5710115094), (13, 6525845768, 6525845815), (13, 7341576489, 7341576536), (13, 8157307210, 8157307257), (13, 8973037931, 8973037978), (17, 4924064076, 4924064123), (17, 5334402749, 5334402796), (17, 5744741422, 5744741469)]

def row048_layer021_block002 : List ColouredInterval :=
  [(17, 6155080095, 6155080142), (17, 6565418768, 6565418815), (17, 6975757441, 6975757488), (17, 7386096114, 7386096161), (17, 7796434787, 7796434834), (17, 8206773460, 8206773507), (17, 8617112133, 8617112180), (17, 9027450806, 9027450853), (17, 6975757441, 6975757488), (19, 5363230434, 5363230481), (19, 6257102173, 6257102220), (19, 7150973912, 7150973959), (19, 8044845651, 8044845698), (19, 8938717390, 8938717437), (23, 6809650894, 6809650941), (29, 4758586568, 4758586615)]

def row048_layer021_block003 : List ColouredInterval :=
  [(29, 5353409889, 5353409936), (29, 5948233210, 5948233257), (29, 6543056531, 6543056578), (29, 7137879852, 7137879899), (29, 7732703173, 7732703220), (29, 8327526494, 8327526541), (29, 8922349815, 8922349862), (31, 5325022086, 5325022133), (31, 6212525767, 6212525814), (31, 7100029448, 7100029495), (31, 7987533129, 7987533176), (31, 8875036810, 8875036857), (37, 5131452818, 5131452865), (37, 7697179227, 7697179274), (41, 4750104241, 4750104288), (43, 6321363049, 6321363096)]

def row048_layer021_block004 : List ColouredInterval :=
  [(47, 4816245147, 4816245194), (47, 5045590154, 5045590201)]

def row048_layer021_chunks : List (List ColouredInterval) :=
  [row048_layer021_block000, row048_layer021_block001, row048_layer021_block002, row048_layer021_block003, row048_layer021_block004]


end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer021_intervals

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer021_arithmetic : LayerArithmeticValid row048.height { lower := 4731174912, upper := 9462349824, M := 22 } := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer021_arithmetic

set_option maxRecDepth 4096
set_option exponentiation.threshold 1000000

namespace B699LowIndex.LowIndexLean513dc7cc

theorem row048_layer021_enumeration :
    activePowerIntervalList 48 22 4731174912 9462349824 = row048_layer021_intervals := by
  decide +kernel

end B699LowIndex.LowIndexLean513dc7cc

#print axioms B699LowIndex.LowIndexLean513dc7cc.row048_layer021_enumeration
