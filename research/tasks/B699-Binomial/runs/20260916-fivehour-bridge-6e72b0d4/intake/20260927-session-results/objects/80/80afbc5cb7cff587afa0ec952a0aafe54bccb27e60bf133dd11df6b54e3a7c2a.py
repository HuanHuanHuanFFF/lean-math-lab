"""Read-only, deterministic acceptance. Python 3.10+, standard library only."""
from __future__ import annotations
import argparse,csv,hashlib,io,json,math,platform,sys,time
from pathlib import Path
from core import *
ROOT=Path(__file__).resolve().parents[1]

def load(name):return json.loads((ROOT/'certificates'/name).read_text(encoding='utf-8'))
def tree():return {p.relative_to(ROOT).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in ROOT.rglob('*') if p.is_file()}
def check(condition,msg):
    if not condition:raise AssertionError(msg)

def verify_manifests(payload_only=False):
    state=tree();pname='SHA256SUMS.payload';fname='SHA256SUMS'
    checks={}
    expected_payload=set(state)-{pname,fname,'logs/CLEAN_REPLAY.json'}
    def one(name,expected):
        entries={}
        for line in (ROOT/name).read_text().splitlines():
            digest,path=line.split('  ',1)
            check(path not in entries,'duplicate hash entry')
            check(path in state and state[path]==digest,f'hash mismatch: {path}')
            entries[path]=digest
        check(set(entries)==expected,f'wrong coverage: {name}')
        return len(entries)
    checks['payload_entries']=one(pname,expected_payload)
    if fname in state:
        checks['final_entries']=one(fname,set(state)-{fname})
    else:
        check(payload_only,'final manifest missing')
        checks['final_entries']=None
    return checks

def algebra_check():
    cert=load('algebra.json');byname={r['name']:r for r in cert['source_identities']};count=0
    for u in (1,2):
        for e in (-1,1):
            for name,lhs,H in symbolic_identities(u,e):
                q=pdecode(byname[name]['quotient'])
                check(lhs==pmul(H,q),f'identity {name}')
                count+=1
    check(len(byname)==count==16,'identity coverage')
    t=pv(0,1);one=pc(1,1)
    for rec in cert['thresholds']:
        z=padd(t,pc(rec['threshold'],1));C=rec['capacity_coefficient']
        actual=psub(pscale(ppow(psub(pscale(z,5),one),4),5),pscale(ppow(z,3),C))
        coeff=rec['coefficients_ascending']
        check(all(c>0 for c in coeff),'positive coefficient proof')
        check(actual=={(i,):c for i,c in enumerate(coeff) if c},'shifted polynomial')
    # Independent reconstruction of all zero-family equalities.
    A=padd(pscale(ppow(t,2),70),pscale(t,41),pc(5,1))
    B=padd(pscale(ppow(t,2),8750),pscale(t,4900),pc(561,1))
    P=padd(pscale(ppow(t,2),350),pscale(t,198),pc(23,1))
    Q=padd(pscale(ppow(t,2),1750),pscale(t,1015),pc(122,1))
    z=padd(pscale(t,10),pc(3,1));a=padd(pscale(t,14),pc(4,1));d=padd(pscale(t,25),pc(7,1))
    n=padd(pmul(P,Q),one);Y=psub(pmul(z,a),pc(2,1));X=padd(pscale(P,2),a,z);j=pmul(Q,Y)
    check(P==psub(pmul(d,a),pc(5,1)),'zero P recovery')
    check(Q==padd(pscale(P,5),d),'zero Q recovery')
    check(psub(n,pc(2,1))==pmul(A,B),'zero F=AB')
    check(Y==pscale(A,2),'zero Y=2A')
    check(j==padd(pmul(P,X),one),'same j')
    C0=padd(pscale(a,5),pscale(z,-7),one)
    C1=padd(pscale(a,5),pscale(z,3))
    C2=padd(pscale(z,24),pscale(a,-10),pc(-8,1))
    check(C0=={},'zero C0')
    check(C1==padd(pscale(t,100),pc(29,1)),'zero C1')
    check(C2==padd(pscale(t,100),pc(24,1)),'zero C2')
    gap=psub(B,pscale(pmul(C1,padd(pscale(t,25),pc(6,1))),3))
    check(gap=={(2,):1250,(1,):925,(0,):39},'zero strict gap')
    zero=cert['zero_branch']
    for key,p in [('A',A),('B',B),('n',n),('j',j),('gap',gap)]:check(p==pdecode(zero[key]),key)
    s=padd(pscale(t,4),pc(3,1))
    As=padd(pscale(ppow(s,2),70),pscale(s,41),pc(5,1))
    check(As==pscale(pdecode(zero['A_at_4s_plus_3_over_2']),2),'v2(A)=1 expansion')
    check(pdecode(zero['A_at_4s_plus_3_over_2'])=={(2,):560,(1,):922,(0,):379},'odd quotient')
    # Threshold arithmetic for the inherited U1 inequality is exact.
    for e,num in [(-1,19683*5),(1,32805*5)]:
        N=BOUNDS[(1,e)];check(256*N<num<=256*(N+1),'U1 integer cap')
    return {'source_identities':count,'shifted_positive_polynomials':2,'zero_family_exact_checks':14}

def terminal_check():
    cert=load('terminal-summary.json');total=0;result={};all_T0_pass=0
    for u in (1,2):
        for e in (-1,1):
            name=f'u{u}_e{e}';c=cert['branches'][name]
            da,sa=csv_bytes(rows_A(u,e));db,sb=csv_bytes(rows_B(u,e))
            check(da==db,'A/B mismatch: '+name)
            check(sa==sb,'A/B summary mismatch')
            check(da==(ROOT/'certificates'/c['file']).read_bytes(),'full certificate mismatch')
            check(hashlib.sha256(da).hexdigest()==c['sha256'],'terminal hash')
            check(sa['counts']==c['counts'] and sa['size_pass']==c['size_pass'],'terminal summary')
            t0pass=0
            for r in csv.DictReader(io.StringIO(da.decode())):
                t0pass+=int(int(r['j'])%int(r['T0'])==0)
            total+=sa['counts']['rows'];all_T0_pass+=t0pass
            result[name]=dict(counts=sa['counts'],T0_pass_count=t0pass,sha256=c['sha256'])
    check(total==cert['total']==106465,'global terminal coverage')
    check(all_T0_pass==0,'T0 audit count changed')
    return {'total_rows':total,'A_B_bytes_equal':True,'T0_pass_count':all_T0_pass,'branches':result}

PRIMES=set()
def factors_check(n,fs):
    check(math.prod(p**e for p,e in fs)==n,'factor product')
    check(len(set(p for p,e in fs))==len(fs),'duplicate factors')
    for p,e in fs:
        check(e>=1,'invalid exponent')
        if p not in PRIMES:
            check(is_prime_trial(p),'composite purported prime '+str(p));PRIMES.add(p)

def example_check():
    cert=load('examples.json');actual=0;squares=0
    for r in cert['rows']:
        v=reconstruct(r['parameters']['u'],r['parameters']['epsilon'],r['parameters']['z'],r['parameters']['a'])
        for key in ('P','Q','n','j','T0','T2','Lambda'):check(v[key]==r[key],'example '+key)
        check(list(v['C'])==r['C'],'example C')
        n,j=r['n'],r['j']
        for key,N in [('P_factorization',r['P']),('Q_factorization',r['Q']),('n_factorization',n),('F_factorization',n-2)]:
            factors_check(N,r[key])
        pf,qf=r['P_factorization'],r['Q_factorization']
        valid=len(pf)==len(qf)==1 and pf[0][0]!=qf[0][0]
        check(valid==r['true_two_complete_distinct_powers'],'prime power flag')
        pl=[lucas(n,j,p) for p,e in pf];ql=[lucas(n,j,p) for p,e in qf]
        check(pl==r['P_lucas'] and ql==r['Q_lucas'],'full Lucas')
        if r['kind']=='actual-row':
            check(valid and all(pl+ql),'actual row conditions');actual+=1
            squares+=int(pf[0][1]>1 or qf[0][1]>1)
        check(j%r['T0']==r['T0_remainder'],'T0 remainder')
        check((j%r['T0']==0)==r['T0_divides_j'],'T0 flag')
        active=[]
        for p,E in r['F_factorization']:
            if p>=3 and binomial_v(n,3,p)>0:
                active.append(dict(prime=p,full_exponent=E,full_power=p**E,j_residue=j%(p**E),
                                   binomial3_v=binomial_v(n,3,p),binomialj_v=binomial_v(n,j,p)))
        check(active==r['active_full_T2'],'full active powers')
        check(any(x['j_residue'] not in (0,1,2) for x in active),'not a third-source rejection')
        check([x['prime'] for x in active if x['binomialj_v']>0]==r['witnesses'],'actual witnesses')
        if 'overlap' in r:
            o=r['overlap'];t=o['t'];A=70*t*t+41*t+5;B=8750*t*t+4900*t+561;ell=o['ell']
            check((A,B,math.gcd(A,B))==(o['A'],o['B'],o['gcd']),'overlap input')
            check(valuation(A,ell)==o['v_A']==1 and valuation(B,ell)==o['v_B']==1,'overlap exponents')
            check(valuation(n-2,ell)==o['v_F']==2 and valuation(j,ell)==o['v_j']==1,'original complete overlap')
    check(actual==cert['actual_rows']==8 and squares==2,'actual row count')
    sc=load('size-pass-audit.json');check(sc['count']==9,'size-pass coverage');true=0
    for r in sc['rows']:
        v=reconstruct(r['u'],r['epsilon'],r['z'],r['a'])
        factors_check(v['P'],r['P_factorization']);factors_check(v['Q'],r['Q_factorization'])
        pf,qf=r['P_factorization'],r['Q_factorization'];real=len(pf)==len(qf)==1 and pf[0][0]!=qf[0][0]
        check(real==r['true_two_complete_distinct_powers'],'size-pass true flag');true+=real
        check(v['Lambda']%v['T2']==r['remainder']!=0,'size-pass exact division')
        if len(pf)==1:check(lucas(v['n'],v['j'],pf[0][0])==r['full_P_lucas'],'size-pass Lucas P')
        if len(qf)==1:check(lucas(v['n'],v['j'],qf[0][0])==r['full_Q_lucas'],'size-pass Lucas Q')
    check(true==2,'size-pass prime powers count')
    return {'actual_rows':actual,'nontrivial_power_rows':squares,'weak_overlap_rows':1,'size_pass_models':9,'actual_size_pass_models':true}

def binomial_check():
    c=load('binomial-regression.json');n=c['n'];factors_check(math.comb(n,3),c['source_factorization'])
    ps=[p for p,e in c['source_factorization'] if p>=3];check(ps==c['source_primes'],'row primes')
    buf=io.StringIO(newline='');w=csv.writer(buf,lineterminator='\n');w.writerow(['j','witness','v_binomial3','v_binomialj']);count=0
    for j in range(4,n//2+1):
        # A different witness test: Legendre first, Lucas as check.
        p=next(p for p in ps if binomial_v(n,j,p)>0)
        check(not lucas(n,j,p),'Lucas/Legendre disagreement')
        w.writerow([j,p,binomial_v(n,3,p),binomial_v(n,j,p)]);count+=1
    data=buf.getvalue().encode()
    check(data==(ROOT/'certificates'/c['file']).read_bytes(),'small row full CSV')
    check(hashlib.sha256(data).hexdigest()==c['sha256'] and count==c['row_count']==37447,'small row exact count')
    for r in c['direct']:
        n,j,p=r['n'],r['j'],r['prime'];v3=valuation(math.comb(n,3),p);vj=valuation(math.comb(n,j),p)
        check((v3,vj)==(r['v3'],r['vj']) and min(v3,vj)>0,'direct binomial')
    return {'full_row_pairs':count,'direct_integer_binomial_pairs':len(c['direct'])}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',required=True);parser.add_argument('--payload-only',action='store_true');parser.add_argument('--no-manifest',action='store_true');args=parser.parse_args()
    out=Path(args.output).resolve()
    if out==ROOT or ROOT in out.parents:raise SystemExit('output must be outside the package/extracted tree')
    start=time.perf_counter();before=tree()
    result={'status':'PASS','scope':'K5 new proof certificates only','python':sys.version,'platform':platform.platform(),
            'algebra':algebra_check(),'terminal':terminal_check(),'examples':example_check(),'binomial':binomial_check()}
    result['unique_trial_proven_primes']=len(PRIMES)
    if not args.no_manifest:result['manifests']=verify_manifests(args.payload_only)
    after=tree();check(before==after,'verifier modified tree')
    result.update(elapsed_seconds=time.perf_counter()-start,tree_unchanged=True,file_count=len(after),old_ledgers_replayed=False,
                  evidence_level='Author proof + exact certificates + same-author dual enumeration. No Lean or independent external review.')
    out.write_bytes(canonical_json(result));print(json.dumps(result,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
