#!/usr/bin/env python3
"""Standard-library application, identity and mutation checks. No n/j prefix scan."""
from fractions import Fraction as F
from pathlib import Path
import sys,json,tempfile,copy,contextlib,io,math
from check_standard import Poly,check
if not __debug__:
    raise RuntimeError('Certificate validation requires assertions: do not use python -O.')
sys.set_int_max_str_digits(0)

def vp(n,p):
    assert n!=0 and p>=2
    e=0
    while n%p==0:n//=p;e+=1
    return e

def conv(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return c

def at(a,x):
    r=0
    for c in reversed(a):r=r*x+c
    return r

def main():
    root=Path(__file__).resolve().parents[1]
    out=Path(sys.argv[1]) if len(sys.argv)>1 else root/'outputs'/'applications.json'
    M,S,B=[Poly.variable(3,i) for i in range(3)]
    def cubic(M,L,Q):return M*Q**2-L**3-4*L**2+5*M*L-M**2
    assert cubic(M,M+M*M*S,M*B)==M**3*(B*B-(1+M*S)**3-3*S-4*M*S*S)
    assert cubic(M,-4+M*S,B)==M*(B*B-(M*M*S**3-8*M*S*S+(16-5*M)*S+M+20))
    examples=[]
    for a,b,c,p,e in [(1,1,1,3,127),(3,5,7,5,180),(9,7,11,7,180)]:
        U=[0]*7;U[0]=1;U[1]=2*a;U[4]=2*c;U[6]=2
        V=[0]*9;V[0]=1;V[1]=2*b;V[8]=2
        f=conv(U,V);f[0]+=1
        H=sum(f);T=p**e;n=at(f,T);content=math.gcd(*f[1:])
        assert f[14]==4 and f[13]==0 and f[12]==4*c and f[1]>0
        assert n%4==0 and T>=(2*(H+2))**32
        assert all(v%2==0 for v in U[1:]+V[1:]) and U[-1]%4==2 and V[-1]%4==2
        # Old CENTER-LC6 accepts s=12, C=4, whereas the new theorem rejects it.
        assert 13*12>11*14 and 4**5 <= content**2*4**6 and (content**2*4**6)%4**5==0
        E=vp(n-2,p);assert E==e+vp(f[1],p)
        examples.append({'a':a,'b':b,'c':c,'work_prime':p,'work_exponent':e,'H':H,
          'f_coefficients_ascending':f,'content':content,'actual_source_exponent':E,
          'v_workprime_choose_n3':E-(p==3),'n_bits':n.bit_length(),
          'gate':True,'four_divides_n':True,'old_declared_filters_allow_s12_C4':True,
          'new_consumer':'GATE14_D2_a13zero','enumerated_j':False})
    # Broad CUBIC example deliberately fails rational polynomial recovery.
    x=Poly.variable(1,0);m=x*x+1;l=m*(m*m-6*m+1)/4;q=m*(-m**3+9*m*m-15*m-17)/8
    assert cubic(m,l,q)==0
    # In the parameter m, the original recovery has numerator remainder -12 modulo m.
    Y=Poly.variable(1,0);ll=Y*(Y*Y-6*Y+1)/4
    numerator=(ll+4)*(ll*ll+4*ll-4*Y)
    assert numerator.coeff(0,1)==-12 and numerator.coeff(0,0)==0
    # Five mutations, all rejected by the exact verifier; no mutation touches frozen files.
    base=json.loads((root/'certificates'/'all0_center.json').read_text());mutations=[]
    m1=copy.deepcopy(base);m1['nodes'][0]['poly'][0][1]+=1;mutations.append(('input_coefficient',m1))
    m2=copy.deepcopy(base);m2['nodes'][m2['target']]['poly'][0][1]=2;mutations.append(('target_coefficient',m2))
    pos=next(i for i,node in enumerate(base['nodes']) if 'terms' in node and node['terms'])
    m3=copy.deepcopy(base);m3['nodes'][pos]['terms'].pop();mutations.append(('missing_multiplier',m3))
    m4=copy.deepcopy(base);m4['nodes'][pos]['terms'][0]['node']=len(m4['nodes'])+1;mutations.append(('forward_reference',m4))
    m5=copy.deepcopy(base);m5['nodes'][pos]['terms'][0]['factor'][0][2]=0;mutations.append(('zero_denominator',m5))
    rejected=[]
    with tempfile.TemporaryDirectory() as td:
        for name,data in mutations:
            path=Path(td)/(name+'.json');path.write_text(json.dumps(data))
            try:
                with contextlib.redirect_stdout(io.StringIO()):check(path)
            except (AssertionError,ValueError,ZeroDivisionError,IndexError):rejected.append(name)
            else:raise AssertionError('Corrupted certificate accepted: '+name)
    data={'status':'PASS','generic_original_cubic_transform_identities':2,
      'applications':examples,'broad_cubic_not_original_recovery':True,'rejected_mutations':rejected,
      'scope':'identity/application checks; not an NC3 or finite-height enumeration'}
    out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(data,sort_keys=True,indent=2)+'\n')
    print('ORIGINAL_CUBIC_CHART_IDENTITIES=PASS')
    print('GATE14_D2_APPLICATIONS=PASS (3 rows; no j enumeration)')
    print('BROAD_CUBIC_RECOVERY_FAILURE=PASS')
    print('CORRUPTED_CERTIFICATES_REJECTED=PASS (5)')
if __name__=='__main__':main()
