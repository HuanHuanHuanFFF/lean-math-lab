from pathlib import Path
import json,re,hashlib,time
from datetime import datetime,timezone
root=Path(__file__).resolve().parent
run=root.parent.parent
base=run.parents[4]
assert base.name=='b699-huan-5e2d13bb'
assert not (root/'FREEZE.json').exists()
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
norm=lambda s:' '.join(s.split())
start_time=time.perf_counter()
def thm(text,name):
 m=re.search(r'^theorem '+re.escape(name)+r'\b(.*?):=',text,re.M|re.S)
 assert m,name
 return norm(m.group(1))
def line_of(text,needle):return text[:text.index(needle)].count('\n')+1
sources={}
def record(path):
 rel=path.relative_to(base).as_posix() if path.is_relative_to(base) else path.as_posix()
 sources[rel]=dict(bytes=path.stat().st_size,sha256=sha(path))
paths=sorted((run/'lean').glob('CrtStage[0-3]Pair*/CompleteComposer.lean'))
assert len(paths)==24
results=[];total_chunks=0;total_append=0;total_arith=0;model_points=0
for path in paths:
 text=path.read_text(encoding='utf-8-sig');record(path)
 folder=path.parent.name;m=re.fullmatch(r'CrtStage([0-3])Pair([2357])([2357])',folder);assert m
 stage,p,q=map(int,m.groups());stage_name=f'Stage{stage:02}'
 head=thm(text,'rectangle_check')
 shape=re.fullmatch(r': rectangleCheck (\d+) (\d+) Stage\d+\.H Stage\d+\.M Stage\d+\.upper (\d+) (\d+) globalData = true',head);assert shape,path
 pp,qq,amax,bmax=map(int,shape.groups());assert (p,q)==(pp,qq)
 expected_head=f': rectangleCheck {p} {q} {stage_name}.H {stage_name}.M {stage_name}.upper {amax} {bmax} globalData = true';assert head==expected_head
 ids=[int(x) for x in re.findall(r'^import .*\.Chunk(\d+)$',text,re.M)]
 count=(amax+7)//8;assert ids==list(range(count))
 assert f'if a < 1 ∨ {amax} < a then outsideCell' in text
 assert 'inverse := 0\n  bounds := fun _ => ⟨0, -1⟩' in text
 branches=[(int(end),int(i)) for end,i in re.findall(r'else if a < (\d+) then Chunk(\d+)\.chunkData a b',text)]
 assert branches==[(1+8*(i+1),i) for i in range(count-1)]
 assert f'else Chunk{count-1:03}.chunkData a b' in text
 chunks=[]
 for i in ids:
  astart=1+8*i;acount=min(8,amax-astart+1);end=astart+acount;assert acount>0
  eqhead=thm(text,f'globalData_eq_{i:03}')
  assert eqhead==f'(a b : ℕ) (ha0 : {astart} ≤ a) (ha1 : a < {end}) : globalData a b = Chunk{i:03}.chunkData a b'
  block=f': blockCheck {p} {q} {stage_name}.H {stage_name}.M {stage_name}.upper {astart} {acount} 1 {bmax} globalData = true'
  assert thm(text,f'global_check_{i:03}')==block
  cp=path.parent/f'Chunk{i:03}.lean';ct=cp.read_text(encoding='utf-8-sig');record(cp)
  assert thm(ct,'chunk_check')==block.replace('globalData','chunkData')
  body=text.split(f'theorem global_check_{i:03}',1)[1].split('\ntheorem ',1)[0].split('\nprivate theorem ',1)[0]
  assert 'exact blockCheck_transfer_data' in body
  assert f"(data := Chunk{i:03}.chunkData) (data' := globalData) Chunk{i:03}.chunk_check" in body
  assert f'(globalData_eq_{i:03} a b ha0 (by omega)).symm' in body
  chunks.append(dict(chunk=i,a_start=astart,a_count=acount,a_end_exclusive=end,b_start=1,b_count=bmax,source=cp.relative_to(run).as_posix(),sha256=sha(cp)))
 assert text.count('exact blockCheck_transfer_data')==count
 # Exact finite check of dispatcher labels, not of any CRT certificate value.
 for a in range(amax+2):
  got=None
  if not (a<1 or amax<a):
   got=next((i for end,i in branches if a<end),count-1)
  wanted=next((x['chunk'] for x in chunks if x['a_start']<=a<x['a_end_exclusive']),None)
  assert got==wanted
  model_points+=1
 prefix_decls=re.findall(r'^theorem prefix_(\d+)\s*:',text,re.M)
 cumulative=[]
 for i in range(1,count):
  left=chunks[i]['a_start']-1;right=chunks[i]['a_count'];total=left+right;next_start=chunks[i]['a_start']
  expected=f': blockCheck {p} {q} {stage_name}.H {stage_name}.M {stage_name}.upper 1 {total} 1 {bmax} globalData = true'
  assert thm(text,f'prefix_{total:03}')==expected
  body=text.split(f'theorem prefix_{total:03}',1)[1].split('\ntheorem ',1)[0]
  assert 'exact append_rows_named' in body
  assert f'(start := 1) (left := {left}) (right := {right}) (next := {next_start}) (total := {total})' in body
  leftproof='global_check_000' if i==1 else f'prefix_{left:03}'
  assert f'{leftproof} global_check_{i:03}' in body
  cumulative.append(total)
 assert list(map(int,prefix_decls))==cumulative
 arithmetic=re.findall(r'\(by decide : (\d+) \+ (\d+) = (\d+)\)',text)
 assert len(arithmetic)==2*(count-1)
 for aa,bb,cc in arithmetic:assert int(aa)+int(bb)==int(cc) and int(cc)<=amax+1
 assert not [l for l in text.splitlines() if re.search(r'\bdecide\b',l) and '(by decide : ' not in l]
 assert 'norm_num' not in text and 'native_decide' not in text
 helper=text.split('private theorem append_rows_named',1)[1].split('\ntheorem ',1)[0]
 assert '{p q H M T start left right next total bStart bCount : ℕ}' in helper
 assert '{data : ℕ → ℕ → CellData}' in helper
 assert 'blockCheck_append_rows hl hr\'' in helper
 assert 'rw [hnext]' in helper and 'rw [htotal] at h' in helper
 tail=text.split('theorem rectangle_check',1)[1].split('\nend ',1)[0]
 assert f'unfold rectangleCheck\n  exact prefix_{amax:03}' in tail
 # Consumer grid is the same total function, with the same dimensions and metadata.
 consumer=run/f'lean/I11CRTConsumers/{stage_name}.lean';consumer_text=consumer.read_text(encoding='utf-8-sig');record(consumer)
 pq=str(p)+str(q)
 assert f'def grid{pq} : Math.B699.I11CRTSixPair.PairGridData where\n  amax := {amax}\n  bmax := {bmax}\n  cells := Math.B699.CRTStage{stage}Pair{pq}.CompleteComposer.globalData' in consumer_text
 assert thm(consumer_text,f'grid{pq}_pair_check')==f': Math.B699.I11CRTSixPair.pairGridCheck {p} {q} {stage_name}.H {stage_name}.M {stage_name}.upper grid{pq} = true'
 assert f'using Math.B699.CRTStage{stage}Pair{pq}.CompleteComposer.rectangle_check' in consumer_text
 results.append(dict(stage=stage,p=p,q=q,amax=amax,bmax=bmax,cells=amax*bmax,signed_rows=21*amax*bmax,chunks=chunks,append_steps=count-1,small_decides=len(arithmetic),default_a_outside=True,b_outside_note='Not uniformly forced tooutsideCell; forwarded to its chunk, outside every checked rectangle.',transfer_line=line_of(text,'theorem global_check_000'),append_helper_line=line_of(text,'private theorem append_rows_named'),rectangle_line=line_of(text,'theorem rectangle_check'),source=path.relative_to(run).as_posix(),sha256=sha(path)))
 total_chunks+=count;total_append+=count-1;total_arith+=len(arithmetic)
assert total_chunks==147 and total_append==123 and total_arith==246
for p in [run/'lean/CrtGrid/Grid.lean',run/'lean/I11CrtStep/Meta.lean',run/'lean/I11CrtStages/NumericMetadata.lean',base/'lean-toolchain']:
 record(p)
core=Path('D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/src/lean/Lean')
for rel in ['Elab/Tactic/Unfold.lean','Meta/Tactic/Unfold.lean','Meta/Tactic/Simp/Types.lean']:record(core/rel)
summary=dict(utc=datetime.now(timezone.utc).isoformat(),status='PASS_COMPOSER_STRUCTURE_NOT_LEAN',tables=24,chunks=total_chunks,append_steps=total_append,small_arithmetic_decides=total_arith,dispatcher_label_points=model_points,whole_table_decides=0,explicit_whole_block_or_cell_unfolds_in_composers=0,all_consumer_mappings_match=True,seconds=time.perf_counter()-start_time,Lean_runs=0,CRT_numeric_runs=0,new_B_original_results=0)
for name,obj in [('RESULTS.json',results),('CHECKS.json',summary),('SOURCE_BINDINGS.json',sources)]:
 (root/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(summary,ensure_ascii=False))
