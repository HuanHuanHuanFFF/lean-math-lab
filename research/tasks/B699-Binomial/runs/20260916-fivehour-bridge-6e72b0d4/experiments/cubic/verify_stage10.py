"""Different strict RF endpoints, division-free Q doubling checks, and determinant audit."""
from fractions import Fraction as F
from itertools import permutations
from pathlib import Path
from datetime import datetime,timezone
import argparse,hashlib,json,time

import stage10_check_intervals as ar

def add(a,b):return tuple(x+y for x,y in zip(a,b))
def scale(a,c):return tuple(c*x for x in a)
def multiply(a,b,k):
    out=[F(0)]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    while len(out)>3:
        lead=out.pop();degree=len(out)
        out[degree-2]+=27*lead;out[degree-3]-=2*k*lead
    return tuple(out+[F(0)]*(3-len(out)))
def constant(a):return (F(a),F(0),F(0))

def check_Q2(k,A,B,coords):
    x=(F(189),F(2*k),F(-9));y=(F(4*k*k-2187),F(-18*k),F(81))
    xx,yy=[tuple(map(F,c)) for c in coords]
    mm=lambda a,b:multiply(a,b,k)
    numerator=add(scale(mm(x,x),3),constant(A));den=scale(y,2)
    assert mm(add(xx,scale(x,2)),mm(den,den))==mm(numerator,numerator)
    assert mm(add(yy,y),den)==mm(numerator,add(x,scale(xx,-1)))
    assert mm(yy,yy)==add(add(mm(mm(xx,xx),xx),scale(xx,A)),constant(B))
    assert xx[1] or xx[2]
    return xx,yy

def determinant(a):
    n=len(a);out=0
    for p in permutations(range(n)):
        parity=sum(p[i]>p[j] for i in range(n) for j in range(i+1,n))%2
        term=1
        for i in range(n):term*=a[i][p[i]]
        out+=(-1 if parity else 1)*term
    return out

def audit_lattice(cert,log_intervals,S):
    summaries=[]
    rank=cert['rank'];n=rank+1
    for phase in cert['phases']:
        C,M0=phase['C'],phase['M0']
        rs=[ar.rounded(log_intervals[f'G{i+1}_double'],C) for i in range(rank)]
        base=[[int(i==j) for j in range(rank)]+[rs[i]] for i in range(rank)]+[[0]*rank+[C]]
        assert base==phase['input_basis']
        U,B=phase['unimodular_transform'],phase['basis']
        assert determinant(U) in (-1,1)
        assert B==[[sum(U[i][k]*base[k][j] for k in range(n)) for j in range(n)] for i in range(n)]
        normal=[(-1)**j*determinant([row[:j]+row[j+1:] for row in B[:rank]]) for j in range(n)]
        assert normal==phase['normal']
        nn=sum(x*x for x in normal)
        assert nn==phase['normal_squared'] and abs(sum(x*y for x,y in zip(normal,B[-1])))==C
        ratios=[]
        for target in phase['targets']:
            rr=ar.rounded(log_intervals[target['name']],C)
            assert rr==target['rounded_target']
            rem=(rr*normal[-1])%C;rem=min(rem,C-rem)
            assert rem==target['remainder']
            assert rem*rem>100*M0*M0*nn
            ratios.append((rem*rem)//(M0*M0*nn))
        summaries.append({'phase':phase['phase'],'all_three_DIST100':True,'distance_ratios':ratios})
    return summaries

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--k',required=True,type=int)
    args=parser.parse_args();k=args.k;here=Path(__file__).resolve().parent
    rfpaths=list(here.glob(f'stage10-rf-k{k}-*.json'));lp=list(here.glob(f'stage10-lattice-k{k}-*.json'))
    assert len(rfpaths)==len(lp)==1
    source=rfpaths[0];lattice_source=lp[0];cert=json.loads(source.read_text());lc=json.loads(lattice_source.read_text())
    assert cert['status']==lc['status']=='PASS' and lc['source_RF_sha256']==hashlib.sha256(source.read_bytes()).hexdigest()
    ar.setup(cert['C'].bit_length()+256);S=ar.S;began=time.perf_counter()
    A=-36*(8*k*k+243);B=32*k**4+31104*k*k-314928
    assert cert['model']==[A,B]
    model_file=here.parent/'geometry/b3_height_matrices.json'
    assert hashlib.sha256(model_file.read_bytes()).hexdigest()=='0262eb7301ebfcca97148153c8e738716025ef97986b20689905aff5c0cc7656'
    model=next(m for m in json.loads(model_file.read_text())['models'] if m['k']==k)
    basis=[tuple(map(F,p)) for p in model['basis']]
    assert len(basis)==cert['rank']
    root_count=3 if -16*(4*A**3+27*B**2)>0 else 1
    roots=ar.roots(A,B,-1000,1000,root_count)
    if root_count==3:
        e3,e2,e1=roots
        omega=ar.times(ar.rf([ar.number(0),ar.sub(e1,e2),ar.sub(e1,e3)]),2)
        eta=ar.times(ar.rf([ar.number(0),ar.sub(e2,e3),ar.sub(e1,e3)]),2)
        area_ratio=ar.div(omega,eta)
        def ell(xx,yy):
            args=[ar.sub(xx,e1),ar.sub(xx,e2),ar.sub(xx,e3)]
            assert min(v[0] for v in args)>0
            val=ar.rf(args)
            if yy[0]>0:return ar.neg(val)
            assert yy[1]<0;return val
    else:
        e=roots[0];aa=ar.times(e,3);bb=ar.add(ar.times(ar.square(e),3),ar.number(A));r=ar.sqrt(bb)
        alpha=ar.times(r,4);beta=ar.add(aa,ar.times(r,2));betac=ar.sub(ar.times(r,2),aa)
        assert min(alpha[0],beta[0],betac[0])>0
        K=ar.rf([ar.number(0),alpha,beta]);Kp=ar.rf([ar.number(0),alpha,betac])
        omega=ar.times(K,4);area_ratio=ar.div(ar.times(K,2),Kp)
        def ell(xx,yy):
            w=ar.sub(xx,e);assert w[0]>0
            z=ar.div(ar.sub(w,r),ar.sqrt(w));z2=ar.square(z)
            val=ar.rf([z2,ar.add(z2,alpha),ar.add(z2,beta)])
            if z[1]<0:val=ar.sub(ar.times(K,2),val)
            else:assert z[0]>0
            if yy[0]>0:return ar.neg(val)
            assert yy[1]<0;return val
    assert omega[0]>S//100 and omega[1]<S and 0<area_ratio[0]<area_ratio[1]<100*S
    phis={}
    for i,(x,y) in enumerate(basis):
        assert y*y==x**3+A*x+B
        # Duplication x via the homogeneous division polynomial, not slope squared.
        xx=((x*x-A)**2-8*B*x)/(4*y*y)
        yy=-y+(3*x*x+A)/(2*y)*(x-xx)
        assert yy*yy==xx**3+A*xx+B
        phis[f'G{i+1}_double']=ar.div(ell(ar.number(xx),ar.number(yy)),omega)
    qx,qy=check_Q2(k,A,B,cert['two_Q_field_coefficients'])
    theta_roots=ar.roots(-27,2*k,-6,6,3)
    for name,theta in zip(('negative','small_positive','large_positive'),theta_roots):
        xx,yy=ar.polynomial(qx,theta),ar.polynomial(qy,theta)
        phis[name]=ar.div(ell(xx,yy),omega)
    for item in cert['logs']:
        iv=phis[item['name']]
        assert -S//2<iv[0]<=iv[1]<S//2
        assert ar.rounded(iv,cert['C'])==item['rounded']
    lattice=audit_lattice(lc,phis,S)
    out={'status':'PASS','k':k,'rank':cert['rank'],'bits':ar.BITS,'RF_iterations':ar.ITER,
         'independent_methods':['half-integer root brackets','scalar monotone endpoint RF','division-free cubic-field doubling identities','permutation determinants'],
         'RF_source':source.name,'RF_source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
         'lattice_source':lattice_source.name,'lattice_source_sha256':hashlib.sha256(lattice_source.read_bytes()).hexdigest(),
         'all_first_round_unique_integers_match':True,'omega_bounds':list(omega),'area_ratio_bounds':list(area_ratio),
         'normalized_log_intervals':{name:list(v) for name,v in phis.items()},'lattice_phases':lattice,
         'elapsed_seconds':round(time.perf_counter()-began,6),
         'source_hashes':{n:hashlib.sha256((here/n).read_bytes()).hexdigest() for n in ['verify_stage10.py','stage10_check_intervals.py']}}
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    dest=here/f'stage10-independent-k{k}-{stamp}.json'
    dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','k':k,'output':dest.name,'all_roundings_match':True,'all_six_DIST100':True,
                      'seconds':out['elapsed_seconds']}),flush=True)

if __name__=='__main__':main()
