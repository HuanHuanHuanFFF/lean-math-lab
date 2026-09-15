"""Exact finite obligations only. Infinite arguments are in notes/PROOFS.md."""
from pathlib import Path
import json,hashlib,zipfile,time,argparse
from fractions import Fraction
from math import gcd,factorial
from math_core import prime,balanced_masks,second_numerator,make_n
import polyops as P
ROOT=Path(__file__).resolve().parents[1]

def need(test,message):
    if not test:raise ValueError(message)

def receive_certificate(c):
    checks=[]
    def ck(ok,label):need(ok,label);checks.append(label)
    ck(c['schema']=='B699-A-GENERAL-TRIDIGIT-1','schema')
    inherited={'edge_power':213,'g_power':200,'beta_power':205,'band_d_power':6,'band_constant':26,'distance_power':9,'distance_constant':128,'finite_log2':4096}
    ck(c['inherited']==inherited,'unchanged frozen contracts')
    s=c['new']; N=s['high_log2']
    ck(N<=inherited['finite_log2'],'low-high coverage')
    ck(N>=1544 and 42*N>26368 and 2*N>405,'high constants sufficient')
    ck(s['denominator_square_exponent']==2*(213+7+7),'squared denominator 454')
    ck(s['denominator_bound_exponent']==26*7+3*454,'denominator entrance 1544')
    ck(s['distance_bound_exponent']==7*28+18*454+90*200,'distance entrance 26368')
    ck(s['phi_bound_degree']==10 and s['linear_min']>=10,'first-order full valuation')
    ck(s['second_e_min']>=s['T2_bound_degree'],'second-order third-term separation')
    ck(s['second_gap_offset']>=s['T2_bound_degree'],'second-order high digit separation')
    ck(s['T2_bound_degree']==14 and s['T2_denominator']==2520,'second-order coefficient height')
    terms=c['second_terms']
    ck(sorted((r,t) for r,t,w in terms)==[(1,8),(2,7),(3,6),(4,5)],'all four coefficient products')
    for r,t,w in terms:ck(r+t==9 and Fraction(w,2520)==Fraction(1,r*t),f'coefficient pair {r},{t}')
    ck(sum(w for r,t,w in terms)==761<11**3,'761 height bound')
    x={(1,0):1};y={(0,1):1};one={(0,0):1}
    F=P.unpack(c['cyclotomic_F']); G=P.unpack(c['factor_Q2'])
    ck(P.mul(P.mul(P.add(x,y),G),F)==P.add(P.power(x,9),P.power(y,9)),'cyclotomic identity')
    UU=P.add({(0,0):2},P.add(x,y)); VV=P.add(one,x)
    positive=P.add(P.substitute(F,UU,VV),{(0,0):-57})
    ck(all(v>=0 for v in positive.values()),'global F>=57 positive expansion')
    mod9=0
    for u in range(9):
        for v in range(9):
            if gcd(gcd(u,v),3)!=1:continue
            z=(u**6-u**3*v**3+v**6)%9
            ck(z%3!=0 or z==3,f'F v3<=1 residue {u},{v}');mod9+=1
    b=c['balanced_example']; actual=balanced_masks(b['b'],b['C'])
    ck(sorted(b['masks'],key=lambda a:(a['B'],a['S']))==actual,'balanced example complete')
    ck(b['T2']==[second_numerator(b['b'],b['C'],m['B'],m['S']) for m in actual],'balanced example T2')
    ck(sorted(c['exhaustive_branches'])==sorted(['B=0','B>=1,Phi!=0','B=b,S=C','1<=B<b,1<=S<C,Phi=0']),'all digit branches')
    # Independent recurrence for symmetric H9 in (n,delta).
    n=x;delta=y; hs=[one,delta]
    for h in range(1,9):
        factor=P.add(n,{(0,0):1-h})
        hs.append(P.add(P.mul(delta,hs[-1]),P.scale(P.mul(factor,hs[-2]),-h)))
    pol=P.unpack(c['symmetric_H9_over_delta'])
    ck(P.mul(delta,pol)==hs[9],'symmetric ninth recurrence identity')
    mod=P.substitute(pol,P.scale(n,16),P.scale(delta,2))
    ck({key:v%256 for key,v in mod.items() if v%256}=={(0,0):128},'symmetric F mod256')
    ck(factorial(9)%128==0 and (factorial(9)//128)%2==1,'v2 9 factorial')
    qr=c['q_rigidity'];ck(qr['primes']==[2,5] and qr['minimum_n_valuations']==[4,2],'q denominator hypotheses')
    ck(qr['cube_constant']==201*3-26*2==551,'denominator rigidity cube exponent')
    ck(3**12<2**20 and qr['final_constant']==571,'double-high final contradiction')
    for q,A in zip(qr['primes'],qr['minimum_n_valuations']):
        for l in range(1,9):
            from math_core import vp
            ck(A>vp(l,q)+vp(9-l,q),f'valuation margin q{q},l{l}')
    ck(prime(521) and pow(521,10,400)==1,'521 prime and period10')
    ck((521+6*pow(521,8,400)+513)%400==0,'infinite family modulo400')
    ck(10*3+3>=28 and 70*3-22>=28 and 521**(80*3-5)>2**2048,'infinite family entrance')
    scope=c['scope']
    ck(scope=={'R7':[3,4,5,6,7,8,9],'families':58,'global_closure':False,'historical_receivers':0,'Lean':False,'highest_digit':1,'main_n_divisor':400},'scope not overstated')
    return {'status':'PASS_NEW_FINITE_OBLIGATIONS','checks':len(checks),'mod9_residues':mod9,'positive_expansion_terms':len(positive)}

def receive_resonance(c,table):
    """All 71 exceptions, symbolic identities, and uniform exponent bounds.
    No factorization, LLL, floating point or exponent search occurs here.
    """
    checks=[]
    def ck(ok,label):need(ok,label);checks.append(label)
    r=c['resonance']; terms=c['second_terms']
    u={(1,0):1};v={(0,1):1};one={(0,0):1}
    R=P.unpack(r['R']);L={}
    for k in range(1,10):
        L[k]=P.add(P.scale(P.mul(P.power(v,9),P.power(u,k)),(-1)**(k-1)),P.scale(P.mul(P.power(u,9),P.power(v,k)),-1))
    left={}
    for a,b,w in terms:left=P.add(left,P.scale(P.mul(L[a],L[b]),w))
    right=P.mul(P.mul(P.power(u,9),P.power(v,9)),P.mul(P.add(u,P.scale(v,-1)),P.mul(P.power(P.add(u,v),2),R)))
    ck(left==right,'balanced second coefficient full factorization')
    # u=v+w; all coefficients strictly positive, w,v >=1.
    positive=P.substitute(R,P.add(u,v),v)
    ck(len(positive)==7 and all(a>0 for a in positive.values()),'R shifted coefficients positive')
    ck(sum(positive.values())==r['positive_lower']>r['denominator'],'R uniform positive lower')
    ck(r['denominator']==2520,'R denominator')
    ck(sum(a for a in R.values() if a>0)==r['upper_constant'],'R upper sum positive terms')
    ck(r['upper_constant']<r['large_u_min']**3,'R<u^9 in infinite range')
    ck(r['small_u_min']==2 and r['small_u_max']+1==r['large_u_min'],'finite and infinite ranges meet')
    expected={(a,b) for a in range(r['small_u_min'],r['small_u_max']+1) for b in range(1,a) if gcd(a,b)==1}
    ck(len(expected)==r['small_pair_count']==71,'all coprime finite pairs')
    seen=set()
    for row in table['pairs']:
        a,b=row['u'],row['v'];ck((a,b) in expected and (a,b) not in seen,f'pair membership {a},{b}');seen.add((a,b))
        rv=sum(coeff*a**x*b**y for (x,y),coeff in R.items())
        mv=b*(a-b)*(a+b)**2*rv
        quotient=mv//gcd(mv,2520);q=row['small_divisor'];limit=a**9+b**9
        ck((row['R'],row['M'],row['quotient'],row['limit'])==(rv,mv,quotient,limit),f'pair exact polynomial {a},{b}')
        ck(1<q<=limit and quotient%q==0,f'divisor is smaller than every allowed p {a},{b}')
    ck(seen==expected,'all 71 coprime pairs covered exactly once')
    # High-segment NC9 forces K >= 3e+6h-72.
    ck(r['gap_log2_constant']==227+1,'source upper factor 2')
    ck(11**r['gap_p_constant']>2**r['gap_log2_constant'],'strict logarithm-free gap comparison')
    ck(r['gap_offset']==r['gap_p_constant']+7-1,'integer strict gap endpoint')
    E=r['separated_e_min'];h0=r['separated_h_min'];o=r['gap_offset']
    ck(h0>=c['new']['linear_min'] and E>=h0,'linear entry in separated theorem')
    ck(3*E+6*h0-o>=10,'K>=10 in separated theorem')
    ck(3*E+5*h0-o>0,'K>h for h<e')
    ck(6*E>=o,'K>=3e for h>=e')
    ck(3*E+6*(E+14)-o>=E+14,'large h gives second-order K separation')
    ck(r['near_delta_max']+1==c['new']['second_gap_offset'],'near and distant ranges meet')
    degree=r['near_coefficient_degree']
    ck(r['denominator']<11**4 and r['near_delta_max']+9+4<=degree-1,'near coefficient upper degree')
    ck(c['new']['T2_bound_degree']<=degree-1 and 2<11,'sum absolute value < p^27')
    ck(E>=degree,'2e+valuation(T_delta)<3e')
    ck(r['case_partition']==['h<e','e<=h<=e+13','h>=e+14'],'all integer h versus e cases')
    return {'status':'PASS_ALL_71_RESONANCE_OBSTRUCTIONS','checks':len(checks),'finite_pairs':len(expected),'infinite_u_start':r['large_u_min'],'nonzero_e_threshold':E}


def receive_consumer(c):
    """The main e<=22 consumer does not read the 71-case certificate."""
    checks=[]
    def ck(test,name):need(test,name);checks.append(name)
    r=c['resonance'];EE=r['all_gap_e_min'];L=r['consumer_long_e_min'];h0=r['separated_h_min'];h1=r['short_h_max'];o=r['gap_offset']
    ck(r['coupled_direct_constant']==c['inherited']['edge_power']==213,'j<pn/d gives no extra power-of-two factor')
    ck(r['two_coeff_constant']==37,'old two-coefficient denominator constant')
    ck(r['join_constant']==r['coupled_direct_constant']+1+r['two_coeff_constant'],'complete d^8 join constant251')
    ck(r['old_two_coefficient_contract']=={'denominator_power':8,'denominator_constant':37,'distance_power':9,'distance_constant':128,'n_divisor':400,'does_not_require_K9_nonzero':True},'full old two-coefficient contract')
    ck(r['all_gap_partition']==['1<=h<=9','h>=10'],'all positive source gaps')
    ck(h1+1==h0 and h0==10,'short-long partition meets exactly')
    ck(EE>=L>=2,'main source e and high-size entry')
    ck(4*EE-h1-7>=0 and 11**(4*EE-h1-7)>2**r['join_constant'],'all short gaps handled uniformly')
    ck(L>=c['new']['linear_min'] and h0>=c['new']['linear_min'],'linear nonzero valuation entrance')
    ck(3*L+6*h0-o>=c['new']['linear_min'],'K lower bound without source restriction')
    ck(1+2**9==513>2**r['balanced_prime_log2_lower'],'balanced masks force p>512')
    ck((3*L-20)*r['balanced_prime_log2_lower']>r['join_constant'],'all balanced h<=e+13 use two coefficients')
    ck(L>=c['new']['second_e_min'],'large-gap second-order e entry')
    ck(3*L+6*(L+14)-o>=L+14,'large-gap K entry from same NC9')
    ck(c['new']['second_gap_offset']==14,'large-gap and h<=e+13 meet exactly')
    ck(3*10+6*10-o>=10,'low-C theorem has no separate K assumption')
    ck(c['new']['high_log2']<=c['inherited']['finite_log2'],'all n low-high cover')
    ck(c['scope']['families']==58 and not c['scope']['global_closure'],'source-class bound not global i9')
    return {'status':'PASS_MAIN_SOURCE_CLASS_EXPONENT_BOUND','checks':len(checks),'main_e_bound':EE-1,'h_at_least_10_e_bound':L-1,'needs_71_pair_table':False}


def receive_giant(c):
    p,e,K,h,b,C=(c[k] for k in ['p','e','K','h','b','C'])
    need(prime(p) and p>=11,'source prime')
    need(1<=b<p and 1<=C<p,'digits are valid')
    if c['paper_consumer']=='B0':
        need(e>=14 and K>=e+14 and h>=e+14,'second-order row range')
    elif c['paper_consumer']=='C-near-resonance':
        need(e>=27 and e<=h<=e+13 and K>=3*e,'near-resonant row range')
    else:raise ValueError('unrecognized demonstration range')
    n=make_n(p,e,K,h,b,C);Q=p**e;Y=p**K
    need(n%400==0 and n>=2**2048,'giant row n range')
    need(c['n_bits']==n.bit_length(),'giant row bits')
    expected={(B,S) for B in range(b+1) for S in range(C+1) if (B,S)!=(0,0)}
    seen=set();assignments=0;tested_primes=[]
    for group in c['witnesses']:
        ell=group['prime']; need(prime(ell) and ell>=11,'witness is prime and >=11')
        rn=n%ell;need(rn==group['n_residue'] and rn<=8,'prime divides source C(n,9)')
        tested_primes.append(ell)
        for B,S in group['masks']:
            need((B,S) in expected and (B,S) not in seen,'mask validity and no duplicate')
            j=Q*(B*Y+S)
            need(10<=j<=n//2,'legal target')
            need(j%ell>rn,'first-layer carry witnesses target')
            seen.add((B,S));assignments+=1
    need(seen==expected,'complete digital mask coverage')
    need(c['mask_count']==len(expected),'mask count')
    need(2*Q*(b*Y+C)<n,'highest digit excluded')
    return {'status':'PASS_EXACT_WHOLE_ROW','bits':n.bit_length(),'complete_masks':assignments,'primes':sorted(set(tested_primes))}

def receive_sources():
    c=json.loads((ROOT/'sources/INPUT.json').read_text());f=ROOT/c['archive']
    need(f.stat().st_size==c['bytes'],'input length')
    with f.open('rb') as stream:need(hashlib.file_digest(stream,'sha256').hexdigest()==c['sha256'],'input original SHA256')
    with zipfile.ZipFile(f) as z:
        for r in c['members']:
            data=z.read(r['member']); need(data==(ROOT/r['local']).read_bytes(),'source member original bytes')
            need(len(data)==r['bytes'] and hashlib.sha256(data).hexdigest()==r['sha256'],'source member hash')
    return {'status':'PASS_ORIGINAL_BYTES_NOT_HISTORY_REPLAY','copied_members':len(c['members'])}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',default=str(ROOT/'logs/acceptance.json'));ap.add_argument('--core-only',action='store_true');a=ap.parse_args();t=time.perf_counter()
    c=json.loads((ROOT/'evidence/certificate.json').read_text())
    out={'certificate':receive_certificate(c),'consumer':receive_consumer(c),'sources':receive_sources()}
    if not a.core_only:
        out['resonance']=receive_resonance(c,json.loads((ROOT/'evidence/resonance_obstruction.json').read_text()))
        out['giant']=receive_giant(json.loads((ROOT/'evidence/giant_row.json').read_text()))
        out['resonant_row']=receive_giant(json.loads((ROOT/'evidence/resonant_row.json').read_text()))
    out['seconds']=time.perf_counter()-t;out['status']='PASS_MAIN_CONSUMER_WITHOUT_RESONANCE_TABLE' if a.core_only else 'PASS_NEW_GENERAL_TRIDIGIT_RECEIVING'
    path=Path(a.output);path.parent.mkdir(parents=True,exist_ok=True);path.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,ensure_ascii=False))
if __name__=='__main__':main()
