"""Sparse integer polynomial identities; no symbolic package or floating point."""
from pathlib import Path
import argparse, json
D=6
ZERO=(0,)*D

def const(c): return {} if c==0 else {ZERO:c}
def var(i):
    e=[0]*D;e[i]=1;return {tuple(e):1}
def add(*ps):
    out={}
    for p in ps:
        for e,c in p.items():out[e]=out.get(e,0)+c
    return {e:c for e,c in out.items() if c}
def neg(p):return {e:-c for e,c in p.items()}
def sub(p,q):return add(p,neg(q))
def mul(p,q):
    out={}
    for e,a in p.items():
        for f,b in q.items():
            ef=tuple(x+y for x,y in zip(e,f));out[ef]=out.get(ef,0)+a*b
    return {e:c for e,c in out.items() if c}
def power(p,n):
    ans=const(1)
    for _ in range(n):ans=mul(ans,p)
    return ans
def scale(c,p):return mul(const(c),p)
def test(name,left,right):
    rem=sub(left,right)
    if rem:raise ValueError((name,rem))
    return {'identity':name,'difference_terms':len(rem)}


def run():
    A,B,u,v,T,X=[var(i) for i in range(6)]
    n=mul(T,add(mul(A,X),B));j=mul(T,add(mul(u,X),v))
    delta=sub(mul(A,v),mul(B,u));y=add(u,mul(T,delta));nm=sub(n,const(1))
    results=[]
    results.append(test('A j - u n = T (A v-B u)',sub(mul(A,j),mul(u,n)),mul(T,delta)))
    left=sub(scale(3,mul(power(A,2),mul(j,sub(j,const(1))))),scale(3,mul(y,sub(y,A))))
    right=scale(3,mul(mul(u,nm),add(sub(scale(2,y),A),mul(u,nm))))
    results.append(test('exact first-window elimination with integer quotient',left,right))
    p=A
    results.append(test('p^3 > 3(p-1)^2+2 polynomial margin',
        sub(power(p,3),add(scale(3,power(sub(p,const(1)),2)),const(2))),
        add(mul(sub(p,const(3)),power(p,2)),scale(6,p),const(-5))))
    r=A;n2=add(r,const(8))
    results.append(test('positive g^4 row-bound margin at n=8+r',
        sub(scale(48,power(sub(n2,const(1)),3)),scale(27,power(n2,3))),
        add(scale(21,power(r,3)),scale(360,power(r,2)),scale(1872,r),const(2640))))
    results.append(test('top-digit coefficient bound',
        sub(mul(T,power(p,2)),add(mul(T,power(sub(p,const(1)),2)),sub(p,const(1)))),
        add(mul(sub(scale(2,p),const(1)),T),neg(p),const(1))))
    # Failed initial route: multiplying the four LOSS bounds is much weaker.
    if not 995328 < 100**3: raise ValueError('small-v2 threshold')
    if not 4333 < 3**8: raise ValueError('p=3 top exponent')
    constants={'low_v2_n_cube_bound':3**5*2**12,'base_end_exclusive':100,
               'ternary_f2_n_cap':3*(2+4*9)**2+1,
               'coefficient_cap':8,'prime_bound':3*8**2+2,
               'global_bottom_n_cap':3*(8+8*8*(3*8**2+2))**2+1}
    return {'status':'PASS','identities':results,'integer_constants':constants}

if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--out',type=Path,required=True);ns=a.parse_args()
    ans=run();ns.out.parent.mkdir(parents=True,exist_ok=True);ns.out.write_text(json.dumps(ans,indent=2)+'\n')
    print(json.dumps({'identities':len(ans['identities']),'status':ans['status']}))
