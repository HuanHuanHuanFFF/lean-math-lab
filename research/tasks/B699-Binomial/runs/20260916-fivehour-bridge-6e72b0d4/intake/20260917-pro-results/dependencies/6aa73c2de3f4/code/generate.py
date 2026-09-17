"""Regenerate the two integer coefficient certificates from frozen rational kernels."""
import json,math,argparse
from common import ROOT,rows,multiply

def inverse_projective(exps,vec,D):
    out={}
    for(a,b),c in zip(exps,vec):
        if not c:continue
        e=D-a-b
        if e<0:raise ValueError('invalid projective degree')
        for u in range(e+1):
            for v in range(e-u+1):
                k=a+u,b+v
                out[k]=out.get(k,0)+c*math.comb(e,u)*math.comb(e-u,v)*(-1)**(e-u-v)
    out={p:c for p,c in out.items()if c}
    g=math.gcd(*out.values())
    return {p:c//g for p,c in out.items()}

def make():
    seeds=json.loads((ROOT/'evidence/seed-kernels.json').read_text());certs=[]
    for seed in seeds:
        m=seed['missing'];D=seed['record']['reducedD']
        vec=[sum(w*v[k]for w,v in zip(seed['combination'],seed['vectors']))for k in range(len(seed['exps']))]
        G=inverse_projective(seed['exps'],vec,D)
        if m==0:
            fs=[({(2,0):1,(1,1):3,(1,0):-5,(0,2):1,(0,1):-5,(0,0):4},1),({(0,1):1,(0,0):-1},3),({(0,1):1},2),({(1,0):1,(0,0):-1},2)]
        elif m==1:
            fs=[({(2,0):1,(1,1):1,(1,0):-4,(0,2):1,(0,1):-4,(0,0):3},1),({(0,1):1,(0,0):-1},2),({(0,1):1},3),({(1,0):1},2)]
        else:raise ValueError('unexpected missing slot')
        F=G
        for f,e in fs:
            for _ in range(e):F=multiply(F,f)
        norm=sum(abs(c)for c in F.values());c5=2**24*3**20*5**29;c6=2**24*3**20
        certs.append({'missing':m,'weights':{'1':29,'3':20,'4':12},'degree':60,'origin_order':min(a+b for a,b in F),'poly':rows(F),'residual':rows(G),'factors':[{'exponent':e,'poly':rows(f)}for f,e in fs],'cost5':c5,'cost6':c6,'norm':norm,'E5':61+(c5*norm).bit_length(),'E6':61+(c6*norm).bit_length()})
    return certs
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',default=str(ROOT/'evidence/polynomials.json'));a=ap.parse_args()
    from pathlib import Path
    Path(a.output).write_text(json.dumps(make(),sort_keys=True,separators=(',',':'))+'\n')
    print('GENERATED_INTEGER_POLYNOMIALS')
