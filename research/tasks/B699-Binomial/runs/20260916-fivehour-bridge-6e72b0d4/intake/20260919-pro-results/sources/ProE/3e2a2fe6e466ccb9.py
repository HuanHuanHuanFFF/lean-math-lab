#!/usr/bin/env python3
"""Independent standard-library checker. Does not import SymPy or generate.py.

Checks exact identities, listed sign certificates, branch contracts, and one
counterexample to a weakened digit-only claim. It is not a proof assistant.
"""
from __future__ import annotations
import argparse, copy, json, math
from pathlib import Path

NAMES=['Q','P','t','h','nu','n','g','xi','mu','lam','D','E','y','x','q','v','j']
DIM=len(NAMES)

class VerificationError(ValueError): pass

def require(condition, message):
    if not condition: raise VerificationError(message)

class Poly:
    def __init__(self, coeffs=None):
        self.c={tuple(k):int(v) for k,v in (coeffs or {}).items() if v}
    @staticmethod
    def const(a): return Poly({(0,)*DIM:a}) if a else Poly()
    @staticmethod
    def var(name):
        e=[0]*DIM; e[NAMES.index(name)]=1
        return Poly({tuple(e):1})
    @staticmethod
    def coerce(other):
        if isinstance(other,Poly): return other
        if type(other) is int: return Poly.const(other)
        raise TypeError(type(other).__name__)
    def __add__(self,other):
        other=self.coerce(other); out=self.c.copy()
        for k,v in other.c.items(): out[k]=out.get(k,0)+v
        return Poly(out)
    __radd__=__add__
    def __neg__(self): return Poly({k:-v for k,v in self.c.items()})
    def __sub__(self,other): return self+(-self.coerce(other))
    def __rsub__(self,other): return self.coerce(other)+(-self)
    def __mul__(self,other):
        other=self.coerce(other); out={}
        for a,ca in self.c.items():
            for b,cb in other.c.items():
                e=tuple(x+y for x,y in zip(a,b)); out[e]=out.get(e,0)+ca*cb
        return Poly(out)
    __rmul__=__mul__
    def __pow__(self,n):
        if type(n) is not int or n<0: raise ValueError('nonnegative power required')
        result=Poly.const(1); base=self
        while n:
            if n&1: result=result*base
            base=base*base; n//=2
        return result
    def replace(self,name,value):
        idx=NAMES.index(name); result=Poly()
        for mon,c in self.c.items():
            e=list(mon); power=e[idx]; e[idx]=0
            result=result+Poly({tuple(e):c})*value**power
        return result
    def terms(self): return [[list(k),v] for k,v in sorted(self.c.items())]

V={name:Poly.var(name) for name in NAMES}
globals().update(V)

def expected():
    ids={}; signs={}
    def add(name,a,b):
        require(a.c==b.c,'internal polynomial construction: '+name)
        ids[name]={'lhs':a.terms(),'rhs':b.terms()}
    def pos(name,a):
        require(a.c and all(c>0 for c in a.c.values()),'internal sign construction: '+name)
        signs[name]=a.terms()

    f1=n*nu-lam*t*t*Q*Q+g*g*P
    f2=g*xi*(n-2)-2*mu*D*Q*nu
    f3=h*Q-nu-lam*t
    f4=nu-lam*t+g*g*P
    add('recovery_dependency',Q*(2*mu*D*nu*nu-g*xi*(lam*t*t*Q-h)),g*xi*f1-nu*f2-g*xi*f4+g*xi*f3)
    add('odd_square_plus',(4*x+1)**2-1,8*(2*x*x+x))
    add('odd_square_minus',(4*x-1)**2-1,8*(2*x*x-x))
    add('h3_positive_gap',(2*Q-y)**2*Q-3*(Q-2*y)*(Q+y)**2,Q*(Q-2*y)**2+6*Q*y*y+6*y**3)
    for name,a,c0,c1,c2 in [('unit_h9_gap',5,9,14,16),('unit_h11_gap',6,11,28,20)]:
        aa=(a*Q-y)**2*Q-(Q-2*y)*((a-1)*Q+y)**2
        bb=c0*Q**3+c1*Q*Q*y+c2*Q*y*y+2*y**3
        add(name,aa,bb)
        pos(name.replace('_gap','_coefficients'),aa)
    add('primitive_factorization',3*P*(h*Q-P)**2-Q*(h*Q+P)**2+4*h,
        (3*P-Q)*(h*h*Q*Q+P*P)-2*h*(P*Q*(3*P+Q)-2))
    add('carry_recovery_difference',
        2*(h*Q-P)*n-(h*Q-P)*(h+1)*Q**3-(Q*Q*(h*Q*(3*P-Q)+P*(Q+P))-4*P),
        2*(h*Q-P)*n-(h*Q+P)**2*Q*Q+4*P)
    add('ratio_h9_bound',25*(8+x)**2-16*(10+x)**2,x*(9*x+80))
    pos('carry_strictness',(3+x)**2*(6+x+y)-4)
    pos('primitive_factor_strictness',(3+x)*(3+y)*(12+3*x+y)-2)
    neg=-((6*Q-y)**2*Q-3*(3*Q-2*y)*(3*Q+y)**2)
    dec=11*Q**3+12*Q*Q*y+28*Q*(Q-y)*(Q+y)+6*(Q-y)*(Q*Q+Q*y+y*y)
    add('h9_upper_positive_negative_gap',neg,dec)
    pos('h9_upper_cone',dec.replace('Q',y+x))

    leading=n*(n-1)*(n-2)
    b=3*j*(n-1)*(n-2); c=3*j*(j-1)*(n-2); d=j*(j-1)*(j-2)
    invariant=b*b-3*leading*c
    add('actual_psi_n',n*invariant,3*leading*(b-c))
    add('actual_psi_j',j*invariant,b*(b-c))
    add('actual_psi_third',3*(n-2)*d,c*(j-2))
    row=9*q**3+4*q*q+q+2; high=(7*q+2)*q*q; low=2*q**3+2*q*q+q+2
    add('digit_shell_sum',row,high+low)
    add('digit_shell_source',row-2,q*(9*q*q+4*q+1))
    add('digit_shell_vg_failure',(row-4).replace('q',8*v+3),8*(576*v**3+680*v*v+268*v+35))
    pos('digit_shell_order',(high-low).replace('q',11+x))
    pos('digit_shell_upper',(q**4-row).replace('q',11+x))
    pos('digit_shell_legal_j',(low-4).replace('q',11+x))
    return ids,signs

def well_formed(ts):
    require(type(ts) is list,'term list')
    last=None
    for term in ts:
        require(type(term) is list and len(term)==2,'term shape')
        mon,c=term
        require(type(mon) is list and len(mon)==DIM,'monomial dimension')
        require(all(type(e) is int and e>=0 for e in mon),'monomial exponents')
        require(type(c) is int and c!=0,'integer nonzero coefficient')
        require(last is None or last<tuple(mon),'canonical order')
        last=tuple(mon)

def prime_single(a):
    return a>=2 and all(a%d for d in range(2,math.isqrt(a)+1))

def exp_single(a,p):
    ans=0
    while a%p==0: a//=p; ans+=1
    return ans

def validate(cert):
    require(type(cert) is dict and cert.get('schema')==1,'schema')
    require(cert.get('variables')==NAMES,'variables')
    ids,signs=expected()
    require(set(cert.get('identities',{}))==set(ids),'identity inventory')
    for key,item in cert['identities'].items():
        require(type(item) is dict and set(item)=={'lhs','rhs'},'identity record '+key)
        for ts in item.values(): well_formed(ts)
        require(item==ids[key],'coefficient identity '+key)
    require(set(cert.get('positive_coefficients',{}))==set(signs),'positive inventory')
    for key,ts in cert['positive_coefficients'].items():
        well_formed(ts)
        require(ts==signs[key] and ts and all(c>0 for _,c in ts),'positive coefficients '+key)
    branches={
        'lambda3': {'weight_strict_upper':27,'g_possible':[1,2],'exit':'SQ-CHAR'},
        'lambda1_mu1': {'weight':2,'g':1,'w':1,'xi':2,'h':[9,11],'exit':'positive gaps'},
        'lambda1_mu3_even_g': {'weight':8,'g':2,'w':1,'xi':1,'h':8,'exit':'nu<4Q and nu>16Q/3'},
        'lambda1_mu3_odd_g': {'g':1,'w':1,'xi':[2,4,6,8],
            'xi2_h':[3,9],'xi4_exit':'TWICE-SQ-CHAR','xi6_h':11,'xi8_h':[],
            'xi2_exit':'global P<Q carry, then negative gap'}
    }
    require(cert.get('finite_branch_contract')==branches,'branch contract')
    ex=cert.get('weak_digit_example',{})
    req={'q':11,'n':12476,'j':2917,'sigma':9559,'g':1,'head':103,'t':79,
         'source_exponent':1,'endpoint_exponent':2,'q_binomial_valuation':0,
         'first_window_remainder':10497,'v2_n':2,'v2_j':0,'actual_common_prime':3119,
         'common_prime_binom3_v':1,'common_prime_binomj_v':1}
    require(ex==req,'weak example metadata')
    nn,jj,qq=ex['n'],ex['j'],ex['q']
    require(math.gcd(nn,jj)==1 and nn==jj+ex['sigma'],'weak example actual input')
    require(prime_single(qq) and prime_single(3119),'single example prime verification')
    # Different from the generator's floor-sum binomial valuations.
    bc3,bcj=math.comb(nn,3),math.comb(nn,jj)
    require(bcj%qq!=0 and exp_single(bc3,3119)==1 and exp_single(bcj,3119)==1,'direct original binomials')
    require(ex['sigma']*(ex['sigma']-1)%(nn-1)==10497,'failed first window')
    require(exp_single(nn,2)==2 and exp_single(jj,2)==0,'VG8 failure')
    return {'identities':len(ids),'positive_certificates':len(signs),'weak_digit_examples':1,
            'parameter_scans':0,'external_review':False,'proof_assistant':False}

def mutation_tests(cert):
    cases=[]
    def add(name,edit):
        obj=copy.deepcopy(cert);edit(obj);cases.append((name,obj))
    add('missing_identity',lambda c:c['identities'].pop('primitive_factorization'))
    add('factor_sign',lambda c:c['identities']['primitive_factorization']['rhs'][0].__setitem__(1,-999))
    add('carry_coefficient',lambda c:c['identities']['carry_recovery_difference']['lhs'][0].__setitem__(1,999))
    add('negative_positive_coefficient',lambda c:c['positive_coefficients']['carry_strictness'][0].__setitem__(1,-1))
    add('missing_positive_term',lambda c:c['positive_coefficients']['unit_h9_coefficients'].pop())
    add('lost_h_branch',lambda c:c['finite_branch_contract']['lambda1_mu1'].__setitem__('h',[9]))
    add('wrong_g_scope',lambda c:c['finite_branch_contract']['lambda3'].__setitem__('g_possible',[1]))
    add('wrong_psi_third',lambda c:c['identities']['actual_psi_third']['rhs'][0].__setitem__(1,1))
    add('nonprime_witness',lambda c:c['weak_digit_example'].__setitem__('actual_common_prime',3120))
    add('invented_q_carry',lambda c:c['weak_digit_example'].__setitem__('q_binomial_valuation',1))
    add('bad_variables',lambda c:c['variables'].pop())
    add('extra_positive_claim',lambda c:c['positive_coefficients'].__setitem__('all_remaining_closed',[]))
    add('schema_changed',lambda c:c.__setitem__('schema',2))
    add('false_window_pass',lambda c:c['weak_digit_example'].__setitem__('first_window_remainder',0))
    out=[]
    for name,corrupt in cases:
        try: validate(corrupt)
        except (VerificationError,ValueError,TypeError,KeyError): out.append({'name':name,'rejected':True})
        else: raise VerificationError('corrupted certificate accepted: '+name)
    return out

def main():
    p=argparse.ArgumentParser()
    p.add_argument('certificate',type=Path)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--skip-mutations',action='store_true')
    args=p.parse_args()
    cert=json.loads(args.certificate.read_text(encoding='utf-8'))
    report=validate(cert)
    report['corruption_tests']=[] if args.skip_mutations else mutation_tests(cert)
    report['status']='PASS'
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(report,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS',**{k:report[k] for k in ['identities','positive_certificates']},
                      'corruptions_rejected':len(report['corruption_tests'])},ensure_ascii=False))
if __name__=='__main__':main()
