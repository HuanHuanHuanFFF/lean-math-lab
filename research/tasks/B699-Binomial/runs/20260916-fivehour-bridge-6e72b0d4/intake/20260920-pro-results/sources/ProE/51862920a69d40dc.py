"""Independent verifier: full-degree integer grids and trial-division primes.
Does not import primary.py or poly.py.
"""
from __future__ import annotations
import itertools,json,math,sys
from pathlib import Path
NAMES=['m','P','b','t','k','d','z']
BOUNDS={
 'R':[1,1,0,0,0,0,0], 'N':[2,2,0,0,0,0,0],
 'f0':[2,2,2,1,0,0,0], 'f1':[2,2,2,1,0,0,0], 'f2':[3,2,2,1,0,0,0],
 'positive_f1':[2,2,2,1,0,0,0],
 'kappa_numerator':[2,1,2,0,0,0,0], 'kappa_gap':[2,2,2,0,0,0,0],
 'zero_square0':[4,2,2,0,0,0,0], 'zero_square2':[4,2,2,0,0,0,0],
 'cubic_threshold_gap':[4,0,0,0,0,1,1], 'linear_threshold_gap':[2,0,0,0,0,1,1]}

def value(name,v):
 m,P,b,t,k,d,z=v;R=m*P-2;N=2*(m*P-1)**2-1
 S=(b*b-4*m*m)*P+3*b+8*m
 if name=='R':return R
 if name=='N':return N
 if name=='f0':
  num=b*(b*P-1)-(P*t-b)*N
  assert num%P==0;return num//P
 if name=='f1':
  num=b*(b*P+1)-(b-P*t)*N
  assert num%P==0;return num//P
 if name=='f2':
  num=S-(3*b+8*m-P*t)*N
  assert num%P==0;return num//P
 if name=='positive_f1':
  Np=2*(m*P+1)**2-1
  num=b*(b*P+1)-(b-P*t)*Np
  assert num%P==0;return num//P
 if name=='kappa_numerator':return S
 if name=='kappa_gap':return b*N-S
 if name=='zero_square0':return (b+m*R)**2-m*m*(m*P-1)*(3*m*P-5)
 if name=='zero_square2':return (b-3*m*R)**2-m*m*(m*P-1)*(3*m*P-5)
 if name=='cubic_threshold_gap':return m*(64*d*m**3+z)-2-60*d*m**4
 if name=='linear_threshold_gap':return m*(8*d*m+z)-2-5*d*m*m
 raise ValueError(name)

def eval_terms(terms,v):
 return sum(c*math.prod(x**e for x,e in zip(v,es)) for es,c in terms)

def slot_table():
 # Reconstruct factors from 4 b^2=(s-c)^2 m^2 and the three b^2 residues.
 rows=[]
 for c in range(3):
  r=[]
  for s in range(3):
   if c==0:coef=(4,-s*s)
   elif c==1:coef=(4,(s-1)**2)
   else:coef=(4,(s-2)**2-16)
   div=math.gcd(abs(coef[0]),abs(coef[1]))
   r.append([coef[0]//div,coef[1]//div])
  rows.append(r)
 caps=[2,1,4];pairs=[]
 for c in range(3):
  for s1,s2 in [(0,1),(0,2),(1,2)]:
   factors=[rows[c][s1]]
   if rows[c][s2]!=factors[0]:factors.append(rows[c][s2])
   prod=1
   for a,b in factors:prod*=max(abs(b),abs(a*caps[c]+b))
   pairs.append({'c':c,'slots':[s1,s2],'factors':factors,'m_degree':2*len(factors),'bound_coefficient':prod})
 return {'caps':caps,'factors':rows,'pairs':pairs}

def sieve(n):
 a=bytearray(b'\1')*(n+1);a[:2]=b'\0\0'
 for i in range(2,math.isqrt(n)+1):
  if a[i]:a[i*i:n+1:i]=b'\0'*(((n-i*i)//i)+1)
 return [i for i in range(2,n+1) if a[i]]

def modpower(a,e,n):
 r=1
 for bit in bin(e)[2:]:
  r=(r*r)%n
  if bit=='1':r=(r*a)%n
 return r

def prime_certificates(pc):
 primes=sieve(math.isqrt(max(map(int,pc))))
 for text,rec in pc.items():
  n=int(text);assert n>=2
  assert all(n%q for q in primes if q*q<=n),'trial division rejected composite'
  if n==2:
   assert rec=={'factors':[],'witnesses':{}};continue
  fs=rec['factors'];assert fs==sorted(fs) and len({q for q,e in fs})==len(fs)
  assert math.prod(q**e for q,e in fs)==n-1
  assert set(rec['witnesses'])=={str(q) for q,e in fs}
  for q,e in fs:
   assert str(q) in pc and e>=1
   a=rec['witnesses'][str(q)]
   assert 1<a<n and modpower(a,n-1,n)==1
   assert math.gcd(modpower(a,(n-1)//q,n)-1,n)==1

def iso(v):
 exp=0
 while v%3==0:v//=3;exp+=1
 return 3 if exp==1 else 1

def carries(n,j,p):
 a=j;b=n-j;carry=0;total=0
 while a or b or carry:
  carry=(a%p+b%p+carry)//p;total+=carry;a//=p;b//=p
 return total

def check_row(r,pc):
 assert set(r)=={'X','n','exponent_n','P','p','h','m','d3','factor_Xminus','factor_Xplus','new_threshold','previous_negative_threshold','omega_K','omega_M'}
 assert r['exponent_n']==83 and r['X']==1<<41 and r['n']==1<<83
 X=r['X'];P=r['P'];m=r['m'];d=r['d3']
 assert P==8831418697 and r['p']==P and r['h']==1 and m==249
 assert m*P-1==X and math.gcd(m,P)==1 and str(P) in pc
 for key,number in [('factor_Xminus',X-1),('factor_Xplus',X+1)]:
  fac=r[key];assert len({p for p,e in fac})==len(fac)
  assert math.prod(p**e for p,e in fac)==number
  assert all(str(p) in pc and e>=1 for p,e in fac)
 assert r['factor_Xminus']==[[13367,1],[164511353,1]]
 assert r['factor_Xplus']==[[3,1],[83,1],[P,1]]
 assert d==iso(X-1)==1 and iso(X+1)==3
 assert r['new_threshold']==64*d*m**3<=P
 assert r['previous_negative_threshold']==542*m**5>P
 assert r['omega_K']==4 and r['omega_M']==5
 assert len(r['factor_Xminus'])<=2

def check_shell(sh):
 keys={'t','m','r','R','P','X','b','j','n','legal','g','W1_remainder','W2_full_remainder','opposite_remainder','slots','p_witness','v_binom_n3','v_binom_nj','P_factorization'}
 assert set(sh)==keys
 t=sh['t'];assert t==2;m=t**3-1;assert m==sh['m']==7
 rs=[3*m*m-t,15*m*m-4*t,(4*m*m-t)//2]
 assert rs==sh['r'] and all(math.gcd(rs[i],rs[j])==1 for i in range(3) for j in range(i))
 R=math.prod(rs);assert R==sh['R'] and iso(R)==1
 P=(R+2)//m;assert P==sh['P'] and m*P==R+2 and P%2
 X=m*P-1;assert X==sh['X'];n=2*X*X;assert n==sh['n']
 b=sh['b'];assert 0<=b<R
 assert (b+m)%rs[0]==0 and (2*b+m)%rs[1]==0 and b%rs[2]==0
 j=b*P+2;assert j==sh['j'] and sh['legal']==(4<=j<=X*X)==True
 assert sh['g']==math.gcd(n,j)==1
 assert sh['slots']==[j%q for q in rs]==[0,1,2]
 assert sh['W1_remainder']==j*(j-1)%(n-1)!=0
 K=(X*X-1)//iso(X*X-1)
 assert sh['W2_full_remainder']==j*(j-1)*(j-2)%K
 assert sh['opposite_remainder']==j*(j-1)*(j-2)%R==0
 assert sh['p_witness']==5
 assert sh['v_binom_n3']==carries(n,3,5)>0
 assert sh['v_binom_nj']==carries(n,j,5)>0
 assert sh['P_factorization']==[[3,1],[31,1],[113,1],[139,1]]
 assert math.prod(p**e for p,e in sh['P_factorization'])==P
 assert 64*m**3<P<542*m**5

def validate(c):
 assert set(c)=={'format','names','polynomials','slot_table','prime_certificates','row','shell','iso3_tests'}
 assert c['format']=='B699-E-TWO-SLOT-CUBIC-v1' and c['names']==NAMES
 assert set(c['polynomials'])==set(BOUNDS)
 grid_count=0
 for name,bounds in BOUNDS.items():
  terms=c['polynomials'][name]
  assert terms==sorted(terms) and len({tuple(e) for e,a in terms})==len(terms)
  for es,a in terms:
   assert len(es)==7 and isinstance(a,int) and a!=0
   assert all(isinstance(e,int) and 0<=e<=d for e,d in zip(es,bounds))
  for v in itertools.product(*(range(1,d+2) for d in bounds)):
   assert eval_terms(terms,v)==value(name,v),'degree-complete grid mismatch'
   grid_count+=1
 assert c['slot_table']==slot_table()
 prime_certificates(c['prime_certificates'])
 check_row(c['row'],c['prime_certificates'])
 check_shell(c['shell'])
 assert c['iso3_tests']==[[1,1],[3,3],[9,1],[27,1],[15,3],[45,1],[63,1]]
 assert all(iso(v)==d for v,d in c['iso3_tests'])
 return grid_count

if __name__=='__main__':
 path=Path(sys.argv[1]) if len(sys.argv)>1 else Path(__file__).resolve().parents[1]/'certificates/certificate.json'
 count=validate(json.loads(path.read_text()))
 print('PASS_INDEPENDENT_COMPLETE_GRIDS_TRIAL_PRIMES_AND_DIGIT_CARRIES',count)
