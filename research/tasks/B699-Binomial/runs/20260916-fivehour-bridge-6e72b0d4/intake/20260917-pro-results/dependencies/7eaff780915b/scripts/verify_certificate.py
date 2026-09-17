"""Second implementation: rebuild the complete finite coefficient superset,
check each residue/witness directly, and certify the bounded endpoints
using prime factorization + Legendre valuations of the ORIGINAL binomials.
This is a same-author second implementation, not independent peer review.
"""
from math import gcd, isqrt, comb
from pathlib import Path
import json, hashlib, copy, time, argparse
ROOT=Path(__file__).resolve().parents[1]

def prime(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def regenerate():
    rows=[]
    for c in (1,3):
      for r in range(-3,9):
        if (3*c*(2**r)<=1 if r>=0 else 3*c<=2**(-r)):continue
        n0=c*2**(r+8)
        mapping={}
        for e in range(3):
          residue=c*pow(2,(4*e+r)%6,9)%9
          la=3 if residue in (4,7) else 1
          mu=3 if residue in (5,8) else 1
          mapping.setdefault((la,mu),[]).append(e)
        for (la,mu),allowed in mapping.items():
          top=la**3*mu**2*c*n0**3
          bottom=16*(n0-1)**3
          if r>=0:top*=2**r
          else:bottom*=2**(-r)
          bound=top//bottom
          for u in range(1,bound+1,2):
            if u*u>bound:break
            for z in range(1,bound//(u*u)+1,2):
              # Derived independently by substituting the forced H class.
              if (z*(la*mu*u)**2+la)%16:continue
              if gcd(u,z) not in (1,la):continue
              if c==3 and z%3!=0:continue
              if la==3 and (u%3==0)!=(z%3==0):continue
              assert r>=1
              rows.append((c,r,la,mu,u,z,tuple(allowed)))
    return sorted(rows)

def signature(case):
    return tuple(case[k] for k in ('c','r','lambda','mu','u','z'))+(tuple(case['e_mod3']),)

def check_cover(data):
    expected=regenerate()
    actual=sorted(signature(x['case']) for x in data['certificates'])
    assert actual==expected, 'incomplete or changed coefficient case set'
    checked=0
    for entry in data['certificates']:
      c,r,la,mu,u,z,allowed=signature(entry['case'])
      case=entry['case'];M=entry['period']
      assert M>0 and M%3==0 and M<=360
      A=u*c*2**(r-1);D=u;B=mu*z;E=mu*la
      assert [case[k] for k in ('A','D','B','E')]==[A,D,B,E]
      needed={e for e in range(M) if e%3 in allowed}
      seen=set()
      for witness in entry['cover']:
        p=witness['modulus'];assert prime(p) and pow(4,M,p)==1
        for e in witness['removed_exponents']:
          assert e in needed and e not in seen
          y=pow(4,e,p);rhs=((A*y*y-D)*y)%p
          assert all(((B*h*h+E)*h-rhs)%p for h in range(p)), (case,p,e)
          seen.add(e);checked+=1
      assert seen==needed, 'uncovered exponent residue'
    return len(expected),checked

def factor_small(n):
    d=2;fac={}
    while d*d<=n:
      while n%d==0:fac[d]=fac.get(d,0)+1;n//=d
      d=3 if d==2 else d+2
    if n>1:fac[n]=fac.get(n,0)+1
    return fac

def binom_val(n,j,p):
    value=0;q=p
    while q<=n:
      value+=n//q-j//q-(n-j)//q;q*=p
    return value

def check_endpoints():
    triples=[];rowdata=[];passed_w1=[];pairs=0;w2=[];digest=hashlib.sha256()
    for e in (0,1):
      for c in (1,3):
        for r in range(3-3*e,9):
          limit=3*c*2**r;m=1
          while m**3<limit:
            if c==3 and m%3==0:m+=2;continue
            g=m*2**e;alpha=c*2**(r+3*e);n=g*alpha
            la=3 if (n-1)%9 in (3,6) else 1
            mu=3 if (n-2)%9 in (3,6) else 1
            N=(n-1)//la;K=(n-2)//(2*mu)
            src={}
            for a in (n,n-1,n-2):
              for p,v in factor_small(a).items():src[p]=src.get(p,0)+v
            src[2]=src.get(2,0)-1;src[3]=src.get(3,0)-1
            ps=[p for p,v in src.items() if p>=3 and v>0]
            assert all(prime(p) for p in ps)
            rowpairs=0
            for beta in range(1,alpha//2):
              if gcd(beta,alpha)!=1:continue
              j=g*beta
              if j<4:continue
              assert 4<=j<n/2 and gcd(n,j)==g and g**4<3*n
              p=next((p for p in ps if binom_val(n,j,p)>0),None)
              assert p is not None, ('unclosed ORIGINAL pair',n,j)
              assert (comb(n,3)%p)==0
              digest.update(f'{n},{j},{p}\n'.encode());pairs+=1;rowpairs+=1
              if j*(j-1)%N==0:
                passed_w1.append([n,j,g,e,c,r])
                if j*(j-1)*(j-2)%K==0:w2.append([n,j])
            triples.append((e,c,r,m,n))
            rowdata.append({'e':e,'c':c,'r':r,'m':m,'n':n,'pairs':rowpairs})
            m+=2
    assert not w2
    # Separate direct-binomial sanity check, not used for infinite coverage.
    sanity=0
    for n in range(8,257):
      b3=comb(n,3)
      for j in range(4,n//2+1):
        d=gcd(b3,comb(n,j));odd=d//(d&-d)
        assert odd>1
        sanity+=1
    return {'parameter_rows':len(triples),'distinct_n':len({x[-1] for x in triples}),
        'max_n':max(x[-1] for x in triples),'all_original_pairs':pairs,
        'first_window_survivors':passed_w1,'second_window_survivors':w2,
        'witness_stream_sha256':digest.hexdigest(),'rows':rowdata,
        'independent_small_direct_binomial_pairs':sanity}

def corruption_tests(data):
    tests=[]
    def reject(name,mutate):
      bad=copy.deepcopy(data);mutate(bad)
      try:check_cover(bad)
      except (AssertionError,ValueError,KeyError):tests.append(name);return
      raise AssertionError('corruption was accepted: '+name)
    reject('missing_case',lambda d:d['certificates'].pop())
    reject('duplicate_case',lambda d:d['certificates'].append(copy.deepcopy(d['certificates'][0])))
    reject('wrong_linear_coefficient',lambda d:d['certificates'][0]['case'].__setitem__('E',99))
    reject('wrong_cubic_coefficient',lambda d:d['certificates'][0]['case'].__setitem__('A',99))
    reject('missing_exponent',lambda d:d['certificates'][0]['cover'][0]['removed_exponents'].pop())
    reject('non_period',lambda d:d['certificates'][0].__setitem__('period',59))
    reject('fake_modulus',lambda d:d['certificates'][0]['cover'][0].__setitem__('modulus',4))
    reject('changed_allowed_classes',lambda d:d['certificates'][0]['case'].__setitem__('e_mod3',[0,1,2]))
    return tests

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--certificate', type=Path, default=ROOT/'verification'/'VALUATION_CERTIFICATE.json')
    parser.add_argument('--output', type=Path, default=ROOT/'verification'/'ACCEPTANCE.json')
    args=parser.parse_args()
    start=time.time()
    data=json.loads(args.certificate.read_text())
    count,residues=check_cover(data)
    endpoints=check_endpoints()
    errors=corruption_tests(data)
    summary={'status':'PASS_AUTHOR_SECOND_IMPLEMENTATION','theorem':'NC3 -> v2(n)>=4*v2(j)+9',
        'case_count':count,'all_exponent_residues_checked':residues,'endpoints':endpoints,
        'corruption_tests_rejected':errors,'seconds':time.time()-start,
        'not_claimed':['Lean','independent researcher review','full i=3','omega(t)=2 closure']}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n')
    brief={k:v for k,v in summary.items() if k!='endpoints'}
    brief['endpoints']={k:v for k,v in endpoints.items() if k not in ('rows','first_window_survivors')}
    brief['endpoints']['first_window_survivor_count']=len(endpoints['first_window_survivors'])
    print(json.dumps(brief,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
