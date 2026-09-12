from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
OLD=RUN.parent/'20260910-pade-three-closure-4edad426/delivery/results'
HIGH=RUN/'experiments/huan-i11-cubic-block-extension-5e2d13bb'
schema=json.loads((OUT/'SCHEMA.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
rows=[]
for spec in schema['pairs']:
 p,q=spec['p'],spec['q'];oldpath=OLD/f'block_11_{p}_{q}.json';highpath=HIGH/f'high_block_11_{p}_{q}.json'
 old=json.loads(oldpath.read_text());high=json.loads(highpath.read_text())
 assert (old['p'],old['q'],old['D'])==(p,q,10) and (high['p'],high['q'],high['D'])==(p,q,10)
 assert old['first_exponent']==spec['astart'] and old['small_exponent_height_bits']==spec['cut']
 assert old['source_height_bits']==4096 and high['target_height_bits']==15360
 def hv(v):return int(v,16) if isinstance(v,str) else int(v)
 prefix=[(b['K'],b['L'],b['B'],hv(b['inverse_hex'])) for b in old['blocks']]
 # Only the allowed pure numerical fields are read from each high block.
 suffix=[(b['u'],b['L'],b['b0'],hv(b['v'])) for b in high['blocks']]
 assert suffix[0][0]==old['max_exponent']+1
 cursor=spec['astart']
 for u,L,b0,v in prefix+suffix:
  assert u==cursor and min(u,L,b0,v)>=0
  cursor=u+L+1
 assert cursor==spec['amax']+1
 assert p**spec['amax']<2**15360<=p**(spec['amax']+1)
 rows.append(dict(spec,old_source=str(oldpath),old_sha256=sha(oldpath),high_source=str(highpath),high_sha256=sha(highpath),old_count=len(prefix),high_count=len(suffix),combined_count=len(prefix)+len(suffix),start=spec['astart'],stop=cursor,recipe='decode old K,L,B,inverse_hex; append high u,L,b0,v; map each tuple directly to BlockDatum; no custom checker imported'))
assert sum(x['old_count'] for x in rows)==309 and sum(x['high_count'] for x in rows)==78
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'read-only pure-data binding and exact continuity/endpoints only; no numerical block checks accepted here','rows':rows,'total_old_blocks':309,'total_high_blocks':78,'total_blocks':387,'root_container':'Math.B699.I11CubicCompression.SixPairRows','original_blockCheck_sound_only':True,'custom_extension_checker_adopted':False,'generators_invoked':False,'worker_lean_invocations':0,'new_original_indices':[]}
(OUT/'DATA_BINDING.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'total':result['total_blocks'],'pairs':[{'pair':[x['p'],x['q']],'old':x['old_count'],'high':x['high_count'],'stop':x['stop'],'cut':x['cut']} for x in rows]},indent=2))
