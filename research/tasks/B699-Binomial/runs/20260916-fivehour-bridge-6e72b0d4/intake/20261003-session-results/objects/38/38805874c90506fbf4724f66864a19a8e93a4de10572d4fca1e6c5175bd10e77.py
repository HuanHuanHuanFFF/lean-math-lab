from pathlib import Path
import re,json,sys
import sympy as s
W=Path('/mnt/data/r7_work');t,r=s.symbols('t r')
def parsepoly(path):
 text=Path(path).read_text().strip().replace('^','**')
 text=re.sub(r't(\d+)',r't**\1',text)
 text=re.sub(r'(\d)(t)',r'\1*\2',text)
 return s.Poly(s.sympify(text),t,domain=s.QQ)
def serial(f):return [str(c)for c in f.all_coeffs()[::-1]]
ps={n:json.loads((W/f'H_{n}.json').read_text())for n in ['P5','V4','V3','V2','V1','V0','N','K']}
E={n:parsepoly(W/f'H_E{n}.txt')for n in [4,0]};G=parsepoly(W/'H_gcd.txt')
sys.path.insert(0,str(W/'input_r6/B699-ProB-REG3-N3-MEMBERS-20261002-R6/code'));from ipoly import det_int,sylvester
for i in [4,0]:
 def ev(n,v):
  ar=[0]*10
  for (a,b),c in ps[n]['poly']:ar[b]+=int(c)*v**a
  while ar and ar[-1]==0:ar.pop()
  return ar
 a=ev('P5',0);b=ev('V'+str(i),0);actual=det_int(sylvester(a,b));expect=int(E[i].eval(0));print(i,'signratio',actual//expect,'degrees',len(a)-1,len(b)-1)
 if actual==-expect:E[i]=-E[i]
 elif actual!=expect:raise RuntimeError('no simple sign match')
 q,rem=E[i].div(G);assert rem.is_zero
 ps['E'+str(i)]={'poly':serial(E[i]),'quotient':serial(q),'degree_bound':5*max(a for (a,b),c in ps['V'+str(i)]['poly'])+9*max(a for (a,b),c in ps['P5']['poly'])}
ps['G']={'poly':serial(G),'factorization':[[serial(s.Poly(f,t)),int(e)]for f,e in s.factor_list(G.as_expr())[1]]}
A=s.Poly.from_list([int(c) for c in reversed(ps['E4']['quotient'])],t,domain=s.ZZ);B=s.Poly.from_list([int(c) for c in reversed(ps['E0']['quotient'])],t,domain=s.ZZ)
for p in list(s.primerange(7,200)):
 if int(A.LC())%p and int(B.LC())%p and s.gcd(s.Poly(A,t,modulus=p),s.Poly(B,t,modulus=p)).degree()==0:
  print('cofactor gcd prime',p);ps['cofactor_coprime_prime']=p;break
(W/'H_data.json').write_text(json.dumps(ps))
# Expand the two small lifted identities r = U P5 + V V4 + F Q; domain QQ[t,r]
for d in [2,4]:
 c=json.loads((W/f'H_terminal_{d}.json').read_text());F=s.Poly.from_list([s.Rational(x) for x in reversed(c['F'])],t,domain=s.QQ).as_expr()
 def poly(ts):return s.Poly.from_dict({tuple(e):s.Rational(z)for e,z in ts},(t,r),domain=s.QQ)
 src=[poly(ps[n]['poly'])for n in c['names']];ms=[poly(x)for x in c['multipliers']]
 target=s.Poly(r**c['gate_power'],t,r,domain=s.QQ)
 remainder=target-sum((m*f for m,f in zip(ms,src)),s.Poly(0,t,r,domain=s.QQ));Q,rem=remainder.div(s.Poly(F,t,r,domain=s.QQ));assert rem.is_zero
 c['F_multiplier']=[[list(e),str(z)]for e,z in Q.terms()]
 (W/f'H_lifted_{d}.json').write_text(json.dumps(c));print('lifted',d,len(c['F_multiplier']))
