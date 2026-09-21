"""Build the exact certificate. Regeneration is NOT part of read-only replay."""
import hashlib,json,math
from pathlib import Path
from exact_polynomial import polynomials,serialize
ROOT=Path(__file__).resolve().parent

def factor(n):
    out={}; q=2
    while q*q<=n:
        while n%q==0: out[q]=out.get(q,0)+1; n//=q
        q=3 if q==2 else q+2
    if n>1: out[n]=out.get(n,0)+1
    return out

def rem(u,v,c):
    return [-4*(2*u-v)*(3*u-2*v+2*c-1),
            -7*u*u+8*u*v-4*u*c+2*u-2*v*v+4*c*(c-1)]

def build():
    endpoints=[]
    for P in range(3,71,2):
        fs=factor(P)
        if len(fs)!=1: continue
        p,h=next(iter(fs.items())); n=2*(P+1)**2
        C3=n*(n-1)*(n-2)//6
        qs=sorted(q for q in factor(C3) if q>=3)
        bj=1; witnesses=[]
        for j in range(1,n//2+1):
            bj=bj*(n-j+1)//j
            if j<4: continue
            d=math.gcd(bj,C3)
            w=next((q for q in qs if d%q==0),None)
            if w is None: raise ValueError(f'actual counterexample? {n=} {j=}')
            witnesses.append(w)
        text=''.join(f'{j}:{q}\n' for j,q in enumerate(witnesses,4))
        endpoints.append(dict(P=P,p=p,h=h,n=n,first_j=4,last_j=n//2,
            odd_primes_Cn3=qs,witnesses=witnesses,
            witness_sha256=hashlib.sha256(text.encode()).hexdigest()))
    return dict(format='B699-PLUS-SQUARE-v1',
        scope=dict(i=3,n='2*(m*p**h+1)**2',p='odd prime',h_min=1,m_min=1,
                   coprime_m_p=True,all_legal_j=True,two_base_assumption=False),
        bounds=dict(general_threshold=72,threshold_power_m=3,r1_abs=144,r0_abs=89,
                    r1_nonzero_multiple=4,small_cofactor_tail=71,small_r0_abs=32),
        polynomial_variables=['P','m','u','v','c'],
        polynomials={k:serialize(v) for k,v in polynomials().items()},
        small_cofactor_templates=[dict(u=u,v=v,c=c,remainder=rem(u,v,c))
                      for u in range(2) for v in range(5) for c in range(3)],
        endpoints=endpoints,endpoint_pairs=sum(len(x['witnesses']) for x in endpoints))
if __name__=='__main__':
    cert=build()
    p=ROOT/'certificates/certificate.json'
    p.write_text(json.dumps(cert,ensure_ascii=False,indent=2)+'\n')
    print(f'GENERATED: {len(cert["endpoints"])} complete rows, {cert["endpoint_pairs"]} legal pairs')
