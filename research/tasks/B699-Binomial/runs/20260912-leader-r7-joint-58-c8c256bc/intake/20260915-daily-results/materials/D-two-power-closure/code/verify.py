#!/usr/bin/env python3
"""Independent NEW-chain verifier. Does not import the generator or its helpers.
All arithmetic is integer arithmetic; no factoring oracle or probable primality.
"""
from pathlib import Path
from itertools import combinations,permutations
from math import prod,comb,isqrt
import json,hashlib,time,argparse,copy
ROOT=Path(__file__).resolve().parents[1]

def require(ok,message='invalid certificate'):
    if not ok:raise ValueError(message)

def vp(x,p):
    require(x!=0,'valuation at zero')
    x=abs(x);v=0
    while x%p==0:x//=p;v+=1
    return v

def value(f,x,y):
    if f['degree']==1:
        a,b,c=f['coeffs'];return a*x+b*y+c
    a,b,c,d,e,z=f['coeffs'];return a*x*x+b*x*y+c*y*y+d*x+e*y+z

def mul(A,B):
    C={}
    for (a,b),x in A.items():
        for (c,d),y in B.items():C[a+c,b+d]=C.get((a+c,b+d),0)+x*y
    return {t:v for t,v in C.items() if v}

def translated(f,L):
    X={(0,0):L,(1,0):1};Y={(0,0):L,(1,0):1,(0,1):1};one={(0,0):1}
    base=[X,Y,one] if f['degree']==1 else [mul(X,X),mul(X,Y),mul(Y,Y),X,Y,one]
    out={}
    for a,B in zip(f['coeffs'],base):
        for k,v in B.items():out[k]=out.get(k,0)+a*v
    return {k:v for k,v in out.items() if v}

def bound_check(c):
    d,m,H=c['d'],c['target'],c['H'];w={int(r):a for r,a in c['row_weights'].items()};fs=c['polynomials']
    require((d,m) in [(6,6),(6,7),(8,8)])
    require(len(H)==len(set(H)) and all(0<=h<d for h in H))
    require(all(isinstance(x,int) and x>=0 for x in w.values()))
    require(all(r not in H or a==0 for r,a in w.items()))
    W=sum(w.values());D=0;signs=[]
    for f in fs:
        require(type(f['weight']) is int and f['degree'] in [1,2] and f['weight']>0)
        require(all(type(a) is int for a in f['coeffs']), 'noninteger polynomial coefficient')
        require(len(f['coeffs'])==(3 if f['degree']==1 else 6))
        require(any(f['coeffs'][:2 if f['degree']==1 else 3]),'wrong degree')
        s=translated(f,m+1)
        require(s.get((0,0),0)!=0,'zero at legal boundary')
        sg=1 if s[0,0]>0 else -1
        require(all(sg*x>=0 for x in s.values()),'nonzero sign proof failed')
        D+=f['degree']*f['weight'];signs.append({'polynomial':f,'translation':[[a,b,v] for (a,b),v in sorted(s.items())]})
    for r in range(d):
        for b in range(r+1):
            coverage=sum(f['weight'] for f in fs if value(f,b,r-b)==0)
            require(coverage>=w.get(r,0),f'uncovered grid {c["id"]}:{r},{b}')
    delta=W-D;require(delta>0 and W==c['W'] and D==c['degree_weight'] and delta==c['gap'])
    ps=[2,3,5] if d==6 else [2,3,5,7]
    E={p:max(sum(a*vp(r-h,p) for r,a in w.items() if a) for h in H) for p in ps}
    if m==7:E[7]=max(w.values())
    C=prod(p**e for p,e in E.items())
    if c['bound_kind']=='coarse':
        K=W+sum(e*(p-1).bit_length() for p,e in E.items())+sum(f['weight']*(sum(map(abs,f['coeffs']))-1).bit_length() for f in fs)
        ee=K//delta+1
        require(E=={int(p):e for p,e in c['small_exponents'].items()},'small prime cost')
        require(K==c['K'] and ee==c['height_exponent'] and int(c['N'])==2**ee,'height changed')
        N=2**ee
    else:
        require(c['bound_kind']=='six-geometric' and H==[0,4,5] and w=={1:6,2:4,3:3})
        expected={(1,(0,1,-1)):2,(1,(1,0,-1)):2,(2,(0,1,0,0,0,0)):3,(2,(1,1,1,-3,-3,2)):1}
        require({(f['degree'],tuple(f['coeffs'])):f['weight'] for f in fs}==expected,'geometric product changed')
        # Product = ((j-1)(k-1))^2 * (jk)^3 * (j^2+jk+k^2-3n+2)
        # <= (n^2/4)^5 * n^2. Bernoulli applies above 2(d-1)W.
        N=max(2*(d-1)*W,(2*C)//4**5+1)
        require(int(c['N'])==N,'geometric threshold changed')
    T=256 if m==6 else 262144 if m==7 else 32768
    require(c['T']==T)
    return {'id':c['id'],'N':str(N),'T':T,'W':W,'D':D,'gap':delta,'small_exponents':E,'grid_cells':d*(d+1)//2,'nonzero_certificates':signs}

def mass_constants():
    a=2**18*27*(256-45)-3*120**4
    b=2**18*27*(262144-45)-3*840**4
    c=5*3**8*2**47*32768-8*5040**6
    require(min(a,b,c)>0)
    # Bernoulli denominator losses: 4+3*3+2*5=23 (use safe 45),
    # eight-window product exponents total 19 and n-7>=...
    require(4*1+3*3+2*5<=45 and 32768>=4*19*7)
    return {'SIX6_margin':a,'SIX7_margin':b,'EIGHT8_margin':c}

def max_vector(n,d):
    ps=[2,3,5] if d==6 else [2,3,5,7]
    vals=[[vp(n-h,p) for h in range(d)] for p in ps]
    return vals

def covers(n,d,H):
    return all(max(v)==max(v[h] for h in H) for v in max_vector(n,d))

def class_mask(d,H):
    ps=[2,3,5] if d==6 else [2,3,5,7]
    exponents=[3,2,2] if d==6 else [3,2,2,2]
    moduli=[p**e for p,e in zip(ps,exponents)];L=prod(moduli)
    tables=[]
    for p,e,q in zip(ps,exponents,moduli):
        require(q>d-1)
        arr=[]
        for residue in range(q):
            v=[e if (residue-h)%q==0 else vp((residue-h)%q,p) for h in range(d)]
            arr.append(max(v)==max(v[h] for h in H))
        tables.append(arr)
    mask=[all(tab[n%q] for tab,q in zip(tables,moduli)) for n in range(L)]
    return mask

def recovered_high(c,mask):
    d,H,N,T=c['d'],c['H'],int(c['N']),c['T'];ps=[2,3,5] if d==6 else [2,3,5,7]
    # Different enumeration: exponent ranges from repeated division of N-1,
    # all p-powers included; inverse taken in the other modulus.
    powers={}
    for p in ps:
        k=0;x=N-1
        while x>=p:x//=p;k+=1
        powers[p]=[p**a for a in range(1,k+1)]
    candidate=set();seen=set();pairs=0;grids=0
    for q,p in combinations(reversed(ps),2):
        for Q in reversed(powers[q]):
            for P in reversed(powers[p]):
                pairs+=1
                if P*Q<=T:continue
                inverse=pow(Q,-1,P)
                for s,r in permutations(reversed(H),2):
                    grids+=1
                    n=s+Q*((r-s)*inverse%P)
                    if not (T<=n<N and n<P*Q):continue
                    if not mask[n%len(mask)]:continue
                    if n in seen:continue
                    # An exact largest-pair test, not the generator's local
                    # exponent shortcut. A candidate passing this test may
                    # be obtained from several different pair templates.
                    v=max_vector(n,d);Qall=[p0**max(a) for p0,a in zip(ps,v)]
                    if Qall[ps.index(p)]!=P or Qall[ps.index(q)]!=Q:continue
                    seen.add(n)
                    M=prod(Qall)
                    if M*M>n**3 if d==6 else M>n*n:candidate.add(n)
    return sorted(candidate),{'power_pairs_including_small':pairs,'position_templates_after_modulus_test':grids,'exact_pair_rows':len(seen)}

def primes_upto(N):
    b=bytearray(b'\x01')*(N+1);b[0:2]=b'\x00\x00'
    for p in range(2,isqrt(N)+1):
        if b[p]:b[p*p::p]=b'\x00'*(((N-p*p)//p)+1)
    return b

def legendre(n,p):
    s=0
    while n:n//=p;s+=n
    return s

def check_row(row,prime):
    m,n,ivs=row;require(m in [6,7,8] and n>=2*(m+1))
    cursor=m+1;total=0
    for interval in ivs:
        require(len(interval)==4)
        a,b,p,Q=interval
        require(a==cursor and a<=b<=n//2,'gap or illegal endpoint')
        require(m<=p<len(prime) and prime[p],'threshold or composite witness')
        require(legendre(n,p)-legendre(m,p)-legendre(n-m,p)>0,'source not divisible')
        x=Q
        require(x>=p and x<=n,'bad prime-power size')
        while x%p==0:x//=p
        require(x==1,'not a complete prime power')
        # One quotient block, with all residues strictly past n mod Q.
        require(a//Q==b//Q and a%Q>n%Q,'no target carry on whole interval')
        total+=b-a+1;cursor=b+1
    require(cursor==n//2+1,'uncovered tail')
    return total

def main(out=None):
    start=time.perf_counter();D=ROOT/'evidence';dest=Path(out) if out else D;dest.mkdir(exist_ok=True,parents=True)
    cases=json.loads((D/'height_certificates.json').read_text())['cases']
    require(len(cases)==12 and len({c['id'] for c in cases})==12,'case domain changed')
    target_sets={6:{(0,4,5)},7:{(0,4,5)},8:{(0,1,7),(0,2,6),(0,3,4),(0,3,5),(0,3,5,6),(0,3,6,7),(0,4,5,6),(0,4,5,7),(0,4,6,7),(0,5,6,7)}}
    require({m:{tuple(c['H']) for c in cases if c['target']==m} for m in target_sets}==target_sets)
    bs=[bound_check(c) for c in cases];constants=mass_constants()
    claimed=json.loads((D/'candidate_domains.json').read_text())['domains'];require(len(claimed)==len(cases));byid={x['id']:x for x in claimed};allrows=set();counts=[]
    for c in cases:
        expected=byid[c['id']];mask=class_mask(c['d'],c['H']);lo=2*(c['target']+1);up=min(c['T'],int(c['N']))
        # Domain is reconstructed from untruncated valuations, not a claimed list.
        low=[n for n in range(lo,up) if covers(n,c['d'],c['H'])]
        require(all(bool(mask[n%len(mask)])==covers(n,c['d'],c['H']) for n in range(lo,up)),'period mismatch')
        high,diag=recovered_high(c,mask)
        require(low==expected['low_rows'],'missing low row')
        require(high==expected['high']['candidates'],'missing high candidate')
        require(len(mask)==expected['period'] and sum(mask)==expected['residue_classes'],'bad classes')
        sha=hashlib.sha256(''.join(str(n)+'\n' for n in high).encode()).hexdigest()
        require(sha==expected['high']['candidate_sha256'],'bad candidate digest')
        allrows.update((c['target'],n) for n in low+high)
        counts.append({'id':c['id'],'low_rows':len(low),'high_rows':high,'independent_enumeration':diag})
        print('VERIFIED DOMAIN',c['id'],len(low),len(high),flush=True)
    rows=json.loads((D/'row_covers.json').read_text())['rows']
    require([(m,n) for m,n,_ in rows]==sorted(allrows),'row union mismatch')
    prime=primes_upto(max(n for _,n in allrows));total=sum(check_row(r,prime) for r in rows)
    result={'status':'PASS_NEW_TWO_POWER_CLOSURES','cases':counts,'unique_rows':len(rows),'intervals':sum(len(z) for _,_,z in rows),'covered_target_configurations':total,'max_n':len(prime)-1,
            'witness_primes':len({p for _,_,z in rows for _,_,p,_ in z}),'grid_checks':sum(b['grid_cells'] for b in bs),'nonzero_polynomial_checks':sum(len(b['nonzero_certificates']) for b in bs),'constants':constants}
    (dest/'verification.json').write_text(json.dumps(result,indent=2)+'\n')
    (dest/'checked_heights.json').write_text(json.dumps(bs,indent=2)+'\n')
    print(result['status'],'rows',len(rows),'elapsed',round(time.perf_counter()-start,3),flush=True)
    return cases,rows,prime,allrows
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out');args=ap.parse_args();main(args.out)
