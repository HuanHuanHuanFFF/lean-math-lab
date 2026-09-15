#!/usr/bin/env python3
"""Finite regression, boundary examples and semantic rejection tests.
Not a substitute for the infinite reductions in notes/PROOFS.md.
"""
from pathlib import Path
from math import comb,gcd,prod
import json,copy
from verify import bound_check,check_row,primes_upto,require,covers,vp,legendre
ROOT=Path(__file__).resolve().parents[1]

def small(n,ps):return prod(p**vp(n,p) for p in ps)
def scalar_tests(n):
    ps=[2,3,5,7];T4=prod(small(n-r,ps) for r in range(4));T6=prod(small(n-r,ps) for r in range(6));T8=prod(small(n-r,ps) for r in range(8))
    R=6*n**4-89*n**3+462*n*n-1072*n+960
    return {'QIG8':T4**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3,
        'SIXG8':T6**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2,
        'EIGHTG8':T8**6*(n-6)**2*R<5*3**8*2**47*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3}

def crt(vals,mods):
    n=0;M=1
    for a,q in zip(vals,mods):n+=M*((a-n)*pow(M,-1,q)%q);M*=q
    return n,M

def family(d,exps):
    ps=[2,3,5] if d==6 else [2,3,5,7];pos=[0,4,5] if d==6 else [0,3,5,6]
    mods=[p**(e+1) for p,e in zip(ps,exps)];vals=[r+p**e for p,e,r in zip(ps,exps,pos)]
    n,L=crt(vals,mods)
    if n<10000:n+=L
    for p,e,r in zip(ps,exps,pos):
        require(vp(n-r,p)==e)
        require([h for h in range(d) if vp(n-h,p)==e]==[r])
    alpha=(5 if d==6 else 15)*2**exps[0];require(n%alpha==0);j=n//alpha
    require(j>=10 and gcd(n,j)==j and 2*j<=n)
    require((60 if d==6 else 840)%alpha!=0 and alpha>9)
    return {'d':d,'exponents':exps,'n':str(n),'modulus':str(L),'j':str(j),'alpha':str(alpha),'positions':pos,'n_bit_length':n.bit_length()}

def main(out=None):
    D=ROOT/'evidence';dest=Path(out) if out else D;dest.mkdir(exist_ok=True,parents=True)
    cs=json.loads((D/'height_certificates.json').read_text())['cases'];rows=json.loads((D/'row_covers.json').read_text())['rows'];lookup={(m,n):iv for m,n,iv in rows}
    total=accepted=transfer=0
    for n in range(14,513):
        B=1
        for j in range(1,n//2+1):
            B=B*(n-j+1)//j
            for m in (6,7,8):
                if j<=m:continue
                total+=1
                if (m,n) not in lookup:continue
                accepted+=1;C=comb(n,m);G=gcd(C,B)
                for p in (2,3,5,7):
                    if p>=m:break
                    while G%p==0:G//=p
                require(G>1,'direct binomial counterexample to certified row')
                if m==8 and j>=10:
                    p=next(v[2] for v in lookup[m,n] if v[0]<=j<=v[1]);require(C%p==0 and B%p==0 and comb(n,9)%p==0);transfer+=1
    fams=[family(8,es) for es in [(4,2,2,2),(12,8,9,10),(100,103,107,109)]]+[family(6,es) for es in [(3,2,2),(10,11,12),(100,103,107)]]
    # A single comparison point, explicitly not a global historical difference.
    require(not any(scalar_tests(32).values()))
    require([max(range(8),key=lambda r:vp(32-r,p)) for p in [2,3,5,7]]==[0,5,7,4])
    require(comb(32,8)%31==0 and all(comb(32,j)%31==0 for j in range(9,17)))
    # Weak two-window input: not NC4; it has an actual threshold witness.
    wn,wj,wp=7976,1276,997
    require((wj*(wj-1))%(wn-1)==0 and prod(range(wj-3,wj+1))%(wn-3)==0)
    require(gcd(wn,wj)==4 and all(wp%d for d in range(2,32)))
    require(legendre(wn,wp)-legendre(4,wp)-legendre(wn-4,wp)==1)
    require(legendre(wn,wp)-legendre(wj,wp)-legendre(wn-wj,wp)==1)
    # Actual endpoint p=i=7, and its full power 343.
    endpoint=next([m,n,iv] for m,n,iv in rows if m==7 and n==349)
    require(endpoint[2]==[[8,174,7,343]])
    require(comb(349,7)%7==0 and all(comb(349,j)%7==0 for j in range(8,175)))
    rejects=[];prime=primes_upto(262140)
    def reject(label,fn):
        try:fn()
        except (ValueError,KeyError,TypeError,IndexError):rejects.append(label);return
        raise RuntimeError('accepted corrupt evidence: '+label)
    base=cs[4]
    def badheight(label,edit,c=base):
        t=copy.deepcopy(c);edit(t);reject(label,lambda:bound_check(t))
    badheight('omit a positive polynomial weight',lambda t:t['polynomials'][0].__setitem__('weight',0))
    badheight('delete one polynomial',lambda t:t['polynomials'].pop())
    badheight('inflate a row exponent',lambda t:t['row_weights'].__setitem__('1',10**5))
    badheight('pay no prime-2 cost',lambda t:t['small_exponents'].__setitem__('2',0))
    badheight('pay no prime-3 cost',lambda t:t['small_exponents'].__setitem__('3',0))
    badheight('replace complete height by half',lambda t:t.__setitem__('N',str(int(t['N'])//2)))
    badheight('change source threshold',lambda t:t.__setitem__('target',7))
    badheight('duplicate maximal location',lambda t:t['H'].__setitem__(1,0))
    badheight('place weight on removed row',lambda t:t['row_weights'].__setitem__('0',1))
    badheight('fake degree',lambda t:t['polynomials'][0].__setitem__('degree',2))
    badheight('fake positive gap',lambda t:t.__setitem__('gap',2))
    badheight('wrong mass threshold',lambda t:t.__setitem__('T',100))
    # Exactly legal boundary zero must not be used as a nonzero factor.
    badheight('zero polynomial at legal corner',lambda t:t['polynomials'][0].__setitem__('coeffs',[1,0,-9]))
    badheight('negative certificate weight',lambda t:t['polynomials'][0].__setitem__('weight',-1))
    badheight('wrong geometric seven cancellation',lambda t:t.__setitem__('N','46657'),c=cs[-1])
    badheight('erase geometric cross term',lambda t:t['polynomials'][-1]['coeffs'].__setitem__(1,0),c=cs[-1])
    row=endpoint
    def badrow(label,edit):
        t=copy.deepcopy(row);edit(t);reject(label,lambda:check_row(t,prime))
    badrow('miss first j',lambda t:t[2][0].__setitem__(0,9))
    badrow('miss last j',lambda t:t[2][0].__setitem__(1,173))
    badrow('out of legal half row',lambda t:t[2][0].__setitem__(1,175))
    badrow('drop witness interval',lambda t:t[2].clear())
    badrow('composite witness',lambda t:t[2][0].__setitem__(2,49))
    badrow('below-threshold witness',lambda t:t[2][0].__setitem__(2,5))
    badrow('drop entire full power to 49',lambda t:t[2][0].__setitem__(3,49))
    badrow('replace full power by radical 7',lambda t:t[2][0].__setitem__(3,7))
    badrow('non-prime-power modulus',lambda t:t[2][0].__setitem__(3,342))
    badrow('use unavailable higher layer',lambda t:t[2][0].__setitem__(3,2401))
    badrow('reuse interval in another row',lambda t:t.__setitem__(1,351))
    badrow('overlapping copy',lambda t:t[2].append(list(t[2][0])))
    domain={(m,n) for m,n,_ in rows}
    reject('omit a row from union',lambda:require(domain==domain-{next(iter(domain))}))
    reject('add an illegal row to union',lambda:require(domain==domain|{(8,17)}))
    hi=json.loads((D/'candidate_domains.json').read_text())['domains'][-2]['high']['candidates']
    require(len(hi)==13)
    reject('omit a high-domain survivor',lambda:require(hi==hi[:-1]))
    reject('erase all surviving six-window candidates',lambda:require(hi==[]))
    result={'status':'PASS_REGRESSION_AND_REJECTION','direct_legal_configurations':total,'certified_configurations_directly_checked':accepted,'same_prime_8_to_9_checks':transfer,
            'infinite_family_examples':fams,'finite_comparison':{'n':32,'positions':[0,5,7,4],'old_scalar_tests':scalar_tests(32),'witness':31,'not_global_novelty_claim':True},
            'weak_i4_control':{'n':wn,'j':wj,'alpha':1994,'actual_prime':wp,'source_valuation':1,'target_valuation':1,'not_a_counterexample':True},'endpoint_7':endpoint,'rejection_count':len(rejects),'rejected':rejects}
    (dest/'regression.json').write_text(json.dumps(result,indent=2)+'\n')
    print(result['status'],'direct',total,'accepted',accepted,'transfer',transfer,'rejects',len(rejects),flush=True)
if __name__=='__main__':
    import argparse
    a=argparse.ArgumentParser();a.add_argument('--out');main(a.parse_args().out)
