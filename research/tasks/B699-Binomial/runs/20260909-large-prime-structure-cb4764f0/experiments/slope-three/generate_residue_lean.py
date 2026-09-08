"""Untrusted generator for the 36 final residue proofs; Lean checks each proof."""
import json,hashlib
from pathlib import Path
base=Path(__file__).resolve().parent
source=base/"compression.json"
cases=json.loads(source.read_text())["remaining_pair_certificates"]
target=base.parent.parent/"lean/SlopeThreeFiniteCases.lean"
header="""import research.tasks.«B699-Binomial».runs.«20260909-large-prime-structure-cb4764f0».lean.GapBridge

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace B699LargePrimeStructure

/-- The exact 36 residual triples of the independently checked slope-three
finite reduction. This verifies the residual witnesses, not the entire
EEES/Dusart/reduction/prime-cover chain.
Input compression.json SHA256: INPUT_HASH -/
theorem slope_three_residual_cases :
"""
statement=" ∧\n".join(f"    Common {c['n']} {c['i']} {c['j']}" for c in cases)
proof=" := by\n  refine ⟨"+", ".join("?_" for _ in cases)+"⟩\n"
for c in cases:
    proof+=f"  · exact common_of_mod_certificate (p := {c['p']}) (ei := {c['e_i']}) (ej := {c['e_j']})\n"
    proof+="      (by decide) (by decide) (by decide) (by decide)\n"
    proof+="      (by decide) (by decide) (by decide) (by decide)\n"
footer="""
end B699LargePrimeStructure

#print axioms B699LargePrimeStructure.slope_three_residual_cases
"""
target.write_text(header.replace("INPUT_HASH",hashlib.sha256(source.read_bytes()).hexdigest())+statement+proof+footer,encoding="utf-8")
print(json.dumps({"residual_case_count":len(cases),"output":"lean/SlopeThreeFiniteCases.lean","untrusted_generator":True}))

