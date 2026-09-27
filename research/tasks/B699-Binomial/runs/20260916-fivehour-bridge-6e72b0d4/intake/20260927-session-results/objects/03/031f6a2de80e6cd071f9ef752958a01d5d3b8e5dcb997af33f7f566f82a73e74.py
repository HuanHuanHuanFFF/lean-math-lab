#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
import json, math, hashlib
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT/'certificates'
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
EXPECTED={(19,4):308,(19,5):245,(20,4):493,(20,5):386}
PRICES={
1644:(39,[0,9,9,0,Fraction(15,2),8]),
1650:(36,[0,Fraction(15,2),Fraction(15,2),0,0,7]),
1734:(40,[Fraction(23,2),8,Fraction(19,2),0,8,8]),
1826:(36,[0,0,Fraction(15,2),0,7,7]),
1829:(39,[0,9,0,0,Fraction(15,2),8]),
1831:(37,[0,8,8,0,Fraction(29,4),Fraction(29,4)]),
1868:(41,[0,10,0,9,8,0]),
1892:(40,[Fraction(23,2),Fraction(19,2),Fraction(19,2),0,8,8]),
1932:(36,[0,Fraction(15,2),Fraction(15,2),0,0,7]),
1933:(40,[0,Fraction(19,2),Fraction(19,2),0,0,8]),
1988:(40,[0,Fraction(19,2),0,8,0,8]),
2009:(40,[Fraction(23,2),Fraction(19,2),0,8,8,8]),
2010:(39,[11,9,9,0,Fraction(15,2),8]),
}
S5_PRICE_1646=(40,[0,Fraction(19,2),Fraction(19,2),8,0,8])

def dump(path,obj):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')

def roots_e2(roots):
    return sum(roots[i]*roots[j] for i in range(len(roots)) for j in range(i+1,len(roots)))

def validate_early(path,q,missing):
    lines=path.read_text().splitlines();seen=set()
    for line in lines:
        z=list(map(int,line.split())); assert len(z)==26
        qq,rr,nz,lam,genus,*ms=z; assert (qq,rr)==(q,missing)
        assert tuple(z) not in seen;seen.add(tuple(z))
        pos=0;S=[];T=[];load=[0]*9;g=0;zp=0
        for r in range(3,9):
            m=ms[pos:pos+r//2+1];pos+=len(m);assert sum(m)==q-(r==missing) and min(m)>=0
            roots=[]
            for s,c in enumerate(m):
                v=s*(r-s);roots += [v]*c;zp+=c>0;g+=c*(c-1)//2;load[s]+=c;load[r-s]+=c
            if r%2==0:g+=m[r//2]*(m[r//2]-1)//2
            if r==missing:
                assert all(lam!=s*(r-s) or m[s]>0 for s in range(len(m)))
                roots.append(lam)
            assert len(roots)==q;S.append(sum(roots));T.append(roots_e2(roots))
        assert zp==nz and nz>=14 and g==genus and g<=(q-1)**2 and max(load)<=2*q
        assert all(-S[i]+3*S[i+1]-3*S[i+2]+S[i+3]==0 for i in range(3))
        assert sum(c*t for c,t in zip((-1,5,-10,10,-5,1),T))==0
    assert len(lines)==EXPECTED[q,missing]
    return {'q':q,'deficit_row':missing,'gates':len(lines),'unique':True,'exact_conditions':True}

def validate_q8(path):
    lines=path.read_text().splitlines();seen=set()
    for line in lines:
        a=list(map(int,line.split()));assert len(a)==25
        q,z,A,Pnum,*ms=a;assert q==8 and tuple(a) not in seen;seen.add(tuple(a))
        pos=0;S=[];T=[];load=[0]*9;zp=0
        for r in range(3,9):
            m=ms[pos:pos+r//2+1];pos+=len(m);assert min(m)>=0 and sum(m)==8-(2 if r==7 else 0)
            roots=[]
            for s,c in enumerate(m):
                v=Fraction(s*(r-s));roots += [v]*c;zp+=c>0;load[s]+=c;load[r-s]+=c
            if r==7:
                # residual monic quadratic x^2-Ax+Pnum/5; use symmetric sums directly
                srcsum=sum(roots,Fraction(0));sr=srcsum+A
                tr=roots_e2(roots)+A*srcsum+Fraction(Pnum,5)
                for s,c in enumerate(m):
                    if c==0:
                        v=Fraction(s*(r-s));assert v*v-A*v+Fraction(Pnum,5)!=0
                S.append(sr);T.append(tr)
            else:
                assert len(roots)==8;S.append(sum(roots,Fraction(0)));T.append(roots_e2(roots))
        assert zp>=14 and max(load)<=16
        assert all(-S[i]+3*S[i+1]-3*S[i+2]+S[i+3]==0 for i in range(3))
        assert sum(Fraction(c)*t for c,t in zip((-1,5,-10,10,-5,1),T))==0
    assert len(lines)==25982
    return {'q':8,'deficit':'2Delta7','gates':len(lines),'unique':True,'exact_conditions':True}

def read_frontier():
    out=[]
    for line in (ROOT/'inputs/frontier123.tsv').read_text().splitlines()[1:]:
        idx,h,E,vs=line.split('\t');idx,h,E=int(idx),int(h),int(E);v=list(map(int,vs.split(',')))
        assert idx!=1651 and E==0 and 305-2*h-sum(v)==0
        cap=[2*h-2*sum(max(a-v[i],0) for a in OFF[i])-max(DIAG[i]-v[i],0) for i in range(6)]
        assert min(cap)>=0;out.append({'idx':idx,'h':h,'E':E,'v':v,'capacity':cap})
    assert len(out)==123
    return out

def make_signatures():
    raw=json.loads((ROOT/'inputs/signatures493.json').read_text());assert len(raw)==493
    out=[]
    for e,c,name,d,k in raw:
        if name=='early_near19plus':
            out.append([21,c,'early_near21plus',d,k])
            for degree in (20,19):
                for pos in (1,3,5):
                    cc=c[:];kk=k[:];cc[pos]+=1;kk[pos]+=1
                    out.append([degree,cc,f'early_near{degree}_kappa',d,kk])
        elif name=='double_ge8' and e==8 and d==[0,0,0,0,2,0] and k==[0,0,0,0,0,0]:
            out.append([9,c,'double_ge9plus_2d7',d,k])
            for pos in (1,3,5):
                cc=c[:];kk=k[:];cc[pos]+=1;kk[pos]+=1
                out.append([8,cc,'double8_2d7_kappa',d,kk])
        else:out.append([e,c,name,d,k])
    assert len(out)==508
    return out

def fracstr(x):return str(x.numerator) if x.denominator==1 else f'{x.numerator}/{x.denominator}'

def prices(signatures,frontier):
    by={x['idx']:x for x in frontier};recs=[]
    for idx,(K,ww) in PRICES.items():
        st=by[idx];C=st['capacity'];w=[Fraction(x) for x in ww]
        feasible=[]
        for sid,(e,c,name,d,k) in enumerate(signatures):
            if all(c[j]<=C[j] for j in range(6)):
                lhs=Fraction(e)+sum(w[j]*c[j] for j in range(6));assert lhs>=K
                feasible.append({'signature_id':sid,'degree':e,'cost':c,'lhs':fracstr(lhs)})
        bound=8*Fraction(K)-sum(w[j]*C[j] for j in range(6));assert math.ceil(bound)>st['h']
        recs.append({'state':idx,'h':st['h'],'capacity':C,'K':K,'weights':[fracstr(x) for x in w],
                     'feasible_signatures':len(feasible),'exact_lower_bound':fracstr(bound),'integer_lower_bound':math.ceil(bound),
                     'audit':feasible})
    dump(OUT/'fees/price_certificates.json',{'status':'PASS_13_EXACT_LINEAR_PRICE_CERTIFICATES','states':recs})
    return recs

def validate_trace(path,prime,h=109):
    ls=path.read_text().splitlines(); assert ls[0].startswith(f'p {prime} h {h} constraints ')
    J=int(ls[0].split()[-1]); assert len(ls)==J+2
    w=list(range(0,2*h+1,2)); nz=0
    for j,line in enumerate(ls[1:-1]):
        a=list(map(int,line.split())); assert a[0]==j
        if a[1]==-1: assert len(a)==2; continue
        _,b,d,ww=a; assert 0<=b<=h and 0<d<prime and ww==w[b]; w[b]+=1; nz+=1
    assert ls[-1].split()[0]=='weights' and w==list(map(int,ls[-1].split()[1:]))
    assert sum(w)==h*(h+1)+nz
    nullity=sum(max(0,2*h-x+1) for x in w); assert nullity==0
    return {'prime':prime,'constraints':J,'columns':(h+1)**2,'nullity':0,'min_weight':min(w),'max_weight':max(w),'terminal_weights':w}

def s5_forced_1646(signatures,frontier):
    st=next(x for x in frontier if x['idx']==1646); C=st['capacity']; K,ww=S5_PRICE_1646; w=[Fraction(x) for x in ww]
    audits=[]
    for sid,(e,c,name,d,k) in enumerate(signatures):
        if name=='S5' or any(c[j]>C[j] for j in range(6)): continue
        lhs=Fraction(e)+sum(w[j]*c[j] for j in range(6)); assert lhs>=K
        audits.append({'signature_id':sid,'degree':e,'cost':c,'lhs':fracstr(lhs)})
    bound=8*Fraction(K)-sum(w[j]*C[j] for j in range(6)); assert bound==114 and bound>st['h']
    traces=[]
    for prime in (257,263):
        a=validate_trace(OUT/f'fees/1646_s5_p{prime}_r0.txt',prime)
        b=validate_trace(OUT/f'fees/1646_s5_p{prime}_r1.txt',prime)
        assert a['terminal_weights']==b['terminal_weights']; traces.extend([a,b])
    rec={'status':'PASS_STATE1646_S5_FORCED_AND_COFACTOR_ZERO','state':1646,'h':113,'capacity':C,
         'no_S5_exact_price_lower_bound':fracstr(bound),'K':K,'weights':[fracstr(x) for x in w],
         'no_S5_feasible_signatures':len(audits),'no_S5_audit':audits,'S5_forced':True,
         'S5_quotient_degree':109,'module_runs':traces,'cofactor_zero_kernel':True}
    dump(OUT/'fees/s5_forced_1646.json',rec); return rec

def finish():
    for q in (19,20):
        for r in (4,5):
            validate_early(OUT/f'geometry/q{q}r{r}.gates',q,r)
            g=sorted((OUT/f'geometry/q{q}r{r}.gates').read_text().splitlines());a=sorted((OUT/f'geometry/q{q}r{r}.alt').read_text().splitlines());assert g==a
            K=(q-2)**2+1
            for p in (32749,32719):
                rows=(OUT/f'geometry/q{q}r{r}.{p}.ranks').read_text().splitlines();assert len(rows)==EXPECTED[q,r] and all(int(x.split()[1])==K and int(x.split()[2])!=0 for x in rows)
    validate_q8(OUT/'geometry/q8_2d7.gates');assert sorted((OUT/'geometry/q8_2d7.gates').read_text().splitlines())==sorted((OUT/'geometry/q8_2d7.alt').read_text().splitlines())
    for p in (32749,32719):
        rows=(OUT/f'geometry/q8_2d7.{p}.ranks').read_text().splitlines();assert len(rows)==25982 and all(int(x.split()[1])==37 and int(x.split()[2])!=0 for x in rows)
    sig=make_signatures();stored=json.loads((OUT/'fees/signatures508.json').read_text());assert sig==stored
    frontier=read_frontier();
    p=(OUT/'fees/fees_pareto.txt').read_text();r=(OUT/'fees/fees_raw_reverse.txt').read_text();assert p==r
    vals={int(i):(int(h),int(m)) for i,h,m in (line.split() for line in p.splitlines())};assert set(vals)=={x['idx'] for x in frontier}
    removed=[{'state':i,'h':h,'minimum_degree':m} for i,(h,m) in vals.items() if m>h]
    fee_expected=[1644,1650,1734,1826,1829,1831,1868,1892,1932,1933,1988,2009,2010];assert [x['state'] for x in removed]==fee_expected
    pc=prices(sig,frontier);assert {x['state'] for x in pc}==set(fee_expected)
    s5=s5_forced_1646(sig,frontier)
    expected=sorted(fee_expected+[1646]); removed.append({'state':1646,'h':113,'minimum_degree_without_S5':114,'reason':'S5_forced_by_exact_price_but_complete_S5_cofactor_kernel_zero'})
    remids=set(expected);remaining=[x for x in frontier if x['idx'] not in remids];assert len(remaining)==109 and min(x['h'] for x in remaining)==113
    low=[x['idx'] for x in remaining if x['h']==113];assert low==[1643]
    header='idx\th\tE\tv3,v4,v5,v6,v7,v8\n';text=header+''.join(f"{x['idx']}\t{x['h']}\t{x['E']}\t"+','.join(map(str,x['v']))+'\n' for x in remaining)
    (OUT/'final_E0_frontier.tsv').write_text(text)
    dump(OUT/'removed_states.json',removed)
    summary={'status':'PASS_EARLY19_20_Q8_2D7_S5_1646_FRONTIER109','input_states':123,'remaining_E0_states':109,'removed_states':expected,
             'minimum_equality_h':113,'maximum_vertical_sum':79,'minimum_h_states':low,'raw_signatures':508,
             'early_geometry_systems':1432,'q8_2delta7_systems':25982,'geometry_systems':27414,'geometry_prime_checks':54828,
             'independent_local_minors':27414,'exact_price_certificates':14,'S5_cofactor_systems':1,'S5_cofactor_module_runs':4,'COVER7_proved':False,'H114_proved':False,'Lean':False,
             'external_independent_review':False,'repository_operations':False}
    dump(OUT/'summary.json',summary);return summary
if __name__=='__main__':
    import math
    print(json.dumps(finish(),ensure_ascii=False,indent=2))
