from pathlib import Path
from datetime import datetime,timezone
import json,hashlib
OUT=Path(__file__).resolve().parent
EDGES=[('h25',2,5,248,252),('h72',7,2,60,330),('h32',3,2,226,268),('h53',5,3,354,228),('h57',5,7,352,216)]
PRIMES=[2,3,5,7]
header="""import Mathlib.Algebra.Order.Monoid.Unbundled.Pow
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# The original five i11 edges give a pure natural-number product bound

UNCOMPILED CANDIDATE. All 32 disjunctive choices are explicit proof branches.
Each chosen vertex uses the maximum available edge weight. A vertex receiving
no chosen edge uses weight zero, derived from A_p <= n. Zero factors are allowed.
This theorem assumes the five displayed edges; it does not construct them from
Padé approximations or localize actual binomial prime powers.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace Math.B699.I11WeightedProduct

/-- A missing vertex contributes weight zero; the factor itself may vanish. -/
theorem zero_weight_bound {n Y A : ℕ} (hA : A ≤ n) :
    A ^ 1000 * Y ^ 0 ≤ n ^ 1000 := by
  simpa only [pow_zero, mul_one] using Nat.pow_le_pow_left hA 1000

/-- Combine four genuine factor bounds whose weights sum to at least 640. -/
theorem four_weighted_product_le {n Y A2 A3 A5 A7 : ℕ}
    (w2 w3 w5 w7 : ℕ) (hY : 1 ≤ Y) (hsum : 640 ≤ w2 + w3 + w5 + w7)
    (h2 : A2 ^ 1000 * Y ^ w2 ≤ n ^ 1000)
    (h3 : A3 ^ 1000 * Y ^ w3 ≤ n ^ 1000)
    (h5 : A5 ^ 1000 * Y ^ w5 ≤ n ^ 1000)
    (h7 : A7 ^ 1000 * Y ^ w7 ≤ n ^ 1000) :
    (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤ n ^ 4000 := by
  have hYpow : Y ^ 640 ≤ Y ^ (w2 + w3 + w5 + w7) :=
    pow_le_pow_right' hY hsum
  calc
    (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤
        (A2 * A3 * A5 * A7) ^ 1000 * Y ^ (w2 + w3 + w5 + w7) :=
      Nat.mul_le_mul_left _ hYpow
    _ = (A2 ^ 1000 * Y ^ w2 * (A3 ^ 1000 * Y ^ w3)) *
        (A5 ^ 1000 * Y ^ w5 * (A7 ^ 1000 * Y ^ w7)) := by
      simp only [mul_pow, pow_add]
      ring
    _ ≤ (n ^ 1000 * n ^ 1000) * (n ^ 1000 * n ^ 1000) :=
      Nat.mul_le_mul (Nat.mul_le_mul h2 h3) (Nat.mul_le_mul h5 h7)
    _ = n ^ ((1000 + 1000) + (1000 + 1000)) := by
      simp only [pow_add]
    _ = n ^ 4000 := by rfl

/-- The five original i11 edge statements, with denominator 1000 retained.
No distinct-position or positivity-of-factor assumption is present. -/
theorem i11_five_edges_product {n Y A2 A3 A5 A7 : ℕ}
    (hY : 1 ≤ Y) (h2n : A2 ≤ n) (h3n : A3 ≤ n)
    (h5n : A5 ≤ n) (h7n : A7 ≤ n)
    (h25 : A2 ^ 1000 * Y ^ 248 ≤ n ^ 1000 ∨ A5 ^ 1000 * Y ^ 252 ≤ n ^ 1000)
    (h72 : A7 ^ 1000 * Y ^ 60 ≤ n ^ 1000 ∨ A2 ^ 1000 * Y ^ 330 ≤ n ^ 1000)
    (h32 : A3 ^ 1000 * Y ^ 226 ≤ n ^ 1000 ∨ A2 ^ 1000 * Y ^ 268 ≤ n ^ 1000)
    (h53 : A5 ^ 1000 * Y ^ 354 ≤ n ^ 1000 ∨ A3 ^ 1000 * Y ^ 228 ≤ n ^ 1000)
    (h57 : A5 ^ 1000 * Y ^ 352 ≤ n ^ 1000 ∨ A7 ^ 1000 * Y ^ 216 ≤ n ^ 1000) :
    (A2 * A3 * A5 * A7) ^ 1000 * Y ^ 640 ≤ n ^ 4000 := by
  have h2zero : A2 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h2n
  have h3zero : A3 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h3n
  have h5zero : A5 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h5n
  have h7zero : A7 ^ 1000 * Y ^ 0 ≤ n ^ 1000 := zero_weight_bound (Y := Y) h7n
"""
records=[]
def build(depth,choices,indent):
    pad=' '*indent
    if depth==len(EDGES):
        weights={p:0 for p in PRIMES};proofs={p:f'h{p}zero' for p in PRIMES}
        for bit,(name,p,q,wp,wq) in zip(choices,EDGES):
            target,w=(p,wp) if bit==0 else (q,wq)
            if w>weights[target]:weights[target]=w;proofs[target]=name
        ws=[weights[p] for p in PRIMES];assert sum(ws)>=640
        records.append({'choices':choices,'mask':sum(bit<<j for j,bit in enumerate(choices)),
                        'vertex_weights':ws,'sum':sum(ws),'selected_proofs':[proofs[p] for p in PRIMES]})
        return pad+'exact four_weighted_product_le '+' '.join(map(str,ws))+' hY (by decide) '+ ' '.join(proofs[p] for p in PRIMES)+'\n'
    name=EDGES[depth][0]
    text=pad+f'rcases {name} with {name} | {name}\n'
    for bit in (0,1):
        child=build(depth+1,choices+[bit],indent+2)
        child_lines=child.splitlines(True)
        text+=pad+'· '+child_lines[0].lstrip()+''.join(child_lines[1:])
    return text
source=header+build(0,[],2)+'\nend Math.B699.I11WeightedProduct\n'
assert len(records)==32 and {r['mask'] for r in records}==set(range(32))
assert min(r['sum'] for r in records)==640
(OUT/'Product.lean').write_text(source,encoding='utf-8')
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'exact branch-generation checks only; Lean uncompiled','edges':EDGES,'vertices':PRIMES,'branches':records,'minimum_sum':640,'source_sha256':hashlib.sha256((OUT/'Product.lean').read_bytes()).hexdigest(),'zero_factors_allowed':True,'distinct_positions_required':False,'worker_lean_invocations':0,'new_original_indices':[]}
(OUT/'branch-checks.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'branches':len(records),'minimum_sum':640,'source_sha256':result['source_sha256'],'bytes':(OUT/'Product.lean').stat().st_size},indent=2))
