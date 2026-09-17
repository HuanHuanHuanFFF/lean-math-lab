"""Exact polynomial identities used by the unrestricted paper argument."""
from pathlib import Path
import argparse,json
import sympy as s

def run():
    p,x,y=s.symbols('p x y');results={}
    def test(name,expr):
        value=s.expand(expr);assert value==0,(name,value);results[name]='ZERO_POLYNOMIAL'
    F=lambda a,b:a*a+b*b-p*a*b-3*a-3*b+2
    t=p*x+3-y
    test('Vieta preserves conic',F(t,x)-F(x,y))
    test('Vieta product of roots',y*t-(x-1)*(x-2)+F(x,y))
    cass=x*x-p*x*y+y*y
    test('Cassini matrix invariance',(p*x-y)**2-p*(p*x-y)*x+x*x-cass)
    for label,fun in [('branch1',lambda a,b:a*(a+2*b)),('branch2',lambda a,b:b*(2*a+b))]:
        test(label+' product recurrence',fun(p*x-y,x)-(p*p-2)*fun(x,y)+fun(y,p*y-x)-2*(p+1)*cass)
    # Odd-index addition uses determinant-one matrices, not a finite exponent assumption.
    A=s.Matrix([[p,-1],[1,0]])
    test('matrix determinant',A.det()-1)
    # Initial conditions for the two decimated row-sum identities.
    for b in [1,2]:
        xs=[s.Integer(0),s.Integer(b)]
        for _ in range(8):xs.append(s.expand(p*xs[-1]+3-xs[-2]))
        us=[s.Integer(0),s.Integer(1)]
        for _ in range(5):us.append(s.expand(p*us[-1]-us[-2]))
        for nu in [1,2]:
            r=2*nu-1 if b==1 else 2*nu
            V=us[nu]+2*us[nu-1] if b==1 else 2*us[nu+1]+us[nu]
            test(f'branch{b} product initial nu{nu}',xs[r]+xs[r+1]-2-(p+2)*us[nu]*V)
    # Extra first-branch j formula: same decimated recurrence and two initials.
    jf=lambda a,b:(a+b)*(a+2*b)
    test('first branch j recurrence',jf(p*x-y,x)-(p*p-2)*jf(x,y)+jf(y,p*y-x)-3*(p+2)*cass)
    for nu in [1,2]:
        xs=[s.Integer(0),s.Integer(1)]
        for _ in range(5):xs.append(s.expand(p*xs[-1]+3-xs[-2]))
        us=[s.Integer(0),s.Integer(1),p]
        test(f'first branch j initial nu{nu}',xs[2*nu-1]-jf(us[nu],us[nu-1]))
    # j-2 is a multiple of U_nu modulo Cassini; used by the infinite weak family.
    test('first branch endpoint allocation',jf(x,y)-2-2*(cass-1)-x*(-x+(3+2*p)*y))
    D=s.symbols('D');n=8*D*D-6*D+2;j=4*D-1;k=n-j
    test('exceptional family conic',(n-1)*(n-2)-2*D*j*k)
    test('exceptional family source',n-2-2*D*(4*D-3))
    return dict(status='PASS',sympy_version=s.__version__,count=len(results),identities=results)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);a=ap.parse_args()
    r=run();Path(a.output).write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r))
