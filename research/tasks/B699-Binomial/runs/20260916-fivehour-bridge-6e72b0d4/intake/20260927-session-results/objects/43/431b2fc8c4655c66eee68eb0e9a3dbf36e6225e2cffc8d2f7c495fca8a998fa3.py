"""Independent acceptance of exact identities, uniform bounds and finite diagnostics.
Does not import generate.py. Uses only the Python standard library.
"""
import argparse,hashlib,json,math,sys
from fractions import Fraction as F
from pathlib import Path
from exact_poly import mon,add,scale,mul,power,reduce_pell,source_target
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def require(ok,msg):
    if not ok:raise AssertionError(msg)
def load(root,name):return json.loads((root/name).read_text(encoding='utf-8'))
def pell_iter(k):
    a,b=1,0
    for _ in range(k):a,b=2*a+3*b,a+2*b
    return a,b

def row(q):
    V,X=pell_iter(4*q);U=2*V+3*X
    # Recover d,y through the independent full-index formulas.
    Ut,Xt=pell_iter(8*q+1)
    require(Ut%2==0 and (3*Xt-1)%2==0,'Pell parity')
    d,y=(3*Xt-1)//2,Ut//2
    require(d==1+3*U*X and y==U*V-1,'two Pell descriptions')
    require(d*d+d+1==3*y*y,'Pell quadratic')
    return dict(q=q,V=V,X=X,U=U,d=d,y=y)

def calc(q,B):
    r=row(q);d,y=r['d'],r['y']
    require((3*(d-1))%B==0,'exact allocation')
    A=3*(d-1)//B;v=A*y;W=B*y;Q=d+v
    require(v*W==d**3-1,'complete product')
    numerator=Q**5-d*d
    require(numerator%v==0,'S integrality')
    S=numerator//v
    require(S==v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W,'S two descriptions')
    T=F(v*v)+F(5*d*v,2)+F(15*d*d,8)+F(5*B*y,16)-F(5*B*B,384)
    N=384*T
    require(N.denominator==1,'384T integral');N=int(N)
    low=T.numerator//T.denominator;i=math.isqrt(S)
    return dict(**r,A=A,B=B,v=v,W=W,S=S,N384=N,T_floor=low,is_square=i*i==S,is_odd_square=i*i==S and i%2==1,between_T_floor_squares=low*low<S<(low+1)**2,cube_excluded=B**3<=3*d)

def main(root):
    require(len(list(root.glob('*.json')))==9,'certificate count')
    # Source identity in Q[d,v,nu]; the three exponent slots are repurposed here.
    d,v,nu=mon(d=1),mon(y=1),mon(B=1);Q=add(d,v)
    Fnu=add(mul(mul(d,v),power(nu,2)),scale(mul(mul(v,power(Q,2)),nu),-2),scale(power(Q,4),-1),d)
    lhs=add(mul(v,power(add(mul(d,nu),scale(power(Q,2),-1)),2)),scale(power(Q,5),-1),power(d,2))
    require(not add(lhs,scale(mul(d,Fnu),-1)),'original-input recovery identity')
    load(root,'origin_recovery.json')
    # Derive the whole error polynomial rather than trusting its certificate.
    d,y,B,v,W,S,T=source_target()
    R=reduce_pell(scale(mul(B,add(S,scale(power(T,2),-1))),147456))
    cert=load(root,'identity.json')
    expected={(r['d'],r['y'],r['B']):F(r['coefficient']) for r in cert['terms']}
    require(R==expected,'complete residual polynomial')
    require(not reduce_pell(add(mul(v,W),scale(power(d,3),-1),mon())),'vW=d^3-1')
    # Independent exact weighted envelope for every monomial.
    total=F(0);weights={}
    for (pd,py,pB),coefficient in R.items():
        k=3-pd-py;e=pB-2-3*k
        require(k>=0 and e<=0 and py in [0,1],'uniform exponent coverage')
        w=abs(coefficient)*F(3)**k*F(4)**e/F(147456)
        total+=w;weights[(abs(int(coefficient)),k,e)]=w
    bound=load(root,'uniform_bounds.json')
    require(total==F(bound['total'])==F(2091467,33554432),'uniform sum')
    for r in bound['term_bounds']:
        require(weights[(r['coefficient'],r['k'],r['B_exponent'])]==F(r['weight']),'individual weight')
    require(total<F(1,16),'error polynomial envelope')
    require(F(64,3)>16,'d>=B^3/3 and B>=4 imply d>16')
    require(3*(1-F(1,16)-F(1,16**3))>F(11,4),'v^2 lower bound')
    require(F(15,8)>F(5,384),'T>v^2 when d>=B')
    require(F(1,16)/F(11,2)==F(1,88),'sqrt error division')
    require(F(3,88)<F(1,24),'strict lattice contradiction')
    # Lattice and parity are complete finite rings, not a search over Pell rows.
    lattice=load(root,'lattice_gap.json')
    expect=[dict(d_mod4=d,y_mod4=y,ell_mod4=e,K_mod4=(d*d+2*e*y-e*e)%4) for d in [1,3] for y in [1,3] for e in range(4)]
    require(expect==lattice['states'],'lattice ring coverage')
    require({r['K_mod4'] for r in expect}=={1,2},'24T never integral multiple 24')
    for r in lattice['parity_gate']:
        allowed=[]
        for bb in range(4):
            dd,yy,vv=r['d'],r['y'],r['v']
            ss=(vv**4+5*dd*vv**3+10*dd*dd*vv*vv+10*dd**3*vv+5*dd**4+dd*dd*bb*yy)%4
            if ss==1:allowed.append(bb)
        require(allowed==r['allowed_B_mod4']==[0],'odd square forces 4|B')
    # Tail consumers. Induction itself is in PROOFS, with these exact base constants.
    con=load(root,'consumers.json');r1,r2=row(1),row(2)
    require(con['q1']==r1 and con['q2']==r2,'base Pell rows')
    squares={i*i%13 for i in range(13)}
    require(r1['y']%13==0 and 5*pow(r1['d'],4,13)%13==2 and 2 not in squares,'q1 square obstruction')
    u8,x8=pell_iter(8)
    require((u8,x8)==(18817,10864),'Pell step')
    require(r2['d']==18817*r1['d']+32592*r1['y']+9408,'affine Pell step')
    require(F(27,8)<18817,'cubic vs Pell induction')
    require(1900**3<=3*r2['d']<1901**3 and 1904%4==0,'bounded complement complete terminal')
    require((108*2)**3<3*r2['d'],'linear complement base')
    # A=2: exact prime-power obstruction, including possible base 3.
    a2=load(root,'A2_prime_power.json')
    for c in a2['samples']:
        q=c['q'];rr=row(q);Uk,Xk=pell_iter(4*q+1)
        require(c['U_k']==Uk and c['X_k']==Xk,'A2 Pell values')
        require(c['Q']==rr['d']+2*rr['y']==3*Xk*Xk==c['factorization_identity'],'A2 full factor identity')
        require(Uk%2==0 and Uk>2 and Xk>1 and Uk*Uk-3*Xk*Xk==1,'A2 norm and positivity')
        require(math.gcd(Uk-1,Uk+1)==1,'A2 coprime neighbors')
    # Complete periods and a nonredundant infinite weakened allocation family.
    non=load(root,'nonredundancy.json')
    for sm,states in non['periods'].items():
        m=int(sm);a,b=1,0
        require(states[0]==[1,0],'period starts at identity')
        for i,state in enumerate(states):
            require(state==[a,b],'period transition state')
            a,b=(97*a+168*b)%m,(56*a+97*b)%m
            if i<len(states)-1:require((a,b)!=(1,0),'first return, no earlier identity')
        require((a,b)==(1,0),'complete return')
        require(non['step']%len(states)==0,'unbounded q progression preserves each residue')
    e=calc(2,364);require(e==non['sample'],'nonredundancy exact row')
    require(math.gcd(364,e['U'])==26 and math.gcd(364,e['X'])==28,'separate odd blocks')
    require(e['X']%49 in [7,14,21,28,35,42] and e['U']%169!=0 and e['U']%13==0,'full odd valuations one')
    a,b=9*e['U']//26,14
    require(F(e['A'],e['X'])==F(a,b) and math.gcd(a,b)==1,'exact reduced parent height')
    require(a>108*2 and e['V']+2*e['X']<(4*a)**26,'parent HEIGHT26 does not exclude this row')
    require(364**3<3*e['d'],'new cubic excludes this row and monotone tail')
    # All finite diagnostics are re-enumerated independently; no unseen ranges.
    diag=load(root,'finite_diagnostics.json');checks=[]
    for q in range(1,13):
        rr=row(q)
        for bb in range(1,513):
            if 3*(rr['d']-1)%bb:continue
            aa=3*(rr['d']-1)//bb
            if aa%2:continue
            e=calc(q,bb)
            reason='q1_mod13' if q==1 else ('parity_B_mod4' if bb%4 else 'CUBIC3')
            if reason=='CUBIC3':
                require(e['cube_excluded'],'finite case belongs to theorem domain')
                require(e['between_T_floor_squares'],'direct integer interval agrees with theorem')
            require(not e['is_odd_square'],'finite odd-square contradiction')
            checks.append(dict(q=q,B=bb,A=aa,reason=reason,is_square=e['is_square'],is_odd_square=e['is_odd_square'],cube_excluded=e['cube_excluded'],interval_ok=e['between_T_floor_squares'] if bb%4==0 and e['cube_excluded'] else None))
    require(checks==diag['rows'] and len(checks)==diag['count']==901,'finite full rectangle replay')
    for c in load(root,'failure_models.json')['samples']:
        rr=row(c['q']);bb=3*(rr['d']-1)//4;e=calc(c['q'],bb)
        require(c['A']==4 and c['B']==bb and bb**3>3*rr['d'],'large-B failure boundary')
        require(c['ratio_b']==rr['X']//4 and rr['V']+2*rr['X']<rr['X']**26,'old height compatibility')
        require(c['is_square']==e['is_square']==False,'boundary sample not actual square recovery')
    print(json.dumps(dict(status='PASS',exact_polynomial_terms=len(R),uniform_coefficient=str(total),lattice_states=len(expect),certificate_files=9,finite_allocations=len(checks),finite_model_odd_squares=0,global_i3_closed=False),sort_keys=True))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--certificates',type=Path,default=Path(__file__).resolve().parents[1]/'certificates');a=p.parse_args();main(a.certificates)
