import Init
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 400000
set_option Elab.async false
set_option profiler true
set_option profiler.threshold 100
namespace Contribution.NumericMiddleDecodeTail
def gapsWide : Nat → List Char → List Nat
  | _, [] => []
  | _, [_] => []
  | p, c::d::cs =>
      let v := c.toNat - 32 + 94*(d.toNat-32)
      let q := p + if p=2 then 2*v-1 else 2*v
      q :: gapsWide q cs
termination_by structural p cs => cs
theorem decode_eq : gapsWide 1997351 "z { w z | z z { | h { t z t | ".toList = [1997531,1997713,1997887,1998067,1998251,1998431,1998611,1998793,1998977,1999121,1999303,1999471,1999651,1999819,2000003] := by decide +kernel
end Contribution.NumericMiddleDecodeTail
#print axioms Contribution.NumericMiddleDecodeTail.decode_eq
