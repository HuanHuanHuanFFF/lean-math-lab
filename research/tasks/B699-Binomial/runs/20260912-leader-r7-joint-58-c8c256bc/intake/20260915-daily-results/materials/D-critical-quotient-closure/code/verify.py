#!/usr/bin/env python3
"""Author-internal second receiver. Standard library; no generator import.
Reconstructs the nonlinear identity and its positivity, reversed CRT domain,
prime-power interval covers, and all remaining prime/position roles.
"""
from pathlib import Path
from math import comb,gcd,prod,isqrt
from itertools import combinations,permutations
from functools import lru_cache
import json,hashlib,argparse,time,copy
ROOT=Path(__file__).resolve().parents[1]

def need(ok,why='invalid certificate'):
    if not ok:raise ValueError(why)

def plus(*args):
    o={}
    for p in args:
        for z,c in p.items():o[z]=o.get(z,0)+c
    return {z:c for z,c in o.items() if c}

def times(p,q):
    o={}
    for (a,b),x in p.items():
        for (c,d),y in q.items():o[a+c,b+d]=o.get((a+c,b+d),0)+x*y
    return {z:c for z,c in o.items() if c}

def scale(p,c):return {z:a*c for z,a in p.items() if a*c}

def power(p,n):
    o={(0,0):1}
    while n:
        if n&1:o=times(o,p)
        p=times(p,p);n//=2
    return o

def C(n):return {(0,0):n} if n else {}
def sub(p,q):return plus(p,scale(q,-1))
def table(p):return [[list(z),c] for z,c in sorted(p.items(),reverse=True)]
def readpoly(a):
    need(all(len(z)==2 and all(type(e)is int and e>=0 for e in z) and type(c)is int and c for z,c in a),'bad polynomial monomial')
    need(len({tuple(z) for z,c in a})==len(a),'duplicate monomial')
    return {tuple(z):c for z,c in a}

def replace(p,x,y):
    xp=[power(x,i) for i in range(max((a for a,b in p),default=0)+1)]
    yp=[power(y,i) for i in range(max((b for a,b in p),default=0)+1)]
    return plus(*(scale(times(xp[a],yp[b]),v) for (a,b),v in p.items()))

def vp(n,p):
    need(n!=0,'valuation zero');n=abs(n);a=0
    while n%p==0:a+=1;n//=p
    return a

def grid_value(c,x,y):
    if len(c)==3:return c[0]*x+c[1]*y+c[2]
    return c[0]*x*x+c[1]*x*y+c[2]*y*y+c[3]*x+c[4]*y+c[5]

def check_grids():
    f0=[1,0,0,-1,0,0];f1=[0,0,1,0,-1,0]
    cases=[(5,{1:3,2:2,4:1},[f0,f1,[2,1,2,-6,-6,4]]),
           (7,{1:3,2:2,5:1},[f0,f1,[1,0,1,-3,-3,2]]),
           (7,{1:4,2:3,5:1,6:1},[f0,f1,[1,0,1,-3,-3,2],[1,-1,0],[2,-1,2,-6,-6,4]])]
    total=0
    for m,w,fs in cases:
        need(sum(w.values())==sum(1 if len(f)==3 else 2 for f in fs),'not critical degree')
        for r in range(m):
            for b in range(r+1):
                need(sum(grid_value(f,b,r-b)==0 for f in fs)>=w.get(r,0),'uncovered grid cell');total+=1
    return total

def check_algebra(dat):
    R=readpoly(dat['R']);X={(1,0):1};n={(0,1):1};one=C(1)
    exactR={(9,0):500000,(8,0):-47625,(7,0):1512,(6,1):-30000,(6,0):-16,(5,1):2730,(4,1):-56,(3,2):600,(2,2):31,(0,3):-4}
    need(R==exactR,'changed nonlinear relation')
    A0=times(power(X,2),sub(one,scale(X,2)))
    Z0=times(times(power(A0,2),sub(one,scale(X,4))),power(sub(C(2),scale(X,5)),2))
    need(not replace(R,A0,Z0),'limiting identity is not zero')
    P1=times(times(X,plus(X,scale(n,-1),one)),plus(power(n,2),scale(X,-2),scale(n,-3),C(2)))
    F3=plus(scale(power(n,2),2),scale(X,-5),scale(n,-6),C(4))
    ap=times(P1,power(sub(n,C(6)),2))
    yp=times(times(times(sub(power(n,2),scale(X,4)),power(F3,2)),sub(n,one)),sub(n,C(5)))
    L=times(times(times(power(sub(n,one),3),power(sub(n,C(2)),2)),sub(n,C(5))),power(sub(n,C(6)),2))
    cub={}
    for (a,b),c in R.items():
        aa=a+2*b-6;need(aa>=0 and aa+b<=3,'homogenization not cubic');cub[aa,b]=cub.get((aa,b),0)+c
    T=plus(*(scale(times(times(power(ap,a),power(yp,b)),power(L,3-a-b)),c) for (a,b),c in cub.items()))
    need(T==readpoly(dat['T']),'cleared identity changed')
    u={(1,0):1};v={(0,1):1}
    j=plus(C(8),u);k=plus(C(10),u,v)
    shifted=replace(T,times(j,k),plus(j,k));pos=dat['positive_shift']
    need(pos.get('J')==8 and pos.get('Delta')==2,'wrong positivity domain')
    need(shifted==readpoly(pos['terms']),'positive expansion does not reconstruct')
    need(shifted.get((0,0),0)>0 and all(c>0 for c in shifted.values()),'not a strict positivity certificate')
    wt=max(2*a+b for a,b in T);S=sum(abs(c) for c in T.values())
    need(wt==23 and S==dat['S'],'wrong degree cancellation/upper bound')
    H=(0,3,4);w1={1:3,2:2,5:1};w2={1:4,2:3,5:1,6:1};costs=[]
    for w in (w1,w2):
        ee={p:max(sum(e*vp(r-h,p) for r,e in w.items()) for h in H) for p in (2,3,5)};ee[7]=max(w.values());costs.append(ee)
    K=prod(p**max(ee[p] for ee in costs) for p in (2,3,5,7))
    need(K==31116960==dat['K'],'uncertified denominator bound')
    need(max(a+2*b for a,b in R)==9,'denominator clearing degree')
    bound=2**36*S*K**9;E=bound.bit_length()
    need(str(bound)==dat['bound'] and E==dat['E']==311,'height mismatch')
    # A<=4, L>=(n/2)^8 on n>=18; the paper gives the inequalities.
    # H034 and Delta=1 force q2=1, but s7(n-2)<=14 and n>=17.
    need(max(vp(abs(2-h),2) for h in H)==1)
    need(all(max(vp(abs(2-h),p) for h in H)==0 for p in (3,5)))
    # Quartic critical quotient monotonicity: derivative endpoints and 1/8 margin.
    zz={(1,0):1};nn=plus(C(12),zz)
    dend1=times(power(sub(nn,one),2),sub(scale(nn,2),C(7)))
    dend2=plus(scale(power(nn,4),7),scale(power(nn,3),-56),scale(power(nn,2),136),scale(nn,-160),C(64))
    margin=sub(scale(times(power(sub(nn,one),3),sub(nn,C(4))),8),times(power(nn,2),plus(scale(power(nn,2),5),scale(nn,-24),C(16))))
    for p in (dend1,dend2,margin):need(p.get((0,0),0)>0 and all(c>=0 for c in p.values()),'m5 strict upper bound failed')
    # Complete parity classes, not an unbounded numeric extrapolation.
    for jj in (1,3,5,7):need(((jj-1)*((-jj)%8-1))%8==0,'odd-g parity')
    for xx in (0,4):need((4-3*xx)%4==0,'even-g parity')
    for jj in range(8):
        xx=jj*(3-jj);need((xx*(xx-2)*(2*9-3*xx-18+4))%8==0,'odd-row parity')
    gs_even=[g for g in range(1,16) if g%5 and g*g*(8 if g%2 else 4)<250]
    gs_odd=[g for g in range(1,16,2) if g%5 and 8*g*g<125]
    need(gs_even==[1,2,3,4,6] and gs_odd==[1,3],'g cutoff')
    return {'grid_cells':check_grids(),'limiting_relation_terms':len(R),'cleared_terms':len(T),'positive_coefficients':len(shifted),'weighted_degree':wt,'denominator_K':K,'upper_sum_S':S,'height_exponent':E,'m5_g_even_row':gs_even,'m5_g_odd_row':gs_odd,'costs':costs,'m5_bound_coefficients':table(margin)}

def normalize(x,m):
    ans=1
    for p in (2,3,5,7):
        if p<m:ans*=p**vp(x,p)
    if m in (5,7) and vp(x,m)==1:ans*=m
    return ans

def reject_gap(n):
    ss=[normalize(n-r,7) for r in range(6)]
    t=prod(ss[:4])
    if t**6*(3*n*n-12*n+8)<1048576*(n-1)**6*(n-3)**3:return 'QIG'
    t=prod(ss)
    if t**4*(3*n*n-20*n+24)<7077888*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
    return None

def sha_rows(ns):return hashlib.sha256(''.join(f'{n}\n' for n in ns).encode()).hexdigest()

def qualify(n,H=(0,3,4),d=7,primes=(2,3,5)):
    for p in primes:
        e=[vp(n-r,p) for r in range(d)]
        if max(e)!=max(e[h] for h in H):return False
    return True

def direct_mask():
    # Independent finite residue reconstruction using truncated valuations.
    out=[]
    for n in range(1800):
        ok=True
        for p,cap in ((2,3),(3,2),(5,2)):
            vals=[]
            for r in range(7):
                z=(n-r)%(p**cap);vals.append(cap if z==0 else vp(z,p))
            ok &= max(vals)==max(vals[h] for h in (0,3,4))
        out.append(int(ok))
    return bytes(out)

def high_reverse(E,mm):
    limit=2**E;threshold=2**18;ps=(2,3,5);power_lists={}
    for p in ps:
        k=1;v=p;arr=[]
        while v<limit:arr.append((k,v));k+=1;v=p**k
        power_lists[p]=list(reversed(arr))
    seen=set();out=set();pairs=templates=0
    for p,q in reversed(list(combinations(ps,2))):
        for ae,P in power_lists[p]:
            for be,Q in power_lists[q]:
                pairs+=1
                if P*Q<=threshold:continue
                inverse=pow(Q,-1,P)
                for r,s in reversed(list(permutations((0,3,4),2))):
                    templates+=1
                    n=s+Q*((r-s)*inverse%P)
                    if not(threshold<=n<limit and n<P*Q) or n in seen or not mm[n%1800]:continue
                    if vp(n-r,p)!=ae or vp(n-s,q)!=be:continue
                    e=[max(vp(n-t,x) for t in range(7)) for x in ps]
                    if e[ps.index(p)]!=ae or e[ps.index(q)]!=be:continue
                    seen.add(n)
                    if prod(x**a for x,a in zip(ps,e))**2>n**3:out.add(n)
    return sorted(out),{'power_pairs':pairs,'position_templates':templates,'distinct_exact_rows':len(seen)}

def prime(p):
    return type(p)is int and p>=2 and all(p%q for q in range(2,isqrt(p)+1))

def cv(n,j,p):
    q=p;out=0
    while q<=n:out+=int(j%q>n%q);q*=p
    return out

def check_rows(rows,expected):
    need([n for m,n,c in rows]==expected,'missing/reordered terminal row');intervals=covered=0;witnesses=set()
    for m,n,spans in rows:
        need(m==7 and n>=16,'wrong target');nextj=8
        for a,b,p,Q in spans:
            need(type(a)is int and type(b)is int and a==nextj and a<=b<=n//2,'gap/overlap in legal interval')
            need(prime(p) and p>=7,'bad witness threshold/primality')
            need(Q>=p and Q==p**vp(Q,p),'not full prime-power layer')
            need(cv(n,7,p)>0,'witness absent from source')
            need(a//Q==b//Q and a%Q>n%Q,'carry interval invalid')
            nextj=b+1;intervals+=1;covered+=b-a+1;witnesses.add(p)
        need(nextj==n//2+1,'incomplete row')
    return {'terminal_rows':len(rows),'intervals':intervals,'covered_configurations':covered,'distinct_primes':len(witnesses),'maximum_prime':max(witnesses)}

def check_domain(dat,rows,E):
    need((dat['m'],dat['H'],dat['height_exponent'],dat['mass_threshold'])==(7,[0,3,4],E,2**18),'wrong bounded domain')
    need(dat['period']==1800,'period changed');mm=direct_mask()
    need(sum(mm)==224==dat['residue_count'] and hashlib.sha256(mm).hexdigest()==dat['mask_sha256'],'residue domain changed')
    low=[n for n in range(16,2**18) if qualify(n)]
    need(len(low)==dat['low_count']==32620 and sha_rows(low)==dat['low_sha256'],'low-domain incomplete')
    need(all(mm[n%1800] for n in low),'mask disagreement')
    high,st=high_reverse(E,mm);need(high==dat['high'],'reversed CRT disagrees')
    need(st['power_pairs']==dat['generation_stats']['power_pairs'] and st['position_templates']==dat['generation_stats']['position_templates'],'power-pair domain incomplete')
    gc={'QIG':0,'SIXG':0};term=[]
    for n in low+high:
        q=reject_gap(n)
        if q:gc[q]+=1
        else:term.append(n)
    need(gc==dat['gap_counts'] and term==dat['terminal_rows'],'terminal/gap classification changed')
    rr=check_rows(rows,term)
    need(rr['intervals']==dat['interval_count'] and rr['covered_configurations']==dat['covered_configurations'],'interval sum mismatch')
    margin=2**18*27*(2**18-45)-3*840**4;need(margin>0,'full-seven two-power mass lemma')
    return {'low_rows':len(low),'high_rows':len(high),'reverse_stats':st,'gaps':gc,'mass_margin':margin,**rr}

def check_families(dat):
    hs={5:[(0,1),(0,2)],7:[(0,1,2),(0,1,3),(0,1,4),(0,1,5),(0,1,6),(0,2,3),(0,2,4),(0,2,5),(0,2,6)]}
    out={}
    for m in (5,7):
        ps=(2,3) if m==5 else (2,3,5);rr=[];coeff={p:set() for p in ps}
        for H in hs[m]:
            for pp in permutations(H):
                positions=dict(zip(ps,pp));p0=next(p for p in ps if positions[p]==0)
                cap=m*prod(p**vp(positions[p],p) for p in ps if p!=p0)
                ds=[d for d in range(1,cap+1) if cap%d==0]
                rr.append((tuple(sorted((str(p),h) for p,h in positions.items())),p0,cap,tuple(ds)));coeff[p0].update(ds)
        oldrr=[(tuple(sorted(r['positions'].items())),r['zero_prime'],r['coefficient_cap'],tuple(r['allowed_coefficients'])) for r in dat[str(m)]['roles']]
        need(sorted(rr)==sorted(oldrr),'missing source-prime/position role')
        expect={str(p):sorted(a) for p,a in coeff.items()};need(expect==dat[str(m)]['coefficients'],'coefficient union wrong')
        need(sum(map(len,expect.values()))==dat[str(m)]['family_count']=={5:6,7:26}[m],'wrong family count')
        out[str(m)]={'roles':len(rr),'coefficients':expect,'family_count':sum(map(len,expect.values()))}
    for c in (3,15):need(all(60%(c*2**a)==0 for a in range(3)),'low dyadic family endpoint')
    for c in (12,84):need(all(420%(c*5**a)==0 for a in range(2)),'low quinary family endpoint')
    return out

def sources():
    inp=json.loads((ROOT/'sources/INPUTS.json').read_text())
    for x in inp['inputs']:
        p=ROOT/x['file'];need(p.exists() and p.stat().st_size==x['bytes'] and hashlib.sha256(p.read_bytes()).hexdigest()==x['sha256'],'source bytes changed')
    return len(inp['inputs'])

def main():
    start=time.monotonic();alg=json.loads((ROOT/'evidence/algebra.json').read_text());dom=json.loads((ROOT/'evidence/domains.json').read_text());rows=json.loads((ROOT/'evidence/rows.json').read_text());fam=json.loads((ROOT/'evidence/families.json').read_text())
    result={'status':'PASS_NEW_CRITICAL_QUOTIENT_CLOSURES','source_files':sources(),'algebra':check_algebra(alg)}
    result['finite_domain']=check_domain(dom,rows,result['algebra']['height_exponent']);result['residual_families']=check_families(fam)
    (ROOT/'evidence/verification.json').write_text(json.dumps(result,separators=(',',':'),ensure_ascii=False)+'\n')
    print(json.dumps({'status':result['status'],'seconds':time.monotonic()-start,'finite':result['finite_domain']},ensure_ascii=False))
if __name__=='__main__':main()
