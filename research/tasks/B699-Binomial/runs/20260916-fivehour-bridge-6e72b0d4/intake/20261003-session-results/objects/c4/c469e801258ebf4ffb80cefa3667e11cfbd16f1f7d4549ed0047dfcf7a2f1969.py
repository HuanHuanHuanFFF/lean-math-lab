"""Exact forms recovered from complete rational augmented kernels."""
import sympy as s
N,X,lam=s.symbols('N X lam')
W=s.prod(N-r for r in range(3,9));B=(N-3)*(N-4)*W
P0=s.prod(X-a*N+a*a for a in range(4))
S5=P0+lam*B
P4=s.prod(X-a*N+a*a for a in range(3))*(X-(N-3)*(N-4))+lam*B
Fstar=X**4+(N**2-23*N+52)*X**3/2+(3*N**4-73*N**3+649*N**2-2321*N+2858)*X**2/2-(N-4)*(N-3)*(2*N**4-43*N**3+328*N**2-1061*N+1446)*X/2+B
U4=X**4-(3*N**2-17*N+32)*X**3/2-(N**4-31*N**3+255*N**2-823*N+922)*X**2/2+(N-4)*(N-3)*(N-1)*(N**2-21*N+74)*X/2-3*B
FORMS={'S5':S5,'P4':P4,'Fstar':Fstar,'U4':U4}
