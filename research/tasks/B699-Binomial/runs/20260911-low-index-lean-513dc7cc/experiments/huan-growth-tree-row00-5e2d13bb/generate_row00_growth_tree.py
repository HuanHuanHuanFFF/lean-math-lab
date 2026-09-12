
from pathlib import Path
import hashlib, json, re
from fractions import Fraction

RUN = Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
EXP = RUN / "experiments/huan-growth-tree-row00-5e2d13bb"
OUT = EXP / "candidate/lean/Growth"
SHARED = RUN / "lean/Growth/Row00CandidateShared.lean"
LEAVES = RUN / "lean/Growth/Row00CandidateLeaves.lean"
TREE = RUN / "lean/Growth/Row00CandidateTree.lean"
COMPACT = RUN / "experiments/huan-pade-growth-certificates-5e2d13bb/certificates-compact/row-00.json"
EXP.mkdir(parents=True, exist_ok=True)
OUT.mkdir(parents=True, exist_ok=True)
row = json.loads(COMPACT.read_text(encoding="utf-8"))
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def frac(v):
    if "/" in v:
        a,b=v.split("/",1)
        return f"({a} : ℚ) / {b}"
    return f"({v} : ℚ)"

def path_for(a,b):
    lo,hi=Fraction(a),Fraction(b)
    out=""
    while not (lo==0 and hi==1):
        if hi <= Fraction(1,2):
            out+="L"; lo,hi=2*lo,2*hi
        elif lo >= Fraction(1,2):
            out+="R"; lo,hi=2*lo-1,2*hi-1
        else:
            raise ValueError((a,b,lo,hi))
        if len(out)>64: raise ValueError("dyadic path too long")
    return out

def map_expr(path):
    if not path: return ""
    out = "halfLeft" if path[0]=="L" else "halfRight"
    for bit in path[1:]:
        out=f"({out}).comp {'halfLeft' if bit=='L' else 'halfRight'}"
    return out

def ns(i): return f"Math.B699.GrowthTreeRow00Candidate.QLeaf{i:03d}"
def module(path):
    return ".".join(part if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*",part)
                    else "«"+part+"»" for part in path.with_suffix("").parts)

def source(imports,body,namespace,prints):
    text="".join(f"import {x}\n" for x in dict.fromkeys(imports))
    text+="\nset_option maxRecDepth 4096\nset_option exponentiation.threshold 1000000\n\n"
    text+=f"namespace {namespace}\n\n{body.rstrip()}\n\nend {namespace}\n\n"
    text+="\n".join(f"#print axioms {namespace}.{x}" for x in prints)+"\n"
    return text

def source_multi(imports,blocks):
    text="".join(f"import {x}\n" for x in dict.fromkeys(imports))
    text+="\nset_option maxRecDepth 4096\nset_option exponentiation.threshold 1000000\n\n"
    for namespace,body,prints in blocks:
        text+=f"namespace {namespace}\n\n{body.rstrip()}\n\nend {namespace}\n\n"
        text+="\n".join(f"#print axioms {namespace}.{x}" for x in prints)+"\n"
    return text

imports=[
    module(RUN/"lean/Growth/Affine.lean"),
    module(RUN/"lean/Growth/Partition.lean"),
    "Mathlib.Algebra.Polynomial.Roots",
    "Mathlib.Tactic.NormNum",
    "Mathlib.Tactic.Ring",
]
records=[]
def add(name,final,text,kind,declarations):
    path=OUT/name
    path.write_text(text,encoding="utf-8",newline="\n")
    records.append({"candidate_path":str(path.relative_to(EXP)).replace("\\","/"),
                    "final_path":str(final).replace("\\","/"),
                    "module":module(final),"kind":kind,
                    "declarations":declarations,
                    "bytes":len(text.encode()),"sha256":hashlib.sha256(text.encode()).hexdigest()})

shared_ns="Math.B699.GrowthTreeRow00Candidate.Shared"
shared_body="""
open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

def qSeedC : ℕ := 3
def qSeedD : ℕ := 2
def qSeedZ : ℚ := (5 : ℚ) / 512
def qLam : ℚ := (3261099431701357391524367497 : ℚ) / 39614081257132168796771975168
noncomputable def qSeedCore : ℚ[X] :=
  Math.B699.GrowthLeaf.qCore qSeedC qSeedD qSeedZ
noncomputable def qSeedWeight0 : ℚ[X] :=
  Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 0 qSeedZ
noncomputable def qSeedWeight1 : ℚ[X] :=
  Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 1 qSeedZ
"""
add("Row00CandidateShared.lean",SHARED,source(imports,shared_body,shared_ns,[]),
    "shared_exact_parameters",["qSeedC","qSeedD","qSeedZ","qLam","qSeedCore","qSeedWeight0","qSeedWeight1"])

spec=row["Q"]
paths=[path_for(x["a"],x["b"]) for x in spec["leaves"]]
if len(paths)!=13 or len(set(paths))!=13: raise RuntimeError(paths)
blocks=[]
leaf_decls=[]
for i,leaf in enumerate(spec["leaves"]):
    namespace=ns(i)
    coeffs=leaf["bernstein_numerators"]; denom=leaf["bernstein_denominator"]
    coeff_defs="\n".join(f"def gapCoeff{k} : ℚ := {frac(f'{v}/{denom}')}" for k,v in enumerate(coeffs))
    expansion=" +\n  ".join(f"Polynomial.C gapCoeff{k} * bernsteinMonomial {k} {5-k}" for k in range(6))
    pterm=map_expr(paths[i]) or "X"
    prints=["actual_gap_eq","leafMap_eq_path","gapExpansion_cone","local_gap_cone",
            "local_core_cone","local_weight0_cone","local_weight1_cone","leaf_delta0","leaf_delta1"]
    body=f"""
open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.GrowthTreeRow00Candidate.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := 3
def seedD : ℕ := 2
def seedZ : ℚ := (5 : ℚ) / 512
def leafA : ℚ := {frac(leaf["a"])}
def leafB : ℚ := {frac(leaf["b"])}
def lam : ℚ := {frac(spec["lambda"])}

noncomputable def seedCore : ℚ[X] := qSeedCore
noncomputable def seedWeight0 : ℚ[X] := qSeedWeight0
noncomputable def seedWeight1 : ℚ[X] := qSeedWeight1
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

{coeff_defs}

noncomputable def gapExpansion : ℚ[X] :=
  {expansion}

theorem seed_parameter_bounds : 0 < seedD ∧ seedD < seedC ∧
    0 < seedZ ∧ seedZ < (seedD : ℚ) / (seedC : ℚ) := by
  norm_num [seedC, seedD, seedZ]

theorem leaf_interval_bounds : 0 ≤ leafA ∧ leafA < leafB ∧ leafB ≤ 1 := by
  norm_num [leafA, leafB]

theorem lam_pos : 0 < lam := by
  norm_num [lam]

theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by
  apply Polynomial.funext
  intro x
  norm_num [lam, localCore, seedCore, qSeedCore, qSeedC, qSeedD, qSeedZ,
    Math.B699.GrowthLeaf.qCore, Math.B699.GrowthLeaf.qFactor, seedC, seedD, seedZ,
    leafMap, affine, leafA, leafB, gapExpansion,
    {", ".join("gapCoeff"+str(k) for k in range(6))},
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = {pterm} := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring

"""
    terms=[f"BernsteinCone.scale gapCoeff{k} (by norm_num [gapCoeff{k}]) (BernsteinCone.basis {k} {5-k})" for k in range(6)]
    cone="  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 5) :=\n    "+terms[0]+"\n"
    for k in range(1,6):
        cone+=f"  have h{k} : BernsteinCone (Polynomial.C gapCoeff{k} * bernsteinMonomial {k} {5-k}) :=\n    {terms[k]}\n"
    acc="h0"
    for k in range(1,6): acc=f"BernsteinCone.add ({acc}) h{k}"
    cone+=f"  exact {acc}\n"
    body+=f"""
theorem gapExpansion_cone : BernsteinCone gapExpansion := by
{cone}
theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine (cone_qCore seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine (cone_qWeight seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone
"""
    blocks.append((namespace,body,prints))
    leaf_decls += [f"{namespace}.{x}" for x in prints]
add("Row00CandidateLeaves.lean",LEAVES,source_multi(imports,blocks),
    "exact_rational_leaf_certificates",leaf_decls)

def trie(paths):
    nodes={""}
    for p in paths:
        nodes.update(p[:n] for n in range(1,len(p)+1))
    return nodes

leaf_by_path={p:i for i,p in enumerate(paths)}
internal=sorted((p for p in trie(paths) if p not in leaf_by_path),key=lambda p:(-len(p),p))
if len(internal)!=12: raise RuntimeError(internal)
tree_parts=[]; tree_decls=[]
for delta,weight in ((0,"qSeedWeight0"),(1,"qSeedWeight1")):
    for p in internal:
        name=f"qTreeNode{p or 'Root'}Delta{delta}"
        m=map_expr(p)
        w=weight if not m else f"({weight}).comp ({m})"
        f="qSeedCore" if not m else f"(qSeedCore).comp ({m})"
        children=[]
        for child in (p+"L",p+"R"):
            if child in leaf_by_path:
                leafns=ns(leaf_by_path[child])
                lw="localWeight0" if delta==0 else "localWeight1"
                children.append(f"(by simpa only [{lw}, seedWeight{delta}, localCore, seedCore, leafMap_eq_path, Polynomial.comp_assoc] using {leafns}.leaf_delta{delta})")
            else:
                children.append(f"(by simpa only [Polynomial.comp_assoc] using qTreeNode{child}Delta{delta})")
        tree_parts.append(f"""theorem {name} : GrowthTree qLam {w} {f} := by
  exact GrowthTree.split (lam := qLam) (w := {w}) (f := {f})
    {children[0]}
    {children[1]}""")
        tree_decls.append(name)
    public=f"q_tree_delta{delta}"
    tree_parts.append(f"theorem {public} : GrowthTree qLam {weight} qSeedCore := by\n  exact qTreeNodeRootDelta{delta}")
    tree_decls.append(public)
tree_body=""" 
open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition
open Math.B699.GrowthTreeRow00Candidate.Shared

"""+"\n\n".join(tree_parts)
tree_imports=[module(SHARED),module(LEAVES),module(RUN/"lean/Growth/Partition.lean")]
add("Row00CandidateTree.lean",TREE,source(tree_imports,tree_body,"Math.B699.GrowthTreeRow00Candidate.Tree",tree_decls),
    "actual_growthtree_split_recursion",tree_decls)

plan={
    "schema_version":2,
    "status":"generated_uncompiled_candidate",
    "kind":"row00_q_growthtree_full_candidate",
    "scope":"Q family only; E is intentionally excluded",
    "compact_certificate":str(COMPACT).replace("\\","/"),
    "compact_certificate_sha256":sha(COMPACT),
    "families":{"Q":{"leaves":13,"paths":paths,"max_depth":row["Q"]["max_depth"],"delta_weights":row["Q"]["weights"]}},
    "trie":{"internal_nodes":12,"paths":internal,"split_constructors":24,"delta_trees":2},
    "source_files":records,
    "source_sha256":{x["final_path"]:x["sha256"] for x in records},
    "prototype_reference":{
        "path":str(RUN/"lean/Growth/LeafExample.lean").replace("\\","/"),
        "sha256":sha(RUN/"lean/Growth/LeafExample.lean"),
        "accepted_evidence":str(RUN/"verification/20260911T100522709908Z/evidence.json").replace("\\","/"),
        "mathlib_infinite":"local Infinite ℚ instance; no CharZero.Infinite import"},
    "static_checks":{"all_compact_q_leaves":True,"exact_rational_polynomial_funext":True,
        "three_bernstein_cone_classes":True,"both_delta_weights":True,
        "actual_growthtree_split_recursion":True,"unique_candidate_namespace":True,
        "lean_checked":False,"new_original_results":0},
}
(EXP/"generation-plan.json").write_text(json.dumps(plan,ensure_ascii=False,indent=2)+"\n",encoding="utf-8",newline="\n")
print(json.dumps({"status":plan["status"],"source_files":len(records),
    "bytes":sum(x["bytes"] for x in records),"Q_leaves":13,"internal_nodes":12,
    "tree_splits":24,"lean_checked":False},ensure_ascii=False))
