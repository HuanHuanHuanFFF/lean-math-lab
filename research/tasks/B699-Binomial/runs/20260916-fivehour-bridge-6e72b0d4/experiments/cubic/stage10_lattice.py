"""Exact arbitrary-rank lattice finder and cofactor distance certificates, two rounds."""
from fractions import Fraction as F
from math import isqrt
from pathlib import Path
from datetime import datetime,timezone
import argparse,hashlib,json,time

HEIGHT_BOUNDS={7:(F(1,2),7),11:(F(1,2),5),16:(F(1),5),20:(F(1,16),38),25:(F(1,8),16)}

def dot(a,b):return sum((x*y for x,y in zip(a,b)),F(0))
def gs(rows):
    stars=[];norms=[]
    for row in rows:
        v=[F(x) for x in row]
        for star,norm in zip(stars,norms):
            mu=dot(row,star)/norm
            v=[x-mu*y for x,y in zip(v,star)]
        norm=dot(v,v);assert norm>0
        stars.append(v);norms.append(norm)
    return stars,norms

def determinant(rows):
    n=len(rows)
    if n==0:return 1
    a=[list(row) for row in rows];den=1;sign=1
    for k in range(n-1):
        p=next((p for p in range(k,n) if a[p][k]),None)
        if p is None:return 0
        if p!=k:a[p],a[k]=a[k],a[p];sign=-sign
        pivot=a[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                num=a[i][j]*pivot-a[i][k]*a[k][j]
                assert num%den==0
                a[i][j]=num//den
            a[i][k]=0
        den=pivot
    return sign*a[-1][-1]

def finder(original):
    n=len(original);rows=[list(row) for row in original]
    transform=[[int(i==j) for j in range(n)] for i in range(n)]
    k=1;steps=0
    while k<n:
        steps+=1
        assert steps<100000, 'Finder cap, not a mathematical failure.'
        if steps%2000==0:print(json.dumps({'finder_steps':steps,'dimension':n}),flush=True)
        stars,norms=gs(rows[:k+1])
        for j in range(k-1,-1,-1):
            mu=dot(rows[k],stars[j])/norms[j]
            q=(2*mu.numerator+mu.denominator)//(2*mu.denominator)
            if q:
                rows[k]=[a-q*b for a,b in zip(rows[k],rows[j])]
                transform[k]=[a-q*b for a,b in zip(transform[k],transform[j])]
        mu=dot(rows[k],stars[k-1])/norms[k-1]
        if norms[k]>=(F(3,4)-mu*mu)*norms[k-1]:k+=1
        else:
            rows[k],rows[k-1]=rows[k-1],rows[k]
            transform[k],transform[k-1]=transform[k-1],transform[k]
            k=max(1,k-1)
    assert determinant(transform) in (-1,1)
    assert rows==[[sum(transform[i][k]*original[k][j] for k in range(n)) for j in range(n)] for i in range(n)]
    return rows,transform,steps

def round_interval(iv,S,C):
    lo=(2*iv[0]*C+S)//(2*S);hi=(2*iv[1]*C+S)//(2*S)
    assert lo==hi
    return lo

def ceiling_sqrt(r):
    r=F(r);m=isqrt(r.numerator//r.denominator)
    return m if m*m*r.denominator>=r.numerator else m+1

def one_round(rf,C,M0,delta,phase):
    rank=rf['rank'];n=rank+1;S=1<<rf['bits']
    free=[x for x in rf['logs'] if x['kind']=='basis']
    targets=[x for x in rf['logs'] if x['kind']=='target']
    rounded=[round_interval(x['normalized_log'],S,C) for x in free]
    base=[[int(i==j) for j in range(rank)]+[rounded[i]] for i in range(rank)]+[[0]*rank+[C]]
    began=time.perf_counter();rows,U,steps=finder(base)
    normal=[(-1)**j*determinant([row[:j]+row[j+1:] for row in rows[:rank]]) for j in range(n)]
    nn=sum(a*a for a in normal)
    assert nn>0 and abs(sum(a*b for a,b in zip(normal,rows[-1])))==C
    results=[]
    for target in targets:
        rr=round_interval(target['normalized_log'],S,C)
        rem=(rr*normal[-1])%C;rem=min(rem,C-rem)
        assert rem*rem>100*M0*M0*nn
        results.append({'name':target['name'],'rounded_target':rr,'remainder':rem,
                        'distance_squared':[rem*rem,nn],'distance_ratio_floor':(rem*rem)//(nn*M0*M0),
                        'strict_distance_gt_100_M0_squared':True})
    # UP30 plus |lambda|>M0/C; only log(10)<3 is used.
    digits=len(str(C))-1
    exponent_budget=30+3*(digits-300) if phase==1 else 30+3*digits
    Mlt=ceiling_sqrt(F(exponent_budget)/delta)
    return {'phase':phase,'C':C,'M0':M0,'input_basis':base,'basis':rows,'unimodular_transform':U,
            'normal':normal,'normal_squared':nn,'targets':results,'finder_steps':steps,
            'UP_constant':30,'height_delta':[delta.numerator,delta.denominator],
            'safe_exponent_budget':exponent_budget,'conditional_M_strictly_less_than':Mlt,
            'elapsed_seconds':round(time.perf_counter()-began,6)}

def main():
    parser=argparse.ArgumentParser();parser.add_argument('certificate')
    args=parser.parse_args();source=Path(args.certificate).resolve()
    rf=json.loads(source.read_text());assert rf['status']=='PASS'
    k=rf['k'];delta,Hupper=HEIGHT_BOUNDS[k]
    first=one_round(rf,rf['C'],10**300,delta,1)
    assert first['conditional_M_strictly_less_than']<=256
    print(json.dumps({'k':k,'first_round':'PASS','M_lt':first['conditional_M_strictly_less_than'],
                      'seconds':first['elapsed_seconds']}),flush=True)
    second=one_round(rf,10**30,256,delta,2)
    Mlt=second['conditional_M_strictly_less_than']
    s_bound=119+3*Hupper*Mlt*Mlt
    out={'status':'PASS','k':k,'rank':rf['rank'],'source_RF':source.name,
         'source_RF_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
         'phases':[first,second],'conditional_M_lt':Mlt,'conditional_s_lt':s_bound,
         'scope':'Exact lattice acceptance; exponent bounds conditional on proven complete MW basis, height matrix, nonzero real-branch UP30 and David M0.',
         'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    dest=Path(__file__).with_name(f'stage10-lattice-k{k}-{stamp}.json')
    dest.write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','output':dest.name,'M_lt':Mlt,'s_lt':s_bound,
                      'round2_seconds':second['elapsed_seconds']}),flush=True)

if __name__=='__main__':main()
