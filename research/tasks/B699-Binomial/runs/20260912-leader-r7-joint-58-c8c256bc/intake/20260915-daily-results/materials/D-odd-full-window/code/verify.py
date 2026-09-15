#!/usr/bin/env python3
"""Second NEW-chain verifier; does not import the generator.
Reverse CRT, Legendre valuations, exact polynomial translations, full case domains.
Author-internal second implementation, not external mathematical review.
"""
from pathlib import Path
from itertools import combinations,permutations
from math import prod,isqrt,comb,gcd
from functools import lru_cache
import json,hashlib,time,argparse,copy
ROOT=Path(__file__).resolve().parents[1]

def need(ok,msg='invalid certificate'):
    if not ok:raise ValueError(msg)

def vp(x,p):
    need(x!=0,'valuation at zero');x=abs(x);e=0
    while x%p==0:x//=p;e+=1
    return e

def polynomial(f,x,y):
    c=f['coeffs']
    if f['degree']==1:return c[0]*x+c[1]*y+c[2]
    return c[0]*x*x+c[1]*x*y+c[2]*y*y+c[3]*x+c[4]*y+c[5]

def mul(A,B):
    C={}
    for (a,b),u in A.items():
        for (c,d),v in B.items():C[a+c,b+d]=C.get((a+c,b+d),0)+u*v
    return {z:v for z,v in C.items() if v}

def translate(f,L):
    x={(0,0):L,(1,0):1};y={(0,0):L,(1,0):1,(0,1):1};o={(0,0):1}
    basis=[x,y,o] if f['degree']==1 else [mul(x,x),mul(x,y),mul(y,y),x,y,o]
    ans={}
    for c,term in zip(f['coeffs'],basis):
        for z,v in term.items():ans[z]=ans.get(z,0)+c*v
    return {z:v for z,v in ans.items() if v}

def primes_for(m):return [p for p in (2,3,5,7) if p<m]

def cost(c,omit=None):
    w={int(r):v for r,v in c['row_weights'].items()};H=c['H'];m=c['target']
    E={p:max(sum(z*vp(r-h,p) for r,z in w.items()) for h in H) for p in primes_for(m) if p!=omit}
    if m in (5,7):E[m]=max(w.values())
    K=sum(w.values())+sum(e*(p-1).bit_length() for p,e in E.items())+sum(f['weight']*(sum(abs(a) for a in f['coeffs'])-1).bit_length() for f in c['polynomials'])
    return K,E

def height_check(c):
    m,d,H=c['target'],c['d'],c['H'];w={int(r):z for r,z in c['row_weights'].items()}
    need((m,d) in [(5,5),(7,7),(8,8)],'source/window mismatch')
    need(len(H)==len(set(H)) and all(0<=h<d for h in H),'bad position domain')
    need(w and all(type(z)is int and z>0 and 0<=r<d and r not in H for r,z in w.items()),'row weights')
    nonzero=[]
    for f in c['polynomials']:
        need(f['degree'] in (1,2) and type(f['weight'])is int and f['weight']>0)
        need(len(f['coeffs'])==(3 if f['degree']==1 else 6) and all(type(a)is int for a in f['coeffs']))
        need(any(f['coeffs'][:2 if f['degree']==1 else 3]),'wrong degree')
        if f['nonzero']=='sign':
            z=translate(f,m+1);const=z.get((0,0),0);need(const!=0,'zero legal boundary')
            need(all(v*const>=0 for v in z.values()),'sign proof invalid')
            nonzero.append({'type':'sign','translation':[[a,b,v] for (a,b),v in sorted(z.items())]})
        else:
            allowed={(1,(1,-1,0)),(2,(1,-1,0,0,0,0)),(2,(0,1,-1,0,0,0))}
            need(f['nonzero']=='central' and (f['degree'],tuple(f['coeffs'])) in allowed,'unproved zero locus')
            # j,k>0; the only zero is j=k, where alpha=2 divides Lambda_m.
            need({5:60,7:420,8:840}[m]%2==0)
            nonzero.append({'type':'central','alpha':2,'frozen_input':'LCM'})
    for r in range(d):
        for b in range(r+1):
            need(sum(f['weight'] for f in c['polynomials'] if polynomial(f,b,r-b)==0)>=w.get(r,0),'uncovered full-window cell')
    W=sum(w.values());D=sum(f['degree']*f['weight'] for f in c['polynomials']);delta=W-D
    need(delta>0 and (W,D,delta)==(c['W'],c['degree_weight'],c['gap']),'no strict descent')
    K,E=cost(c);need(K==c['K'] and E=={int(p):v for p,v in c['small_exponents'].items()},'small-prime cancellation cost')
    exponent=K//delta+1;need(c['height_exponent']==exponent and int(c['N'])==2**exponent,'height changed')
    need(c['T']=={5:11125,7:262144,8:32768}[m],'mass threshold changed')
    return {'id':c['id'],'K':K,'delta':delta,'N':c['N'],'cells':d*(d+1)//2,'nonzero':nonzero}

def validate_dat(dat):
    cs=dat['cases']
    expected={5:{(r,) for r in range(5)}|{(0,4)},7:set(combinations(range(7),2))|{(0,3,5),(0,3,6),(0,4,5),(0,4,6),(0,5,6)},8:{(0,3,5,7)}}
    need(len(cs)==33 and len({c['id'] for c in cs})==33,'missing/duplicate certificate')
    need({m:{tuple(c['H']) for c in cs if c['target']==m} for m in expected}==expected,'case set changed')
    checked=[height_check(c) for c in cs];out=[]
    for m,hsize in [(5,1),(7,2)]:
        templ=[c for c in cs if c['target']==m and len(c['H'])==hsize]
        need({tuple(c['H']) for c in templ}==set(combinations(range(m),hsize)))
        computed=[]
        for c in templ:
            for p in primes_for(m):
                K,E=cost(c,p);computed.append({'id':c['id'],'p':p,'K':K,'cost':{str(q):e for q,e in E.items()},'W':c['W'],'delta':c['gap']})
        r=dat['relative'][str(m)];need(computed==r['cases'],'bounded-prime cost domain')
        Kmax=max((x['K']+x['delta']-1)//x['delta'] for x in computed);Lmax=max((x['W']+x['delta']-1)//x['delta'] for x in computed)
        need((Kmax,Lmax)==(r['Kmax'],r['Lmax']))
        out.append({'target':m,'Kmax':Kmax,'Lmax':Lmax,'cost_cases':len(computed)})
    margins={'five':(11125-1)*2**16-30**6,'seven':2**18*27*(262144-45)-3*840**4,'eight':5*3**8*2**47*32768-8*5040**6}
    need(all(x>0 for x in margins.values()))
    return checked,out,margins

def case_domain(dat):
    cs=[dict(c,kind='positions') for c in dat['cases']]
    for m,B in [(5,4),(7,6)]:
        r=dat['relative'][str(m)];cs.append({'id':f'm{m}_min{B}','target':m,'d':m,'H':list(range(m)), 'kind':'bounded_min','B':B,'N':str(2**(r['Kmax']+1)*B**r['Lmax']),'T':{5:11125,7:262144}[m]})
    return cs

def normalize(x,m):
    s=prod(p**vp(x,p) for p in primes_for(m))
    if m in (5,7) and vp(x,m)==1:s*=m
    return s

@lru_cache(maxsize=None)
def known_gap(n,m):
    t=1
    for r in range(4):t*=normalize(n-r,m)
    lhs=t**6*(3*n*n-12*n+8);rhs=1048576*(n-1)**6*(n-3)**3
    if lhs<rhs:return 'QIG'
    if m>=6:
        t*=normalize(n-4,m)*normalize(n-5,m)
        if t**4*(3*n*n-20*n+24)<7077888*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
    if m>=8:
        t*=normalize(n-6,m)*normalize(n-7,m)
        R=((6*n-89)*n+462)*n*n-1072*n+960
        if t**6*(n-6)**2*R<5*6561*140737488355328*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3:return 'EIGHTG'
    return None

@lru_cache(maxsize=None)
def low_profile(n,d):
    powers=[];locations=[]
    for p in primes_for(d):
        vals=[vp(n-r,p) for r in range(d)];e=max(vals)
        powers.append(p**e);locations.append(sum(1<<r for r,v in enumerate(vals) if v==e))
    return tuple(powers),tuple(locations)

def qualifies_actual(n,c):
    powers,places=low_profile(n,c['d'])
    if c['kind']=='bounded_min':return min(powers)<=c['B']
    mask=sum(1<<h for h in c['H']);return all(a&mask for a in places)

def make_mask(c):
    d=c['d'];ps=primes_for(c['target']);mods=[];tables=[]
    for p in ps:
        q=p;e=1
        while q<d:q*=p;e+=1
        mods.append(q);part=[]
        if c['kind']=='bounded_min':need(c['B']<q,'truncated max not sufficient')
        for n in range(q):
            es=[e if (n-r)%q==0 else vp((n-r)%q,p) for r in range(d)]
            if c['kind']=='positions':part.append(any(es[h]==max(es) for h in c['H']))
            else:part.append(p**max(es)<=c['B'])
        tables.append(part)
    L=prod(mods);mask=[]
    for n in range(L):
        z=[tab[n%q] for tab,q in zip(tables,mods)];mask.append(all(z) if c['kind']=='positions' else any(z))
    return mask

def reconstruct_high(c,mask):
    d,m,H,N,T=c['d'],c['target'],c['H'],int(c['N']),c['T'];ps=primes_for(m);out=set();seen=set()
    if N<=T:return []
    powers={}
    for p in ps:
        e=0;a=N-1
        while a>=p:a//=p;e+=1
        powers[p]=[p**z for z in range(e,0,-1)]
    if c['kind']=='bounded_min' and m==7:need(T>c['B']**4)
    for q,p in combinations(reversed(ps),2):
        for Q in powers[q]:
            for P in powers[p]:
                if P*Q<=T:continue
                if c['kind']=='bounded_min' and m==7 and min(P,Q)<=c['B']:continue
                inv=pow(Q,-1,P)
                for s,r in permutations(reversed(H),2):
                    n=s+Q*((r-s)*inv%P)
                    if not T<=n<N or n>=P*Q or n in seen or not mask[n%len(mask)]:continue
                    if c['kind']=='bounded_min' and m==7 and (P*Q*c['B'])**2<=n**3:continue
                    if vp(n-r,p)!=(P.bit_length()-1 if p==2 else vp(P,p)) or vp(n-s,q)!=vp(Q,q):continue
                    vals=[t**max(vp(n-h,t) for h in range(d)) for t in ps]
                    if vals[ps.index(p)]!=P or vals[ps.index(q)]!=Q:continue
                    seen.add(n)
                    if c['kind']=='bounded_min' and min(vals)>c['B']:continue
                    M=prod(vals);mass=(M>n) if m==5 else (M*M>n*n*n) if m==7 else (M>n*n)
                    if mass:out.add(n)
    return sorted(out)

def digest(xs):return hashlib.sha256(''.join(str(n)+'\n' for n in xs).encode()).hexdigest()

def sieve(N):
    a=bytearray([1])*(N+1);a[:2]=b'\0\0'
    for p in range(2,isqrt(N)+1):
        if a[p]:a[p*p::p]=bytes((N-p*p)//p+1)
    return a

def legendre(x,p):
    z=0
    while x:x//=p;z+=x
    return z

def row_check(rec,prime):
    m,n,ivs=rec;need(m in (5,7,8) and n>=2*(m+1));at=m+1;total=0
    for a,b,p,Q in ivs:
        need(a==at and a<=b<=n//2,'uncovered interval or endpoint')
        need(m<=p<len(prime) and prime[p],'prime or threshold')
        need(legendre(n,p)-legendre(m,p)-legendre(n-m,p)>0,'factorial cancellation')
        need(p<=Q<=n and Q==p**vp(Q,p),'not a prime power')
        need(a//Q==b//Q and a%Q>n%Q,'no complete-layer carry')
        total+=b-a+1;at=b+1
    need(at==n//2+1,'tail gap');return total

def residual_check(dat):
    expect={5:[(0,1),(0,2),(0,3)],7:[(0,1,2),(0,1,3),(0,1,4),(0,1,5),(0,1,6),(0,2,3),(0,2,4),(0,2,5),(0,2,6),(0,3,4)]}
    out={}
    for m,Hs in expect.items():
        ps=primes_for(m);by={p:set() for p in ps};roles=[]
        for H in Hs:
            for hs in permutations(H):
                p0=ps[hs.index(0)];cap=m
                for p,h in zip(ps,hs):
                    if h:cap*=p**vp(h,p)
                ds=[c for c in range(1,cap+1) if cap%c==0];by[p0].update(ds)
                roles.append({'positions':{str(p):h for p,h in zip(ps,hs)},'zero_prime':p0,'coefficient_cap':cap,'allowed_coefficients':ds})
        out[str(m)]={'remaining_H':[list(H) for H in Hs],'roles':roles,'families':{str(p):sorted(s) for p,s in by.items()},'family_count':sum(len(s) for s in by.values())}
    need(out==dat,'residual role/cost list mismatch');return {m:len(v['roles']) for m,v in out.items()}

def main(out):
    start=time.monotonic();E=ROOT/'evidence';dest=Path(out);dest.mkdir(exist_ok=True,parents=True)
    dat=json.loads((E/'height_certificates.json').read_text());heights,relative,margins=validate_dat(dat)
    claimed=json.loads((E/'domains.json').read_text());cs=case_domain(dat)
    need(len(claimed)==len(cs)==35);byid={x['id']:x for x in claimed};need(set(byid)=={c['id'] for c in cs})
    rows=set();summary=[];gapcache={}
    for c in cs:
        v=byid[c['id']];mask=make_mask(c);need(v['period']==len(mask) and v['residues']==sum(mask))
        # Actual valuations, not the generator's mask, determine every low row.
        low=[]
        for n in range(2*(c['target']+1),min(c['T'],int(c['N']))):
            a=qualifies_actual(n,c);need(bool(mask[n%len(mask)])==bool(a),'period/full-valuation disagreement')
            if a:low.append(n)
        need(len(low)==v['low_count'] and digest(low)==v['low_sha256'],'incomplete low domain')
        high=reconstruct_high(c,mask);need(high==v['high'],'incomplete high CRT domain')
        gc={'QIG':0,'SIXG':0,'EIGHTG':0};terminal=[]
        for n in low+high:
            tag=known_gap(n,c['target'])
            if tag:gc[tag]+=1
            else:terminal.append(n);rows.add((c['target'],n))
        need(gc==v['gap_counts'] and terminal==v['terminal_rows'],'wrong gap or terminal filtering')
        summary.append({'id':c['id'],'low':len(low),'high':len(high),'terminal':len(terminal),'gaps':gc})
        print('PASS',c['id'],len(low),len(high),len(terminal),flush=True)
    rc=json.loads((E/'rows.json').read_text());need(len(rc)==len(rows) and {(m,n) for m,n,iv in rc}==rows,'row set mismatch')
    prime=sieve(max(n for m,n in rows));total=sum(row_check(rec,prime) for rec in rc)
    rolecounts=residual_check(json.loads((E/'residual_families.json').read_text()))
    output={'status':'PASS_NEW_ODD_FULL_WINDOWS','height_certificates':len(heights),'grid_cells':sum(x['cells'] for x in heights),'polynomial_nonzero_checks':sum(len(x['nonzero']) for x in heights),'central_checks':sum(sum(y['type']=='central' for y in x['nonzero']) for x in heights),'relative_heights':relative,'mass_margins':margins,'finite_cases':summary,'terminal_rows':len(rc),'intervals':sum(len(iv) for m,n,iv in rc),'covered_target_inputs':total,'residual_role_counts':rolecounts,'residual_family_counts':{'5':8,'7':28},'historical_chains_replayed':False,'lean':False,'external_review':False}
    (dest/'checked_heights.json').write_text(json.dumps({'heights':heights,'relative':relative,'mass_margins':margins},sort_keys=True,separators=(',',':'))+'\n')
    (dest/'verification.json').write_text(json.dumps(output,sort_keys=True,separators=(',',':'))+'\n')
    print('PASS NEW CHAIN',len(rows),'rows',total,'inputs; seconds',time.monotonic()-start,flush=True)
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence'));a=ap.parse_args();main(a.out)
