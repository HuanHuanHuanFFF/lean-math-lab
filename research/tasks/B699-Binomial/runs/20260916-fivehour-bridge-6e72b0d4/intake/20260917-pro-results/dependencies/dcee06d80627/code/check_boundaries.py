import argparse,json,copy
from pathlib import Path
from math import comb,gcd
from algebra import *
from check_independent import validate_row

def main(inputs,out):
    out.mkdir(parents=True,exist_ok=True);rows=json.loads((inputs/'row-examples.json').read_text())
    certificates=[]
    for row in rows:
        if row['route']!='fast' or row['k']>4:continue
        T=row['p']**row['f'];a=row['a'];F=sub(scale(a,T),[1])
        item=row['records'][len(row['records'])//3];b=item['b'];Q=scale(mul(b,sub(a,b)),3)
        R=resultant(F,Q);G,U,V=xgcd_q(F,Q)
        assert G==[1]
        U=scale(U,R);V=scale(V,R)
        assert all(x.denominator==1 for x in U+V)
        U=list(map(int,U));V=list(map(int,V));assert add(mul(U,F),mul(V,Q))==[R]
        X=row['p']**row['e'];n=T*ev(a,X);j=T*ev(b,X)
        assert j*(j-1)-T*T*ev(b,X)*(ev(b,X)-ev(a,X))==(n-1)*j
        certificates.append({'T':T,'a':a,'b':b,'F':F,'Q':Q,'R':str(R),'U':U,'V':V})
    # Boundary 1: small X really admits a first-window solution, even with correct source-p digits.
    n,j,p=1180,525,5
    assert (3*j*(j-1))%(n-1)==0 and (6*j*(j-1)*(j-2))%(n-2)==662
    assert carry_valuation(n,j,p)==0 and carry_valuation(n,3,p)==1
    # Boundary 2: non-coprime f,k may have vanishing resultants while the generic remainder is nonzero.
    a=[1,3,1];b=[1,3,0];T=9;F=sub(scale(a,T),[1])
    assert F==mul([1,3],[8,3]) and resultant(F,b)==0
    G=scale(mul(b,sub(scale(b,T),[1])),3)
    assert pseudorem(G,F,3)[0]!=[0]
    # Boundary 3: leading digit smaller than T is a real hypothesis of the polynomial lemma.
    F=[8,12];J=[6,9]
    assert divrem_q(mul(J,sub(J,[1])),F)[1]==[0]
    assert 3*3*4==9*4  # names: T=3,M=4X+3,L=3X+2
    # Boundary 4: generalized quadratic six-template conjecture is false without normalization.
    N=[1,4,12];J=[0,-1,6] # J=(N-(6X+1))/2
    assert sub(scale(N,3),[2])==mul([1,6],[1,6])
    assert divrem_q(mul(J,sub(J,[1])),sub(N,[1]))[1]==[0]
    assert divrem_q(mul(mul(J,sub(J,[1])),sub(J,[2])),sub(N,[2]))[1]==[0]
    # These special values never have 4|N(x) for integer x.
    assert all(ev(N,x)%4 for x in range(4))
    # Negative validation tests. No probabilistic arithmetic.
    bad=[]
    def reject(name,row):
        try:validate_row(row)
        except (ValueError,AssertionError,KeyError,ZeroDivisionError):bad.append(name);return
        raise AssertionError('accepted bad input '+name)
    r=copy.deepcopy(rows[0]);r['p']=4;reject('composite/source prime',r)
    r=copy.deepcopy(rows[0]);r['a'][-1]=0;reject('degree drops',r)
    r=copy.deepcopy(rows[0]);r['a'][0]=0;reject('lowest exponent no longer exact',r)
    r=copy.deepcopy(rows[0]);r['a'][1]=-1;reject('negative coefficient',r)
    r=copy.deepcopy(rows[0]);r['a'][-1]=r['p']**r['f'];reject('leading digit reaches T',r)
    r=copy.deepcopy(rows[2]);r['route']='fast';reject('non-coprime fast path',r)
    r=copy.deepcopy(rows[0]);r['e']=1;reject('gap below threshold',r)
    r=copy.deepcopy(rows[0]);r['cutoff']=str(int(r['cutoff'])-1);reject('false cutoff',r)
    r=copy.deepcopy(rows[0]);r['n']=str(int(r['n'])+1);reject('changed original n',r)
    r=copy.deepcopy(rows[0]);r['records'][0]['b']=r['a'];reject('illegal endpoint j=n',r)
    r=copy.deepcopy(rows[0]);r['records'][0]['resultant_product']='0';reject('zero resultant',r)
    r=copy.deepcopy(rows[2]);r['records'][0]['pseudo_remainder']=[0];reject('zero pseudo remainder',r)
    r=copy.deepcopy(rows[0]);r['p']=3;r['f']=1;reject('isolated source 3 cancellation',r)
    r=copy.deepcopy(rows[2]);r['a'][-1]=r['p'];reject('leading coefficient not a P-unit',r)
    assert carry_valuation(56,3,3)==2 and carry_valuation(56,11,3)==1
    assert (11%27>56%27) and not (11%9>56%9)
    result={'p_equals_i_regression':{'n':56,'j':11,'p':3,'first_exponent':2,'second_exponent':1},'status':'PASS','rejected':bad,'bezout_certificates':len(certificates),
      'small_gap':{'n':n,'j':j,'first_window':True,'second_window_remainder':662,'actual_gcd':gcd(comb(n,3),comb(n,j))},
      'false_fast_generalization':{'T':9,'a':[1,3,1],'b':[1,3,0],'ResF_L':0},
      'false_six_template_conjecture':{'N':[1,4,12],'J':[0,-1,6],'not_a_B699_counterexample':True}}
    (out/'boundaries.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    (out/'bezout-certificates.json').write_text(json.dumps(certificates,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':
    a=argparse.ArgumentParser();a.add_argument('--inputs',type=Path,required=True);a.add_argument('--out',type=Path,required=True);v=a.parse_args();main(v.inputs,v.out)
