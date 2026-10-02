#!/usr/bin/env python3
"""Exact R2 exception gate for a supplied rational (u,y).
Not an enumeration of all bases, not a test proving NC3. Calls the frozen R1
consumer only after the new necessary ratio/curve tests; all R0..R7 and gates
remain checked there. No repository, network, CAS, or Lean required.
"""
from pathlib import Path
from fractions import Fraction as F
import argparse,importlib.util,json,sys
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(Path(__file__).resolve().parent))
from sparse import unpack
spec=importlib.util.spec_from_file_location('frozen_r1_consumer',ROOT/'inputs/prior/code/recover.py')
prior=importlib.util.module_from_spec(spec);spec.loader.exec_module(prior)

def recover_exception(u,y,original_leading=False,original_pair=None):
    u,y=F(u),F(y)
    out={'input':{'u':str(u),'y':str(y)},'branch':'exception S=K_lin=0',
         'status':None,'survivors':[],
         'not_established':['NC3','original n,j recovery','finite terminal enumeration']}
    if original_pair is not None:
        n,j=original_pair
        if not isinstance(n,int) or isinstance(n,bool) or not isinstance(j,int) or isinstance(j,bool) or not 4<=j<=n//2:
            raise ValueError('The unchanged original pair must satisfy 4<=j<=floor(n/2).')
        out['unchanged_original_pair']={'n':str(n),'j':str(j)}
        out['original_pair_to_chart_link_verified']=False
    def reject(why):out.update(status='REJECTED_BY_NECESSARY_CONDITION',reason=why);return out
    if not u*(u-1)*y*(y-1):return reject('Outside adopted nonzero gates; not a new exclusion.')
    H=u*u-u*y*y+3*u*y-2*u+(y-1)**2
    J=u*u+u*y*y-3*u*y+y
    A=4*u*y*y*H;B=3*(u-1)*(y-1)**2*J
    out.update(H=str(H),J=str(J),A=str(A),B=str(B))
    if not A:return reject('R2: entire rational zero coefficient A=0 branch excluded.')
    r=B/A;out['input']['r']=str(r)
    if not r:return reject('Forced ratio r=0 violates the original chart gate.')
    if original_leading and r<=0:return reject('Original positive leading coefficient requires r>0.')
    D=8*r*u*u*y*y-6*(u-1)**2*(y-1)**2
    if not D:return reject('Forced ratio has D=0; cannot clear this denominator.')
    core=json.loads((ROOT/'certificates/core.json').read_text())
    cv=unpack(core['polys3']['Ccurve'],3).evaluate([u,y,0]);out['Ccurve']=str(cv)
    if cv:return reject('R2: complete curve equation Ccurve=0 fails.')
    data=json.loads((ROOT/'inputs/prior/certificates/scale.json').read_text())
    vals={k:unpack(data[k],4).evaluate([u,y,r,0]) for k in ['a','S','K']}
    out['exception_tests']={k:str(v) for k,v in vals.items()}
    if vals['S'] or vals['K']:return reject('S=K_lin=0 itself fails; a curve projection is not sufficient.')
    if not vals['a']:return reject('R2: whole rational a=0 exception is empty.')
    res=prior.recover(u,y,r,original_leading=original_leading)
    out['full_residual_audit']=res
    out['survivors']=res['survivors']
    out['status']='AUXILIARY_SURVIVOR_NOT_NC3' if res['survivors'] else 'REJECTED_BY_FULL_RESIDUAL_AUDIT'
    out['unsquared_Q_and_original_prime_power_audit_still_required']=True
    return out

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--u',required=True);p.add_argument('--y',required=True)
    p.add_argument('--original-leading',action='store_true')
    p.add_argument('--n',type=int);p.add_argument('--j',type=int)
    args=p.parse_args()
    if (args.n is None)!=(args.j is None):p.error('--n and --j must be supplied together.')
    try:
        out=recover_exception(args.u,args.y,args.original_leading,None if args.n is None else (args.n,args.j))
    except (ValueError,ZeroDivisionError) as e:p.error(str(e))
    print(json.dumps(out,ensure_ascii=False,indent=2))
