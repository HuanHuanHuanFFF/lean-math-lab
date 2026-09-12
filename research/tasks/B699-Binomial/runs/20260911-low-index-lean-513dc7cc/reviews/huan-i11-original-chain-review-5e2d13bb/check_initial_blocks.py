"""Read-only exact diagnostic of the actual six initial cubic block lists. Not Lean acceptance."""
from pathlib import Path
import json,re,time,datetime,sys
OUT=Path(__file__).resolve().parent;RUN=OUT.parents[1];ROOT=RUN.parents[4];LEAN=RUN/'lean'
start=time.monotonic();issues=[];defs={};locations={}
man=json.loads((OUT/'source-manifest-initial.json').read_text(encoding='utf-8'))
for rel in man['files']:
 if '/CubicBatches/' not in rel and '/CubicData/' not in rel:continue
 txt=(ROOT/rel).read_text(encoding='utf-8-sig');ns=re.search(r'^namespace (\S+)',txt,re.M)
 if not ns:continue
 for key,expr in re.findall(r'^def (\w+) : List Math\.B699\.CubicBlockCover\.BlockDatum :=\s*(.*?)(?=\n\n)',txt,re.M|re.S):
  full=ns[1]+'.'+key;defs[full]=expr.strip();locations[full]=rel
cache={}
def rows(full):
 if full in cache:return cache[full]
 expr=defs[full]
 if expr.startswith('['):
  parsed=[(int(u),int(L),int(b),int(v,0)) for u,L,b,v in re.findall(r'\{ u := (\d+), L := (\d+), b0 := (\d+), v := (0x[\da-fA-F]+|\d+) \}',expr)]
  assert len(parsed)==expr.count('{'),full
 else:
  parsed=[]
  for ref in expr.split('++'):
   ref=ref.strip();ref=ref if '.' in ref else full.rsplit('.',1)[0]+'.'+ref
   parsed+=rows(ref)
 cache[full]=parsed;return parsed
def ck(ok,kind,detail):
 if not ok:issues.append({'kind':kind,'detail':detail})
entry=(LEAN/'I11Compress/Compression.lean').read_text(encoding='utf-8-sig')
parameters=[tuple(map(int,x)) for x in re.findall(r'pairCheck (\d+) (\d+) (\d+) (\d+) (\d+) (\d+) \(\(\s*2\s*:\s*ℕ\) \^ (\d+)\)',entry)]
assert len(parameters)==6,parameters
stats=[]
for p,q,w,a0,amax,cut,hpow in parameters:
 full=f'Math.B699.CubicDataConsumersV4.Pair{p}{q}.rows{p}{q}';data=rows(full);next_a=a0
 ck(2<=p and 2<=q and 1<=a0 and 2**hpow<=p**(amax+1) and w<2**cut and p**(3*(a0-1))<(2**cut-w)**2,'pair_constants',(p,q))
 for ix,(u,L,b0,v) in enumerate(data):
  ck(u==next_a,'contiguous_block',(p,q,ix,next_a,u));next_a=u+L+1
  P=p**u;Q=q**b0
  ck(u>=1 and b0>=1 and w<P and Q**3<=(P-w)**2 and P*v%Q==1,'block_metadata',(p,q,ix,u,L,b0))
  rhs=p**(u+3*L)
  for d in range(-w,w+1):
   residue=v*d%Q or Q
   ck(rhs<residue**2,'residue_inequality',(p,q,ix,d))
 ck(next_a==amax+1,'final_exclusive_endpoint',(p,q,next_a,amax+1))
 stats.append({'pair':[p,q],'block_count':len(data),'start':a0,'stop_exclusive':next_a,'cut_power2':cut,'signed_residue_checks':len(data)*(2*w+1),'actual_root':full,'source_file':locations[full]})
result={'kind':'independent exact finite diagnostic; not Lean acceptance','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'elapsed_seconds':round(time.monotonic()-start,3),'pairs':stats,'block_count':sum(s['block_count'] for s in stats),'signed_residue_checks':sum(s['signed_residue_checks'] for s in stats),'issues':issues}
(OUT/('initial-block-diagnostics-replay-'+datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'.json')).write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print(json.dumps(result,ensure_ascii=False,indent=2));sys.exit(1 if issues else 0)
