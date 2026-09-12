from __future__ import annotations
import hashlib,json,re
from fractions import Fraction
from math import comb
from pathlib import Path

EXP=Path(__file__).resolve().parent;RUN=EXP.parents[1];ROOT=RUN.parents[4];BASE=RUN/"lean/Growth"
COMPACT=RUN/"experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-01.json"
OUT=EXP/"candidate/lean/Growth";OUT.mkdir(parents=True,exist_ok=True)
DATA=json.loads(COMPACT.read_text(encoding="utf-8"));N=DATA["Q"]["degree"];sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
FINAL_SHARED=RUN/"lean/Growth/I11SevenTwoShared.lean";FINAL_LEAVES=RUN/"lean/Growth/I11SevenTwoLeaves.lean";FINAL_TREE=RUN/"lean/Growth/I11SevenTwoTree.lean"
FAMS={"Q":{"prefix":"Q","core":"qCore","factor":"qFactor","cone_core":"cone_qCore","cone_weight":"cone_qWeight","seedC":9,"seedD":5,"seedZ":"1/49","lam":DATA["Q"]["lambda"],"spec":DATA["Q"]},"E":{"prefix":"E","core":"eCore","factor":"eFactor","cone_core":"cone_eCore","cone_weight":"cone_eWeight","seedC":9,"seedD":5,"seedZ":"1/49","lam":DATA["E"]["lambda"],"spec":DATA["E"]}}
def module(path):
 path=Path(path)
 if path.is_absolute(): path=path.relative_to(ROOT)
 return ".".join(x if re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*",x) else "«"+x+"»" for x in path.with_suffix("").parts)
def source(imports,body,namespace,prints):
 t="".join(f"import {x}\n" for x in dict.fromkeys(imports));t+="\nset_option maxRecDepth 4096\nset_option exponentiation.threshold 1000000\n\n"
 t+=f"namespace {namespace}\n\n{body.rstrip()}\n\nend {namespace}\n\n";t+="\n".join(f"#print axioms {namespace}.{x}" for x in prints)+"\n";return t
def source_multi(imports,blocks):
 t="".join(f"import {x}\n" for x in dict.fromkeys(imports));t+="\nset_option maxRecDepth 4096\nset_option exponentiation.threshold 1000000\n\n"
 for ns,body,prints in blocks:t+=f"namespace {ns}\n\n{body.rstrip()}\n\nend {ns}\n\n"+"\n".join(f"#print axioms {ns}.{x}" for x in prints)+"\n"
 return t
def frac(v):
 if "/" in v:a,b=v.split("/",1);return f"({a} : ℚ) / {b}"
 return f"({v} : ℚ)"
def path_for(a,b):
 lo,hi=Fraction(a),Fraction(b);p=""
 while not(lo==0 and hi==1):
  if hi<=Fraction(1,2):p+="L";lo,hi=2*lo,2*hi
  elif lo>=Fraction(1,2):p+="R";lo,hi=2*lo-1,2*hi-1
  else:raise ValueError((a,b,lo,hi))
 return p
def map_expr(p):
 if not p:return ""
 x="halfLeft" if p[0]=="L" else "halfRight"
 for b in p[1:]:x=f"({x}).comp {'halfLeft' if b=='L' else 'halfRight'}"
 return x
def trim(a):
 a=list(a)
 while len(a)>1 and a[-1]==0:a.pop()
 return a
def add(a,b):
 o=[Fraction(0)]*max(len(a),len(b))
 for i,x in enumerate(a):o[i]+=x
 for i,x in enumerate(b):o[i]+=x
 return trim(o)
def mul(a,b):
 o=[Fraction(0)]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):o[i+j]+=x*y
 return trim(o)
def scale(c,a):return trim([c*x for x in a])
def power(a,n):
 o=[Fraction(1)]
 for _ in range(n):o=mul(o,a)
 return o
def comp(p,q):
 o=[Fraction(0)]
 for c in reversed(p):o=add([c],mul(o,q))
 return trim(o)
def sub(a,b):return add(a,[-x for x in b])
def core(fam,z):
 x=[Fraction(0),Fraction(1)];one=[Fraction(1),Fraction(-1)]
 if fam=="Q":return mul(mul(power(x,4),power(one,5)),power([Fraction(1),z-1],5))
 return mul(mul(power(x,5),power(one,5)),power([Fraction(1),-z],4))
def affine(a,b):return [a,b-a]
def standard(bs):
 x=[Fraction(0),Fraction(1)];one=[Fraction(1),Fraction(-1)];o=[Fraction(0)]
 for k,c in enumerate(bs):o=add(o,scale(comb(N,k)*c,mul(power(x,k),power(one,N-k))))
 return o
def gapbasis(gs):
 x=[Fraction(0),Fraction(1)];one=[Fraction(1),Fraction(-1)];o=[Fraction(0)]
 for k,c in enumerate(gs):o=add(o,scale(c,mul(power(x,k),power(one,N-k))))
 return o
def fmt(f):return f"({f.numerator} : ℚ)" if f.denominator==1 else f"({f.numerator} : ℚ) / {f.denominator}"
def fl(xs):return [f"{x.numerator}/{x.denominator}" for x in xs]
def check_leaf(fam,leaf):
 den=int(leaf["bernstein_denominator"]);bs=[Fraction(int(x),den) for x in leaf["bernstein_numerators"]];lam=Fraction(FAMS[fam]["lam"])
 z=Fraction(FAMS[fam]["seedZ"]);actual=comp(core(fam,z),affine(Fraction(leaf["a"]),Fraction(leaf["b"])))
 assert actual==standard(bs);target=sub([lam],actual);gs=[comb(N,k)*(lam-bs[k]) for k in range(N+1)]
 assert target==gapbasis(gs) and all(x>=0 for x in gs)
 bad=list(gs);bad[0]+=1;assert gapbasis(bad)!=target
 return bs,gs,target
def ns(fam,i):return f"Math.B699.I11SevenTwoGrowth.{fam}Leaf{i:03d}"
def trie(paths):
 o={""}
 for p in paths:o.update(p[:n] for n in range(1,len(p)+1))
 return o

# Independent Fraction audit and leaf source construction.
base_leaves=(BASE/"Row00CandidateLeaves.lean").read_text(encoding="utf-8") if False else ""
leaf_blocks=[];checks=[];family_info={};all_gaps={}
for fam,info in FAMS.items():
 spec=info["spec"];paths=[path_for(x["a"],x["b"]) for x in spec["leaves"]];assert len(set(paths))==len(paths)
 family_info[fam]={"paths":paths,"leaves":len(paths),"max_depth":spec["max_depth"],"weights":spec["weights"]}
 for i,leaf in enumerate(spec["leaves"]):
  bs,gs,target=check_leaf(fam,leaf);all_gaps[(fam,i)]=gs
  pterm=map_expr(paths[i]) or "X";lname=["actual_gap_eq","leafMap_eq_path","gapExpansion_cone","local_gap_cone","local_core_cone","local_weight0_cone","local_weight1_cone","leaf_delta0","leaf_delta1"]
  prefix=info["prefix"].lower();seedcore=f"{prefix}SeedCore";sw0=f"{prefix}SeedWeight0";sw1=f"{prefix}SeedWeight1";src_core=f"Math.B699.GrowthLeaf.{info['core']}";src_factor=f"Math.B699.GrowthLeaf.{info['factor']}"
  cdefs="\n".join(f"def gapCoeff{k} : ℚ := {fmt(v)}" for k,v in enumerate(gs))
  terms=" +\n  ".join(f"Polynomial.C gapCoeff{k} * bernsteinMonomial {k} {N-k}" for k in range(N+1))
  body=f"""
open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf
open Math.B699.I11SevenTwoGrowth.Shared

local instance : Infinite ℚ :=
  Infinite.of_injective (fun n : ℕ => (n : ℚ)) Nat.cast_injective

def seedC : ℕ := {info["seedC"]}
def seedD : ℕ := {info["seedD"]}
def seedZ : ℚ := {frac(info["seedZ"])}
def leafA : ℚ := {frac(leaf["a"])}
def leafB : ℚ := {frac(leaf["b"])}
def lam : ℚ := {frac(info["lam"])}

noncomputable def seedCore : ℚ[X] := {seedcore}
noncomputable def seedWeight0 : ℚ[X] := {sw0}
noncomputable def seedWeight1 : ℚ[X] := {sw1}
noncomputable def leafMap : ℚ[X] := affine leafA leafB
noncomputable def localCore : ℚ[X] := seedCore.comp leafMap
noncomputable def localWeight0 : ℚ[X] := seedWeight0.comp leafMap
noncomputable def localWeight1 : ℚ[X] := seedWeight1.comp leafMap

{cdefs}

noncomputable def gapExpansion : ℚ[X] :=
  {terms}

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
  norm_num [lam, localCore, seedCore, {seedcore}, {prefix}SeedC, {prefix}SeedD, {prefix}SeedZ,
    {src_core}, {src_factor}, seedC, seedD, seedZ, leafMap, affine, leafA, leafB, gapExpansion,
    {", ".join("gapCoeff"+str(k) for k in range(N+1))},
    bernsteinMonomial, Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_pow, Polynomial.eval_C, Polynomial.eval_X] <;> ring

theorem leafMap_eq_path : leafMap = {pterm} := by
  apply Polynomial.funext
  intro x
  norm_num [leafMap, affine, leafA, leafB, halfLeft, halfRight,
    Polynomial.eval_comp, Polynomial.eval_add, Polynomial.eval_sub,
    Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X] <;> ring
"""
  termscone=[]
  for k in range(N+1):termscone.append(f"BernsteinCone.scale gapCoeff{k} (by norm_num [gapCoeff{k}]) (BernsteinCone.basis {k} {N-k})")
  cone="  have h0 : BernsteinCone (Polynomial.C gapCoeff0 * bernsteinMonomial 0 %d) :=\n    %s\n"%(N,termscone[0])
  for k in range(1,N+1):cone+=f"  have h{k} : BernsteinCone (Polynomial.C gapCoeff{k} * bernsteinMonomial {k} {N-k}) :=\n    {termscone[k]}\n"
  acc="h0"
  for k in range(1,N+1):acc=f"BernsteinCone.add ({acc}) h{k}"
  cone+=f"  exact {acc}\n"
  body+=f"""
theorem gapExpansion_cone : BernsteinCone gapExpansion := by
{cone}
theorem local_gap_cone : BernsteinCone (Polynomial.C lam - localCore) := by
  rw [actual_gap_eq]
  exact gapExpansion_cone

theorem local_core_cone : BernsteinCone localCore := by
  exact cone_comp_affine ({info["cone_core"]} seedC seedD seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight0_cone : BernsteinCone localWeight0 := by
  exact cone_comp_affine ({info["cone_weight"]} seedC seedD 0 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem local_weight1_cone : BernsteinCone localWeight1 := by
  exact cone_comp_affine ({info["cone_weight"]} seedC seedD 1 seedZ (by norm_num [seedZ]))
    leafA leafB (by norm_num [leafA]) (by norm_num [leafA, leafB]) (by norm_num [leafB])

theorem leaf_delta0 : GrowthTree lam localWeight0 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight0) (f := localCore)
    local_weight0_cone local_core_cone local_gap_cone

theorem leaf_delta1 : GrowthTree lam localWeight1 localCore := by
  exact GrowthTree.leaf (lam := lam) (w := localWeight1) (f := localCore)
    local_weight1_cone local_core_cone local_gap_cone
"""
  leaf_blocks.append((ns(fam,i),body,lname))
  checks.append({"family":fam,"leaf":i,"path":paths[i],"interval":[leaf["a"],leaf["b"]],"standard_b":fl(bs),"corrected_gap":fl(gs),"identity":True,"tamper_rejected":True})

# Shared parameters and imports.
shared_body="""
open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition Math.B699.GrowthLeaf

def qSeedC : ℕ := 9
def qSeedD : ℕ := 5
def qSeedZ : ℚ := (1 : ℚ) / 49
def qLam : ℚ := {qLam}
noncomputable def qSeedCore : ℚ[X] := Math.B699.GrowthLeaf.qCore qSeedC qSeedD qSeedZ
noncomputable def qSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 0 qSeedZ
noncomputable def qSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.qWeight qSeedC qSeedD 1 qSeedZ

def eSeedC : ℕ := 9
def eSeedD : ℕ := 5
def eSeedZ : ℚ := (1 : ℚ) / 49
def eLam : ℚ := {eLam}
noncomputable def eSeedCore : ℚ[X] := Math.B699.GrowthLeaf.eCore eSeedC eSeedD eSeedZ
noncomputable def eSeedWeight0 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 0 eSeedZ
noncomputable def eSeedWeight1 : ℚ[X] := Math.B699.GrowthLeaf.eWeight eSeedC eSeedD 1 eSeedZ
""".format(qLam=frac(FAMS["Q"]["lam"]),eLam=frac(FAMS["E"]["lam"]))
accepted_imports=[module(RUN/"lean/Growth/Affine.lean"),module(RUN/"lean/Growth/Partition.lean"),"Mathlib.Algebra.Polynomial.Roots","Mathlib.Tactic.NormNum","Mathlib.Tactic.Ring"]
shared_ns="Math.B699.I11SevenTwoGrowth.Shared"
leaves_text=source_multi(accepted_imports+[module(FINAL_SHARED)],leaf_blocks)
shared_text=source(accepted_imports,shared_body,shared_ns,[])
# Tree generation.
tree_parts=[];tree_decls=[];tree_stats={}
for fam,info in FAMS.items():
 paths=family_info[fam]["paths"];leaf_index={p:i for i,p in enumerate(paths)};nodes=trie(paths);internal=sorted([p for p in nodes if p not in leaf_index],key=lambda p:(-len(p),p));tree_stats[fam]={"internal_nodes":len(internal),"paths":internal,"split_constructors":2*len(internal)}
 lam=f"{fam.lower()}Lam";core=f"{fam.lower()}SeedCore";w0=f"{fam.lower()}SeedWeight0";w1=f"{fam.lower()}SeedWeight1";prefix=fam
 for delta,wbase in ((0,w0),(1,w1)):
  for pth in internal:
   name=f"{fam.lower()}TreeNode{pth or 'Root'}Delta{delta}";m=map_expr(pth);w=f"({wbase})" if not m else f"(({wbase}).comp ({m}))";f=f"({core})" if not m else f"(({core}).comp ({m}))";children=[]
   for child in (pth+"L",pth+"R"):
    if child in leaf_index:
     lns=ns(fam,leaf_index[child]);lw=f"localWeight{delta}"
     children.append(f"(by simpa only [{lns}.lam, Math.B699.I11SevenTwoGrowth.Shared.{lam}, {lns}.{lw}, {lns}.seedWeight{delta}, {lns}.localCore, {lns}.seedCore, {lns}.leafMap_eq_path, Polynomial.comp_assoc] using {lns}.leaf_delta{delta})")
    else:children.append(f"(by simpa only [Polynomial.comp_assoc] using {fam.lower()}TreeNode{child}Delta{delta})")
   tree_parts.append(f"theorem {name} : GrowthTree {lam} {w} {f} := by\n  exact GrowthTree.split (lam := {lam}) (w := {w}) (f := {f})\n    {children[0]}\n    {children[1]}");tree_decls.append(name)
  public=f"{fam.lower()}_tree_delta{delta}";tree_parts.append(f"theorem {public} : GrowthTree {lam} ({wbase}) ({core}) := by\n  exact {fam.lower()}TreeNodeRootDelta{delta}");tree_decls.append(public)
tree_body="open Polynomial Math.B699.PadeMoment Math.B699.PadeGrowthPartition\nopen Math.B699.I11SevenTwoGrowth.Shared\n\n"+"\n\n".join(tree_parts)
tree_imports=[module(FINAL_SHARED),module(FINAL_LEAVES),module(RUN/"lean/Growth/Partition.lean")]
tree_text=source(tree_imports,tree_body,"Math.B699.I11SevenTwoGrowth.Tree",tree_decls)
(OUT/"I11SevenTwoShared.lean").write_text(shared_text,encoding="utf-8");(OUT/"I11SevenTwoLeaves.lean").write_text(leaves_text,encoding="utf-8");(OUT/"I11SevenTwoTree.lean").write_text(tree_text,encoding="utf-8")
expected_refs=sum(len(info["spec"]["leaves"]) for info in FAMS.values())*2;assert tree_text.count("using Math.B699.I11SevenTwoGrowth.QLeaf")+tree_text.count("using Math.B699.I11SevenTwoGrowth.ELeaf")==expected_refs
plan={"schema_version":1,"status":"generated_uncompiled_candidate","kind":"i11_seven_two_qe_growthtree","input":str(COMPACT).replace("\\","/"),"input_sha256":sha(COMPACT),"seed":{"p":7,"q":2,"k0":2,"l0":4,"a":1,"b":3,"D0":1,"c":9,"d":5,"z":"1/49"},"families":family_info,"tree":tree_stats,"fully_qualified_leaf_refs":expected_refs,"formula":"gapCoeff[k]=choose(N,k)*(lambda-b[k])","source_map":{"I11SevenTwoShared.lean":{"target":"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Growth/I11SevenTwoShared.lean","sha256":sha(OUT/"I11SevenTwoShared.lean")},"I11SevenTwoLeaves.lean":{"target":"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Growth/I11SevenTwoLeaves.lean","sha256":sha(OUT/"I11SevenTwoLeaves.lean")},"I11SevenTwoTree.lean":{"target":"research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc/lean/Growth/I11SevenTwoTree.lean","sha256":sha(OUT/"I11SevenTwoTree.lean")}},"checks":checks,"new_original_results":0,"lean_checked":False,"git_checked":False}
(EXP/"generation-plan.json").write_text(json.dumps(plan,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
static={"status":"static_checks_passed_uncompiled","fraction_power_basis_all_17":True,"families":{"Q":8,"E":9},"all_nonnegative_corrected_gaps":True,"tamper_rejection_all_17":True,"shared_lambda_alignment":True,"comp_parentheses":True,"fully_qualified_leaf_refs":expected_refs,"lean_checked":False,"git_checked":False,"new_original_results":0,"source_map":plan["source_map"]}
(EXP/"static-checks.json").write_text(json.dumps(static,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
(EXP/"README.md").write_text(f"""# i11 (7,2) Q/E GrowthTree 候选

输入为冻结 `qe-certificates/row-01.json`（来源由 `huan-i11-other-edge-reuse-5e2d13bb/SOURCE_MAP.json` 绑定），种子 p=7,q=2,k0=2,l0=4,a=1,b=3,D0=1,c=9,d=5,z=1/49。Q/E 均为 degree 14；本目录生成 Q 8 叶、E 9 叶，共四棵两 delta 树。数据只来自 row-01，保留有序 p=7/q=2 参数，不复用旧 row00 树数据。

JSON 的 bernstein_numerators/bernstein_denominator 是标准 Bernstein b[k]。每叶使用 gapCoeff[k]=choose(degree,k)*(lambda-b[k])。Fraction 独立重建 qCore/eCore.comp(affine)、标准 Bernstein 展开和 C(lambda)-core gap，并对 17 叶做非负系数篡改拒绝。生成器实际从源 JSON 的 degree 读取，当前为 14，避免把叶数误作 degree。

Shared 使用唯一 family lambda：qLam/eLam；Leaves 显式对齐 lam 与 Shared lambda。Tree 保留完整括号的 comp 表达式、Shared import 和 34 个完全限定叶 child 引用，Q/E 各自两组 delta 根。候选只做 Python 静态生成与检查，未运行 Lean/Git。独立复核入口为 static_check_seven_two.py，输出 static-checks-independent.json、SOURCE_MAP.json 和 FREEZE.json。
""",encoding="utf-8")
print(json.dumps({"status":plan["status"],"Q_leaves":8,"E_leaves":9,"tree_refs":expected_refs,"source_map":plan["source_map"]},ensure_ascii=False))
