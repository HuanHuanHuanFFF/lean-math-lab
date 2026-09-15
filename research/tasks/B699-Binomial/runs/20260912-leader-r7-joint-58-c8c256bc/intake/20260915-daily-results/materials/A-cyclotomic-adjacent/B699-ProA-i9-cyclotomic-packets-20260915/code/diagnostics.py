import os
import json,time,random
from math import gcd
from pathlib import Path
from arithmetic import *
R=Path(__file__).resolve().parents[1]
OUT=Path(os.environ.get('B699_RUN_OUTPUT',str(R))).resolve();(OUT/'logs').mkdir(parents=True,exist_ok=True);(OUT/'evidence').mkdir(parents=True,exist_ok=True)
t0=time.perf_counter();counts={}
def inc(key,n=1):counts[key]=counts.get(key,0)+n
# Full prime powers: bounded diagnostic only, not a substitute for divisor-sum proof.
bases=[B for B in range(11,152) if gcd(B,10)==1]
# Deliberately large initial 2/5 valuations, including m=4 roots mod 5^12.
x=2;mod=5
for _ in range(1,12):
    u=next(u for u in range(5) if ((x+u*mod)**2+1)%(5*mod)==0)
    x+=u*mod;mod*=5
if x%2==0:x+=mod
bases += [2**16*5**10-1,2**16*5**10+1,x,1517]
bases=sorted(set(bases))
for B in bases:
    for m in range(1,181):
        y=cyclotomic_value(B,m); a,b=predicted_valuations(B,m)
        assert (valuation(y,2),valuation(y,5))==(a,b),(B,m,'valuation')
        inc('exact_cyclotomic_valuation_pairs')
        if m not in (1,2,4):
            assert smooth25(y)**4<=y
            inc('good_fourth_power_checks')
        assert (B-1)**phi(m)<=y<=(B+1)**phi(m)
        inc('unit_circle_magnitude_diagnostics')
        if B in (11,13,21,37,1517) and m<=120:
            assert y==cyclotomic_value_mobius(B,m)
            inc('two_integer_implementations')
# Higher prime-power index cases; indices themselves are not proof cutoffs.
for B in (11,13,17,21,1517):
    for m in sorted(set([2**a for a in range(1,11)]+[f*5**a for f in (1,2,4) for a in range(1,5)])):
        y=cyclotomic_value(B,m);a,b=predicted_valuations(B,m)
        assert (valuation(y,2),valuation(y,5))==(a,b)
        if m not in (1,2,4):assert smooth25(y)**4<=y
        inc('high_index_full_valuation_cases')
# Packet products, with arbitrary overlap in their prime supports.
rng=random.Random(69920260915);accepted=[];invalid=0
for _ in range(1400):
    B=rng.choice([11,13,17,19,21,29,37,49,51,77,121,1517]);C=rng.randrange(1,B);e=rng.randrange(0,7)
    ms={m:rng.randrange(0,4) for m in rng.sample([1,2,3,4,5,6,8,10,12,15,20,30],rng.randrange(1,6))}
    p=profile(B,C,e,ms)
    if not p['accepted']:
        invalid+=1;continue
    n=packet_value(B,C,e,ms)
    assert smooth25(n)**26 < n**21
    accepted.append(n);inc('packet_density_diagnostics')
for i in range(0,len(accepted)-2,3):
    M=37**(i%4)*41**((i+1)%4)
    n=M*accepted[i]*accepted[i+1]*accepted[i+2]
    assert smooth25(n)**26<=n**21
    inc('mixed_base_products_with_rough_multiplier')
# All legal j in small rows; distinct computational path using prime factorization + Legendre.
rows=[(11,4,1,{1:2}),(19,1,1,{2:2}),(21,1,1,{1:2}),(39,10,1,{2:1})]
row_receipts=[]
for B,C,e,ms in rows:
    pr=profile(B,C,e,ms);assert pr['accepted'];n=packet_value(B,C,e,ms);assert n%400==0
    ps=sorted(set(p for r in range(9) for p in primes_of(n-r) if p>=11))
    histogram={};total=0
    for j in range(10,n//2+1):
        w=next((p for p in ps if binomial_v(n,j,p)>0),None)
        assert w is not None,(n,j)
        histogram[str(w)]=histogram.get(str(w),0)+1;total+=1
    inc('small_row_all_legal_targets',total)
    row_receipts.append({'n':n,'B':B,'C':C,'e':e,'multiplicities':ms,'targets':total,'witness_histogram':histogram})
# Source exponent classifier at genuinely different h, without scanning huge j.
for X in range(2,91):
    for h in range(1,43):
        n=X**h*(X+1)
        if n%400==0 and h%6 in (0,1,4,5):
            assert n%21 not in (8,10,15,16)
            inc('adjacent_source_parameter_diagnostics')
# True boundary n,j, including complete max positions and explicit common 11.
boundaries=[]
for v in (0,1,3):
    T=42*v+29;Z=2*10**T;n=Z**14*(Z+1);g=(Z+1)//3
    alpha=3*Z**14;beta=Z**14-Z**11+29;j=g*beta
    assert n%400==0 and n==g*alpha and gcd(n,j)==g and 10<=j<=n//2
    for p,a in ((3,3),(7,1)):
        vs=[valuation(n-r,p) for r in range(9)]
        assert vs.index(max(vs))==a and vs.count(max(vs))==1
    assert smooth25(n)**26>n**21
    # Dividing powers proves this bound without expanding millions of bits.
    assert n%11==6 and j%11==10 and binomial_v(n,9,11)>0 and binomial_v(n,j,11)>0
    boundaries.append({'v':v,'T':T,'n_bit_length':n.bit_length(),'n_mod21':n%21,'n_mod11':n%11,'j_mod11':j%11,'max_positions':[3,1],'gcd_exact':True,'actual_common_prime':11})
    inc('true_integer_boundary_cases')
# Explicit Hensel lifts only diagnose the boundary statement (infinite proof is in PROOFS).
x=3;mod=7
for k in range(1,15):
    assert (pow(x,14,mod)*(x+1)-1)%mod==0
    nxt=next(x+u*mod for u in range(7) if (pow(x+u*mod,14,mod*7)*(x+u*mod+1)-1)%(mod*7)==0)
    x=nxt;mod*=7;inc('simple_root_lift_diagnostics')
# A large symbolic source; no target scan is claimed for it.
large={'B':1517,'C':400,'e':3,'multiplicities':{1:2,2:3,4:1,3:70,6:80,8:50,105:7}}
lp=profile(large['B'],large['C'],large['e'],large['multiplicities']);assert lp['accepted'];ln=packet_value(large['B'],large['C'],large['e'],large['multiplicities'])
assert ln%400==0 and smooth25(ln)**26<ln**21
large.update({'profile':lp,'n_bit_length':ln.bit_length(),'all_j_status':'covered by the paper theorem, not enumerated'})
(OUT/'evidence/small_rows.json').write_text(json.dumps(row_receipts,indent=2)+'\n')
(OUT/'evidence/boundary_cases.json').write_text(json.dumps(boundaries,indent=2)+'\n')
(OUT/'evidence/large_packet.json').write_text(json.dumps(large,indent=2)+'\n')
out={'status':'PASS_NEW_FINITE_DIAGNOSTICS','counts':counts,'bases':len(bases),'composite_bases_among_tested_B_below_2000':sum(len(primes_of(b))>1 or len(primes_of(b))==1 and b!=primes_of(b)[0] for b in bases if b<2000),'unaccepted_packet_profiles_not_claimed':invalid,'small_rows':len(rows),'seconds':time.perf_counter()-t0,'meaning':'Finite checks; full universal statements are proved in notes/PROOFS.md.'}
(OUT/'logs/diagnostics.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out))
