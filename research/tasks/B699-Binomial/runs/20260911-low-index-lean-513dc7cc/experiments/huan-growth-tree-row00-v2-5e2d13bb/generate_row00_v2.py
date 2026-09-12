#!/usr/bin/env python3
from __future__ import annotations
import hashlib,json,re
from fractions import Fraction
from math import comb
from pathlib import Path
EXP=Path(__file__).resolve().parent;RUN=EXP.parents[1];BASE=RUN/"lean/Growth"
COMPACT=RUN/"experiments/huan-pade-growth-certificates-5e2d13bb/certificates-compact/row-00.json";OUT=EXP/"candidate/lean/Growth";OUT.mkdir(parents=True,exist_ok=True)
DATA=json.loads(COMPACT.read_text(encoding="utf-8"));Q=DATA["Q"];N=Q["degree"];sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
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
def qcore(z):
 x=[Fraction(0),Fraction(1)];one=[Fraction(1),Fraction(-1)];qf=[Fraction(1),z-1]
 return mul(mul(x,power(one,2)),power(qf,2))
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
def gap_for(leaf):
 den=int(leaf["bernstein_denominator"]);bs=[Fraction(int(x),den) for x in leaf["bernstein_numerators"]];lam=Fraction(Q["lambda"])
 actual=comp(qcore(Fraction(5,512)),affine(Fraction(leaf["a"]),Fraction(leaf["b"])))
 assert actual==standard(bs);target=sub([lam],actual);gs=[comb(N,k)*(lam-bs[k]) for k in range(N+1)]
 assert target==gapbasis(gs) and all(x>=0 for x in gs)
 tampered=list(gs);tampered[0]+=1;assert gapbasis(tampered)!=target
 return bs,gs,target
leaves=(BASE/"Row00CandidateLeaves.lean").read_text(encoding="utf-8");shared=(BASE/"Row00CandidateShared.lean").read_bytes();tree=(BASE/"Row00CandidateTree.lean").read_bytes();example=(BASE/"LeafExample.lean").read_text(encoding="utf-8")
all_gaps=[];checks=[]
for i,leaf in enumerate(Q["leaves"]):
 bs,gs,target=gap_for(leaf);all_gaps.append(gs);ns=f"Math.B699.GrowthTreeRow00Candidate.QLeaf{i:03d}";m=re.search(rf"namespace {re.escape(ns)}\n(.*?)(?=\nend {re.escape(ns)}\n)",leaves,re.S);assert m
 block=m.group(1)
 for k,v in enumerate(gs):
  block,n=re.subn(rf"^def gapCoeff{k} : ℚ := .*$",f"def gapCoeff{k} : ℚ := {fmt(v)}",block,count=1,flags=re.M);assert n==1
 leaves=leaves[:m.start(1)]+block+leaves[m.end(1):]
 checks.append({"leaf":i,"namespace":ns,"interval":[leaf["a"],leaf["b"]],"standard_b":fl(bs),"corrected_gap":fl(gs),"target_power_coeffs":fl(target),"identity":True,"tamper_rejected":True})
accepted=[]
for k in range(N+1):
 m=re.search(rf"def gapCoeff{k} : ℚ := \((-?\d+) : ℚ\) / (\d+)",example);assert m;accepted.append(Fraction(int(m.group(1)),int(m.group(2))))
assert accepted==all_gaps[0];assert leaves.count("theorem actual_gap_eq")==13 and leaves.count("theorem leaf_delta0")==13 and leaves.count("theorem leaf_delta1")==13
assert tree.count(b"using Math.B699.GrowthTreeRow00Candidate.QLeaf")==26;assert shared==(BASE/"Row00CandidateShared.lean").read_bytes();assert tree==(BASE/"Row00CandidateTree.lean").read_bytes()
for name,data in [("Row00CandidateShared.lean",shared),("Row00CandidateLeaves.lean",leaves.encode()),("Row00CandidateTree.lean",tree)]: (OUT/name).write_bytes(data)
plan={"schema_version":2,"status":"generated_uncompiled_candidate","kind":"row00_q_growthtree_corrected_gap_coefficients","formula":"gapCoeff[k] = choose(N,k) * (lambda - b[k]); JSON fields are standard Bernstein b[k]","compact_path":str(COMPACT).replace("\\","/"),"compact_sha256":sha(COMPACT),"baseline_sha256":{"shared":sha(BASE/"Row00CandidateShared.lean"),"leaves":sha(BASE/"Row00CandidateLeaves.lean"),"tree":sha(BASE/"Row00CandidateTree.lean")},"leaf_count":13,"tree_fully_qualified_leaf_refs":26,"degree":N,"leaf_checks":checks,"leafexample_exact":fl(accepted),"new_original_results":0,"lean_checked":False,"git_checked":False}
for f in OUT.glob("*.lean"):plan.setdefault("candidate_sha256",{})[f.name]=sha(f)
(EXP/"generation-plan.json").write_text(json.dumps(plan,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
static={"status":"static_checks_passed_uncompiled","fraction_power_basis_all_13":True,"all_nonnegative_corrected_gaps":True,"tamper_rejection_all_13":True,"leafexample_exact_match":True,"shared_baseline_preserved":True,"tree_26_fully_qualified_refs":True,"lean_checked":False,"git_checked":False,"new_original_results":0,"candidate_sha256":plan["candidate_sha256"],"compact_sha256":plan["compact_sha256"]}
(EXP/"static-checks.json").write_text(json.dumps(static,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
(EXP/"README.md").write_text(f"""# row00 Q corrected GrowthTree candidate v2

本目录是失败候选的隔离纠正版，只写入本 experiments 目录；没有修改 frozen JSON、当前 lean/Growth 集成、旧 evidence、Lean 或 Git。

JSON 的 bernstein_numerators/bernstein_denominator 表示局部 qCore.comp(affine) 的标准 Bernstein 系数 b[k]。目标 gap 的 Bernstein-monomial 系数为：

gapCoeff[k] = choose(N,k) * (lambda - b[k])

旧候选直接把 b[k] 当 gapCoeff，导致第 0 叶在 x=0 时右侧为 0、左侧为 lambda。v2 对全部 13 叶使用上述精确公式。第 0 叶 6 个结果与已接受 LeafExample 完全一致：

{fl(accepted)}

每叶使用独立 Fraction 多项式重建 qCore.comp(affine) 与标准 Bernstein 展开，再验证 C(lambda)-localCore 与修正 gap basis 逐项相等。每叶把 gapCoeff[0] 增加 1 做篡改测试；保持系数非负但恒等式检查拒绝该篡改。

Shared 和 Tree 从当前 primary 集成基线按字节复制；Tree 保留 26 个完全限定 QLeaf 引用，Leaves 只替换 13 叶 gapCoeff。候选仍未运行 Lean。
""",encoding="utf-8")
print(json.dumps({"status":plan["status"],"leaves":13,"tree_refs":26,"candidate_sha256":plan["candidate_sha256"]},ensure_ascii=False))
