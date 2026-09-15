"""Discover and exactly check weighted g-order certificates from a frozen pool."""
from pathlib import Path
import json,math,time
from fractions import Fraction
from probe_dual import LP,PTS,ALL,RS,REPLAY,translate_order
from discover_atoms import halfshift,normalize

ROOT=Path(__file__).resolve().parent
EXPS={1:[(1,0),(0,1),(0,0)],
      2:[(2,0),(1,1),(0,2),(1,0),(0,1),(0,0)],
      3:[(3,0),(2,1),(1,2),(0,3),(2,0),(1,1),(0,2),(1,0),(0,1),(0,0)]}

def pool():
    old=json.loads((REPLAY/'exploration/oldodd/failure_models.json').read_text())
    cubics=json.loads((REPLAY/'exploration/probe7_cubic_pool.json').read_text())
    fs=[]
    for f in old['pools']['7']+cubics:
        p=[(a,b,c) for (a,b),c in zip(EXPS[f['degree']],f['coeffs']) if c]
        fs.append(dict(poly=p,degree=max(a+b for a,b,c in p),source='old-low'))
    for f in json.loads((REPLAY/'evidence/height_certificates.json').read_text()):
        fs.append(dict(poly=f['poly'],degree=f['degree'],source='old-fat'))
    for f in json.loads((ROOT/'atoms.json').read_text())['atoms']:
        fs.append(dict(poly=f['poly'],degree=f['degree'],source='new-atom'))
    result={}
    for f in fs:
        p=normalize(f['poly']);shift=halfshift(p)
        if all(c<0 for c in shift.values()):p=[(a,b,-c) for a,b,c in p];shift={k:-c for k,c in shift.items()}
        if shift.get((0,0),0)<=0 or any(c<0 for c in shift.values()):continue
        t=min(a+b for a,b,c in p)
        orders=tuple(translate_order(p,*z) for z in PTS)
        key=orders,t
        if key in result and result[key]['degree']<=f['degree']:continue
        result[key]=dict(f,poly=p,orders=orders,origin_order=t,
                         positive_terms=len(shift),coefficient_norm=sum(abs(c) for a,b,c in p))
    return list(result.values())

def main():
    start=time.time();fs=pool();N=len(fs);out=[]
    print('verified positive pool',N,flush=True)
    A=[];b=[]
    for i,p in enumerate(PTS):
        row=[-f['orders'][i] for f in fs]+[int(sum(p)==r) for r in RS]
        A.append(row);b.append(0)
    degree=[f['degree'] for f in fs]+[0]*len(RS)
    A.extend([degree,[-z for z in degree]]);b.extend([1,-1])
    for tau in (Fraction(0),Fraction(1,4),Fraction(4,15),Fraction(2,7),Fraction(3,10),Fraction(4,13),Fraction(1,3),Fraction(1,2)):
        objective=[float(tau*f['origin_order']) for f in fs]+[1]*len(RS)
        v=LP(A,b,objective).solve()
        if v is None:raise RuntimeError('infeasible normalized primal')
        fr=[Fraction(float(x)).limit_denominator(10**7) for x in v]
        L=math.lcm(*(z.denominator for z in fr));vv=[int(z*L) for z in fr]
        common=math.gcd(*vv);vv=[z//common for z in vv]
        selected=[dict(f,weight=vv[i],pool_id=i) for i,f in enumerate(fs) if vv[i]]
        weights=vv[N:]
        D=sum(f['degree']*f['weight'] for f in selected)
        T=sum(f['origin_order']*f['weight'] for f in selected)
        W=sum(weights)
        errors=[]
        for i,p in enumerate(PTS):
            if sum(f['orders'][i]*f['weight'] for f in selected)<weights[RS.index(sum(p))]:errors.append(i)
        if any(z<0 for z in vv):errors.append('negative')
        rec=dict(tau=str(tau),D=D,W=W,T=T,delta=D-W,row_weights=dict(zip(RS,weights)),
                 exact_cover=not errors,errors=errors,polynomials=selected)
        out.append(rec)
        print(json.dumps({k:v for k,v in rec.items() if k!='polynomials'}|{'factors':len(selected)}),flush=True)
    (ROOT/'gcd_frontier.json').write_text(json.dumps(dict(certificates=out,pool_size=N,elapsed=time.time()-start),indent=2),encoding='utf-8')

if __name__=='__main__':main()
