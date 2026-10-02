#!/usr/bin/env python3
"""Standard-library sparse polynomial construction and finite arithmetic records.
No code execution of parent archives. Examples are not original NC3 inputs.
"""
from __future__ import annotations
import argparse,hashlib,importlib.util,json
from itertools import product
from math import gcd
from pathlib import Path
from fractions import Fraction


def canon(o):return (json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def sh(o):return hashlib.sha256(canon(o)).hexdigest()
class Poly:
    def __init__(self,d=None):self.d={k:v for k,v in (d or {}).items() if v}
    @staticmethod
    def const(c):return Poly({(0,0,0,0):c})
    def __add__(self,b):
        if not isinstance(b,Poly):b=Poly.const(b)
        z=self.d.copy()
        for k,v in b.d.items():z[k]=z.get(k,0)+v
        return Poly(z)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.d.items()})
    def __sub__(self,b):return self+-b if isinstance(b,Poly) else self+(-b)
    def __rsub__(self,b):return -self+b
    def __mul__(self,b):
        if not isinstance(b,Poly):b=Poly.const(b)
        z={}
        for k,v in self.d.items():
            for j,w in b.d.items():
                a=tuple(x+y for x,y in zip(k,j));z[a]=z.get(a,0)+v*w
        return Poly(z)
    __rmul__=__mul__
    def __pow__(self,n):
        r=Poly.const(1)
        for _ in range(n):r=r*self
        return r
    def deriv(self,i):return Poly({tuple(k[j]-(j==i) for j in range(4)):v*k[i] for k,v in self.d.items() if k[i]})
    def rows(self):return [[list(k),v] for k,v in sorted(self.d.items())]

def load_recovery():
    p=Path(__file__).resolve().with_name('recover_exact.py')
    spec=importlib.util.spec_from_file_location('r11_recovery',p)
    m=importlib.util.module_from_spec(spec);spec.loader.exec_module(m);return m

def build():
    vs=[]
    for i in range(4):
        k=[0]*4;k[i]=1;vs.append(Poly({tuple(k):1}))
    h,Q,C,x=vs
    L=4*C+3*h*Q**2;K=h**2*Q**3-C*Q-h
    quad=4*x**2-h*Q*x+C
    I=-16*x**3+4*(h-1)*x**2*Q+4*h*x*Q**2-h**2*Q**3+h
    phi=4*K**2-h*Q*K*L+C*L**2
    phi_exp=(16*C**3+(28*h+4)*Q**2*C**2+
        (-4*h**3*Q**4+4*h**2*Q**4+4*h**2*Q+8*h*Q)*C+
        h**2*(h*Q**3-1)*(h*Q**3-4))
    kernel=-4*Q**2*x**4+4*(Q*C+1)*x**3-4*C*Q**2*x**2+C*x-C**2*Q**2
    den=x*(C+4*x**2)
    derivative_num=kernel.deriv(3)*den-kernel*den.deriv(3)
    derivative_positive=Q*(C**3*Q+8*C**2*x**3+8*C**2*x**2*Q+4*x**4*Q*(C-4*x**2))
    X=h*Q-2*x;Ynum=h*Q**2+2*(h-1)*Q*x-8*x**2
    vnum=(h-1)*Q-4*x
    A1=h**2*Q**3-1
    A2=h**2*Q**6-(3*h+1)*Q**3+2
    Wnum=h*(12*x**2*Q**2-Q**3*X-2*x)+4*x**2*Ynum
    Tnum=-16*x**3+4*x**2*Q*h-4*x**2*Q+6*x*Q**2*h+Q**3*h**2+Q**3*h-2*h
    identities={
      'linear_remainder':I-((-4*x-Q)*quad+L*x-K),
      'scalar_phi':phi-phi_exp,
      'discriminant_relation':L**2*((h*Q)**2-16*C)-(h*Q*L-8*K)**2+16*phi,
      'monotone_derivative':derivative_num-derivative_positive,
      'X_full_source':h*A1-X*(vnum*X+8*h*Q*x)+I,
      'Y_full_source':h**2*A2-Ynum*Wnum+Tnum*I,
      'first_source_overlap':h**2*A2-A1*(A1+1-3*h)-h*(2*h-3)}
    assert all(not p.d for p in identities.values())
    tab={'L':L.rows(),'K':K.rows(),'I':I.rows(),'Phi':phi.rows(),
         'kernel':kernel.rows(),'derivative_numerator':derivative_num.rows(),
         'Y_quotient_numerator':Wnum.rows(),'Y_error_coefficient':Tnum.rows()}
    rec=load_recovery()
    roots=[];counts={'integer_roots':0,'no_integer_root':0}
    for q in range(3,22,2):
        for c in range(1,1001):
            r=rec.monotone_integer_root(c,q)
            if r['H'] is None:counts['no_integer_root']+=1
            else:roots.append([c,q,r['H']]);counts['integer_roots']+=1
    # Small saturated input regression; no original q or actual NC counts.
    saturated=[];trials=0
    for hv,q,c in product(range(3,62,2),range(3,16,2),range(1,102)):
        if gcd(c,hv*q)!=1:continue
        trials+=1
        dat=rec.linear_data(hv,q,c)
        if dat['Phi']==0:saturated.append([hv,q,c,dat['K']//dat['L']])
    r=rec.recover_hqc(43,3,890)
    assert r['H']==10 and r['P']==89
    P,q,H,hv,d,v,n=89,3,10,43,1,2,5342
    C0=P*H;X0=P+2*H;Y0=q*q+2*v*H
    ag=hv*q**3;f1=hv*hv*q**3-1;g=gcd(n-1,f1)
    model={'P':P,'Q':q,'H':H,'h':hv,'d':d,'v':v,'n':n,'C':C0,
           'H_gcd':gcd(C0,ag-1),'P_gcd':gcd(C0,ag-4),
           'X':X0,'Y':Y0,'first_source_gcd':g,'leak':g//X0,
           'scope':'old relaxed source model; H even, B=0, not the frozen entry'}
    # An infinite family with the exact n phase and a square D, but d not integral.
    models=[]
    for m in (0,1,2):
        s=402+3420*m;n=3*(1<<s);q=19;H=5;T=(n-2)//2
        assert T%(q*H)==0
        P=T//(q*H);assert (P+4*H)%q==0
        hv=(P+4*H)//q;C0=P*H;D=(hv*q)**2-16*C0
        dat=rec.linear_data(hv,q,C0)
        assert D==(P-20)**2 and hv>39 and dat['Phi']!=0
        models.append({'m':m,'s':s,'n_bit_length':n.bit_length(),
                       'n_sha256_decimal':hashlib.sha256(str(n).encode()).hexdigest(),
                       'h_bit_length':hv.bit_length(),'Q':q,'H':H,
                       'C_coprime_hQ':gcd(C0,hv*q)==1,
                       'D_equals_P_minus_4H_squared':True,
                       'Phi_sign':1 if dat['Phi']>0 else -1,
                       'd_numerator':39,'d_denominator_bit_length':hv.bit_length(),
                       'scope':'quadratic recovery only; original E/Pell/13/prime-P unchecked or false'})
    selected_pairs=[(890,3),(891,3),(10**20+7,19),(10**100+37,157)]
    trace_rows=[]
    for c,q in selected_pairs:
        r=rec.monotone_integer_root(c,q)
        trace_rows.append({'C':c,'Q':q,'result':r})
    family={
      'Q':19,'H':5,'s_start':402,'s_period':3420,
      'congruence_modulus':9025,
      'T_start_mod_9025':(3*pow(2,401,9025)-1)%9025,
      'two_to_period_mod_9025':pow(2,3420,9025),
      'formula_d_numerator':39,
      'all_m_covered_by_proof':True}
    return {'schema':'B699-D-R11-saturated-recovery-v1','variable_order':['h','Q','C','H'],
      'polynomials':tab,'identity_names':list(identities),
      'constants':{'linear_C_coefficient':4,'linear_hQ2_coefficient':3,
                   'H_denominator_max':4,'small_root_H_coefficient':8,
                   'overlap_h_coefficient':2,'overlap_constant':-3,
                   'first_source_size_factor':9},
      'root_grid':{'C_min':1,'C_max':1000,'Q_values':list(range(3,22,2)),
                   'pairs':10000,'counts':counts,'integer_roots':roots},
      'linear_grid':{'h_values':list(range(3,62,2)),'Q_values':list(range(3,16,2)),
                     'C_max':101,'coprime_triples':trials,'Phi_zero_rows':saturated},
      'old_relaxed_model':model,'square_family':family,'square_family_records':models,
      'root_trace_records':trace_rows,'actual_NC3_count_computed':False,
      'new_certified_unbounded_original_domain_count':0,'q6_terminal_executed':False}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',required=True);a=ap.parse_args()
    o=build();Path(a.output).write_bytes(canon(o))
    print(json.dumps({'status':'PASS','root_grid_pairs':10000,'identities':len(o['identity_names']),
                      'actual_NC3_count_computed':False}))
if __name__=='__main__':main()
