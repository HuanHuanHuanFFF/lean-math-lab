#!/usr/bin/env python3
"""Deterministic, standard-library replay for C / native i=6 / GAP-024.

This checks finite certificates and algebra, NOT Lean or all B699.
The unbounded arguments and the adopted q_r>1 interface are in PROOFS.md.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from fractions import Fraction
from math import comb, gcd
from pathlib import Path

RESIDUES = [27,100,128,153,176,225,252,280,325,352,378,425,552,576,625,
            704,729,776,801,850,875,928,954,976,1000,1026,1100,1225,1251,
            1305,1377,1425,1450,1476,1504,1552,1576,1625,1650,1675,1701,1776]
SIX = {252:(1,3,1),704:(1,1,3),850:(3,1,5),954:(1,3,1),
       1100:(1,1,15),1552:(3,1,1)}
EMAX=4096
Poly = dict[tuple[int,int],int]


def require(ok: bool, message: str) -> None:
    if not ok:
        raise AssertionError(message)


def dump(path: Path, obj: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')


def canonical_hash(obj: object) -> str:
    return hashlib.sha256(json.dumps(obj,sort_keys=True,separators=(',',':')).encode()).hexdigest()


def val(n: int, p: int) -> int:
    require(n>0 and p>=2,'valuation domain')
    e=0
    while n%p==0:
        n//=p; e+=1
    return e


def smallpart(n: int) -> int:
    require(n>0,'positive smallpart argument')
    s=1
    for p in (2,3,5):
        while n%p==0:
            n//=p; s*=p
    return s


def smooth_independent(n: int) -> bool:
    require(n>0,'positive smoothness argument')
    while (d:=gcd(n,30))>1:
        n//=d
    return n==1


def smooth_numbers(limit: int) -> list[int]:
    out=set(); a=1
    while a<=limit:
        b=a
        while b<=limit:
            c=b
            while c<=limit:
                out.add(c); c*=5
            b*=3
        a*=2
    return sorted(out)


def iroot(x: int,k: int) -> int:
    require(x>=0 and k>=1,'root domain')
    lo,hi=0,1
    while hi**k<=x: hi*=2
    while hi-lo>1:
        mid=(lo+hi)//2
        if mid**k<=x:lo=mid
        else:hi=mid
    require(lo**k<=x<(lo+1)**k,'exact root bracket')
    return lo


def add(*args: Poly) -> Poly:
    out: Poly={}
    for a in args:
        for mon,c in a.items(): out[mon]=out.get(mon,0)+c
    return {m:c for m,c in out.items() if c}


def scale(a: Poly,c: int) -> Poly:
    return {m:v*c for m,v in a.items() if v*c}


def mul(a: Poly,b: Poly) -> Poly:
    out: Poly={}
    for (i,j),c in a.items():
        for (k,l),d in b.items():
            m=(i+k,j+l); out[m]=out.get(m,0)+c*d
    return {m:c for m,c in out.items() if c}


def power(a: Poly,n: int) -> Poly:
    require(n>=0,'nonnegative polynomial power')
    out={(0,0):1}
    for _ in range(n):out=mul(out,a)
    return out


def shift(a: Poly,x0: int,y0: int) -> Poly:
    out: Poly={}
    for (i,j),c in a.items():
        for u in range(i+1):
            for v in range(j+1):
                t=c*comb(i,u)*comb(j,v)*x0**(i-u)*y0**(j-v)
                m=(u,v);out[m]=out.get(m,0)+t
    return {m:c for m,c in out.items() if c}


def order_at(a: Poly,x0: int,y0: int) -> int:
    q=shift(a,x0,y0)
    require(bool(q),'zero polynomial has no finite order')
    return min(i+j for i,j in q)


def coefficients(a: Poly) -> list[list[int]]:
    return [[i,j,c] for (i,j),c in sorted(a.items())]


def activity_certificate() -> dict:
    require(len(RESIDUES)==len(set(RESIDUES))==42,'42 unique residues')
    snapshot=Path(__file__).resolve().parents[1]/'dependencies/C24_FRONTIER_SNAPSHOT.json'
    raw=snapshot.read_bytes()
    blob=hashlib.sha1(b'blob '+str(len(raw)).encode()+b'\0'+raw).hexdigest()
    require(blob=='c6f3391c4c3742b8e32265437c537f7ba5d6bc18','frozen C24 Git blob identity')
    require(json.loads(raw)['remaining_residue_upper_envelope']==RESIDUES,'baseline exact residue set')
    groups={}; rows=[]; actual_six=[]
    for a in RESIDUES:
        positions={}
        for p,h in ((2,8),(3,9),(5,25)):
            hits=[r for r in range(6) if (a-r)%h==0]
            require(len(hits)==1,'exactly one active position per base')
            positions[p]=hits[0]
        active=sorted(set(positions.values()))
        key=','.join(map(str,[r for r in active if r<=3]))
        groups[key]=groups.get(key,0)+1
        kappa=[]; high=[]
        for r in range(6):
            c=1
            ps=[]
            for p in (2,3,5):
                if positions[p]==r:ps.append(p)
                else:c*=p**val(abs(r-positions[p]),p)
            kappa.append(c);high.append(ps)
        # Verify the exact symbolic smallpart formula on two different lifts.
        # Infinite validity is the valuation-of-difference proof, not this test.
        for n in (a+1800,a+1800*123):
            H={p:p**val(n-positions[p],p) for p in (2,3,5)}
            for r in range(6):
                rhs=kappa[r]
                for p in high[r]:rhs*=H[p]
                require(rhs==smallpart(n-r),'exact smallpart lift cross-check')
        row={'a':a,'high_positions_2_3_5':[positions[p] for p in (2,3,5)],
             'kappa_0_to_5':kappa,'high_bases_at_r':high,
             'front4_positions':[r for r in active if r<=3]}
        if set(active)=={0,2,4}:
            actual_six.append(a)
            s1,s3,s5=(kappa[r] for r in (1,3,5))
            require((s1,s3,s5)==SIX[a],'six exact odd-source smallparts')
            row.update({'M':s1**4*s3**2*s5,'N':s1**9*s3**5*s5**3,
                        'L':s1**2*s3*s5})
        rows.append(row)
    require(actual_six==sorted(SIX),'exact six-class selection')
    expected={'0,1':18,'0,2':6,'0,1,2':6,'0,1,3':6,'0,2,3':6}
    require(groups==expected,'front4 activity counts')
    # Independent CRT construction of the six classes: every permutation of
    # bases 2,3,5 at positions 0,2,4, using their actual threshold moduli.
    import itertools
    crt=[]
    for r2,r3,r5 in itertools.permutations((0,2,4)):
        sols=[a for a in range(1800) if a%8==r2 and a%9==r3 and a%25==r5]
        require(len(sols)==1,'unique CRT class')
        crt.extend(sols)
    require(sorted(crt)==actual_six,'independent CRT set comparison')
    return {'residues':RESIDUES,'count':42,'groups':groups,'rows':rows,
            'six':actual_six,'scope':'exact activity and cost data; not NC examples'}


def polynomial_certificate() -> dict:
    one={(0,0):1}; x={(1,0):1}; y={(0,1):1}
    J=mul(x,y); A=mul(add(x,scale(one,-1)),add(y,scale(one,-1)))
    d=add(y,scale(x,-1)); n=add(x,y)
    D1=add(power(d,2),scale(one,-1));D3=add(power(d,2),scale(one,-9))
    f8=mul(mul(power(J,2),A),D1)
    f20=mul(mul(mul(power(J,4),power(A,2)),power(D1,3)),D3)
    rows=[]
    for name,F,T,expected in [('F8_gap',f8,4,{1:4,3:2,5:1}),
                              ('F20_gap',f20,8,{1:9,3:5,5:3})]:
        require(order_at(F,0,0)==T,'exact origin order')
        weights={};slots={}
        for r in range(1,6):
            ss=[order_at(F,b,r-b) for b in range(r+1)]
            weights[str(r)]=min(ss);slots[str(r)]=ss
        for r,w in expected.items():require(weights[str(r)]==w,'odd-source exact order')
        refined = ({1:[4,4],2:[2,2,2],3:[2,2,2,2],4:[2,1,0,1,2],5:[2,1,1,1,1,2]}
                   if name=='F8_gap' else
                   {1:[9,9],2:[4,4,4],3:[5,5,5,5],4:[4,2,0,2,4],5:[4,3,3,3,3,4]})
        for r,ww in refined.items():
            require(slots[str(r)]==ww,'refined full-block slot orders')
        rows.append({'name':name,'origin_order':T,'degree':max(i+j for i,j in F),
                     'slot_orders':slots,'min_orders':weights,
                     'coefficients':coefficients(F)})
    # Integer polynomial identities behind W, h_gap and ordinary source pairs.
    require(add(power(d,2),scale(power(n,2),-1),scale(J,4))=={},'d²=n²−4J')
    require(add(A,scale(J,-1),n,scale(one,-1))=={},'A=J−n+1')
    # Slot categories used in the full unitary allocations. Pair values are
    # all <7 in absolute value when a category is not zero: primes >=7 cannot
    # place one prime power in two different categories.
    allocation={}
    for r in (2,3,4,5):
        items=[]
        for b in range(r+1):
            c=r-b
            vals={'J':b*c,'A':(b-1)*(c-1),'B':(b-2)*(c-2),'d':c-b}
            cats={2:['J','d'],3:['J','A'],4:['J','A','d'],5:['J','A','B']}[r]
            require(sum(vals[c]==0 for c in cats)==1,'unique complete-block category at each slot')
            require(all(abs(vals[c])<=6 for c in cats),'nonzero category values not divisible by primes>=7')
            items.append({'b':b,'k_slot':c,'values':vals,'distance':abs(c-b)})
        allocation[str(r)]=items
    return {'kernels':rows,'identity_checks':['d²=n²−4J','A=J−n+1'],
            'allocation_slots':allocation,
            'refined_divisors': {
                'F8_gap':'q1^4 q2^2 q3^2 E4^2 N4 q5 E5',
                'F20_gap':'q1^9 q2^4 q3^5 E4^4 N4^2 q5^3 E5'},
            'refinement_R':'R_gap=q2^2 E4^2 N4; R_gap>=49 under adopted q2>=7',
            'meaning':'integer Taylor coefficients certify full Q^w, not radical weights'}


def constants_certificate() -> dict:
    out=[]
    tests=[('F8_all42',27,{1:4,3:2,5:1},64,32),
           ('F20_all42',27,{1:9,3:5,5:3},4096,800),
           ('F8_six',252,{1:4,3:2,5:1},64,60),
           ('F20_six',252,{1:9,3:5,5:3},4096,3500),
           ('central_C5',252,{1:2,3:1,5:1},16,15)]
    for name,n,weights,factor,lower in tests:
        f=Fraction(factor,1)
        for r,w in weights.items():f*=Fraction(n-r,n)**w
        require(f>lower,'exact endpoint lower constant')
        out.append({'name':name,'n_min':n,'weights':weights,'factor':factor,
                    'numerator':f.numerator,'denominator':f.denominator,
                    'strict_lower':lower})
    f=4*Fraction(251*247,252**2)
    require(f>Fraction(39,10),'near N5 exact constant')
    out.append({'name':'near_N5','n_min':252,'numerator':f.numerator,
                'denominator':f.denominator,'strict_lower':'39/10'})
    require(4*251*249>3*252**2,'q3>W at endpoint')
    require(7*(252-7)>6*(252-1),'W>6s1 at endpoint')
    # 4(n−1)(n−3)−3n²=n²−16n+12 is positive and increasing at n>=252.
    return {'endpoint_tests':out,'infinite_extension':'each (1−r/n) is increasing for n>r',
            'q3_comparison_polynomial':[12,-16,1],
            'g_at_least_7_adopted':True,
            'minimal_blocks':{'E3':7,'N3':7,'q3':77,'N5':7,'C5':17,'q5':119}}


def bounds() -> dict:
    Mmax=max(s1**4*s3**2*s5 for s1,s3,s5 in SIX.values())
    Nmaxcoef=max(s1**9*s3**5*s5**3 for s1,s3,s5 in SIX.values())
    G=iroot((Mmax*EMAX-1)//60,3)
    H=iroot((Nmaxcoef*EMAX**8-1)//3500,5)
    require((Mmax,Nmaxcoef,G,H)==(405,2460375,30,2234408),'exact bounded terminal')
    return {'epsilon_max':EMAX,'M_max':Mmax,'N_coefficient_max':Nmaxcoef,
            'g_max':G,'n_max':H,'strict_g_bracket':[60*G**3,Mmax*EMAX,60*(G+1)**3],
            'strict_n_bracket':[3500*H**5,Nmaxcoef*EMAX**8,3500*(H+1)**5],
            'relaxation':'enumerate g>=1 although NC6 requires g>=7; supersets only'}


def enumerate_A(H: int,G: int) -> tuple[list, list, int]:
    candidates=[];survivors=[];rows=0
    for alpha in smooth_numbers(H):
        if alpha<2:continue
        for g in range(1,min(G,H//alpha)+1):
            n=g*alpha
            if n<252 or n%1800 not in SIX:continue
            rows+=1
            s1,s3,s5=SIX[n%1800]
            M=s1**4*s3**2*s5; NN=s1**9*s3**5*s5**3
            for eps in range(1,min(EMAX,alpha-2)+1):
                if (alpha-eps)%2:continue
                beta=(alpha-eps)//2;j=g*beta
                if j<7 or gcd(alpha,beta)!=1:continue
                if 60*n*g*g>=M*eps*eps or 3500*n**5>=NN*eps**8:continue
                rec=[n,j,g,alpha,eps]
                candidates.append(rec)
                if beta*(alpha-beta)%((n-1)//s1)==0:survivors.append(rec)
    return sorted(candidates),sorted(survivors),rows


def enumerate_B(H: int,G: int) -> tuple[list, list, int]:
    # Direct original n progression, different smoothness test and source check.
    candidates=[];survivors=[];rows=0
    for a in sorted(SIX):
        for n in range(a,H+1,1800):
            for g in range(1,G+1):
                if n%g:continue
                alpha=n//g
                if alpha<2 or not smooth_independent(alpha):continue
                rows+=1
                ss=[smallpart(n-r) for r in (1,3,5)]
                require(tuple(ss)==SIX[a],'actual odd smallparts in B')
                M=ss[0]**4*ss[1]**2*ss[2];NN=ss[0]**9*ss[1]**5*ss[2]**3
                # Iterate the original j interval corresponding to epsilon<=EMAX.
                jlo=max(7,(n-g*EMAX+1)//2)
                jhi=(n-g+0)//2
                for j in range(jlo,jhi+1):
                    if gcd(n,j)!=g:continue
                    delta=n-2*j
                    if delta<=0 or delta%g:continue
                    eps=delta//g
                    if eps>EMAX:continue
                    if 60*n*g**4>=M*delta**2 or 3500*n**5*g**8>=NN*delta**8:continue
                    rec=[n,j,g,alpha,eps];candidates.append(rec)
                    # Direct original source1 condition; no normalized beta product.
                    q1=(n-1)//ss[0]
                    if j*(j-1)%q1==0:survivors.append(rec)
    return sorted(candidates),sorted(survivors),rows


def prime(p: int) -> bool:
    if p<2:return False
    d=2
    while d*d<=p:
        if p%d==0:return False
        d+=1
    return True


def vfact(n: int,p: int) -> int:
    out=0
    while n:
        n//=p;out+=n
    return out


def vchoose(n: int,j: int,p: int) -> int:
    return vfact(n,p)-vfact(j,p)-vfact(n-j,p)


def terminal_certificate() -> dict:
    bs=bounds();A,S,ra=enumerate_A(bs['n_max'],bs['g_max'])
    B,T,rb=enumerate_B(bs['n_max'],bs['g_max'])
    require(A==B,'complete pre-source candidate set equality')
    require(S==T,'complete source1 survivor equality')
    expected=[[6250,2083,1,6250,2084],[6250,2084,2,3125,1041]]
    require(S==expected,'exact original source1 terminal pair set')
    require(len(A)==2902 and ra==rb==43,'terminal counts')
    witnesses=[]
    for n,j,g,alpha,eps in S:
        p=11; q2=(n-2)//smallpart(n-2)
        require(prime(p) and p>=6,'actual admissible prime')
        require(q2==781 and q2==11*71 and prime(71),'complete q2 factorization')
        require(val(n-2,p)==1,'complete source exponent')
        require(n%p==2 and j%p>2,'original p-layer carry')
        va=vchoose(n,6,p);vb=vchoose(n,j,p)
        require(va>0 and vb>0,'factorial valuations of both choose')
        require(comb(n,6)%p==0 and comb(n,j)%p==0,'independent direct integer binomials')
        witnesses.append({'n':n,'j':j,'g':g,'alpha':alpha,'epsilon':eps,'p':p,
                          'q2':q2,'factorization_q2':[[11,1],[71,1]],
                          'n_mod_p':n%p,'j_mod_p':j%p,
                          'valuation_choose_n_6':va,'valuation_choose_n_j':vb,
                          'complete_source_exponent':1})
    return {'bounds':bs,'rows_A':ra,'rows_B':rb,'pre_source_count':len(A),
            'pre_source_set_sha256':canonical_hash(A),'pre_source_candidates':A,
            'source1_count':len(S),'source1_candidates':S,'witnesses':witnesses,
            'final_survivors':0,'g_ge_7_source1_survivors':sum(r[2]>=7 for r in S),
            'comparison':'full sorted sets, not counts alone'}


def strong_terminal_certificate() -> dict:
    # Use the actual full-source lower bound R_gap>=q2^2>=49, not a radical.
    G=iroot((405*EMAX-1)//(60*49),3)
    H=iroot((2460375*EMAX**8-1)//(3500*49**2),5)
    require((G,H)==(8,471068),'refined terminal exact bounds')
    A=[]
    for alpha in smooth_numbers(H):
        for g in range(7,G+1):
            n=g*alpha
            if 252<=n<=H and n%1800 in SIX:
                A.append([n,g,alpha,n%1800])
    B=[]
    for residue in SIX:
        for n in range(residue,H+1,1800):
            for g in range(7,G+1):
                if n%g==0 and smooth_independent(n//g):
                    B.append([n,g,n//g,residue])
    require(sorted(A)==sorted(B),'refined entire original-row set comparison')
    require(sorted(A)==[[252,7,36,252],[87500,7,12500,1100],
                         [458752,7,65536,1552]],'three original rows')
    rejects=[]
    for n,g,alpha,a in sorted(A):
        eps_max=min(EMAX,alpha-2)
        ss=SIX[a];M=ss[0]**4*ss[1]**2*ss[2]
        lhs=60*n*g*g*49;rhs=M*eps_max**2
        require(lhs>=rhs,'all original j ruled out by refined F8 bound')
        rejects.append({'n':n,'g':g,'alpha':alpha,'a':a,
                        'epsilon_upper_for_all_j':eps_max,
                        'lower_bound_for_60_n_g2_R_E5':lhs,
                        'upper_bound_for_M_epsilon2':rhs,
                        'strict_necessary_inequality_impossible':True})
    return {'epsilon_max':EMAX,'g_max':G,'n_max':H,'R_gap_min':49,
            'source_of_49':'full q2>=7, hence q2^2>=49; frozen unit-window dependency',
            'original_row_set_A':sorted(A),'original_row_set_B':sorted(B),
            'row_rejections':rejects,'final_survivors':0,
            'g_bracket':[60*49*G**3,405*EMAX,60*49*(G+1)**3],
            'n_bracket':[3500*49**2*H**5,2460375*EMAX**8,3500*49**2*(H+1)**5],
            'scope':'six residue classes, epsilon<=4096 only; not all42'}


def verify_manifest(root: Path) -> int:
    m=root/'MANIFEST.sha256'
    require(m.exists(),'manifest exists')
    count=0
    for line in m.read_text(encoding='utf-8').splitlines():
        if not line:continue
        digest,rel=line.split('  ',1)
        path=(root/rel).resolve()
        require(path.is_relative_to(root.resolve()),'safe manifest path')
        require(path.is_file(),f'missing manifest entry {rel}')
        actual=hashlib.sha256(path.read_bytes()).hexdigest()
        require(actual==digest,f'hash mismatch {rel}')
        count+=1
    return count


def main() -> None:
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--compare',type=Path)
    ap.add_argument('--check-manifest',action='store_true')
    args=ap.parse_args()
    root=Path(__file__).resolve().parents[1]
    if args.check_manifest:print('MANIFEST_FILES_VERIFIED',verify_manifest(root))
    outputs={'activity.json':activity_certificate(),'polynomials.json':polynomial_certificate(),
             'constants.json':constants_certificate(),'terminal.json':terminal_certificate(),
             'strong_terminal.json':strong_terminal_certificate()}
    csv_lines=['a,r2,r3,r5,kappa0,kappa1,kappa2,kappa3,kappa4,kappa5,H_at_0,H_at_1,H_at_2,H_at_3,H_at_4,H_at_5']
    for row in outputs['activity.json']['rows']:
        fields=[row['a'],*row['high_positions_2_3_5'],*row['kappa_0_to_5']]
        fields += ['*'.join('H'+str(p) for p in ps) or '1' for ps in row['high_bases_at_r']]
        csv_lines.append(','.join(map(str,fields)))
    require((root/'certificates/ACTUAL_SMALLPARTS_42.csv').read_text()== '\n'.join(csv_lines)+'\n',
            'all42 actual-smallpart CSV equals regenerated activity data')
    for name,obj in outputs.items():
        dump(args.output/name,obj)
        if args.compare:
            expected=json.loads((args.compare/name).read_text(encoding='utf-8'))
            regenerated=json.loads((args.output/name).read_text(encoding='utf-8'))
            require(expected==regenerated,f'certificate replay JSON equality {name}')
            require((args.compare/name).read_bytes()==(args.output/name).read_bytes(),
                    f'certificate replay byte equality {name}')
        print('PASS',name,hashlib.sha256((args.output/name).read_bytes()).hexdigest())
    print('PASS 42 activity rows; six independently reconstructed CRT classes')
    print('PASS integer Taylor jets and exact rational endpoint bounds')
    print('PASS two original-input enumerators: 43 rows; 2902 candidates; 2 source1 survivors')
    print('PASS refined full-source terminal: g<=8, n<=471068; three rows; zero survivors')
    print('PASS both original pairs rejected by actual p=11; final survivors=0')
    print('SCOPE: epsilon<=4096 terminal in SIX classes only; no whole i6 closure')
    print('DEPENDENCY: unbounded proof adopts frozen unit-window q_r>1 / g>=7 interface')

if __name__=='__main__':main()
