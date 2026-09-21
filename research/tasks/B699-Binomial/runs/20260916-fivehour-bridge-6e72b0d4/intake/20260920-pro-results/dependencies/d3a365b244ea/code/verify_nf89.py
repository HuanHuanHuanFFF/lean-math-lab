#!/usr/bin/env python3
"""NF89 tail receiver. Adapted from frozen verify_new.py; only q=15,h=4..8.
New gate regeneration uses M2 and independent pivots; ordinary jets use Newton.
No discovery module is imported. Exact kernels prove coefficient-rank upper bounds.
"""
from __future__ import annotations
import argparse,json,math,subprocess,sys,time
from pathlib import Path
from fractions import Fraction as F
from concurrent.futures import ProcessPoolExecutor
from accept_core import ReceiverModel,need,save,key,isprime,determinant_mod,bareiss
from fastfield import determinant
ROOT=Path(__file__).resolve().parents[1]

def check_kernel(A,rec,nc):
    vs=[[F(*x) for x in v] for v in rec['kernel_vectors']]
    free=rec['kernel_free_columns']
    need(vs and len(free)==len(vs) and len(set(free))==len(free),'missing/duplicate exact independent kernels')
    need(all(isinstance(j,int) and 0<=j<nc for j in free) and all(len(v)==nc for v in vs),'kernel dimensions')
    need(all(v[f]==int(i==j) for i,v in enumerate(vs) for j,f in enumerate(free)),'kernel independence')
    for v in vs:
        den=math.lcm(*(x.denominator for x in v));vv=[int(x*den) for x in v]
        need(all(sum(a*b for a,b in zip(row[:-1],vv))==0 for row in A),'false exact kernel')
    upper=nc-len(vs);rr,cc,p=rec['rows'],rec['columns'],rec['prime'];n=len(rr)
    need(isprime(p) and n==len(cc) and n>upper and len(set(rr))==n and len(set(cc))==n,'invalid augmented lower bound')
    need(nc in cc and all(isinstance(j,int) and 0<=j<=nc for j in cc) and all(isinstance(i,int) and 0<=i<len(A) for i in rr),'bad augmented minor indices')
    M=[[A[i][j]%p for j in cc] for i in rr];d=determinant(M,p)
    need(d!=0 and d==rec['determinant_mod_prime'],'nonzero augmented minor missing')
    need(upper==rec['coefficient_rank_upper'] and n==rec['augmented_rank_lower'],'rank reports disagree')
    # Different implementation on every low-rank augmented witness.
    need(d==determinant_mod(M,p),'low-rank NumPy/C++ discrepancy')
    return {'index':rec['index'],'kernel_dimension':len(vs),'coefficient_rank_upper':upper,'augmented_rank_lower':n,'prime':p,'minor':d,'exact_kernel_dot_products':len(A)*len(vs)}

def check_partition(cs,n):
    part=[c['index'] for c in cs['certificates']]+[c['index'] for c in cs['exceptions']]
    need(all(isinstance(i,int) for i in part) and len(part)==len(set(part)) and set(part)==set(range(n)),'jet partition gap/duplicate')

def check_full_minor(A,rows,p,nc):
    need(isprime(p),'composite minor modulus')
    need(len(rows)==nc+1 and len(set(rows))==len(rows) and all(isinstance(i,int) and 0<=i<len(A) for i in rows),'bad full augmented minor')
    M=[A[i] for i in rows];d=determinant(M,p);need(d!=0,'zero full augmented minor')
    return d

def verify_group(h,out,tools):
    t=time.monotonic();name=f'nf15_h{h}';need(h in range(4,9),'unproved NF group')
    g=json.loads((ROOT/'evidence'/f'{name}_gates.json').read_text())
    cs=json.loads((ROOT/'evidence'/f'{name}_minors.json').read_text())
    need(g['q']==15 and g['h']==h and cs['q']==15 and cs['h']==h,'NF89 scope')
    alt=out/f'{name}_regenerated.json'
    cmd=[str(tools/'nf_gate'),'15',str(h),'m2',str(alt)]
    with (out/f'{name}_gate.log').open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
    gg=json.loads(alt.read_text());actual={key(c):c['genus_cost'] for c in gg['records']}
    keys=[key(c) for c in g['records']]
    need(len(actual)==len(gg['records']) and len(keys)==len(set(keys)) and set(keys)==set(actual),'root-gate coverage mismatch')
    need(all(c['genus_cost']==actual[key(c)] for c in g['records']),'genus cost mismatch')
    need(g['stats']==gg['stats'] and g['genus_histogram']==gg['genus_histogram'],'complete gate counts mismatch')
    alt.unlink()
    nc=169;need(cs['parameters']==nc,'wrong ordinary jet parameter dimension');check_partition(cs,len(keys))
    models={};minors=[];cross=[];maxrows=0
    for k,c in enumerate(cs['certificates']):
        p=c['prime'];need(p in (65521,1000033) and isprime(p),'bad certificate field')
        if p not in models:models[p]=ReceiverModel(15,p)
        _,A=models[p].build(g['records'][c['index']]);maxrows=max(maxrows,len(A))
        d=check_full_minor(A,c['rows'],p,nc);minors.append([c['index'],p,d])
        if k==0:
            M=[A[i] for i in c['rows']];need(d==determinant_mod(M,p),'independent full-minor elimination mismatch')
            cross.append({'index':c['index'],'order':170,'prime':p,'determinant':d,'independent_numpy_crosscheck':True})
        if (k+1)%4000==0:print('ACCEPT_PROGRESS',name,k+1,flush=True)
    need(all(e['record']==g['records'][e['index']] for e in cs['exceptions']),'exception root scope')
    rf=ROOT/'evidence'/f'{name}_rank_certificates.json';rs=json.loads(rf.read_text()) if rf.exists() else []
    need({c['index'] for c in rs}=={e['index'] for e in cs['exceptions']} and len(rs)==len(cs['exceptions']),'unresolved low-rank exception')
    low=[]
    for rec in rs:
        _,A=ReceiverModel(15).build(g['records'][rec['index']]);maxrows=max(maxrows,len(A));low.append(check_kernel(A,rec,nc))
    result={'name':name,'q':15,'h':h,'counts':g['stats'],'parameters':nc,'largest_augmented_shape':[maxrows,170],
            'full_augmented_minors':minors,'low_rank_exclusions':low,'crosschecks':cross,'remaining_affine_spaces':0}
    save(out/f'{name}_accepted.json',result)
    print('ACCEPT_GROUP',name,'full',len(minors),'exact_lowrank',len(low),'seconds',round(time.monotonic()-t,3),flush=True)
    return {k:v for k,v in result.items() if k not in ('full_augmented_minors','crosschecks')}

def worker(args):return verify_group(*args)
def main():
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);p.add_argument('--tools',type=Path,required=True);p.add_argument('--workers',type=int,default=3);a=p.parse_args()
    need(not a.out.exists() and a.out.is_absolute(),'use a new absolute output directory');need(1<=a.workers<=3,'workers limit');a.out.mkdir(parents=True)
    with ProcessPoolExecutor(max_workers=a.workers) as ex:groups=list(ex.map(worker,[(h,a.out,a.tools) for h in range(4,9)]))
    total=sum(g['counts']['jet_residual'] for g in groups);low=sum(len(g['low_rank_exclusions']) for g in groups)
    need(total==38078 and low==2 and all(g['remaining_affine_spaces']==0 for g in groups),'NF89 tail incomplete')
    save(a.out/'GEOMETRY_SUMMARY.json',{'status':'PASS_NEW_LOC89_ALL_FIVE_TAIL_ROWS','q':15,'weighted_degree':30,'mu':89,'genus_bound':196,
         'full_gates':sum(g['counts']['complete_gates'] for g in groups),'ordinary_jet_systems':total,'full_augmented_minors':total-low,'exact_low_rank_exclusions':low,
         'third_row_not_computed':True,'groups':groups})
if __name__=='__main__':sys.set_int_max_str_digits(0);main()
