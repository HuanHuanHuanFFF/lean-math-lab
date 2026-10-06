import Init
set_option maxRecDepth 65536
set_option maxHeartbeats 1000000
namespace Contribution.CodecProbe
def gaps (wide : Bool) (p : Nat) : List Char → List Nat
  | [] => []
  | c::cs =>
      let v := c.toNat - 32
      if wide then
        match cs with
        | [] => []
        | d::ds =>
            let q := p + if p=2 then 2*(v+94*(d.toNat-32))-1 else 2*(v+94*(d.toNat-32))
            q :: gaps wide q ds
      else
        let q := p + if p=2 then 2*v-1 else 2*v
        q :: gaps wide q cs
def D (wide : Bool) (p : Nat) (s : String) := gaps wide p s.toList
theorem checked : D false 2 "zy{yt{z|zx|zzu|w" = [181,359,541,719,887,1069,1249,1433,1613,1789,1973,2153,2333,2503,2687,2861] := by decide +kernel
end Contribution.CodecProbe
#print axioms Contribution.CodecProbe.checked
