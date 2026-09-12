"""Construct norm-one units by a convergent signature collision; exact regression.
This program tests constructive steps; the universal height proof is in PROOFS.md.
"""
import argparse,json
from pathlib import Path
from math import isqrt

def collision_unit(D):
    R=isqrt(D);assert D>=2 and R*R!=D
    cap=2*R+2; signatures={};transcript=[]
    # Surd complete quotient (sqrt(D)+m)/den.
    m,den,a=0,1,R
    xp,xpp,yp,ypp=1,0,0,1
    limit=2*cap**3
    for idx in range(limit+1):
        x=a*xp+xpp;y=a*yp+ypp
        N=x*x-D*y*y
        assert N!=0 and abs(N)<=cap
        assert x<=cap**(idx+1) and y<=cap**(idx+1)
        sig=(N,x%abs(N),y%abs(N))
        if sig in signatures:
            old,x0,y0=signatures[sig]
            u_num=x*x0-D*y*y0;v_num=y*x0-x*y0
            assert u_num%N==0 and v_num%N==0
            u,v=u_num//N,v_num//N
            assert u>1 and v>0 and u*u-D*v*v==1
            assert u+v*(R+1)<cap**(idx+2)
            return dict(D=D,cap=cap,pigeonhole_limit=limit,indices=[old,idx],
                        first=[str(x0),str(y0)],second=[str(x),str(y)],norm=N,
                        unit=[str(u),str(v)],rough_log_bound=1024*D*D)
        signatures[sig]=(idx,x,y)
        xp,xpp,yp,ypp=x,xp,y,yp
        m=den*a-m;assert -R<=m<=R
        num=D-m*m;assert num>0 and num%den==0;den=num//den
        a=(R+m)//den
        assert 1<=a<=2*R
    raise AssertionError('pigeonhole bound exhausted')

def check_unit(row):
    D=row['D'];R=isqrt(D);cap=2*R+2
    assert cap==row['cap'] and row['pigeonhole_limit']==2*cap**3
    i,j=row['indices'];assert 0<=i<j<=2*cap**3
    x,y=map(int,row['first']);X,Y=map(int,row['second']);N=row['norm']
    assert x*x-D*y*y==N==X*X-D*Y*Y
    assert (X-x)%abs(N)==0 and (Y-y)%abs(N)==0
    u,v=map(int,row['unit']);assert u*u-D*v*v==1 and u>1 and v>0
    # Multiply back, rather than dividing the norm again.
    assert u*x+D*v*y==X and v*x+u*y==Y
    assert X<=cap**(j+1) and Y<=cap**(j+1)
    assert cap*cap<=16*D and (2*cap**3+2)*cap<3*cap**4<=768*D*D<1024*D*D
    return True

def main():
    ap=argparse.ArgumentParser();ap.add_argument('output');a=ap.parse_args()
    ds=[D for D in range(2,513) if isqrt(D)**2!=D]
    ds+=sorted({h*w for w in [17,25,51,75] for h in range(1,w) if isqrt(h*w)**2!=h*w}-set(ds))
    rows=[collision_unit(D) for D in ds]
    assert all(check_unit(r) for r in rows)
    # Universal proof's numerical steps: only integer comparisons.
    checks={
      'signature_count_factorization': '6A^2-(A+1)(2A+1)=(A-1)(4A+1)',
      'unit_coefficient_margin':1024-3*4**4,
      'unit_to_B4_margin':2**17-1024*9**2,
      'height_first_margin':2**18-(2**16+16),
      'BEG_three_logs_margin':2**79-48*96**11,
      'v_endpoint_margin':2**13-140,
      'new_v_bound_constant':str(2**128),
      'new_n_log2_bound_constant':str(2**129),
      'B_power':10}
    for k,v in checks.items():
        if k.endswith('_margin'):assert v>0
    data={'status':'PASS','units':rows,'unit_count':len(rows),'maximum_collision_index':max(x['indices'][1] for x in rows),'constants':checks,
          'scope':'exact arithmetic/constructive regressions; not a finite proof of the universal logarithmic theorem'}
    Path(a.output).write_text(json.dumps(data,indent=2)+'\n');print('PASS',len(rows),'unit constructions and universal constant margins')
if __name__=='__main__':main()
