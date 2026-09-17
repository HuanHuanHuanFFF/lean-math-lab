"""Parent integer projection and root/rounding audit for all three real targets.

The interval algorithm's enclosure proof was independently accepted by geometry;
this checks its fixed data, new root identities, rounding, and all exact distances.
"""
from fractions import Fraction as F
from pathlib import Path
import hashlib,json

ROOT=Path(__file__).resolve().parent
CUBIC=ROOT.parent/'cubic'


def cross(a,b):return [a[1]*b[2]-a[2]*b[1],a[2]*b[0]-a[0]*b[2],a[0]*b[1]-a[1]*b[0]]
def dot(a,b):return sum(x*y for x,y in zip(a,b))
def det(a):return dot(a[0],cross(a[1],a[2]))
def round_interval(interval,bits,c):
    lo,hi=(interval['lo'],interval['hi']) if isinstance(interval,dict) else interval
    s=1<<bits
    a=(2*c*lo+s)//(2*s);b=(2*c*hi+s)//(2*s)
    assert a==b
    assert abs(F(lo,s))<F(1,2) and abs(F(hi,s))<F(1,2)
    return a


def main():
    basepath=CUBIC/'stage05-rf-lll-20260915T200406Z.json'
    base=json.loads(basepath.read_text())
    pospath=CUBIC/'stage07-positive-infinity-20260915T203216Z.json'
    pos=json.loads(pospath.read_text())
    second=json.loads((CUBIC/'stage07-positive-infinity-independent-20260915T203439Z.json').read_text())
    assert pos['base_sha256']==hashlib.sha256(basepath.read_bytes()).hexdigest()
    assert second['source_sha256']==hashlib.sha256(pospath.read_bytes()).hexdigest()
    B,U,B0=base['reduced_basis'],base['unimodular_transform'],base['input_basis']
    assert det(U) in (-1,1)
    assert [[sum(U[i][k]*B0[k][j] for k in range(3)) for j in range(3)] for i in range(3)]==B
    c,m0=base['C'],base['M0']
    assert c==10**465 and m0==10**150
    normal=cross(B[0],B[1]);q=abs(dot(normal,B[2]));assert q==c
    nn=dot(normal,normal)
    def check(r,stored):
        residue=normal[2]*r%q
        dist=min(residue,q-residue)
        value=F(dist*dist,nn)
        assert value==F(*stored)
        assert dist*dist>16*m0*m0*nn
        return value//(m0*m0)
    r=round_interval(base['normalized_logs']['Q2'],base['bits'],c)
    assert r==base['rounded_logs']['r0']
    result=[{'branch':'negative','distance_ratio_floor':check(r,base['projection_distance_squared'])}]
    for target,other in zip(pos['targets'],second['targets']):
        assert target['branch']==other['branch']
        lo,hi=target['theta']['lo'],target['theta']['hi'];s=1<<pos['bits']
        if target['branch']=='small_positive':assert 0<lo<hi<s
        else:assert 5*s<lo<hi<6*s
        cubic=lambda t:t**3-27*t*s*s+4*s**3
        assert cubic(lo)*cubic(hi)<0
        r=round_interval(target['normalized_log'],pos['bits'],c)
        assert r==target['rounded_target']
        assert r==round_interval(other['normalized_log_interval'],second['bits'],c)
        ratio=check(r,target['distance_squared'])
        assert ratio==other['distance_ratio_floor']
        result.append({'branch':target['branch'],'distance_ratio_floor':ratio})
    output={'result':'PASS','scope':'Fixed interval/root/rounding data and integer distance, in addition to separately reviewed RF enclosure mathematics',
            'targets':result,'base_sha256':hashlib.sha256(basepath.read_bytes()).hexdigest(),
            'positive_sha256':hashlib.sha256(pospath.read_bytes()).hexdigest(),
            'script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (ROOT/'review_cubic_three_targets.json').write_text(json.dumps(output,indent=2)+'\n',encoding='utf-8')
    print(json.dumps(output))


if __name__=='__main__':main()
