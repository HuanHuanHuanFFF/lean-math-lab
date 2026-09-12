from __future__ import annotations
import hashlib, json
from pathlib import Path
EXP=Path(__file__).resolve().parent
SEL=EXP/"selector"; OUT=SEL/"candidate/lean/I11Numeric"; OUT.mkdir(parents=True,exist_ok=True)
name=EXP.name
if name=="row02":
    cfg=dict(tag="I11ThreeTwo",Z=37002653975761602583641821923,M=162,H=15359,
             pp=3,pN=46000,pAlpha=774,pBits=203,pExp=128,pBasis="basis_three",
             qq=2,qN=69000,qAlpha=732,qBits=1,qExp=1,qBasis="basis_two_unit",
             zLower=759,zUpper=760,zBase=8,zPred=161,zText="1/9")
else:
    cfg=dict(tag="I11Row04",Z=719422706382292314227864,M=194,H=15359,
             pp=5,pN=22000,pAlpha=648,pBits=9511,pExp=4096,pBasis="basis_five",
             qq=7,qN=22000,qAlpha=784,qBits=719,qExp=256,qBasis="basis_seven",
             zLower=81153,zUpper=81154,zBase=1024,zPred=193,zText="1/50")
NS="Math.B699."+cfg["tag"]+"Numeric"
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
basis=f"""import Mathlib.Data.Nat.Basic
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096
namespace {NS}
def certificateZ : ℕ := {cfg["Z"]}
def selectorM : ℕ := {cfg["M"]}
def heightH : ℕ := {cfg["H"]}
theorem basis_two_lower : (2 : ℕ) ^ {cfg["zLower"]} ≤ certificateZ ^ {cfg["zBase"]} := by
  set_option exponentiation.threshold {cfg["zUpper"]} in decide
theorem basis_two_upper : certificateZ ^ {cfg["zBase"]} ≤ (2 : ℕ) ^ {cfg["zUpper"]} := by
  set_option exponentiation.threshold {cfg["zUpper"]} in decide
theorem {cfg["pBasis"]} : ({cfg["pp"]} : ℕ) ^ {cfg["pExp"]} ≤ (2 : ℕ) ^ {cfg["pBits"]} := by
  set_option exponentiation.threshold {cfg["pBits"]} in decide
theorem basis_two_unit : (2 : ℕ) ^ 1 ≤ (2 : ℕ) ^ 1 := by decide
end {NS}
#print axioms {NS}.basis_two_lower
#print axioms {NS}.basis_two_upper
#print axioms {NS}.{cfg["pBasis"]}
#print axioms {NS}.basis_two_unit
"""
selector=f"""import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.{cfg["tag"]}Basis
import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.DiscreteSelector.ShortPowerBounds
set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option maxRecDepth 4096
namespace {NS}
open Math.B699.DiscretePadeSelector
private theorem two_pow_add_two (k : ℕ) : (2 : ℕ) ^ (k + 2) = 4 * (2 : ℕ) ^ k := by
  calc
    (2 : ℕ) ^ (k + 2) = (2 : ℕ) ^ k * 2 ^ 2 := Nat.pow_add 2 k 2
    _ = (2 : ℕ) ^ k * 4 := by rw [show (2 : ℕ) ^ 2 = 4 by decide]
    _ = 4 * (2 : ℕ) ^ k := Nat.mul_comm _ _
theorem predecessor : certificateZ ^ ({cfg["M"]} - 1) ≤ 4 * (2 : ℕ) ^ {cfg["H"]} := by
  have h := base_from_short_basis certificateZ 1 1 {cfg["zPred"]} 15361 {cfg["zUpper"]} {cfg["zBase"]}
    (by decide)
    (by set_option exponentiation.threshold {cfg["zUpper"]} in exact basis_two_upper)
    (by decide)
  have hpred : certificateZ ^ {cfg["zPred"]} ≤ (2 : ℕ) ^ 15361 := by
    simpa only [Nat.pow_one] using h
  calc
    certificateZ ^ ({cfg["M"]} - 1) = certificateZ ^ {cfg["zPred"]} := rfl
    _ ≤ (2 : ℕ) ^ 15361 := hpred
    _ = 4 * (2 : ℕ) ^ {cfg["H"]} := two_pow_add_two 15359
theorem p_conditions : ({cfg["pp"]} : ℕ) ^ {cfg["pN"]} ≤ certificateZ ^ {cfg["pAlpha"]} ∧
    (({cfg["pp"]} : ℕ) ^ {cfg["pN"]}) ^ {cfg["M"]} ≤ ((2 : ℕ) ^ {cfg["H"]}) ^ {cfg["pAlpha"]} ∧
    (4 : ℕ) ^ {cfg["pAlpha"]} * ({cfg["pp"]} ^ {cfg["pN"]}) ^ ({cfg["M"]}+1) ≤ certificateZ ^ ({cfg["pAlpha"]}*{cfg["M"]}) := by
  exact conditions_from_short_bases {cfg["pp"]} certificateZ {cfg["pN"]} {cfg["pAlpha"]} {cfg["M"]} {cfg["H"]}
    {cfg["pBits"]} {cfg["pExp"]} {cfg["zLower"]} {cfg["zBase"]}
    (by decide) (by decide)
    (by set_option exponentiation.threshold {cfg["pBits"]} in exact {cfg["pBasis"]})
    (by set_option exponentiation.threshold {cfg["zUpper"]} in exact basis_two_lower)
    (by decide) (by decide) (by decide)
theorem q_conditions : ({cfg["qq"]} : ℕ) ^ {cfg["qN"]} ≤ certificateZ ^ {cfg["qAlpha"]} ∧
    (({cfg["qq"]} : ℕ) ^ {cfg["qN"]}) ^ {cfg["M"]} ≤ ((2 : ℕ) ^ {cfg["H"]}) ^ {cfg["qAlpha"]} ∧
    (4 : ℕ) ^ {cfg["qAlpha"]} * ({cfg["qq"]} ^ {cfg["qN"]}) ^ ({cfg["M"]}+1) ≤ certificateZ ^ ({cfg["qAlpha"]}*{cfg["M"]}) := by
  exact conditions_from_short_bases {cfg["qq"]} certificateZ {cfg["qN"]} {cfg["qAlpha"]} {cfg["M"]} {cfg["H"]}
    {cfg["qBits"]} {cfg["qExp"]} {cfg["zLower"]} {cfg["zBase"]}
    (by decide) (by decide)
    (by set_option exponentiation.threshold {cfg["qBits"]} in exact {cfg["qBasis"]})
    (by set_option exponentiation.threshold {cfg["zUpper"]} in exact basis_two_lower)
    (by decide) (by decide) (by decide)
theorem p_rate : ({cfg["pp"]} : ℕ) ^ {cfg["pN"]} ≤ certificateZ ^ {cfg["pAlpha"]} := p_conditions.1
theorem p_base : (({cfg["pp"]} : ℕ : ℕ) ^ {cfg["pN"]}) ^ {cfg["M"]} ≤ ((2 : ℕ)^ {cfg["H"]}) ^ {cfg["pAlpha"]} := p_conditions.2.1
theorem p_lookahead : (4 : ℕ) ^ {cfg["pAlpha"]} * ({cfg["pp"]} ^ {cfg["pN"]}) ^ ({cfg["M"]}+1) ≤ certificateZ ^ ({cfg["pAlpha"]}*{cfg["M"]}) := p_conditions.2.2
theorem q_rate : ({cfg["qq"]} : ℕ) ^ {cfg["qN"]} ≤ certificateZ ^ {cfg["qAlpha"]} := q_conditions.1
theorem q_base : (({cfg["qq"]} : ℕ) ^ {cfg["qN"]}) ^ {cfg["M"]} ≤ ((2 : ℕ)^ {cfg["H"]}) ^ {cfg["qAlpha"]} := q_conditions.2.1
theorem q_lookahead : (4 : ℕ) ^ {cfg["qAlpha"]} * ({cfg["qq"]} ^ {cfg["qN"]}) ^ ({cfg["M"]}+1) ≤ certificateZ ^ ({cfg["qAlpha"]}*{cfg["M"]}) := q_conditions.2.2
end {NS}
#print axioms {NS}.predecessor
#print axioms {NS}.p_conditions
#print axioms {NS}.q_conditions
#print axioms {NS}.p_rate
#print axioms {NS}.p_base
#print axioms {NS}.p_lookahead
#print axioms {NS}.q_rate
#print axioms {NS}.q_base
#print axioms {NS}.q_lookahead
"""
audit=f"""import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.I11Numeric.{cfg["tag"]}Selector
namespace {NS}
#print axioms {NS}.basis_two_lower
#print axioms {NS}.basis_two_upper
#print axioms {NS}.{cfg["pBasis"]}
#print axioms {NS}.basis_two_unit
#print axioms {NS}.predecessor
#print axioms {NS}.p_conditions
#print axioms {NS}.p_rate
#print axioms {NS}.p_base
#print axioms {NS}.p_lookahead
#print axioms {NS}.q_conditions
#print axioms {NS}.q_rate
#print axioms {NS}.q_base
#print axioms {NS}.q_lookahead
end {NS}
"""
for n,s in [(cfg["tag"]+"Basis.lean",basis),(cfg["tag"]+"Selector.lean",selector),(cfg["tag"]+"Audit.lean",audit)]:
    (OUT/n).write_text(s,encoding="utf-8")
margin={
 "p_rate":cfg["zLower"]*cfg["pExp"]*cfg["pAlpha"]-cfg["pBits"]*cfg["zBase"]*cfg["pN"],
 "p_base":cfg["pExp"]*cfg["H"]*cfg["pAlpha"]-cfg["pBits"]*cfg["pN"]*cfg["M"],
 "p_lookahead":cfg["zLower"]*cfg["pExp"]*cfg["pAlpha"]*cfg["M"]-(2*cfg["pAlpha"]*cfg["pExp"]*cfg["zBase"]+cfg["pBits"]*cfg["zBase"]*cfg["pN"]*(cfg["M"]+1)),
 "q_rate":cfg["zLower"]*cfg["qExp"]*cfg["qAlpha"]-cfg["qBits"]*cfg["zBase"]*cfg["qN"],
 "q_base":cfg["qExp"]*cfg["H"]*cfg["qAlpha"]-cfg["qBits"]*cfg["qN"]*cfg["M"],
 "q_lookahead":cfg["zLower"]*cfg["qExp"]*cfg["qAlpha"]*cfg["M"]-(2*cfg["qAlpha"]*cfg["qExp"]*cfg["zBase"]+cfg["qBits"]*cfg["zBase"]*cfg["qN"]*(cfg["M"]+1)),
 "predecessor_base":cfg["zBase"]*15361-cfg["zUpper"]*cfg["zPred"]}
numeric={"status":"independent_python_short_basis_check","Z":cfg["Z"],"M":cfg["M"],"H":cfg["H"],"Y0":"2^15359","short_bases":{"z_lower":cfg["zLower"] and 2**cfg["zLower"] <= cfg["Z"]**cfg["zBase"],"z_upper":cfg["Z"]**cfg["zBase"] <= 2**cfg["zUpper"],"prime_basis":cfg["pp"]**cfg["pExp"] <= 2**cfg["pBits"],"two_unit":cfg["qq"]**cfg["qExp"] <= 2**cfg["qBits"],"predecessor":cfg["Z"]**cfg["zPred"] <= 4*2**cfg["H"]},"selector_targets":{"p":{"J":f"{cfg['pp']}^{cfg['pN']}","N":cfg["pN"],"alpha":cfg["pAlpha"]},"q":{"J":f"{cfg['qq']}^{cfg['qN']}","N":cfg["qN"],"alpha":cfg["qAlpha"]}},"exponent_margins":margin,"q_rate_power_gt_48_certificate":"deferred"}
(SEL/"numeric-audit.json").write_text(json.dumps(numeric,indent=2)+"\n")
plan={"status":"generated_uncompiled_selector","kind":name+" selector","parameters":cfg,"audit_entries":13,"q_rate_power_gt_48_included":False,"files":{n:{"future_target":f"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/I11Numeric/{n}","sha256":sha(OUT/n)} for n in [cfg["tag"]+"Basis.lean",cfg["tag"]+"Selector.lean",cfg["tag"]+"Audit.lean"]},"numeric":numeric}
(SEL/"generation-plan.json").write_text(json.dumps(plan,indent=2)+"\n")
(SEL/"README.md").write_text(f"Fixed {cfg['tag']} selector candidate; no Lean/Git. Z={cfg['Z']}, M={cfg['M']}, H=15359; p={cfg['pp']}^{cfg['pN']}, alpha={cfg['pAlpha']}; q={cfg['qq']}^{cfg['qN']}, alpha={cfg['qAlpha']}. Seven certificates are predecessor plus p/q conditions and projections; qRate^M>48 deferred.\n")
print(cfg["tag"], margin)
