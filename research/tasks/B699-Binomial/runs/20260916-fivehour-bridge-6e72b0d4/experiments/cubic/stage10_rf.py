"""Strict real elliptic logarithms and area ratios for each new fixed curve."""
from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
import argparse,hashlib,json,time

import stage10_intervals as ar
from stage10_intervals import I,RF,cubic_roots,evaluate
from stage10_models import BASES,coefficients,double_point,doubled_infinity


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--k',type=int,required=True)
    args=parser.parse_args();k=args.k
    basis=BASES[k];rank=len(basis);C=10**((rank+1)*300+30);M0=10**300
    ar.configure(C.bit_length()+512)
    began=time.perf_counter();A,B=coefficients(k)
    discr=-16*(4*A**3+27*B**2)
    roots=cubic_roots(A,B,-1000,1000,3 if discr>0 else 1)
    if discr>0:
        e3,e2,e1=roots
        omega=2*RF(0,e1-e2,e1-e3)
        eta=2*RF(0,e2-e3,e1-e3)
        area_ratio=omega/eta
        period_data={'type':'three_real_roots','eta':eta.data()}
        def logarithm(t,v):
            assert (t-e1).lo>0
            ans=RF(t-e1,t-e2,t-e3)
            return -ans if v.sign()>0 else ans
    else:
        e=roots[0];a0=3*e;b0=3*e*e+A;r=b0.sqrt()
        aa=4*r;bb=a0+2*r;bbp=-a0+2*r
        assert min(aa.lo,bb.lo,bbp.lo)>0
        K=RF(0,aa,bb);Kp=RF(0,aa,bbp)
        omega=4*K;area_ratio=2*K/Kp
        period_data={'type':'one_real_root','K':K.data(),'K_complementary':Kp.data(),
                     'positive_RF_parameters':[aa.data(),bb.data(),bbp.data()]}
        def logarithm(t,v):
            w=t-e
            assert w.lo>0
            yy=(w-r)/w.sqrt();yy2=yy*yy
            integral=RF(yy2,yy2+aa,yy2+bb)
            if yy.sign()<0:integral=2*K-integral
            return -integral if v.sign()>0 else integral
    assert omega.lo>ar.S//100 and omega.hi<ar.S
    assert area_ratio.lo>0 and area_ratio.hi<100*ar.S
    logs=[]
    for index,P in enumerate(basis):
        xx,yy=double_point(P,A,B)
        ell=logarithm(I.co(xx),I.co(yy));phi=ell/omega
        assert phi.lo>-ar.S//2 and phi.hi<ar.S//2
        logs.append({'name':f'G{index+1}_double','kind':'basis','normalized_log':phi.data(),
                     'display':phi.display(),'rounded':phi.rounded(C)})
    theta_roots=cubic_roots(-27,2*k,-6,6,3)
    xx,yy=doubled_infinity(k)
    for index,theta in enumerate(theta_roots):
        tx,vy=evaluate(xx,theta),evaluate(yy,theta)
        ell=logarithm(tx,vy);phi=ell/omega
        assert phi.lo>-ar.S//2 and phi.hi<ar.S//2
        logs.append({'name':['negative','small_positive','large_positive'][index],
                     'kind':'target','theta':theta.data(),'doubled_coordinates':[tx.data(),vy.data()],
                     'normalized_log':phi.data(),'display':phi.display(),'rounded':phi.rounded(C)})
    here=Path(__file__).resolve().parent
    source=here.parent/'main/b3_five_curve_mw-output-20260915T205232Z.txt'
    out={'status':'PASS','k':k,'rank':rank,'model':[A,B],'bits':ar.BITS,'RF_iterations':ar.ITER,
         'C':C,'M0':M0,'omega':omega.data(),'omega_display':omega.display(),
         'weierstrass_roots':[r.data() for r in roots],
         'area_ratio_omega_squared_over_area':area_ratio.data(),'area_ratio_display':area_ratio.display(),
         'period_data':period_data,'logs':logs,
         'two_Q_field_coefficients':[[str(c) for c in p] for p in (xx,yy)],
         'Mordell_Weil_receipt':str(source),'Mordell_Weil_receipt_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
         'sources':{name:hashlib.sha256((here/name).read_bytes()).hexdigest() for name in
                    ['stage10_models.py','stage10_intervals.py','stage10_rf.py']},
         'scope':'Strict positive-RF log intervals and period-area bounds only. No lattice or M bound in this output.',
         'elapsed_seconds':round(time.perf_counter()-began,6)}
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    dest=here/f'stage10-rf-k{k}-{stamp}.json'
    dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','output':dest.name,'k':k,'rank':rank,'omega':omega.display(),
                      'area_ratio':area_ratio.display(),'logs':[(a['name'],a['display']) for a in logs],
                      'elapsed_seconds':out['elapsed_seconds']}),flush=True)


if __name__=='__main__':main()
