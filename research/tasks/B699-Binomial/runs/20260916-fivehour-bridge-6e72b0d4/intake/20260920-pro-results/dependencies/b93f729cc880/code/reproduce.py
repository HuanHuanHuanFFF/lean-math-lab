#!/usr/bin/env python3
"""Complete new evidence acceptance. Python >=3.10 + NumPy; no SymPy,
network, prior package, discovery import, G coefficients, or Lean dependency.
All computations are exact integers/rationals or bounded modular integers.
Usage: python3 -B code/reproduce.py --out /absolute/nonexistent/directory
"""
from __future__ import annotations
import argparse,copy,hashlib,itertools,json,math,platform,sys,time
from pathlib import Path
from collections import Counter
from fractions import Fraction as F
import numpy as np
from accept_core import *
from accept_ledger import source_states,run_ledger,record_key,valid_witness
ROOT=Path(__file__).resolve().parents[1];EV=ROOT/'evidence'

def read(name):return json.loads((EV/name).read_text())
def fracvec(v):return [F(*x) for x in v]
def check_full_gates(records,actual):
    keys=[key(c) for c in records]
    need(len(set(keys))==len(keys),'duplicated listed gate')
    need(set(keys)==set(actual),'root gate coverage gap')
    need(all(c['genus_cost']==actual[key(c)] for c in records),'genus-cost mismatch')

def check_affine(A,solution,directions,free):
    nc=len(A[0])-1
    need(len(solution)==nc and all(len(v)==nc for v in directions),'affine vector dimension')
    need(all(sum(F(x)*y for x,y in zip(row[:-1],solution))==row[-1] for row in A),'invalid rational base')
    need(all(sum(F(x)*y for x,y in zip(row[:-1],v))==0 for row in A for v in directions),'invalid rational direction')
    need(len(directions)==len(free) and len(set(free))==len(free),'free directions count')
    need(all(directions[i][j]==int(i==k) for i in range(len(free)) for k,j in enumerate(free)),'free-coordinate identity')

def check_bernstein_identity(P,q,coeffs):
    aa=[F(P.get((2*q-2*i,i),0),4**i) for i in range(q+1)];back=[F(0)]*(q+1)
    for k,v in enumerate(coeffs):
        for a in range(k,q+1):back[a]+=v*math.comb(q,k)*math.comb(q-k,a-k)*(-1)**(a-k)
    need(back==aa,'damaged Bernstein identity')

def verify_geometry(out):
    results=[];saved_test=None;integer_cross=[];all_minors=0
    for q,h in [(10,h) for h in ROWS]+[(16,0),(17,0)]:
        name=f'nf10_h{h}' if h else f'sat{q}';obj=read(name+'_gates.json');cert=read(name+'_minors.json')
        start=time.monotonic();actual,stats=nf_gates(q,h) if h else sat_gates(q)
        check_full_gates(obj['records'],actual)
        for k,v in obj['stats'].items():need(stats.get(k,0)==v,'independent gate count '+k)
        need(obj['q']==q and cert['q']==q,'certificate degree')
        nc=(q-2)**2;need(cert['parameters']==nc,'wrong parameter dimension')
        inds=[c['index'] for c in cert['certificates']]+[c['index'] for c in cert['exceptions']]
        need(len(inds)==len(set(inds)) and set(inds)==set(range(len(actual))),'certificate coverage gap')
        need(len(cert['exceptions'])==(3 if q==10 and h==3 else 0),'unexpected compatible gate')
        models={};minors=[]
        for k,c in enumerate(cert['certificates']):
            p=c['prime'];need(isprime(p),'certificate modulus');M=models.setdefault(p,ReceiverModel(q,p))
            record=obj['records'][c['index']];labs,A=M.build(record)
            det=validate_minor(A,c['rows'],p,nc);minors.append([c['index'],p,det])
            if k==0:
                minor=[A[i] for i in c['rows']]
                ds=determinant_mod(minor,p,numpy=False);need(det==ds,'stdlib/int64 determinant disagreement')
                integer_cross.append({'q':q,'h':h,'index':c['index'],'order':nc+1,'prime':p,'stdlib_and_int64_determinant':det})
                if q==10 and h==3:
                    labs0,A0=ReceiverModel(q).build(record);exact=bareiss([A0[i] for i in c['rows']])
                    need(exact!=0 and exact%p==det,'integer Bareiss crosscheck')
                    integer_cross[-1]['integer_determinant']=str(exact)
                    saved_test=(A,c,actual,obj['records'])
        for ex in cert['exceptions']:need(ex['record']==obj['records'][ex['index']],'exception record mismatch')
        result={'q':q,'h':h,'gate_counts':stats,'parameters':nc,'nonzero_minors':minors,'compatible_indices':[c['index'] for c in cert['exceptions']]}
        save(out/(name+'_accepted.json'),result);results.append(result);all_minors+=len(minors)
        print('ACCEPT_GEOMETRY',name,'gates',stats['complete_gates'],'jets',len(actual),'nonzero_minors',len(minors),'seconds',round(time.monotonic()-start,3),flush=True)
    need(all_minors==4089,'total new nonzero minors')
    save(out/'determinant_crosschecks.json',integer_cross)
    return results,saved_test

def verify_families(out):
    sols=read('nf10_h3_solutions.json')['solutions'];sigs=read('nf59_signatures.json')['families'];M=ReceiverModel(10);accepted=[];fixtures={}
    exs=read('nf10_h3_minors.json')['exceptions'];need([s['index'] for s in sols]==[e['index'] for e in exs],'affine exception completeness')
    for fam,sg in zip(sols,sigs):
        need(fam['index']==sg['index'],'signature correspondence');c=fam['record'];labs,A=M.build(c);rank=fam['rank'];nc=M.nc
        piv=fam['pivot_columns'];free=fam['free_columns'];v=fracvec(fam['solution']);ds=[fracvec(x) for x in fam['directions']]
        need(rank==len(A)==len(piv),'affine full-row rank premise')
        need(set(free)==set(range(nc))-set(piv) and len(ds)==nc-rank,'affine dimension completeness')
        det=determinant_mod([[row[j] for j in piv] for row in A],1000033);need(det,'coefficient rank minor')
        check_affine(A,v,ds,free)
        ps=[M.assemble(c,x,i==0) for i,x in enumerate([v]+ds)]
        need([packpoly(P) for P in ps]==fam['polynomials'],'recovered sparse polynomial mismatch')
        d=len(ds);need(c['h']==3 and c['lambda'] not in VALUES[3],'actual defect/extra-root location')
        masses=[];witnesses=[]
        for r,row in zip(ROWS,c['roots']):
            for vv in VALUES[r]:
                m=row.count(vv);need(m>0,'missing real source zero')
                for i in range(m):
                    for j in range(m-i):need(all(ordinary_jet(P,r,vv,i,j)==0 for P in ps),'ordinary jet failure')
                leading=[ordinary_jet(P,r,vv,0,m) for P in ps]
                need(leading[0]!=0 and not any(leading[1:]),'ordinary multiplicity may jump')
                masses.append([r,vv,m]);witnesses.append([r,vv,m,[enc(x) for x in leading]])
        need(masses==sg['ordinary_multiplicities'] and witnesses==sg['exact_order_witnesses'],'all-parameter ordinary certificate')
        need([sum(row.count(v) for v in VALUES[r]) for r,row in zip(ROWS,c['roots'])]==[9,10,10,10,10,10],'actual row masses')
        layers={};ms=[];layer_cert=[]
        for s in (2,3,4):
            m=c['roots'][2*s-3].count(s*s);ms.append(m);layers[s]={}
            for w in range(m,2*m+1):
                ls=[];terms=[]
                for j in range(w//2+1):
                    i=w-2*j;e=[tangent_jet(P,s,i,j) for P in ps]
                    if any(e):ls.append(e);terms.append([i,j,[enc(x) for x in e]])
                layers[s][w]=ls;layer_cert.append({'r':2*s,'m':m,'weight':w,'coefficients':terms})
        need(layer_cert==sg['diagonal_coefficients'],'independent diagonal Taylor disagreement')
        verified_strata=[]
        old={tuple(s['weighted_orders']):s for s in sg['strata']}
        for ws in itertools.product(*(range(m,2*m+1) for m in ms)):
            eq=[];nonzero=[]
            for s,w in zip((2,3,4),ws):
                eq.extend(e for ww,ls in layers[s].items() if ww<w for e in ls);nonzero.append(layers[s][w])
            aff=affine_space(eq,d)
            if aff is None:continue
            if any(not ls or all(identically_zero(e,aff) for e in ls) for ls in nonzero):continue
            need(ws in old,'unrecorded special parameter stratum');z=old[ws];x=fracvec(z['rational_witness'])
            value=lambda e:e[0]+sum(a*b for a,b in zip(e[1:],x))
            need(not any(value(e) for e in eq) and all(any(value(e) for e in ls) for ls in nonzero),'invalid stratum witness')
            need(z['affine_dimension']==len(aff[1]),'stratum affine dimension')
            need([[enc(v) for v in e] for e in aff[2]]==z['equations'],'stratum complete equations')
            need([[[enc(v) for v in e] for e in ls] for ls in nonzero]==z['nonzero_layers'],'stratum nonzero exclusions')
            need(z['kappa']==[2*m-w for m,w in zip(ms,ws)],'stratum kappa')
            verified_strata.append(z)
        need({tuple(s['weighted_orders']) for s in verified_strata}==set(old),'missing stratum in receiver')
        lb=[min(s['kappa'][i] for s in verified_strata) for i in range(3)]
        need(lb==sg['coordinatewise_kappa_lower'],'all-parameter lower bound')
        z={'index':fam['index'],'parameters':d,'rank':rank,'rank_minor_mod_prime':1000033,'rank_minor_determinant':det,
           'z':21,'mu':59,'row_multiplicities':[9,10,10,10,10,10],'ordinary':masses,'strata':verified_strata,'kappa_lower_all_parameters':lb}
        accepted.append(z);fixtures[fam['index']]={'A':A,'v':v,'ds':ds,'free':free,'ps':ps,'strata':verified_strata}
        print('ACCEPT_AFFINE',fam['index'],'dimension',d,'complete_strata',len(verified_strata),'kappa',lb,flush=True)
    need([len(x['strata']) for x in accepted]==[7,1,4],'full tangent-strata count')
    save(out/'nf59_all_parameter_families.json',accepted)
    return fixtures

def verify_nonvanishing(out,fixtures):
    fixed=fixtures[663]['ps'][0];base,direction=fixtures[755]['ps'];t=F(-504,5)
    special={k:base.get(k,0)+t*direction.get(k,0) for k in set(base)|set(direction)};special={k:v for k,v in special.items() if v}
    records=[];polys={}
    for label,P0,source,field in [('fixed_E10',fixed,'nf59_fixed_nv.json','polynomial'),('special_F1',special,'nf59_special_probe.json','primitive_polynomial')]:
        P=primitive(P0);old=read(source);need(P==loadpoly(old[field]),'nonvanishing polynomial correspondence')
        cert=bernstein_certificate(P,10,52)
        need(cert['bernstein']==old['bernstein'] and cert['l1']==old['l1'] and cert['minimum']==old['min_bernstein'],'nonvanishing constants')
        check_bernstein_identity(P,10,[F(*x) for x in cert['bernstein']]);polys[label]=P
        records.append({'name':label,'parameter':enc(t) if label=='special_F1' else None,'primitive_polynomial':packpoly(P),'certificate':cert})
    # All other strata pay at least (2,1,1); the only exception is precisely t6.
    for ix,data in fixtures.items():
        for s in data['strata']:
            if all(a>=b for a,b in zip(s['kappa'],[2,1,1])):continue
            need(ix==755 and s['affine_dimension']==0 and fracvec(s['rational_witness'])==[t],'unhandled low-tangency stratum')
    need(tangent_jet(special,3,2,0)==0 or tangent_jet(special,3,0,1)!=0,'weighted layer sanity')
    ordinary=min(i+j for i in range(5) for j in range(5) if ordinary_jet(special,6,9,i,j))
    weight=min(i+2*j for i in range(5) for j in range(5) if tangent_jet(special,3,i,j))
    need((ordinary,weight,2*ordinary-weight)==(1,2,0),'exact false-kappa counterexample')
    save(out/'nf59_nonvanishing.json',records)
    return polys,special

def verify_saturated_products(out):
    results=[]
    for q in (16,17):
        total=large=0
        for ts in itertools.combinations_with_replacement(range(4),q):
            z=0
            for r in ROWS:
                vals=[t*(r-t) for t in ts];need(all(v in VALUES[r] for v in vals),'ell product not saturated');z+=len(set(vals))
            total+=1;large+=int(z>=14);need((z>=14)==(len(set(ts))>=3),'source-support condition')
        need(total==math.comb(q+3,3) and large==4*math.comb(q-1,2)+math.comb(q-1,3),'complete product count')
        results.append({'q':q,'all_monic_products':total,'z14_products':large})
    save(out/'sat_products.json',results);return results

def verify_ledgers(out):
    src,base,states=source_states();save(out/'same_G_source_states.json',{'source_orders':src,'vertical_minima':base,'states':states})
    old=read('new_ledger.json');results={}
    for label,mid,free,expected in [('baseline',10,16,13),('sat_only',10,18,13),('old_conditional_goal',11,18,12)]:
        z=run_ledger(states,mid,free)
        need(z['maximum']==expected and z['queries']==old[label]['queries'],'ledger maximum or complete query count')
        need({record_key(r) for r in z['records']}=={record_key(r) for r in old[label]['max_records']},'independent maximum record mismatch')
        save(out/(label+'_ledger.json'),z);results[label]={k:v for k,v in z.items() if k not in ('records','per_state')}
        print('ACCEPT_LEDGER',label,results[label],flush=True)
    result=run_ledger(states,11,18)
    need(result['maximum_records']==577 and result['positive_excess_maximum_records']==3,'COVER12 edge accounting')
    save(out/'ledger_summary.json',results)
    return result

def negatives(out,geometry_fixture,fixtures,polys,special,ledger):
    results=[]
    def rejects(name,fn):
        try:fn()
        except (AssertionError,ValueError,IndexError,ZeroDivisionError) as e:
            results.append({'name':name,'status':'REJECTED','reason':str(e)});return
        raise AssertionError('negative test falsely accepted: '+name)
    A,c,gates,records=geometry_fixture;p=c['prime'];rows=c['rows'];nc=64
    rejects('omitted_complete_root_gate',lambda:check_full_gates(records[:-1],gates))
    rejects('duplicate_complete_root_gate',lambda:check_full_gates(records+[records[0]],gates))
    damaged=copy.deepcopy(records);damaged[0]['genus_cost']+=1
    rejects('altered_genus_cost',lambda:check_full_gates(damaged,gates))
    rejects('unproved_SAT_degree',lambda:sat_gates(18))
    rejects('composite_modulus',lambda:determinant_mod([[1]],1000035))
    rejects('nonfull_augmented_rank',lambda:validate_minor(A,rows[:-1],p,nc))
    rejects('duplicate_minor_row',lambda:validate_minor(A,[rows[0]]+rows[:-1],p,nc))
    rejects('out_of_range_minor_row',lambda:validate_minor(A,[len(A)]+rows[1:],p,nc))
    rejects('zero_augmented_minor',lambda:validate_minor([[0]*65 for _ in range(65)],list(range(65)),p,nc))
    data=fixtures[460];bad=data['v'][:];bad[0]+=1
    rejects('damaged_rational_base',lambda:check_affine(data['A'],bad,data['ds'],data['free']))
    badD=copy.deepcopy(data['ds']);badD[0][0]+=1
    rejects('damaged_rational_direction',lambda:check_affine(data['A'],data['v'],badD,data['free']))
    rejects('false_all_parameter_kappa6_at_least_one',lambda:need(2*1-2>=1,'F1(-504/5) has kappa6=0'))
    P=polys['special_F1'];bc=bernstein_certificate(P,10,52);badB=[F(*x) for x in bc['bernstein']];badB[0]+=1
    rejects('damaged_Bernstein_coefficient',lambda:check_bernstein_identity(P,10,badB))
    rejects('insufficient_N52_to_N51_threshold',lambda:bernstein_certificate(P,10,51))
    rejects('unproved_COVER11',lambda:need(ledger['maximum']<=11,'valid twelve-component resource witness remains'))
    rejects('unproved_EDGE12',lambda:need(not any(r['a'] for r in ledger['records']),'three positive-excess maximum records remain'))
    # Exact polynomial counterexample to ordinary multiplicity = specialized multiplicity.
    ex={(1,0):F(1),(0,0):F(1),(0,1):F(-4),(0,2):F(1)} # N-3+(X-2)^2
    m=min(i+j for i in range(3) for j in range(3) if ordinary_jet(ex,3,2,i,j));sp=min(j for j in range(3) if ordinary_jet(ex,3,2,0,j))
    need((m,sp)==(1,2),'ordinary/specialized counterexample')
    rejects('ordinary_equals_specialized_without_capacity',lambda:need(m==sp,'ordinary1 specialized2'))
    # A lower-jet collision can upgrade mu59 to mu60. This is not a near-saturated candidate.
    ts=[0,0,0,1,1,1,2,2,3,3];mu=0;z=0;root_rows=[]
    for r in ROWS:
        vals=[t*(r-t) for t in ts];mu+=len(vals);z+=len(set(vals));root_rows.append(sorted(vals))
    need(mu==60 and root_rows[0].count(0)==5 and root_rows[0].count(2)==5,'collision upgrade model')
    rejects('lower_bound_jets_imply_mu59',lambda:need(mu==59,'actual product mu60, not designated lower sum59'))
    need(math.comb(400,9)%11==0 and math.comb(400,10)%11==0,'original-point boundary Common9')
    result={'status':'PASS_NEGATIVE_TESTS','tests':results,'exact_boundaries':{'ordinary_vs_specialized':packpoly(ex),
        'collision_upgrade':{'ell_parameters':ts,'source_row_roots':root_rows,'actual_mu':mu,'z':z},
        'special_F1_kappa6':{'t':[-504,5],'m':1,'w':2,'kappa':0},
        'original_400_10':{'n':400,'j':10,'common_prime':11,'is_NC9':False}}}
    save(out/'negative_tests.json',result);return len(results)

def manifest_check():
    p=ROOT/'SHA256SUMS'
    if not p.exists():return None
    n=0
    for line in p.read_text().splitlines():
        digest,rel=line.split('  ',1);file=ROOT/rel
        need(file.is_file() and hashlib.sha256(file.read_bytes()).hexdigest()==digest,'package hash mismatch: '+rel);n+=1
    return n

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();out=args.out.resolve()
    need(not out.exists(),'refusing to overwrite existing acceptance output');out.mkdir(parents=True)
    start=time.monotonic();manifest_count=manifest_check()
    geometry,gtest=verify_geometry(out);fixtures=verify_families(out);polys,special=verify_nonvanishing(out,fixtures)
    prod=verify_saturated_products(out);ledger=verify_ledgers(out);nneg=negatives(out,gtest,fixtures,polys,special,ledger)
    summary={'status':'PASS_NEW_NF59_SAT102_COVER12','cover':12,'same_fixed_G':True,'middle_min_X':11,'free_min_X':18,
        'NF59_compatible_affine_spaces':3,'NF59_remaining_carrier_parameter_dimensions':[2,1],
        'NF59_carrier_unique_defect_row':3,'NF59_carrier_kappa_lower':[2,1,1],
        'NF59_new_fixed_nonvanishing_threshold':52,'new_saturation_degrees':[16,17],'uniform_SAT_through':17,
        'new_nonzero_augmented_minors':sum(len(z['nonzero_minors']) for z in geometry),
        'full_vertical_states':ledger['states'],'COVER12_maximum_relaxation_records':ledger['maximum_records'],
        'positive_excess_COVER12_records':ledger['positive_excess_maximum_records'],'EDGE12_proved':False,
        'negative_tests':nneg,'R7':[3,4,5,6,7,8,9],'alpha_templates':57,'per_row_bound':152,
        'general_minimum_D_e_z':[7,3,14],'G_coefficients_recovered':False,'original_counterexample_found':False}
    save(out/'SUMMARY.json',summary)
    # Nondeterministic environment/time information belongs only to the execution log.
    print('ACCEPT_ENVIRONMENT',json.dumps({'python':platform.python_version(),'numpy':np.__version__,'manifest_entries_verified':manifest_count,'elapsed_seconds':round(time.monotonic()-start,3)}),flush=True)
    print(summary['status'],flush=True)
if __name__=='__main__':main()
