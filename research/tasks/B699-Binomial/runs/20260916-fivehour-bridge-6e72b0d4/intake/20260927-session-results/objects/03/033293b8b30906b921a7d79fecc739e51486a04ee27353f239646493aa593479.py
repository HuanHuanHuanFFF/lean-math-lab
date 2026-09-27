#!/usr/bin/env python3
"""Separated receiving implementation. Never imports the discovery implementation."""
from __future__ import annotations
import argparse,hashlib,json,sys
from pathlib import Path
from math import gcd,isqrt,comb
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def check(ok:bool,message:str)->None:
    if not ok: raise ValueError(message)

def valuation(x:int,p:int)->int:
    check(x!=0,'valuation at zero');ans=0
    while x%p==0:x//=p;ans+=1
    return ans

def rr(x:int)->int:
    for p in (2,3,5):x//=p**valuation(x,p)
    return x

def character3(n:int)->int:
    return 1 if n%12 in (1,11) else -1 if n%12 in (5,7) else 0

def carry_count(n:int,j:int,p:int)->int:
    a=j;b=n-j;carry=total=0
    while a or b or carry:
        a,ra=divmod(a,p);b,rb=divmod(b,p)
        carry=(ra+rb+carry)//p;total+=carry
    return total

def prime(p:int)->bool:return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def norm_check(o:dict,pure:bool)->None:
    n=o['n'];j=o['j'];k=n-j;g=gcd(n,j);al=n//g;z=o['z'];delta=(n-2*j)//g
    check(7<=j and 2*j<n and n%6==0,'original interval')
    check(o['g']==g and o['alpha']==al and o['delta']==delta,'original recovery')
    check(gcd(delta,z)==1 and delta*delta+40*(n-1)*z*z==al*al,'primitive global norm')
    check(al==3**valuation(al,3) if pure else al!=3**valuation(al,3),'pure power status')
    check(j*k==o['U']*(n-1) and o['U']==10*g*g*z*z,'complete first source')
    H=(al*al-120*z*z)//3;C=gcd(rr(n-4),j-2);T=H//C
    check(H==o['H'] and C==o['C'] and T==o['T'] and H%C==0,'actual central variables')
    E4=gcd(rr(n-4),j*k);A4=gcd(rr(n-4),(j-1)*(k-1))
    D=gcd(n-1,T);m=(n-1)//D;h=(12*o['U']-1)//D;Delta=T//D
    check((E4,A4,D,m,h,Delta)==tuple(o[v] for v in ('E4','A4','D','m','h','Delta')),'actual overlap variables')
    check(D==gcd(n-1,H)==gcd(n-1,12*o['U']-1) and gcd(m,h)==1,'gcd equivalence')
    check(o['central_complete']==(gcd(C,rr(n-4)//C)==1),'central completeness flag')
    check(o['central_chi3']==character3(C),'central character')
    check(o['E4_square']==(isqrt(E4)**2==E4),'square flag')
    check(o['central_size_gate']==(2*E4*C*C<n-4),'size flag')
    check(o['all_q5_near']==(((j-1)*(k-1))%rr(n-5)==0),'near flag')
    check(o['full_q4_window']==(E4*A4*C==rr(n-4)),'fourth source status')
    check(o['B720']==(n%720==450) and o['B18000']==(n%18000==14130),'B flags')
    if pure:
        t=valuation(g,3);K=g*3**(t+1);a=valuation(al,3)
        check(a>t and o['K']==K and o['t3']==t,'3-adic scale')
        check(g*(h*al-120*m*g*z*z)==h-m,'denominator identity')
        check(h!=m and (h-m)%K==0 and 0<h<3*m and 2*m>K,'denominator gap')
        if a>t+1:check(valuation(h-m,3)==2*t+1,'exact 3-adic contact')
        if o['central_size_gate']:
            factor=80 if 12*o['U']<n else 20
            check(Delta**2*(n-1)**3>factor*3**(2*t)*E4*z*z*n*n*(n-4),'squared deficit bound')
            threshold=8 if 12*o['U']<n else 4
            check(Delta>threshold*3**t*isqrt(E4)*z,'integer deficit bound')

def contact_check(o:dict,c:dict)->None:
    n=o['n'];j=o['j'];p=c['p'];check(prime(p),'contact primality')
    check(c['chi3']==(-1 if pow(3,(p-1)//2,p)==p-1 else 1),'prime 3 character')
    check(c['chi10']==(-1 if pow(10,(p-1)//2,p)==p-1 else 1),'prime 10 character')
    N=n-1;e=valuation(N,p);f=valuation(o['T'],p);P=p**e
    sigma=j if c['sigma_side']=='j' else n-j
    M=N//P;b=sigma//P
    check(sigma%P==0 and e==c['e'] and f==c['f'],'full source exponents')
    check((M,b)==(c['M'],c['b']) and M%p and b%p,'unit quotient')
    check(valuation(sigma,p)==e==c['v_sigma'],'no artificial extra source exponent')
    v=valuation(N-12*sigma,p)
    check(v==c['v_N_minus_12sigma'] and v>=e+min(e,f),'target contact valuation')
    if e!=f and p!=13:check(v==e+min(e,f),'unequal-order exactness')
    check(carry_count(n,j,p)==c['original_bin_v'],'original carry valuation')
    check(carry_count(M,b,p)==c['quotient_bin_v']==c['original_bin_v'],'quotient carry identity')
    check(carry_count(n,6,p)==e==c['source_bin_v'],'source binomial valuation')

def family_check(c:dict)->None:
    p=c['p'];cc=c['c'];check(p==461 and prime(p) and cc==710892,'family seed')
    check(c['L_start']==21 and c['L_period']==2070,'family quantifier')
    check(c['L_min_for_disjoint_blocks']==13,'block length')
    A=4935340800;B=1941810;W=973440
    for i,row in enumerate(c['rows']):
        # Independent binomial expansion at t=1+cQ.
        ncoef=(A*comb(4,i)*cc**i if i<=4 else 0)+(B*comb(2,i)*cc**i if i<=2 else 0)+(192 if i==0 else 0)
        jcoef=(W*comb(2,i)*cc**i if i<=2 else 0)+(192 if i==0 else 0)
        nd=row['n_digits_low_first'];jd=row['j_digits_low_first']
        check(all(0<=x<p for x in nd+jd),'valid digits')
        check(sum(x*p**s for s,x in enumerate(nd))==ncoef==row['n_coefficient'],'n coefficient reconstruction')
        check(sum(x*p**s for s,x in enumerate(jd))==jcoef==row['j_coefficient'],'j coefficient reconstruction')
        check(ncoef<p**13 and jcoef<p**13,'nonoverlapping blocks')
        check(all(x<=(nd[s] if s<len(nd) else 0) for s,x in enumerate(jd)),'full digit dominance')
    for row in c['congruences']:
        q=row['modulus'];period=row['period']
        check(pow(p,period,q)==1 and 2070%period==0,'uniform congruence period')
        check(row['t_residue']==(1+cc*pow(p,21,q))%q,'congruence residue')
    base=c['base_contact'];baseH=((A+B+192)//6)**2//3-40*52**2
    check(base['n']==A+B+192 and base['j']==W+192 and base['H']==baseH,'base contact model')
    check(base['N_mod_461_squared']==(A+B+191)%p**2 and valuation(A+B+191,p)==1,'base N full exponent')
    check(base['H_mod_461_squared']==baseH%p**2 and valuation(baseH,p)==1,'base H full exponent')
    tr={row['modulus']:row['t_residue'] for row in c['congruences']}
    check(cc%294==0 and tr[47]!=0,'parity and endpoint exclusion')
    check((W*tr[41]**2+190)%41!=0,'no central 41')
    check(tr[31] in (1,30),'uniform failed near slot')
    check((A//6*tr[27]**4+B//6*tr[27]**2+32)%27 in (9,18),'uniform non-three-power alpha')
    # Degree <= 8, nine exact values certify these integer polynomial identities.
    for t in range(9):
        n=A*t**4+B*t*t+192;j=W*t*t+192;U=W*t*t;k=n-j
        al=n//6;delta=(n-2*j)//6;z=52*t
        check(j*k==(n-1)*U,'polynomial first norm')
        check(delta**2+40*(n-1)*z*z==al**2,'polynomial primitive-norm equation')
        check(192*(n-4)==(j-2)**2+3*(j-2)-574,'central polynomial remainder')
        check(192*(n-1)==j*(j-1),'first window polynomial')
    check(all(x==[0] for x in c['polynomial_identities'].values()),'zero coefficient receipts')

def accept(root:Path)->dict:
    def load(name):return json.loads((root/name).read_text())
    models=load('canonical_contact_models.json')
    check(len(models)==3,'three canonical checks')
    for o in models:norm_check(o,True)
    check(models[-1]['seed']=={'a':692,'z':2},'new canonical seed')
    contact_check(models[-1],models[-1]['first_contact'])
    fam=load('lacunary_family.json');family_check(fam)
    samples=load('lacunary_examples.json');o=samples[0]
    norm_check(o,False);contact_check(o,o['contact'])
    check(o['C']==7 and o['E4']==o['A4']==1 and o['g']==6,'family canonical constants')
    check(o['H']%12==11 and o['T']%12==5,'family negative complement character')
    check(rr(o['n']-4)==(o['n']-4)//2>7,'family exact fourth-source failure')
    check(o['contact']['original_bin_v']==0,'461 is not a common prime')
    w=o['explicit_common_prime'];check(prime(w['p']) and w['p']==31,'witness primality')
    check(o['n']%31==5 and o['j']%31==15,'failed 31 slot')
    check(w['v_bin_6']==carry_count(o['n'],6,31)>0 and w['v_bin_j']==carry_count(o['n'],o['j'],31)>0,'real common witness 31')
    s=samples[1];L=s['seed']['L'];check(L==2091,'second finite sample')
    t=1+710892*461**L;n=4935340800*t**4+1941810*t*t+192;j=973440*t*t+192
    check(s['n_sha256_unsigned_be']==hashlib.sha256(n.to_bytes((n.bit_length()+7)//8,'big')).hexdigest(),'large n hash')
    check(s['j_sha256_unsigned_be']==hashlib.sha256(j.to_bytes((j.bit_length()+7)//8,'big')).hexdigest(),'large j hash')
    check(s['decimal_digits_n']==len(str(n)),'large sample digits')
    check(gcd(n,j)==6 and valuation(n//6,3)==2,'large original gcd and alpha')
    check(carry_count(n,j,461)==s['vp_bin_j_461']==0,'large no-carry')
    check(carry_count(n,j,31)==s['vp_bin_j_31']>0,'large actual witness')
    constants=load('exact_constants.json')
    check(constants['margin_polynomial_at_10_plus_x']==[84,128,22,1],'uniform polynomial margin')
    for x in range(4):check((10+x)**3-8*(10+x)**2-12*(10+x)+4==84+128*x+22*x*x+x**3,'cubic coefficients')
    summary=load('summary.json');check(summary['certified_global_net_deletion']==0 and not summary['full_B_RES10_model_found'],'frontier boundary')
    return {'status':'PASS','certificate_files':5,'canonical_models_checked':3,'infinite_family_digit_blocks_checked':5,
      'family_finite_samples_checked':2,'verification':'separated receiving code; same author; not Lean'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,default=Path(__file__).resolve().parents[1]/'certificates')
    args=ap.parse_args();print(json.dumps(accept(args.certificates),ensure_ascii=False,indent=2))
if __name__=='__main__':main()
