#!/usr/bin/env python3
"""Exact acceptance, using residue formulas / carry counting separate from discovery.
This verifies finite certificates and algebraic identities, not every line of the paper proof.
"""
import argparse, json
from pathlib import Path
from math import gcd, isqrt, comb


def check(condition, message):
    if not condition:
        raise AssertionError(message)


def val(x,p):
    check(x != 0, 'zero valuation')
    x=abs(x); e=0
    while x%p==0: e+=1; x//=p
    return e


def prime_trial(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def character10(x):
    check(x>0 and gcd(x,10)==1 and x%2==1,'character10 domain')
    c2=1 if x%8 in (1,7) else -1
    c5=1 if x%5 in (1,4) else -1
    return c2*c5


def character3(x):
    check(x>0 and gcd(x,6)==1,'character3 domain')
    return 1 if x%12 in (1,11) else -1


def carries(n,j,p):
    a,b=j,n-j; carry=0; count=0
    while a or b or carry:
        s=a%p+b%p+carry
        carry=int(s>=p)
        count+=carry
        a//=p;b//=p
    return count


def carry_at_precision(n,j,p,r):
    m=p**r
    return int((j%m)+((n-j)%m)>=m)


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,required=True)
    a=ap.parse_args();root=a.certificates
    def load(name):return json.loads((root/name).read_text(encoding='utf-8'))
    classes=load('character_classes.json')['rows']
    check(len(classes)==32,'32 units modulo 120')
    check([r['residue'] for r in classes]==[x for x in range(1,120) if gcd(x,120)==1], 'all residues')
    forced=[]
    for row in classes:
        x=row['residue'];c10=character10(x);c30=c10*character3(x)
        check((c10,c30)==(row['chi10'],row['chi30']), 'character formula mismatch')
        slots=['endpoint']+(['near'] if c10==1 else [])+(['center'] if c30==1 else [])
        check(slots==row['allowed_groups'],'slot table')
        if c10==c30==-1:forced.append(x)
    check(forced==[11,23,47,59,61,73,97,109],'endpoint-only classes')
    # Periodic source characters are proved by these exact residue identities.
    check(223%120==103 and 149%120==29,'source residue representatives')
    check(character10(223)==character10(149)==-1,'negative source character')
    check(character10(223)*character3(223)==1,'q4 chi30')
    print('PASS_CHARACTER_PERIOD_AND_32_CLASSES')

    screen=load('local_prime_screen.json')['rows']
    check([x['p'] for x in screen]==[p for p in range(7,500) if prime_trial(p)],'screen prime completeness')
    for row in screen:
        p=row['p'];residues={z*z%p for z in range(p)}
        c10=1 if 10%p in residues else -1;c30=1 if 30%p in residues else -1
        check((c10,c30)==(row['chi10'],row['chi30']),'enumerated-square characters')
        expected=[0,4]+([1,3] if c10==1 else [])+([2] if c30==1 else [])
        check(sorted(expected)==row['allowed_slots_mod_p'],'allowed slots')
    print('PASS_EXHAUSTIVE_LOCAL_SCREEN: %d primes' % len(screen))

    central=load('central_odd_local_models.json')['rows']
    for row in central:
        p,e,n,j,k=row['p'],row['e'],row['n'],row['j'],row['k'];Q=p**e
        check(p==7 and e%2==1 and n==3*Q+4 and j==Q+2 and k==2*Q+2,'central formula')
        check(7<=j<=n//2,'central legal pair')
        check(val(n-4,p)==e,'complete central source exponent')
        check(val((j-2)*(k-2),p)==2*e,'central precision exactly 2e, not 2e+1')
        check(val(j*k,p)==0,'central does not force endpoint divisibility')
        check((10*(n-1)*row['z_mod']**2-j*k)%row['modulus']==0,'local norm')
        check(val(comb(n,6),p)==row['vp_binomial_n6']==e,'source binomial valuation')
        check(carries(n,j,p)==row['vp_binomial_nj']==0,'all base-7 carries')
    print('PASS_CENTRAL_ODD_LOCAL_BOUNDARY: %d certificates' % len(central))

    consumers=load('consumer_examples.json')
    check(consumers['norm_rows']==4 and len(consumers['rows'])==3,'consumer screen counts')
    for r in consumers['rows']:
        n,j,k=r['n'],r['j'],r['k'];q=(n-4)//2
        check(n%720==450 and j+k==n and 7<=j<=n//2,'consumer scope')
        check((n-1)*j*k==10*r['Y']**2,'exact W10')
        check(j*k==(n-1)*r['U'],'exact first source')
        E4=gcd(q,j*k);C=gcd(q,j-2)
        check((E4,C)==(r['E4'],r['C']) and character10(E4*C)==1,'consumer Jacobi hypothesis')
        product=1
        for p,e in r['factorization']:
            check(prime_trial(p) and p>=7 and e>0,'complete prime factor certificate')
            product*=p**e
        check(product==q,'complete q4 factorization')
        check(bool(r['witnesses']),'nonempty original witnesses')
        for w in r['witnesses']:
            p,e=w['p'],w['e']
            check(val(n-4,p)==e and j%(p**e)==w['j_residue']>4,'full source failure')
            check(val(comb(n,6),p)==w['v_n6']>=1,'original C(n,6)')
            check(carries(n,j,p)==w['v_nj']>=1,'original C(n,j), carry algorithm')
    print('PASS_ORIGINAL_PAIR_CONSUMERS: 3 examples; all listed witnesses verified')

    universal=load('universal_consumer_regression.json')
    check(universal['legal_pairs']==352836 and universal['norm_pairs']==195 and len(universal['rows'])==81, 'universal regression counts')
    for r in universal['rows']:
        n,j=r['n'],r['j'];k=n-j;q=n-4
        for p in (2,3,5):
            while q%p==0:q//=p
        check(7<=j<=n//2 and (n-1)*j*k==10*r['Y']**2,'universal W10 hypothesis')
        check(q==r['q4'] and gcd(q,j*k)==r['E4'] and gcd(q,j-2)==r['C'],'universal definitions')
        check(character10(q)!=character10(r['E4']*r['C']),'universal character mismatch')
        product=1
        for p,e in r['factorization']:
            check(prime_trial(p) and p>=7,'universal prime certificate')
            product*=p**e
        check(product==q and r['witnesses'],'universal factorization and witness')
        for w in r['witnesses']:
            p,e=w['p'],w['e']
            check(val(n-4,p)==e and j%(p**e)==w['j_residue']>4,'universal full-power window failure')
            check(val(comb(n,6),p)==w['v_n6'] and val(comb(n,j),p)==w['v_nj']>=1, 'direct big-integer binomial check')
    special=[r for r in universal['rows'] if (r['n'],r['j'])==(151,16)]
    check(len(special)==1 and special[0]['q4']==49 and special[0]['C']==7,'partial prime-power regression')
    print('PASS_UNIVERSAL_CONSUMER: 81 examples checked with actual binomial integers')

    # Coefficient identities for the infinite family, checked without symbolic libraries.
    check(9030*2709000==2718030*9000 and 9030*300==301*9000,'jk=(n-1)U coefficients')
    check(9000==10*30**2,'square norm coefficient')
    check(2718030==30*90601 and 300==30*10,'alpha coefficient')
    check(2*1359015==2718030 and 2*151==302,'two-adic polynomial')
    check(5*543606==2718030 and 5*61==305,'five-adic polynomial')
    check(300*2718030==90601*9000,'31-adic identity leading coefficient')
    check(-300*305+90601==-899 and val(899,31)==1,'31-adic identity constant')
    check(1359015%8==151%8==7,'unbounded 2-adic root existence')
    check(90601%3==10%3==1,'unbounded 3-adic root existence')
    check(543606%5==61%5==1,'unbounded 5-adic root existence')
    check(any((9000*x*x-1)%31==0 for x in range(1,31)), 'unbounded 31-adic root existence')

    large=load('q5_unbounded_precision_family.json')['rows']
    for r in large:
        t=r['t'];n=r['n'];j=r['j'];k=r['k'];U=r['U'];q5=r['q5']
        check(t>0 and n==2718030*t*t-300 and j==9030*t*t and k==n-j,'family recovery')
        check(n%9000==5130 and 7<=j<=n//2,'same original pair and base congruence')
        check(j*k==(n-1)*U and U==9000*t*t and (n-1)*j*k==10*r['Y']**2,'global exact norm and first source')
        check(gcd(n,j)==r['g']==30,'true gcd')
        check(n//30==r['alpha'] and r['alpha']%8==7,'pure-three FAIL boundary')
        mod=1
        for c in r['congruences']:
            check(gcd(mod,c['modulus'])==1,'pairwise-coprime CRT')
            check(t%c['modulus']==c['residue'],'CRT residue')
            mod*=c['modulus']
        check(mod==r['progression_modulus'] and 0<t<mod,'canonical CRT representative')
        req=r['requested'];actual=r['actual_valuations']
        expected=dict(v3_n=val(n,3),v2_n_minus_2=val(n-2,2),v5_n_minus_5=val(n-5,5),
            v31_q5=val(q5,31),v31_U_minus_1=val(U-1,31),v31_j_minus_4=val(j-4,31),
            v31_k_minus_1=val(k-1,31),v31_C_n6=val(comb(n,6),31),v31_C_nj=carries(n,j,31))
        check(expected==actual,'all exact valuations')
        check(all(actual[key]==v for key,v in req.items()),'requested arbitrary gates')
        m=req['v31_U_minus_1']
        check(actual['v31_q5']==actual['v31_j_minus_4']==1 and actual['v31_k_minus_1']==m,'q5 source and target are different exponents')
        check(all(carry_at_precision(n,j,31,h)==0 for h in range(1,m+1)),'no carries in the first m base-31 positions')
        check(q5==(n-5)//(5**req['v5_n_minus_5']),'exact complete-five stripping')
        q4=(n-4)//2
        check(gcd(q4,j*k)==r['E4']==1 and gcd(q4,j-2)==r['C']==1,'exact consumer gcds')
        A4=gcd(q4,(j-1)*(k-1))
        check(A4==r['A4'] and A4<q4,'full q4 window FAIL boundary')
        Q51=gcd(q5,(j-1)*(k-1))
        check(Q51==r['Q51'] and Q51<q5,'all-q5-near FAIL boundary')
        check(all(isqrt(q)**2!=q for q in (r['q2'],q4,q5)),'three nonsquares retained')
        check(r['q2']%3==q5%3==2 and q4%8==7,'nonsquare congruence proofs')
    print('PASS_Q5_UNBOUNDED_PRECISION_BOUNDARY: 6 exact examples, m=2,3,8,16,32,64')
    print('PASS_BOUNDARY_LABELS: these are NOT full B-RES10 / NC6 models')
    print('ACCEPTANCE_PASS: author-run exact checks; no Lean; no independent external review')

if __name__=='__main__':main()
