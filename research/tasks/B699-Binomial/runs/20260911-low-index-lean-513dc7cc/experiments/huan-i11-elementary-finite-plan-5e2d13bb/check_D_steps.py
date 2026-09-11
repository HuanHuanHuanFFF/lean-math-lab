from pathlib import Path
from fractions import Fraction as F
from functools import reduce
from math import factorial, gcd, comb
import json,hashlib,time
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
SOURCE=RUN/'experiments/huan-G-rational-ratio-search-5e2d13bb/joint-candidates.json'

def mul(a,b):
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    while len(out)>1 and out[-1]==0:out.pop()
    return out

def prod(factors):return reduce(mul,factors,[1])
def scale(a,c):return [c*x for x in a]
def sub(a,b):
    out=[(a[i] if i<len(a) else 0)-(b[i] if i<len(b) else 0) for i in range(max(len(a),len(b)))]
    while len(out)>1 and out[-1]==0:out.pop()
    return out

def shift(a,k):return [sum(a[i]*comb(i,j)*k**(i-j) for i in range(j,len(a))) for j in range(len(a))]
def peval(a,k):
    out=0
    for x in reversed(a):out=out*k+x
    return out

def D(c,d,delta,m):
    u=d*m-delta;v=(c-d)*m+delta-1;f=v//2
    assert min(u,v,f)>=0
    return F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))

def encode(a):
    g=reduce(gcd,a)
    assert g>0
    return {'content':str(g),'primitive_coefficients_ascending':[str(x//g) for x in a],
            'degree':len(a)-1,'all_coefficients_nonnegative':all(x>=0 for x in a)}

def main():
    started=time.perf_counter()
    rows=next(x for x in json.loads(SOURCE.read_text())['candidates'] if x['i']==11)['rows']
    tracks=[]
    for row in rows:
        c,d=row['c'],row['d'];b=c-d;q=1 if b%2==0 else 2
        beta=F((c+d)**(c+d),d**(2*d)*b**b)
        for rho in range(q):
            for delta in (0,1):
                kmin=1 if rho==0 else 0
                us,uc=d*q,d*rho-delta
                vs,vc=b*q,b*rho+delta-1
                fs,fc=b*q//2,(b*rho+delta-1)//2
                ns,nc=us+fs,uc+fc
                nf=[(nc+j,ns) for j in range(1,ns+1)]+[(fc+j,fs) for j in range(1,fs+1)]
                tf=[(uc+j,us) for j in range(1,us+1)]+[(vc+j,vs) for j in range(1,vs+1)]
                N,T=prod(nf),prod(tf);R=F(N[-1],T[-1])
                assert R**(2//q)==beta/F(4**c)
                selected=None;attempts=[]
                for J in (2,3,4):
                    residual=sub(scale(mul(N,prod([[2,1]]*J)),R.denominator),
                                 scale(mul(T,prod([[1,1]]*J)),R.numerator))
                    shifted=shift(residual,kmin)
                    attempts.append({'J':J,'negative_coefficients':sum(x<0 for x in shifted)})
                    if all(x>=0 for x in shifted):
                        selected=(J,shifted);break
                assert selected is not None,(c,d,rho,delta,attempts)
                J,coeffs=selected
                checks=[]
                for k in list(range(kmin,kmin+6))+[10,25]:
                    m=q*k+rho
                    value=D(c,d,delta,m+q)/D(c,d,delta,m)
                    assert value==F(peval(N,k),peval(T,k))
                    assert value>=R*F(k+1,k+2)**J
                    checks.append({'k':k,'m':m,'actual_step_identity':True,'rough_bound':True})
                item={'c':c,'d':d,'delta':delta,'q':q,'rho':rho,'k_min':kmin,
                      'm_initial':q*kmin+rho,'D_initial':str(D(c,d,delta,q*kmin+rho)),
                      'factorial_arguments_affine_k':{'u':[uc,us],'v':[vc,vs],'f':[fc,fs],'u_plus_f':[nc,ns]},
                      'numerator_factors':nf,'denominator_factors':tf,'N_coefficients':[str(x) for x in N],'T_coefficients':[str(x) for x in T],
                      'R_infinity_exact':str(R),'rough_power_J':J,'rough_certificate_variable':'x=k-k_min',
                      'rough_certificate':encode(coeffs),'attempts':attempts,'samples':checks}
                tracks.append(item)
                print(json.dumps({k:item[k] for k in ('c','d','delta','q','rho','k_min','D_initial','R_infinity_exact','rough_power_J')}),flush=True)
    result={'status':'actual step and positive-coefficient rough telescoping certificates; not Lean accepted',
            'source_sha256':hashlib.sha256(SOURCE.read_bytes()).hexdigest(),'tracks':tracks,
            'seconds':time.perf_counter()-started,'worker_lean_invocations':0}
    (OUT/'D-rough-step-certificates.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print('TRACKS',len(tracks),'SECONDS',result['seconds'])

if __name__=='__main__':main()
