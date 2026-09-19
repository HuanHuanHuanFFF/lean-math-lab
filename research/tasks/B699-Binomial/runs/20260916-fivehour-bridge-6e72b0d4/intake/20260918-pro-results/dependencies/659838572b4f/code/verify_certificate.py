"""Author implementation B: standard-library sparse-polynomial verification.
Does not import the constructor or SymPy. A second implementation by the same
research author is NOT an external independent mathematical review.
"""
from __future__ import annotations
import argparse, copy, json
from pathlib import Path

N=6  # d,W,E,V,r,X
class Poly:
    def __init__(self, terms: dict[tuple[int,...],int] | int=0):
        self.t=({(0,)*N:terms} if isinstance(terms,int) and terms else {}) if isinstance(terms,int) else {k:v for k,v in terms.items() if v}
    @staticmethod
    def val(p): return p if isinstance(p,Poly) else Poly(p)
    def __add__(self,other):
        z=self.t.copy()
        for k,v in Poly.val(other).t.items():z[k]=z.get(k,0)+v
        return Poly(z)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.t.items()})
    def __sub__(self,other):return self+-Poly.val(other)
    def __rsub__(self,other):return Poly.val(other)+-self
    def __mul__(self,other):
        z={}
        for a,u in self.t.items():
            for b,v in Poly.val(other).t.items():
                k=tuple(x+y for x,y in zip(a,b));z[k]=z.get(k,0)+u*v
        return Poly(z)
    __rmul__=__mul__
    def __pow__(self,n):
        if n<0:raise ValueError('negative polynomial exponent')
        p=Poly(1);b=self
        while n:
            if n&1:p=p*b
            b=b*b;n//=2
        return p
    def sub(self,index:int,p):
        ans=Poly(0);p=Poly.val(p)
        for ex,c in self.t.items():
            remaining=list(ex);remaining[index]=0
            ans=ans+Poly({tuple(remaining):c})*(p**ex[index])
        return ans
    def coeffs(self,index:int):
        if any(any(v for i,v in enumerate(ex) if i!=index) for ex in self.t):raise ValueError('not univariate')
        degree=max((ex[index] for ex in self.t),default=0)
        out=[0]*(degree+1)
        for ex,c in self.t.items():out[ex[index]]=c
        return out

def variable(i:int)->Poly:
    e=[0]*N;e[i]=1;return Poly({tuple(e):1})

def expected() -> tuple[list[str],list[dict]]:
    d,W,E,V,r,X=(variable(i) for i in range(N))
    M=d*d+2*d-2;B=M-d-1
    m=d*d+6*d-18;b=m-3*d-9
    Q=M*W**2-(d+2)*W*E+E**2
    q2=m*V**2-(d+6)*V*E+E**2
    # Write the identity tests in transformed/scaled order, not a numerical grid.
    tests={
      'family1_factor':(d*W+E)*Q-(d*M*W**3+E**3-2*W*E*(W+E)),
      'family2_factor':(d*V+E)*q2-(d*m*V**3+E**3-6*V*E*(3*V+E)),
      'family1_positive_gap':(Q-B*W**2)-(W-E)*((d+1)*W-E),
      'family2_positive_gap':(9*q2-b*(3*V)**2)-3*(3*V-E)*(3*(d+3)*V-3*E),
      'family1_g_squared_congruence':Q-B*E**2-(W-E)*(M*(W+E)-(d+2)*E),
      'family2_g_squared_congruence':9*q2-b*E**2-(3*V-E)*(m*(3*V+E)-(3*d+18)*E),
    }
    q=r*r-3;dr=2*q*q+r-1;me=4*q**3+4*r*q+1;mr=dr*dr+2*dr-2;br=dr*dr+dr-3
    tests['unbounded_coefficient_model']=mr-q*me
    tests['family2_three_scaling']=(3*d*V+3*E)*(9*m*V*V-9*(d+6)*V*E+9*E*E)-27*(d*V+E)*q2
    for key,value in tests.items():
        if value.t:raise ValueError('nonzero exact identity: '+key)
    polynomials=[
      ('family1_full_endpoint',((d+2*M)**2-3*M*d**2).sub(0,X+3),3),
      ('family2_full_endpoint',(16*b**2*m**2-81*d**3*(m**2+27)).sub(0,X+7),7),
      ('model_grow_E',(me**3-2*br**2).sub(4,X+6),6),
      ('model_grow_T',(5*q**3-72*dr).sub(4,X+6),6),
      ('model_joint_size',(me*(dr*mr)**2-(dr*mr+2*me**2)**2).sub(4,X+6),6),
    ]
    out=[]
    for name,p,start in polynomials:
        cs=p.coeffs(5)
        if not cs or any(c<=0 for c in cs):raise ValueError('positivity failed: '+name)
        out.append({'name':name,'shift_start':start,'coefficients_low_to_high':cs})
    return sorted(tests),out

def verify(cert:dict) -> dict:
    ids,polys=expected()
    if cert.get('schema')!='b699-negative-root-split-v1':raise ValueError('schema')
    if cert.get('identity_names')!=ids:raise ValueError('identity set')
    if cert.get('positive_polynomials')!=polys:raise ValueError('positive polynomial expansion/domain')
    small=16*8*169*1369-81*125*(1369+27)
    if cert.get('d5_boundary')!={'d':5,'M':37,'B':13,'z_mod_3':2,'z_lower_bound':2,'strict_gap':small}:raise ValueError('d5 or isolated three')
    cases=[{'A':1,'h':1,'z_divisor':1},{'A':9,'h':1,'z_divisor':9},{'A':9,'h':3,'z_divisor':1},{'A':27,'h':1,'z_divisor':27},{'A':27,'h':3,'z_divisor':3}]
    if cert.get('normalization_cases')!=cases:raise ValueError('normalization at three')
    r=6;q=r*r-3;d=2*q*q+r-1;me=4*q**3+4*r*q+1
    seed={'r':r,'d':d,'M':d*d+2*d-2,'M_epsilon':me,'M_T':q}
    if cert.get('coefficient_model_seed')!=seed:raise ValueError('model seed')
    return {'status':'PASS','exact_polynomial_identities':len(ids),'positive_polynomials':len(polys),'positive_polynomial_degrees':[len(p['coefficients_low_to_high'])-1 for p in polys],'d5_strict_gap':small,'evidence_scope':'Algebra and positivity only; see paper for unrestricted divisibility proofs.'}

def negative_tests(cert:dict)->list[str]:
    tests=[]
    def change(name,fn):
        bad=copy.deepcopy(cert);fn(bad)
        try:verify(bad)
        except (ValueError,KeyError,TypeError,IndexError):tests.append(name);return
        raise AssertionError('accepted damaged certificate '+name)
    change('drop_identity',lambda x:x['identity_names'].pop())
    change('corrupt_endpoint_coefficient',lambda x:x['positive_polynomials'][0]['coefficients_low_to_high'].__setitem__(0,491))
    change('weaken_d7_domain',lambda x:x['positive_polynomials'][1].__setitem__('shift_start',5))
    change('corrupt_model_degree',lambda x:x['positive_polynomials'][4]['coefficients_low_to_high'].pop())
    change('erase_isolated_three',lambda x:x['d5_boundary'].__setitem__('z_lower_bound',1))
    change('false_d5_gap',lambda x:x['d5_boundary'].__setitem__('strict_gap',0))
    change('wrong_three_normalization',lambda x:x['normalization_cases'][4].__setitem__('z_divisor',1))
    change('wrong_unitary_model_block',lambda x:x['coefficient_model_seed'].__setitem__('M_T',34))
    return tests

def main():
    a=argparse.ArgumentParser();a.add_argument('--certificate',type=Path,required=True);a.add_argument('--output',type=Path,required=True);a.add_argument('--negative-tests',action='store_true');ns=a.parse_args()
    cert=json.loads(ns.certificate.read_text());out=verify(cert)
    if ns.negative_tests:out['rejected_mutations']=negative_tests(cert)
    ns.output.parent.mkdir(parents=True,exist_ok=True);ns.output.write_text(json.dumps(out,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    print(json.dumps(out,ensure_ascii=False))
if __name__=='__main__':main()
