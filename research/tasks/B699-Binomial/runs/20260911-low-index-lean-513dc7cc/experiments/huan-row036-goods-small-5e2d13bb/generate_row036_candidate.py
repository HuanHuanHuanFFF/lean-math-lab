
import hashlib,json,re
from pathlib import Path
REPO=Path.cwd()
RUN=Path("research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc")
EXP=RUN/"experiments/huan-row036-goods-small-5e2d13bb"
OUT=EXP/"candidate/lean/rows/Row036T"
OLD_ROOT=RUN/"lean/rows/Row036J2"
NEW_ROOT=RUN/"lean/rows/Row036T"
OLD_MOD="research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row036J2"
NEW_MOD="research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.rows.Row036T"
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
EXP.mkdir(parents=True,exist_ok=True); OUT.mkdir(parents=True,exist_ok=True)
old_files={p.name:sha(p) for p in sorted(OLD_ROOT.glob("Block*.lean"))}; old_files["Original.lean"]=sha(OLD_ROOT/"Original.lean")
old_block007=(OLD_ROOT/"Block007.lean").read_text(encoding="utf-8")
old_imports=re.findall(r"(?m)^import\s+([^\s]+)",old_block007)
a=old_block007.index("theorem row036_layer000_checked :"); b=old_block007.rindex("end B699LowIndex.LowIndexLean513dc7cc")
layer_body=old_block007[a:b].strip()
data=(RUN/"lean/Row036Data.lean").read_text(encoding="utf-8")
goods=re.findall(r"\{ lower := \d+, upper := \d+, witness := RowWitness\.(?:topPrime|largeDivisor) \d+ \}",data[data.index("def row036_goods :"):data.index("def row036_layers :")])
if len(goods)!=192: raise RuntimeError(f"expected 192 goods, got {len(goods)}")
chunks=[goods[i:i+16] for i in range(0,len(goods),16)]
cn=[f"row036_goods_chunk{i:03d}" for i in range(len(chunks))]
cc=[x+"_checked" for x in cn]
def source(imports,body,prints):
 t="".join("import "+x+"\n" for x in dict.fromkeys(imports))
 t+="\nset_option maxRecDepth 4096\nset_option exponentiation.threshold 1000000\n\n"
 t+="namespace B699LowIndex.LowIndexLean513dc7cc\n\n"+body.rstrip()+"\n\nend B699LowIndex.LowIndexLean513dc7cc\n\n"
 return t+"\n".join("#print axioms B699LowIndex.LowIndexLean513dc7cc."+x for x in prints)+"\n"
records=[]
def add(name,text,kind,imports,declarations):
 p=OUT/name; p.parent.mkdir(parents=True,exist_ok=True)
 if p.exists() and p.read_text(encoding="utf-8")!=text: raise RuntimeError("different candidate: "+str(p))
 p.write_text(text,encoding="utf-8",newline="\n")
 final=NEW_ROOT/name
 records.append({"candidate_path":str(p.relative_to(EXP)).replace("\\","/"),
  "final_path":str(final).replace("\\","/"),
  "module":NEW_MOD+"."+Path(name).with_suffix("").as_posix().replace("/","."),
  "kind":kind,"imports":list(dict.fromkeys(imports)),"declarations":list(declarations),
  "bytes":len(text.encode("utf-8")),"sha256":hashlib.sha256(text.encode("utf-8")).hexdigest()})
chunk_defs=[]; chunk_checks=[]
for i,(items,name,check) in enumerate(zip(chunks,cn,cc)):
 chunk_defs.append(f"def {name} : List GoodSegment := [\n"+"".join("  "+x+("," if j+1<len(items) else "")+"\n" for j,x in enumerate(items))+"]")
 names=[f"row036_good{i*16+j:03d}_checked" for j in range(len(items))]
 chunk_checks.append(f"theorem {check} :\n    {name}.all (goodSegmentCheck 36 11 24) = true := by\n  simp only [{name}, List.all_cons, List.all_nil,\n    "+",\n    ".join(names)+", Bool.true_and]")
chunks_list="def row036_goods_chunks : List (List GoodSegment) := [\n  "+",\n  ".join(cn)+"\n]"
flat_eq="theorem row036_goods_chunks_eq : row036_goods_chunks.flatten = row036_goods := by\n  rfl"
concat=" ++ ".join(cn)
concat_eq=f"theorem row036_goods_concat_eq : {concat} = row036_goods := by\n  rfl"
goods_checked="theorem row036_goods_checked :\n    row036.goods.all (goodSegmentCheck row036.height.i row036.height.r row036.height.s) = true := by\n  rw [row036_goods_concat_eq]\n  simp only [List.all_append,\n    "+",\n    ".join(cc)+", Bool.true_and]"
block007_body="\n\n".join(chunk_defs+[chunks_list,flat_eq,concat_eq]+chunk_checks+[goods_checked,layer_body])
block007_decls=cn+cc+["row036_goods_chunks","row036_goods_chunks_eq","row036_goods_concat_eq","row036_goods_checked"]+[f"row036_layer{i:03d}_checked" for i in range(4)]
add("Block007.lean",source(old_imports,block007_body,block007_decls),"goods_split_and_original_layer000_003",old_imports,block007_decls)
for number in range(8,18):
 name=f"Block{number:03d}.lean"; text=(OLD_ROOT/name).read_text(encoding="utf-8")
 for n in range(7,18): text=text.replace(f"{OLD_MOD}.Block{n:03d}",f"{NEW_MOD}.Block{n:03d}")
 imports=re.findall(r"(?m)^import\s+([^\s]+)",text)
 decls=re.findall(r"(?m)^\s*(?:theorem|def|abbrev|opaque)\s+([A-Za-z_][A-Za-z0-9_]*)",text)
 add(name,text,"remapped_later_block",imports,decls)
original=(OLD_ROOT/"Original.lean").read_text(encoding="utf-8")
for n in range(7,18): original=original.replace(f"{OLD_MOD}.Block{n:03d}",f"{NEW_MOD}.Block{n:03d}")
imports=re.findall(r"(?m)^import\s+([^\s]+)",original); decls=re.findall(r"(?m)^\s*(?:theorem|def|abbrev|opaque)\s+([A-Za-z_][A-Za-z0-9_]*)",original)
add("Original.lean",original,"remapped_original_root",imports,decls)
modules={x["module"] for x in records}; decls=[d for x in records for d in x["declarations"]]
if len(modules)!=len(records): raise RuntimeError("candidate modules not unique")
if len(decls)!=len(set(decls)): raise RuntimeError("candidate declarations not unique")
for x in records:
 for imp in x["imports"]:
  if "Row036J2.Block" in imp:
   number=int(re.search(r"Block(\d+)$",imp).group(1))
   if number>=7: raise RuntimeError("old post007 import: "+imp)
  if "Row036T." in imp and imp not in modules: raise RuntimeError("missing T import: "+imp)
 text=(EXP/x["candidate_path"]).read_text(encoding="utf-8")
 if re.search(r"\b(?:axiom|native_decide|sorry\w*|admit)\b|Lean\.ofReduceBool",text): raise RuntimeError("forbidden token")
old_after={p.name:sha(p) for p in sorted(OLD_ROOT.glob("Block*.lean"))}; old_after["Original.lean"]=sha(OLD_ROOT/"Original.lean")
if old_after!=old_files: raise RuntimeError("Row036J2 changed")
orig_stmt=lambda text:text[text.index("theorem common_i036 :"):text.index(":= by",text.index("theorem common_i036 :"))+5].strip()
if orig_stmt(original)!=orig_stmt((OLD_ROOT/"Original.lean").read_text(encoding="utf-8")): raise RuntimeError("statement changed")
if "row036_goods_chunks_eq" not in block007_body or "List.all_append" not in block007_body: raise RuntimeError("goods aggregate missing")
plan={"schema_version":1,"status":"generated_uncompiled_candidate","kind":"row036_goods_chunk_repair_candidate",
 "target_index":36,"final_root":str(NEW_ROOT/"Original.lean").replace("\\","/"),"new_original_results":0,
 "goods_count":192,"chunk_size":16,"chunk_count":len(chunks),
 "goods_source":str(RUN/"lean/Row036Data.lean").replace("\\","/"),"goods_source_sha256":sha(RUN/"lean/Row036Data.lean"),
 "old_row036j2_sha256":old_files,"candidate_source_files":records,
 "reused_prefix":[{"final_path":str(OLD_ROOT/f"Block{i:03d}.lean").replace("\\","/"),
  "source_sha256":old_files[f"Block{i:03d}.lean"],"reuse_status":"requires_successful_prefix_evidence; failed_overall_evidence_forbidden"} for i in range(7)],
 "metadata_location":"Row036J2/Block000.lean; Block007 contained no Metadata declaration",
 "static_checks":{"goods_chunks_192":True,"chunk_concat_original_required":True,"all_chunk_good_theorems_reused":True,
  "list_all_append_aggregate":True,"old_post007_imports_removed":True,"row036j2_source_unchanged":True,
  "original_statement_exact":True,"lean_checked":False,"new_original_results":0}}
(EXP/"generation-plan.json").write_text(json.dumps(plan,ensure_ascii=False,indent=2)+"\n",encoding="utf-8",newline="\n")
print(json.dumps({"status":plan["status"],"candidate_files":len(records),"candidate_bytes":sum(x["bytes"] for x in records),"goods_chunks":len(chunks),"reused_prefix_blocks":7,"lean_checked":False},ensure_ascii=False))
