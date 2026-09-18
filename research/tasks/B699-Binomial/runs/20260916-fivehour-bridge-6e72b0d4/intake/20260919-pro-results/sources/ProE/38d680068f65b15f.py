#!/usr/bin/env python3
"""Independent integer sparse-polynomial checker. No SymPy, eval, or generator import."""
from pathlib import Path
import json, argparse, hashlib
VARS=['x','y','n','E','F','D','P','H','Q','S','g','xi','lam','mu','w','t','v','q','h','j']; K=len(VARS); Z=(0,)*K
class Poly:
    def __init__(self, a=0):
        self.a={Z:a} if isinstance(a,int) and a else ({} if isinstance(a,int) else {k:v for k,v in a.items() if v})
    def __add__(self,other):
        b=other if isinstance(other,Poly) else Poly(other); d=dict(self.a)
        for k,v in b.a.items():d[k]=d.get(k,0)+v
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.a.items()})
    def __sub__(self,other):return self+-other if isinstance(other,Poly) else self+(-other)
    def __rsub__(self,other):return -self+other
    def __mul__(self,other):
        b=other if isinstance(other,Poly) else Poly(other); d={}
        for m,c in self.a.items():
            for l,e in b.a.items():
                k=tuple(a+b for a,b in zip(m,l));d[k]=d.get(k,0)+c*e
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,i):
        if not isinstance(i,int) or i<0:raise ValueError('nonnegative integer exponent required')
        out=Poly(1); b=self
        while i:
            if i&1:out=out*b
            b=b*b;i//=2
        return out
    def sub(self,var,value):
        idx=VARS.index(var); out=Poly()
        for m,c in self.a.items():
            base=list(m); e=base[idx];base[idx]=0
            out+=Poly({tuple(base):c})*(value**e)
        return out

def var(i):
    e=[0]*K;e[i]=1;return Poly({tuple(e):1})
globals().update({n:var(i) for i,n in enumerate(VARS)})
def expected_cases():
    d={}
    def put(key,poly,pos=False):d[key]=(poly,pos)
    # Deliberately use factor forms rather than the generator's differences.
    put('weighted_quartic',(x-3*y)**2*(27*x*x+14*x*y+3*y*y))
    put('finite_shift',n**3-15*n*n+23*n-10)
    put('finite_shift_positive',x**3+33*x*x+311*x+614,True)
    put('moment_clear',2*lam**2*mu*Q*g**3*E**2*F**2*S**2*H*xi*(w*D-P))
    put('source_minimum',13*x+410,True)
    put('width_budget',13*x**4+260*x**3+1950*x**2+6500*x+6910,True)
    put('K_recovery_combination',q*(2*mu*D*v*v-g*xi*(lam*t*t*q-h)))
    put('remaining_polynomial',9*P*q*t*t-6*P**2*q*t+P**3*q-3*t*t*q*q+6*t-P)
    for c,tag in ((7,'plus'),(11,'minus')):
        tt=12*v+7; pp=12*v+11; qq=16*v+c; uu=24*v+10
        nn=pp*qq*uu+2; ss=tt*qq**2; tau=nn-ss
        G=(4*(4032*v**3+4164*v*v+1349*v+132) if tag=='plus' else -4*(2880*v**3+7644*v*v+5947*v+1414))
        put('shell_G_'+tag,G)
        put('shell_G_sign_'+tag,(G if tag=='plus' else -G).sub('v',x+1),True)
        put('shell_low_width_'+tag,(nn-qq**3).sub('v',x+1),True)
        put('shell_high_width_'+tag,(qq**4-nn).sub('v',x+1),True)
        put('shell_legal_tau_'+tag,(tau-4).sub('v',x+1),True)
        put('shell_endpoint_order_'+tag,(ss-tau).sub('v',x+1),True)
    # Direct evaluation on raw actual coefficients, not the generator's zero constants.
    L=n*(n-1)*(n-2); b=3*j*(n-1)*(n-2); c=3*j*(j-1)*(n-2); dd=j*(j-1)*(j-2)
    inv=b*b-3*L*c
    put('Psi_n_recovery',n*inv-3*L*(b-c))
    put('Psi_j_recovery',j*inv-b*(b-c))
    put('Psi_d_recovery',3*(n-2)*dd-c*(j-2))
    assert not d['Psi_n_recovery'][0].a and not d['Psi_j_recovery'][0].a and not d['Psi_d_recovery'][0].a
    return d

def validate(obj):
    if set(obj)!={'version','variables','cases','shell_mod9','scope'}:raise ValueError('schema keys')
    if obj['version']!=1 or obj['variables']!=VARS:raise ValueError('version/variables')
    if obj['scope']!='symbolic identities and declared relaxed sign shells only; no finite NC3 search':raise ValueError('scope')
    expect=expected_cases()
    if set(obj['cases'])!=set(expect):raise ValueError('missing/extra identity')
    for key,(poly,pos) in expect.items():
        c=obj['cases'][key]
        if set(c)!={'terms','positive'} or type(c['positive'])!=bool or c['positive']!=pos:raise ValueError('case schema')
        got={}; last=None
        for m,a in c['terms']:
            if len(m)!=K or any(type(e)!=int or e<0 for e in m) or type(a)!=int or a==0:raise ValueError('term syntax')
            m=tuple(m)
            if m in got or (last is not None and m<=last):raise ValueError('term order')
            got[m]=a;last=m
        if got!=poly.a:raise ValueError('polynomial mismatch: '+key)
        if pos and (any(c<0 for c in got.values()) or got.get(Z,0)<=0):raise ValueError('positive cone failed')
    if set(obj['shell_mod9'])!={'plus','minus'}:raise ValueError('congruence list')
    for c,tag,vv in ((7,'plus',531*h),(11,'minus',333*h+5)):
        tt=12*vv+7; pp=tt+4; qq=16*vv+c; uu=3*tt-pp; nn=pp*qq*uu+2
        coeff=[0]*4
        for m,z in (nn-1).a.items():
            if any(e for i,e in enumerate(m) if i!=VARS.index('h')):raise ValueError('univariate expected')
            coeff[m[VARS.index('h')]]=z
        expected={'modulus':9,'coefficients_ascending':coeff,'residue':6}
        if obj['shell_mod9'][tag]!=expected:raise ValueError('congruence mismatch')
        if coeff[0]%9!=6 or any(z%9 for z in coeff[1:]):raise ValueError('congruence invalid')
    return {'status':'PASS','symbolic_cases':len(expect),'positive_cases':sum(p for _,p in expect.values()),'polynomial_congruences':2}

def verify_sources(root):
    info=json.loads((root/'outputs'/'source_provenance.json').read_text())
    for item in info:
        data=(root/item['stored_path']).read_bytes()
        if len(data)!=item['bytes'] or hashlib.sha256(data).hexdigest()!=item['sha256']:raise ValueError('adopted source bytes changed')
    return len(info)
if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('certificate',type=Path);a.add_argument('--sources',type=Path);args=a.parse_args()
    try:
        ans=validate(json.loads(args.certificate.read_text()))
        if args.sources:ans['source_files_verified']=verify_sources(args.sources)
        print(json.dumps(ans,sort_keys=True))
    except (ValueError,TypeError,KeyError,AssertionError,IndexError) as e:
        raise SystemExit('REJECT: '+str(e))
