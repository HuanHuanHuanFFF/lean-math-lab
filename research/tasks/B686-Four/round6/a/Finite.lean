import research.tasks.«B686-Four».round6.a.Finite0
import research.tasks.«B686-Four».round6.a.Finite1
import research.tasks.«B686-Four».round6.a.Finite2
import research.tasks.«B686-Four».round6.a.Finite3
import research.tasks.«B686-Four».round6.a.Finite4
import research.tasks.«B686-Four».round6.a.Finite5
import research.tasks.«B686-Four».round6.a.Finite6
import research.tasks.«B686-Four».round6.a.Finite7
namespace B686Round6A

theorem not_four_below_50000 (n d : ℕ) (hd : 5 ≤ d) (hu : d < 50000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases h0 : d < 20000
  · exact B686Round5Finite.not_four_below_20000 n d hd h0
  by_cases h1 : d < 24000
  · exact not_four_block0 n d (by omega) h1
  by_cases h2 : d < 28000
  · exact not_four_block1 n d (by omega) h2
  by_cases h3 : d < 32000
  · exact not_four_block2 n d (by omega) h3
  by_cases h4 : d < 36000
  · exact not_four_block3 n d (by omega) h4
  by_cases h5 : d < 40000
  · exact not_four_block4 n d (by omega) h5
  by_cases h6 : d < 44000
  · exact not_four_block5 n d (by omega) h6
  by_cases h7 : d < 48000
  · exact not_four_block6 n d (by omega) h7
  exact not_four_block7 n d (by omega) hu

/-- info: 'B686Round6A.not_four_below_50000' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_below_50000
end B686Round6A
