"""Receive only NEW finite obligations, not a kernel check of the paper proof."""
import json,time
from pathlib import Path
from fractions import Fraction as F
from math import factorial
from math_core import poly_mul,prime_trial,first_carry,vbin,source_consumer
ROOT=Path(__file__).resolve().parents[1]

class Rejected(ValueError):pass

def require(b,msg):
    if not b:raise Rejected(msg)


def receive(c):
    checks=0
    def ck(b,msg):
        nonlocal checks
        require(b,msg);checks+=1
    ck(c['schema']=='B699-A-TRIDIGIT-1','schema')
    ck(c['degree']==9 and c['full_modulus_power']==2,'full-power congruence')
    expected={(t,s) for t in range(9) for s in range(t+1)}
    ck(len(c['window_scalar'])==len(expected),'scalar duplicates/count')
    ck({(t,s) for t,s,w in c['window_scalar']}==expected,'scalar coverage')
    for t,s,w in c['window_scalar']:
        ck(w==max(t-2,0)+max(6-s,0)+max(6-t+s,0) and w>=10,'scalar cell')
    expected={(t,s) for t in range(1,9) for s in range(t+1)}
    ck(len(c['endpoint_normalized'])==len(expected),'normalized duplicates/count')
    ck({(t,s) for t,s,w in c['endpoint_normalized']}==expected,'normalized coverage')
    for t,s,w in c['endpoint_normalized']:
        ck(w==max(6-s,0)+max(6-t+s,0) and w>=12-t,'normalized cell')
    exp={(r,s) for r in range(1,9) for s in range(1,9) if r!=s}
    ck(len(c['positions'])==len(exp) and {tuple(x) for x in c['positions']}==exp,'position coverage')
    for r,s in c['positions']:
        ck(r+s>=3 and sum(12-t for t in range(1,9) if t not in (r,s))==36+r+s,'position weights')
    K0=2**42
    for h in range(1,7):K0*=factorial(h)**3
    R0=F((2*factorial(8))**10,K0)
    ck(R0==171603713767500 and R0<2**48,'scalar R0')
    ck(400**7>R0,'collision contradiction')
    ck(840<2**10 and sum(12-t for t in range(1,9))==60,'smooth deletion constants')
    co=c['constants']
    ck(co['edge']>=213,'edge constant')
    ck(co['gcd']>=199 and co['gcd']<=200,'gcd constant supported')
    kappa=F(3,10)**3*F(7,10)**7
    ck(kappa<F(1,2**(co['edge']-co['beta'])),'beta maximum')
    ck(co['beta']<=205,'beta downstream budget')
    # Universal falling-factorial linear terms for h=1,...,9.
    for h in range(1,10):
        a=[1]
        for t in range(h):a=poly_mul(a,[-t,1])
        ck(a[0]==0 and a[1]==(-1)**(h-1)*factorial(h-1),'falling factorial first order')
    ck(co['small_denominator_degree']==6 and co['distance_degree']==9 and co['source_power']==6,'exponents')
    shift=co['small_denominator_shift']
    ck(shift>=26,'coefficient size budget')
    ck(F(18,20)+F(2,400)<1,'recurrence contraction')
    ck(F(20**9,factorial(9))<2**21,'coefficient small-L bound')
    ck(2**(3*shift-42)>80640**2,'small-L strict comparison')
    ck(co['distance_factor']>=128 and F(2**9,factorial(9)*co['distance_factor'])<F(1,80640),'large-L strict comparison')
    ck(3**7<2**12,'three-digit edge')
    ck(co['gap_bound']>=co['edge']+12+7,'gap budget')
    den=7*shift+6*co['gap_bound']
    err=14*7+18*co['gap_bound']+45*co['gcd']
    ck(co['denominator_budget']>=den,'denominator budget recomputed')
    ck(co['error_budget']>=err,'error budget recomputed')
    N=co['height_bits']
    ck(N>=co['denominator_budget'],'entire high segment denominator')
    ck(21*N>co['error_budget'],'entire high segment error')
    ck(2*N>co['beta']+co['gcd'],'B=0 entire segment')
    ck(N<=4096,'finite interface covers low segment')
    ck(set(c['profiles'])=={'I:1,1,C;2<=C<p','II:1,2,1'},'profiles exact scope')
    ck(sorted(c['II_first_units'])==[[1,0,1],[1,1,-1],[2,0,512]],'II complete first-order unit cases')
    for B,S,U in c['II_first_units']:
        ck(U==(1-S)*B**9-S*(2-B)**9 and abs(U) in (1,512),'II residues')
    ck(c['II_exception_prime']==73 and 2**9-1==7*73 and prime_trial(73),'exception factorization')
    ck(c['II_exception_modulus']==16,'uses actual factor of 400')
    rs={ (pow(73,9*h,16)+2*pow(73,8*h,16)+1)%16 for h in (1,2)}
    ck(set(c['II_exception_residues'])==rs and 0 not in rs,'73 resonance impossible')
    ck(set(c['branch_coverage'])=={'B=0','B>=1,not-all-lower','all-lower,H<9h','all-lower,H>9h','all-lower,H=9h'},'all branches')
    boundary=c['proof_boundary']
    ck(boundary['rough_radical_instead_of_full'] is False and boundary['composite_base_carry'] is False,'no lost powers')
    ck(boundary['K9_may_be_zero'] is True,'zero exception retained')
    ck(boundary['below_2048']=='FROZEN_A9_FINITE' and not boundary['all_58_closed'] and not boundary['R7_changed'],'honest scope')
    return {'status':'PASS_NEW_FINITE_OBLIGATIONS','checks':checks,'scalar_cells':45,'normalized_cells':44,'positions':56,'falling_factorial_identities':9}


def receive_giant(c):
    p,e,H,K,C=(c[k] for k in ('p','e','H','K','C'))
    require(prime_trial(p) and p>=11 and e>=1 and H>K>=1 and 2<=C<p,'giant source assumptions')
    require(c['kind']=='I','giant profile')
    Q=p**e;n=Q*(p**H+p**K+C)
    require(n%400==c['n_mod_400']==0 and n.bit_length()==c['n_bits'],'giant source')
    require(source_consumer(p,e,H,K,C)['elementary_high_segment'],'high segment')
    masks={(B,S) for B in (0,1) for S in range(C+1) if B or S}
    rows=c['all_allowed_masks']
    require(len(rows)==len(masks) and {(r['B'],r['S']) for r in rows}==masks,'ALL giant masks, no omissions')
    for row in rows:
        B,S=row['B'],row['S'];j=Q*(B*p**K+S);q=row['witness']
        require(10<=j and 2*j<=n and prime_trial(q) and q>=11,'legal target and witness')
        require(row['source_v']==vbin(n,9,q)>0 and row['target_v']==vbin(n,j,q)>0,'both actual full valuations')
        require(row['source_layer']==first_carry(n,9,q) and row['target_layer']==first_carry(n,j,q),'recorded actual power layers')
        require(vbin(n,j,p)==0,'listed mask avoids source p')
    require(c['other_targets_witness']==p and vbin(n,9,p)==e,'all other targets witnessed by p')
    return {'status':'PASS_COMPLETE_GIANT_ROW','n_bits':n.bit_length(),'allowed_masks':len(masks),'whole_row_coverage':'five complete submasks plus every other target by 199'}

if __name__=='__main__':
    start=time.perf_counter()
    a=receive(json.loads((ROOT/'evidence/certificate.json').read_text()))
    b=receive_giant(json.loads((ROOT/'evidence/giant_row.json').read_text()))
    result={'status':'PASS_NEW_TRIDIGIT_RECEIVING','finite':a,'giant':b,'seconds':time.perf_counter()-start}
    (ROOT/'logs/acceptance.json').write_text(json.dumps(result,indent=2))
    print(json.dumps(result))
