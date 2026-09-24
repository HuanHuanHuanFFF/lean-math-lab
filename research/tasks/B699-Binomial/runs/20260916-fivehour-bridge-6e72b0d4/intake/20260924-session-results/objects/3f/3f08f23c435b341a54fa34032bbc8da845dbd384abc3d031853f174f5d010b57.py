"""Standard-library second implementation. No SymPy import.
Finite regression is identified as such; exact polynomial identities are checked
coefficientwise. Infinite completeness is supplied by PROOFS.md, not this script.
"""
from fractions import Fraction as F
from pathlib import Path
from math import gcd
import ast, json, sys, hashlib
from gate import delta_max, row_predicate, beta_bound

# Dense univariate polynomials, ascending coefficients.
def tr(a):
    a=list(map(F,a))
    while len(a)>1 and a[-1]==0:a.pop()
    return a or [F(0)]
def add(a,b):
    return tr([(a[i] if i<len(a) else 0)+(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))])
def neg(a):return [-v for v in a]
def sub(a,b):return add(a,neg(b))
def mul(a,b):
    c=[F(0)]*(len(a)+len(b)-1)
    for i,u in enumerate(a):
        for j,v in enumerate(b):c[i+j]+=u*v
    return tr(c)
def sc(a,k):return tr([k*v for v in a])
def power(a,k):
    r=[F(1)]
    for _ in range(k):r=mul(r,a)
    return r
def dif(a):return tr([i*a[i] for i in range(1,len(a))])
def divmodp(a,b):
    a,b=tr(a),tr(b)
    assert b!=[0]
    q=[F(0)]*max(1,len(a)-len(b)+1)
    while a!=[0] and len(a)>=len(b):
        i=len(a)-len(b); k=a[-1]/b[-1];q[i]+=k
        a=sub(a,[F(0)]*i+sc(b,k))
    return tr(q),tr(a)
def ev(a,x):
    z=F(0)
    for v in reversed(a):z=z*x+v
    return z

def v(a,p):
    assert a>0
    k=0
    while a%p==0:a//=p;k+=1
    return k

def digit_sum(a,p):
    r=0
    while a:a,b=divmod(a,p);r+=b
    return r

# Sparse multivariate integer ring for the complete DIFF identity.
N=8
zero=(0,)*N
names=['U','V','W','R','Up','Vp','Wp','Rp']
def mc(n):return {zero:n} if n else {}
def mv(i):
    e=list(zero);e[i]=1;return {tuple(e):1}
def ma(a,b):
    c=dict(a)
    for k,vv in b.items():
        c[k]=c.get(k,0)+vv
        if c[k]==0:del c[k]
    return c
def mn(a):return {k:-vv for k,vv in a.items()}
def ms(a,b):return ma(a,mn(b))
def mm(a,b):
    c={}
    for ea,va in a.items():
        for eb,vb in b.items():
            e=tuple(i+j for i,j in zip(ea,eb));c[e]=c.get(e,0)+va*vb
    return {k:vv for k,vv in c.items() if vv}
def mp(a,k):
    z=mc(1)
    for _ in range(k):z=mm(z,a)
    return z
def md(a,i):
    z={}
    for e,vv in a.items():
        if e[i]:
            ee=list(e);ee[i]-=1;z[tuple(ee)]=vv*e[i]
    return z

def parse_poly(st):
    def go(t):
        if isinstance(t,ast.Expression):return go(t.body)
        if isinstance(t,ast.Name):return mv(names.index(t.id))
        if isinstance(t,ast.Constant) and type(t.value)is int:return mc(t.value)
        if isinstance(t,ast.UnaryOp) and isinstance(t.op,ast.USub):return mn(go(t.operand))
        if isinstance(t,ast.BinOp):
            if isinstance(t.op,ast.Add):return ma(go(t.left),go(t.right))
            if isinstance(t.op,ast.Sub):return ms(go(t.left),go(t.right))
            if isinstance(t.op,ast.Mult):return mm(go(t.left),go(t.right))
            if isinstance(t.op,ast.Pow) and isinstance(t.right,ast.Constant):return mp(go(t.left),t.right.value)
        raise ValueError('unsupported symbolic expression')
    return go(ast.parse(st,mode='eval'))

def main(cert_path,out):
    c=json.loads(cert_path.read_text())
    U,V,W,R,Up,Vp,Wp,Rp=[mv(i) for i in range(8)]
    f=ms(mm(mm(W,ms(W,U)),ms(W,mm(mc(2),U))),mm(ms(mm(U,V),mc(1)),R))
    fp={}
    for i in range(4):fp=ma(fp,mm(md(f,i),mv(i+4)))
    dg=ms(mm(W,Rp),mm(R,ms(mm(mc(3),Wp),mm(mc(2),Up))))
    rhs=ma(ms(mm(W,fp),mm(mm(mc(3),ms(Wp,Up)),f)),mm(mm(Up,ms(mm(V,W),mc(1))),R))
    rhs=ma(rhs,mm(U,parse_poly(c['symbolic']['DIFF_exact_tail'])))
    assert dg==rhs
    model_count=0
    for m in c['formal_models']:
        f,j,u,vv,w,wb=[tr(m[k]) for k in ['f','j','U','V','W','Wbar']]
        rr=tr(m['R'])
        assert f==add(mul(u,vv),[1])
        assert j==mul(vv,w) and sub(f,j)==mul(u,wb)
        assert divmodp(sub(mul(vv,w),[1]),u)[1]==[0]
        assert mul(mul(w,sub(w,u)),sub(w,sc(u,2)))==mul(sub(f,[2]),rr)
        assert divmodp(sub(mul(w,dif(rr)),mul(rr,sub(sc(dif(w),3),sc(dif(u),2)))),u)[1]==[0]
        assert divmodp(add(sub(power(w,3),sc(mul(u,power(w,2)),2)),rr),power(u,2))[1]==[0]
        A,B,deg=f[-1],j[-1],len(f)-1
        first_q,first_rem=divmodp(mul(j,sub(j,[1])),sub(f,[1]))
        assert first_rem==[0] and all(z.denominator==1 for z in first_q)
        assert first_q[-1]==B*B/A and (B*B/A).denominator==1
        slope=B/A;delta=slope.denominator
        assert 0<slope<1 and deg%delta==0 and A%(delta**2)==0
        assert delta==m['delta'] and str(slope)==m['slope']
        model_count+=1

    # Factor-free second calculation of D on a bounded arithmetic rectangle.
    arith_count=0
    for A in range(1,257):
        for d in range(1,129):
            eligible=[q for q in range(1,d+1) if d%q==0 and A%(q*q)==0]
            D=max(eligible)
            assert D==delta_max(A,d)
            assert eligible==[q for q in range(1,D+1) if D%q==0]
            arith_count+=1
    beta_count=0
    for D in range(2,257):
        direct=min(max(F(h,2*D),F(2*D-h,4*D)) for h in range(1,D))
        assert direct==beta_bound(D)
        beta_count+=1
    leading_count=0
    for u in range(2,65):
        for vv in range(1,65):
            for w in range(1,u):
                if ((u-w)*vv)%u:continue
                slope=F(w,u);de=slope.denominator
                assert u%de==vv%de==0 and (u*vv)%(de*de)==0
                leading_count+=1

    # Repeated factors are kept as powers, and tested coefficientwise.
    slot_count=0
    for a in range(1,6):
        for b in range(1,5):
            for cc in range(1,4):
                r0=power([1,1],a);r1=power([2,1],b);r2=power([3,1],cc)
                rr=mul(mul(r0,r1),r2)
                S=add(mul(mul(r0,dif(r1)),r2),sc(mul(mul(r0,r1),dif(r2)),2))
                for i,ri in enumerate((r0,r1,r2)):
                    assert divmodp(sub(S,sc(dif(rr),i)),ri)[1]==[0]
                assert S[-1]==(b+2*cc)*rr[-1]
                slot_count+=1

    for app in c['applications']:
        f=app['coefficients'];p=app['prime'];e=app['exponent'];T=p**e
        pred=row_predicate(f,p,e)
        assert pred==app['predicate']
        nn=int(ev(f,T));assert nn%4==0
        assert hashlib.sha256(str(nn).encode()).hexdigest()==app['n_sha256']
        assert v(nn-2,p)==app['source_exponent']
        assert v(nn*(nn-1)*(nn-2)//6,p)==app['v_p_choose_n_3']
    for app in c['block_applications']:
        u,vv=tr(app['U']),tr(app['V'])
        cf=tr(app['coefficients'])
        assert cf==add(mul(u,vv),[1])
        for block in (u,vv):
            rev=block[::-1]
            assert rev[-1]==1 and rev[0]%4==2 and all(z%2==0 for z in rev[:-1])
        # Different irreducible degrees certify coprimality; no factor black box.
        assert len(u)!=len(vv)
        pred=row_predicate(app['coefficients'],app['prime'],app['exponent'])
        assert pred==app['numeric_predicate'] and pred['gate_met'] and pred['n_mod4']==0
        be=beta_bound(pred['D']);assert str(be)==app['beta']
        assert app['primary_degree']>pred['degree']*(1-be)
        nn=int(ev(cf,app['prime']**app['exponent']))
        assert hashlib.sha256(str(nn).encode()).hexdigest()==app['n_sha256']
        assert v(nn-2,3)==app['source_exponent']
        assert v(nn*(nn-1)*(nn-2)//6,3)==app['v_p_choose_n_3']
    fail=c['failure_model'];nn=int(fail['n']);jj=int(fail['j'])
    assert (jj*(jj-1))%(nn-1)==0
    assert (jj*(jj-1)*(jj-2))%((nn-2)//2)==0
    vj=(digit_sum(jj,5)+digit_sum(nn-jj,5)-digit_sum(nn,5))//4
    assert vj==fail['v5_choose_n_j']>0
    assert v(nn*(nn-1)*(nn-2)//6,5)==fail['v5_choose_n_3']>0
    assert gcd(nn,jj)==fail['gcd_n_j']

    # Explicit malformed-input and wrong-inference rejection checks.
    bad=0
    for cf,p,e in [([1,1],3,100),([2,-1,1],3,100),([2,1],9,100),([2,1],3,0),([2,0],3,100)]:
        try:row_predicate(cf,p,e)
        except ValueError:bad+=1
        else:raise AssertionError('malformed predicate accepted')
    assert row_predicate([2,2,1,0,0,0,0,1,6,5,0,0,0,0,0,5],3,1)['status']=='INCONCLUSIVE';bad+=1
    assert delta_max(12,2)==2 and delta_max(5,15)==1;bad+=1
    # Deliberate error delta|d,delta|A does not imply delta^2|A.
    assert 15%5==0 and 5%5==0 and 5%25!=0;bad+=1
    result={'status':'STANDARD_LIBRARY_CROSSCHECK=PASS','complete_sparse_DIFF_identity':True,
            'formal_polynomial_models':model_count,'D_rectangle_cases':arith_count,
            'beta_closed_form_regression':beta_count,'integer_leading_factor_cases':leading_count,'repeated_factor_slot_cases':slot_count,
            'row_applications':len(c['applications'])+len(c['block_applications']),'failure_model_digit_sum_check':True,
            'rejection_checks':bad,
            'limits':'Finite rectangles/models are regression, not proof of the unbounded theorem.'}
    out.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(result,ensure_ascii=False,indent=2))

if __name__=='__main__':main(Path(sys.argv[1]),Path(sys.argv[2]))
