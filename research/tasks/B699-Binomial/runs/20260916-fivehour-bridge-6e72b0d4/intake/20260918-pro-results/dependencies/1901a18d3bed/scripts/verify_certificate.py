"""Second implementation: matrix powers and factorial valuations; no builder import."""
from __future__ import annotations
import argparse, copy, json, math
from pathlib import Path

def need(v:bool,msg:str)->None:
    if not v:raise ValueError(msg)

def mul(A,B,mod=None):
    C=[[sum(A[i][k]*B[k][j] for k in range(len(B))) for j in range(len(B[0]))] for i in range(len(A))]
    return [[x%mod for x in r] for r in C] if mod else C

def power(A,n,mod=None):
    R=[[int(i==j) for j in range(len(A))] for i in range(len(A))]
    while n:
        if n&1:R=mul(R,A,mod)
        A=mul(A,A,mod);n//=2
    return R

def xy(D,b,r):
    M=power([[0,1,0],[-1,2*(D-1),3],[0,0,1]],r)
    X=mul(M,[[0],[b],[1]])
    return X[0][0],X[1][0]

def U(P,n):
    if n==0:return 0
    return power([[P,-1],[1,0]],n-1)[0][0]

def prime(p):
    return isinstance(p,int) and p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def vf(n,p):
    v=0
    while n:n//=p;v+=n
    return v

def vc(n,j,p):return vf(n,p)-vf(j,p)-vf(n-j,p)

def verify(c):
    need(c['schema']=='B699-E-INTEGER-QUOTIENT-1','schema')
    need(c['scope']==dict(D_odd_min=3,D_odd_max=51,nu_odd_min=3,nu_odd_max=63,branches=[1,2]),'scope')
    expected={(D,b,nu) for D in range(3,52,2) for b in (1,2) for nu in range(3,64,2)}
    seen=set()
    for a in c['triples']:
        D,b,nu=a['D'],a['branch'],a['nu'];key=D,b,nu
        need(key in expected and key not in seen,'duplicate or out-of-scope triple');seen.add(key)
        r=2*nu-(b==1);need(a['r']==r,'index')
        j,k=xy(D,b,r);n=j+k;P=2*(D-1);h=(nu-1)//2
        need((int(a['n']),int(a['j']))==(n,j),'input restoration')
        need(n%4==0 and 4<=j<n//2,'legality')
        need(math.gcd(n,j)==1 and (n-1)*(n-2)==2*D*j*k,'conic')
        tau,rem=divmod(j*k,n-1);need(rem==0,'first quotient')
        A,B,V=map(lambda k:int(a[k]),['A','B','V'])
        need(A==U(P,h+1)-U(P,h) and B==U(P,h+1)+U(P,h),'split factors')
        v=U(P,nu)+2*U(P,nu-1) if b==1 else 2*U(P,nu+1)+U(P,nu)
        need(V==v and int(a['tau'])==tau==A*B*V,'triple product')
        need(all(x>1 and x%2==1 for x in (A,B,V)),'nontrivial odd factors')
        need(math.gcd(A,B)==math.gcd(A,V)==math.gcd(B,V)==1,'pairwise coprime')
    need(seen==expected,'missing triple')
    end_expected=set(range(3,502,2))|{3**a for a in range(1,21)};end_seen=set();minv=[10**9,10**9]
    for a in c['endpoints']:
        D,n,j,p=int(a['D']),int(a['n']),int(a['j']),a['p']
        need(D in end_expected and D not in end_seen,'endpoint coverage');end_seen.add(D)
        need((n,j)==(8*D*D-6*D+2,4*D-1),'endpoint recovery')
        need(prime(p) and p>=3 and D%p==0,'endpoint source prime')
        vv=vc(n,3,p),vc(n,j,p);need(min(vv)>0,'endpoint common prime')
        minv=[min(x,y) for x,y in zip(minv,vv)]
    need(end_seen==end_expected,'missing endpoint')
    w=c['weak_family'];n,j=int(w['n']),int(w['j']);k=n-j;H=w['H']
    need((j,k)==xy(5,1,21) and H==5,'weak row')
    lam=3 if n%9 in (4,7) else 1;mu=3 if n%9 in (5,8) else 1
    N=(n-1)//lam;K=(n-2)//(2*mu)
    need(w['lambda_']==lam==1 and w['mu']==mu==1,'true isolated-three factors')
    need(math.gcd(n,j)==w['g']==1 and j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0,'complete weak windows')
    C=K//H;need(math.gcd(K,j-1)==H and int(w['C'])==C,'middle allocation')
    t=j*k//N;need(int(w['t'])==t==C and w['u']==1 and int(w['z'])*H*H==C-1,'canonical weak residuals')
    prod=1;support=set()
    for p,e in w['C_factorization']:
        need(prime(p) and p not in support and isinstance(e,int) and e>0,'weak factorization');support.add(p);prod*=p**e
    need(prod==C and len(support)==4,'weak support')
    T=[[0,1],[-1,8]];A=power(T,20,107)
    need(w['recurrence_matrix_mod107']==[[0,1],[106,8]] and A==w['T20_mod107'],'weak modular matrix')
    need(w['period_in_w']==27 and power(A,27,107)==[[1,0],[0,1]],'weak infinite-subsequence period')
    need(w['common_prime']==107==w['n_prime_divisor'] and prime(107),'weak witness prime')
    need(n%107==0 and j%107==w['j_mod107']==99,'weak common source residues')
    need(vc(n,3,107)>0 and vc(n,j,107)>0,'weak original binomial valuations')
    return dict(triple_records=len(seen),endpoint_records=len(end_seen),min_endpoint_valuations=minv,weak_common_valuations=[vc(n,3,107),vc(n,j,107)],weak_t_support=sorted(support))

def negative(c):
    mutations=[]
    def case(name,f):
        x=copy.deepcopy(c);f(x)
        try:verify(x)
        except (ValueError,KeyError,TypeError,ZeroDivisionError):mutations.append(dict(name=name,rejected=True));return
        raise RuntimeError('accepted damage: '+name)
    case('missing triple',lambda x:x['triples'].pop())
    case('duplicate triple',lambda x:x['triples'].append(copy.deepcopy(x['triples'][0])))
    case('even Lucas index',lambda x:x['triples'][0].update(nu=4))
    case('unit factor',lambda x:x['triples'][0].update(A='1'))
    case('altered product',lambda x:x['triples'][0].update(tau='7'))
    case('wrong recovered original input',lambda x:x['triples'][0].update(j='4'))
    case('missing endpoint',lambda x:x['endpoints'].pop())
    case('even witness',lambda x:x['endpoints'][0].update(p=2))
    case('false middle block',lambda x:x['weak_family'].update(H=7))
    case('false recurrence period',lambda x:x['weak_family'].update(period_in_w=26))
    case('corrupted weak factorization',lambda x:x['weak_family']['C_factorization'][0].__setitem__(0,253))
    case('wrong fixed coverage',lambda x:x['scope'].update(nu_odd_max=61))
    return mutations

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True);ap.add_argument('--output',required=True);ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    c=json.loads(Path(a.certificate).read_text());v=verify(c)
    v.update(status='PASS',evidence='finite checks by a second same-author implementation; infinite theorem is in PROOFS.md')
    if a.negative_tests:v['damage_tests']=negative(c)
    Path(a.output).write_text(json.dumps(v,indent=2)+'\n');print(json.dumps(v))
if __name__=='__main__':main()
