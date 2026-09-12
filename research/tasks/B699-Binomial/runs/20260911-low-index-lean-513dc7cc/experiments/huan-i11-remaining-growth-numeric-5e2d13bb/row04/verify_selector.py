from __future__ import annotations
import hashlib, json, re
from pathlib import Path

EXP=Path(__file__).resolve().parent
SEL=EXP/"selector"
RUN=EXP.parents[2]
tag="I11ThreeTwo" if EXP.name=="row02" else "I11FiveSeven"
if EXP.name=="row02":
    cfg=dict(Z=37002653975761602583641821923,M=162,H=15359,pp=3,pN=46000,pAlpha=774,pBits=203,pExp=128,qq=2,qN=69000,qAlpha=732,qBits=1,qExp=1,zLower=759,zUpper=760,zBase=8,zPred=161)
else:
    cfg=dict(Z=719422706382292314227864,M=194,H=15359,pp=5,pN=22000,pAlpha=648,pBits=9511,pExp=4096,qq=7,qN=22000,qAlpha=784,qBits=719,qExp=256,zLower=81153,zUpper=81154,zBase=1024,zPred=193)
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
numeric=json.loads((SEL/"numeric-audit.json").read_text())
plan=json.loads((SEL/"generation-plan.json").read_text())
assert numeric["Z"]==cfg["Z"] and numeric["M"]==cfg["M"] and numeric["H"]==cfg["H"]
assert numeric["short_bases"]["z_lower"] == (2**cfg["zLower"] <= cfg["Z"]**cfg["zBase"])
assert numeric["short_bases"]["z_upper"] == (cfg["Z"]**cfg["zBase"] <= 2**cfg["zUpper"])
assert numeric["short_bases"]["prime_basis"] == (cfg["pp"]**cfg["pExp"] <= 2**cfg["pBits"])
assert numeric["short_bases"]["two_unit"] == (cfg["qq"]**cfg["qExp"] <= 2**cfg["qBits"])
assert numeric["short_bases"]["predecessor"] == (cfg["Z"]**cfg["zPred"] <= 4*2**cfg["H"])
m={
"p_rate":cfg["zLower"]*cfg["pExp"]*cfg["pAlpha"]-cfg["pBits"]*cfg["zBase"]*cfg["pN"],
"p_base":cfg["pExp"]*cfg["H"]*cfg["pAlpha"]-cfg["pBits"]*cfg["pN"]*cfg["M"],
"p_lookahead":cfg["zLower"]*cfg["pExp"]*cfg["pAlpha"]*cfg["M"]-(2*cfg["pAlpha"]*cfg["pExp"]*cfg["zBase"]+cfg["pBits"]*cfg["zBase"]*cfg["pN"]*(cfg["M"]+1)),
"q_rate":cfg["zLower"]*cfg["qExp"]*cfg["qAlpha"]-cfg["qBits"]*cfg["zBase"]*cfg["qN"],
"q_base":cfg["qExp"]*cfg["H"]*cfg["qAlpha"]-cfg["qBits"]*cfg["qN"]*cfg["M"],
"q_lookahead":cfg["zLower"]*cfg["qExp"]*cfg["qAlpha"]*cfg["M"]-(2*cfg["qAlpha"]*cfg["qExp"]*cfg["zBase"]+cfg["qBits"]*cfg["zBase"]*cfg["qN"]*(cfg["M"]+1)),
"predecessor_base":cfg["zBase"]*15361-cfg["zUpper"]*cfg["zPred"]}
assert numeric["exponent_margins"]==m
assert plan["parameters"]["Z"]==cfg["Z"] and plan["parameters"]["M"]==cfg["M"]
files=[tag+"Basis.lean",tag+"Selector.lean",tag+"Audit.lean"]
src=SEL/"candidate/lean/I11Numeric"
for n in files:
    p=src/n
    assert p.is_file() and plan["files"][n]["sha256"]==sha(p)
    t=p.read_text(encoding="utf-8")
    assert "\\n" not in t and not re.search(r"native_decide|sorry|admit|axiom ",t)
basis=(src/files[0]).read_text()
selector=(src/files[1]).read_text()
audit=(src/files[2]).read_text()
assert f"namespace Math.B699.{tag}Numeric" in basis
assert f"def certificateZ : ℕ := {cfg['Z']}" in basis
assert f"def selectorM : ℕ := {cfg['M']}" in basis
assert f"theorem {('basis_three' if cfg['pp']==3 else 'basis_five')} " in basis or "basis_seven" in basis
assert f"conditions_from_short_bases {cfg['pp']} certificateZ {cfg['pN']} {cfg['pAlpha']} {cfg['M']} {cfg['H']}" in selector
assert f"conditions_from_short_bases {cfg['qq']} certificateZ {cfg['qN']} {cfg['qAlpha']} {cfg['M']} {cfg['H']}" in selector
assert f"base_from_short_basis certificateZ 1 1 {cfg['zPred']} 15361 {cfg['zUpper']} {cfg['zBase']}" in selector
assert selector.count("theorem p_rate")==1 and selector.count("theorem q_rate")==1
assert len(re.findall(r"#print axioms Math\.B699\."+tag+r"Numeric\.",audit))==13
static={"status":"independent_static_checks_passed_uncompiled","tag":tag,"row_index":2 if EXP.name=="row02" else 4,"selector_certificates":7,"short_basis_checks":5,"condition_groups":2,"fully_qualified_audit_entries":13,"large_selector_power_direct_reduction":False,"q_rate_power_gt_48_included":False,"lean_checked":False,"git_checked":False,"new_original_results":0}
(SEL/"static-checks-independent.json").write_text(json.dumps(static,indent=2)+"\n")
source_map={"status":"candidate_source_map","tag":tag,"parameters":cfg,"candidate_files":{n:{"path":str(src/n).replace("\\","/"),"sha256":sha(src/n)} for n in files},"scope_boundary":"Fraction/static candidate only; no Lean/Git; qRate deferred"}
(SEL/"SOURCE_MAP.json").write_text(json.dumps(source_map,indent=2)+"\n")
fs={}
for p in sorted(EXP.rglob("*")):
    if p.is_file() and p.name!="FREEZE.json": fs[str(p.relative_to(EXP)).replace("\\","/")]={"bytes":p.stat().st_size,"sha256":sha(p)}
(SEL/"FREEZE.json").write_text(json.dumps({"status":"frozen_uncompiled_selector","tag":tag,"lean_checked":False,"git_checked":False,"new_original_results":0,"files":fs},indent=2)+"\n")
print(json.dumps(static))
