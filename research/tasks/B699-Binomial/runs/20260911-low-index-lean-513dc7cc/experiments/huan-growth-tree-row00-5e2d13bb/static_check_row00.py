
from pathlib import Path
import hashlib, json, re
from fractions import Fraction

RUN=Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
EXP=RUN/"experiments/huan-growth-tree-row00-5e2d13bb"
CAND=EXP/"candidate/lean/Growth"
PLAN=json.loads((EXP/"generation-plan.json").read_text(encoding="utf-8"))
COMPACT=EXP.parent/"huan-pade-growth-certificates-5e2d13bb/certificates-compact/row-00.json"
ROW=json.loads(COMPACT.read_text(encoding="utf-8"))
sha=lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def path_for(a,b):
    lo,hi=Fraction(a),Fraction(b); p=""
    while not (lo==0 and hi==1):
        if hi<=Fraction(1,2): p+="L"; lo,hi=2*lo,2*hi
        elif lo>=Fraction(1,2): p+="R"; lo,hi=2*lo-1,2*hi-1
        else: raise AssertionError((a,b,lo,hi))
    return p

def map_expr(p):
    if not p:return ""
    x="halfLeft" if p[0]=="L" else "halfRight"
    for b in p[1:]:x=f"({x}).comp {'halfLeft' if b=='L' else 'halfRight'}"
    return x

def require(ok,msg):
    if not ok: raise AssertionError(msg)

leaf_file=CAND/"Row00CandidateLeaves.lean"
shared_file=CAND/"Row00CandidateShared.lean"
tree_file=CAND/"Row00CandidateTree.lean"
require((CAND/"QLeaves.lean").exists() is False, "stale QLeaves artifact remains")
require(set(p.name for p in CAND.glob("*.lean"))=={leaf_file.name,shared_file.name,tree_file.name}, "unexpected candidate Lean files")
texts={p:p.read_text(encoding="utf-8") for p in (leaf_file,shared_file,tree_file)}
all_text="\n".join(texts.values())
require(sha(COMPACT)==PLAN["compact_certificate_sha256"],"compact SHA mismatch")
require(PLAN["families"]["Q"]["leaves"]==13,"plan leaf count")
paths=[path_for(x["a"],x["b"]) for x in ROW["Q"]["leaves"]]
require(paths==PLAN["families"]["Q"]["paths"],"plan paths differ from compact")
intervals=[(Fraction(x["a"]),Fraction(x["b"])) for x in ROW["Q"]["leaves"]]
require(intervals[0][0]==0 and intervals[-1][1]==1,"Q interval endpoints")
require(all(intervals[i][1]==intervals[i+1][0] for i in range(len(intervals)-1)),
        "Q leaves do not form an adjacent full cover")
require(PLAN["trie"]["internal_nodes"]==12 and PLAN["trie"]["split_constructors"]==24,"plan trie counts")
require("Mathlib.Algebra.CharZero.Infinite" not in all_text,"forbidden cache import")
for bad in ("sorry","admit","native_decide","Lean.ofReduceBool","Row00QLeaf000","ELeaf","eSeed"):
    require(bad not in all_text,f"forbidden marker {bad}")
require(re.search(r"(?m)^\s*axiom\s",all_text) is None,"axiom declaration present")
require(all_text.count("Polynomial.funext")==26,"each Q leaf has funext")
require(all_text.count("theorem gapExpansion_cone")==13,"each Q leaf has gap cone")
require(all_text.count("theorem leaf_delta0")==13 and all_text.count("theorem leaf_delta1")==13,"two delta leaf trees")
require(tree_file.read_text(encoding="utf-8").count("GrowthTree.split")==24,"split count")
require(tree_file.read_text(encoding="utf-8").count("theorem q_tree_delta")==2,"public root count")
require("GrowthTree.split" in tree_file.read_text(encoding="utf-8") and ",\n    (by simpa" not in tree_file.read_text(encoding="utf-8"),"constructor argument comma")
leaf_text=texts[leaf_file]
blocks=re.findall(r"namespace (Math\.B699\.GrowthTreeRow00Candidate\.QLeaf\d{3})\n(.*?)\nend \1",leaf_text,re.S)
require(len(blocks)==13,"namespace block count")
for i,leaf in enumerate(ROW["Q"]["leaves"]):
    wanted_ns=f"Math.B699.GrowthTreeRow00Candidate.QLeaf{i:03d}"
    match=[body for ns,body in blocks if ns==wanted_ns]
    require(len(match)==1,f"missing namespace {wanted_ns}")
    body=match[0]
    require(f"def leafA : ℚ := ({leaf['a'].split('/')[0]} : ℚ)" in body,"leafA mismatch")
    require(f"def leafB : ℚ := ({leaf['b'].split('/')[0]} : ℚ)" in body,"leafB mismatch")
    for k,n in enumerate(leaf["bernstein_numerators"]):
        denom=leaf["bernstein_denominator"]
        require(f"def gapCoeff{k} : ℚ := ({n} : ℚ) / {denom}" in body,f"coefficient mismatch {i}/{k}")
    for theorem in ("actual_gap_eq","leafMap_eq_path","gapExpansion_cone","local_gap_cone",
                    "local_core_cone","local_weight0_cone","local_weight1_cone","leaf_delta0","leaf_delta1"):
        require(f"theorem {theorem}" in body,f"{wanted_ns}.{theorem} missing")
    require(map_expr(paths[i]) in body,f"{wanted_ns} path bridge missing")
tree_text=texts[tree_file]
for p in PLAN["trie"]["paths"]:
    for d in (0,1):
        require(f"theorem qTreeNode{p or 'Root'}Delta{d}" in tree_text,f"missing node {p}/{d}")
require(tree_text.count("qTreeNode")>=24,"tree node refs missing")
for final,record in PLAN["source_sha256"].items():
    candidate=EXP/next(x["candidate_path"] for x in PLAN["source_files"] if x["final_path"]==final)
    require(sha(candidate)==record,f"source SHA mismatch {final}")
require(PLAN["static_checks"]["lean_checked"] is False,"candidate must remain uncompiled")
result={
 "status":"static_checks_passed_uncompiled",
 "compact_certificate_sha256":sha(COMPACT),
 "candidate_files": [{"path":str(p.relative_to(EXP)).replace("\\","/"),"bytes":p.stat().st_size,"sha256":sha(p)} for p in (shared_file,leaf_file,tree_file)],
 "q_leaf_count":13,"q_paths":paths,"internal_nodes":12,"split_constructors":24,
 "checks":{
  "compact_paths_coefficients_and_full_cover":True,"funext_per_leaf":True,
  "gap_core_weight_cone_theorems":True,"both_delta_leaf_trees":True,
  "actual_split_trie":True,"unique_namespace_and_no_stale_files":True,
  "forbidden_imports_and_placeholders":True,"plan_source_hashes":True,
  "lean_checked":False,"new_original_results":0
 }
}
(EXP/"static-checks.json").write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8",newline="\n")
print(json.dumps(result,ensure_ascii=False))
