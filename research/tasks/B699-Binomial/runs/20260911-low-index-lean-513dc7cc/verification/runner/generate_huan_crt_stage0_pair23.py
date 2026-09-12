from pathlib import Path
from collections import Counter
from datetime import datetime,timezone
from time import perf_counter
import hashlib,json
RUN=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
OUT=RUN/'experiments/huan-crt-stage0-pair23-full-5e2d13bb'
OUT.mkdir(exist_ok=False)
(OUT/'PLAN.md').write_text('Complete stage0 (2,3), a=1..108,b=1..68. Fourteen disjoint blocks, at most eight a rows each. This supplies one of six scalar CRT prerequisites after true Lean acceptance; B0/19 and initial height/full six-pair stage remain unresolved. Use hierarchical a-to-b lookup; no full-grid decide in composition. All signed displacements and actual height caps are retained.\n',encoding='utf-8')
DATA=RUN/'experiments/huan-i11-crt-descent-probe-5e2d13bb/result.json'
stage=json.loads(DATA.read_text())['stages'][0];H,M,T=stage['H'],stage['M'],stage['output_upper'];assert H==2**109 and stage['power_counts']['2']==108 and stage['power_counts']['3']==68
BASE='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.'
DEST=OUT/'candidate/lean/CrtStage0Pair23';DEST.mkdir(parents=True)
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def cell(a,b):
 P,Q=2**a,3**b;v=pow(P,-1,Q);ca=min(M,(H-1)//P);cc=min(M,(H-1)//Q);rows=[]
 for d in range(-10,11):
  residue=(d*v)%Q;rho=residue or Q;assert (P*rho-d)%Q==0;c0=(P*rho-d)//Q;lo=max(0,(1-c0+P-1)//P);hi=min((ca-rho)//Q,(cc-c0)//P)
  assert lo<=0 or c0+P*(lo-1)<1
  assert ca<rho+Q*(hi+1) or cc<c0+P*(hi+1)
  assert hi<lo or min(P*(rho+Q*hi),Q*(c0+P*hi))+10<=T
  rows.append((d,lo,hi))
 mode=Counter((lo,hi) for d,lo,hi in rows).most_common(1)[0][0]
 return dict(a=a,b=b,inverse=v,default=list(mode),exceptions=[dict(d=d,lo=lo,hi=hi) for d,lo,hi in rows if (lo,hi)!=mode])
def bounds_expr(c):
 tail='⟨'+str(c['default'][0])+', '+str(c['default'][1])+'⟩'
 for e in reversed(c['exceptions']):tail=f"if d = ({e['d']} : ℤ) then ⟨{e['lo']}, {e['hi']}⟩ else "+tail
 return tail
started=perf_counter();chunks=[];all_rows=0;digest=hashlib.sha256()
for idx,start in enumerate(range(1,109,8)):
 count=min(8,109-start);name=f'Chunk{idx:03d}';cells=[cell(a,b) for a in range(start,start+count) for b in range(1,69)]
 lines=[f'import {BASE}CrtGrid.Grid',f'import {BASE}I11CrtStages.NumericMetadata','','set_option autoImplicit false','set_option relaxedAutoImplicit false','set_option maxRecDepth 100000','set_option maxHeartbeats 5000000','set_option exponentiation.threshold 512','',f'namespace Math.B699.CRTStage0Pair23.{name}','open Math.B699.CRTGrid','open B699LowIndex.I11CrtStageMetadata','','def outsideCell : CellData where','  inverse := 0','  bounds := fun _ => ⟨0, -1⟩','']
 for c in cells:
  a,b=c['a'],c['b'];binder='d' if c['exceptions'] else '_d'
  lines += [f'def cellA{a}B{b} : CellData where',f"  inverse := {c['inverse']}",f'  bounds := fun {binder} => '+bounds_expr(c),'']
  digest.update(json.dumps(c,sort_keys=True,separators=(',',':')).encode()+b'\n');all_rows+=21
 for a in range(start,start+count):
  lines += [f'def rowA{a} (b : ℕ) : CellData :=']
  for b in range(1,69):lines += [('  if ' if b==1 else '  else if ')+f'b = {b} then cellA{a}B{b}']
  lines += ['  else outsideCell','']
 lines += ['def chunkData (a b : ℕ) : CellData :=']
 for a in range(start,start+count):lines += [('  if ' if a==start else '  else if ')+f'a = {a} then rowA{a} b']
 lines += ['  else outsideCell','','theorem chunk_check :','    blockCheck 2 3 Stage00.H Stage00.M Stage00.upper',f'      {start} {count} 1 68 chunkData = true := by','  decide +kernel','',f'end Math.B699.CRTStage0Pair23.{name}',f'#print axioms Math.B699.CRTStage0Pair23.{name}.chunk_check','']
 p=DEST/(name+'.lean');p.write_text('\n'.join(lines),encoding='utf-8');metadata=OUT/(name+'.json');metadata.write_text(json.dumps(dict(name=name,aStart=start,aCount=count,bStart=1,bCount=68,cells=cells),separators=(',',':'))+'\n',encoding='utf-8');chunks.append(dict(name=name,aStart=start,aCount=count,bStart=1,bCount=68,cells=len(cells),signed_rows=21*len(cells),source=p.relative_to(OUT).as_posix(),source_sha256=sha(p),metadata=metadata.name,metadata_sha256=sha(metadata)))
# Independent reload verification of all compressed d maps and every rectangle key.
seen=set()
for item in chunks:
 x=json.loads((OUT/item['metadata']).read_text())
 for c in x['cells']:
  key=c['a'],c['b'];assert key not in seen;seen.add(key);P,Q=pow(2,key[0]),pow(3,key[1]);v=c['inverse'];assert P*v%Q==1;ca,cc=min(M,(H-1)//P),min(M,(H-1)//Q);extra={e['d']:(e['lo'],e['hi']) for e in c['exceptions']}
  for d in range(-10,11):
   rho=(d*v)%Q or Q;C0=(P*rho-d)//Q;true_lo=max(0,-((C0-1)//P));true_hi=min((ca-rho)//Q,(cc-C0)//P);assert extra.get(d,tuple(c['default']))==(true_lo,true_hi)
assert seen=={(a,b) for a in range(1,109) for b in range(1,69)} and all_rows==154224
result=dict(status='generated_exactly_rechecked_not_Lean',created_utc=datetime.now(timezone.utc).isoformat(),p=2,q=3,H=H,M=M,T=T,amax=108,bmax=68,chunk_count=14,total_cells=len(seen),total_signed_rows=all_rows,input=DATA.as_posix(),input_sha256=sha(DATA),grid_source_sha256=sha(RUN/'lean/CrtGrid/Grid.lean'),metadata_source_sha256=sha(RUN/'lean/I11CrtStages/NumericMetadata.lean'),chunks=chunks,compressed_cells_sha256=digest.hexdigest(),reload_checks='all154224 exact tuples match',lookup='hierarchical a then b, with explicit else branches',seconds=perf_counter()-started,new_B_original_results=0)
(OUT/'manifest.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:result[k] for k in ['status','chunk_count','total_cells','total_signed_rows','seconds']}))