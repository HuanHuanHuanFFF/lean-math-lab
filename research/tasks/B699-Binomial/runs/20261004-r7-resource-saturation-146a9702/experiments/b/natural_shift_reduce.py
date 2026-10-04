from reg3_source import *
import math
fs,gates,provenance=sources();st=time.monotonic();E=u*y-y+1
q={4:fs['V4'],3:2*fs['V3'],2:y*fs['V2'],1:2*u*y*y*fs['V1'],0:u*u*(u-1)**2*y**3*(y-1)**2*fs['V0']}
T=sum((q[i]*E**i for i in range(5)),R.zero);P=fs['P5'];p5=R.from_dict({(a,b,0):c for (a,b,k),c in P.items() if k==5})
rem=T;quot=R.zero;steps=[]
while rem and rem.degree(r)>=5:
    d=rem.degree(r);lc=R.from_dict({(a,b,0):c for (a,b,k),c in rem.items() if k==d})
    qq,rr=lc.div(p5)
    if rr:steps.append({'at_r_degree':d,'leading_exact_division':False,'remainder_terms':len(rr)});break
    mult=qq*r**(d-5);quot+=mult;rem-=mult*P;steps.append({'removed_r_degree':d,'multiplier_terms':len(qq),'leading_exact_division':True})
assert T==quot*P+rem
out={'memory':memory(),'input_combination':'V4*E^4+2*V3*E^3+y*V2*E^2+2*u*y^2*V1*E+u^2*(u-1)^2*y^3*(y-1)^2*V0','T_stats':stats(T),'steps':steps,'remainder_stats_before_basic_cancellation':stats(rem)}
fac=[];t=rem
for name,v in [('u',u),('y',y),('u-1',u-1),('y-1',y-1),('E',E),('r',r)]:
    k=0
    while t and not t.rem(v):t=t.exquo(v);k+=1
    fac.append([name,k])
co=math.gcd(*[int(c) for c in t.values()]);t/=co
out|={'cancelled_factors':fac,'scalar':str(co),'reduced_stats':stats(t),'elapsed_seconds':round(time.monotonic()-st,3)}
(OUT/'09-shift-reduction.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8');print(json.dumps(out),flush=True)
