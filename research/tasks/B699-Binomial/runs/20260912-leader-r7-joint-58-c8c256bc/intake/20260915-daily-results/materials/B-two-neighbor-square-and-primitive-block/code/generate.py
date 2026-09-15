#!/usr/bin/env python3
"""Generate only the new finite certificates. Standard library; no searches."""
import argparse, json, math
from pathlib import Path

def poly(sign, rho, x, a):
    d=x-sign
    return 12*a*(a-d)*(a-2*d)-(rho*d-3*a)*(x*x-2)

def normalized_w(n,j):
    def v3(z):
        e=0
        while z%3==0:e+=1;z//=3
        return e
    cn=math.comb(n,3);alpha=n//math.gcd(n,j)
    a=math.gcd(cn,alpha)
    while a%2==0:a//=2
    N=(n-1)//(3 if v3(n-1)==1 else 1)
    M=(n-2)//2;K=M//(3 if v3(M)==1 else 1)
    e1=N//math.gcd(N,j*(j-1));e2=K//math.gcd(K,j*(j-1)*(j-2))
    return a*math.gcd(cn,e1)*math.gcd(cn,e2)

def generate(out):
    out.mkdir(parents=True, exist_ok=True)
    specs={
      1:[(1,7,2),(1,13,4),(1,13,9),(2,5,4),(2,19,16),
         (2,73,37),(2,37,9),(2,19,4),(2,73,2),(2,19,6)],
     -1:[(1,7,2),(1,11,2),(1,11,6),(1,11,8),(1,41,5),
         (1,41,9),(1,61,44),(1,151,32),(2,5,2),(2,5,3)]}
    groups=[]
    for sign, period, allowed in [(1,36,[2,4]),(-1,60,[1,5])]:
        rows=[]
        for rho,p,b in specs[sign]:
            values=sorted(set(poly(sign,rho,b,a)%p for a in range(p)))
            assert 0 not in values
            assert pow(2,period,p)==1
            rows.append({'rho':rho,'modulus':p,'x_residue':b,'nonzero_values':values})
        cover=[]
        for rho in [1,2]:
            for e in range(period):
                if e%6 not in allowed: continue
                choices=[i for i,r in enumerate(rows) if r['rho']==rho and pow(2,e,r['modulus'])==r['x_residue']]
                assert choices,(sign,rho,e)
                cover.append({'rho':rho,'exponent_residue':e,'witness':choices[0]})
        groups.append({'sign':sign,'period':period,'allowed_mod6':allowed,'rows':rows,'cover':cover})
    data={'version':1,'groups':groups,'core_root_evaluations':sum(r['modulus'] for g in groups for r in g['rows'])}
    (out/'modular_certificate.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n')
    low=[]
    # Required only for sign=-1. Upper and lower positions are both included.
    for x in range(2,14,2):
        for a in range(1,x+1):
            n=x*x; zeta=a*(x-1);j=min(zeta,n-zeta)
            if j<4:continue
            gcd0=math.gcd(math.comb(n,3),math.comb(n,j))
            odd=gcd0
            while odd%2==0:odd//=2
            assert odd>1
            w=normalized_w(n,j);assert w>1
            low.append({'x':x,'a':a,'n':n,'j':j,'odd_gcd':odd,'normalized_W':w})
    edge=[]
    for j in range(4,9):
        z=math.gcd(math.comb(16,3),math.comb(16,j))
        while z%2==0:z//=2
        assert z>1
        w=normalized_w(16,j);assert w>1
        edge.append({'n':16,'j':j,'odd_gcd':z,'normalized_W':w})
    alternating=[]
    for x,k in [(2,3),(2,5),(4,3),(6,3)]:
        n=x**k;t=(n+1)//(x+1)
        for a in range(1,x+1):
            zeta=a*t-1;j=min(zeta,n-zeta)
            if j<4:continue
            remainder=3*j*(j-1)%(n-1)
            assert remainder
            alternating.append({'x':x,'k':k,'a':a,'n':n,'j':j,'w1_remainder':remainder})
    data={'small_even_bases':low,'prime_three_edge':edge,'odd_alternation_bottom':alternating}
    (out/'finite_bottom.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS_GENERATION','modular_rows':20,'core_root_evaluations':sum(r['modulus'] for g in groups for r in g['rows']),
        'canonical_coverage_states':sum(len(g['cover']) for g in groups),'small_even_patterns':len(low),
        'prime_three_edge_pairs':len(edge),'odd_alternation_patterns':len(alternating)},sort_keys=True))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);generate(p.parse_args().out)
