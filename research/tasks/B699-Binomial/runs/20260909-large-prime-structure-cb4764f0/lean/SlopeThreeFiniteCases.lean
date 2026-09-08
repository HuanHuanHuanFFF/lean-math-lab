import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- The exact 36 residual triples of the independently checked slope-three
finite reduction. This verifies the residual witnesses, not the entire
EEES/Dusart/reduction/prime-cover chain.
Input compression.json SHA256: 13683efbc44408028ed0cf2782f339b44b9f792c61fee0b1cb1764f0596c9a81 -/
theorem slope_three_residual_cases :
    Common 123 9 41 ∧
    Common 126 9 42 ∧
    Common 123 10 41 ∧
    Common 126 10 42 ∧
    Common 210 10 70 ∧
    Common 222 10 74 ∧
    Common 303 10 101 ∧
    Common 306 10 102 ∧
    Common 327 10 109 ∧
    Common 330 10 110 ∧
    Common 477 10 159 ∧
    Common 519 10 173 ∧
    Common 534 10 178 ∧
    Common 537 10 179 ∧
    Common 540 10 180 ∧
    Common 126 11 42 ∧
    Common 126 12 42 ∧
    Common 306 12 102 ∧
    Common 330 12 110 ∧
    Common 126 13 42 ∧
    Common 537 14 179 ∧
    Common 540 14 180 ∧
    Common 540 16 180 ∧
    Common 1353 25 451 ∧
    Common 1356 25 452 ∧
    Common 1359 25 453 ∧
    Common 1353 26 451 ∧
    Common 1356 26 452 ∧
    Common 1359 26 453 ∧
    Common 1356 27 452 ∧
    Common 1359 27 453 ∧
    Common 1356 28 452 ∧
    Common 1359 28 453 ∧
    Common 1356 29 452 ∧
    Common 1359 29 453 ∧
    Common 1359 32 453 := by
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 11) (ei := 2) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 17) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 13) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 13) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 17) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 19) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 19) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 19) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 59) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 59) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 31) (ei := 1) (ej := 2)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)
  · exact common_of_mod_certificate (p := 59) (ei := 1) (ej := 1)
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide) (by decide)

end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.slope_three_residual_cases
