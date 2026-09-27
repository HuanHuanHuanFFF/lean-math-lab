#!/usr/bin/env python3
"""Read-only offline receiver; all arithmetic uses Python standard library."""
import argparse,csv,hashlib,json,math,platform,sys,tempfile,time
from collections import Counter
from pathlib import Path
from itertools import zip_longest
from fractions import Fraction
from schema import FIELDS
from enumerate_a import rows as rows_a
from enumerate_b import rows as rows_b
from arithmetic import primes_up_to,prime_power,lucas,vp_binom,v_p,trial_prime
import polynomial

ROOT=Path(__file__).resolve().parents[1]
EXCLUDE={'SHA256SUMS','SHA256SUMS.payload','logs/CLEAN_REPLAY.json'}

def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
    return h.hexdigest()

def file_equal(a,b):
    if a.stat().st_size!=b.stat().st_size:return False
    with a.open('rb') as fa,b.open('rb') as fb:
        while True:
            x=fa.read(1024*1024);y=fb.read(1024*1024)
            if x!=y:return False
            if not x:return True

def manifest(name,excludes):
    path=ROOT/name
    lines=path.read_text().splitlines();listed={}
    for line in lines:
        digest,rel=line.split('  ',1)
        assert len(digest)==64 and rel not in listed
        f=(ROOT/rel).resolve()
        assert f.is_relative_to(ROOT) and f.is_file() and not f.is_symlink()
        assert sha(f)==digest,(rel,'hash mismatch')
        listed[rel]=digest
    expected={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file()}-excludes
    assert set(listed)==expected,(expected-set(listed),set(listed)-expected)
    return len(listed)

def certify_all():
    data=json.loads((ROOT/'certificates'/'prime-certificates.json').read_text())
    checked=set()
    for p in sorted(map(int,data)):
        r=data[str(p)];g=r['g'];fac=r['factors']
        if p==2:
            assert fac==[] and g==1;checked.add(p);continue
        assert p>2 and p%2 and 1<g<p
        product=1;previous=1
        for q,e in fac:
            assert q in checked and q>previous and e>=1
            product*=q**e;previous=q
        assert product==p-1
        assert pow(g,p-1,p)==1
        assert all(math.gcd(pow(g,(p-1)//q,p)-1,p)==1 for q,e in fac)
        checked.add(p)
    return checked

def run(mode='final'):
    start=time.perf_counter();result={'status':'RUNNING','python':platform.python_version(),
        'mode':mode,'evidence_grade':'same-author exact replay; no Lean or external review'}
    if mode!='bootstrap':
        result['payload_hashes']=manifest('SHA256SUMS.payload',EXCLUDE)
        if mode=='final':result['final_manifest_hashes']=manifest('SHA256SUMS',{'SHA256SUMS'})
    lock=json.loads((ROOT/'sources'/'source-lock.json').read_text())
    for rel,digest in lock['sha256'].items():assert sha(ROOT/'sources'/rel)==digest
    result['source_locks']=len(lock['sha256'])
    algebra=json.loads((ROOT/'certificates'/'algebra.json').read_text())
    result['algebra']=polynomial.verify(algebra)
    expected=json.loads((ROOT/'certificates'/'terminal-summary.json').read_text())
    # Independent counts from the residue-class floor sum.
    assert (19683*6-1)//256==461 and (32805*6-1)//256==768
    assert Fraction(6**6*2,1)>0 and Fraction(10*6**6,3)>0
    totals={};exceptions=[]
    with tempfile.TemporaryDirectory(prefix='k6-verify-') as td:
        td=Path(td)
        for eps in (-1,1):
            count=Counter();maxima={}
            for label,iterator in [('A',rows_a),('B',rows_b)]:
                out=td/f'{label}-{eps}.csv'
                with out.open('w',newline='',encoding='ascii') as f:
                    w=csv.writer(f,lineterminator='\n');w.writerow(FIELDS)
                    for row in iterator(eps):
                        w.writerow(row)
                        if label=='A':
                            r=dict(zip(FIELDS,row));count['total']+=1
                            count['zero_slots']+=bool(r['zero_slots'])
                            count['size_fail']+=r['T2']>r['Lambda']
                            count['divisibility_fail_after_size']+=r['T2']<=r['Lambda'] and r['T2_remainder']!=0
                            count['T2_pass']+=r['T2_remainder']==0
                            count['T0_pass']+=r['T0_remainder']==0
                            count['both_pass']+=r['T2_remainder']==0 and r['T0_remainder']==0
                            if r['T2']<=r['Lambda']:exceptions.append(r)
                            for key in ['P','Q','n','j','a','z','alpha']:
                                maxima[key]=max(maxima.get(key,0),r[key])
                frozen=ROOT/'certificates'/f'k6-e{eps}.csv'
                assert file_equal(out,frozen),(label,eps,'ledger mismatch')
                assert sha(out)==expected['enumeration'][str(eps)]['sha256']
            assert file_equal(td/f'A-{eps}.csv',td/f'B-{eps}.csv')
            zmax=461 if eps<0 else 768
            assert count['total']==zmax*zmax//4-1+(zmax-1)//4
            assert dict(count)==expected['enumeration'][str(eps)]['counts']
            assert maxima==expected['enumeration'][str(eps)]['maxima']
            assert count['zero_slots']==count['T2_pass']==count['T0_pass']==0
            totals[str(eps)]=dict(count)
        result['terminal']=totals
        # Audit every integer row, not only demonstration examples.
        primes=primes_up_to(expected['prime_sieve_bound'])
        assert expected['prime_sieve_bound']>math.isqrt(expected['largest_Q'])
        cache={};real={};audit_counts={}
        auditpath=ROOT/'certificates'/'prime-power-audit.csv'
        with auditpath.open(newline='') as f:
            frozen=csv.DictReader(f)
            for eps in (-1,1):
                c=Counter()
                for row in rows_b(eps):
                    r=dict(zip(FIELDS,row));ar={k:int(v) for k,v in next(frozen).items()}
                    for key in ['eps','z','a','P','Q']:assert ar[key]==r[key]
                    for x in [r['P'],r['Q']]:
                        if x not in cache:cache[x]=prime_power(x,primes)
                    pp=cache[r['P']];qq=cache[r['Q']]
                    assert [ar[x] for x in ['p','rho','P_first_prime','P_cofactor']]==list(pp)
                    assert [ar[x] for x in ['q','sigma','Q_first_prime','Q_cofactor']]==list(qq)
                    p,rho=pp[:2];q,sigma=qq[:2];is_real=bool(p and q and p!=q)
                    assert ar['real_distinct_powers']==int(is_real)
                    c['records']+=1;c['P_single_base']+=bool(p);c['Q_single_base']+=bool(q)
                    if is_real:
                        assert p**rho==r['P'] and q**sigma==r['Q'] and p>=3 and q>=3
                        lp=int(lucas(r['n'],r['j'],p));lq=int(lucas(r['n'],r['j'],q))
                        vp=vp_binom(r['n'],r['j'],p);vq=vp_binom(r['n'],r['j'],q)
                        assert [ar[x] for x in ['lucas_p','lucas_q','valuation_p','valuation_q']]==[lp,lq,vp,vq]
                        assert lp==(vp==0) and lq==(vq==0)
                        c['real_distinct_powers']+=1;c['nontrivial_power']+=rho>1 or sigma>1
                        c['both_Lucas_pass']+=bool(lp and lq)
                        c['both_Lucas_pass_nontrivial']+=bool(lp and lq and (rho>1 or sigma>1))
                        real[(eps,r['z'],r['a'])]=dict(r,p=p,rho=rho,q=q,sigma=sigma)
                    else:
                        assert all(ar[x]==-1 for x in ['lucas_p','lucas_q','valuation_p','valuation_q'])
                assert dict(c)==expected['prime_power_audit'][str(eps)]
                audit_counts[str(eps)]=dict(c)
            assert next(frozen,None) is None
        assert sha(auditpath)==expected['prime_power_audit_sha256']
        result['prime_power_audit']=audit_counts
        checked=certify_all();result['complete_order_prime_certificates']=len(checked)
        # Source witnesses preserve the original source exponent in every real row.
        visited=set();num_3=0
        with (ROOT/'certificates'/'actual-source-witnesses.csv').open(newline='') as f:
            for rr in csv.DictReader(f):
                w={k:int(v) for k,v in rr.items()};key=(w['eps'],w['z'],w['a']);src=w['source']
                assert key in real and src in (0,2) and (*key,src) not in visited
                r=real[key];assert w['n']==r['n'] and w['j']==r['j']
                p,E=w['prime'],w['exponent'];assert p in checked and p>=3
                assert v_p(r['n']-src,p)==E and (p!=3 or E>=2)
                assert p**E==w['modulus'] and r['j']%p**E==w['residue']
                assert w['residue'] not in range(src+1)
                assert vp_binom(r['n'],3,p)==w['v_binom3']>0
                assert vp_binom(r['n'],r['j'],p)==w['v_binomj']>0
                if src==2 and p==3:num_3+=1
                visited.add((*key,src))
        assert len(visited)==2*len(real)
        result['source_witnesses']={'real_rows':len(real),'full_source_witnesses':len(visited),
                                    'source2_full_3power':num_3}
        exc=json.loads((ROOT/'certificates'/'size-pass-audit.json').read_text())
        assert len(exc)==len(exceptions)==33
        genuine=0
        for bare,r in zip(exceptions,exc):
            assert all(r[k]==v for k,v in bare.items())
            for name,n in [('P',r['P']),('Q',r['Q']),('F',r['n']-2)]:
                fac=r[name+'_factors'];product=1;prev=1
                for p,e in fac:
                    assert p in checked and p>prev and e>=1;product*=p**e;prev=p
                assert product==n
            actual=len(r['P_factors'])==len(r['Q_factors'])==1 and r['P_factors'][0][0]!=r['Q_factors'][0][0]
            assert actual==r['real_distinct_powers'];genuine+=actual
        result['size_pass_audit']={'records':len(exc),'real_power_pairs':genuine,'all_T2_remainders_nonzero':True}
        # Independent full half-row regression, using actual odd binomial factors.
        reg=json.loads((ROOT/'certificates'/'binomial-regression.json').read_text())
        n=reg['n'];value=math.comb(n,3);fac=reg['odd_binom3_factors'];prod=1
        for p,e in fac:
            assert trial_prime(p) and p>=3 and e==v_p(value,p);prod*=p**e
        assert value//(value & -value)==prod
        count=0
        with (ROOT/'certificates'/'complete-small-row.csv').open(newline='') as f:
            reader=csv.DictReader(f)
            for j in range(4,n//2+1):
                row={k:int(v) for k,v in next(reader).items()}
                assert row['j']==j
                found=None
                for p,e in fac:
                    l=lucas(n,j,p);v=vp_binom(n,j,p)
                    assert l==(v==0)
                    if not l:found=[p,e,v];break
                assert found is not None
                assert [row[k] for k in ['prime','v_binom3','v_binomj']]==found
                count+=1
            assert next(reader,None) is None
        assert count==reg['complete_pairs']==99819
        assert sha(ROOT/'certificates'/'complete-small-row.csv')==reg['small_row_sha256']
        for r in reg['direct_binomial']:
            value=math.comb(r['n'],r['j'])
            digest=hashlib.sha256(value.to_bytes((value.bit_length()+7)//8,'big')).hexdigest()
            assert digest==r['binomial_bytes_sha256']
            for p,v1,v2 in r['valuations']:
                assert v_p(value,p)==v1==v2==vp_binom(r['n'],r['j'],p)
        result['regression']={'complete_half_row':count,'direct_binomial_pairs':len(reg['direct_binomial'])}
    result.update(status='PASS',seconds=time.perf_counter()-start,
                  terminal_total=sum(c['total'] for c in totals.values()),
                  repo_actions='none',old_ledgers_replayed=False)
    return result


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--output',required=True,type=Path)
    ap.add_argument('--mode',choices=['final','payload','bootstrap'],default='final')
    args=ap.parse_args();out=args.output.resolve()
    if out.is_relative_to(ROOT):raise SystemExit('Output must be outside the evidence tree')
    result=run(args.mode);out.parent.mkdir(parents=True,exist_ok=True)
    out.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
if __name__=='__main__':main()
