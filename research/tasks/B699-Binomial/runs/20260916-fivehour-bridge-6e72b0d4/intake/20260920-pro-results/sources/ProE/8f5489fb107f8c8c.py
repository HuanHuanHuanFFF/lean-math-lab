"""Proof-certificate checker. Standard library; exact integers/intervals only."""
from pathlib import Path
from fractions import Fraction as F
import json,sys,itertools,hashlib
from exact import I,poly,logI,mul,norm,powers,U1,U1I,U2,U2I
ROOT=Path(__file__).resolve().parents[1]

def require(ok,msg):
    if not ok:raise ValueError(msg)

def determinant(m):
    return (m[0][0]*(m[1][1]*m[2][2]-m[1][2]*m[2][1])
           -m[0][1]*(m[1][0]*m[2][2]-m[1][2]*m[2][0])
           +m[0][2]*(m[1][0]*m[2][1]-m[1][1]*m[2][0]))

def detnorm(u):
    # Independent of the explicit norm formula.
    cols=[mul(u,e) for e in [(1,0,0),(0,1,0),(0,0,1)]]
    return determinant([[cols[j][i] for j in range(3)] for i in range(3)])

def check_algebra():
    require(mul(U1,U1I)==mul(U2,U2I)==(1,0,0),'unit inverses')
    require(norm(U1)==norm(U2)==1,'norm of generators')
    # A polynomial of individual degrees <=3 is certified on {0,1,2,3}^3.
    for u in itertools.product(range(4),repeat=3):
        require(norm(u)==detnorm(u),'norm polynomial identity')
    alpha=(-18,11,5)
    aa=mul(alpha,alpha);aaa=mul(aa,alpha)
    require(tuple(aaa[k]-46*aa[k]+312*alpha[k]-(338 if k==0 else 0) for k in range(3))==(0,0,0),'alpha cubic')
    for q,v in itertools.product(range(4),repeat=2):
        beta=(q+18*v,-11*v,-5*v)
        require(norm(beta)==q**3-46*v*q*q+312*v*v*q-338*v**3,'Thue norm identity')
        p=q+26*v;nu=6*q-13*v
        require(q**3-46*v*q*q+312*v*v*q-338*v**3==p*q*q-2*v*nu*nu,'original recovery identity')

def check(cert,do_enum=True):
    require(cert['schema']=='B699-E-h13-Thue-v1','schema')
    scale=int(cert['root_scale']);require(scale==10**160,'root scale')
    require(len(cert['root_lowers'])==3,'all roots present')
    roots=[I(F(int(x),scale),F(int(x)+1,scale)) for x in cert['root_lowers']]
    f=lambda x:x**3-10*x+10
    coarse=[(-4,-3),(1,2),(2,3)]
    for r,(lo,hi) in zip(roots,coarse):
        require(lo<r.lo<r.hi<hi,'root location')
        require(f(r.lo)*f(r.hi)<0,'isolating sign change')
    check_algebra()
    alpha=[-18+11*t+5*t*t for t in roots]
    require(all(a.lo>1 for a in alpha),'all alpha conjugates >1')
    for i in range(3):
        for j in range(i):
            d=abs(alpha[i]-alpha[j]);require(d.lo>5 and d.hi<37,'root gaps')
    eps=[[1-t for t in roots],[1+2*t-t*t for t in roots]]
    logs=[[logI(abs(x)) for x in row] for row in eps]
    for row in eps:
        height_product=F(1)
        for e in row:height_product*=max(F(1),abs(e).hi)
        require(height_product<64,'unit logarithmic height <2')
    # Fundamental parallelogram bounds, without assuming maximality of Z[theta].
    Ms=[10,4,8]
    for i,m in enumerate(Ms):
        factors=[]
        for row in eps:
            z=abs(row[i]);zi=1/z
            factors.append(max(z.hi,zi.hi))
        require(factors[0]*factors[1]<m*m,'unit parallelogram bound')
    bounds=[]
    for k in range(3):
        s=I(0)
        for t,m in zip(roots,Ms):
            s+=m*abs([t*t-10,t,I(1)][k]/(3*t*t-10))
        bounds.append(s.hi)
    require(cert['unit_box']==[11,4,2],'unit enumeration box')
    require(all(b<lim for b,lim in zip(bounds,[12,5,3])),'coefficient box completeness')
    small=[]
    for a in range(-11,12):
        for b in range(-4,5):
            for c in range(-2,3):
                u=(a,b,c)
                if abs(norm(u))!=1:continue
                vals=[abs(poly(u,t)) for t in roots]
                if any(x.lo>=m for x,m in zip(vals,Ms)):continue
                require(all(x.hi<m for x,m in zip(vals,Ms)),'unit box ambiguity')
                small.append([a,b,c])
    expected=[[-1,0,0],[-1,1,0],[1,-1,0],[1,0,0]]
    require(small==expected==cert['box_units'],'complete reduced-unit list')
    # Invert each pair of embedding logarithms and bound row l1 norms by 2.
    for i,j in [(0,1),(0,2),(1,2)]:
        a,b=logs[0][i],logs[1][i];c,d=logs[0][j],logs[1][j]
        det=a*d-b*c
        require((abs(d/det)+abs(b/det)).hi<2,'unit exponent inverse row 1')
        require((abs(c/det)+abs(a/det)).hi<2,'unit exponent inverse row 2')
    require(logI(I(38)).hi<4,'embedding logarithm bound')
    require(logI(I(6)).hi<2,'Matveev degree logarithm')
    require(logI(I(338)).hi<6,'alpha height <2')
    require(logI(I(2)).hi<1,'height of differences')
    require(2**38*36*10**6*3<10**20,'Matveev numerical constant')
    require(logI(I(10)).hi<F(5,2),'log10 rational upper bound')
    B0=int(cert['initial_exponent_bound']);require(B0==10**24,'initial exponent bound')
    require(F(B0-10,61)>F(2,3)*10**20,'initial monotonic bound')
    M=int(cert['log_scale']);require(M==10**120,'logarithm scale')
    require(cert['distance_power']==55,'distance threshold')
    require(cert['final_exponent_bound']==120,'final exponent bound')
    require([c['near'] for c in cert['cases']]==[0,1,2],'three complete nearest-root cases')
    cases=[]
    for case in cert['cases']:
        k=case['near'];i,j=case['other']
        require(sorted([k,i,j])==[0,1,2] and i<j,'case indexing')
        d1=alpha[k]-alpha[i];d2=alpha[k]-alpha[j]
        val=[logs[0][i]-logs[0][j],logs[1][i]-logs[1][j],logI(abs(d2/d1))]
        bars=list(map(int,case['rounded_logs']))
        for z,x in zip(bars,val):
            require(x.lo>0 or x.hi<0,'nonzero logarithm')
            require(max(abs(x.lo),abs(x.hi))<100,'Matveev individual logarithm bound')
            require(F(2*z-1,2)<M*x.lo and M*x.hi<F(2*z+1,2),'certified rounding of algebraic logarithm')
        cols=[list(map(int,u)) for u in case['basis_columns']]
        trans=[list(map(int,u)) for u in case['unimodular_columns']]
        require(trans[0][0]*trans[1][1]-trans[1][0]*trans[0][1] in [-1,1],'unimodular transform')
        for col,t in zip(cols,trans):
            require(col==[t[0],bars[0]*t[0]+bars[1]*t[1]],'same integer lattice')
        v,w=cols;det=v[0]*w[1]-v[1]*w[0]
        require(det!=0,'nonzero lattice determinant')
        squared=[]
        for r in [[w[1],-w[0]],[-v[1],v[0]]]:
            num=-r[1]*bars[2];d=min(num%abs(det),(-num)%abs(det))
            squared.append(F(d*d,r[0]*r[0]+r[1]*r[1]))
        require(max(squared)>10**110,'lattice-target distance >10^55')
        cases.append({'near':k,'distance_squared_gt_10_110':True})
    # If |a|<=B0 and distance>10^55, the second coordinate exceeds 10^55/2.
    require(B0*B0+(10**55//2)**2<10**110,'vertical distance extraction')
    require(F(10**55,2)-F(2*B0+1,2)>10**54,'rounding loss')
    require(F(10**54,M)==F(1,10**66),'logarithm lower bound')
    # |Lambda|<W^-3 then gives W<10^22, B<44 log10+10<120.
    require(44*F(5,2)+10==120,'finite exponent bound')
    hits=[];digest=hashlib.sha256()
    if do_enum:
        aP=powers(U1,U1I,120);bP=powers(U2,U2I,120)
        for a in range(-120,121):
            for b in range(-120,121):
                A,B,C=mul(aP[a],bP[b])
                digest.update(f'{a},{b}:{A},{B},{C}\n'.encode())
                if 5*B==11*C and C%5==0:
                    V=-C//5;Q=A-18*V
                    require(Q**3-46*V*Q**2+312*V**2*Q-338*V**3==1,'terminal direct norm')
                    hits.append([a,b,Q,V])
        require(hits==[[0,0,1,0]]==cert['final_hits'],'complete finite endpoint')
    return {'status':'PASS_EXACT_H13_CERTIFICATE','unit_box_candidates':23*9*5,
      'reduced_units':small,'nearest_root_cases':cases,'exponent_range':[-120,120],
      'finite_units_checked':241**2 if do_enum else 0,'solutions':hits,'full_sequence_sha256':digest.hexdigest() if do_enum else None}

if __name__=='__main__':
    path=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'certificates/h13.json'
    print(json.dumps(check(json.loads(path.read_text())),ensure_ascii=False,indent=2))
