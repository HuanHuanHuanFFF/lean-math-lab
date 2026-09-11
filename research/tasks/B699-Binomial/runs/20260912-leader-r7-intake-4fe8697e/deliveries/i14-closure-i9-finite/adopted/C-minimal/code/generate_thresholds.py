"""New finite bridge only, not replay of A's tail or historical certificates."""
from pathlib import Path
import json,time
from fractions import Fraction
from content import primes_to,shared_v
from certified_logs import SCALE,log_interval
ROOT=Path(__file__).resolve().parents[1]
FAMILIES=[((5,7,14),'261/100',1431),((9,12,20),'31/10',499),
 ((5,6,15),'243/100',499),((8,8,13),'207/50',499),
 ((9,11,18),'41/10',499),((10,15,19),'239/50',499)]

def main():
    start=time.monotonic();ps=primes_to(max(sum(t)*old//2 for t,g,old in FAMILIES));families=[]
    for triple,rate,old in FAMILIES:
        rateq=Fraction(rate);rows=[];fails=[];minimum=None
        for m in range(1,old+1):
            coords=tuple(t*m for t in triple);factors=[];lo=hi=0
            for p in ps:
                if 2*p+1>sum(coords):break
                e=shared_v(coords,2,p)
                if e:
                    factors.append([p,e]);a,b=log_interval(p);lo+=a*e;hi+=b*e
            target=rateq*m*SCALE
            if lo>target: status='ABOVE'
            elif hi<target: status='BELOW';fails.append(m)
            else: raise ArithmeticError(('undecided logarithm',triple,m))
            rows.append(dict(m=m,factors=factors,log_lower=lo,log_upper=hi,status=status))
        new=max(fails,default=0)
        finite=[r for r in rows if r['m']>new]
        gap=min(Fraction(r['log_lower'],SCALE)-rateq*r['m'] for r in finite)
        # C2 may be weaker than the minimum of actual G's; m0 is for C2 itself.
        result=dict(triple=list(triple),g=rate,source_m0=old,new_m0=new,
                    accepted_from=new+1,accepted_to=old,finite_count=old-new,
                    failed_m=fails,minimum_margin=str(gap),rows=rows)
        families.append(result)
        print('BRIDGE',triple,'m0',old,'->',new,'rows',old-new,'minmargin',str(gap),flush=True)
    cert=dict(kind='FINITE_C2_BRIDGE',scale=SCALE,families=families,
              tail='CONDITIONAL_ON_FROZEN_A_COMMON_PRIME_PRODUCT_BOUND',lean=False)
    (ROOT/'evidence/threshold_certificate.json').write_text(json.dumps(cert,separators=(',',':'))+'\n')
    summary={k:v for k,v in cert.items() if k!='families'}
    summary['families']=[{k:v for k,v in f.items() if k!='rows'} for f in families]
    summary['seconds']=round(time.monotonic()-start,3)
    (ROOT/'evidence/threshold_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
if __name__=='__main__':main()
