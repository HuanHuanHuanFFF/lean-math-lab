"""Generate small arithmetic tables and concrete regressions, not an infinite-proof oracle."""
from pathlib import Path
import json, sys
from math import gcd, prod
from common import *
OUT=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).resolve().parents[1]/'evidence'
OUT.mkdir(parents=True,exist_ok=True)
def write(name,obj):
    (OUT/name).write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
negative=[]
for la in [1,3]:
    for u in range(1,3*la):
        if u%4!=la%4:continue
        D=3*la-u
        fs=[f for f in range(1,D+1,2) if D%f==0 and gcd(f,la)==1]
        negative.append({'lambda':la,'u':u,'possible_F0':fs})
small=[]
for H in range(1,5):
    if gcd(H,9)!=1:continue
    for g in range(1,3):
        if H%(g*g):continue
        # 4|n: g odd iff j,k odd iff H odd, since N*F0 is odd.
        if (g%2)!=(H%2):continue
        small.append({'H':H,'g':g,'R':H//(g*g)})
cert={'version':1,'centre_negative_cases':negative,'middle_nine_H_g_R':small,
      'middle_nine_dyadic_table':[{'beta_mod4':b,'one_plus_9beta2_mod4':(1+9*b*b)%4} for b in [1,3]],
      'endpoint_uniform_constant':54,'centre_uniform_constants':[27,4],
      'norm_gap_constants':{'central_lower':32,'central_upper':9,'contradiction_left':128,'contradiction_right_max':27},
      'new_full_index_closures':[]}
write('arithmetic-certificate.json',cert)

examples=[]
# Fully factored n choose 3 supports are small despite n=2^64.
for v, mode in [(64,'edge'),(64,'centre'),(43,'middle_nine')]:
    n=1<<v
    if v==64:
        congr=[(1,2),(0,257),(1,641),(0,73),(1,127),(2,337)]
        x,L=generalized_crt(congr)
        target=(1<<46) if mode=='edge' else n//2-(1<<46)
    else:
        congr=[(1,2),(0,43),(0,127),(1,9),(2,337),(1,431)]
        x,L=generalized_crt(congr)
        target=n//3
    j=x+max(0,(target-x)//L)*L
    if v==43:
        # Avoid a larger gcd in the middle position; all choices are recorded.
        for q in range(100):
            jj=j+q*L
            if 4<=jj<n//2 and gcd(cut3((n-2)//2),jj-1)==9:
                j=jj;break
        else:raise AssertionError('no middle-nine example')
    flags=consumers(n,j)
    assert flags['edge_exact' if mode=='edge' else 'centre_exact' if mode=='centre' else 'middle_nine']
    if v==64:
        fs={2:64,5:1,17:1,257:1,641:1,65537:1,6700417:1,7:2,73:1,127:1,337:1,92737:1,649657:1}
    else:
        # Factorizations of 2^43-1 and 2^42-1; the 3 in 3! is removed once.
        fs={2:43,3:1,431:1,9719:1,2099863:1,7:2,43:1,127:1,337:1,5419:1}
    assert prod(p**e for p,e in fs.items())==n*(n-1)*(n-2)//6
    assert all(is_prime_trial(p) for p in fs)
    vals=[{'p':p,'v_Cn3':e,'v_Cnj':vp_binomial(n,j,p)} for p,e in sorted(fs.items())]
    assert all(r['v_Cnj']==vp_binomial_carries(n,j,r['p']) for r in vals)
    witness=next(r for r in vals if r['p']>=11 and r['v_Cnj']>0)
    p=parameters(n,j)
    examples.append({'kind':mode,'n':n,'j':j,'v2_n':v,'delta':n-2*j,
        'canonical_C':[gcd(p['K'],j-r) for r in range(3)],
        'canonical_A':[gcd(p['N'],j-r) for r in range(2)],
        'g':p['g'],'flags':flags,'exact_projections':exact_projection(n,j),
        'witness':witness,'full_valuations':vals,'CRT':congr,'CRT_period':L})
write('large-examples.json',examples)
write('weak-projection-models.json',[model(n,j) for n,j in [(76672,26775),(175492,60606),(335548,115092),(18610024,7865522)]])
print(json.dumps({'generated':3,'examples':[(x['kind'],x['n'],x['j']) for x in examples]}))

from math import lcm, isqrt
# Exactly six normalized outer-nine branches, all exponent classes retained.
normalized=sorted({(h,a) for h in range(1,9) if gcd(h,9)==1 and isqrt(9*h)**2!=9*h
                   for a in range(1,2*h+1,2) if (2*h)%a==0})
prime_choice={(2,1):73,(5,1):109,(5,5):7,(7,1):37,(7,7):31,(8,1):73}
rows=[]
for h,a in normalized:
    p=prime_choice[h,a]
    period=next(t for t in range(1,p) if pow(2,t,p)==1)
    L=lcm(54,period)
    base=[v for v in range(54) if (h*(a*pow(2,v,81)-2)-18)%81==0]
    cells=[]
    squares={b*b%p for b in range(p)}
    for v in range(L):
        if v%54 not in base:continue
        nmod=a*pow(2,v,p)%p
        residue=(9+4*h*(nmod-1)*(nmod-2))%p
        assert residue not in squares
        cells.append({'v_mod_period':v,'discriminant_mod_p':residue})
    rows.append({'h':h,'oddpart_n':a,'v_mod54':base,'p':p,'order_2':period,'period':L,'cells':cells})
write('outer-nine-certificate.json',{'version':1,'rows':rows,'cell_count':sum(len(r['cells']) for r in rows),
      'exponent_quantifier':'all natural v>=2; full periods, not a finite height cutoff'})

v,m=39,943
n=m<<v
nfs={2:v,23:1,41:1}
Nfs={19:1,1210409:1,22542173:1}
Kfs={3:2,2145191:1,13425889:1}
assert prod(p**e for p,e in nfs.items())==n
assert prod(p**e for p,e in Nfs.items())==n-1
assert prod(p**e for p,e in Kfs.items())==(n-2)//2
assert all(is_prime_trial(p) for p in set(nfs)|set(Nfs)|set(Kfs))
j=n//3+1
cnfs={**nfs,**Nfs,**Kfs};cnfs[3]-=1
vals=[{'p':p,'v_Cn3':e,'v_Cnj':vp_binomial(n,j,p)} for p,e in sorted(cnfs.items())]
assert prod(p**e for p,e in cnfs.items())==n*(n-1)*(n-2)//6
witness=next(r for r in vals if r['p']>=11 and r['v_Cnj']>0)
row={'n':n,'v2_n':v,'oddpart_n':m,'N_factorization':sorted(Nfs.items()),'K_factorization':sorted(Kfs.items()),
     'n_factorization':sorted(nfs.items()),'a':9,'P':2145191,'Q':13425889,'r':1,'s':1,
     'legal_j_count':n//2-3,'sample_j':j,'sample_witness':witness,'sample_full_valuations':vals,
     'old_v_le36':v<=36,'old_omega_N_le1':len(Nfs)<=1,'old_omega_K_le2':len(Kfs)<=2,
     'old_square_Q_M':any(p**(2*e)>=6*n for p,e in Kfs.items()),
     'old_cubic_Q_n':any(p>2 and p**(3*e)>=n*n for p,e in nfs.items()),
     'old_cubic_Q_n1':any(p**(3*e)>=(n-1)**2 for p,e in Nfs.items()),
     'old_cubic_Q_n2':any(p**(3*e)>=(n-2)**2 for p,e in Kfs.items()),
     'old_oddpart_test':128*m**4*(n-1)**3>=n**4}
assert not any(row[k] for k in row if k.startswith('old_'))
write('row-nine-example.json',row)
print(json.dumps({'outer9_rows':len(rows),'outer9_cells':sum(len(r['cells']) for r in rows),'new_row_n':n}))
