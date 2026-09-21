import sympy as s
N,X=s.symbols('N X');W=s.prod(N-r for r in range(3,9));ells=[X-t*(N-t) for t in range(9)];P4=s.prod(ells[:4]);Q=[-N**2+6*N+X-11,(N-3)*(N-5),(N-3)*(N-4)]
rows=[]
for k in range(3):
 H=s.Poly(s.expand(P4+W*Q[k]),N,X);sig=[];ws=[]
 for r in range(3,9):
  row=[]
  for t in range(r//2+1):
   v=t*(r-t);f=s.Poly(H.as_expr().subs({N:N+r,X:X+v}, simultaneous=True),N,X);m=min(a+b for (a,b),c in f.terms());row.append(m)
   if r==2*t:
    f=s.Poly(H.as_expr().subs({N:N+r,X:X+v+t*N}, simultaneous=True),N,X);ws.append(min(a+2*b for (a,b),c in f.terms()))
  sig.append(row)
 rows.append(sig);print('S',k+3,'sig',sig,'sq',sum(m*m for row in sig for m in row),'ws',ws)
print('pair',[[sum(a*b for ar,br in zip(u,v) for a,b in zip(ar,br)) for v in rows] for u in rows])
