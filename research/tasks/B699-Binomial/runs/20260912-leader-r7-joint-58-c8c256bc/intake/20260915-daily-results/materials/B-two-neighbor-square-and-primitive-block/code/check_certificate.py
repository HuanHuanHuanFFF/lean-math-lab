#!/usr/bin/env python3
"""Independent checker: expanded polynomial and all four rho classes.
Does not import the generator or use its sign/rho reflection to test roots.
"""
import argparse,json,math
from pathlib import Path

def require(x,msg):
    if not x: raise ValueError(msg)

def expanded(sign,rho,x,a):
    # Expand in a, retaining x-sign rather than the generator's factored form.
    d=x-sign
    return 12*a**3-36*d*a*a+(24*d*d+3*x*x-6)*a-rho*d*(x*x-2)

def choose(n,k):
    k=min(k,n-k);r=1
    for z in range(1,k+1):r=r*(n-k+z)//z
    return r

def oddpart(x):
    require(x>0,'positive oddpart argument')
    while x%2==0:x//=2
    return x

def verify_modular(data):
    require(data.get('version')==1,'version')
    groups=data.get('groups',[]);require(len(groups)==2,'two signs')
    stats=[];total_direct=0
    for sign,period,allowed in [(1,36,[2,4]),(-1,60,[1,5])]:
        matches=[g for g in groups if g.get('sign')==sign];require(len(matches)==1,'unique sign')
        g=matches[0];require(g.get('period')==period and g.get('allowed_mod6')==allowed,'exact period/domain')
        rows=g['rows'];require(len(rows)==10,'ten local witnesses')
        seen=set()
        for row in rows:
            rho,p,x=row['rho'],row['modulus'],row['x_residue']
            require(rho in (1,2) and 2<=p<=151 and 0<=x<p,'local range')
            require((rho,p,x) not in seen,'duplicate witness');seen.add((rho,p,x))
            value=1
            for _ in range(period):value=value*2%p
            require(value==1,'exponent period is not valid')
            images=sorted({expanded(sign,rho,x,a)%p for a in range(p)})
            require(0 not in images,'polynomial has a root')
            require(images==row['nonzero_values'],'wrong residue image')
        expected={(r,e) for r in (1,2) for e in range(period) if e%6 in allowed}
        actual=set()
        for item in g['cover']:
            r,e,w=item['rho'],item['exponent_residue'],item['witness']
            require((r,e) in expected and (r,e) not in actual,'wrong or duplicate coverage state')
            require(isinstance(w,int) and 0<=w<len(rows),'witness pointer')
            R=rows[w];require(R['rho']==r and pow(2,e,R['modulus'])==R['x_residue'],'witness mismatch')
            actual.add((r,e))
        require(actual==expected,'coverage hole')
        # Independent coverage check on rho=1,2,4,5, including the reflected cases.
        checked=0
        for rho in (1,2,4,5):
            for e in range(period):
                if e%6 not in allowed:continue
                candidates=[]
                for row in rows:
                    p=row['modulus'];x=pow(2,e,p)
                    vals=[expanded(sign,rho,x,a)%p for a in range(p)]
                    total_direct+=p
                    if 0 not in vals:candidates.append(p)
                require(candidates,'uncovered original rho')
                checked+=1
        stats.append({'sign':sign,'period':period,'canonical_states':len(expected),'original_states':checked})
    require(data['core_root_evaluations']==sum(r['modulus'] for g in groups for r in g['rows']),'root count')
    return {'groups':stats,'core_root_evaluations':data['core_root_evaluations'],'independent_root_evaluations':total_direct}

def independent_w(n,j):
    # Determine removal of an isolated 3 by n modulo 9, not valuations.
    m=(n-2)//2
    lam=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    mu=3 if m%3==0 and m%9!=0 else 1
    cn=choose(n,3);N=(n-1)//lam;K=m//mu
    e1=N//math.gcd(N,j*(j-1));e2=K//math.gcd(K,j*(j-1)*(j-2))
    return oddpart(math.gcd(cn,n//math.gcd(n,j)))*math.gcd(cn,e1*e2)

def verify_bottom(data):
    expected=[]
    for x in range(12,1,-2):
        for a in range(x,0,-1):
            n=x*x;z=a*(x-1);j=min(z,n-z)
            if j<4:continue
            odd=oddpart(math.gcd(choose(n,3),choose(n,j)))
            require(odd>1,'bad small input')
            w=independent_w(n,j);require(w>1,'small normalized certificate is trivial')
            expected.append({'x':x,'a':a,'n':n,'j':j,'odd_gcd':odd,'normalized_W':w})
    key=lambda d:(d['x'],d['a'])
    require(sorted(expected,key=key)==sorted(data['small_even_bases'],key=key),'small coverage mismatch')
    edge=[{'n':16,'j':j,'odd_gcd':oddpart(math.gcd(choose(16,3),choose(16,j))),'normalized_W':independent_w(16,j)} for j in range(4,9)]
    require(edge==data['prime_three_edge'],'prime 3 endpoint mismatch')
    expected=[]
    # Explicit digits, not the geometric-sum identity of the generator.
    for x,k in [(2,3),(2,5),(4,3),(6,3)]:
        for A in range(x):
            z=sum((A if r%2==0 else x-1-A)*x**r for r in range(k))
            n=x**k;j=min(z,n-z)
            if j<4:continue
            rem=3*j*(j-1)%(n-1);require(rem!=0,'alternating low state survives')
            expected.append({'x':x,'k':k,'a':A+1,'n':n,'j':j,'w1_remainder':rem})
    require(expected==data['odd_alternation_bottom'],'alternating bottom mismatch')
    return {'small_even_patterns':len(data['small_even_bases']), 'prime_three_endpoint_pairs':len(edge), 'odd_alternation_patterns':len(expected)}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--input',type=Path,required=True);p.add_argument('--out',type=Path,required=True);a=p.parse_args()
    result={'status':'PASS_INDEPENDENT_CERTIFICATE',**verify_modular(json.loads((a.input/'modular_certificate.json').read_text())),**verify_bottom(json.loads((a.input/'finite_bottom.json').read_text()))}
    a.out.mkdir(parents=True,exist_ok=True);(a.out/'certificate_check.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps(result,sort_keys=True))
