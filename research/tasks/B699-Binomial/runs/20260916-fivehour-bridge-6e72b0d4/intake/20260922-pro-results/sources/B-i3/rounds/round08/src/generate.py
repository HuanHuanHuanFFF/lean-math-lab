#!/usr/bin/env python3
"""Generate exact round-8 certificates. SymPy is required only here."""
import argparse,json
from pathlib import Path
import sympy as s

def rat(q):
    q=s.Rational(q); return [int(q.p),int(q.q)]
def poly(z,x):
    p=s.Poly(s.expand(z),x); return [rat(p.nth(i)) for i in range(max(0,int(p.degree()))+1)] if z!=0 else [[0,1]]
def sparse(z,vs):
    return [[list(m),rat(c)] for m,c in s.Poly(s.expand(z),*vs).terms()]
def build():
    x,a,b,c,y,t=s.symbols('x a b c y t')
    out={'schema':'B699-R8-v1','claim':'QUINTIC-RIGID; PURE2-QUINTIC; not QUINTIC-ALL',
         'threshold_power':14,'generic':[],'cases':[]}
    Ug=a*x*x+b*x+c
    for k in range(3):
        Wg=k*c+s.Rational(2-k,2)*b*x+s.Rational(4-k,5)*a*x*x
        theta=s.Rational(3*k-2,10)
        r0=theta**3*c*(4*a*c-b*b)*(16*a*c+b*b)
        r1=-theta**3*b*(48*a*a*c*c+11*a*b*b*c+b**4)
        Q,rem=s.div(s.expand(a*a*Wg**3-r0-r1*x),Ug,x)
        assert rem==0
        out['generic'].append({'k':k,'Q':sparse(Q,(a,b,c,x))})
    for eta in [s.Rational(1,4),-s.Rational(1,16)]:
        for k in range(3):
            U=x*x+x+eta
            W=k*eta+s.Rational(2-k,2)*x+s.Rational(4-k,5)*x*x
            theta=s.Rational(3*k-2,10)
            ell=theta**3*(48*eta**2+11*eta+1)
            product=W*(W-U)*(W-2*U)
            f=s.cancel(2+product/(ell*x)); V=s.cancel((f-1)/U)
            invq,invr=s.div(s.expand(V*W-1),U,x)
            row={'eta':rat(eta),'k':k,'ell':rat(ell),'U':poly(U,x),'W':poly(W,x),
                 'V':poly(V,x),'f':poly(f,x),'inv_q':poly(invq,x),'inv_r':poly(invr,x)}
            if eta<0:
                const,fs=s.factor_list(f-2,x)
                row['factor_constant']=rat(const)
                row['factors']=[{'p':poly(p,x),'multiplicity':m} for p,m in fs]
                row['shift']=poly(f.subs(x,t-s.Rational(5,4)),t)
            out['cases'].append(row)
    N=48*y**5+200*y**4+280*y**3+150*y*y+25*y+2
    Sig5=4*y*(4*y+5)*(12*y**3+32*y*y+19*y+1)
    A,B,_=s.gcdex(N,Sig5,y)
    out['canonical']={'N':poly(N,y),'Sig5':poly(Sig5,y),
                      'bezout_A':poly(24*A,y),'bezout_B':poly(24*B,y),
                      'mod3125_quotient':poly(s.expand(N.subs(y,30+125*t)-2002)/3125,t),
                      'mod27_quotient':poly((s.expand(N.subs(y,1+3*t))-3)/27,t),
                      'mirror':rat(N.subs(y,-s.Rational(5,4)))}
    Hrec=(4*y*y+10*y+5)/5
    Crec=5*y*(12*y*y+20*y+5)/2
    urec=(4*y+5)*(y+2)/9000
    zrec=12*y-1
    drec=(36*y**3+36*y*y-13*y-2)/48
    erec=(36*y*y+42*y-35)/125
    trec=9*(108*y**3-108*y*y-3*y+40)/250
    out['canonical']['recovery']={k:poly(v,y) for k,v in
        {'H':Hrec,'C':Crec,'u':urec,'z':zrec,'delta':drec,'epsilon':erec,'T_rho':trec}.items()}
    out['root_exclusions']=[]
    for p,target in [(7,1),(13,6),(751,169)]:
        f=s.Poly(N-target,y,modulus=p)
        r=s.rem(s.Poly(y**p-y,y,modulus=p),f)
        u,v,g=s.gcdex(f,r)
        assert g==1
        ints=lambda z:[int(s.Poly(z,y,modulus=p).nth(i))%p for i in range(max(0,int(s.degree(z,y)))+1)]
        out['root_exclusions'].append({'p':p,'target':target,'frob':ints(r),
                                      'bezout_A':ints(u),'bezout_B':ints(v)})
    out['exponent']={'modulus':3125,'residue':2002,'order':2500,
                     'power2_residue':601,'power3_residue':2494,
                     'classes':[{'r':601,'p':751,'target':169},
                                {'r':3101,'p':13,'target':6},
                                {'r':5601,'p':7,'target':1}]}
    from math import comb,gcd
    yy=1030; nn=int(N.subs(y,yy)); ss=int(Sig5.subs(y,yy)/5); jj=nn-ss
    coeff=[comb(jj,i)*comb(ss,3-i) for i in range(4)]
    hc=0
    for z in coeff: hc=gcd(hc,z)
    psi=[comb(nn,3)//hc,jj*comb(nn-1,2)//hc,comb(jj,2)*(nn-2)//hc,comb(jj,3)//hc]
    def val(z,p):
        r=0
        while z%p==0:z//=p;r+=1
        return r
    def vpbin(n,j,p):
        q=p;v=0
        while q<=n:v+=n//q-j//q-(n-j)//q;q*=p
        return v
    out['weak_example']={'y':yy,'n':nn,'j':jj,'sigma':ss,'g':gcd(nn,jj),
                          'content':hc,'Psi':psi,
                          'witnesses':[{'p':p,'v_n3':val(comb(nn,3),p),'v_nj':vpbin(nn,jj,p)} for p in [5,23]]}
    out['applications']=[]
    for a0,b0,p0 in [(1,1,3),(1,3,5),(3,1,7),(3,3,3),(5,7,11)]:
        f=s.expand(1+(1+2*a0*x+2*a0*a0*x*x)*(1+2*b0*x+2*b0*b0*x*x+2*b0**3*x**3))
        H=int(f.subs(x,1));threshold=(2*(H+2))**14
        e=1
        while p0**e<threshold:e+=1
        coeff=[int(s.expand(f).coeff(x,i)) for i in range(6)]
        E=e
        v=coeff[1]
        while v%p0==0:E+=1;v//=p0
        out['applications'].append({'a':a0,'b':b0,'p':p0,'e':e,'coefficients':coeff,
                                    'H':H,'source_E':E,'n':int(f.subs(x,p0**e))})
    out['mirror_examples']=[]
    for m in [125,3125,3**4*5**4*7,751*5**4]:
        # finite congruences only; not an equality in integers and not NC3
        yy=(-5*pow(4,-1,5*m))%(5*m)
        order=int(s.n_order(2,m));exponent=order*((6+40+order-1)//order)-6
        assert exponent>=40
        out['mirror_examples'].append({'modulus':m,'y_residue':yy,'period':order,'exponent':exponent})
    return out

def main():
    p=argparse.ArgumentParser();p.add_argument('--output',required=True);a=p.parse_args()
    data=json.dumps(build(),ensure_ascii=False,indent=2,sort_keys=True)+'\n'
    target=Path(a.output);target.parent.mkdir(parents=True,exist_ok=True);target.write_text(data)
    print(json.dumps({'generated':str(target),'bytes':len(data.encode())}))
if __name__=='__main__':main()
