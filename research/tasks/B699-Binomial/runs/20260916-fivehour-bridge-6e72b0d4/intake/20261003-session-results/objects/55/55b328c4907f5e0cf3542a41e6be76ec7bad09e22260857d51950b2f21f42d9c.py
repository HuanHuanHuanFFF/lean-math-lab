#!/usr/bin/env python3
"""Exact, standard-library certificates for C round 2.

This verifies finite algebra, constants, scope and the growth relaxation.
It does not prove the adopted unit-window theorem or BFT, does not enumerate
old epsilon terminals, and does not assert existence/nonexistence of NC6 points.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import io
import json
from fractions import Fraction as Q
from math import comb, prod
from pathlib import Path
import zipfile

ROOT = Path(__file__).resolve().parents[1]
PREVIOUS_SHA = 'afcf5462a6f825b65a92bb21d04bb23d7630bdaaef2ce94dc3678138712ec2ca'
Poly = dict[tuple[int,int],int]


def enc(obj):
    if isinstance(obj,Q):
        return {'numerator':obj.numerator,'denominator':obj.denominator}
    if isinstance(obj,dict):
        return {str(k):enc(v) for k,v in obj.items()}
    if isinstance(obj,(list,tuple)):
        return [enc(x) for x in obj]
    return obj


def dump(obj):
    return (json.dumps(enc(obj),ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode('utf-8')


def mul(a:Poly,b:Poly)->Poly:
    out={}
    for (i,j),c in a.items():
        for (u,v),d in b.items():
            key=(i+u,j+v)
            out[key]=out.get(key,0)+c*d
    return {k:v for k,v in out.items() if v}


def poly_from_lines(lines):
    out={(0,0):1}
    for a,b,c in lines:
        out=mul(out,{k:v for k,v in { (1,0):a,(0,1):b,(0,0):c }.items() if v})
    return out


def shift(a:Poly,x:int,y:int)->Poly:
    out={}
    for (i,j),c in a.items():
        for u in range(i+1):
            for v in range(j+1):
                val=c*comb(i,u)*comb(j,v)*x**(i-u)*y**(j-v)
                out[u,v]=out.get((u,v),0)+val
    return {k:v for k,v in out.items() if v}


def value(a:Poly,x:int,y:int)->int:
    return sum(c*x**i*y**j for (i,j),c in a.items())


def rough(n:int)->int:
    assert n>0
    for p in (2,3,5):
        while n%p==0:
            n//=p
    return n


def load_rows():
    raw=(ROOT/'dependencies/PREVIOUS_ROUND.zip').read_bytes()
    assert hashlib.sha256(raw).hexdigest()==PREVIOUS_SHA
    with zipfile.ZipFile(io.BytesIO(raw)) as zf:
        top='B699-C-NATIVE6-20261002/'
        for current,old in [
            ('ACTUAL_SMALLPARTS_42.csv','certificates/ACTUAL_SMALLPARTS_42.csv'),
            ('PROOFS.md','PROOFS.md'),('HANDOFF.md','HANDOFF.md')]:
            assert (ROOT/'dependencies'/current).read_bytes()==zf.read(top+old)
    rows=list(csv.DictReader((ROOT/'dependencies/ACTUAL_SMALLPARTS_42.csv').open()))
    for row in rows:
        for key in ['a','r2','r3','r5']+['kappa'+str(i) for i in range(6)]:
            row[key]=int(row[key])
        row['positions']=sorted({row['r2'],row['r3'],row['r5']})
    assert len(rows)==42 and len({r['a'] for r in rows})==42
    return rows


def make_scope(rows):
    groups={}
    for r in rows:
        key=''.join(map(str,r['positions']))
        groups.setdefault(key,[]).append(r['a'])
    assert set(groups)=={'01','012','013','014','015','023','024'}
    assert all(len(v)==6 for v in groups.values())
    ev=[r['a'] for r in rows if 2 not in r['positions'] and 4 not in r['positions']]
    mix=groups['023']; bft=groups['014']; old=groups['024']
    new=sorted(ev+mix+bft)
    combined=sorted(new+old)
    central2=[r['a'] for r in rows if 2 not in r['positions']]
    central4=[r['a'] for r in rows if 4 not in r['positions']]
    assert len(ev)==18 and len(new)==30 and len(set(new))==30
    assert len(combined)==36 and set(combined).isdisjoint(groups['012'])
    assert len(central2)==24 and len(central4)==30
    assert len(set(central2)|set(central4))==36
    assert not ((set(central2)|set(central4)) & set(old))
    return {
      'inherited_table_not_rederived':True,
      'groups':groups,'even_height_18':ev,'mixed_height_6':mix,
      'bft_014_height_6':bft,'adopted_previous_024_height_6':old,
      'new_fixed_epsilon_height_30':new,'combined_fixed_epsilon_height_36':combined,
      'no_fixed_epsilon_height_proved_here_6':groups['012'],
      'E2_not_unit_24':central2,'E4N4_not_unit_30':central4,
      'modulus':1800,'whole_classes_removed':0,'certified_history_net_reduction':0,
      'remaining_whole_classes':42,'R7':[3,4,5,6,7,8,9]
    }


def make_kernels():
    # Factor-order implementation uses only tests of vanishing linear factors.
    # The other implementation expands the complete polynomial and translates it.
    defs={
      'EV':[(1,0,0),(0,1,0),(-1,1,0),(-1,1,0),(-1,1,-2),(-1,1,2)],
      'MIX':[(1,0,0),(0,1,0),(1,0,-1),(0,1,-1),(-1,1,0),(-1,1,-1),(-1,1,1)]
    }
    expected={
      'EV':[[4],[1,1],[2,2,2],[1,0,0,1],[1,1,2,1,1],[1,0,0,0,0,1]],
      'MIX':[[3],[3,3],[1,3,1],[1,2,2,1],[1,1,1,1,1],[1,1,1,1,1,1]]}
    out={}; local_tests=0; norm_tests=0
    for name,lines in defs.items():
        f=poly_from_lines(lines)
        data=[]
        for r in range(6):
            orders=[]
            for b in range(r+1):
                translated=shift(f,b,r-b)
                order=min(i+j for i,j in translated)
                factor_order=sum(a*b+v*(r-b)+c==0 for a,v,c in lines)
                assert order==factor_order==expected[name][r][b]
                orders.append(order)
                if r:
                    for p in (7,11,13):
                        for e in range(1,5):
                            power=p**e
                            for u,v in ((1,3),(2,5),(7,4)):
                                assert value(f,b+power*u,r-b+power*v) % power**order==0
                                local_tests+=1
            data.append({'r':r,'orders':orders})
        for j in range(7,26):
            for d in range(7,31):
                k=j+d;n=j+k;J=j*k;A=(j-1)*(k-1)
                fv=value(f,j,k)
                if name=='EV':
                    assert fv==J*d*d*(d*d-4) and 0<4*fv<n*n*d**4
                else:
                    assert fv==J*A*d*(d*d-1) and 0<16*fv<n**4*d**3
                assert fv>0
                norm_tests+=1
        out[name]={'degree':max(i+j for i,j in f),'origin_order':expected[name][0][0],
                   'linear_factors':lines,'expanded_coefficients':[[i,j,c] for (i,j),c in sorted(f.items())],
                   'source_orders':data}
    out['test_summary']={'full_source_prime_power_lift_tests':local_tests,
        'numeric_norm_identity_unit_tests':norm_tests,
        'not_an_original_NC_scan':True,'not_a_replay_of_previous_terminal':True,
        'general_proof':'Integer Taylor orders and the inequalities in PROOFS, not finite test extrapolation'}
    return out


def make_central(rows):
    out={}
    for r in (2,4):
        relevant=[x for x in rows if r not in x['positions']]
        ss=sorted({x['kappa'+str(r)] for x in relevant})
        cert=[]
        for s in ss:
            possibilities=[]
            for a in range(1,(s-1)//2+1):
                m=(r//2)*(s-2*a)
                assert m>0 and rough(m)==1
                # Independent stripping by repeated gcd with 30.
                from math import gcd
                check=m
                while gcd(check,30)>1:
                    check//=gcd(check,30)
                assert check==1
                possibilities.append({'a':a,'nonzero_origin_dividend':m,'rough235':1})
            cert.append({'s_r':s,'all_a':possibilities,
                         'empty_reason':'No integer a>=1 with 2a<s_r' if not possibilities else None})
        out[str(r)]={'classes':[x['a'] for x in relevant], 'smallparts':ss,
                     'complete_coefficient_cases':cert,
                     'derivation':'q_r=C_r, j=r/2+a*q_r, 1<=a<s_r/2; q0 divides (r/2)*(s_r-2a)',
                     'contradiction':'q0>1 is 235-rough, while each positive dividend is 235-smooth'}
    return out


def make_bounds(rows,scope):
    ev=[];mix=[];pair=[]
    for r in rows:
        k=lambda t:r['kappa'+str(t)]
        if r['a'] in scope['even_height_18']:
            ev.append({'a':r['a'],'K_ev':k(2)**2*k(4)})
        if r['a'] in scope['mixed_height_6']:
            mix.append({'a':r['a'],'K_mix':k(1)**3*k(4)*k(5)})
        if r['a'] in scope['bft_014_height_6']:
            pair.append({'a':r['a'],'s2':k(2),'pair_coefficient':Q(4*k(2)**2,15)})
    endpoints={
      'EV_18':4*Q(151,153)**2*Q(149,153),
      'PAIR_014':4*Q(98,100)**2,
      'MIX_023':16*Q(26,27)**3*Q(23,27)*Q(22,27)}
    assert endpoints['EV_18']>Q(15,4)
    assert endpoints['PAIR_014']>Q(15,4)
    assert endpoints['MIX_023']>Q(99,10)
    assert min(scope['even_height_18'])==153
    assert max(x['K_ev'] for x in ev)==144
    assert max(x['K_mix'] for x in mix)==240
    assert min(scope['mixed_height_6'])==27 and min(scope['bft_014_height_6'])==100
    c_ev=Q(4*144,15*7); c_mix=Q(10*240,99*49)
    assert c_ev==Q(192,35) and c_mix==Q(800,1617)
    assert c_ev<2**19 and c_mix<2**19
    # The old six have 3500*n^5*Rgap^2*E5 < N*eps^8,
    # Rgap>=49, N<=2460375; this is a dependency inequality, not a new old-terminal run.
    old_c=Q(2460375,3500*49**2)
    assert old_c<1
    return {'endpoint_factors':endpoints,'EV_18':ev,'MIX_023':mix,'PAIR_014':pair,
      'EV_uniform':'n < (192/35)*epsilon^4',
      'MIX_uniform':'n < (800/1617)*epsilon^3',
      'PAIR_uniform':'q1*q4 < (16/15)*epsilon^4',
      'adopted_old_n5_coefficient':old_c,
      'central_complement_general':['s2*E2 > g','s4*E4*N4 > g'],
      'epsilon_uniform_upper_bound_proved':False}


def make_bft(rows,scope):
    contract=json.loads((ROOT/'dependencies/BFT_CONTRACT.json').read_text())
    pairs=contract['exceptions']
    assert len(pairs)==40 and len({tuple(x) for x in pairs})==40
    differences=sorted(abs(a-b) for a,b in pairs)
    assert 3 not in differences and all(d<=100 for d in differences)
    entries=[]
    for r in rows:
        if r['a'] not in scope['bft_014_height_6']:continue
        p1=next(p for p in (2,3,5) if r['r'+str(p)]==1)
        p4=next(p for p in (2,3,5) if r['r'+str(p)]==4)
        assert p1!=p4
        lam=Q(*contract['lambda'][','.join(map(str,sorted((p1,p4))))])
        K=max(r['kappa1'],r['kappa4'])
        c=Q(4*K*r['kappa2']**2,15)
        assert lam>=Q(27,125) and c<=Q(64,5)
        entries.append({'a':r['a'],'p_at_1':p1,'p_at_4':p4,'lambda':lam,
          'kappa1':r['kappa1'],'kappa4':r['kappa4'],'K':K,'c':c,
          'hypothesis':'n>=1005; exact values n-1 and n-4; distance 3',
          'integer_form':{'left_coefficient':c.denominator**lam.denominator,
            'power_of_n_minus_4':lam.numerator,
            'right_coefficient':c.numerator**lam.denominator,
            'power_of_epsilon':4*lam.denominator},
          'integer_inequality':'left_coefficient*(n-4)^A < right_coefficient*epsilon^(4B)'
        })
    assert 2**264<5**125  # (64/5)^(125/27)<2^18
    assert 500<19*27
    return {'exception_count':len(pairs),'exception_differences':differences,
      'no_difference_3_exception':True,'cases':entries,
      'uniform_large_n_integer_bound':'5^125*(n-4)^27 < 64^125*epsilon^500',
      'small_n_alternative':'n<=1004 (retained, not enumerated)',
      'combined_36_uniform_bound':'n < 2^19*epsilon^19',
      'integer_comparisons':{'2^264':2**264,'5^125':5**125,'500':500,'19*27':19*27},
      'external_theorem_proof_checked_by_script':False,
      'finite_original_terminal_executed':False}


def make_growth():
    # A homogeneous *necessary-inequality relaxation only*. Not integer/source recovery.
    v={k:Q(x) for k,x in {
      'n':1,'epsilon':0,'g':Q(1,2),'alpha':Q(1,2),'d':Q(1,2),
      'q0':Q(1,2),'q1':0,'q2':Q(1,3),'q3':1,'q4':1,'q5':1,
      's0':Q(1,2),'s1':1,'s2':Q(2,3),'s3':0,'s4':0,'s5':0,
      'E2':Q(1,3),'C2':0,'E3':Q(1,3),'N3':Q(2,3),
      'E4':Q(1,3),'N4':Q(2,3),'C4':0,'E5':0,'N5':Q(2,3),'C5':Q(1,3),
      'W':2,'tau':1,'h':1,'z':Q(2,3),'eta':Q(2,3),'theta':0,
      'Rgap':2,'M':4,'N':9}.items()}
    eq=[];ineq=[]
    def equal(name,left,right):
        assert left==right,(name,left,right)
        eq.append({'name':name,'left':left,'right':right})
    def le(name,left,right):
        assert left<=right,(name,left,right)
        ineq.append({'name':name,'left':left,'right':right,'slack':right-left})
    for r in range(6): equal('n=s_r*q_r (leading)',v['n'],v['s'+str(r)]+v['q'+str(r)])
    equal('n=g*alpha',v['n'],v['g']+v['alpha'])
    equal('d=g*epsilon',v['d'],v['g']+v['epsilon'])
    equal('q2=E2*C2',v['q2'],v['E2']+v['C2'])
    equal('q3=E3*N3',v['q3'],v['E3']+v['N3'])
    equal('q4=E4*N4*C4',v['q4'],v['E4']+v['N4']+v['C4'])
    equal('q5=E5*N5*C5',v['q5'],v['E5']+v['N5']+v['C5'])
    equal('W=g^2*E3*E5*z',v['W'],2*v['g']+v['E3']+v['E5']+v['z'])
    equal('W-s1=N3*N5*eta (W dominates s1)',v['W'],v['N3']+v['N5']+v['eta'])
    equal('h=N3*C5*theta',v['h'],v['N3']+v['C5']+v['theta'])
    equal('positive identity at exponent level',max(v['C5']+v['theta'],v['N5']+v['eta']),v['s1']+v['s3']+v['E3'])
    equal('Rgap=q2^2*E4^2*N4',v['Rgap'],2*v['q2']+2*v['E4']+v['N4'])
    le('q0 divides g',v['q0'],v['g'])
    le('alpha divides s0',v['alpha'],v['s0'])
    for name,expr in [('distance1',v['q1']+v['N3']+v['C5']),('distance2',v['E2']+v['N4']),
                      ('distance3',v['E3']+v['N5']),('distance4',v['E4']),('distance5',v['E5'])]:
        le(name,expr,2*v['d'])
    le('centers divide epsilon',v['C2']+v['C4'],v['epsilon'])
    le('E2E4 divides z',v['E2']+v['E4'],v['z'])
    le('N4 divides eta',v['N4'],v['eta'])
    le('q2q4 divides z eta epsilon',v['q2']+v['q4'],v['z']+v['eta']+v['epsilon'])
    le('old G8',v['n']+2*v['g']+v['Rgap']+v['E5'],v['M']+2*v['epsilon'])
    le('old G20',5*v['n']+2*v['Rgap']+v['E5'],v['N']+8*v['epsilon'])
    le('new EV',v['q1']+2*v['q2']+v['E3']+v['q4']+v['C4']+v['E5'],2*v['n']+4*v['epsilon'])
    le('new MIX',3*v['q1']+v['q2']+2*v['C2']+v['q3']+v['N3']+v['q4']+v['q5'],4*v['n']+3*v['epsilon'])
    le('central complement at 2',v['g'],v['s2']+v['E2'])
    le('central complement at 4',v['g'],v['s4']+v['E4']+v['N4'])
    for u,w in (('q0','q1'),('q0','q2'),('q1','q2')):
        le('BFT necessary exponent lower bound '+u+','+w,Q(57,200),max(v[u],v[w]))
    return {'scope':'012 homogeneous degree relaxation', 'exponents':v,
      'equalities':eq,'weak_inequalities':ineq,
      'not_an_actual_NC_model':True,'actual_integers_primality_congruences_not_checked':True,
      'strict_constants_discarded':True,
      'precise_conclusion':'These selected leading-exponent tests have no exponent contradiction at fixed epsilon. This is not an impossibility proof for the full inequalities or other methods.'}


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--write',action='store_true',help='generate certificates instead of read-only comparison')
    args=parser.parse_args()
    rows=load_rows(); scope=make_scope(rows)
    certs={'scope.json':scope,'kernels.json':make_kernels(),'central_exclusions.json':make_central(rows),
      'bounds.json':make_bounds(rows,scope),'bft014.json':make_bft(rows,scope),
      'growth_relaxation.json':make_growth()}
    results=[]
    for name,data in certs.items():
        raw=dump(data);path=ROOT/'certificates'/name
        if args.write:path.write_bytes(raw)
        else:
            assert path.exists(),str(path)
            assert json.loads(path.read_bytes())==json.loads(raw),name+' semantic mismatch'
            assert path.read_bytes()==raw,name+' byte mismatch'
        results.append({'file':'certificates/'+name,'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw)})
    report={'status':'PASS','mode':'generate' if args.write else 'read-only replay',
      'previous_zip_sha256':PREVIOUS_SHA,'new_certificate_count':len(certs),
      'new_fixed_epsilon_height_classes':30,'combined_fixed_epsilon_height_classes':36,
      'whole_classes_removed':0,'uniform_epsilon_bound':False,
      'old_terminal_rerun':False,'Lean_run':False,'certificates':results}
    print(json.dumps(report,ensure_ascii=False,sort_keys=True,indent=2))

if __name__=='__main__':
    main()
