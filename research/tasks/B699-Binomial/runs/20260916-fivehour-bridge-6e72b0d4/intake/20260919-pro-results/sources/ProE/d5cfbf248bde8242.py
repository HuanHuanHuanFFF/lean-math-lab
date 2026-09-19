#!/usr/bin/env python3
"""Algorithmically separate verifier; standard library sparse integer polynomials.
Does not import SymPy or build_certificate. It checks the exact expressions and
metadata stated here, not the entire infinite paper argument.
"""
from __future__ import annotations
import argparse, copy, json
from pathlib import Path
from typing import Any

NAMES=['A','B','t','X','Y','T','S','V']; DIM=len(NAMES)
ZERO=(0,)*DIM
class Poly:
    def __init__(self, value: int | dict[tuple[int,...],int] = 0):
        self.terms = ({ZERO:value} if value else {}) if isinstance(value,int) else {k:v for k,v in value.items() if v}
    @staticmethod
    def coerce(value): return value if isinstance(value,Poly) else Poly(value)
    def __add__(self,other):
        other=Poly.coerce(other); d=self.terms.copy()
        for k,v in other.terms.items(): d[k]=d.get(k,0)+v
        return Poly(d)
    __radd__=__add__
    def __neg__(self): return Poly({k:-v for k,v in self.terms.items()})
    def __sub__(self,other): return self+-Poly.coerce(other)
    def __rsub__(self,other): return Poly.coerce(other)+-self
    def __mul__(self,other):
        other=Poly.coerce(other); d={}
        for k,v in self.terms.items():
            for l,w in other.terms.items():
                m=tuple(a+b for a,b in zip(k,l)); d[m]=d.get(m,0)+v*w
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,n):
        if type(n) is not int or n<0: raise ValueError('invalid exponent')
        ans=Poly(1); base=self
        while n:
            if n&1: ans=ans*base
            base=base*base; n//=2
        return ans
    def __eq__(self,other): return self.terms==Poly.coerce(other).terms

def variable(i):
    e=[0]*DIM; e[i]=1; return Poly({tuple(e):1})

def decode(terms):
    if not isinstance(terms,list): raise ValueError('terms not list')
    d={}
    for row in terms:
        if set(row)!={'powers','coefficient'}: raise ValueError('malformed monomial')
        e=row['powers']; c=row['coefficient']
        if not isinstance(e,list) or len(e)!=DIM or any(type(v) is not int or v<0 for v in e): raise ValueError('bad exponents')
        if type(c) is not int or c==0: raise ValueError('bad integer coefficient')
        e=tuple(e)
        if e in d: raise ValueError('duplicate monomial')
        d[e]=c
    return Poly(d)

def expected():
    A,B,t,X,Y,T,S,V=(variable(i) for i in range(DIM))
    # Rebuild using the primitive first-window polynomials, rather than reading a stored zero.
    F=1+B*X+A*Y*X*X; K=1+B*X; sig=t*Y*X*X
    D=A*A*Y+2*A*t*Y-t*B*B
    U=D*K-A*t*Y; E=t*U
    R2=t*t*K*K+A*t*K
    Q=A*Y*(t*t*F-2*t*t*K-A*t)+t*t*B*B
    eq={
      'REM_QUADRATIC':(A*A*sig*(sig-1),F*(t*t*F-2*t*t*K-A*t)+R2),
      'REM_LINEAR':(A*Y*R2-t*t*B*B*F,E),
      'EXACT_BEZOUT':(A*A*A*Y*sig*(sig-1),F*Q+E),
      'ZERO_ELIMINATION':(t*t*B*B+(A+2*t)*U,D*((A+2*t)*K-t)),
      'ZERO_BOUND':(A*(A+2*t)-3*t*t,(A-t)*(A+3*t)),
      'SIZE_BASE':(T*T-3*(T-1),(T-3)**2+3*(T-3)+3),
      'FAILURE_RESIDUAL':((3-(X-4)**2)*((X-4)*X+1)-1,-X**4+12*X**3-46*X*X+60*X-14)
    }
    shiftedT=S+3; shiftedX=shiftedT**5+V
    failureX=S+16
    ps={
      'SIZE_SHIFTED':shiftedX**2-3*(shiftedT-1)*shiftedT**3*shiftedX-3*(shiftedT-1)**2,
      'FAILURE_OUTGROWS_SOURCE':-((3-(failureX-4)**2)*((failureX-4)*failureX+1)-1)-(2*failureX**2-4*failureX+1)
    }
    return eq,ps

def verify(cert: dict[str,Any]) -> dict[str,Any]:
    required={'schema','variables','claims','source_cases','source_three','parity_lower_bounds','identities','positive_certificates','computation_scope'}
    if set(cert)!=required: raise ValueError('unexpected/missing top-level member')
    if cert['schema']!='B699-ProE-cross-head-quadratic-v1' or cert['variables']!=NAMES: raise ValueError('schema/variables mismatch')
    claims={
      'i':3,'same_original_input':True,'p_equals_i_allowed':True,
      'scope':'conditional subdomains, not general NC3 closure',
      'head_uniform_constant':[32,27],
      'block_conditions':{'T_min':3,'X_min_power_of_T':5,'Y_min':1,'endpoints':['j','k']},
      'single_digit_remaining_exponents':[[1,2],[2,4],[3,6],[4,8]],
      'no_complete_nc_compatible_family_claim':True}
    if cert['claims']!=claims: raise ValueError('mathematical scope changed')
    if cert['source_cases']!=[{'lambda':1,'mu':1,'A_star':1},{'lambda':1,'mu':3,'A_star':9},{'lambda':3,'mu':1,'A_star':27}]: raise ValueError('source cases changed')
    if cert['source_three']!={'remove_if_valuation_equals':1,'remaining_full_source_exponent_min':2}: raise ValueError('isolated three changed')
    if cert['parity_lower_bounds']!={'g_even_zg4_min':16,'g_odd_zg4_min':8}: raise ValueError('parity bounds changed')
    if cert['computation_scope']!='symbolic identities and certificate integrity only; no numerical input search': raise ValueError('computation scope changed')
    equations, positives=expected()
    rows=cert['identities']
    if len(rows)!=len(equations) or {r['id'] for r in rows}!=set(equations): raise ValueError('identity coverage mismatch')
    for row in rows:
        if set(row)!={'id','lhs','rhs'}: raise ValueError('identity malformed')
        lhs,rhs=decode(row['lhs']),decode(row['rhs']); exL,exR=equations[row['id']]
        if lhs!=exL or rhs!=exR or lhs!=rhs: raise ValueError('identity mismatch: '+row['id'])
    rows=cert['positive_certificates']
    if len(rows)!=len(positives) or {r['id'] for r in rows}!=set(positives): raise ValueError('positivity coverage mismatch')
    for row in rows:
        if set(row)!={'id','terms'}: raise ValueError('positivity malformed')
        P=decode(row['terms'])
        if P!=positives[row['id']]: raise ValueError('positive polynomial mismatch')
        if any(c<=0 for c in P.terms.values()) or P.terms.get(ZERO,0)<=0: raise ValueError('positivity invalid')
    return {'status':'PASS_INDEPENDENT_SYMBOLIC_CHECK','identities':len(equations),'positive_certificates':len(positives),'engine':'standard-library sparse integer polynomials','infinite_paper_proof_machine_formalized':False}

def test_mutations(cert):
    records=[]
    mutations=[
      ('coefficient_corruption',lambda c: c['identities'][0]['lhs'][0].__setitem__('coefficient',c['identities'][0]['lhs'][0]['coefficient']+1)),
      ('identity_deleted',lambda c: c['identities'].pop()),
      ('duplicate_monomial',lambda c: c['identities'][0]['lhs'].append(copy.deepcopy(c['identities'][0]['lhs'][0]))),
      ('missing_lambda_three',lambda c: c['source_cases'].pop()),
      ('truncate_source_three',lambda c: c['source_three'].__setitem__('remaining_full_source_exponent_min',1)),
      ('weaken_block_threshold',lambda c: c['claims']['block_conditions'].__setitem__('X_min_power_of_T',4)),
      ('lose_k_endpoint',lambda c: c['claims']['block_conditions'].__setitem__('endpoints',['j'])),
      ('claim_general_closure',lambda c: c['claims'].__setitem__('scope','general NC3 closure')),
      ('change_template_bound',lambda c: c['claims']['single_digit_remaining_exponents'].append([5,10])),
      ('positive_coefficient_corruption',lambda c: c['positive_certificates'][0]['terms'][0].__setitem__('coefficient',-1)),
      ('parity_lower_bound_changed',lambda c: c['parity_lower_bounds'].__setitem__('g_odd_zg4_min',4)),
    ]
    for name,edit in mutations:
        bad=copy.deepcopy(cert);edit(bad)
        try: verify(bad)
        except (ValueError,KeyError,TypeError) as exc:
            records.append({'mutation':name,'status':'REJECTED','reason':str(exc)})
        else: raise ArithmeticError('damaged certificate accepted: '+name)
    return records

def main():
    parser=argparse.ArgumentParser();parser.add_argument('certificate',type=Path);parser.add_argument('--output',type=Path);args=parser.parse_args()
    cert=json.loads(args.certificate.read_text()); summary=verify(cert);summary['mutations']=test_mutations(cert)
    text=json.dumps(summary,ensure_ascii=False,indent=2)+'\n'
    if args.output: args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(text)
    print(json.dumps({k:v for k,v in summary.items() if k!='mutations'},ensure_ascii=False))
    print('DAMAGED_CERTIFICATES_REJECTED',len(summary['mutations']))
if __name__=='__main__': main()
