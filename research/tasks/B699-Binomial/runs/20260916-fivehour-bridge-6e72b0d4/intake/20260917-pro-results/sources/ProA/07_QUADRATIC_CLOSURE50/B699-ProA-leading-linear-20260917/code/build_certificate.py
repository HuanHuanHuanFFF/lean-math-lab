"""Discovery packaging only; main receiver does not import this program or SymPy."""
from pathlib import Path
from fractions import Fraction as Q
import json
from probe_weight5 import BS
ROOT=Path(__file__).resolve().parents[1]
d=json.loads((ROOT/'evidence/weight5_probe.json').read_text())
f=json.loads((ROOT/'evidence/weight5_factors.json').read_text())
fmap={tuple(r['vector']):r for r in f['factored']}
PRIMES=[2,3,5,7,11,13,17,19,23,29,31]
def smooth(v):
 if v==0:return False
 v=abs(v)
 for p in PRIMES:
  while v%p==0:v//=p
 return v==1
def ev(v,n,x):return sum(c*n**a*x**b for c,(a,b) in zip(v,BS))
res=[];counts={}
for rr in d['candidates']:
 v=rr['vector'];rec={'v':v}
 vals=[ev(v,1,0),ev(v,2,0),ev(v,2,1)]
 if all(vals):rec.update(route='first_windows',values=vals)
 else:
  fs=fmap[tuple(v)]
  if len(fs['factors'])>1 or fs['factors'][0][1]>1:
   rec.update(route='low_weight_product',scalar=fs['scalar'],factors=fs['factors'])
  elif smooth(v[0]):rec.update(route='C31_constant')
  elif v[0]==0 and smooth(v[1]):rec.update(route='C31_linear_origin')
  elif all(ev(v,0,x)%25 for x in range(25)):rec.update(route='mod25')
  else:
   a,b,c=v[-1],v[9],v[5]
   xs=[Q(0),Q(1,4)]
   if a and 0<Q(-b,2*a)<Q(1,4):xs.append(Q(-b,2*a))
   ys=[a*x*x+b*x+c for x in xs]
   assert all(y>0 for y in ys) or all(y<0 for y in ys)
   rec.update(route='leading_sign',critical=[[x.numerator,x.denominator] for x in xs],values=[[x.numerator,x.denominator] for x in ys])
 counts[rec['route']]=counts.get(rec['route'],0)+1;res.append(rec)
cert={'schema':1,'prime':1000003,'basis':[list(z) for z in BS],
 'bounds':{'G_coeff_bits':1242694,'G_terms':23562,'G_N_degree':305,'G_X_degree':152,
 'factor_bits':1244000,'branch_bits':1260000,'consumer_bits':1250000,'entry_bits':14000001,
 'small5_bits':220,'bootstrap_bits':8300,'bootstrap_factor_bits':8400,
 'ordinary_double_bits':1500},
 'expected':{'patterns':18900,'rank11_patterns':18828,'rank10_patterns':72,'distinct_rank11':16440,
 'routes':counts,'six_double_patterns':3240,'six_double_rank12':3147,'six_double_rank11':91,'six_double_rank10':2},
 'candidates':res}
(ROOT/'evidence/certificate.json').write_text(json.dumps(cert,separators=(',',':')))
print(counts,'bytes',(ROOT/'evidence/certificate.json').stat().st_size)
