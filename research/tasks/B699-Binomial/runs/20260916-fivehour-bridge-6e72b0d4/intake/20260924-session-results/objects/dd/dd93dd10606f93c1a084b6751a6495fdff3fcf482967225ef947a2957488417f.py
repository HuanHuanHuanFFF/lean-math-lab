#!/usr/bin/env python3
"""Standard-library-only proof-DAG and exact identity checker.
This checks algebraic certificates, not NC3 quantifiers or a Lean proof.
"""
import argparse, copy, hashlib, json, sys, time
from fractions import Fraction as F
from pathlib import Path
from exact_polynomial import Poly, square_resid
if not __debug__:
    raise RuntimeError('Run without -O: checks must remain enabled.')
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]

def zero_inputs():
    n=7;b,h,u,v,r,t,x=[Poly.variable(n,i) for i in range(n)]
    M=x*x+b;H=(x+h)*M+u*x+v
    V=(x+h)**2*M+2*(x+h)*(u*x+v)+u*u+r
    D=r*M-2*u*v*x+t+b*u*u-v*v
    assert M*V+t==H*H+D
    P=(M*V+t)**3+3*t*t*V+4*t*M*V*V
    B=H**3+3*H*D/2+(3*r*r/8+2*t)*x-3*h*r*r/8+2*h*t-3*u*v*r/2
    residual=P-B*B
    assert max(mon[-1] for mon in residual.d)<=8
    direct=[residual.coeff(6,i).drop(6) for i in range(8,-1,-1)]
    # The independent general coefficient recursion reconstructs the same square root.
    assert direct==square_resid(P,9)
    return direct

def verify_certificate(data,inputs):
    assert data['name']=='zero20'
    assert data['coefficient_field']=='QQ'
    assert data['variables']==['b','h','u','v','r','t']
    assert data['input_count']==9 and len(inputs)==9
    assert data['weights']==[2,1,2,3,4,6]
    nodes=[];seen=set();edges=0;mult_terms=0
    for i,nd in enumerate(data['nodes']):
        p=Poly.load(6,nd['poly'])
        if 'input' in nd:
            assert 'terms' not in nd
            k=nd['input'];assert isinstance(k,int) and 0<=k<9 and k not in seen
            assert p==inputs[k],('input mismatch',i,k);seen.add(k)
        else:
            q=Poly.constant(6,0)
            for edge in nd['terms']:
                j=edge['node'];assert isinstance(j,int) and 0<=j<i,('non-DAG reference',i,j)
                factor=Poly.load(6,edge['factor'])
                q=q+factor*nodes[j];edges+=1;mult_terms+=len(factor.d)
            assert p==q,('polynomial linear-combination mismatch',i)
        nodes.append(p)
    assert seen==set(range(9))
    target=data['target'];assert isinstance(target,int) and 0<=target<len(nodes)
    assert nodes[target]==Poly.variable(6,5)**4
    b,h,u,v,r,t=[Poly.variable(6,i) for i in range(6)]
    assert any(p==b*t*t*u*u for p in nodes)
    assert any(p==t*t*(t-512*b*u/225) for p in nodes)
    return {'nodes':len(nodes),'input_nodes':9,'derived_nodes':len(nodes)-9,
            'edges':edges,'multiplier_monomials':mult_terms,'target':'t^4'}

def four_constant_identity():
    n=3;M,H,c=[Poly.variable(n,i) for i in range(n)]
    S=H*H+c
    P=M*M*S**3-8*M*S*S+(16-5*M)*S+M+20
    A=M*H**3+3*M*H*c/2-4*H
    gap=3*M*M*H*H*c*c/4+M*M*c**3-4*M*H*H*c-8*M*c*c+16*c-5*M*H*H-5*M*c+M+20
    assert P-A*A==gap
    return {'identity':'four-slot constant remainder gap','coefficient_comparison':'PASS',
            'degree_for_nonzero_c':10,'degree_for_zero_c':8,'approximate_square_root_degree':11}

def four_linear_identities():
    # First residual, before either coefficient elimination.
    n=8;b,h,j,k,c,q,t,x=[Poly.variable(n,i) for i in range(n)]
    M=x*x+b;H=x**3+h*x*x+j*x+k;V=H*H+c*(x+q)
    P=M*M*V**3-8*t*M*V*V+(16-5*M)*t*t*V+t**3*(M+20)
    E=square_resid(P,11)
    b,h,j,k,c,q,t=[Poly.variable(7,i) for i in range(7)]
    assert E[0]==3*c*c*(b+(h-q)**2-j)/4
    # After j is eliminated, write t=c*v; c and v are nonzero on this chart.
    n=7;b,h,k,c,q,v,x=[Poly.variable(n,i) for i in range(n)]
    M=x*x+b;j=b+(h-q)**2;H=x**3+h*x*x+j*x+k;V=H*H+c*(x+q);t=c*v
    P=M*M*V**3-8*t*M*V*V+(16-5*M)*t*t*V+t**3*(M+20)
    E=square_resid(P,11)
    b,h,k,c,q,v=[Poly.variable(6,i) for i in range(6)]
    expected=-c*c*(-3*b*h-3*h**3+12*h*h*q-15*h*q*q+3*k+6*q**3+16*v)/4
    assert E[0]==0 and E[1]==expected
    # Now eliminate k. Check the polynomial identity without dividing by c.
    n=6;b,h,q,c,v,x=[Poly.variable(n,i) for i in range(n)]
    M=x*x+b;j=b+(h-q)**2
    k=b*h+h**3-4*h*h*q+5*h*q*q-2*q**3-16*v/3
    H=x**3+h*x*x+j*x+k;V=H*H+c*(x+q);t=c*v
    P=M*M*V**3-8*t*M*V*V+(16-5*M)*t*t*V+t**3*(M+20)
    E=square_resid(P,11)
    b,h,q,c,v=[Poly.variable(5,i) for i in range(5)]
    assert E[0]==0 and E[1]==0
    assert 8*(E[3]-2*h*E[2])==-c**3
    return {'first_coefficient':'E10=3*c^2*(b+(h-q)^2-j)/4',
            'second_coefficient':'E9 fixes k with divisions only by nonzero c and constants',
            'final_identity':'8*(E7-2*h*E8)=-c^3','status':'PASS'}

def zero_weak_high_coefficients():
    x=Poly.variable(1,0)
    P=(x**6+1)**3+3*x**4+4*x**10
    B=x**9+3*x**3/2+2*x
    R=P-B*B
    assert R==3*x**6/4-3*x**4-4*x*x+1
    assert R.coeff(0,8)==0 and R.coeff(0,7)==0 and R!=0
    return {'model':'b=h=u=v=r=0,t=1',
            'residual':'3*x^6/4-3*x^4-4*x^2+1',
            'meaning':'Top two zero-slot residuals alone do not prove the full theorem; not an NC3 model.'}

def negative_tests(data,inputs):
    tests=[]
    d=copy.deepcopy(data);i=next(i for i,n in enumerate(d['nodes']) if 'terms'in n)
    d['nodes'][i]['poly'][0][1]+=d['nodes'][i]['poly'][0][2];tests.append(('changed_derived_coefficient',d))
    d=copy.deepcopy(data);d['nodes'][0]['input']=9;tests.append(('bad_input_index',d))
    d=copy.deepcopy(data);d['target']=0;tests.append(('wrong_target_node',d))
    d=copy.deepcopy(data);i=next(i for i,n in enumerate(d['nodes']) if 'terms'in n)
    d['nodes'][i]['terms'][0]['node']=len(d['nodes']);tests.append(('future_node_reference',d))
    d=copy.deepcopy(data);d['variables'][0]='not_b';tests.append(('wrong_parameter_order',d))
    for name,d in tests:
        try:verify_certificate(d,inputs)
        except (AssertionError,ValueError,IndexError):continue
        raise AssertionError('Corrupted certificate accepted: '+name)
    return [n for n,_ in tests]

def run():
    p=ROOT/'certificates/zero20.json';data=json.loads(p.read_text())
    inputs=zero_inputs();stats=verify_certificate(data,inputs)
    return {'schema_version':1,'evidence_level':'author paper + exact rational identities and ideal-membership DAG; not Lean or external review',
            'zero_certificate_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
            'zero_slot':stats,'four_constant':four_constant_identity(),
            'four_linear':four_linear_identities(),'weak_model':zero_weak_high_coefficients(),
            'corrupted_certificates_rejected':negative_tests(data,inputs),
            'mathematical_scope':{'M_degree':2,'L_degree':8,'whole_zero_slot':'excluded',
                'whole_four_slot_remainder_degree_le_one':'excluded',
                'whole_four_slot_quadratic_remainder':'OPEN','mixed_slots':'OPEN','d20_global':'OPEN'}}

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--output-dir',required=True,type=Path);a=pa.parse_args()
    a.output_dir.mkdir(parents=True,exist_ok=False)
    result=run();(a.output_dir/'standard_check.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('ZERO20_QQ_IDEAL_MEMBERSHIP=PASS')
    print('FOUR_SLOT_REMAINDER_0_OR_1=PASS')
    print('CORRUPTED_CERTIFICATES_REJECTED=PASS')
    print('M2_D20_PARTIAL_STANDARD_CHECK=PASS')
if __name__=='__main__':main()
