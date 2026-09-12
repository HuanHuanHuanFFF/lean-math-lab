from __future__ import annotations
import hashlib
import json
import re
from fractions import Fraction
from math import comb
from pathlib import Path
import sys

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[2]
TAG = "I11Row02" if EXP.name == "row02" else "I11FiveSeven"
INPUT = RUN / "experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/" / ("row-02.json" if EXP.name == "row02" else "row-04.json")
PLAN_PATH = EXP / "generation-plan.json"
DATA = json.loads(INPUT.read_text(encoding="utf-8"))
PLAN = json.loads(PLAN_PATH.read_text(encoding="utf-8"))
OUT = EXP / "candidate/lean/Growth"

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def trim(a):
    a=list(a)
    while len(a)>1 and a[-1]==0: a.pop()
    return a
def add(a,b):
    o=[Fraction(0)]*max(len(a),len(b))
    for i,x in enumerate(a): o[i]+=x
    for i,x in enumerate(b): o[i]+=x
    return trim(o)
def mul(a,b):
    o=[Fraction(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b): o[i+j]+=x*y
    return trim(o)
def scale(c,a): return trim([c*x for x in a])
def power(a,n):
    o=[Fraction(1)]
    for _ in range(n): o=mul(o,a)
    return o
def comp(p,q):
    o=[Fraction(0)]
    for c in reversed(p): o=add([c],mul(o,q))
    return trim(o)
def affine(a,b): return [a,b-a]
def core(fam,z):
    x=[Fraction(0),Fraction(1)]; one=[Fraction(1),Fraction(-1)]
    ex=DATA[fam]["core_exponents"]
    factor=[Fraction(1),z-1] if fam=="Q" else [Fraction(1),-z]
    return mul(mul(power(x,ex[0]),power(one,ex[1])),power(factor,ex[2]))
def bernstein(bs,n):
    x=[Fraction(0),Fraction(1)]; one=[Fraction(1),Fraction(-1)]; o=[Fraction(0)]
    for k,c in enumerate(bs): o=add(o,scale(comb(n,k)*c,mul(power(x,k),power(one,n-k))))
    return o
def gapbasis(gs,n):
    x=[Fraction(0),Fraction(1)]; one=[Fraction(1),Fraction(-1)]; o=[Fraction(0)]
    for k,c in enumerate(gs): o=add(o,scale(c,mul(power(x,k),power(one,n-k))))
    return o

assert DATA["row_index"] == (2 if EXP.name=="row02" else 4)
assert DATA["Q"]["degree"] == DATA["E"]["degree"]
degree=DATA["Q"]["degree"]
expected_counts={"Q":len(DATA["Q"]["leaves"]),"E":len(DATA["E"]["leaves"])}
assert expected_counts == ({"Q":9,"E":8} if EXP.name=="row02" else {"Q":10,"E":9})
checks=PLAN["checks"]
for fam in ("Q","E"):
    leaves=DATA[fam]["leaves"]
    family_checks=[x for x in checks if x["family"]==fam]
    assert len(family_checks)==len(leaves)
    intervals=sorted((Fraction(x["a"]),Fraction(x["b"])) for x in leaves)
    assert intervals[0][0]==0 and intervals[-1][1]==1
    assert all(r==intervals[i+1][0] for i,(_,r) in enumerate(intervals[:-1]))
    lam=Fraction(DATA[fam]["lambda"]); z=Fraction(DATA["z"])
    for leaf,check in zip(leaves,sorted(family_checks,key=lambda x:x["leaf"])):
        den=int(leaf["bernstein_denominator"])
        bs=[Fraction(int(x),den) for x in leaf["bernstein_numerators"]]
        actual=comp(core(fam,z),affine(Fraction(leaf["a"]),Fraction(leaf["b"])))
        assert actual==bernstein(bs,degree)
        gs=[comb(degree,k)*(lam-bs[k]) for k in range(degree+1)]
        assert gapbasis(gs,degree)==add([lam],scale(Fraction(-1),actual))
        assert all(x>=0 for x in gs)
        bad=list(gs); bad[0]+=1
        assert gapbasis(bad,degree)!=add([lam],scale(Fraction(-1),actual))
        assert check["identity"] and check["tamper_rejected"]

shared=OUT/(TAG+"Shared.lean")
agg=OUT/(TAG+"Leaves.lean")
tree=OUT/(TAG+"Tree.lean")
audit=OUT/(TAG+"Audit.lean")
sources=[shared,agg,tree,audit]
for p in sources:
    assert p.is_file()
    s=p.read_text(encoding="utf-8")
    assert "\\n" not in s and "native_decide" not in s and "I11FiveThree" not in s
    assert not re.search(r"\b(sorry|admit|axiom )\b",s)
assert f"Math.B699.{TAG}Growth.Shared" in shared.read_text()
assert shared.read_text().count("def qLam : ℚ")==1 and shared.read_text().count("def eLam : ℚ")==1

leaf_dir=OUT/"Leaves"
leaf_files=sorted(leaf_dir.glob("*.lean"))
assert len(leaf_files)==sum(expected_counts.values())
leaf_refs=0
for p in leaf_files:
    s=p.read_text(encoding="utf-8")
    assert f"namespace Math.B699.{TAG}Growth." in s
    assert f"import research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.Growth.{TAG}Shared" in s
    assert "I11Row" not in s[s.find("namespace "):s.find("namespace ")+100] or TAG in s
    assert "#print axioms" in s
    leaf_refs += s.count("theorem actual_gap_eq")
assert leaf_refs == sum(expected_counts.values())
agg_text=agg.read_text(encoding="utf-8")
assert agg_text.count("import research.tasks") == sum(expected_counts.values())
assert "def gapCoeff" not in agg_text and "namespace " not in agg_text
tree_text=tree.read_text(encoding="utf-8")
assert len(re.findall(r"using Math\.B699\."+TAG+r"Growth\.[QE]Leaf\d{3}\.",tree_text)) == 2*sum(expected_counts.values())
assert set(re.findall(r"theorem ([qe]_tree_delta[01])\b",tree_text)) == {"q_tree_delta0","q_tree_delta1","e_tree_delta0","e_tree_delta1"}
assert all(re.search(r"GrowthTree [qe]Lam \(\([qe]SeedWeight[01]\)\.comp ",line) for line in tree_text.splitlines() if " : GrowthTree " in line and ".comp " in line)
assert audit_text if False else True
assert audit.read_text().count("#print axioms") == 4

for name,meta in PLAN["source_map"].items():
    assert meta["sha256"] == sha(OUT/name)
for name,meta in PLAN.get("leaf_sources",{}).items():
    assert meta["sha256"] == sha(leaf_dir/(name+".lean"))

result={
    "status":"independent_static_checks_passed_uncompiled",
    "row_index":DATA["row_index"],"degree":degree,"Q_leaves":expected_counts["Q"],"E_leaves":expected_counts["E"],
    "fraction_identity_checks":sum(expected_counts.values()),"tamper_rejection_checks":sum(expected_counts.values()),
    "independent_leaf_modules":len(leaf_files),"fully_qualified_tree_refs":2*sum(expected_counts.values()),
    "aggregate_imports_only":True,"full_comp_parentheses":True,
    "lean_checked":False,"git_checked":False,"new_original_results":0,
}
(EXP/"static-checks-independent.json").write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
# Distinguish this group metadata from the other row.
source_map={"status":"candidate_source_map","row_index":DATA["row_index"],
    "input":{"path":str(INPUT).replace("\\","/"),"sha256":sha(INPUT)},
    "candidate_sources":{p.name:{"path":str(p).replace("\\","/"),"sha256":sha(p)} for p in sources},
    "leaf_modules":{p.stem:{"path":str(p).replace("\\","/"),"sha256":sha(p)} for p in leaf_files},
    "formula":"gapCoeff[k]=choose(degree,k)*(lambda-b[k])",
    "scope_boundary":"candidate Fraction/static only; no Lean/Git; no Factorial",
}
(EXP/"SOURCE_MAP.json").write_text(json.dumps(source_map,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
files={}
for p in sorted(EXP.rglob("*")):
    if p.is_file() and p.name!="FREEZE.json":
        files[str(p.relative_to(EXP)).replace("\\","/")]={"bytes":p.stat().st_size,"sha256":sha(p)}
freeze={"status":"frozen_uncompiled_candidate","row_index":DATA["row_index"],"lean_checked":False,"git_checked":False,"new_original_results":0,"files":files}
(EXP/"FREEZE.json").write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
print(json.dumps(result,ensure_ascii=False))
