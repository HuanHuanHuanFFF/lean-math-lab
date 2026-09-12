import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.WitnessBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 5000000
set_option exponentiation.threshold 1000000

namespace B699LowIndex.TerminalNumeric.LargeStress
open B699LowIndex

def g0 : GoodSegment := ⟨2899972, 2899972, .largeDivisor 8122876970709244370399987224724464056386131100190410893⟩
theorem check_0 : goodSegmentCheck 11 3 7 g0 = true := by
  decide +kernel

#print axioms B699LowIndex.TerminalNumeric.LargeStress.check_0

def g1 : GoodSegment := ⟨2703132, 2703132, .largeDivisor 17198682785635699681936501720602786550568978454783155197⟩
theorem check_1 : goodSegmentCheck 11 3 7 g1 = true := by
  decide +kernel

#print axioms B699LowIndex.TerminalNumeric.LargeStress.check_1

def g2 : GoodSegment := ⟨2899971, 2899971, .largeDivisor 32491384637996437225779445252849588215915989714989364261⟩
theorem check_2 : goodSegmentCheck 11 3 7 g2 = true := by
  decide +kernel

#print axioms B699LowIndex.TerminalNumeric.LargeStress.check_2

def g3 : GoodSegment := ⟨2703133, 2703133, .largeDivisor 34397505546833465739490901043695528516137395528143646241⟩
theorem check_3 : goodSegmentCheck 11 3 7 g3 = true := by
  decide +kernel

#print axioms B699LowIndex.TerminalNumeric.LargeStress.check_3

end B699LowIndex.TerminalNumeric.LargeStress
