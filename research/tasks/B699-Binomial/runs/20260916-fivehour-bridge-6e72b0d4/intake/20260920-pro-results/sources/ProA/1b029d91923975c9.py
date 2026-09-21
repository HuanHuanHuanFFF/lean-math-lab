#!/usr/bin/env python3
"""Complete current-round geometry receiver. Independent gates/Newton jets,
exact rational kernels, complete affine spaces and parameter strata.
Uses no discovery module and no SymPy/SciPy. Python 3.11+ and NumPy only.
"""
from __future__ import annotations
import argparse,json,time,itertools,math,sys
from pathlib import Path
from fractions import Fraction as F
from concurrent.futures import ProcessPoolExecutor
from accept_core import *
from check_families import verify_affine,verify_signature,combine,line_restriction,fracvec
from sat_product import verify_product
ROOT=Path(__file__).resolve().parents[1];EV=ROOT/'evidence'
def read(n):return json.loads((EV/n).read_text())

def check_kernel(A,rec,nc):
    vs=list(map(fracvec,rec['kernel_vectors']));free=rec['kernel_free_columns']
    need(len(vs)>0 and len(vs)==len(free) and len(set(free))==len(free),'kernel dimensions')
    need(all(len(v)==nc for v in vs),'kernel vector length')
    need(all(v[f]==int(i==j) for i,v in enumerate(vs) for j,f in enumerate(free)),'kernel independence')
    for v in vs:
        den=math.lcm(*(x.denominator for x in v));vv=[int(x*den) for x in v]
        need(all(sum(a*b for a,b in zip(row[:-1],vv))==0 for row in A),'nonzero claimed kernel product')
    upper=nc-len(vs);rr,cc,p=rec['rows'],rec['columns'],rec['prime'];k=len(rr)
    need(k==len(cc) and k>upper and len(set(rr))==k and len(set(cc))==k,'insufficient augmented minor')
    need(nc in cc and all(0<=j<=nc for j in cc),'missing augmented column')
    need(all(0<=i<len(A) for i in rr),'invalid row index')
    d=determinant_mod([[A[i][j] for j in cc] for i in rr],p)
    need(d!=0 and d==rec['determinant_mod_prime'],'rank-deficient augmented minor')
    need(upper==rec['coefficient_rank_upper'] and k==rec['augmented_rank_lower'],'rank bound mismatch')
    return {'index':rec['index'],'exact_independent_kernels':len(vs),'coefficient_rank_upper':upper,'augmented_rank_lower':k,'prime':p,'minor':d}

def verify_group(name,out):
    begin=time.monotonic();g=read(name+'_gates.json');cs=read(name+'_minors.json');q=g['q'];h=g['h'] or 0
    need((h and q in (11,12)) or (not h and q in (18,19,20)),'unadopted degree')
    actual,stats=nf_gates(q,h) if h else sat_gates(q)
    keys=[key(c) for c in g['records']]
    need(len(keys)==len(set(keys)) and set(keys)==set(actual),'complete root-gate mismatch')
    need(all(c['genus_cost']==actual[key(c)] for c in g['records']),'genus value mismatch')
    need(all(stats.get(k,0)==v for k,v in g['stats'].items()),'root-gate count mismatch')
    nc=(q-2)**2;need(cs['parameters']==nc and cs['q']==q,'parameter scope')
    inds=[c['index'] for c in cs['certificates']]+[c['index'] for c in cs['exceptions']]
    need(len(inds)==len(set(inds)) and set(inds)==set(range(len(keys))),'minor partition gap')
    models={};minors=[];cross=[]
    for k,c in enumerate(cs['certificates']):
        prime=c['prime']
        if prime not in models:models[prime]=ReceiverModel(q,prime)
        _,A=models[prime].build(g['records'][c['index']]);det=validate_minor(A,c['rows'],prime,nc)
        minors.append([c['index'],prime,det])
        if k==0:
            d2=determinant_mod([A[i] for i in c['rows']],prime,numpy=False)
            need(d2==det,'pure-Python determinant mismatch')
            z={'order':nc+1,'prime':prime,'mod_determinant':det}
            if q==11 and h==3:
                _,Ai=ReceiverModel(q).build(g['records'][c['index']]);dd=bareiss([Ai[i] for i in c['rows']])
                need(dd%prime==det and dd!=0,'Bareiss determinant mismatch');z['integer_determinant']=str(dd)
            cross.append(z)
    for ex in cs['exceptions']:need(ex['record']==g['records'][ex['index']],'exception source mismatch')
    ranks=[];products=[]
    if not h and cs['exceptions']:
        records=read(name+'_rank_certificates.json')
        pcs=read(name+'_product_certificate.json') if q==20 else []
        ix=[x['index'] for x in records]+[x['index'] for x in pcs]
        need(set(ix)=={x['index'] for x in cs['exceptions']} and len(ix)==len(set(ix))==len(cs['exceptions']),'kernel/product certificate gap')
        M=ReceiverModel(q)
        for r in records:
            _,A=M.build(g['records'][r['index']]);ranks.append(check_kernel(A,r,nc))
        for c in pcs:products.append(verify_product(g['records'][c['index']],c))
    result={'name':name,'q':q,'h':h,'counts':stats,'parameters':nc,'full_augmented_minors':minors,'rank_deficient_exclusions':ranks,'unique_saturated_products':products,'rational_affine_indices':[x['index'] for x in cs['exceptions']] if h else [],'integer_crosschecks':cross}
    save(out/(name+'_accepted.json'),result)
    print('ACCEPT_GROUP',name,'gates',stats['complete_gates'],'residuals',len(keys),'full_minors',len(minors),'lower_rank_exclusions',len(ranks),'seconds',round(time.monotonic()-begin,3),flush=True)
    return result

def stratum_polynomials(Ps,z):
    eqs=[[F(*x) for x in e] for e in z['equations']];aff=affine_space(eqs,len(Ps)-1)
    need(aff is not None,'empty reported parameter locus');b,ds,_=aff;polys=[combine(Ps,b)]
    for v in ds:
        P={}
        for a,H in zip(v,Ps[1:]):
            for k,c in H.items():P[k]=P.get(k,F(0))+a*c
        polys.append({k:c for k,c in P.items() if c})
    return b,ds,polys

def verify_nf_families(q,out):
    name=f'nf{q}_h3';sols=read(name+'_solutions.json')['solutions'];ex=read(name+'_minors.json')['exceptions']
    need([x['index'] for x in sols]==[x['index'] for x in ex],'complete rational affine spaces')
    candidates=read(f'nf{q}_candidate_families.json')['solutions']
    need(candidates==[x for x in sols if not x['common_source_lines']],'candidate filter mismatch')
    tag=f'nf{6*q-1}';sigs=read(tag+'_signatures.json')['families'];sgmap={x['index']:x for x in sigs}
    peeling=read(tag+'_stratum_peeling.json')['families'];pm={x['index']:x for x in peeling}
    need(set(sgmap)=={x['index'] for x in candidates}==set(pm),'signature coverage gap')
    nvs=read(tag+'_nv.json')['records'] if q==12 else []
    nvmap={(x['family_index'],None if x['stratum_ws'] is None else tuple(x['stratum_ws'])):x for x in nvs if x['status']=='EXACT_BERNSTEIN_NONVANISHING'}
    allout=[];fixtures={};nvaccepted=[];stratum_count=0
    for fam in sols:
        Ps,r=verify_affine(fam,q);fixtures[fam['index']]={'family':fam,'Ps':Ps}
        if r['common_lines']:
            r['status']='ENTIRE_AFFINE_SPACE_HAS_SOURCE_LINE';allout.append(r);continue
        sg=sgmap[fam['index']];vs=verify_signature(fam,Ps,sg);r.update(vs);stratum_count+=len(vs['strata'])
        need(vs['mu']==6*q-1 and vs['z']==21,'actual full source signature')
        need([len(row) for row in fam['record']['roots']]==[q-1,q,q,q,q,q],'defect row changed')
        stored={tuple(x['weighted_orders']):x for x in pm[fam['index']]['strata']};remaining=[];peeled=[];nv_used=[]
        fixed_key=(fam['index'],None)
        fixed_removed=False
        if fixed_key in nvmap:
            n=nvmap[fixed_key];need(len(Ps)==1,'fixed NV not fixed')
            P=primitive(Ps[0]);need(packpoly(P)==n['primitive_polynomial'],'fixed NV polynomial')
            cert=bernstein_certificate(P,q,62);need(cert['bernstein']==n['bernstein'] and cert['l1']==n['l1'],'fixed NV constants')
            nvaccepted.append({'index':fam['index'],'case':'fixed','certificate':cert,'polynomial':packpoly(P)});fixed_removed=True
        for z in vs['strata']:
            ws=tuple(z['weighted_orders']);b,ds,polys=stratum_polynomials(Ps,z)
            lines=[t for t in range(9) if all(not line_restriction(P,t) for P in polys)]
            old=stored[ws];need(lines==old['all_equality_locus_line_factors'],'whole-stratum source factor')
            refined=[]
            for t in (2,3,4):
                rows=fam['record']['roots'];m=rows[2*t-3].count(t*t);S=sum(row.count(t*(r-t)) for r,row in zip(ROWS,rows))
                if S-m+ws[t-2]>2*q:refined.append(t)
            need(refined==old['refined_line_forced'] and set(refined)<=set(lines),'tangent source-line bound')
            if lines:peeled.append({'ws':ws,'lines':lines,'refined':refined});continue
            if fixed_removed:continue
            if z['kappa'][0]>=1 and z['kappa'][1]>=1:
                remaining.append(z);continue
            key0=(fam['index'],ws);need(key0 in nvmap and len(ds)==0,'unclosed low S3 parameter stratum')
            n=nvmap[key0];need([enc(x) for x in b]==n['parameters'],'NV unique parameter mismatch')
            P=primitive(polys[0]);need(packpoly(P)==n['primitive_polynomial'],'NV special polynomial mismatch')
            cert=bernstein_certificate(P,q,62);need(cert['bernstein']==n['bernstein'] and cert['l1']==n['l1'],'NV special constants')
            nvaccepted.append({'index':fam['index'],'case':'low_S3_fixed','ws':ws,'parameters':[enc(x) for x in b],'certificate':cert,'polynomial':packpoly(P)});nv_used.append(ws)
        if remaining:
            lower=[min(x['kappa'][i] for x in remaining) for i in range(3)]
            need(lower[0]>=1 and lower[1]>=1,'S3 mapping is not established')
        else:lower=None
        r.update(status='NO_CARRIER' if fixed_removed else 'CARRIER_FAMILY_WITH_S3_COST',peeled_strata=peeled,excluded_NV_strata=nv_used,carrier_kappa_lower=lower,carrier_remaining_strata=len(remaining));allout.append(r)
        print('ACCEPT_FAMILY',q,fam['index'],'parameters',len(Ps)-1,'raw_strata',len(vs['strata']),'carrier_strata',len(remaining),'lower',lower,flush=True)
    need(len(sols)==5 and len(nvaccepted)==(0 if q==11 else 4),'NF family/NV summary mismatch')
    save(out/(tag+'_families_accepted.json'),allout);save(out/(tag+'_NV_accepted.json'),nvaccepted)
    return {'q':q,'full_affine_spaces':len(sols),'candidate_families':len(candidates),'all_parameter_strata':stratum_count,'NV_polynomials':len(nvaccepted),'carrier_family_count':sum(x['status']=='CARRIER_FAMILY_WITH_S3_COST' for x in allout)}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);pa.add_argument('--names',nargs='*');pa.add_argument('--workers',type=int,default=3);pa.add_argument('--families',action='store_true');a=pa.parse_args()
    need(not a.out.exists(),'output already exists');a.out.mkdir(parents=True)
    names=a.names or [f'nf{q}_h{h}' for q in (11,12) for h in ROWS]+[f'sat{q}' for q in (18,19,20)]
    args=[(n,a.out) for n in names]
    if a.workers==1:rs=[verify_group(*arg) for arg in args]
    else:
        with ProcessPoolExecutor(max_workers=a.workers) as pool:rs=list(pool.map(worker,args))
    fs=[verify_nf_families(q,a.out) for q in (11,12)] if a.families else []
    save(a.out/'GEOMETRY_SUMMARY.json',{'status':'PASS_LISTED_CURRENT_GEOMETRY','groups':[{k:v for k,v in r.items() if k not in ('full_augmented_minors','integer_crosschecks')} for r in rs],'families':fs})

def worker(args):return verify_group(*args)
if __name__=='__main__':main()
