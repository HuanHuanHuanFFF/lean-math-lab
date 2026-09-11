from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,time
OUT=Path(__file__).resolve().parent
SOURCE=OUT/'log-free-selector-results.json'
raw=json.loads(SOURCE.read_text());started=time.perf_counter();grid=[2**k for k in range(14)]
upper={}
for p in (2,3,5,7):
 for b in grid:
  z=p**b;a=z.bit_length()-1
  if z>2**a:a+=1
  assert z<=2**a
  upper[p,b]=(a,z.bit_length())
rows=[]
for row in raw['rows']:
 s=row['seed'];c=s['c'];Z=row['integer_threshold_base_Z'];M=row['minimum_index_at_Y0'];candidates=[]
 for v in grid:
  zv=Z**v;u=zv.bit_length()-1
  assert 2**u<=zv<2**(u+1)
  ends=[]
  for p,k,w in [(s['p'],s['k0'],row['weights'][0]),(s['q'],s['l0'],row['weights'][1])]:
   alpha=1000-w;options=[]
   for b in grid:
    a,pbits=upper[p,b]
    rate=u*b*alpha-a*v*(1000*c*k)
    base=b*(15359*alpha)-a*(1000*c*k*M)
    look=u*b*alpha*M-(2*alpha*b*v+a*v*(1000*c*k*(M+1)))
    if rate>0 and base>=0 and look>=0:
     options.append({'prime':p,'seed_exponent':k,'weight':w,'alpha':alpha,'a':a,'b':b,
      'p_pow_b_upper_bits':pbits,'dyadic_upper_bits':a+1,
      'rate_exponent_margin':rate,'base_exponent_margin':base,'lookahead_exponent_margin':look})
   if not options:break
   ends.append(min(options,key=lambda x:(x['p_pow_b_upper_bits'],x['b'])))
  if len(ends)==2:
   maxbits=max([zv.bit_length(),u+1]+[t['dyadic_upper_bits'] for t in ends])
   candidates.append({'seed':s,'weights':row['weights'],'Z':Z,'M':M,'u':u,'v':v,
    'Z_pow_v_bits':zv.bit_length(),'lower_dyadic_bits':u+1,'ends':ends,'maximum_basis_bits':maxbits})
 assert candidates,'bounded grid failed'
 rows.append(min(candidates,key=lambda x:(x['maximum_basis_bits'],x['v'],sum(t['b'] for t in x['ends']))))
payload={'utc':datetime.now(timezone.utc).isoformat(),'status':'exact short integer power bases and integer exponent margins; not Lean accepted',
 'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),'b_v_search_grid':grid,
 'no_float_or_log_for_proposals_or_decisions':True,'rows':rows,
 'maximum_basis_bits':max(x['maximum_basis_bits'] for x in rows),'seconds':time.perf_counter()-started,
 'worker_lean_invocations':0,'CRT_pairs_enumerated':0,'new_original_indices':[]}
(OUT/'short-power-bases.json').write_text(json.dumps(payload,indent=2)+'\n',encoding='utf-8')
print(json.dumps(payload,indent=2))
