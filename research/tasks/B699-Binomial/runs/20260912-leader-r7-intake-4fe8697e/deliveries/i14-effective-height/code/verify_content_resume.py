"""Independent full receiver for the selected, frozen content families.
Rebuilds carry catalogues on an integer common-denominator grid, checks each
permutation, all exact tail inequalities, and every finite block via a
separately implemented C++ receiver. Only BFT Lemma 5.4 is a publication input.
"""
from pathlib import Path
from fractions import Fraction as F
from itertools import permutations
import hashlib, json, math, subprocess, time
R=Path(__file__).resolve().parents[1]
ETA=F(213,10**7)

def catalog(e,d,f):
    S=e+d+f;scale=math.lcm(e,d,f,S);ee=scale//e;dd=scale//d;ff=scale//f;ss=scale//S
    out=[]
    for a in range(e):
        for b in range(d):
            for c in range(f):
                J=a+b+c
                lower=max(a*ee,b*dd,c*ff,(J+2)*ss)
                upper=min((a+1)*ee,(b+1)*dd,(c+1)*ff,(J+3)*ss)
                if lower<upper:
                    assert lower==(J+2)*ss
                    out.append((F(lower,scale),F(upper,scale),J))
    out.sort()
    assert len(out)==len(set(out)) and all(a[1]<=b[0] for a,b in zip(out,out[1:]))
    return out

def check_tail(t,cells):
    N=t['e']+t['d']+t['f'];M=t['M'];g=F(t['g']);total=F(0);seen=set()
    for row in t['rows']:
        w=row['w'];l=F(row['l']);u=F(row['u']);J=row['J'];key=(w,l,u,J)
        assert isinstance(w,int) and 0<=w<=t['W'] and (l,u,J) in cells and key not in seen
        seen.add(key)
        A=1/(w+l);B=F(2,N)/(w+l);C=1/(w+u);err=F(row['error'])
        assert (A,B,C)==tuple(F(row[k]) for k in ['A','B','C'])
        assert A*M-B>=1 and err>=ETA*A
        if row['error_source']=='relative_from_1e8':assert A*M-B>=10**8
        else:
            assert row['error_source']=='uniform_max'
            assert err>=0 and err*err>=F(259,125)**2*A/M
        rate=A-(1+ETA)*C-err-B/M
        assert rate>0 and rate==F(row['rate']);total+=rate
    assert total==F(t['lower']) and total-g==F(t['margin']) and total>g
    return dict(terms=len(seen),lower=str(total),margin=str(total-g))

def check_one(sp,t):
    key='_'.join(str(sp[k]) for k in ['e','d','f']);e,d,f=sp['e'],sp['d'],sp['f']
    assert all(sp[k]==t[k] for k in ['e','d','f','M','W']) and F(sp['g'])==F(t['g'])
    cells=catalog(e,d,f);perms=sorted(set(permutations((e,d,f))))
    for triple in perms:assert catalog(*triple)==cells
    tail=check_tail(t,cells);N=e+d+f;g=F(sp['g'])
    expected=[f'{(sp["W"]+1)*len(cells)} {N} {sp["M"]} {g.numerator} {g.denominator}']
    for w in range(sp['W']+1):
        for l,u,J in cells:
            C=1/(w+u);expected.append(f'{N*w+J+2} {C.numerator} {C.denominator}')
    cat=R/f'input/content_catalog_{key}.txt'
    assert cat.read_text().splitlines()==expected
    finite_path=R/f'evidence/content_finite_{key}.blocks'
    result=subprocess.run([str(R/'bin/hybrid_content_check'),str(cat),str(R/'cache/primes'),str(finite_path)],capture_output=True,text=True,check=True)
    finite=json.loads(result.stdout)
    original=json.loads((R/f'evidence/content_finite_{key}.json').read_text())
    assert finite['status']=='PASS_INDEPENDENT_EXACT_HYBRID_BLOCKS'
    assert all(finite[k]==original[k] for k in ['m0','M','blocks']) and finite['M']==sp['M']
    out=dict(status='ACCEPTED_PAPER_PLUS_EXACT_CERTIFICATE_UNLEANED',**sp,m0=finite['m0'],all_permutations=True,permutations=[list(p) for p in perms],deltas=[0,1],finite=finite,tail=tail,
             catalogue_sha256=hashlib.sha256(cat.read_bytes()).hexdigest(),blocks_sha256=hashlib.sha256(finite_path.read_bytes()).hexdigest())
    (R/f'evidence/accepted_content_family_{key}.json').write_text(json.dumps(out,indent=2)+'\n')
    return out

def main():
    start=time.monotonic()
    assert json.loads((R/'evidence/prime_cache_independent.json').read_text())['status']=='PASS_INDEPENDENT_ALL_PRIMES_AND_WEIGHTS'
    assert json.loads((R/'evidence/dense_independent.json').read_text())['status']=='PASS_ALL_DENSE_ENTRIES'
    # Prove the strict rational lower bound for log 2 used by both integer paths.
    log2_lower=F(69314718055,10**11)
    assert log2_lower<2*sum((F(1,3**(2*k+1)*(2*k+1)) for k in range(40)),F(0))
    specs=json.loads((R/'input/selected_content_specs.json').read_text())['families']
    tails={tuple(t[k] for k in ['e','d','f']):t for t in json.loads((R/'evidence/content_tail.json').read_text())['rows']}
    out=[]
    for sp in specs:
        key=tuple(sp[k] for k in ['e','d','f']);row=check_one(sp,tails[key]);out.append(row)
        (R/'evidence/content_independent_progress.json').write_text(json.dumps(dict(status='COMPLETE' if len(out)==len(specs) else 'PARTIAL',completed=len(out),total=len(specs),rows=out,seconds=time.monotonic()-start),indent=2)+'\n')
        print('ACCEPTED',key,'m0',row['m0'],'blocks',row['finite']['blocks'],'permutations',len(row['permutations']),flush=True)
    summary=dict(status='PASS_ALL_SELECTED_CONTENT_FAMILIES',family_count=len(out),permutation_count=sum(len(r['permutations']) for r in out),total_finite_blocks=sum(r['finite']['blocks'] for r in out),total_tail_terms=sum(r['tail']['terms'] for r in out),max_m0=max(r['m0'] for r in out),rows=out,seconds=time.monotonic()-start)
    (R/'evidence/content_check.json').write_text(json.dumps(summary,indent=2)+'\n')
    print('PASS',summary['family_count'],'families',summary['total_finite_blocks'],'blocks',summary['total_tail_terms'],'tail terms',flush=True)
if __name__=='__main__':
    if not __debug__:raise RuntimeError('Do not use python -O')
    main()
