#!/usr/bin/env python3
"""Independent certificate receiver. Does not import the generator or its helpers."""
from __future__ import annotations
import argparse, hashlib, json, math, zipfile
from pathlib import Path

EXPECTED_PARENT = '340c1dbdd40ce62f373ac91f0851c39cbfae82c2abbdef666ddbbf66543c5e97'


def require(test: bool, message: str) -> None:
    if not test:
        raise ValueError(message)


def mul(a: tuple[int,int], b: tuple[int,int], modulus: int | None = None) -> tuple[int,int]:
    u, x = a[0]*b[0]+3*a[1]*b[1], a[0]*b[1]+a[1]*b[0]
    return (u,x) if modulus is None else (u % modulus,x % modulus)


def power(k: int, modulus: int | None = None) -> tuple[int,int]:
    answer, base = (1,0), (2,1)
    while k:
        if k & 1:
            answer = mul(answer,base,modulus)
        base = mul(base,base,modulus)
        k >>= 1
    return answer


def state(q: int, modulus: int | None = None) -> tuple[int,int]:
    if modulus is None:
        u,x = power(8*q+1)
        return (3*x-1)//2, u//2
    u,x = power(8*q+1,2*modulus)
    require(u % 2 == 0 and (3*x-1) % 2 == 0,'Parity lost in Pell quotient')
    return ((3*x-1)//2 % modulus, u//2 % modulus)


def S(d: int,y: int,a: int,b: int) -> int:
    # Horner evaluation, unlike the expanded generator formula.
    v=a*y
    return ((((v+5*d)*v+10*d*d)*v+10*d**3)*v+5*d**4+d*d*b*y)


def check_cycle(rows: list[list[int]], modulus: int) -> None:
    require(len({tuple(r) for r in rows}) == len(rows),'Repeated state before first return')
    for q,row in enumerate(rows):
        require(tuple(row) == state(q,modulus),'Pell power/cycle disagreement')
    require(state(len(rows),modulus)==(1,1),'Cycle does not return')


def v3(n: int) -> int:
    require(n>0,'Invalid valuation argument')
    e=0
    while n % 3 == 0:
        n//=3; e+=1
    return e


def main() -> None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1])
    args=ap.parse_args(); root=args.root
    load=lambda name:json.loads((root/'certificates'/name).read_text())
    files=sorted(p.name for p in (root/'certificates').glob('*.json'))
    require(len(files)==8,'Expected exactly eight certificates')
    src=load('source_adoption.json')
    parent=root/'inputs/parent_A4_TRI4_evidence.zip'
    require(hashlib.sha256(parent.read_bytes()).hexdigest()==EXPECTED_PARENT,'Wrong parent bytes')
    require(src['parent_zip_sha256']==EXPECTED_PARENT,'Wrong adopted parent digest')
    for name,digest in src['inputs'].items():
        require(hashlib.sha256((root/'inputs'/name).read_bytes()).hexdigest()==digest,'Input digest mismatch')
    prefix='B699-D-i3-20260926-A4-MOD97-TRI4/'
    with zipfile.ZipFile(parent) as z:
        require(z.testzip() is None,'Parent CRC failed')
        for name, member in {
            'parent_HANDOFF.md':'HANDOFF.md', 'parent_PROOFS.md':'PROOFS.md',
            'parent_joint_frontier.json':'certificates/joint_frontier.json',
            'parent_local_square_tables.json':'certificates/local_square_tables.json',
            'OVERVIEW-2026-09-22.md.txt':'inputs/OVERVIEW-2026-09-22.md.txt'
        }.items():
            require((root/'inputs'/name).read_bytes()==z.read(prefix+member),'Parent member mismatch')
        manifest=z.read(prefix+'SHA256SUMS.txt').decode()
        for line in manifest.splitlines():
            digest,name=line.split('  ',1)
            require(hashlib.sha256(z.read(prefix+name)).hexdigest()==digest,'Parent manifest mismatch')
    print('PASS source bytes / parent manifest (no parent mathematical replay)')

    c=load('A42_exact_mod7.json')
    require(c['first_return_period']==7,'Incorrect A42 lift period')
    rows=[[r['d_mod98'],r['y_mod98']] for r in c['rows']]
    check_cycle(rows,98)
    keep=[]; drop=[]
    for r,row in enumerate(c['rows']):
        d,y=state(r,98)
        require((d-1)%14==0,'Actual quotient not integral in lifted ring')
        b=(d-1)//14 % 7
        s=S(d%7,y%7,42,b)%7
        roots=[z for z in range(7) if (z*z-s)%7==0]
        require(row['B_mod7']==b==4*r%7,'Actual B formula failed')
        require(row['S_mod7']==s==(5+4*r)%7,'Actual square target failed')
        require(row['square_roots_mod7']==roots,'Square-root table failed')
        (keep if roots else drop).append(r)
    require(keep==c['retained_q_mod7']==[1,4,5,6],'Wrong retained classes')
    require(drop==c['excluded_q_mod7']==[0,2,3],'Wrong removed classes')
    print('PASS A42 exact B / full seven-state mod7 lift')

    c=load('A42_mod3_closure.json')
    check_cycle(c['cycle_mod42'],42)
    require(c['cycle_mod42']==[[1,1]],'A42 modulo42 not constant')
    require(S(1,1,0,0)%3==c['S_mod3']==2,'Wrong A42 mod3 obstruction')
    require(c['squares_mod3']==[0,1] and c['B_mod3']==0,'Wrong square set / actual B')
    c=load('NOSPLIT3.json')
    norm=[[d,y] for d in range(9) for y in range(9) if (d*d+d+1-3*y*y)%9==0]
    require(norm==c['norm_solutions_mod9'],'Norm table mismatch')
    require(all(d%3==1 and y%3!=0 for d,y in norm),'Norm residue invariant failed')
    for row in c['split_cases_mod3']:
        require(row['S']==S(row['d'],row['y'],row['A'],row['B'])%3==2,'Split obstruction failed')
    require(c['A_only_excluded_mod9']==[3,6],'Wrong A-only projection')
    # sqrt(3)-coordinate of (U+X sqrt(3))^3, using U^2=1+3X^2:
    # 3 U^2 X + 3 X^3 = 3X + (9+3)X^3.
    require(c['triple_X_coefficients_ascending']==[0,3,0,9+3],'Triple identity failed')
    require(c['triple_unit_mod3']==[1,2,2],'Triple valuation unit failed')
    require(c['X_4m_mod3_for_m_0_1_2']==[power(4*k,3)[1] for k in range(3)],'Base 3-adic step failed')
    print('PASS A42 whole-branch mod3 contradiction / NOSPLIT3 valuation ingredients')

    c=load('Q336_primepower.json')
    u8,x8=power(8)
    require((u8,x8)==(18817,10864),'Pell step coefficients incorrect')
    require(c['d_recurrence_mod336']==[u8%336,(3*x8)%336,((u8-1)//2)%336]==[1,0,0],
            'd modulo336 induction failed')
    require(c['y_recurrence_mod168']==[x8%168,u8%168,(x8//2)%168]==[112,1,56],
            'y modulo168 induction failed')
    require((112+56)%168==0,'y fixed-state induction failed')
    require((2*168)%336==0,'Even A does not clear y error')
    c3=[pow(3,e,336) for e in range(1,13)]
    c7=[pow(7,e,336) for e in range(1,3)]
    require(c3==c['power3_positive_exponent_cycle_mod336'] and len(set(c3))==12,'Power3 cycle mismatch')
    require(c7==c['power7_positive_exponent_cycle_mod336'] and len(set(c7))==2,'Power7 cycle mismatch')
    require(pow(3,13,336)==3 and pow(7,3,336)==7,'Power cycles do not close')
    for p, period, key in ((3,2,'n_mod3_values_by_c_and_s_mod2'),(7,3,'n_mod7_values_by_c_and_s_mod3')):
        table={str(k):[k*pow(2,e,p)%p for e in range(period)] for k in (1,3)}
        require(table==c[key],'n recovery residue table mismatch')
    require([(k,e) for k in(1,3) for e in range(2) if k*pow(2,e,3)%3==2]==[(1,1)],'n Q3 interface failed')
    require([(k,e) for k in(1,3) for e in range(3) if k*pow(2,e,7)%7==2]==[(1,1)],'n Q7 interface failed')
    print('PASS Q congruence / ALL positive prime-power exponents / original n interface')

    old=json.loads((root/'inputs/parent_joint_frontier.json').read_text())
    oldmod=old['A_modulus']; oldset=set(old['surviving_A_residues'])
    require(oldmod==336784 and len(oldset)==30930,'Unexpected frozen parent frontier')
    f=load('frontier.json'); mod=f['new_A_modulus']
    require(mod==9*oldmod==3031056,'New period incorrect')
    # Direct one-period pass, independent of generator's r+k*M enumeration.
    stages={'parent_lift':0,'after_NOSPLIT3':0,'after_Q3':0,'after_Q7':0}; expected=[]
    for a in range(0,mod,2):
        if a%oldmod not in oldset:
            continue
        stages['parent_lift']+=1
        if a%9 in (3,6):
            continue
        stages['after_NOSPLIT3']+=1
        if a%3==2 and (a+1)%336 not in c3:
            continue
        stages['after_Q3']+=1
        if a%7==6 and (a+1)%336 not in c7:
            continue
        stages['after_Q7']+=1
        expected.append(a)
    require(stages==f['stages']=={'parent_lift':278370,'after_NOSPLIT3':216510,'after_Q3':141639,'after_Q7':118548},
            'Wrong frontier stages')
    require(expected==f['surviving_A_residues'],'Full surviving list mismatch')
    require(f['newly_excluded_relative_to_lifted_parent']==159822,'Wrong net deletion count')
    require(f['surviving_classes']==118548 and f['total_excluded_in_new_period']==1396980,'Wrong total counts')
    require(min(a for a in expected if a)>0 and min(a for a in expected if a)==f['least_positive_surviving_residue']==100,
            'Wrong minimum positive residue')
    small=load('new_small_A_closures.json')
    require([r['A'] for r in small['previously_allowed_A_below100']]==[42,48,62,90,96,98], 'Wrong new fixed branches')
    require([a for a in old['surviving_A_residues'] if 42<=a<100]==[42,48,62,90,96,98], 'Parent small branch list mismatch')
    for row in small['previously_allowed_A_below100']:
        a=row['A']
        require(a not in expected and row['A_mod9']==a%9 and row['Q_mod336']==(a+1)%336,'Incorrect small branch data')
    print('PASS exact lifted-parent net deletion: 159822; survivors 118548; minimum A=100')

    b=load('boundary_A100.json')
    require(b['family']=={'A':100,'q0':45,'stride':60,'parameter':'r>=0','B':'3(d-1)/100'},'Boundary family mismatch')
    check_cycle(b['cycle_mod400'],400)
    require(len(b['cycle_mod400'])==30 and state(45,400)[0]==1,'Boundary integrality not uniform')
    require([q for q,row in enumerate(b['cycle_mod400']) if row[0]==1]==[0,15],
            'A100 full allocation row classification failed')
    require([q for q in range(60) if q%15==0 and q%4==1]==[45], 'A100 CRT failed')
    require(b['complete_A100_allocation_q_mod15']==0 and b['complete_A100_allocation_and_TRI4_q_mod60']==45,
            'A100 complete necessary row interface incorrect')
    for row in b['local_square_checks']:
        p=row['p']; per=row['period']; check_cycle(row['cycle'],100*p)
        require(60%per==0,'Boundary stride does not preserve quotient cycle')
        d,y=state(45,100*p)
        require(3*(d-1)%100==0,'Boundary B not integral')
        B=(3*(d-1)//100)%p; target=S(d%p,y%p,100,B)%p
        require([row[k] for k in ('d','y','B','S')]==[d%p,y%p,B,target],'Boundary actual local value mismatch')
        require(row['roots']==[z for z in range(p) if z*z%p==target] and bool(row['roots']), 'Boundary local square failed')
    require(100%9 not in (3,6) and 100%3!=2 and 100%7!=6,'Boundary not beyond new filters')
    require((-100*102//8)%4==45%4==1,'Boundary parent TRI4 failed')
    # Uniform old-size-gate checks, not re-proofs of the old consumers.
    require(9*60817**2>200**3,'Boundary CUBIC3 size estimate failed')
    require(100**25>100,'Boundary HEIGHT26 size estimate failed')
    for row in b['samples']:
        q=row['q']; d,y=state(q)
        require((d,y)==(row['d'],row['y']) and d*d+d+1==3*y*y,'Boundary exact Pell sample mismatch')
        B=3*(d-1)//100; require(100*B==3*(d-1) and B%4==0,'Boundary exact allocation failed')
        target=S(d,y,100,B); z=row['isqrt_S']
        require(row['S']==target and z*z<target<(z+1)**2,'Boundary must not be labelled an integer square')
        require(row['S_minus_isqrt_squared']==target-z*z and row['next_square_minus_S']==(z+1)**2-target,
                'Boundary non-square interval mismatch')
        require(v3(B)==2+v3(q) and row['v3_B']==v3(B) and row['v3_A']==0,'Boundary valuation failed')
        U,X=power(4*q); height=max(100,X)//math.gcd(100,X)
        require(row['Q']==d+100*y and row['X']==X and row['eta_height']==height,'Boundary recovery sample mismatch')
        require(B**3>3*d and 4*X<(4*height)**26,'Boundary old-size gate failed')
    print('PASS unbounded weaker A100 family and two exact NON-square diagnostics')
    print('PASS: eight certificates; no Lean; no external independent mathematical review')

if __name__=='__main__':
    main()
