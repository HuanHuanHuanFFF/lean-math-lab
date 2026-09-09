import research.tasks.«B699-Binomial».runs.«20260909-middle-index-cert-1a78f8cd».lean.primeChain.Core
import Mathlib.Tactic.NormNum.Prime

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/-! First bounded cost probe: the actual final 32 edges, split into two blocks.
Generated from the supplied chain without externally rechecking primality.
The individual norm_num proof terms and their composition must pass Lean. -/
namespace B699MiddleIndex.EndBlockNormNum

theorem nodePrime0 : Nat.Prime 1994387 := by norm_num
theorem nodePrime1 : Nat.Prime 1994569 := by norm_num
theorem nodePrime2 : Nat.Prime 1994743 := by norm_num
theorem nodePrime3 : Nat.Prime 1994911 := by norm_num
theorem nodePrime4 : Nat.Prime 1995083 := by norm_num
theorem nodePrime5 : Nat.Prime 1995263 := by norm_num
theorem nodePrime6 : Nat.Prime 1995431 := by norm_num
theorem nodePrime7 : Nat.Prime 1995611 := by norm_num
theorem nodePrime8 : Nat.Prime 1995787 := by norm_num
theorem nodePrime9 : Nat.Prime 1995971 := by norm_num
theorem nodePrime10 : Nat.Prime 1996129 := by norm_num
theorem nodePrime11 : Nat.Prime 1996303 := by norm_num
theorem nodePrime12 : Nat.Prime 1996487 := by norm_num
theorem nodePrime13 : Nat.Prime 1996649 := by norm_num
theorem nodePrime14 : Nat.Prime 1996829 := by norm_num
theorem nodePrime15 : Nat.Prime 1997003 := by norm_num
theorem nodePrime16 : Nat.Prime 1997183 := by norm_num
theorem nodePrime17 : Nat.Prime 1997351 := by norm_num
theorem nodePrime18 : Nat.Prime 1997531 := by norm_num
theorem nodePrime19 : Nat.Prime 1997713 := by norm_num
theorem nodePrime20 : Nat.Prime 1997887 := by norm_num
theorem nodePrime21 : Nat.Prime 1998067 := by norm_num
theorem nodePrime22 : Nat.Prime 1998251 := by norm_num
theorem nodePrime23 : Nat.Prime 1998431 := by norm_num
theorem nodePrime24 : Nat.Prime 1998611 := by norm_num
theorem nodePrime25 : Nat.Prime 1998793 := by norm_num
theorem nodePrime26 : Nat.Prime 1998977 := by norm_num
theorem nodePrime27 : Nat.Prime 1999121 := by norm_num
theorem nodePrime28 : Nat.Prime 1999303 := by norm_num
theorem nodePrime29 : Nat.Prime 1999471 := by norm_num
theorem nodePrime30 : Nat.Prime 1999651 := by norm_num
theorem nodePrime31 : Nat.Prime 1999819 := by norm_num
theorem nodePrime32 : Nat.Prime 2000003 := by norm_num

theorem left : PrimeChain 322 1994387 1997183 := by
  refine PrimeChain.step (q := 1994569) nodePrime0 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1994743) nodePrime1 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1994911) nodePrime2 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1995083) nodePrime3 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1995263) nodePrime4 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1995431) nodePrime5 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1995611) nodePrime6 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1995787) nodePrime7 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1995971) nodePrime8 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1996129) nodePrime9 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1996303) nodePrime10 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1996487) nodePrime11 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1996649) nodePrime12 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1996829) nodePrime13 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1997003) nodePrime14 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1997183) nodePrime15 (by decide) (by decide) ?_
  exact .singleton nodePrime16

theorem right : PrimeChain 322 1997183 2000003 := by
  refine PrimeChain.step (q := 1997351) nodePrime16 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1997531) nodePrime17 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1997713) nodePrime18 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1997887) nodePrime19 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1998067) nodePrime20 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1998251) nodePrime21 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1998431) nodePrime22 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1998611) nodePrime23 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1998793) nodePrime24 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1998977) nodePrime25 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1999121) nodePrime26 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1999303) nodePrime27 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1999471) nodePrime28 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1999651) nodePrime29 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 1999819) nodePrime30 (by decide) (by decide) ?_
  refine PrimeChain.step (q := 2000003) nodePrime31 (by decide) (by decide) ?_
  exact .singleton nodePrime32

theorem joined : PrimeChain 322 1994387 2000003 := left.trans right

end B699MiddleIndex.EndBlockNormNum

#print axioms B699MiddleIndex.EndBlockNormNum.joined
