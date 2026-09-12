#!/usr/bin/env python3
from __future__ import annotations
import hashlib,json,re,time
from datetime import datetime,timezone
from pathlib import Path
EXP=Path(__file__).resolve().parent;RUN=EXP.parents[1]
OLD=RUN.parent/"20260910-pade-three-closure-4edad426"/"delivery";TARGETS=OLD/"code/block_targets.py";CHECKER=OLD/"code/check_targets.py";RESULTS=OLD/"results";SELECTED=RESULTS/"block_11_2_3.json";TARGET_LEAN=RUN/"lean/CubicBlockSample.lean"
PAIR_NAMES=["block_11_2_3","block_11_2_5","block_11_2_7","block_11_3_5","block_11_3_7","block_11_5_7"];sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
def read_inputs():
 t=TARGETS.read_text(encoding="utf-8");c=CHECKER.read_text(encoding="utf-8")
 assert "for dd in range(-D,D+1)" in t and "r=min(((dd*v)%Q or Q)" in t
 assert "residue=(shift*v)%Q" in c and "if residue==0:residue=Q" in c
 return {str(TARGETS).replace("\\","/"):sha(TARGETS),str(CHECKER).replace("\\","/"):sha(CHECKER)},{str((RESULTS/(n+".json"))).replace("\\","/"):sha(RESULTS/(n+".json")) for n in PAIR_NAMES}
def verify():
 raw=json.loads(SELECTED.read_text(encoding="utf-8"));assert raw["i"]==11 and raw["p"]==2 and raw["q"]==3 and raw["D"]==10
 b=raw["blocks"][0];u=int(b["K"]);L=int(b["L"]);b0=int(b["B"]);w=int(raw["D"]);v=int(b["inverse_hex"],16);p,q=2,3;P=p**u;Q=q**b0
 assert (P*v)%Q==1 and Q**3 <= (P-w)**2 < q**(3*(b0+1))
 rs=[]
 for d in range(-w,w+1):
  r=(v*d)%Q
  if r==0:r=Q
  rs.append({"d":d,"rho":r,"rho_square":r*r,"bound":p**(u+3*L),"passes":r*r>p**(u+3*L)})
 assert len(rs)==21 and all(x["passes"] for x in rs) and next(x["rho"] for x in rs if x["d"]==0)==Q
 assert (P*(v+1))%Q!=1 and not all(x["rho_square"]>p**(u+3*(L+1)) for x in rs)
 return raw,b,{"i":11,"p":p,"q":q,"u":u,"L":L,"b0":b0,"w":w,"v":v,"P":P,"Q":Q,"inverse_ok":True,"boundary_ok":True,"bound":p**(u+3*L),"residues":rs,"inverse_tamper_rejected":True,"boundary_tamper_rejected":True}
def lean_source(d):
 diffs=", ".join(str(x) for x in range(-10,11));vals=", ".join(str(x["rho"]) for x in d["residues"])
 out=[f"""import Mathlib.Data.Int.Basic
import Mathlib.Data.List.Basic
import Mathlib.Tactic.Decide
import Mathlib.Tactic.NormNum

set_option maxRecDepth 4096

namespace Math.B699.CubicBlockSample

def p : Nat := {d["p"]}
def q : Nat := {d["q"]}
def u : Nat := {d["u"]}
def L : Nat := {d["L"]}
def b0 : Nat := {d["b0"]}
def w : Nat := {d["w"]}
def v : Nat := {d["v"]}
def P : Nat := p ^ u
def Q : Nat := q ^ b0
def differences : List Int := [{diffs}]
def rho (d : Int) : Nat :=
  let r := Int.toNat (((v : Int) * d) % (Q : Int))
  if r = 0 then Q else r
def expectedRho : List Nat := [{vals}]

theorem inverse_check : (P * v) % Q = 1 := by
  norm_num [P, Q, p, q, u, b0, v]
theorem boundary_check : Q ^ 3 ≤ (P - w) ^ 2 ∧ (P - w) ^ 2 < q ^ (3 * (b0 + 1)) := by
  norm_num [P, Q, p, q, u, b0, w]
theorem differences_length : differences.length = 21 := by decide
theorem rho_values : List.map rho differences = expectedRho := by
  norm_num [differences, expectedRho, rho, P, Q, p, q, u, b0, v]
theorem d_m10 : rho (-10) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]
"""
]
 for x in range(-9,11):
  name=f"d_neg{abs(x)}" if x<0 else f"d_pos{x}"
  out.append(f"""theorem {name} : rho ({x}) ^ 2 > p ^ (u + 3 * L) := by
  norm_num [rho, P, Q, p, q, u, L, b0, v]
""")
 out.append("""theorem d_zero_uses_Q : rho 0 = Q := by
  norm_num [rho, Q, q, b0, v]
def checks : List Bool := differences.map (fun d => decide (rho d ^ 2 > p ^ (u + 3 * L)))
theorem checks_length : checks.length = 21 := by decide
end Math.B699.CubicBlockSample
""")
 return "\n".join(out)
def main():
 t=time.perf_counter();source_hashes,pair_hashes=read_inputs();raw,original,d=verify();EXP.mkdir(parents=True,exist_ok=True);lean=lean_source(d);(EXP/"candidate").mkdir(parents=True,exist_ok=True);(EXP/"candidate/CubicBlockSample.lean").write_text(lean,encoding="utf-8");sm={"candidate/CubicBlockSample.lean":{"target":str(TARGET_LEAN).replace("\\","/"),"sha256":sha(EXP/"candidate/CubicBlockSample.lean"),"bytes":len(lean.encode())}}
 r={"status":"independent_block_sample_passed","selected":{"source":str(SELECTED).replace("\\","/"),"block_index":0,"original_entry":original},"interface":{"p":"Nat","q":"Nat","u":"Nat","L":"Nat","b0":"Nat","w":"Nat","v":"Nat","P":"p^u","Q":"q^b0","inverse":"(P*v)%Q=1","rho":"Int.toNat(((v:Int)*d)%(Q:Int)); zero maps to Q","d_range":[-10,10]},"verified":d,"input_hashes":{"block_targets.py":source_hashes[str(TARGETS).replace("\\","/")],"check_targets.py":source_hashes[str(CHECKER).replace("\\","/")],"six_pair_results":pair_hashes},"source_map":sm,"cost":{"elapsed_seconds":time.perf_counter()-t,"candidate_bytes":len(lean.encode())},"tamper":{"inverse_v_plus_1_rejected":True,"boundary_L_plus_1_rejected":True},"lean_checked":False,"git_checked":False,"native_decide_used":False,"axiom_used":False,"sorry_used":False}
 (EXP/"sample.json").write_text(json.dumps(r,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
 st={"status":"static_checks_passed_uncompiled","selected_block_small":True,"six_pair_inputs_hashed":True,"21_d_complete":True,"inverse_check":True,"boundary_check":True,"minimum_positive_zero_Q":True,"tamper_inverse_rejected":True,"tamper_boundary_rejected":True,"no_native_decide":True,"no_axiom_sorry":True,"lean_checked":False,"git_checked":False}
 (EXP/"static-checks.json").write_text(json.dumps(st,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
 (EXP/"source-map.json").write_text(json.dumps({"inputs":{"block_targets.py":source_hashes[str(TARGETS).replace("\\","/")],"check_targets.py":source_hashes[str(CHECKER).replace("\\","/")]},"six_pair_results":pair_hashes,"candidate":sm},ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
 (EXP/"README.md").write_text(f"""# Cubic block sample data

本目录选取旧 delivery 的最小完整 block：results/block_11_2_3.json 第 0 条，p=2、q=3、u=45、L=1、b0=18、w=10、v=0xa65ff23（十进制 {d["v"]}）。原 block 只存 K/L/B/inverse；本候选独立补出完整 21 个 d、rho、u、b0、L 和边界常量。

独立标准库检查验证了 (P*v) % Q = 1、Q^3 ≤ (P-w)^2 < q^(3*(b0+1))、全部 d=-10..10 的 rho^2 > p^(u+3L)，并确认 d=0 的最小正代表是 Q。v+1 逆元篡改和 L+1 边界篡改均被拒绝。

Lean 候选是 candidate/CubicBlockSample.lean，只含 Nat/Int 常量、norm_num/decide 候选证明和 21 项枚举接口；未运行 Lean。与 pade_construction 的接口为 p,q,u,L,b0,w,v，P=p^u、Q=q^b0、rho 使用 Int.toNat 的有符号余数并将 0 映射为 Q。

原 block_targets.py、check_targets.py 和六对 i=11 结果文件的 SHA 保存在 sample.json/source-map.json。生成耗时 {r["cost"]["elapsed_seconds"]:.6f} 秒，候选大小 {r["cost"]["candidate_bytes"]} bytes。
""",encoding="utf-8")
 print(json.dumps({"status":r["status"],"u":d["u"],"L":d["L"],"b0":d["b0"],"v":d["v"],"d_count":21,"candidate_bytes":len(lean.encode())},ensure_ascii=False))
if __name__=="__main__":main()
