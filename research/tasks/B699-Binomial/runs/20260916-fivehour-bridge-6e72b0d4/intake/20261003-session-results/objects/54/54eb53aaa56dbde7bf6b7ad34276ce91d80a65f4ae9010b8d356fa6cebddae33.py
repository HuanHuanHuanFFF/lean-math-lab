import sympy as s
from collections import Counter
x,y=s.symbols('x y'); n=x+y; d=y-x
J=x*y; A=(x-1)*(y-1); B=(x-2)*(y-2)
H=x*x+y*y-3*x-3*y+2
U=x*x+2*x*y+2*y*y-7*x-10*y+12; V=U.xreplace({x:y,y:x})
atoms={'J':J,'A':A,'B':B,'H':H,'U':U,'V':V,'d':d}
for i in range(1,6): atoms['D'+str(i)]=d*d-i*i
for i in (3,4,5): atoms['E'+str(i)]=(x-i)*(y-i)
def order(F,a,b):
 p=s.Poly(s.expand(F.subs({x:x+a,y:y+b},simultaneous=True)),x,y)
 return min(sum(e) for e,c in p.terms())
for name,F in atoms.items():
 print(name,s.total_degree(F),order(F,0,0),[[order(F,b,r-b) for b in range(r+1)] for r in range(1,6)])
res=[27,100,128,153,176,225,252,280,325,352,378,425,552,576,625,704,729,776,801,850,875,928,954,976,1000,1026,1100,1225,1251,1305,1377,1425,1450,1476,1504,1552,1576,1625,1650,1675,1701,1776]
for a in res:
 locs=[next((r for r in range(6) if (a-r)%p**e==0),None) for p,e in [(2,3),(3,2),(5,2)]]
 print(a,locs)
