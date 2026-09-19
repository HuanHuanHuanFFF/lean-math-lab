#!/usr/bin/env python3
"""Independent standard-library sparse-polynomial checker.

Does not import SymPy or the generator. It evaluates fixed proof-side
expressions using Fraction, then compares every certificate coefficient.
This is an algebra-certificate check, not a formal verification of all
number-theoretic hypotheses in the paper proof.
"""
from __future__ import annotations
import argparse, ast, hashlib, json, math, sys
from fractions import Fraction
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
# These fixed formulae are stated separately from generate.py.
FORMULAE=[
 ('nu_modulus_identity','n v l t s','(n-1)*(v+l*t)-l*t*(s+n-2)','(n-1)*v-l*t*(s-1)'),
 ('endpoint_factor_residual','l E F g P Q','(l*E-g*P)*F-(g*E*Q-1)','l*E*F+1-g*(E*Q+F*P)'),
 ('nu_endpoint_formula','g l E P','g*(l*E-g*P)','l*g*E-g*g*P'),
 ('h3_forces_three','t Q','6*t-3*Q','3*(2*t-Q)'),
 ('r1_n_recovery','n v t Q P','n*v-3*t*t*Q*Q+P','(n-1)*v-3*t*(t*Q*Q-1)+v-3*t+P'),
 ('r1_second_window_recovery','n v t Q P D x','x*(n*v-3*t*t*Q*Q+P)-v*((n-2)*x-2*D*Q*v)','Q*(2*D*v*v-x*(3*t*t*Q-5))+x*(P+2*v-5*Q)'),
 ('h5_linear_compatibility','t Q','6*t-5*Q+2*(5*Q-3*t)','5*Q'),
 ('head_integer_gap','n v t Q P','Q*Q*(3*t*t-Q*v)','v*(n-Q*Q*Q)+P-(n*v-3*t*t*Q*Q+P)'),
 ('eight_ninths_threshold','Q Z','27*(3*((8*Q+Z)/9)*((8*Q+Z)/9)+3*Q*((8*Q+Z)/9)-5*Q*Q)','Q*Q+25*Q*Z+Z*Z'),
 ('positive_R_definition','Q t','Q-3*(6*t-5*Q)','16*Q-18*t'),
 ('gap_in_full_P','Q P','12*(3*((5*Q+P)/6)**2*Q-P*((5*Q-P)/2)**2)','25*Q**3-65*P*Q*Q+31*P*P*Q-3*P**3'),
 ('positive_gap_transform','P R','25*(3*P+R)**3-65*P*(3*P+R)**2+31*P**2*(3*P+R)-3*P**3','180*P**3+316*P*P*R+160*P*R*R+25*R**3'),
 ('q_ge_five_gap','X','(5+X)*(5+X)-6*(4+X)','X*X+4*X+1'),
 ('template_head_gap','Q X Y','Q**3-((Q-1-X)*Q*Q+(Q-1-Y)*Q+2)','X*Q*Q+Y*Q+Q-2'),
]
POS=[
 ('q_ge_five_gap_positive','X','X*X+4*X+1'),
 ('g_ge_two_impossible','X','2*(2+X)*(2+X)*(2+X)-9'),
 ('threshold_positive','X Z','(1+X)*(1+X)+25*(1+X)*Z+Z*Z'),
 ('final_gap_minus_five','X Y','180*(1+X)**3+316*(1+X)**2*(1+Y)+160*(1+X)*(1+Y)**2+25*(1+Y)**3-60'),
 ('single_digit_head_positive','X Y W','X*(3+W)*(3+W)+Y*(3+W)+1+W'),
]
CONTRACT={
 'original_index':3,'same_original_input':True,
 'lambda_mu_pairs':[[1,1],[1,3],[3,1]],'q3_source_min_exponent':2,
 'complete_prime_powers':True,'unitarity':'K_source_blocks_only; not gcd(C,u)',
 'psi_recovery':['nI=3ell(b0-c0)','jI=b0(b0-c0)','3(n-2)d0=c0(j-2)'],
 'original_interval':'4<=j<=floor(n/2)','source_exponents_closed':[1,2,3,4],
 'main_necessary_bound':'n>q^(b+r) for every two-support high side b>=2r',
 'entire_i3_closed':False,'finite_input_scan':False,'lean_used':False,
}

class Reject(ValueError): pass

def need(c: bool, msg: str):
    if not c: raise Reject(msg)

def add(a,b):
    c=a.copy()
    for m,v in b.items():
        c[m]=c.get(m,Fraction(0))+v
        if not c[m]: del c[m]
    return c

def scale(a,k): return {m:v*k for m,v in a.items() if v*k}

def mul(a,b):
    c={}
    for x,v in a.items():
        for y,w in b.items():
            m=tuple(i+j for i,j in zip(x,y)); c[m]=c.get(m,Fraction(0))+v*w
    return {m:v for m,v in c.items() if v}

def expression(text, names):
    names=names.split() if isinstance(names,str) else names
    zero=(0,)*len(names)
    def const(n): return {} if not n else {zero:Fraction(n)}
    def walk(node):
        if isinstance(node,ast.Constant) and type(node.value) is int: return const(node.value)
        if isinstance(node,ast.Name):
            need(node.id in names,'unknown variable'); p=[0]*len(names);p[names.index(node.id)]=1
            return {tuple(p):Fraction(1)}
        if isinstance(node,ast.UnaryOp):
            need(isinstance(node.op,(ast.USub,ast.UAdd)),'bad unary')
            return scale(walk(node.operand),-1 if isinstance(node.op,ast.USub) else 1)
        need(isinstance(node,ast.BinOp),'bad expression node')
        if isinstance(node.op,ast.Pow):
            need(isinstance(node.right,ast.Constant) and type(node.right.value) is int and 0<=node.right.value<=12,'bad exponent')
            base=walk(node.left); result=const(1)
            for _ in range(node.right.value): result=mul(result,base)
            return result
        a,b=walk(node.left),walk(node.right)
        if isinstance(node.op,ast.Add): return add(a,b)
        if isinstance(node.op,ast.Sub): return add(a,scale(b,-1))
        if isinstance(node.op,ast.Mult): return mul(a,b)
        if isinstance(node.op,ast.Div):
            need(len(b)==1 and zero in b and b[zero]!=0,'division by nonconstant')
            return scale(a,1/b[zero])
        raise Reject('bad operator')
    return walk(ast.parse(text,mode='eval').body)

def decode_terms(terms,names):
    need(isinstance(terms,list) and len(terms)<=10000,'bad term array')
    out={}; last=None
    for term in terms:
        need(isinstance(term,dict) and set(term)=={'powers','numerator','denominator'},'term schema')
        e,a,b=term['powers'],term['numerator'],term['denominator']
        need(isinstance(e,list) and len(e)==len(names) and all(type(x)is int and 0<=x<=20 for x in e),'bad powers')
        need(type(a)is int and type(b)is int and a!=0 and b>0,'bad coefficient')
        need(math.gcd(abs(a),b)==1,'noncanonical rational')
        m=tuple(e);need(last is None or last<m,'terms not strictly ordered');last=m
        out[m]=Fraction(a,b)
    return out

def strict_json(path):
    def pairs(items):
        out={}
        for k,v in items:
            need(k not in out,'duplicate json key');out[k]=v
        return out
    return json.loads(Path(path).read_text(),object_pairs_hook=pairs)

def validate(cert):
    need(isinstance(cert,dict) and set(cert)=={'schema','proof_sha256','contract','identities','positive_polynomials'},'top schema')
    need(cert['schema']=='B699-four-template-v1','schema tag')
    need(cert['proof_sha256']==hashlib.sha256((ROOT/'PROOFS.md').read_bytes()).hexdigest(),'proof binding')
    need(json.dumps(cert['contract'],sort_keys=True)==json.dumps(CONTRACT,sort_keys=True),'scope/contract mismatch')
    ids=cert['identities']; need(isinstance(ids,list) and len(ids)==len(FORMULAE),'identity count')
    for record,(ident,names,left,right) in zip(ids,FORMULAE):
        need(set(record)=={'id','variables','lhs','rhs'},'identity schema')
        vs=names.split();need(record['id']==ident and record['variables']==vs,'identity label/variables')
        l=decode_terms(record['lhs'],vs);r=decode_terms(record['rhs'],vs)
        el,er=expression(left,vs),expression(right,vs)
        need(l==el and r==er,'certificate detached from fixed formula '+ident)
        need(l==r,'polynomial identity false '+ident)
    rows=cert['positive_polynomials'];need(isinstance(rows,list) and len(rows)==len(POS),'positive count')
    constants={}
    for record,(ident,names,text) in zip(rows,POS):
        need(set(record)=={'id','variables','terms'},'positive schema')
        vs=names.split();need(record['id']==ident and record['variables']==vs,'positive label/variables')
        p=decode_terms(record['terms'],vs)
        need(p==expression(text,vs),'positive formula binding')
        z=(0,)*len(vs);need(p.get(z,0)>0 and all(v>=0 for v in p.values()),'not positive coefficients')
        constants[ident]=str(p[z])
    return {'status':'PASS','independent_algorithm':'stdlib Fraction sparse polynomial arithmetic',
      'identities_checked':len(ids),'positive_polynomials_checked':len(rows),'positive_constant_terms':constants,
      'uses_sympy':False,'imports_generator':False,'integer_inputs_scanned':0,
      'evidence_boundary':'Checks algebra and contract bytes; paper proof carries all infinite number-theoretic quantifiers.'}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('certificate',type=Path);ap.add_argument('--out',type=Path)
    args=ap.parse_args()
    try:
        report=validate(strict_json(args.certificate))
        if args.out: args.out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
        print(json.dumps(report,ensure_ascii=False))
    except (Reject,KeyError,TypeError,ValueError,SyntaxError) as err:
        print('REJECT: '+str(err),file=sys.stderr);sys.exit(1)
