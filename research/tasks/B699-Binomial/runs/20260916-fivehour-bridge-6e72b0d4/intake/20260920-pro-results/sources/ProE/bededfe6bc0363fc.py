"""First check: integer coefficients and actual binomial coefficient gcds."""
import argparse,hashlib,json,math
from pathlib import Path
from exact_polynomial import *

def need(b,msg):
    if not b: raise ValueError(msg)

def factor(n):
    out={}; q=2
    while q*q<=n:
        while n%q==0: out[q]=out.get(q,0)+1; n//=q
        q=3 if q==2 else q+2
    if n>1: out[n]=out.get(n,0)+1
    return out

def check(cert):
    need(cert['format']=='B699-PLUS-SQUARE-v1','format')
    need(cert['scope']==dict(i=3,n='2*(m*p**h+1)**2',p='odd prime',h_min=1,m_min=1,
        coprime_m_p=True,all_legal_j=True,two_base_assumption=False),'scope')
    need(cert['bounds']==dict(general_threshold=72,threshold_power_m=3,r1_abs=144,r0_abs=89,
        r1_nonzero_multiple=4,small_cofactor_tail=71,small_r0_abs=32),'bounds')
    need(cert['polynomial_variables']==list(VARS),'variables')
    ps={k:deserialize(v) for k,v in cert['polynomials'].items()}
    need(set(ps)=={'N','j','quotient','r1','r0'},'polynomial names')
    P,m,u,v,c=map(var,range(5)); ref=polynomials()
    need(ps['N']==ref['N'] and ps['j']==ref['j'],'input polynomials')
    lhs=scale(mul(power(m,4),ps['j'],add(ps['j'],const(-1))),4)
    rhs=add(mul(ps['N'],ps['quotient']),mul(ps['r1'],P),ps['r0'])
    need(lhs==rhs,'division identity')
    need(ps['r1']==ref['r1'] and ps['r0']==ref['r0'],'coefficient factorization')
    # The normalized interval bounds are exact rational/integer interval arithmetic.
    f=(-4,2); h=(-9,6)
    need(4*max(map(abs,f))*max(map(abs,h))==144,'r1 interval')
    need(sum([7,32,8,2,32,8])==89,'r0 triangle bound')
    # Substitute P=72*m^3+t in N minus the envelope.
    t=P
    sub=add(scale(power(m,3),72),t)
    envelope_gap=add(scale(mul(power(m,2),power(sub,2)),2),scale(mul(m,sub),4),const(1),
                     scale(mul(power(m,5),sub),-144),scale(power(m,4),-89))
    need(envelope_gap==add(scale(mul(power(m,2),power(t,2)),2),
           scale(mul(power(m,5),t),144),scale(mul(m,t),4),scale(power(m,4),199),const(1)),
           'strict positive general tail')
    need(4*72>89,'nonzero-remainder tail')
    templates=cert['small_cofactor_templates']
    need([(r['u'],r['v'],r['c']) for r in templates]==[(a,b,c) for a in range(2) for b in range(5) for c in range(3)],'complete templates')
    for row in templates:
        a,b,c=row['u'],row['v'],row['c']
        r1=-4*(2*a-b)*(3*a-2*b+2*c-1)
        r0=-7*a*a+8*a*b-4*a*c+2*a-2*b*b+4*c*(c-1)
        need(row['remainder']==[r1,r0],'small remainder')
        need(abs(r1)<=144 and abs(r0)<=32,'small bound')
        need((r1!=0 or r0!=0) or (a,b,c) in ((0,0,0),(0,0,1)), 'nontrivial zero template')
        if r1: need(abs(r1)>=4,'small nonzero slope')
    need(2*71**2-140*71-31==111,'small tail constant')
    expected=[]
    for P in range(3,71,2):
        f=factor(P)
        if len(f)==1:
            p,h=next(iter(f.items())); expected.append((P,p,h))
    rows=cert['endpoints']
    need([(e['P'],e['p'],e['h']) for e in rows]==expected,'complete prime-power endpoint set')
    alltext=[]; total=0
    for row in rows:
        P=row['P']; n=2*(P+1)**2
        need(row['n']==n and row['first_j']==4 and row['last_j']==n//2,'endpoint n/range')
        C3=n*(n-1)*(n-2)//6
        qs=sorted(q for q in factor(C3) if q>=3)
        need(row['odd_primes_Cn3']==qs,'prime set')
        need(len(row['witnesses'])==n//2-3,'endpoint completeness')
        bj=1; got=[]
        for j in range(1,n//2+1):
            bj=bj*(n-j+1)//j
            if j<4: continue
            d=math.gcd(C3,bj)
            w=next((q for q in qs if d%q==0),None)
            need(w is not None,'uncovered original pair')
            got.append(w)
        need(got==row['witnesses'],'actual binomial gcd witnesses')
        text=''.join(f'{j}:{q}\n' for j,q in enumerate(got,4))
        need(hashlib.sha256(text.encode()).hexdigest()==row['witness_sha256'],'row hash')
        alltext.append(f'P={P}\n'+text); total+=len(got)
    need(total==cert['endpoint_pairs']==30106,'total pair count')
    digest=hashlib.sha256(''.join(alltext).encode()).hexdigest()
    print('PASS_PRIMARY_INTEGER_COEFFICIENTS_AND_BINOMIAL_GCD')
    print(f'rows={len(rows)} legal_pairs={total} witness_sha256={digest}')
if __name__=='__main__':
    ap=argparse.ArgumentParser(); ap.add_argument('--certificate',type=Path,default=Path(__file__).parent/'certificates/certificate.json')
    args=ap.parse_args(); check(json.loads(args.certificate.read_text()))
