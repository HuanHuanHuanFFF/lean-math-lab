#!/usr/bin/env python3
"""Exact receiver for NF77/NF83 and SAT126..144.
Uses alternate M2 root gates, Newton rather than Lagrange jets, exact rational
kernels, and nonzero integer minors certified modulo verified primes.
"""
from __future__ import annotations
import argparse,json,math,os,subprocess,sys,time
from pathlib import Path
from fractions import Fraction as F
from concurrent.futures import ProcessPoolExecutor
from accept_core import ReceiverModel,need,save,key,isprime,determinant_mod,bareiss,loadpoly,packpoly,enc,affine_space
from check_families import verify_affine,verify_signature,line_restriction,combine
from sat_product import verify_product
from fastfield import determinant
ROOT=Path(__file__).resolve().parents[1]
def read(name):return json.loads((ROOT/'evidence'/name).read_text())

def check_kernel(A,rec,nc):
 vs=[[F(*x) for x in v] for v in rec['kernel_vectors']];free=rec['kernel_free_columns']
 need(len(vs)>0 and len(free)==len(vs) and len(set(free))==len(free),'missing or duplicate independent kernels')
 need(all(0<=j<nc for j in free) and all(len(v)==nc for v in vs),'kernel dimensions')
 need(all(v[f]==int(i==j) for i,v in enumerate(vs) for j,f in enumerate(free)),'kernel independence')
 for v in vs:
  den=math.lcm(*(x.denominator for x in v));vv=[int(x*den) for x in v]
  need(all(sum(a*b for a,b in zip(row[:-1],vv))==0 for row in A),'false exact kernel')
 upper=nc-len(vs);rr,cc,p=rec['rows'],rec['columns'],rec['prime'];n=len(rr)
 need(isprime(p) and n==len(cc) and n>upper and len(set(rr))==n and len(set(cc))==n,'invalid augmented lower bound')
 need(nc in cc and all(0<=j<=nc for j in cc) and all(0<=i<len(A) for i in rr),'bad augmented minor indices')
 M=[[A[i][j]%p for j in cc] for i in rr];d=determinant(M,p)
 need(d!=0 and d==rec['determinant_mod_prime'],'nonzero augmented minor missing')
 need(upper==rec['coefficient_rank_upper'] and n==rec['augmented_rank_lower'],'inconsistent reported rank bounds')
 return {'index':rec['index'],'kernel_dimension':len(vs),'coefficient_rank_upper':upper,'augmented_rank_lower':n,'prime':p,'minor':d}

def verify_group(name,out,tools):
 start=time.monotonic();g=read(name+'_gates.json');cs=read(name+'_minors.json');q=g['q'];h=g['h'] or 0
 need((h in range(3,9) and q in (13,14)) or (h==0 and q in (21,22,23,24)),'unadopted group')
 alt=out/(name+'_regenerated.json');cmd=[str(tools/('nf_gate' if h else 'sat_gate')),str(q)]+([str(h)] if h else [])+['m2',str(alt)]
 with (out/(name+'_gate.log')).open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
 gg=json.loads(alt.read_text());actual={key(c):c['genus_cost'] for c in gg['records']};keys=[key(c) for c in g['records']]
 need(len(actual)==len(gg['records']) and len(keys)==len(set(keys)) and set(keys)==set(actual),'root-gate coverage mismatch')
 need(all(c['genus_cost']==actual[key(c)] for c in g['records']),'genus cost mismatch')
 need(g['stats']==gg['stats'] and g['genus_histogram']==gg['genus_histogram'],'complete root-gate counts mismatch')
 alt.unlink() # Its canonical content has been checked against the archived gate; no duplicate evidence.
 nc=(q-2)**2;need(cs['parameters']==nc and cs['q']==q,'matrix dimension')
 partition=[c['index'] for c in cs['certificates']]+[c['index'] for c in cs['exceptions']]
 need(len(partition)==len(set(partition)) and set(partition)==set(range(len(keys))),'jet partition gap')
 models={};minors=[];cross=[]
 for k,c in enumerate(cs['certificates']):
  p=c['prime'];need(isprime(p),'composite certificate modulus')
  if p not in models:models[p]=ReceiverModel(q,p)
  _,A=models[p].build(g['records'][c['index']]);rr=c['rows']
  need(len(rr)==nc+1 and len(set(rr))==len(rr) and all(isinstance(i,int) and 0<=i<len(A) for i in rr),'bad full augmented minor')
  M=[A[i] for i in rr];det=determinant(M,p);need(det!=0,'zero full augmented minor');minors.append([c['index'],p,det])
  if k==0:
   need(det==determinant_mod(M,p),'independent NumPy integer elimination mismatch');z={'order':nc+1,'prime':p,'minor':det}
   if name=='nf13_h8':
    _,Ai=ReceiverModel(q).build(g['records'][c['index']]);d=bareiss([Ai[i] for i in rr]);need(d and d%p==det,'Bareiss integer crosscheck');z['integer_determinant']=str(d)
   cross.append(z)
  if (k+1)%5000==0:print('ACCEPT_PROGRESS',name,k+1,flush=True)
 ranks=[];products=[];affine=[]
 for e in cs['exceptions']:need(e['record']==g['records'][e['index']],'exception root mismatch')
 if cs['exceptions']:
  rf=ROOT/'evidence'/(name+'_rank_certificates.json');rs=json.loads(rf.read_text()) if rf.exists() else []
  pf=ROOT/'evidence'/(name+'_product_certificate.json');ps=json.loads(pf.read_text()) if pf.exists() else []
  sf=ROOT/'evidence'/(name+'_solutions.json');ss=json.loads(sf.read_text())['solutions'] if sf.exists() else []
  ix=[r['index'] for r in rs+ps+ss];need(set(ix)=={e['index'] for e in cs['exceptions']} and len(ix)==len(set(ix)),'unresolved exceptional systems')
  M=ReceiverModel(q)
  for r in rs:
   _,A=M.build(g['records'][r['index']]);ranks.append(check_kernel(A,r,nc))
  for p in ps:products.append(verify_product(g['records'][p['index']],p))
  for s in ss:
   need(s['record']==g['records'][s['index']],'affine root scope');_,a=verify_affine(s,q);affine.append(a)
 result={'name':name,'q':q,'h':h,'counts':g['stats'],'parameters':nc,'full_augmented_minors':minors,'low_rank_exclusions':ranks,'unique_products':products,'affine_spaces':affine,'crosschecks':cross}
 save(out/(name+'_accepted.json'),result);print('ACCEPT_GROUP',name,'residual',len(keys),'full',len(minors),'lowrank',len(ranks),'products',len(products),'affine',len(affine),'seconds',round(time.monotonic()-start,3),flush=True)
 return {k:v for k,v in result.items() if k not in ('full_augmented_minors','crosschecks')}

def verify_families(q,out):
 ss=read(f'nf{q}_h3_solutions.json')['solutions'];cand=read(f'nf{q}_candidate_families.json')['solutions'];tag=f'nf{6*q-1}'
 need(cand==[s for s in ss if not s['common_source_lines']],'candidate filter')
 sigs=read(tag+'_signatures.json')['families'];peel=read(tag+'_stratum_peeling.json')['families'];need(len(cand)==len(sigs)==len(peel),'family coverage')
 ans=[]
 for fam,sg,pg in zip(cand,sigs,peel):
  need(fam['index']==sg['index']==pg['index'],'family ordering');Ps=list(map(loadpoly,fam['polynomials']));v=verify_signature(fam,Ps,sg)
  need(v['mu']==6*q-1 and v['z']>=14,'true all-source signature');need([len(r) for r in fam['record']['roots']]==[q-1,q,q,q,q,q],'unique deficit row')
  saved={tuple(z['weighted_orders']):z for z in pg['strata']};ret=[]
  for z in v['strata']:
   ws=tuple(z['weighted_orders']);eq=[[F(*a) for a in e] for e in z['equations']];aff=affine_space(eq,len(Ps)-1);need(aff is not None,'empty stratum');b,dirs,_=aff
   polys=[combine(Ps,b)]
   for vv in dirs:
    P={}
    for c,H in zip(vv,Ps[1:]):
     for k,a in H.items():P[k]=P.get(k,F(0))+c*a
    polys.append({k:a for k,a in P.items() if a})
   lines=[t for t in range(9) if all(not line_restriction(P,t) for P in polys)];old=saved[ws]
   need(lines==old['all_equality_locus_line_factors'] and old['parameter_base']==[enc(a) for a in b] and old['parameter_directions']==[[enc(a) for a in vv] for vv in dirs],'whole-stratum factor/locus')
   refined=[]
   for t in (2,3,4):
    rows=fam['record']['roots'];m=rows[2*t-3].count(t*t);S=sum(row.count(t*(r-t)) for r,row in zip(range(3,9),rows))
    if S-m+ws[t-2]>2*q:refined.append(t)
   need(refined==old['refined_line_forced'] and set(refined)<=set(lines),'TLINE contradiction')
   ret.append({'weighted_orders':ws,'kappa':z['kappa'],'parameter_dimension':len(dirs),'lines':lines,'refined':refined,'base':[enc(a) for a in b],'directions':[[enc(a) for a in vv] for vv in dirs]})
  need(len(ret)==len(saved),'parameter stratum partition')
  remaining=[z for z in ret if not z['lines']];ans.append({'index':fam['index'],'parameters':len(Ps)-1,'z':v['z'],'mu':v['mu'],'source_signature':v['source_multiplicities'],'strata':ret,'unpeeled_count':len(remaining),'unpeeled_kappa_lower':[min(z['kappa'][i] for z in remaining) for i in range(3)] if remaining else None,'low_kappa6_unpeeled':[z for z in remaining if z['kappa'][1]==0]})
  print('ACCEPT_FAMILY',q,fam['index'],'z',v['z'],'strata',len(ret),'unpeeled',len(remaining),flush=True)
 save(out/(tag+'_families_accepted.json'),ans);return {'q':q,'affine_candidates':len(ans),'parameter_strata':sum(len(x['strata']) for x in ans),'unpeeled_strata':sum(x['unpeeled_count'] for x in ans),'low_kappa6_strata':sum(len(x['low_kappa6_unpeeled']) for x in ans)}

def worker(args):return verify_group(*args)
def main():
 p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);p.add_argument('--tools',type=Path,required=True);p.add_argument('--names',nargs='*');p.add_argument('--workers',type=int,default=3);p.add_argument('--families',action='store_true');a=p.parse_args();need(not a.out.exists(),'existing output directory');a.out.mkdir(parents=True)
 names=a.names or [f'nf{q}_h{h}' for q in (13,14) for h in range(3,9)]+[f'sat{q}' for q in range(21,25)]
 with ProcessPoolExecutor(max_workers=a.workers) as ex:rs=list(ex.map(worker,[(name,a.out,a.tools) for name in names]))
 fs=[verify_families(q,a.out) for q in (13,14)] if a.families else []
 save(a.out/'GEOMETRY_SUMMARY.json',{'status':'PASS_NEW_LISTED_GEOMETRY','groups':rs,'families':fs})
if __name__=='__main__':
 sys.set_int_max_str_digits(0);main()
