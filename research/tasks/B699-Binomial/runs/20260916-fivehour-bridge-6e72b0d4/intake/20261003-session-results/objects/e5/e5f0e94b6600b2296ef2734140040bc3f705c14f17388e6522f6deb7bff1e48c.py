import json,hashlib,math,itertools,zipfile,datetime,shutil
from pathlib import Path
import sympy as s
ROOT=Path('/mnt/data/B699-C-R11-EIGHTJET-CONTENT012-20261003')
W=Path('/mnt/data/c11_work')
MON=[(a,t-a) for t in range(7) for a in range(t,-1,-1)]
N,X=s.symbols('N X')
def rows(v):return [[a,b,c] for (a,b),c in zip(MON,v) if c]
def pv(f):
 p=s.Poly(f,N,X);return [int(p.coeff_monomial(N**a*X**b)) for a,b in MON]
def canonical(o):return json.dumps(o,ensure_ascii=False,sort_keys=True,separators=(',',':'))
def nz_rewrite(v,z):
 if z['type']=='sign':return {'type':'shift_sign'}
 if z['type']=='factor':
  return {'type':'factor_product','constant':z['constant'],'factors':[{'terms':rows(f['v']),'power':f['e'],'proof':{'type':'shift_sign'} if f['proof']['type']=='sign' else {'type':'source_unit','source':f['proof']['r']}} for f in z['factors']]}
 if z['type']=='vertical_quotient':
  p=z['parent']; parent=sum(c*N**a*X**b for c,(a,b) in zip(p['v'],MON)); cur=sum(c*N**a*X**b for c,(a,b) in zip(v,MON));ratio=s.cancel(parent/((N-z['h'])*cur));assert ratio.is_Integer and ratio!=0
  return {'type':'lift_nonzero','factor':[[1,0,1],[0,0,-z['h']]],'scalar':int(ratio),'parent_terms':rows(p['v']),'parent_proof':nz_rewrite(p['v'],p['nz'])}
 raise ValueError(z)
LIB={};id_by_blob={}
def add_kernel(v,w,z=None,pair=None):
 ob={'terms':rows(v),'tail_orders':w,'nonzero':nz_rewrite(v,z) if z else {'type':'paired','pair':pair}}
 key=canonical(ob);sha=hashlib.sha256(key.encode()).hexdigest();kid='K'+sha[:16]
 assert kid not in LIB or LIB[kid]==ob
 LIB[kid]=ob;return kid
raw=json.loads((W/'advanced8.json').read_text());special=json.loads((W/'special4.json').read_text())
ns={};txt=(W/'advanced8.py').read_text();exec(txt[:txt.index('\na=json.loads')],ns)
for sp in special:
 r=raw[sp['id']]
 if sp['mode']=='sign':
  z={'v':sp['v'],'weights':sp['weights'],'nz':{'type':'sign'},'bounds':ns['bounds'](sp['v'],sp['weights'])}
  for a,b in z['bounds'].items():
   if b['covers'] and r['chosen'].get(str(a)) is None:r['chosen'][str(a)]=z
  r['covers']=sorted(int(a) for a,z in r['chosen'].items() if z)
PAIRS={};OVERRIDE={}
for sp in special:
 if sp['mode']!='pair':continue
 pid='P'+str(sp['id']);vs=sp['vs'];fs=[sum(c*N**a*X**b for c,(a,b) in zip(v,MON)) for v in vs]
 h=s.gcd(*fs);qs=[s.Poly(s.div(f,h,N,X)[0],N,X).as_expr() for f in fs]
 R=s.resultant(*qs,X);coeff,factors=s.factor_list(R,N)
 PAIRS[pid]={'common_terms':rows(pv(h)),'quotients':[rows(pv(f)) for f in qs], 'resultant_constant':int(coeff),'resultant_factors':[{'terms':[[a,int(c)] for (a,),c in s.Poly(f,N).terms()],'power':e} for f,e in factors]}
 ks=[add_kernel(v,sp['weights'],pair=pid) for v in vs];PAIRS[pid]['kernels']=ks
 OVERRIDE[sp['id']]={'type':'paired','pair':pid,'kernels':ks}
 for v in vs:
  assert all(b['covers'] for b in ns['bounds'](v,sp['weights']).values())
LAY=[]
for r in raw:
 ob={'id':f'E{r["id"]:04d}','slots':r['layout'],'shape':r['shape']}
 if r.get('old'):ob['adopted']=r['old']
 else:
  ob['classes']={}
  for a in ns['META']:
   if r['id'] in OVERRIDE:ob['classes'][str(a)]=OVERRIDE[r['id']]
   else:
    c=r['chosen'].get(str(a))
    if c:
     ob['classes'][str(a)]={'type':'single','kernel':add_kernel(c['v'],c['weights'],c['nz'])}
    else:ob['classes'][str(a)]={'type':'open'}
  if 4 in r['shape']:assert all(d['type']!='open' for d in ob['classes'].values()),r['id']
 LAY.append(ob)
# Retain the smallest unclosed degree-six candidate for every remaining common shape.
orig=json.loads((W/'classcontent8.json').read_text())
RES=[]
for r,ob in zip(raw,LAY):
 if ob.get('adopted') or all(x['type']!='open' for x in ob['classes'].values()):continue
 assert max(ob['shape'])==3
 pr=orig[r['id']]
 RES.append({'id':ob['id'],'slots':ob['slots'],'shape':ob['shape'], 'open_classes':[int(a) for a,d in ob['classes'].items() if d['type']=='open'], 'obstruction_kind':'nonzero_not_certified' if not r.get('candidates') else 'fee_exceeds_adopted_contract_for_these_classes', 'candidate_basis_terms':[rows(v) for v in pr['basis']], 'not_a_recovered_NC_model':True})
# Exact metadata used to reconstruct the known six classes.
meta=[]
SM={352:([2,3,5],[1,1,2]),425:([5,2,3],[1,1,1]),776:([2,5,3],[1,1,2]),1026:([3,5,2],[2,1,1]),1377:([3,2,5],[1,1,1]),1450:([5,3,2],[2,1,1])}
for a,(sig,ga,ss,m) in ns['META'].items():
 meta.append({'a':a,'Gamma':ga,'small_tail':list(ss),'sigma':sig,'p012':SM[a][0],'kappa012':SM[a][1],'minimum_s0s1':m,'NC_n_min':ns['NA'][a]})
obj={'schema':'b699-c-r11-eighth-source-kernels-v1','monomial_convention':'terms [N_power,j_power,integer_coefficient]','classes':meta,'kernels':LIB,'pairs':PAIRS,'layouts':LAY}
(ROOT/'inputs/EIGHT_SOURCE_KERNELS.json').write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,separators=(',',':'))+'\n')
(ROOT/'inputs/OPEN_332_CANDIDATES.json').write_text(json.dumps(RES,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
# Frozen dependencies and local hash-only audit. No old mathematical program is run.
archive=Path('/mnt/data/B699-C-R10-TRIPLEJET012-20261002.zip');sha=hashlib.sha256(archive.read_bytes()).hexdigest();assert sha=='6c3d9013971da12c720343d501c5ad6caf3dea8de14e89c5aee5ddda4b4aebf6'
shutil.copyfile(archive,ROOT/'dependencies/R10_FROZEN.zip')
with zipfile.ZipFile(archive) as z:
 top='B699-C-R10-TRIPLEJET012-20261002/'
 man=z.read(top+'MANIFEST.sha256').decode();checks={}
 for line in man.splitlines():
  h,fn=line.split('  ',1);b=z.read(top+fn);assert hashlib.sha256(b).hexdigest()==h;checks[fn]=h
 for fn in ('HANDOFF.md','PROOFS.md','SOURCE_ADOPTION.md'):
  bb=z.read(top+fn);(ROOT/f'dependencies/R10_{fn}').write_bytes(bb)
  original=Path('/mnt/data/B699-C-R10-TRIPLEJET012-20261002')/fn;assert original.read_bytes()==bb
 (ROOT/'dependencies/R10_COFACTOR_BOUNDS.json').write_bytes(z.read(top+'certificates/COFACTOR_BOUNDS.json'))
 (ROOT/'dependencies/ACTUAL_SMALLPARTS_42.csv').write_bytes(z.read(top+'dependencies/ACTUAL_SMALLPARTS_42.csv'))
 rec={'status':'PASS_HASH_ONLY','archive_sha256':sha,'manifest_members':len(checks),'members_checked':checks,'old_research_program_executed':False,'old_program_replay_claim':'not_repeated_in_R11','local_runtime_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
 (ROOT/'dependencies/R10_LOCAL_HASH_RECEIPT.json').write_text(json.dumps(rec,sort_keys=True,indent=2)+'\n')
print('kernels',len(LIB),'pairs',len(PAIRS),'layouts',len(LAY),'remaining common',len(RES))
from collections import Counter
print('open class counts',Counter(a for r in RES for a in r['open_classes']))
print('open reasons',Counter(r['obstruction_kind'] for r in RES))
print('R10 verified members',len(checks))
# discovery source preservation: not executed by final verifier
for fn in ['probe8.py','discover8.py','content8.py','classcontent8.py','factor_unsigned.py','advanced8.py','special4.py','build_seeds.py']:
 shutil.copyfile(W/fn,ROOT/'discovery'/fn)
for fn in ['probe8.log','discover8.log','factor_unsigned.log','advanced8.log','special4.log']:
 shutil.copyfile(W/fn,ROOT/'logs'/fn)
