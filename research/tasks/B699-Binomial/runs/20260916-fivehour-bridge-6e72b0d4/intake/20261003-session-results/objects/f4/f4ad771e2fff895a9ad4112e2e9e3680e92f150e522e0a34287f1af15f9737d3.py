#!/usr/bin/env python3
"""R5 exact checker. Python standard library; no CAS/network/Lean/repository.
All eliminants are checked as fixed-size integer Sylvester determinants at
strictly more values than their proven polynomial degree bounds.
"""
from __future__ import annotations
import sys,json,time,math
from pathlib import Path
from fractions import Fraction
sys.path.insert(0,str(Path(__file__).resolve().parent))
import ipoly as ip
ROOT=Path(__file__).resolve().parents[1]
CHECKS=[];DETS=0;TRANSPORT_VALUES=0

def check(name,ok,detail=None):
 if not ok:raise AssertionError(name)
 CHECKS.append({'name':name,**({'detail':detail}if detail is not None else {})})
def load(name):return json.loads((ROOT/name).read_text())
def integ(x):
 q=Fraction(x)
 if q.denominator!=1:raise ValueError('Expected integral coefficient')
 return q.numerator
def p1(ts):return ip.unpack(ts,1)
def p2(ts):return ip.unpack(ts,2)
def one(n):return ip.const(n,1)
def pow2(p,k):return ip.power(p,k,2)
def ev1(p,x):
 if not p:return 0
 v=0
 for i in range(ip.degree(p,0),-1,-1):v=v*x+p.get((i,),0)
 return v

def trim(a):
 a=list(a)
 while a and not a[-1]:a.pop()
 return a

def prem(a,b,p):
 a=trim([x%p for x in a]);b=trim([x%p for x in b])
 if not b:raise ZeroDivisionError
 iv=pow(b[-1],-1,p)
 while len(a)>=len(b):
  d=len(a)-len(b);c=a[-1]*iv%p
  for j,x in enumerate(b):a[d+j]=(a[d+j]-c*x)%p
  a=trim(a)
 return a

def pgcd(a,b,p):
 while b:a,b=b,prem(a,b,p)
 return [v*pow(a[-1],-1,p)%p for v in a]if a else []
def arr(p):return [p.get((i,),0)for i in range(ip.degree(p,0)+1)]
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def coeff_at_v(P,x,degree_r=None):
 d=ip.degree(P,1)if degree_r is None else degree_r
 vals=[0]*(d+1);powers=[1]
 for i in range(ip.degree(P,0)):powers.append(powers[-1]*x)
 for (i,j),c in P.items():vals[j]+=c*powers[i]
 return vals

def determinant_identity(P,Q,out,name):
 global DETS
 m,n=ip.degree(P,1),ip.degree(Q,1)
 bound=n*ip.degree(P,0)+m*ip.degree(Q,0)
 check(name+' degree bound',ip.degree(out,0)<=bound,{'bound':bound,'actual_degree':ip.degree(out,0),'fixed_matrix_order':m+n})
 t=time.monotonic()
 for v in range(2,bound+3):
  a=coeff_at_v(P,v,m);b=coeff_at_v(Q,v,n)
  actual=ip.det_int(ip.sylvester(a,b));expected=ev1(out,v)
  if actual!=expected:raise AssertionError(f'{name}: determinant mismatch at v={v}')
  DETS+=1
 check(name+' COMPLETE exact identity',True,{'integer_evaluations':bound+1,'seconds':round(time.monotonic()-t,4)})
 print(name+' PASS',file=sys.stderr,flush=True)

def coverage():
 data=load('certificates/coverage.json');u,y=ip.var(2,0),ip.var(2,1);o=one(2)
 um=ip.sub(u,o);ym=ip.sub(y,o)
 J=ip.add(ip.add(pow2(u,2),ip.mul(u,pow2(y,2))),ip.sub(y,ip.scale(ip.mul(u,y),3)))
 A=ip.sub(ip.scale(ip.mul(pow2(u,3),y),8),ip.scale(ip.mul(pow2(um,2),pow2(ym,3)),5))
 jn=ip.add(ip.sub(ip.scale(ip.mul(u,y),2),ip.scale(u,3)),o);jd=um
 an=ip.sub(ip.scale(ip.mul(pow2(ym,2),um),5),ip.scale(pow2(u,2),8));ad=ip.scale(ip.mul(u,ym),2)
 jlhs=[ip.sub(pow2(jn,2),ip.mul(ip.sub(o,ip.scale(u,4)),pow2(jd,2))),ip.sub(ip.scale(ip.product(ip.sub(jn,jd),jd,y),2),pow2(ip.add(jn,jd),2))]
 x=ip.sub(ip.scale(an,2),ip.scale(ad,5));z=ip.sub(pow2(an,2),ip.scale(pow2(ad,2),10))
 alhs=[ip.add(ip.mul(ym,z),ip.scale(ip.mul(u,ip.sub(ip.scale(ip.mul(an,ad),2),ip.scale(pow2(ad,2),5))),2)),
 ip.sub(ip.product(u,pow2(x,2),ad),ip.add(ip.sub(pow2(an,3),ip.scale(ip.mul(an,pow2(ad,2)),30)),ip.scale(pow2(ad,3),65))),
 ip.add(ip.product(y,x,z),ip.scale(ip.mul(pow2(ip.sub(an,ip.scale(ad,4)),2),ad),5))]
 v=ip.var(1,0);oo=one(1)
 maps={
 'J':{'nu':ip.sub(oo,ip.power(v,2,1)),'du':ip.const(1,4),'ny':ip.power(ip.add(v,oo),2,1),'dy':ip.scale(ip.sub(v,oo),2),'gates':[ip.sub(v,oo),ip.add(v,oo),ip.add(ip.power(v,2,1),ip.const(1,3))]},
 'A5':{'nu':ip.add(ip.sub(ip.power(v,3,1),ip.scale(v,30)),ip.const(1,65)),'du':ip.power(ip.sub(ip.scale(v,2),ip.const(1,5)),2,1),'ny':ip.scale(ip.power(ip.sub(v,ip.const(1,4)),2,1),-5),'dy':ip.mul(ip.sub(ip.scale(v,2),ip.const(1,5)),ip.sub(ip.power(v,2,1),ip.const(1,10))),'gates':[ip.sub(v,ip.const(1,4)),ip.sub(ip.scale(v,2),ip.const(1,5)),ip.sub(ip.power(v,2,1),ip.const(1,10)),ip.add(ip.sub(ip.power(v,3,1),ip.scale(v,30)),ip.const(1,65))]}}
 for name,br,num,den,lhs in [('J',J,jn,jd,jlhs),('A5',A,an,ad,alhs)]:
  z=data[name];check(name+' original curve and inverse binding',p2(z['branch'])==br and p2(z['inverse_numerator'])==num and p2(z['inverse_denominator'])==den)
  for i,(left,record)in enumerate(zip(lhs,z['identities'])):
   check(name+f' coverage polynomial identity {i+1}',left==p2(record['lhs'])==ip.mul(br,p2(record['quotient'])))
  for key in ['nu','du','ny','dy']:check(name+' forward map '+key,p1(z['map'][key])==maps[name][key])
  check(name+' all forward gate factors',[p1(g)for g in z['map']['gates']]==maps[name]['gates'])
  # Original curve identity after the forward map, including all denominator powers.
  a,b=ip.degree(br,0),ip.degree(br,1);M=maps[name];out={}
  for (i,j),c in br.items():
   term=ip.product(ip.power(M['nu'],i,1),ip.power(M['du'],a-i,1),ip.power(M['ny'],j,1),ip.power(M['dy'],b-j,1))
   out=ip.add(out,ip.scale(term,c))
  check(name+' exact forward curve identity',not out)
 return maps,J,A

def transports(maps):
 global TRANSPORT_VALUES
 g=load('inputs/generic.json');sources={'P5':g['B5'],**{f'G{i}':g['low'][str(i)]['stripped']for i in range(4,-1,-1)}}
 output={}
 for branch,M in maps.items():
  dat=load(f'certificates/param_{branch}.json');output[branch]={}
  for name,ts in sources.items():
   P=ip.drop_last(ts);rec=dat['polys'][name];Q=p2(rec['terms']);a,b=ip.degree(P,0),ip.degree(P,1);d=ip.degree(P,2)
   check(branch+' '+name+' original degrees',a==rec['input_u_degree'] and b==rec['input_y_degree'])
   powers=rec['gate_powers'];check(branch+' '+name+' stripping domain',len(powers)==len(M['gates'])+1 and all(isinstance(k,int)and k>=0 for k in powers))
   bound=max(i*ip.degree(M['nu'],0)+(a-i)*ip.degree(M['du'],0)+j*ip.degree(M['ny'],0)+(b-j)*ip.degree(M['dy'],0) for (i,j,k)in P)
   rb=ip.degree(Q,0)+sum(k*ip.degree(f,0)for f,k in zip(M['gates'],powers));bound=max(bound,rb)
   den,content=integ(rec['clear_denominator']),integ(rec['content']);check(branch+' '+name+' nonzero scalar clearing',den!=0 and content!=0 and ip.degree(Q,1)+powers[-1]<=d)
   for v in range(2,bound+3):
    un,ud,yn,yd=(ev1(M[k],v)for k in ['nu','du','ny','dy'])
    us=[un**i*ud**(a-i)for i in range(a+1)];ys=[yn**j*yd**(b-j)for j in range(b+1)]
    lhs=[0]*(d+1)
    for(i,j,k),c in P.items():lhs[k]+=den*c*us[i]*ys[j]
    scale=content
    for factor,k in zip(M['gates'],powers):scale*=ev1(factor,v)**k
    rhs=[0]*(d+1);co=coeff_at_v(Q,v)
    for k,c in enumerate(co):rhs[k+powers[-1]]=scale*c
    if lhs!=rhs:raise AssertionError(f'{branch} {name} full transport at {v}')
    TRANSPORT_VALUES+=1
   check(branch+' '+name+' COMPLETE source transport',True,{'v_degree_bound':bound,'integer_values':bound+1,'all_r_coefficients_compared':d+1,'gate_powers':powers})
   output[branch][name]=Q
 return output

def terminals(pp):
 for branch in ['J','A5']:
  j=load(f'certificates/terminal_{branch}.json');core=p1(j['core']);factors=[(p1(z['polynomial']),z['power'])for z in j['core_factors']]
  product=one(1)
  for f,k in factors:product=ip.mul(product,ip.power(f,k,1))
  check(branch+' full common factor product',product==core)
  cof=[]
  for name in ['G4','G0']:
   rec=j['resultants'][name];out=p1(rec['polynomial']);q=p1(rec['cofactor']);c=integ(rec['scalar'])
   check(branch+' '+name+' exact cofactor identity',c!=0 and ip.scale(ip.mul(core,q),c)==out)
   determinant_identity(pp[branch]['P5'],pp[branch][name],out,branch+' Res(P5,'+name+')')
   cof.append(q)
  gc=j['cofactor_gcd_certificate'];p=gc['prime'];check(branch+' gcd modulus prime',prime(p))
  a,b=[[c%p for c in arr(q)]for q in cof]
  check(branch+' gcd leading coefficients preserved',all(t and t[-1] for t in [a,b]) and [len(a)-1,len(b)-1]==gc['degrees'] and [a[-1],b[-1]]==gc['leading_coefficients'])
  check(branch+' primitive cofactor gcd = 1',pgcd(a,b,p)==[1])
  if branch=='J':
   v=ip.var(1,0);onev=one(1)
   quart=ip.add(ip.add(ip.sub(ip.power(v,4,1),ip.scale(ip.power(v,3,1),2)),ip.scale(ip.power(v,2,1),4)),ip.add(ip.scale(v,2),ip.const(1,11)))
   sos=ip.add(ip.add(ip.power(ip.add(ip.sub(ip.power(v,2,1),v),onev),2,1),ip.power(ip.add(v,ip.const(1,2)),2,1)),ip.const(1,6))
   expected=[(ip.add(v,onev),56),(ip.add(ip.power(v,2,1),onev),19),(ip.add(ip.power(v,2,1),ip.const(1,3)),19),(quart,16)]
   check('J all common factors classified',factors==expected)
   check('J quartic strictly-positive SOS identity',quart==sos)
  else:
   v=ip.var(1,0);expected_small=[(ip.sub(ip.scale(v,2),ip.const(1,5)),9),(ip.sub(v,ip.const(1,4)),62),(ip.add(ip.sub(ip.power(v,3,1),ip.scale(v,30)),ip.const(1,65)),40)]
   check('A5 excluded parameter gate factors',factors[:3]==expected_small)
   obstruct=j['rational_root_obstructions'];check('A5 precisely two remaining obstructions',len(obstruct)==2 and [ip.degree(f,0)for f,k in factors[3:]]==[10,20])
   for z,(f,k)in zip(obstruct,factors[3:]):
    p=z['prime'];vals=[ev1(f,a)%p for a in range(p)]
    check('A5 degree '+str(z['degree'])+' complete no-rational-root certificate',prime(p) and f==p1(z['polynomial']) and ip.degree(f,0)==z['degree'] and f.get((z['degree'],),0)%p==z['leading_mod_prime']!=0 and vals==z['values'] and all(vals))

def b9_gate():
 bf=load('inputs/R4_branch_factors.json');B=p2(next(z['terms']for z in bf['KN']['factors']if z['degrees']==[9,10]));u,y=ip.var(2,0),ip.var(2,1);o=one(2)
 H=ip.add(ip.add(ip.sub(pow2(u,2),ip.mul(u,pow2(y,2))),ip.scale(ip.mul(u,y),3)),ip.sub(pow2(ip.sub(y,o),2),ip.scale(u,2)))
 j=load('certificates/B9H.json');out=p1(j['resultant']);prod=ip.const(1,integ(j['scalar']))
 for f in j['factors']:prod=ip.mul(prod,ip.power(p1(f['terms']),f['power'],1))
 check('B9-H exact factor identity',prod==out)
 # swap coordinates so coefficient_at_v treats y as the interpolation variable.
 swap=lambda p:{(b,a):c for(a,b),c in p.items()}
 determinant_identity(swap(B),swap(H),out,'B9 Res_u(B9,H)')
 v=ip.var(1,0);factors=[(p1(f['terms']),f['power'])for f in j['factors']]
 expected=[(v,4),(ip.sub(v,one(1)),12),(ip.add(ip.sub(ip.scale(ip.power(v,2,1),2),ip.scale(v,2)),one(1)),2),(ip.add(ip.sub(ip.power(v,2,1),ip.scale(v,3)),one(1)),4)]
 check('B9-H all factors classified',factors==expected)
 check('B9-H rational quadratic obstruction discriminant 5 nonsquare',math.isqrt(5)**2!=5)


def fqtrim(a):
 a=list(map(Fraction,a))
 while a and not a[-1]:a.pop()
 return a

def fqadd(a,b):
 c=[Fraction(0)]*max(len(a),len(b))
 for i,x in enumerate(a):c[i]+=x
 for i,x in enumerate(b):c[i]+=x
 return fqtrim(c)

def fqmul(a,b):
 if not a or not b:return []
 c=[Fraction(0)]*(len(a)+len(b)-1)
 for i,x in enumerate(a):
  for j,y in enumerate(b):c[i+j]+=x*y
 return fqtrim(c)

def fqrem(a,b):
 a=fqtrim(a);b=fqtrim(b)
 while a and len(a)>=len(b):
  d=len(a)-len(b);c=a[-1]/b[-1]
  for j,x in enumerate(b):a[d+j]-=c*x
  a=fqtrim(a)
 return a

def fqts(ts):
 d=max((e[0]for e,c in ts),default=-1);a=[Fraction(0)]*(d+1)
 for e,c in ts:a[e[0]]=Fraction(c)
 return fqtrim(a)

def boundary_rur():
 j=load('certificates/boundary_RUR.json');q=fqts(j['q']);rp=fqts(j['r']);yp=fqts(j['y'])
 check('Boundary RUR exact quartic',q==list(map(Fraction,[3,-4,4,16,8])))
 check('Boundary RUR exact coordinate functions',rp==[Fraction(-1,6),Fraction(-4,9),Fraction(-4,3),Fraction(-8,9)] and yp==[Fraction(1,3),Fraction(-2,3),Fraction(4,3),Fraction(4,3)])
 p=101;a=[int(c)%p for c in q];der=[(i*int(q[i]))%p for i in range(1,len(q))]
 check('Boundary RUR has four DISTINCT complex roots',a[-1]!=0 and pgcd(a,der,p)==[1])
 mod=lambda a:fqrem(a,q)
 g=load('inputs/generic.json');old=load('inputs/R1_scale.json')
 sources={'P5':g['B5'],**{f'G{i}':g['low'][str(i)]['stripped']for i in range(4,-1,-1)},'N':g['N'],'K':g['K'],'D':old['D']}
 out={}
 for name,ts in sources.items():
  groups={};my=0;mr=0
  for(eu,ey,er,unused),c in ts:
   if unused:raise ValueError('unexpected auxiliary scale power')
   my=max(my,ey);mr=max(mr,er);key=(ey,er)
   if key not in groups:groups[key]={}
   groups[key][eu]=Fraction(c)
  Y=[[Fraction(1)]];R=[[Fraction(1)]]
  for _ in range(my):Y.append(mod(fqmul(Y[-1],yp)))
  for _ in range(mr):R.append(mod(fqmul(R[-1],rp)))
  ans=[]
  for(ey,er),co in groups.items():
   row=[co.get(i,Fraction(0))for i in range(max(co)+1)]
   ans=fqadd(ans,mod(fqmul(mod(row),mod(fqmul(Y[ey],R[er])))))
  ans=mod(ans);out[name]=ans
  check('Boundary RUR source remainder '+name,ans==fqts(j['remainders'][name]))
 check('Boundary RUR all six original polynomials vanish',all(not out[n]for n in ['P5','G4','G3','G2','G1','G0']))
 check('Boundary RUR K=0: all four points OUTSIDE Omega',not out['K'])
 check('Boundary RUR N is a unit in the quartic algebra',mod(fqmul(out['N'],fqts(j['N_inverse'])))==[1])
 mr=mod(fqadd(fqadd([12*c for c in fqmul(rp,rp)],[4*c for c in rp]),[3]))
 check('Boundary RUR r has no real values',not mr and 4**2-4*12*3<0)
 sos=fqadd([8*c for c in fqmul([Fraction(-1,4),Fraction(1),Fraction(1)],[Fraction(-1,4),Fraction(1),Fraction(1)])],[Fraction(5,2)])
 check('Boundary RUR quartic strictly-positive SOS',q==sos)

def main():
 start=time.monotonic();maps,J,A=coverage();pp=transports(maps);terminals(pp);b9_gate();boundary_rur()
 data={'status':'PASS','checks':len(CHECKS),'determinants_checked':DETS,'transport_integer_values':TRANSPORT_VALUES,'seconds':round(time.monotonic()-start,4),'checks_detail':CHECKS,'scope':'J=0 real-base terminal and A5=0 rational-base terminal only; general finite endpoint NOT completed','cas_used':False,'lean_run':False,'repository_touched':False,'external_independent_math_review':False}
 print(json.dumps(data,ensure_ascii=False,indent=2))
if __name__=='__main__':
 try:main()
 except Exception as e:
  print(json.dumps({'status':'FAIL','error':str(e)},ensure_ascii=False),file=sys.stderr);raise
