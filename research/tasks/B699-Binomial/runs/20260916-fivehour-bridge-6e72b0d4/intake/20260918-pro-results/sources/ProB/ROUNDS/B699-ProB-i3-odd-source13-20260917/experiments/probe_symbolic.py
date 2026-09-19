import sympy as s
W,E,d,S=s.symbols('W E d S');M=d*d+2*d-2
Cnum=S*W**2-2*E*W-2*E**2
Nnum=2*S*W**3-4*E*W**2-4*E**2*W+E**3
J=s.expand(2*Cnum**2-(S*(W-E)-2*E)*Nnum)
print('gap homogeneous',s.factor(J))
Jd=s.factor(J.subs(S,d*M));print('d specialized factor',Jd)
print('gap discr W',s.factor(s.discriminant(J,W)))
print('gap eval -E/d',s.factor(Jd.subs(W,-E/d)))
print('gap eval E',s.factor(Jd.subs(W,E)))
print('gap n factor locus gcd',s.factor(s.resultant(Jd,(d*W+E)*(M*W**2-(d+2)*W*E+E**2),W)))
