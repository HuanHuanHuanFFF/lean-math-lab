#!/usr/bin/env python3
"""Receive the eight certificates without importing the generator or its algebra.
Uses direct Pell iteration, exhaustive finite rings, and an AST sparse-polynomial
expander. This is a second author implementation, NOT external peer review.
"""
from __future__ import annotations
import argparse,ast,json,sys
from pathlib import Path
from math import isqrt,prod
from fractions import Fraction
if not __debug__: raise RuntimeError('Do not run this verifier with -O.')

def require(ok,msg):
    if not ok:raise AssertionError(msg)
def read(d,n):return json.loads((d/n).read_text(encoding='utf-8'))

def pell(k,m=None):
    u,x=1,0
    for _ in range(k):
        u,x=2*u+3*x,u+2*x
        if m is not None:u%=m;x%=m
    return u,x

def state(q,m=None):
    if m is None:
        U,X=pell(8*q+1)
        return (3*X-1)//2,U//2
    U,X=pell(8*q+1,2*m)
    require(U%2==0 and X%2==1,'parity in t parametrization')
    return ((3*X-1)//2)%m,(U//2)%m

def S_value(d,y,A,B):
    v=A*y
    return v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

class Symbolic:
    """Independent integer-polynomial AST evaluator. No eval(), no sympy."""
    def __init__(self,names):
        self.n=len(names);self.zero=(0,)*self.n;self.env={}
        for i,s in enumerate(names):
            v=[0]*self.n;v[i]=1;self.env[s]={tuple(v):1}
    def c(self,k):return {} if k==0 else {self.zero:k}
    def add(self,a,b,sign=1):
        z=dict(a)
        for e,c in b.items():z[e]=z.get(e,0)+sign*c
        return {e:c for e,c in z.items() if c}
    def mul(self,a,b):
        z={}
        for e,c in a.items():
            for f,d in b.items():
                g=tuple(e[i]+f[i] for i in range(self.n));z[g]=z.get(g,0)+c*d
        return {e:c for e,c in z.items() if c}
    def calc(self,text):return self.node(ast.parse(text,mode='eval').body)
    def node(self,z):
        if isinstance(z,ast.Constant) and isinstance(z.value,int):return self.c(z.value)
        if isinstance(z,ast.Name):return self.env[z.id]
        if isinstance(z,ast.UnaryOp) and isinstance(z.op,ast.USub):return {e:-c for e,c in self.node(z.operand).items()}
        if isinstance(z,ast.BinOp):
            l=self.node(z.left)
            if isinstance(z.op,ast.Pow):
                require(isinstance(z.right,ast.Constant) and isinstance(z.right.value,int) and z.right.value>=0,'polynomial exponent')
                out=self.c(1)
                for _ in range(z.right.value):out=self.mul(out,l)
                return out
            r=self.node(z.right)
            if isinstance(z.op,ast.Add):return self.add(l,r)
            if isinstance(z.op,ast.Sub):return self.add(l,r,-1)
            if isinstance(z.op,ast.Mult):return self.mul(l,r)
        raise ValueError('unsupported symbolic node')
    def let(self,name,expr):self.env[name]=self.calc(expr)

def verify(cert):
    require(set(p.name for p in cert.glob('*.json'))=={'pell_cycles.json','A4_mod97.json','core_tri4.json','local_square_tables.json','joint_frontier.json','small_A_closures.json','weak_family_A42.json','finite_diagnostics.json'},'exact certificate set')
    pc=read(cert,'pell_cycles.json')
    require(pc['recurrence_matrix']==[[18817,32592],[10864,18817]] and pc['affine_shift']==[9408,5432] and pc['initial']==[1,1],'Pell recurrence declaration')
    u8,x8=pell(8)
    require((u8,x8)==(18817,10864) and u8*u8-3*x8*x8==1,'Pell recurrence norm')
    expected_periods={7:1,31:4,49:7,64:8,97:2,128:16}
    for p,L in expected_periods.items():
        rows=[list(state(q,p)) for q in range(L)]
        require(pc['cycles'][str(p)]=={'modulus':p,'period':L,'states':rows},'cycle certificate '+str(p))
        require(len(set(tuple(z) for z in rows))==L,'first return')
        require(state(L,p)==(1,1),'complete return')
        for q,(d,y) in enumerate(rows):
            nxt=((18817*d+32592*y+9408)%p,(10864*d+18817*y+5432)%p)
            require(nxt==tuple(rows[(q+1)%L]),'successor closure')
    for q in range(8):require(state(q,64)==((1+16*q)%64,(1+40*q)%64),'affine q formula mod64')
    print('PASS Pell cycles and complete first-return coverage')
    a4=read(cert,'A4_mod97.json');require(prime(97),'97 prime')
    qr97=sorted({x*x%97 for x in range(49)})
    require(a4['all_square_residues']==qr97 and 5 not in qr97 and a4['pow_5_48_mod97']==96,'97 nonresidue')
    require(a4['A']==4 and a4['modulus']==97,'A4 scope')
    for r,e in enumerate(a4['rows']):
        d,y=state(r,97);b=next(b for b in range(97) if (4*b-3*(d-1))%97==0)
        require(e=={'q_mod2':r,'d':d,'y':y,'v':4*y%97,'B':b,'S':5},'A4 row')
        require(S_value(d,y,4,b)%97==5,'actual square target')
        require(((d+4*y)**5-d*d)*pow(4*y,-1,97)%97==5,'independent norm target')
    signed=[S_value(1,1,4,Fraction(0)),S_value(-2,-1,4,Fraction(-9,4))]
    require(signed==a4['signed_state_integer_values']==[781,1945],'signed state formula')
    print('PASS A=4: S=5 mod97 for all Pell rows')
    core=read(cert,'core_tri4.json')
    alg=Symbolic(['d','v','H','P','h','n'])
    for name,expr in [('Q','d+v'),('E1','P-Q-h*v'),('E2','h*d-Q-4*H'),('E3','4*v*H**2+1-P*Q**2'),('E4','2*P*Q*H+2-n'),('D','d*P-Q**2-4*v*H'),('F','4*d*v*H**2-4*v*Q**2*H-Q**4+d'),('N','4*v*H**3+H+Q')]:alg.let(name,expr)
    for key,expr in [('dP_recovery','D-d*E1-v*E2'),('quadratic_recovery','F-d*E3-Q**2*D'),('nQ_recovery','2*N-n*Q-2*H*E3-Q*E4')]:
        require(alg.calc(expr)=={} and core['exact_origin_residuals'][key]==[],'exact origin identity '+key)
    bivar=Symbolic(['a','q']);bivar.let('d','1+16*q');bivar.let('v','2*a*(1+40*q)')
    bivar.let('G','-d**4+4*d**3*v+14*d**2*v**2+12*d*v**3+d+3*v**4')
    rem=bivar.calc('G-16*q-8*a*(a+1)-48*a**2*(a+1)**2')
    require(all(c%64==0 for c in rem.values()),'coefficientwise 64 divisibility')
    quotient=[{'exponents':list(e),'coefficient':c//64} for e,c in sorted(rem.items())]
    require(quotient==core['quotient_K'],'full polynomial quotient')
    mapping={0:0,2:3,4:1,6:2,8:2,10:1,12:3,14:0}
    require(core['A_mod16_to_q_mod4']==[[a,mapping[a]] for a in sorted(mapping)],'triangular signature')
    nr=fr=0
    for A in range(0,64,2):
        for q in range(8):
            d,y=state(q,64);v=A*y%64;Q=(d+v)%64
            roots=[]
            for H in range(64):
                if (4*v*H**3+H+Q)%64==0:roots.append(H)
            require(len(roots)==1,'N has unique root')
            nr+=1;H=roots[0]
            good=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%64==0
            require(good==(q%4==mapping[A%16]),'joint original modular gate')
            fr+=good
    require(core['direct_mod64_audit']=={'A_mod64_even_values':32,'q_mod8_values':8,'H_mod64_values':64,'N_roots':nr,'joint_F_N_roots':fr},'audit totals')
    require((nr,fr)==(256,64),'mod64 counts')
    print('PASS CORE-TRI4: exact identities, AST expansion, all 16384 finite H cases')
    tabs=read(cert,'local_square_tables.json');allow={};local_counts={}
    for p in [7,31,97]:
        require(prime(p),'auxiliary prime')
        squares={z*z%p for z in range((p+1)//2)}
        require(tabs[str(p)]['quadratic_residues']==sorted(squares),'square residue list')
        allow[p]=[]
        for r in range(4):
            d,y=state(r,p);rows=tabs[str(p)]['rows'][r]
            require((rows['d'],rows['y'],rows['q_mod4'])==(d,y,r),'local Pell row')
            good=[]
            for A in range(p):
                allocation=[b for b in range(p) if (A*b-3*(d-1))%p==0]
                passing=[b for b in allocation if S_value(d,y,A,b)%p in squares]
                entry=rows['entries'][A]
                reason='unique-B' if A else ('singular-existential-B' if allocation else 'allocation-impossible')
                b=(allocation[0] if A and allocation else (passing[0] if passing else None))
                s=S_value(d,y,A,b)%p if b is not None else None
                require(entry=={'A':A,'allowed':bool(passing),'B':b,'S':s,'reason':reason},'exhaustive B projection')
                if passing:good.append(A)
                if A and y:require(s==((d+A*y)**5-d*d)*pow(A*y,-1,p)%p,'norm cross-check')
            require(good==rows['allowed_A_residues'],'allowed A residues')
            allow[p].append(set(good))
        local_counts[str(p)]=[len(s) for s in allow[p]]
    require(local_counts=={'7':[5,5,5,5],'31':[17,17,12,15],'97':[57,45,57,45]},'local counts')
    print('PASS local square tables, including every singular A=0 branch')
    joint=read(cert,'joint_frontier.json');M=336784
    surviving=[]
    for A in range(0,M,2):
        r=mapping[A%16]
        if all(A%p in allow[p][r] for p in allow):surviving.append(A)
    counts=[2*prod(len(allow[p][r]) for p in allow) for r in range(4)]
    require(joint['surviving_A_residues']==surviving,'complete A-period certificate')
    require(joint['local_allowed_counts']==local_counts and joint['count_by_q_mod4']==counts,'CRT count identity')
    require(joint['A_modulus']==M and joint['even_A_classes']==168392 and joint['surviving_classes']==30930 and joint['excluded_classes']==137462 and sum(counts)==30930,'complete period counts')
    require(surviving[0:2]==[0,42],'least positive residue')
    small=read(cert,'small_A_closures.json')
    require([z['A'] for z in small['A_values']]==list(range(4,42,2)),'all small even A')
    for z in small['A_values']:
        A=z['A'];r=mapping[A%16]
        expect=[]
        for p in [7,31,97]:
            entry=tabs[str(p)]['rows'][r]['entries'][A%p]
            if not entry['allowed']:expect.append({'prime':p,'S':entry['S'],'reason':entry['reason']})
        require(expect and z['obstructions']==expect and z['forced_q_mod4']==r,'small A obstruction')
    require(small['number_new_fixed_A_branches']==19 and small['least_positive_surviving_A_residue']==42,'small A count')
    print('PASS joint same-q gate: 137462/168392 even residue classes excluded; A>=42')
    weak=read(cert,'weak_family_A42.json')
    require(weak['q_progression']=={'start':5,'step':336,'parameter':'r>=0'} and weak['A']==42,'weak progression')
    require(all(336%L==0 for L in [16,7,4,2,3]),'all finite-period invariance')
    require(18817%112==1 and 32592%112==0 and 9408%112==0,'d=1 mod112, hence 8|B')
    d,y=state(5);V,X=pell(20);U,_=pell(21);B=(d-1)//14;v=42*y;Q=d+v;S=S_value(d,y,42,B);root=isqrt(S)
    require(42*B==3*(d-1) and 3*y*y==d*d+d+1,'weak exact allocation')
    require(weak['sample_q5']=={'q':5,'V':V,'X':X,'U':U,'d':d,'y':y,'A':42,'B':B,'v':v,'Q':Q,'S':S,'isqrt_S':root,'square':False,'S_mod_primes':{'7':4,'31':0,'97':3}},'weak full sample')
    require(root*root<S<(root+1)**2,'sample fails exact square')
    for p in [7,31,97]:require(S%p in {i*i%p for i in range(p)},'sample passes chosen prime gates')
    d49,y49=state(5,49)
    require(d49==36 and (((d49-1)//7)*4)%7==6,'exact denominator-aware B mod7')
    require(state(5,128)==(81,73),'weak period128 signature')
    d0,y0=81,73;v0=42*y0%128;Q0=(d0+v0)%128
    roots=[H for H in range(128) if (4*v0*H**3+H+Q0)%128==0]
    require(roots==[45] and (4*d0*v0*45**2-4*v0*Q0**2*45-Q0**4+d0)%128==64,'uniform exact-recovery failure')
    require(weak['uniform_failure']['all_N_roots']==roots and weak['uniform_failure']['F_at_root']==64,'boundary values')
    require(257**2>8*3*14**3 and 2**26*56**25>4*21**26,'uniform large-size compatibility constants')
    print('PASS A42 infinite weak-family boundary: chosen gates pass, stronger original recovery fails')
    diag=read(cert,'finite_diagnostics.json');require(diag['count']==16,'finite diagnostic count')
    for e in diag['A4_rows']:
        q=e['q'];d,y=state(q);B=3*(d-1)//4;S=S_value(d,y,4,B)
        require(e=={'q':q,'d':d,'y':y,'B':B,'Q':d+4*y,'S_mod97':S%97,'is_square':isqrt(S)**2==S,'S_bits':S.bit_length()},'integer diagnostic')
    require([e['q'] for e in diag['A4_rows']]==list(range(1,17)),'diagnostic scope')
    print(json.dumps({'status':'PASS','certificates':8,'new_fixed_A_branches':19,'global_indices_closed':0,'R7_unchanged':True,'auxiliary_primes_are_not_original_common_witnesses':True},sort_keys=True))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',type=Path,required=True);args=ap.parse_args();verify(args.cert_dir)
if __name__=='__main__':main()
