"""Second implementation: iterative modular cycles, residue sets, direct binomials.
Does not import common.py, check_core.py, or the certificate generator.
Both implementations were written in the same research session.
"""
import json,sys
from pathlib import Path
from math import gcd,prod,isqrt,comb
ROOT=Path(__file__).resolve().parents[1]
def need(ok,msg):
    if not ok:raise ValueError(msg)
def oddpart(x):
    while x%2==0:x//=2
    return x
def trim(x):
    y=x;count=0
    while y%3==0:y//=3;count+=1
    return x//3 if count==1 else x
def valuation(n,j,p):
    # Digit-addition carries, as opposed to the generating floor sums.
    a,b,c,total=j,n-j,0,0
    while a or b or c:
        a,ar=divmod(a,p);b,br=divmod(b,p)
        c=(ar+br+c)//p;total+=c
    return total
def prime(p):
    return isinstance(p,int) and p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def canonical(n,j):
    k=n-j;N=trim(n-1);K=trim((n-2)//2);la=(n-1)//N;mu=(n-2)//2//K
    return N,K,la,mu,[gcd(K,j-r) for r in range(3)],[gcd(N,j-r) for r in range(2)]
def flags(n,j):
    N,K,la,mu,C,A=canonical(n,j);g=gcd(n,j);V=la**3*mu**2;d=n-2*j;E=d*d-3*n+2
    Umin=8 if j%2 else (3 if la==1 else 1)
    return dict(edge_exact=2*V*(j*(j-1))**2<=g*g*(n-1)**3,
                edge_uniform=54*(j*(j-1))**2<=(n-1)**3,
                centre_exact=E<=0 or V*E*E<=4*Umin*(n-1)**3,
                centre_uniform=27*d**4<=4*(n-1)**3,
                middle_nine=C[1]==9,allocation_nine=9 in C)

def check_outer(cert):
    domain=set()
    for h in range(1,9):
        if h%3==0 or h in [1,4]:continue
        for g in range(1,17):
            if (2*h)%g==0:domain.add((h,oddpart(g)))
    seen=set();total=0
    for row in cert['rows']:
        h,m,p,L=row['h'],row['oddpart_n'],row['p'],row['period']
        need((h,m) not in seen,'duplicate family');seen.add((h,m))
        need(prime(p),'modulus not prime')
        sq={x*x%p for x in range(p)}
        base=[];b=1
        for v in range(54):
            if (h*(m*b-2)-18)%81==0:base.append(v)
            b=2*b%81
        need(b==1 and base==row['v_mod54'],'bad base period/root table')
        b=1;order=0
        while True:
            b=2*b%p;order+=1
            if b==1:break
            need(order<p,'nonperiodic modulus')
        need(order==row['order_2'] and L%54==0 and L%order==0,'bad combined period')
        n81,np=m%81,m%p;cells=[]
        for v in range(L):
            if (h*(n81-2)-18)%81==0:
                D=(9+4*h*(np-1)*(np-2))%p
                need(D not in sq,'a surviving square residue')
                cells.append({'v_mod_period':v,'discriminant_mod_p':D})
            n81=2*n81%81;np=2*np%p
        need((n81,np)==(m%81,m%p),'period not closed')
        need(cells==row['cells'],'missing residue cell')
        total+=len(cells)
    need(domain==seen and len(cert['rows'])==len(domain),'incomplete normalized parameter domain')
    need(total==cert['cell_count'],'wrong cell total')
    return {'families':len(seen),'cells':total,'method':'iterative powers and full square residue sets'}

def check_examples(rows,rowproof):
    nvals=0;liftvals=0
    for x in rows:
        n,j=x['n'],x['j'];need(n%4==0 and 4<=j<n//2,'bad legal range')
        N,K,la,mu,C,A=canonical(n,j)
        need(C==x['canonical_C'] and A==x['canonical_A'],'bad canonical factors')
        need(flags(n,j)==x['flags'],'wrong consumer flags')
        need((j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0)==x['exact_projections'],'projection assertion')
        need(gcd(n,j)==x['g'],'wrong g')
        need(n%(1<<x['v2_n'])==0 and n%(1<<(x['v2_n']+1))!=0,'wrong dyadic order')
        need(all(j%q==r for r,q in x['CRT']),'CRT regression')
        need(prod(q for r,q in x['CRT'])==x['CRT_period'],'CRT modulus product')
        vals=x['full_valuations'];factors=1
        for v in vals:
            p=v['p'];need(prime(p),'composite witness support')
            need(valuation(n,3,p)==v['v_Cn3'] and valuation(n,j,p)==v['v_Cnj'],'wrong full exponent')
            factors*=p**v['v_Cn3'];nvals+=2
        need(factors==n*(n-1)*(n-2)//6,'incomplete C(n,3) factorization')
        w=x['witness'];p=w['p']
        need(w in vals and p>=11 and w['v_Cnj']>0,'no actual witness')
        for i in range(3,10):need(valuation(n,i,p)>0,'same-prime lift fails');liftvals+=1
    z=rowproof;n=z['n'];j=z['sample_j']
    need(n==18*z['P']**z['r']*z['Q']**z['s']+2,'not in the new row family')
    need(prime(z['P']) and prime(z['Q']),'not a prime base')
    for key,val in [('n_factorization',n),('N_factorization',n-1),('K_factorization',(n-2)//2)]:
        fs=z[key];need(all(prime(p) for p,e in fs),'bad factor prime')
        need(prod(p**e for p,e in fs)==val,'incomplete factorization')
    need(n==z['oddpart_n']*(1<<z['v2_n']) and z['v2_n']>=37,'row not in dyadic tail')
    need(z['legal_j_count']==n//2-3,'row interval count')
    vals=z['sample_full_valuations']
    need(prod(v['p']**v['v_Cn3'] for v in vals)==comb(n,3),'sample factorization')
    for v in vals:
        need(prime(v['p']) and valuation(n,3,v['p'])==v['v_Cn3'] and valuation(n,j,v['p'])==v['v_Cnj'],'sample valuation')
        nvals+=2
    w=z['sample_witness'];need(w in vals and w['v_Cnj']>0 and w['p']>=3,'row sample no witness')
    # Listed overlap tests are not a claim of exhaustive historical non-overlap.
    tests={'old_v_le36':z['v2_n']<=36,
      'old_omega_N_le1':len(z['N_factorization'])<=1,'old_omega_K_le2':len(z['K_factorization'])<=2,
      'old_square_Q_M':any(p**(2*e)>=6*n for p,e in z['K_factorization']),
      'old_cubic_Q_n':any(p>2 and p**(3*e)>=n*n for p,e in z['n_factorization']),
      'old_cubic_Q_n1':any(p**(3*e)>=(n-1)**2 for p,e in z['N_factorization']),
      'old_cubic_Q_n2':any(p**(3*e)>=(n-2)**2 for p,e in z['K_factorization']),
      'old_oddpart_test':128*z['oddpart_n']**4*(n-1)**3>=n**4}
    need(all(z[k]==v for k,v in tests.items()) and not any(tests.values()),'overlap test assertion')
    return {'large_pair_regressions':len(rows)+1,'full_valuation_checks':nvals,'same_witness_i3_to_i9_checks':liftvals,
            'row_coverage_by_proof_not_scan':z['legal_j_count']}

def small_regression(nmax=1024):
    counts={k:0 for k in flags(12,4)};total=covered=0;projection_count=0
    for n in range(8,nmax+1,4):
        # Recurrence independently constructs the actual binomial integers.
        C=comb(n,3);b=C
        N,K,_,_,_,_=canonical(n,4)
        for j in range(4,n//2):
            b=b*(n-j+1)//j
            total+=1;fs=flags(n,j)
            projection_count+=(j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0)
            for key,yes in fs.items():counts[key]+=yes
            if any(fs.values()):
                covered+=1;d=gcd(C,b);need(oddpart(d)>1,f'consumer failed at {(n,j)}')
        # Strict-centre exception is checked separately at each row endpoint.
        need(oddpart(gcd(C,comb(n,n//2)))>1,'central base failed')
    # Positive examples keeping the endpoint p=3 and higher p-power layers.
    need(valuation(28,3,3)>0 and valuation(28,14,3)>0,'lost p=i')
    need(5<=27 and 5%5<=27%5 and 5%25>27%25,'higher layer regression')
    return {'n_max':nmax,'n_step':4,'strict_legal_pairs':total,'consumer_union_pairs':covered,
            'consumer_counts':counts,'exact_projection_pairs_in_this_small_range':projection_count,
            'purpose':'finite regression only; not the proof of the unbounded results'}

def negative_controls():
    # Not divisible by four: central z may vanish.
    n,j=22,7;k=n-j;N,K,la,mu,C,A=canonical(n,j)
    need(j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0,'negative control not a projection')
    H=j*k//(N*C[0]*C[2]);need(la*mu*C[1]-2*H==0,'expected z=0')
    # Without the canonical bound on w a square ratio exists.
    n,x,w,h=244,25,9801,100
    need(w*x*(x-1)==h*(n-1)*(n-2) and isqrt(w*h)**2==w*h,'norm boundary control')
    # The next allocation value is possible for projections, not for noCommon.
    n,j=76672,26775;N,K,la,mu,C,A=canonical(n,j)
    need(C[1]==11 and j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0,'C1=11 boundary')
    need(oddpart(n//gcd(n,j))==599 and prime(599),'alpha boundary')
    need(valuation(n,3,599)>0 and valuation(n,j,599)>0,'weak solution is not a counterexample')
    return {'controls':3,'C1_11_weak_common_prime':599,'no_counterexample_to_full_noCommon_system_claimed':True}

def main():
    E=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'evidence'
    load=lambda f:json.loads((E/f).read_text())
    out={'status':'PASS','outer9':check_outer(load('outer-nine-certificate.json')),
      'examples':check_examples(load('large-examples.json'),load('row-nine-example.json')),
      'regressions':small_regression(),'negative_controls':negative_controls()}
    print(json.dumps(out,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
