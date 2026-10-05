#!/usr/bin/env python3
"""R6 exact necessary-model filter. Passing is NOT NC3 and is NOT original recovery."""
from __future__ import annotations
import json,sys,argparse
from fractions import Fraction
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
import ipoly as P
from recover import recover
ROOT=Path(__file__).resolve().parents[1]
def rational(v):
    if isinstance(v,bool) or not isinstance(v,(int,str,Fraction)):
        raise TypeError('Use integers, exact rational strings or Fraction; no floats.')
    return Fraction(v)
def read(p):return json.loads((ROOT/p).read_text())
def ts3(t):return P.drop_last(t) if t and len(t[0][0])==4 else P.unpack(t,3)
def audit(u,y,r,full=True):
    u,y,r=map(rational,(u,y,r));vals=[u,y,r]
    ans={'base':dict(zip(['u','y','r'],map(str,vals))),'status':'UNCLASSIFIED','NC3_certified':False,'original_nj_recovered':False,'complete_source_powers_verified':False,'p_equals_i_retained':True,'scope':'localized necessary polynomial model only'}
    if not r*u*(u-1)*y*(y-1):ans['status']='REJECT_BASIC_ZERO_GATE';return ans
    g=read('inputs/generic.json');s=read('inputs/R1_scale.json')
    for name,terms in [('D',s['D']),('N',g['N']),('K',g['K'])]:
        if not P.evaluate(ts3(terms),vals):ans['status']='REJECT_ZERO_'+name;return ans
    polys={'P5':ts3(g['B5'])}
    for i in range(4,-1,-1):polys[f'V{i}']=ts3(read(f'certificates/colon_{i}.json')['V'])
    residues={k:str(P.evaluate(v,vals))for k,v in polys.items()}
    ans['new_residuals']=residues
    if any(Fraction(v)!=0 for v in residues.values()):ans['status']='REJECT_NONZERO_NECESSARY_RESIDUAL';return ans
    ans['status']='NECESSARY_POLYNOMIAL_SURVIVOR_NOT_NC3'
    if full:ans['inherited_full_unsquared_recovery']=recover(u,y,r)
    return ans
if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    for n in ['u','y','r']:p.add_argument('--'+n,required=True)
    a=p.parse_args()
    try:out=audit(a.u,a.y,a.r)
    except (TypeError,ValueError,ZeroDivisionError)as e:p.error(str(e))
    print(json.dumps(out,ensure_ascii=False,indent=2))
