import math, json
from scipy.optimize import differential_evolution
# H integral of log binomial on continuum, with n=Xi, j=k=n/2.
def Q(z):
 return 0.0 if z==0 else z*z/2*math.log(z)-z*z/4

def fall_bin_int(a,b):
 # int_0^b [a log a-(a-h)log(a-h)-h log h] dh
 return b*a*math.log(a)-Q(a)+Q(a-b)-Q(b)

def rise_bin_int(a,b):
 # int_0^b [(a+h)log(a+h)-a log a-h log h] dh
 return Q(a+b)-Q(a)-b*a*math.log(a)-Q(b)

def lowU(a,b,X):
 lam=2*b-a
 if lam<=0 or not(0<=a<1 and 0<b<1):return -1e6
 return X*math.log(X)-(X-1)*math.log(X-1)-(2*fall_bin_int(X/2,b)+rise_bin_int(X-1,1-a))/lam
rows=[]
for X in [6,16,20,24,32,64,16384]:
 ans=differential_evolution(lambda q:-lowU(q[0],q[1],X),[(0,.99),(.01,.99)],seed=123,tol=1e-9)
 rows.append(dict(X=X,r=ans.x[0],s=ans.x[1],best_lower_U_rate=-ans.fun,two_thirds_rate=lowU(1/3,2/3,X)))
print(json.dumps({'evidence':'FLOAT DIAGNOSTIC ONLY','rows':rows},indent=2))
