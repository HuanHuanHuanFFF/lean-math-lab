#!/usr/bin/env python3
"""Exact finite-fiber consumer for ONE rational (u,y,r), r=alpha/Lambda.
This is not an enumeration of all rational triples, nor a test of NC3.
Default checks the rational auxiliary graph; --original-leading additionally
uses the necessary original leading-coefficient conditions r>0 and t square.
"""
from pathlib import Path
from fractions import Fraction as F
from math import isqrt
import json,argparse
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent))
from sparse import unpack
ROOT=Path(__file__).resolve().parents[1]

def rational_sqrt(x):
    if x<0:return None
    a,b=isqrt(x.numerator),isqrt(x.denominator)
    return F(a,b) if a*a==x.numerator and b*b==x.denominator else None

def recover(u,y,r,original_leading=False):
    u,y,r=map(F,(u,y,r))
    data=json.loads((ROOT/'certificates'/'scale.json').read_text())
    reg=json.loads((ROOT/'certificates'/'regular.json').read_text())
    vals={k:unpack(data[k],4).evaluate([u,y,r,0]) for k in ['D','F','C','a','b','c','H','S','K','Cstar']}
    result={'input':{'u':str(u),'y':str(y),'r':str(r)},
            'domain':'original-leading-necessary' if original_leading else 'rational-auxiliary-graph',
            'branch':None,'trials':[],'survivors':[],
            'not_checked':['original affine coordinate','f,J integer and nonnegative digits',
                           'GATE threshold','original n,j','unsquared original Q identity',
                           'complete original source prime powers','NC3']}
    def done(branch,reason):result.update(branch=branch,reason=reason);return result
    if not u*(u-1)*y*(y-1)*r*vals['D']:
        return done('outside-adopted-REG4','A required base nonzero condition failed; not a new exclusion.')
    if original_leading and r<=0:
        return done('original-leading-sign','Original f leading coefficient forces r>0.')
    a,b,c,S,K=map(vals.get,['a','b','c','S','K'])
    if bool(S)!=bool(K):return done('mixed-zero-obstruction','S Lambda+Cstar K=0 has no nonzero scale.')
    if S:
        roots=[-vals['Cstar']*K/S];result['branch']='generic-unique'
    else:
        result['branch']='exception-S=K=0'
        if not a:
            if not b:return done('constant-obstruction','a=b=0 but c!=0.')
            roots=[-c/b];result['branch']+=';linear-quadratic-drop'
        else:
            delta=b*b-4*a*c;sq=rational_sqrt(delta)
            if sq is None:return done(result['branch'],'Quadratic discriminant is not a rational square.')
            roots=sorted(set([(-b-sq)/(2*a),(-b+sq)/(2*a)]))
    for L in roots:
        trial={'Lambda':str(L),'rejected_by':[]}
        if not L:trial['rejected_by'].append('Lambda=0');result['trials'].append(trial);continue
        A=r*L;w=(L*vals['F']+vals['C'])/(L*vals['D'])
        trial.update(alpha=str(A),w=str(w))
        if 2*w==3:trial['rejected_by'].append('w=3/2')
        Gamma=6*u*u*(u-1)**2;ell=Gamma*L;z=Gamma*A;v=u+u*(u-1)*y
        h=y*y-2*u*y-1+L*(6*w*(u-1)**2-1)-A*(8*w*u*u-12*u*u+12*u-4)
        cc=(4*z*w-6*z)/3+h*(u*u-2*u)-w*ell-u*u+2*(u-1)*v
        a0=ell*z;k=ell*w;eta=ell*(h+u);nu=ell*(cc+h*u+v)
        t=a0+k*k+nu;trial['t']=str(t)
        if not t:trial['rejected_by'].append('t=0')
        if original_leading and rational_sqrt(t) is None:trial['rejected_by'].append('t not a rational square')
        residuals={}
        for i in range(8):
            ri=unpack(reg['R'][str(i)]['terms'],5).evaluate([w,u,y,L,A])
            residuals['R'+str(i)]=str(ri)
            if ri:trial['rejected_by'].append('R'+str(i))
        trial['residuals']=residuals
        result['trials'].append(trial)
        if not trial['rejected_by']:
            result['survivors'].append({'status':'AUXILIARY_SURVIVOR_NOT_NC3',
                'Lambda':str(L),'alpha':str(A),'w':str(w),'t':str(t),
                'original_coefficients':{k:str(v) for k,v in {'h':h,'c':cc,'k':k,'ell':ell,'eta':eta,'nu':nu,'a0':a0}.items()}})
    return result

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('u','y','r'):p.add_argument('--'+name,required=True)
    p.add_argument('--original-leading',action='store_true');args=p.parse_args()
    try:out=recover(args.u,args.y,args.r,args.original_leading)
    except (ValueError,ZeroDivisionError) as e:p.error(str(e))
    print(json.dumps(out,ensure_ascii=False,indent=2))
