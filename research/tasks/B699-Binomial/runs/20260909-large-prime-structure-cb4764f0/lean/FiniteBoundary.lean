import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace B699LargePrimeStructure

private structure CarryCertificate where
  n : ℕ
  i : ℕ
  j : ℕ
  p : ℕ
  ei : ℕ
  ej : ℕ
  deriving DecidableEq

/-- Generated candidate data; both its validity and exhaustive bounded coverage
are checked by kernel reduction below. No binomial oracle is trusted by Lean. -/
private def lowCertificates : List CarryCertificate := [
  ⟨16, 3, 4, 5, 1, 1⟩,
  ⟨16, 3, 5, 7, 1, 1⟩,
  ⟨16, 3, 6, 7, 1, 1⟩,
  ⟨22, 3, 6, 7, 1, 1⟩,
  ⟨22, 3, 7, 11, 1, 1⟩,
  ⟨22, 3, 8, 5, 1, 1⟩,
  ⟨22, 3, 9, 5, 1, 1⟩,
  ⟨26, 3, 8, 5, 1, 1⟩,
  ⟨26, 3, 9, 5, 1, 1⟩,
  ⟨26, 3, 10, 5, 1, 2⟩,
  ⟨26, 3, 11, 5, 1, 2⟩,
  ⟨27, 3, 8, 3, 2, 1⟩,
  ⟨27, 3, 9, 3, 2, 3⟩,
  ⟨27, 3, 10, 3, 2, 1⟩,
  ⟨27, 3, 11, 3, 2, 1⟩,
  ⟨27, 3, 12, 3, 2, 2⟩,
  ⟨27, 4, 7, 5, 1, 2⟩,
  ⟨27, 4, 8, 5, 1, 1⟩,
  ⟨27, 4, 9, 5, 1, 1⟩,
  ⟨27, 4, 10, 5, 1, 2⟩,
  ⟨27, 4, 11, 5, 1, 2⟩,
  ⟨28, 3, 9, 3, 2, 3⟩,
  ⟨28, 3, 10, 3, 2, 3⟩,
  ⟨28, 3, 11, 3, 2, 1⟩,
  ⟨28, 3, 12, 3, 2, 2⟩,
  ⟨28, 4, 7, 5, 1, 2⟩,
  ⟨28, 4, 8, 5, 1, 2⟩,
  ⟨28, 4, 9, 5, 1, 1⟩,
  ⟨28, 4, 10, 5, 1, 2⟩,
  ⟨28, 4, 11, 5, 1, 2⟩,
  ⟨28, 4, 12, 5, 1, 2⟩,
  ⟨28, 5, 6, 5, 2, 2⟩,
  ⟨28, 5, 7, 5, 2, 2⟩,
  ⟨28, 5, 8, 5, 2, 2⟩,
  ⟨28, 5, 9, 5, 2, 1⟩,
  ⟨28, 5, 10, 5, 2, 2⟩,
  ⟨28, 5, 11, 5, 2, 2⟩,
  ⟨34, 3, 12, 17, 1, 1⟩,
  ⟨34, 3, 13, 11, 1, 1⟩,
  ⟨34, 3, 14, 11, 1, 1⟩,
  ⟨34, 3, 15, 11, 1, 1⟩,
  ⟨35, 3, 12, 5, 1, 1⟩,
  ⟨35, 3, 13, 5, 1, 1⟩,
  ⟨35, 3, 14, 5, 1, 1⟩,
  ⟨35, 3, 15, 5, 1, 2⟩,
  ⟨35, 3, 16, 5, 1, 1⟩,
  ⟨35, 4, 11, 5, 1, 1⟩,
  ⟨35, 4, 12, 5, 1, 1⟩,
  ⟨35, 4, 13, 5, 1, 1⟩,
  ⟨35, 4, 14, 5, 1, 1⟩,
  ⟨35, 4, 15, 5, 1, 2⟩,
  ⟨36, 3, 13, 3, 2, 1⟩,
  ⟨36, 3, 14, 3, 2, 1⟩,
  ⟨36, 3, 15, 3, 2, 2⟩,
  ⟨36, 3, 16, 3, 2, 1⟩,
  ⟨36, 4, 11, 7, 1, 1⟩,
  ⟨36, 4, 12, 5, 1, 1⟩,
  ⟨36, 4, 13, 5, 1, 1⟩,
  ⟨36, 4, 14, 5, 1, 1⟩,
  ⟨36, 4, 15, 5, 1, 2⟩,
  ⟨36, 4, 16, 5, 1, 2⟩,
  ⟨36, 5, 9, 7, 1, 1⟩,
  ⟨36, 5, 10, 7, 1, 1⟩,
  ⟨36, 5, 11, 7, 1, 1⟩,
  ⟨36, 5, 12, 7, 1, 1⟩,
  ⟨36, 5, 13, 7, 1, 1⟩,
  ⟨36, 5, 14, 17, 1, 1⟩,
  ⟨36, 5, 15, 11, 1, 1⟩,
  ⟨40, 3, 15, 13, 1, 1⟩,
  ⟨40, 3, 16, 5, 1, 1⟩,
  ⟨40, 3, 17, 5, 1, 1⟩,
  ⟨40, 3, 18, 5, 1, 1⟩,
  ⟨46, 3, 18, 5, 1, 1⟩,
  ⟨46, 3, 19, 5, 1, 1⟩,
  ⟨46, 3, 20, 3, 2, 1⟩,
  ⟨46, 3, 21, 3, 2, 2⟩,
  ⟨50, 3, 20, 5, 1, 2⟩,
  ⟨50, 3, 21, 5, 1, 1⟩,
  ⟨50, 3, 22, 5, 1, 1⟩,
  ⟨50, 3, 23, 5, 1, 1⟩,
  ⟨51, 3, 20, 5, 1, 2⟩,
  ⟨51, 3, 21, 5, 1, 2⟩,
  ⟨51, 3, 22, 5, 1, 1⟩,
  ⟨51, 3, 23, 5, 1, 1⟩,
  ⟨51, 3, 24, 5, 1, 1⟩,
  ⟨51, 4, 19, 5, 1, 1⟩,
  ⟨51, 4, 20, 5, 1, 2⟩,
  ⟨51, 4, 21, 5, 1, 2⟩,
  ⟨51, 4, 22, 5, 1, 1⟩,
  ⟨51, 4, 23, 5, 1, 1⟩,
  ⟨52, 3, 21, 5, 1, 2⟩,
  ⟨52, 3, 22, 5, 1, 2⟩,
  ⟨52, 3, 23, 5, 1, 1⟩,
  ⟨52, 3, 24, 5, 1, 1⟩,
  ⟨52, 4, 19, 5, 1, 1⟩,
  ⟨52, 4, 20, 5, 1, 2⟩,
  ⟨52, 4, 21, 5, 1, 2⟩,
  ⟨52, 4, 22, 5, 1, 2⟩,
  ⟨52, 4, 23, 5, 1, 1⟩,
  ⟨52, 4, 24, 5, 1, 1⟩,
  ⟨52, 5, 17, 5, 2, 2⟩,
  ⟨52, 5, 18, 5, 2, 1⟩,
  ⟨52, 5, 19, 5, 2, 1⟩,
  ⟨52, 5, 20, 5, 2, 2⟩,
  ⟨52, 5, 21, 5, 2, 2⟩,
  ⟨52, 5, 22, 5, 2, 2⟩,
  ⟨52, 5, 23, 5, 2, 1⟩,
  ⟨56, 3, 23, 3, 2, 2⟩,
  ⟨56, 3, 24, 3, 2, 2⟩,
  ⟨56, 3, 25, 3, 2, 2⟩,
  ⟨56, 3, 26, 3, 2, 2⟩,
  ⟨57, 3, 23, 5, 1, 1⟩,
  ⟨57, 3, 24, 5, 1, 1⟩,
  ⟨57, 3, 25, 7, 1, 1⟩,
  ⟨57, 3, 26, 7, 1, 1⟩,
  ⟨57, 3, 27, 7, 1, 1⟩,
  ⟨57, 4, 22, 5, 1, 2⟩,
  ⟨57, 4, 23, 5, 1, 1⟩,
  ⟨57, 4, 24, 5, 1, 1⟩,
  ⟨57, 4, 25, 7, 1, 1⟩,
  ⟨57, 4, 26, 7, 1, 1⟩,
  ⟨58, 3, 24, 7, 1, 1⟩,
  ⟨58, 3, 25, 7, 1, 1⟩,
  ⟨58, 3, 26, 7, 1, 1⟩,
  ⟨58, 3, 27, 7, 1, 1⟩,
  ⟨58, 4, 22, 5, 1, 2⟩,
  ⟨58, 4, 23, 5, 1, 2⟩,
  ⟨58, 4, 24, 5, 1, 1⟩,
  ⟨58, 4, 25, 7, 1, 1⟩,
  ⟨58, 4, 26, 7, 1, 1⟩,
  ⟨58, 4, 27, 7, 1, 1⟩,
  ⟨58, 5, 20, 7, 1, 1⟩,
  ⟨58, 5, 21, 7, 1, 2⟩,
  ⟨58, 5, 22, 7, 1, 2⟩,
  ⟨58, 5, 23, 7, 1, 2⟩,
  ⟨58, 5, 24, 7, 1, 1⟩,
  ⟨58, 5, 25, 7, 1, 1⟩,
  ⟨58, 5, 26, 7, 1, 1⟩,
  ⟨64, 3, 27, 7, 1, 1⟩,
  ⟨64, 3, 28, 7, 1, 2⟩,
  ⟨64, 3, 29, 3, 2, 1⟩,
  ⟨64, 3, 30, 3, 2, 2⟩,
  ⟨65, 3, 27, 5, 1, 1⟩,
  ⟨65, 3, 28, 5, 1, 1⟩,
  ⟨65, 3, 29, 5, 1, 1⟩,
  ⟨65, 3, 30, 3, 2, 2⟩,
  ⟨65, 3, 31, 3, 2, 2⟩,
  ⟨65, 4, 26, 5, 1, 1⟩,
  ⟨65, 4, 27, 5, 1, 1⟩,
  ⟨65, 4, 28, 5, 1, 1⟩,
  ⟨65, 4, 29, 5, 1, 1⟩,
  ⟨65, 4, 30, 7, 1, 2⟩,
  ⟨66, 3, 28, 5, 1, 1⟩,
  ⟨66, 3, 29, 5, 1, 1⟩,
  ⟨66, 3, 30, 11, 1, 1⟩,
  ⟨66, 3, 31, 11, 1, 1⟩,
  ⟨66, 4, 26, 7, 1, 1⟩,
  ⟨66, 4, 27, 5, 1, 1⟩,
  ⟨66, 4, 28, 5, 1, 1⟩,
  ⟨66, 4, 29, 5, 1, 1⟩,
  ⟨66, 4, 30, 7, 1, 2⟩,
  ⟨66, 4, 31, 7, 1, 2⟩,
  ⟨66, 5, 24, 7, 1, 2⟩,
  ⟨66, 5, 25, 7, 1, 1⟩,
  ⟨66, 5, 26, 7, 1, 1⟩,
  ⟨66, 5, 27, 7, 1, 1⟩,
  ⟨66, 5, 28, 7, 1, 2⟩,
  ⟨66, 5, 29, 7, 1, 2⟩,
  ⟨66, 5, 30, 7, 1, 2⟩,
  ⟨70, 3, 30, 7, 1, 1⟩,
  ⟨70, 3, 31, 5, 1, 1⟩,
  ⟨70, 3, 32, 5, 1, 1⟩,
  ⟨70, 3, 33, 5, 1, 1⟩,
  ⟨76, 3, 33, 5, 1, 1⟩,
  ⟨76, 3, 34, 5, 1, 1⟩,
  ⟨76, 3, 35, 5, 1, 2⟩,
  ⟨76, 3, 36, 5, 1, 2⟩,
  ⟨77, 3, 33, 5, 1, 1⟩,
  ⟨77, 3, 34, 5, 1, 1⟩,
  ⟨77, 3, 35, 5, 1, 2⟩,
  ⟨77, 3, 36, 5, 1, 2⟩,
  ⟨77, 3, 37, 5, 1, 2⟩,
  ⟨77, 4, 32, 5, 1, 2⟩,
  ⟨77, 4, 33, 5, 1, 1⟩,
  ⟨77, 4, 34, 5, 1, 1⟩,
  ⟨77, 4, 35, 5, 1, 2⟩,
  ⟨77, 4, 36, 5, 1, 2⟩,
  ⟨78, 3, 34, 7, 1, 1⟩,
  ⟨78, 3, 35, 7, 1, 2⟩,
  ⟨78, 3, 36, 7, 1, 2⟩,
  ⟨78, 3, 37, 7, 1, 1⟩,
  ⟨78, 4, 32, 5, 1, 2⟩,
  ⟨78, 4, 33, 5, 1, 2⟩,
  ⟨78, 4, 34, 5, 1, 1⟩,
  ⟨78, 4, 35, 5, 1, 2⟩,
  ⟨78, 4, 36, 5, 1, 2⟩,
  ⟨78, 4, 37, 5, 1, 2⟩,
  ⟨78, 5, 30, 5, 2, 2⟩,
  ⟨78, 5, 31, 5, 2, 2⟩,
  ⟨78, 5, 32, 5, 2, 2⟩,
  ⟨78, 5, 33, 5, 2, 2⟩,
  ⟨78, 5, 34, 5, 2, 1⟩,
  ⟨78, 5, 35, 5, 2, 2⟩,
  ⟨78, 5, 36, 5, 2, 2⟩,
  ⟨82, 3, 36, 3, 2, 3⟩,
  ⟨82, 3, 37, 3, 2, 3⟩,
  ⟨82, 3, 38, 3, 2, 1⟩,
  ⟨82, 3, 39, 3, 2, 2⟩,
  ⟨86, 3, 38, 5, 1, 1⟩,
  ⟨86, 3, 39, 5, 1, 1⟩,
  ⟨86, 3, 40, 5, 1, 2⟩,
  ⟨86, 3, 41, 5, 1, 2⟩,
  ⟨87, 3, 38, 5, 1, 1⟩,
  ⟨87, 3, 39, 5, 1, 1⟩,
  ⟨87, 3, 40, 5, 1, 2⟩,
  ⟨87, 3, 41, 5, 1, 2⟩,
  ⟨87, 3, 42, 5, 1, 2⟩,
  ⟨87, 4, 37, 17, 1, 1⟩,
  ⟨87, 4, 38, 5, 1, 1⟩,
  ⟨87, 4, 39, 5, 1, 1⟩,
  ⟨87, 4, 40, 5, 1, 2⟩,
  ⟨87, 4, 41, 5, 1, 2⟩,
  ⟨88, 3, 39, 11, 1, 1⟩,
  ⟨88, 3, 40, 11, 1, 1⟩,
  ⟨88, 3, 41, 11, 1, 1⟩,
  ⟨88, 3, 42, 11, 1, 1⟩,
  ⟨88, 4, 37, 11, 1, 1⟩,
  ⟨88, 4, 38, 11, 1, 1⟩,
  ⟨88, 4, 39, 5, 1, 1⟩,
  ⟨88, 4, 40, 5, 1, 2⟩,
  ⟨88, 4, 41, 5, 1, 2⟩,
  ⟨88, 4, 42, 5, 1, 2⟩,
  ⟨88, 5, 35, 11, 1, 1⟩,
  ⟨88, 5, 36, 11, 1, 1⟩,
  ⟨88, 5, 37, 11, 1, 1⟩,
  ⟨88, 5, 38, 11, 1, 1⟩,
  ⟨88, 5, 39, 11, 1, 1⟩,
  ⟨88, 5, 40, 7, 1, 1⟩,
  ⟨88, 5, 41, 7, 1, 1⟩,
  ⟨92, 3, 41, 3, 2, 2⟩,
  ⟨92, 3, 42, 3, 2, 2⟩,
  ⟨92, 3, 43, 3, 2, 2⟩,
  ⟨92, 3, 44, 3, 2, 2⟩,
  ⟨93, 3, 41, 7, 1, 1⟩,
  ⟨93, 3, 42, 13, 1, 1⟩,
  ⟨93, 3, 43, 13, 1, 1⟩,
  ⟨93, 3, 44, 13, 1, 1⟩,
  ⟨93, 3, 45, 7, 1, 1⟩,
  ⟨93, 4, 40, 7, 1, 1⟩,
  ⟨93, 4, 41, 7, 1, 1⟩,
  ⟨93, 4, 42, 13, 1, 1⟩,
  ⟨93, 4, 43, 13, 1, 1⟩,
  ⟨93, 4, 44, 5, 1, 1⟩,
  ⟨94, 3, 42, 23, 1, 1⟩,
  ⟨94, 3, 43, 23, 1, 1⟩,
  ⟨94, 3, 44, 23, 1, 1⟩,
  ⟨94, 3, 45, 23, 1, 1⟩,
  ⟨94, 4, 40, 7, 1, 1⟩,
  ⟨94, 4, 41, 7, 1, 1⟩,
  ⟨94, 4, 42, 23, 1, 1⟩,
  ⟨94, 4, 43, 13, 1, 1⟩,
  ⟨94, 4, 44, 13, 1, 1⟩,
  ⟨94, 4, 45, 13, 1, 1⟩,
  ⟨94, 5, 38, 13, 1, 1⟩,
  ⟨94, 5, 39, 7, 1, 1⟩,
  ⟨94, 5, 40, 7, 1, 1⟩,
  ⟨94, 5, 41, 7, 1, 1⟩,
  ⟨94, 5, 42, 23, 1, 1⟩,
  ⟨94, 5, 43, 13, 1, 1⟩,
  ⟨94, 5, 44, 13, 1, 1⟩,
  ⟨95, 3, 42, 5, 1, 1⟩,
  ⟨95, 3, 43, 5, 1, 1⟩,
  ⟨95, 3, 44, 5, 1, 1⟩,
  ⟨95, 3, 45, 19, 1, 1⟩,
  ⟨95, 3, 46, 5, 1, 1⟩,
  ⟨95, 4, 41, 5, 1, 1⟩,
  ⟨95, 4, 42, 5, 1, 1⟩,
  ⟨95, 4, 43, 5, 1, 1⟩,
  ⟨95, 4, 44, 5, 1, 1⟩,
  ⟨95, 4, 45, 19, 1, 1⟩,
  ⟨95, 5, 39, 19, 1, 1⟩,
  ⟨95, 5, 40, 7, 1, 1⟩,
  ⟨95, 5, 41, 7, 1, 1⟩,
  ⟨95, 5, 42, 19, 1, 1⟩,
  ⟨95, 5, 43, 19, 1, 1⟩,
  ⟨95, 5, 44, 13, 1, 1⟩,
  ⟨95, 5, 45, 13, 1, 1⟩,
  ⟨95, 6, 37, 13, 1, 1⟩,
  ⟨95, 6, 38, 13, 1, 1⟩,
  ⟨95, 6, 39, 19, 1, 1⟩,
  ⟨95, 6, 40, 7, 1, 1⟩,
  ⟨95, 6, 41, 7, 1, 1⟩,
  ⟨95, 6, 42, 19, 1, 1⟩,
  ⟨95, 6, 43, 19, 1, 1⟩,
  ⟨95, 6, 44, 13, 1, 1⟩,
  ⟨96, 3, 43, 5, 1, 1⟩,
  ⟨96, 3, 44, 5, 1, 1⟩,
  ⟨96, 3, 45, 19, 1, 1⟩,
  ⟨96, 3, 46, 19, 1, 1⟩,
  ⟨96, 4, 41, 19, 1, 1⟩,
  ⟨96, 4, 42, 5, 1, 1⟩,
  ⟨96, 4, 43, 5, 1, 1⟩,
  ⟨96, 4, 44, 5, 1, 1⟩,
  ⟨96, 4, 45, 19, 1, 1⟩,
  ⟨96, 4, 46, 19, 1, 1⟩,
  ⟨96, 5, 39, 23, 1, 1⟩,
  ⟨96, 5, 40, 19, 1, 1⟩,
  ⟨96, 5, 41, 19, 1, 1⟩,
  ⟨96, 5, 42, 19, 1, 1⟩,
  ⟨96, 5, 43, 19, 1, 1⟩,
  ⟨96, 5, 44, 19, 1, 1⟩,
  ⟨96, 5, 45, 19, 1, 1⟩,
  ⟨96, 6, 38, 13, 1, 1⟩,
  ⟨96, 6, 39, 23, 1, 1⟩,
  ⟨96, 6, 40, 19, 1, 1⟩,
  ⟨96, 6, 41, 7, 1, 1⟩,
  ⟨96, 6, 42, 19, 1, 1⟩,
  ⟨96, 6, 43, 19, 1, 1⟩,
  ⟨96, 6, 44, 19, 1, 1⟩,
  ⟨96, 6, 45, 13, 1, 1⟩,
  ⟨96, 7, 36, 13, 1, 1⟩,
  ⟨96, 7, 37, 13, 1, 1⟩,
  ⟨96, 7, 38, 13, 1, 1⟩,
  ⟨96, 7, 39, 23, 1, 1⟩,
  ⟨96, 7, 40, 19, 1, 1⟩,
  ⟨96, 7, 41, 19, 1, 1⟩,
  ⟨96, 7, 42, 19, 1, 1⟩,
  ⟨96, 7, 43, 19, 1, 1⟩,
  ⟨96, 7, 44, 19, 1, 1⟩,
  ⟨100, 3, 45, 3, 2, 4⟩,
  ⟨100, 3, 46, 3, 2, 4⟩,
  ⟨100, 3, 47, 3, 2, 1⟩,
  ⟨100, 3, 48, 3, 2, 2⟩
]

private def CertificateValid (c : CarryCertificate) : Prop :=
  c.p.Prime ∧ c.i ≤ c.p ∧ c.i ≤ c.n ∧ c.j ≤ c.n ∧
  1 ≤ c.ei ∧ 1 ≤ c.ej ∧
  c.n % c.p ^ c.ei < c.i % c.p ^ c.ei ∧
  c.n % c.p ^ c.ej < c.j % c.p ^ c.ej

private instance (c : CarryCertificate) : Decidable (CertificateValid c) := by
  unfold CertificateValid
  infer_instance

/-- A closed Boolean predicate keeps the certificate audit out of the generic
bounded-existential Decidable instance. -/
private def CertificateValidBool (c : CarryCertificate) : Bool :=
  decide (CertificateValid c)

private def FoundCertificate (n i j : ℕ) : Prop :=
  ∃ c ∈ lowCertificates, c.n = n ∧ c.i = i ∧ c.j = j

private def FoundCertificateBool (n i j : ℕ) : Bool :=
  List.any lowCertificates (fun c =>
    decide (c.n = n ∧ c.i = i ∧ c.j = j))

private def RelevantLowRow (n i : ℕ) : Prop :=
  3 ≤ i ∧ 3 * i + 2 ≤ n ∧ ∀ a ∈ Finset.range i, ¬ Nat.Prime (n - a)

private def RelevantLowRowBool (n i : ℕ) : Bool :=
  decide (3 ≤ i) &&
    decide (3 * i + 2 ≤ n) &&
    List.all (List.range i) (fun a => decide (¬ Nat.Prime (n - a)))

private def lowRows : List (ℕ × ℕ) := [(16, 3), (22, 3), (26, 3), (27, 3), (27, 4), (28, 3), (28, 4), (28, 5), (34, 3), (35, 3), (35, 4), (36, 3), (36, 4), (36, 5), (40, 3), (46, 3), (50, 3), (51, 3), (51, 4), (52, 3), (52, 4), (52, 5), (56, 3), (57, 3), (57, 4), (58, 3), (58, 4), (58, 5), (64, 3), (65, 3), (65, 4), (66, 3), (66, 4), (66, 5), (70, 3), (76, 3), (77, 3), (77, 4), (78, 3), (78, 4), (78, 5), (82, 3), (86, 3), (87, 3), (87, 4), (88, 3), (88, 4), (88, 5), (92, 3), (93, 3), (93, 4), (94, 3), (94, 4), (94, 5), (95, 3), (95, 4), (95, 5), (95, 6), (96, 3), (96, 4), (96, 5), (96, 6), (96, 7), (100, 3)]

private def LowRowListedBool (n i : ℕ) : Bool :=
  List.any lowRows (fun row => decide (row = (n, i)))

private def LegalDefectBool (row : ℕ × ℕ) (j : ℕ) : Bool :=
  decide (row.2 < j ∧ 2 * j ≤ row.1 ∧ row.2 ≤ row.1 - 2 * j ∧
    50 * (row.1 - 2 * j) ≤ 171 * row.2 + 50)

private theorem low_certificates_valid_bool :
    List.all lowCertificates CertificateValidBool = true := by
  decide

private theorem low_certificates_valid :
    ∀ c ∈ lowCertificates, CertificateValid c := by
  have hall := List.all_eq_true.mp low_certificates_valid_bool
  intro c hc
  have hvalid := hall c hc
  unfold CertificateValidBool at hvalid
  exact of_decide_eq_true hvalid

private theorem low_rows_cover_bool :
    List.all (List.range 101) (fun n =>
      List.all (List.range 33) (fun i =>
        (!(RelevantLowRowBool n i)) || LowRowListedBool n i)) = true := by
  decide

private theorem relevantLowRowBool_of_prop {n i : ℕ}
    (h : RelevantLowRow n i) : RelevantLowRowBool n i = true := by
  simp only [RelevantLowRowBool, Bool.and_eq_true, List.all_eq_true,
    decide_eq_true_eq]
  refine ⟨⟨h.1, h.2.1⟩, ?_⟩
  intro a ha
  exact h.2.2 a (Finset.mem_range.mpr (List.mem_range.mp ha))

private theorem low_rows_cover :
    ∀ n ∈ Finset.range 101, ∀ i ∈ Finset.range 33, RelevantLowRow n i →
      (n, i) ∈ lowRows := by
  intro n hn i hi hrow
  have houter := List.all_eq_true.mp low_rows_cover_bool
  have hinner := List.all_eq_true.mp
    (houter n (List.mem_range.mpr (Finset.mem_range.mp hn)))
  have hlisted := hinner i (List.mem_range.mpr (Finset.mem_range.mp hi))
  have hrow_bool := relevantLowRowBool_of_prop hrow
  have hlisted_bool : LowRowListedBool n i = true := by
    simpa [hrow_bool] using hlisted
  obtain ⟨row, hmem, hroweq⟩ := List.any_eq_true.mp hlisted_bool
  have hroweq' : row = (n, i) := of_decide_eq_true hroweq
  simpa [hroweq'] using hmem

private theorem LegalDefectBool_of_prop {row : ℕ × ℕ} {j : ℕ}
    (h : row.2 < j ∧ 2 * j ≤ row.1 ∧ row.2 ≤ row.1 - 2 * j ∧
      50 * (row.1 - 2 * j) ≤ 171 * row.2 + 50) :
    LegalDefectBool row j = true := by
  simpa only [LegalDefectBool, decide_eq_true_eq] using h

private def rowCheckBool (row : ℕ × ℕ) : Bool :=
  List.all (List.range 51) (fun j =>
    (!(LegalDefectBool row j)) || FoundCertificateBool row.1 row.2 j)

private theorem rowCoverage_16_3 :
    rowCheckBool (16, 3) = true := by
  decide

private theorem rowCoverage_22_3 :
    rowCheckBool (22, 3) = true := by
  decide

private theorem rowCoverage_26_3 :
    rowCheckBool (26, 3) = true := by
  decide

private theorem rowCoverage_27_3 :
    rowCheckBool (27, 3) = true := by
  decide

private theorem rowCoverage_27_4 :
    rowCheckBool (27, 4) = true := by
  decide

private theorem rowCoverage_28_3 :
    rowCheckBool (28, 3) = true := by
  decide

private theorem rowCoverage_28_4 :
    rowCheckBool (28, 4) = true := by
  decide

private theorem rowCoverage_28_5 :
    rowCheckBool (28, 5) = true := by
  decide

private theorem rowCoverage_34_3 :
    rowCheckBool (34, 3) = true := by
  decide

private theorem rowCoverage_35_3 :
    rowCheckBool (35, 3) = true := by
  decide

private theorem rowCoverage_35_4 :
    rowCheckBool (35, 4) = true := by
  decide

private theorem rowCoverage_36_3 :
    rowCheckBool (36, 3) = true := by
  decide

private theorem rowCoverage_36_4 :
    rowCheckBool (36, 4) = true := by
  decide

private theorem rowCoverage_36_5 :
    rowCheckBool (36, 5) = true := by
  decide

private theorem rowCoverage_40_3 :
    rowCheckBool (40, 3) = true := by
  decide

private theorem rowCoverage_46_3 :
    rowCheckBool (46, 3) = true := by
  decide

private theorem rowCoverage_50_3 :
    rowCheckBool (50, 3) = true := by
  decide

private theorem rowCoverage_51_3 :
    rowCheckBool (51, 3) = true := by
  decide

private theorem rowCoverage_51_4 :
    rowCheckBool (51, 4) = true := by
  decide

private theorem rowCoverage_52_3 :
    rowCheckBool (52, 3) = true := by
  decide

private theorem rowCoverage_52_4 :
    rowCheckBool (52, 4) = true := by
  decide

private theorem rowCoverage_52_5 :
    rowCheckBool (52, 5) = true := by
  decide

private theorem rowCoverage_56_3 :
    rowCheckBool (56, 3) = true := by
  decide

private theorem rowCoverage_57_3 :
    rowCheckBool (57, 3) = true := by
  decide

private theorem rowCoverage_57_4 :
    rowCheckBool (57, 4) = true := by
  decide

private theorem rowCoverage_58_3 :
    rowCheckBool (58, 3) = true := by
  decide

private theorem rowCoverage_58_4 :
    rowCheckBool (58, 4) = true := by
  decide

private theorem rowCoverage_58_5 :
    rowCheckBool (58, 5) = true := by
  decide

private theorem rowCoverage_64_3 :
    rowCheckBool (64, 3) = true := by
  decide

private theorem rowCoverage_65_3 :
    rowCheckBool (65, 3) = true := by
  decide

private theorem rowCoverage_65_4 :
    rowCheckBool (65, 4) = true := by
  decide

private theorem rowCoverage_66_3 :
    rowCheckBool (66, 3) = true := by
  decide

private theorem rowCoverage_66_4 :
    rowCheckBool (66, 4) = true := by
  decide

private theorem rowCoverage_66_5 :
    rowCheckBool (66, 5) = true := by
  decide

private theorem rowCoverage_70_3 :
    rowCheckBool (70, 3) = true := by
  decide

private theorem rowCoverage_76_3 :
    rowCheckBool (76, 3) = true := by
  decide

private theorem rowCoverage_77_3 :
    rowCheckBool (77, 3) = true := by
  decide

private theorem rowCoverage_77_4 :
    rowCheckBool (77, 4) = true := by
  decide

private theorem rowCoverage_78_3 :
    rowCheckBool (78, 3) = true := by
  decide

private theorem rowCoverage_78_4 :
    rowCheckBool (78, 4) = true := by
  decide

private theorem rowCoverage_78_5 :
    rowCheckBool (78, 5) = true := by
  decide

private theorem rowCoverage_82_3 :
    rowCheckBool (82, 3) = true := by
  decide

private theorem rowCoverage_86_3 :
    rowCheckBool (86, 3) = true := by
  decide

private theorem rowCoverage_87_3 :
    rowCheckBool (87, 3) = true := by
  decide

private theorem rowCoverage_87_4 :
    rowCheckBool (87, 4) = true := by
  decide

private theorem rowCoverage_88_3 :
    rowCheckBool (88, 3) = true := by
  decide

private theorem rowCoverage_88_4 :
    rowCheckBool (88, 4) = true := by
  decide

private theorem rowCoverage_88_5 :
    rowCheckBool (88, 5) = true := by
  decide

private theorem rowCoverage_92_3 :
    rowCheckBool (92, 3) = true := by
  decide

private theorem rowCoverage_93_3 :
    rowCheckBool (93, 3) = true := by
  decide

private theorem rowCoverage_93_4 :
    rowCheckBool (93, 4) = true := by
  decide

private theorem rowCoverage_94_3 :
    rowCheckBool (94, 3) = true := by
  decide

private theorem rowCoverage_94_4 :
    rowCheckBool (94, 4) = true := by
  decide

private theorem rowCoverage_94_5 :
    rowCheckBool (94, 5) = true := by
  decide

private theorem rowCoverage_95_3 :
    rowCheckBool (95, 3) = true := by
  decide

private theorem rowCoverage_95_4 :
    rowCheckBool (95, 4) = true := by
  decide

private theorem rowCoverage_95_5 :
    rowCheckBool (95, 5) = true := by
  decide

private theorem rowCoverage_95_6 :
    rowCheckBool (95, 6) = true := by
  decide

private theorem rowCoverage_96_3 :
    rowCheckBool (96, 3) = true := by
  decide

private theorem rowCoverage_96_4 :
    rowCheckBool (96, 4) = true := by
  decide

private theorem rowCoverage_96_5 :
    rowCheckBool (96, 5) = true := by
  decide

private theorem rowCoverage_96_6 :
    rowCheckBool (96, 6) = true := by
  decide

private theorem rowCoverage_96_7 :
    rowCheckBool (96, 7) = true := by
  decide

private theorem rowCoverage_100_3 :
    rowCheckBool (100, 3) = true := by
  decide

private theorem low_certificates_cover_bool :
    List.all lowRows rowCheckBool = true := by
  simp only [lowRows, List.all_cons, List.all_nil,
    rowCoverage_16_3,
    rowCoverage_22_3,
    rowCoverage_26_3,
    rowCoverage_27_3,
    rowCoverage_27_4,
    rowCoverage_28_3,
    rowCoverage_28_4,
    rowCoverage_28_5,
    rowCoverage_34_3,
    rowCoverage_35_3,
    rowCoverage_35_4,
    rowCoverage_36_3,
    rowCoverage_36_4,
    rowCoverage_36_5,
    rowCoverage_40_3,
    rowCoverage_46_3,
    rowCoverage_50_3,
    rowCoverage_51_3,
    rowCoverage_51_4,
    rowCoverage_52_3,
    rowCoverage_52_4,
    rowCoverage_52_5,
    rowCoverage_56_3,
    rowCoverage_57_3,
    rowCoverage_57_4,
    rowCoverage_58_3,
    rowCoverage_58_4,
    rowCoverage_58_5,
    rowCoverage_64_3,
    rowCoverage_65_3,
    rowCoverage_65_4,
    rowCoverage_66_3,
    rowCoverage_66_4,
    rowCoverage_66_5,
    rowCoverage_70_3,
    rowCoverage_76_3,
    rowCoverage_77_3,
    rowCoverage_77_4,
    rowCoverage_78_3,
    rowCoverage_78_4,
    rowCoverage_78_5,
    rowCoverage_82_3,
    rowCoverage_86_3,
    rowCoverage_87_3,
    rowCoverage_87_4,
    rowCoverage_88_3,
    rowCoverage_88_4,
    rowCoverage_88_5,
    rowCoverage_92_3,
    rowCoverage_93_3,
    rowCoverage_93_4,
    rowCoverage_94_3,
    rowCoverage_94_4,
    rowCoverage_94_5,
    rowCoverage_95_3,
    rowCoverage_95_4,
    rowCoverage_95_5,
    rowCoverage_95_6,
    rowCoverage_96_3,
    rowCoverage_96_4,
    rowCoverage_96_5,
    rowCoverage_96_6,
    rowCoverage_96_7,
    rowCoverage_100_3,
    Bool.true_and]

private theorem low_certificates_cover :
    ∀ row ∈ lowRows, ∀ j ∈ Finset.range 51,
      row.2 < j → 2 * j ≤ row.1 → row.2 ≤ row.1 - 2 * j →
      50 * (row.1 - 2 * j) ≤ 171 * row.2 + 50 →
      FoundCertificate row.1 row.2 j := by
  intro row hrow j hj hij h2j hrowd hband
  have houter := List.all_eq_true.mp low_certificates_cover_bool
  have hinner := List.all_eq_true.mp (houter row hrow)
  have hlisted := hinner j (List.mem_range.mpr (Finset.mem_range.mp hj))
  have hlegal : LegalDefectBool row j = true :=
    LegalDefectBool_of_prop ⟨hij, h2j, hrowd, hband⟩
  have hfound : FoundCertificateBool row.1 row.2 j = true := by
    simpa [hlegal] using hlisted
  obtain ⟨c, hc, hmatch⟩ := List.any_eq_true.mp hfound
  exact ⟨c, hc, of_decide_eq_true hmatch⟩

/-- The finite lower-domain obligation created by the newly used composite-window
source. This checks the entire stated finite region, not just listed witnesses. -/
theorem common_low_composite_boundary {n i j d : ℕ}
    (hi : 3 ≤ i) (hij : i < j) (hjn : j ≤ n / 2)
    (hnj : n = 2 * j + d) (hdi : i ≤ d) (hband : 50 * d ≤ 171 * i + 50)
    (hn : n ≤ 100) (hcomp : ∀ a < i, ¬ Nat.Prime (n - a)) : Common n i j := by
  have hn101 : n < 101 := by omega
  have hi33 : i < 33 := by omega
  have hj51 : j < 51 := by omega
  have hrow : RelevantLowRow n i := by
    refine ⟨hi, by omega, ?_⟩
    intro a ha
    exact hcomp a (Finset.mem_range.mp ha)
  have hlisted := low_rows_cover n (Finset.mem_range.mpr hn101)
    i (Finset.mem_range.mpr hi33) hrow
  obtain ⟨c, hc, hcn, hci, hcj⟩ := low_certificates_cover (n, i) hlisted
    j (Finset.mem_range.mpr hj51) hij (by omega) (by omega) (by omega)
  obtain ⟨hp, hpi, hin, hjn', hei, hej, hmi, hmj⟩ := low_certificates_valid c hc
  simpa only [hcn, hci, hcj] using
    (common_of_mod_certificate hp hpi hin hjn' hei hej hmi hmj)

end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.common_low_composite_boundary
