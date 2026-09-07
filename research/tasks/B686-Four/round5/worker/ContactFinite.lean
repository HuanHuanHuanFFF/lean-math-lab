import research.tasks.«B686-Four».round5.worker.ContactFinite0
import research.tasks.«B686-Four».round5.worker.ContactFinite1
import research.tasks.«B686-Four».round5.worker.ContactFinite2
import research.tasks.«B686-Four».round5.worker.ContactFinite3
import research.tasks.«B686-Four».round5.worker.ContactFinite4
namespace B686Round5Finite

theorem not_four_below_20000 (n d : ℕ) (hd : 5 ≤ d) (hu : d < 20000) :
    (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + d + r)) ≠
      4 * (∏ r ∈ Finset.Icc 1 (5 : ℕ), (n + r)) := by
  by_cases h0 : d < 3000
  · exact B686Round4K5Finite.not_four_loss_finite n d hd h0
  by_cases h1 : d < 7000
  · exact not_four_block0 n d (by omega) h1
  by_cases h2 : d < 11000
  · exact not_four_block1 n d (by omega) h2
  by_cases h3 : d < 15000
  · exact not_four_block2 n d (by omega) h3
  by_cases h4 : d < 19000
  · exact not_four_block3 n d (by omega) h4
  exact not_four_block4 n d (by omega) hu

/-- info: 'B686Round5Finite.not_four_below_20000' depends on axioms: [propext, Classical.choice, Quot.sound] -/
#guard_msgs in
#print axioms not_four_below_20000
end B686Round5Finite
