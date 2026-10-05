#!/usr/bin/env python3
"""Independent R07 receiver. No imports from the generator or ancestors.
Uses digit sums, an affine Pell matrix, and generic modular Newton with EH.
"""
from __future__ import annotations
import argparse, copy, hashlib, itertools, json, math
from pathlib import Path

def need(ok,msg):
 if not ok:raise ValueError(msg)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def val(x,p):
 need(x!=0,'zero finite valuation')
 t=0
 while x%p==0:x//=p;t+=1
 return t

def digit_sum(n,p):
 total=0
 while n:total+=n%p;n//=p
 return total

def binomial_v(n,k,p):
 need(0<=k<=n,'invalid binomial arguments')
 z=digit_sum(k,p)+digit_sum(n-k,p)-digit_sum(n,p)
 need(z%(p-1)==0,'digit sum divisibility')
 return z//(p-1)

def factorial_v(n,k,p):
 total=0;a=n;b=k;c=n-k
 while a:
  a//=p;b//=p;c//=p;total+=a-b-c
 return total

def expressions(Q,v,H,h):
 P=Q+h*v;d=Q-v;X=P+2*H;Y=Q*Q+2*v*H;j=Q*Q*X;k=P*Y;n=2*P*Q*H+2
 E=P*Q*Q-1-4*v*H*H;L=h*d-4*H-Q;R=E-2*v*H*L
 return [
 (j+k-n,2*E-2*v*H*L),
 (X*Y-n+1,R),
 (j-1-2*H*Y,E),
 (k-1-2*v*H*X,E),
 (P*P*Q-1-v*X*X,E+v*P*L),
 (j*k-P*Q*Q*(n-1),P*Q*Q*R),
 (Q**3-1-v*(4*H*H-h*Q*Q),E)]

def check_polys(c):
 obj=c['identities'];names=['sum_recovery','first_source_factorization','j_endpoint','k_endpoint','paired_norm','product_recovery','Q_cubic_valuation']
 need(obj['variables']==['Q','v','H','h'] and obj['degree_box']==[6,4,4,4],'polynomial variables/box')
 need([z['name'] for z in obj['identities']]==names,'identity names')
 polys=[]
 for z in obj['identities']:
  pairs=z['coefficients'];need(len({tuple(e) for e,a in pairs})==len(pairs),'duplicate monomial')
  for e,a in pairs:need(len(e)==4 and all(0<=x<=b for x,b in zip(e,obj['degree_box'])) and isinstance(a,int) and a!=0,'bad coefficient')
  polys.append(pairs)
 count=0
 for v in itertools.product(*[range(d+1) for d in obj['degree_box']]):
  sides=expressions(*v)
  for pairs,(left,right) in zip(polys,sides):
   value=sum(a*math.prod(x**ee for x,ee in zip(v,e)) for e,a in pairs)
   need(value==left==right,'polynomial tensor mismatch')
  count+=1
 return count

def check_grid(c):
 expected={};total=0
 for p in (3,5,7,11,19):
  hh=hashlib.sha256();count=0
  for m in range(1,5):
   L=p**m
   for N in range(26):
    for K in range(N+1):
     for R in sorted({0,1,2,L//2,L-1}):
      for a in (0,1):
       if a>R or (a==1 and R%p==0):continue
       n=N*L+R;z=K*L+a
       vv=binomial_v(n,z,p);vr=binomial_v(N,K,p)
       need(vv==vr,'stripping equality')
       first=int(K%p>N%p);need(not first or vv>0,'first digit witness')
       hh.update(canon([p,m,N,K,R,a,vv,first]));count+=1
  expected[str(p)]={'count':count,'sha256':hh.hexdigest()};total+=count
 obj=c['generic_stripping_grid']
 need(obj=={'primes':[3,5,7,11,19],'m_range':[1,4],'N_range':[0,25],'buckets':expected,'count':total},'grid content')
 hh=hashlib.sha256();count=0
 for p in (3,5,7,11):
  for n in range(2,101):
   for z in range(n+1):
    for m in (1,2):
     L=p**m;N,R=divmod(n,L);K,a=divmod(z,L)
     if a not in (0,1) or a>R or (a==1 and R%p==0):continue
     vv=factorial_v(n,z,p);vr=factorial_v(N,K,p)
     need(vv==vr,'small factorial comparison')
     hh.update(canon([p,n,z,m,vv,vr]));count+=1
 need(c['small_exact_binomials']=={'n_range':[2,100],'count':count,'sha256':hh.hexdigest()},'exact binomial regression')
 return total,count

def mat_mul(A,B,m):
 return [[sum(x*y for x,y in zip(row,col))%m for col in zip(*B)] for row in A]

def pell_affine(q,m):
 A=[[18817,32592,9408],[10864,18817,5432],[0,0,1]];R=[[1,0,0],[0,1,0],[0,0,1]]
 while q:
  if q%2:R=mat_mul(R,A,m)
  A=mat_mul(A,A,m);q//=2
 return tuple(sum(row)%m for row in R[:2])

def equations(A,s,x,power):
 yy,H,B=x;d=(1+A*B*pow(3,-1,power))%power;v=A*yy%power;Q=(d+v)%power
 h=(4*H+Q)*pow(d,-1,power)%power;P=(Q+h*v)%power
 EH=(d*d*(h*h-6*h-11)-10*d*v*(h+1)-v*v*(4*h+3)-4*B*yy)%power
 ff=[(d*d+d+1-3*yy*yy)%power,EH,(2*P*Q*H+2-3*pow(2,s,power))%power]
 state={'d':d,'y':yy,'H':H,'B':B,'v':v,'Q':Q,'P':P,'h':h}
 return ff,state

def solve(J,r,p):
 T=[[(x%p) for x in row]+[(-z)%p] for row,z in zip(J,r)]
 for j in range(3):
  k=next((k for k in range(j,3) if T[k][j]%p),None);need(k is not None,'singular Newton system')
  T[j],T[k]=T[k],T[j];inv=pow(T[j][j],-1,p);T[j]=[x*inv%p for x in T[j]]
  for k in range(3):
   if k!=j:
    a=T[k][j];T[k]=[(x-a*y)%p for x,y in zip(T[k],T[j])]
 return [T[j][3] for j in range(3)]

def independent_lift(A,s,p,K):
 H0=(3*pow(2,s,p)-2)*pow(2,-1,p)%p;x=[1,H0,(4*H0*H0-4*H0-4)%p];digs=[]
 for a in range(1,K):
  pa=p**a;mod=p*pa;f,_=equations(A,s,x,mod)
  need(all(y%pa==0 for y in f),'invalid preceding lift')
  J=[[0]*3 for _ in range(3)]
  for i in range(3):
   y=list(x);y[i]+=pa;ff,_=equations(A,s,y,mod)
   for k in range(3):J[k][i]=((ff[k]-f[k])%mod)//pa
  delta=solve(J,[y//pa for y in f],p);x=[v+pa*t for v,t in zip(x,delta)]
  need(equations(A,s,x,mod)[0]==[0,0,0],'Newton root failed');digs.append(delta)
 return equations(A,s,x,p**K)[1],digs

def check_state(A,s,z,p,K):
 m=p**K;f,zz=equations(A,s,[z['y'],z['H'],z['B']],m)
 need(f==[0,0,0] and z==zz,'local equations/state')
 P,Q,H,v,d,B,y,h=[z[x] for x in ['P','Q','H','v','d','B','y','h']]
 X=P+2*H;Y=Q*Q+2*v*H;n=3*pow(2,s,m)%m
 S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y
 checks=[P*Q*Q-1-4*v*H*H,P*P*Q-1-v*X*X,X*Y-n+1,Q*Q*X+P*Y-n, S-(2*d*H-Q*Q)**2,(4*v*H**3+H+Q)*2-n*Q,A*B-3*(d-1)]
 need(all(c%m==0 for c in checks),'local original N/S and paired identities')

def check_fibers(c):
 need(len(c['local_fibers'])==3,'fiber count');expected_cfg=[(1,1,1,10),(2,1,3,3),(3,3,2,12)]
 lifts=0;counts=[]
 for obj,(a13,b,e,beta_expected) in zip(c['local_fibers'],expected_cfg):
  need((obj['a13'],obj['b19'],obj['e19'],obj['beta'])==(a13,b,e,beta_expected),'fiber parameters')
  need(obj['global_integer_core_claimed'] is False and obj['prime_power_PQ_claimed'] is False,'local/global scope')
  A=obj['A'];K=obj['precision'];s0=obj['s0'];m=e+b
  st13,dig13=independent_lift(A,s0,13,K);need(st13==obj['state13'] and dig13==obj['lift13'],'13 lift replay');lifts+=K-1
  check_state(A,s0,st13,13,K)
  need(pell_affine(obj['q13'],13**K)==(st13['d'],st13['y']),'13 actual source')
  need(obj['s_step']==36*13**(K-1)*19**(m-1),'s synchronization step')
  alphas=[];cnt=0
  need(len(obj['rows'])==19,'full free digit cycle')
  for t,row in enumerate(obj['rows']):
   s=s0+t*obj['s_step'];need(row['s']==s and row['t']==t,'s/t assignment')
   z,digs=independent_lift(A,s,19,K);need(z==row['state19'] and digs==row['lift_digits'],'19 independent lift');lifts+=K-1
   check_state(A,s,z,19,K)
   q=row['q'];need(A%24570==5616 and q%3==0 and s%12==6,'same entrance phases')
   need(pell_affine(q,19**K)==(z['d'],z['y']) and pell_affine(q,13**K)==(st13['d'],st13['y']),'shared actual q source')
   need(row['q_modulus']==obj['source_period13']*5*19**(K-1),'shared q period')
   need(val(z['H'],19)==e and val(z['v'],19)==b,'exact shared valuations')
   need(val((z['P']*z['Q']**2-1)%(19**K),19)==b+2*e,'norm shared b term')
   A0=A//13**a13
   need(A%13**a13==0 and A0%13!=0 and q%13**(a13-1)==0,'13 exact divisibility')
   need(q//13**(a13-1)%13==(-A0)%13,'13 q normalized unit')
   need((st13['P']-1)//13**a13%13==(11*A0)%13 and (st13['Q']-1)//13**a13%13==(7*A0)%13,'13 normalized P/Q units')
   mod=19**(m+1);n=3*pow(2,s,mod)%mod;alpha=n//(19**m)
   beta=2*(z['v']//19**b)*(z['H']//19**e)*(z['P']+2*z['H'])%19
   j=(z['Q']**2*(z['P']+2*z['H']))%mod;k=(z['P']*(z['Q']**2+2*z['v']*z['H']))%mod
   need((j+k)%mod==n,'original residue sum')
   need((row['alpha'],row['beta'],row['j_mod'],row['k_mod'],row['n_mod'])==(alpha,beta,j,k,n),'digit/endpoint data')
   # Direct grade-school addition through all lower m+1 digits.
   carry=0;ja=j;ka=k
   for i in range(m+1):
    carry=(ja%19+ka%19+carry)//19;ja//=19;ka//=19
    if i<m:need(carry==0,'unexpected lower source carry')
   need(row['carry']==bool(carry)==(alpha<beta),'first uncontrolled digit')
   alphas.append(alpha);cnt+=bool(carry)
  need(sorted(alphas)==list(range(19)) and cnt==obj['first_digit_rejects']==beta_expected,'fiber population')
  counts.append(cnt)
 return lifts,counts

def check_witnesses(c):
 need(len(c['actual_original_witnesses'])==3,'original witness count')
 for row,s in zip(c['actual_original_witnesses'],[42,78,114]):
  n,j,k,p=[row[x] for x in ['n','j','k','ell']]
  need(n==3*2**s and row['s']==s and p==19 and j+k==n and 4<=j<=n//2 and math.gcd(n,j)==1,'valid original pair')
  N,K=row['N'],row['K'];need(N==n//p and k==p*K+1,'original reduction')
  need(row['alpha']==N%p and row['beta']==K%p and row['alpha']<row['beta'],'original first digit witness')
  need(row['source_valuation']==binomial_v(n,3,p)==1,'original source valuation')
  need(row['binomial_valuation']==binomial_v(n,j,p)==binomial_v(N,K,p)>0,'original shared witness')
  need(row['reduced_source_valuation']==binomial_v(N,3,p)==0,'not NC-preserving descent')
  need(row['full_core_recovery_claimed'] is False,'regression not a core input')

def verify(c,deep=True):
 need(c['schema']=='B699-D-R07-exact-v1','schema')
 need(c['source_groups']==[['P','e_P','k',0],['Q','2e_Q','j',0],['H','e+b','k',1],['X','f+v_ell(v)','k',1],['Y','f','j',1]],'source partition/table')
 need(all(x is False for x in c['limits'].values()),'unearned scope/bound claim')
 points=check_polys(c);grid,small=check_grid(c);check_witnesses(c);steps,counts=check_fibers(c)
 return {'polynomial_identities':7,'tensor_points':points,'generic_cases':grid,'exact_binomial_cases':small,'actual_original_witnesses':3,'local_rows':57,'local_lift_steps':steps,'first_digit_local_reject_counts':counts,'local_models_are_original_core_inputs':False}

def negative_tests(c):
 tests=[]
 def test(name,change,checker):
  bad=copy.deepcopy(c);change(bad)
  try:checker(bad)
  except (ValueError,AssertionError,KeyError,ZeroDivisionError,IndexError):tests.append({'name':name,'rejected':True})
  else:raise ValueError('mutation accepted: '+name)
 test('alter_paired_norm_coefficient',lambda z:z['identities']['identities'][4]['coefficients'][0].__setitem__(1,z['identities']['identities'][4]['coefficients'][0][1]+1),check_polys)
 test('drop_one_identity',lambda z:z['identities']['identities'].pop(),check_polys)
 test('drop_shared_b_in_H_strip',lambda z:z['source_groups'][2].__setitem__(1,'e'),lambda z:need(z['source_groups'][2][1]=='e+b','H b missing'))
 test('replace_Q_double_exponent',lambda z:z['source_groups'][1].__setitem__(1,'e_Q'),lambda z:need(z['source_groups'][1][1]=='2e_Q','Q prefix shortened'))
 test('misidentify_v_with_A_at_X',lambda z:z['source_groups'][3].__setitem__(1,'f+v_ell(A)'),lambda z:need(z['source_groups'][3][1]=='f+v_ell(v)','X v not A'))
 test('change_integer_witness_j',lambda z:z['actual_original_witnesses'][0].__setitem__('j',z['actual_original_witnesses'][0]['j']+1),check_witnesses)
 test('claim_NC_descent',lambda z:z['actual_original_witnesses'][0].__setitem__('reduced_source_valuation',1),check_witnesses)
 test('corrupt_grid_hash',lambda z:z['generic_stripping_grid']['buckets']['3'].__setitem__('sha256','0'*64),check_grid)
 test('swap_13_units',lambda z:z['local_fibers'][0]['state13'].__setitem__('P',z['local_fibers'][0]['state13']['Q']),check_fibers)
 test('drop_one_local_digit',lambda z:z['local_fibers'][0]['rows'].pop(),check_fibers)
 test('flip_first_digit_carry',lambda z:z['local_fibers'][0]['rows'][0].__setitem__('carry',not z['local_fibers'][0]['rows'][0]['carry']),check_fibers)
 test('alter_shared_q',lambda z:z['local_fibers'][0]['rows'][0].__setitem__('q',z['local_fibers'][0]['rows'][0]['q']+3),check_fibers)
 test('erase_positive_shared_valuation',lambda z:z['local_fibers'][0].__setitem__('b19',0),check_fibers)
 test('claim_local_global_recovery',lambda z:z['local_fibers'][0].__setitem__('global_integer_core_claimed',True),check_fibers)
 test('change_synchronization_step',lambda z:z['local_fibers'][0].__setitem__('s_step',z['local_fibers'][0]['s_step']+36),check_fibers)
 test('claim_M_absolute_bound',lambda z:z['limits'].__setitem__('M_upper_bound',True),lambda z:need(all(x is False for x in z['limits'].values()),'scope'))
 return tests

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True);ap.add_argument('--output',required=True);ap.add_argument('--negative-tests',action='store_true');args=ap.parse_args()
 c=json.loads(Path(args.certificate).read_text());summary=verify(c);tests=negative_tests(c) if args.negative_tests else []
 receipt={'schema':'B699-D-R07-receiver-v1','status':'PASS','checks':summary,'negative_tests':tests,'external_BL_proved':False,'uniform_paper_theorem_formalized':False,'q6_executed':False,'Lean_executed':False}
 Path(args.output).write_bytes(canon(receipt));print(json.dumps({'status':'PASS',**summary,'negative_tests_rejected':len(tests)}))
if __name__=='__main__':main()
