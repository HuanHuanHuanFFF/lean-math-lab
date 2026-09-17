#!/usr/bin/env python3
"""Second implementation. Does not import the builder or its coefficient lists.

This checks finite certificate obligations, not the whole informal implication
from the original binomial problem. See PROOFS.md for that argument.
"""
import argparse,copy,hashlib,json,platform,time
from pathlib import Path
from math import gcd,isqrt,comb

FIELDS=('m','c','la','mu','kind','u','z')
def identity(row):return tuple(row[x] for x in FIELDS)
def expected():
 out=set()
 # Odd part of n and odd part of the actual gcd, separately.
 for oddn in (1,3):
  for oddg in (1,3):
   if oddn%oddg:continue
   c=oddn//oddg
   for la,mu in ((1,1),(1,3),(3,1)):
    if oddn==1 and la*mu!=3:continue
    if oddn==3 and (la,mu)!=(1,1):continue
    for kind in (0,1,2):
     for u in range(1,129,2):
      for z in range(1,129):
       if u*u*z>128:continue
       if gcd(u,z) not in (1,la):continue
       if c==3 and z%3!=0:continue
       if oddg==3 and z%3!=2:continue
       if la==3 and (gcd(u,3)!=gcd(z,3)):continue
       if kind==0:
        if z%8:continue
       else:
        g2=4 if kind==1 else 0
        if (z+la**3*mu**2*u*u*(1-g2))%16:continue
       out.add((oddg,c,la,mu,kind,u,z))
 return out

def exceptional():
 return {(1,1,3,1,0,1,16),(1,1,3,1,1,1,1),
         (1,3,1,1,0,1,24),(3,1,1,1,0,3,8)}

def prime(p):
 return type(p)==int and p>=5 and all(p%d for d in range(2,isqrt(p)+1))

def headers(cert):
 assert cert['cap']==128 and cert['period']==720,'wrong global specification'
 rows=cert['rows'];keys=[identity(r) for r in rows]
 assert len(set(keys))==len(keys),'duplicate case'
 assert set(keys)==expected(),'incomplete or changed coefficient list'
 for r in rows:
  exc=identity(r) in exceptional()
  assert r['method']==('elementary_exception' if exc else 'joint_congruence'),'wrong exception dispatch'
  if not exc:
   assert r['steps'],'empty covering list'
   for step in r['steps']:
    p=step['p'];assert prime(p),'modulus must be certified prime >=5'
    assert pow(2,cert['period'],p)==1,'invalid exponent period'


def field_check(row,M):
 m,c,la,mu,kind,u,z=identity(row)
 ar=[]
 for b in range(M):
  n9=(m*c*pow(2,b,9))%9
  if (n9 in (4,7))!=(la==3):continue
  if (n9 in (5,8))!=(mu==3):continue
  ar.append(b)
 exponent_rows=list(range(M)) if kind==2 else [kind]
 pairs=[(a,b) for a in exponent_rows for b in ar]
 assert len(pairs)==row['initial_cells'],'wrong domain cardinality'
 counts=[]
 for step in row['steps']:
  p=step['p'];assert prime(p) and pow(2,M,p)==1
  # The square test uses Euler's criterion on (lambda*(n-2j))^2,
  # not the builder's unscaled discriminant table.
  fibers={}
  for h in range(p):
   value=(2*mu*h*(z*h*h+la))%p
   fibers.setdefault(value,[]).append(h)
  powers=[pow(2,i,p) for i in range(M)];cache={};next_pairs=[]
  for a,b in pairs:
   g2=m*m*powers[a]*powers[a]%p;n=m*c*powers[b]%p
   testkey=(g2,n)
   if testkey not in cache:
    value=u*g2*(n-2)%p;ok=False
    for h in fibers.get(value,()):
     D=(la*la*n*n-4*la*(n-1)*(la+z*h*h))%p
     if D==0 or pow(D,(p-1)//2,p)==1:
      ok=True;break
    cache[testkey]=ok
   if cache[testkey]:next_pairs.append((a,b))
  count=len(pairs)-len(next_pairs)
  assert count==step['removed'],'incorrect exclusion count'
  counts.append(count);pairs=next_pairs
 assert not pairs,('uncovered exponent cells',identity(row),pairs[:5])
 return sum(counts)


def exceptions_check():
 # Polynomial identities are tested on grids here; exact expansions are in the paper.
 for h in range(-8,25):
  assert 32*h**3+6*h+2==2*(4*h+1)*(4*h*h-h+1)
  assert h**3+3*h+4==(h+1)*(h*h-h+4)
 # Exception 3: exact tail certificate and all seven small odd H values.
 assert [48,720,505]==[48,96*14-624,48*14**2-624*14-167]
 small3=[]
 for H in range(1,14,2):
  C=24*H*H+1;n=2*C*H+2
  A=24*H*H-24*H-11;D=C*C-24*(n-1)
  assert D==A*A-144*(4*H+1)
  assert D<0 or isqrt(D)**2!=D
  small3.append({'H':H,'C':C,'n':n,'discriminant':D})
 # Exception 4: integral w is used, not a rounded rational center.
 assert [16,16208,1785]==[16,32*1006-15984,16*1006**2-15984*1006-110887]
 small4=[];visited=0
 for H in range(1,1006,2):
  visited+=1
  if (8*H*H+1)%27:continue
  C=(8*H*H+1)//27
  if (C-8*H)%3:continue
  w=(C-8*H)//3;n=2*C*H+2
  A=w-36;D=w*w-24*C
  assert D==A*A-(192*H+1296)
  assert D<0 or isqrt(D)**2!=D
  small4.append({'H':H,'C':C,'n':n,'w':w,'discriminant':D})
 assert len(small4)==13
 return {'elementary_cases':4,'small_case_3':small3,'small_case_4_H_visited':visited,'small_case_4':small4}


def mu_lambda(n):
 return (3 if n%9 in (4,7) else 1,3 if n%9 in (5,8) else 1)

def regression():
 # Direct binomial checks; finite regression only, not an infinite proof.
 rows=[];count=0;stream=hashlib.sha256()
 for odd in (1,3):
  for v in range(0,13):
   n=odd*(1<<v)
   if n>4096 or n<8:continue
   if odd==1 and v%6 not in (2,3,4,5):continue
   B=comb(n,3);pairs=0
   for j in range(4,n//2+1):
    d=gcd(B,comb(n,j))
    while d and not d%2:d//=2
    assert d>1,(n,j)
    stream.update(f'{n},{j},{d}\n'.encode());pairs+=1
   rows.append({'n':n,'pairs':pairs});count+=pairs
 # Nonempty source-window models outside the claimed row family.
 models=[]
 for n,j in ((76672,26775),(175492,60606),(335548,115092)):
  k=n-j;g=gcd(n,j);la,mu=mu_lambda(n);N=(n-1)//la;K=(n-2)//(2*mu)
  assert j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0
  H=gcd(K,j-1);C=K//H
  assert (j//g)*(k//g)%(N*C)==0
  u=(j//g)*(k//g)//(N*C);z=(j-1)*(k-1)//(N*H*H)
  assert C*u*g*g-z*H*H==la
  assert u*g*g*(n-2)==2*mu*H*(z*H*H+la)
  assert la*(n-2*j)**2==la*n*n-4*(n-1)*(la+z*H*H)
  models.append({'n':n,'j':j,'g':g,'u':u,'z':z,'H':H})
 return {'limit_n':4096,'rows':rows,'pairs':count,'witness_gcd_sha256':stream.hexdigest(),'identity_models_not_NC':models}


def mutations(cert):
 rejected=[]
 def reject(name,obj,checker):
  try:checker(obj)
  except (AssertionError,KeyError,ValueError):rejected.append(name)
  else:raise AssertionError('mutation not rejected: '+name)
 a=copy.deepcopy(cert);a['rows'].pop();reject('missing_case',a,headers)
 a=copy.deepcopy(cert);a['rows'][0]['z']+=2;reject('changed_coefficient',a,headers)
 a=copy.deepcopy(cert);a['rows'].append(copy.deepcopy(a['rows'][0]));reject('duplicate_case',a,headers)
 a=copy.deepcopy(cert);a['period']=719;reject('invalid_period',a,headers)
 idx=next(i for i,r in enumerate(cert['rows']) if r['method']=='joint_congruence')
 a=copy.deepcopy(cert);a['rows'][idx]['steps'][0]['p']=9;reject('composite_modulus',a,headers)
 r=copy.deepcopy(cert['rows'][idx]);r['steps'][0]['removed']+=1
 reject('wrong_count',r,lambda x:field_check(x,720))
 r=copy.deepcopy(cert['rows'][idx]);r['steps'].pop()
 reject('missing_final_obstruction',r,lambda x:field_check(x,720))
 a=copy.deepcopy(cert);i=next(i for i,r in enumerate(a['rows']) if r['method']=='elementary_exception');a['rows'][i]['method']='joint_congruence';a['rows'][i]['steps']=[]
 reject('exception_not_closed',a,headers)
 return rejected


def main():
 p=argparse.ArgumentParser();p.add_argument('--certificate',required=True);p.add_argument('--output',required=True);a=p.parse_args();start=time.monotonic()
 raw=Path(a.certificate).read_bytes();cert=json.loads(raw);headers(cert)
 total=0;modular=0
 for row in cert['rows']:
  if row['method']=='joint_congruence':total+=field_check(row,cert['period']);modular+=1
 out={'status':'PASS_FINITE_CERTIFICATE_AND_REGRESSIONS','claim':'RQ128 with exact PROOFS.md hypotheses',
      'certificate_sha256':hashlib.sha256(raw).hexdigest(),'cases':len(cert['rows']),
      'modular_cases':modular,'all_exponent_cells_excluded':total,
      'exceptions':exceptions_check(),'regression':regression(),'mutations_rejected':mutations(cert),
      'python':platform.python_version(),'elapsed_seconds':round(time.monotonic()-start,3),
      'limits':'Same-author independent implementation. Not Lean, not an independent mathematical review; paper bridge obligations remain at author-proof grade.'}
 output=Path(a.output);output.parent.mkdir(parents=True,exist_ok=True);output.write_text(json.dumps(out,indent=2)+'\n')
 print(json.dumps({k:v for k,v in out.items() if k not in ('exceptions','regression')},indent=2));print('regression pairs',out['regression']['pairs'])
if __name__=='__main__':main()
