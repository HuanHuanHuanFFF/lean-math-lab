"""Read-only deterministic receiver. No SymPy, Lean, network or repository access."""
from pathlib import Path
import argparse,hashlib,json,math,sys,time
from fractions import Fraction
from exact_poly import Poly,variables
from algebra_spec import GENERAL_NAMES,ZERO_NAMES,general_spec,zero_spec
from arith import *
from diagnostic import finish,enum_A,enum_B
ROOT=Path(__file__).resolve().parents[1]

def load(name):return json.loads((ROOT/name).read_text())

def verify_manifest(name,required=True):
    p=ROOT/name
    if not p.exists():
        if required:raise AssertionError('Missing manifest '+name)
        return 0
    count=0; listed=set()
    for line in p.read_text().splitlines():
        digest,rel=line.split('  ',1);q=ROOT/rel
        assert rel not in listed and len(digest)==64
        listed.add(rel)
        assert q.resolve().is_relative_to(ROOT.resolve()) and q.is_file()
        assert hashlib.sha256(q.read_bytes()).hexdigest()==digest,rel
        count+=1
    if name=='SHA256SUMS.txt':
        actual={q.relative_to(ROOT).as_posix() for q in ROOT.rglob('*') if q.is_file() and q!=p}
        assert listed==actual, 'Final manifest must cover the entire tree except itself.'
    return count

def algebra():
    cert=load('certificates/algebra.json');count=0
    for group,names,spec in [('general',GENERAL_NAMES,general_spec),('zero',ZERO_NAMES,zero_spec)]:
        data=cert[group];assert data['variables']==names
        gens,exprs=spec(variables(names))
        assert [r['name'] for r in data['identities']]==list(exprs)
        for row in data['identities']:
            qs=[Poly.load(q,len(names)) for q in row['quotients']]
            assert len(qs)==len(gens)
            reconstructed=sum((q*g for q,g in zip(qs,gens)),Poly.constant(0,len(names)))
            assert exprs[row['name']]==reconstructed,row['name']
            count+=1
    return count

def constants_and_mod3():
    c=Fraction(20,21)**4/Fraction(24)
    assert c==Fraction(20000,583443)
    assert 2/c==Fraction(583443,10000)
    assert Fraction(15,4)/c==Fraction(1750329,16000)<110
    assert 583443<110*10000
    assert 3025==55**2 and 3025**2+55*3025+1==9317001<10**7
    rows=[]
    for k in (1,2):
        for u in (1,2):
            for d in (1,2):
                b=(u*(k+u)*d*d-k**3)%3
                m1=(2*u*d+1)%3;m2=((k-2*u)*d-1)%3
                if b==0:
                    assert k==u==2 and (m1==0 or m2==0)
                rows.append([k,u,d,b,m1,m2])
    assert rows==load('certificates/mod3.json')
    return {'mod3_rows':8,'zero_B_residue_rows':sum(r[3]==0 for r in rows),
            'negative_ratio':[583443,10000],'positive_ratio':[1750329,16000],
            'height_constant':10**7,'height_degree':13}

def witness_check(r,s,w):
    if w is None:return 0
    p=w['p'];n,j=r['n'],r['j'];E=valuation(n-s,p)
    assert prime(p) and p>=3 and (p!=3 or E>=2)
    assert E==w['e'] and p**E==w['modulus'] and j%(p**E)==w['residue']
    assert j%(p**E) not in range(s+1)
    for t,name in [(3,'v_choose3'),(j,'v_choosej')]:
        val=choose_v(n,t,p)
        assert val==choose_v_digits(n,t,p)==w[name] and val>0
    return 1

def cases():
    actual=load('certificates/actual_cases.json');weak=load('certificates/weak_cases.json')
    out=[];witnesses=0;squares=0
    for old in actual+weak:
        r=restore(*(old[x] for x in ('k','u','z','a','epsilon')))
        assert domain(r),old['id']
        for key in ('d','P','Q','n','j','C'):assert r[key]==old[key],(old['id'],key)
        aa=assess(r);assert aa['pair_common3'] and not aa['T0_divides_original_j'] and not aa['all_complete_T2_slots']
        if old in actual:
            p,q=old['bases'];rho,sigma=old['exponents']
            assert p!=q and p%2==q%2==1 and prime(p) and prime(q)
            assert rho>=1 and sigma>=1 and p**rho==r['P'] and q**sigma==r['Q']
            assert [lucas(r['n'],r['j'],p),lucas(r['n'],r['j'],q)]==old['lucas']==[True,True]
            for ell in (p,q):assert choose_v(r['n'],r['j'],ell)==choose_v_digits(r['n'],r['j'],ell)==0
            squares+=max(rho,sigma)>1
            kind='ACTUAL_DISTINCT_COMPLETE_POWERS'
        else:
            for key,N in [('P_factor',r['P']),('Q_factor',r['Q'])]:
                fs=old[key]
                assert all(prime(p) and e>=1 for p,e in fs)
                assert math.prod(p**e for p,e in fs)==N
            assert len(old['P_factor'])>1
            kind='WEAK_NOT_TWO_COMPLETE_PRIME_POWERS'
        for s in (0,2):witnesses+=witness_check(r,s,old['source_checks'][str(s)]['witness'])
        if aa['zero_C']:
            k,u,z,a,d,P=(r[x] for x in ('k','u','z','a','d','P'))
            assert a%u==0;v=a//u;A=z*v-1;B=k*k*P-u*d
            M1=2*u*d+1;M2=(k-2*u)*d-1
            assert v>=3 and v%2 and d>2*k and k<3*u and B%2
            assert A*B==r['n']-2 and u*r['Q']*A==r['j'] and gcd(B,k*u*d)==1
            assert B>M1*M2>=odd(lcm(M1,M2))
            if old['id']=='ISO3':assert valuation(B,3)==1 and lcm(M1,M2)%3==0 and gcd(A,B)==1
            if old['id']=='OVERLAP':
                ell=old['ell'];assert prime(ell)
                assert valuation(A,ell)==valuation(B,ell)==1
                assert valuation(r['n']-2,ell)==2 and valuation(r['j'],ell)==1
        out.append({'id':old['id'],'kind':kind,**aa})
    # Direct arbitrary precision binomial regression, explicitly a finite sample.
    c=next(r for r in actual if r['id']=='ROW-k7-u1-z3-eps1')
    n=c['n'];js=sorted(set([4,7,11,31,n//3,c['j'],n//2]));choose3=math.comb(n,3)
    for j in js:
        b=math.comb(n,j)
        assert odd(math.gcd(choose3,b))>1
        for p in (3,7,19,227,1609):
            v=0;t=b
            while t%p==0:t//=p;v+=1
            assert v==choose_v(n,j,p)==choose_v_digits(n,j,p)
    return {'actual_rows':len(actual),'nontrivial_complete_power_rows':squares,'weak_rows':len(weak),
            'source_witnesses':witnesses,'binomial_sample_pairs':len(js),'rows':out}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);ap.add_argument('--payload-only',action='store_true')
    args=ap.parse_args();output=Path(args.output).resolve()
    assert not output.is_relative_to(ROOT.resolve()),'Output must be outside evidence tree.'
    start=time.monotonic()
    hashes={'payload':verify_manifest('PAYLOAD_SHA256SUMS.txt'),
            'final':verify_manifest('SHA256SUMS.txt',not args.payload_only)}
    nalg=algebra();cons=constants_and_mod3();case=cases()
    diag_A=finish(enum_A());diag_B=finish(enum_B());frozen=load('certificates/diagnostic.json')
    assert diag_A==diag_B==frozen
    result={'status':'PASS','evidence_level':'AUTHOR_PROOF_EXACT_CERTIFICATES_SAME_AUTHOR_REPLAY',
            'hash_entries':hashes,'polynomial_identities':nalg,'constants':cons,'cases':case,
            'new_bounded_regression':diag_A,'same_regression_two_parameterizations':True,
            'fixed_k_7_bounds':fixed_k_bounds(7),'k7_finite_tail_executed':False,
            'elapsed_seconds':round(time.monotonic()-start,3)}
    output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS','polynomial_identities':nalg,
                      'diagnostic_rows':diag_A['rows'],'elapsed_seconds':result['elapsed_seconds']}))
if __name__=='__main__':main()
