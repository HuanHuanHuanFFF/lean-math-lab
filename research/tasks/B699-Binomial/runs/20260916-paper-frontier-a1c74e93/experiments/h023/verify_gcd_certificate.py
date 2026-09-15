"""Standalone standard-library check of the selected finite certificate.

Does not import the discovery scripts, NumPy, SymPy, or LP implementation.
This executable checks finite algebraic data; PROOFS.md supplies its quantified
connection to NC7. A second program by the same worker is not external review.
"""
from pathlib import Path
import json,math,hashlib,copy
from fractions import Fraction
from datetime import datetime,timezone

ROOT=Path(__file__).resolve().parent
RS=(1,4,5,6)
PTS=[(b,r-b) for r in RS for b in range(r+1)]

def coefficient_at(poly,x,y,u,v):
    answer=0
    for a,b,c in poly:
        if a>=u and b>=v:
            answer+=c*math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)
    return answer

def positive_half_coefficients(poly):
    # First translate independently in X and Y, then substitute v=u+w.
    rectangle={}
    for a,b,c in poly:
        for u in range(a+1):
            for v in range(b+1):
                key=u,v
                rectangle[key]=rectangle.get(key,0)+c*math.comb(a,u)*math.comb(b,v)*8**(a+b-u-v)
    half={}
    for (u,v),c in rectangle.items():
        if not c:continue
        for q in range(v+1):
            key=u+v-q,q
            half[key]=half.get(key,0)+c*math.comb(v,q)
    assert half.get((0,0),0)>0,'nonpositive constant'
    assert all(c>=0 for c in half.values()),'negative half-domain coefficient'
    d=max(a+b for a,b,c in poly)
    # Bernstein coefficients on z0+z1+z2=1, with
    # z0=16/n, z1=2(j-8)/n, z2=(k-j)/n.
    bound=max(Fraction(c*math.factorial(d-a-b)*math.factorial(a)*math.factorial(b),
                       2**a*16**(d-a-b)*math.factorial(d))
              for (a,b),c in half.items() if c)
    return sum(c>0 for c in half.values()),bound

def vp(value,p):
    assert value>0
    count=0
    while value%p==0:value//=p;count+=1
    return count

def verify(cert):
    row_weights={int(r):w for r,w in cert['row_weights'].items()}
    assert set(row_weights)==set(RS)
    assert all(isinstance(w,int) and w>=0 for w in row_weights.values())
    coverage=[0]*len(PTS)
    D=T=0;A=1;B=Fraction(1);taylor_zero=0;positive_terms=0;polynomial_summaries=[]
    for f in cert['polynomials']:
        poly=f['poly'];weight=f['weight']
        assert isinstance(weight,int) and weight>0
        assert all(isinstance(z,int) for term in poly for z in term)
        assert all(a>=0 and b>=0 and c!=0 for a,b,c in poly)
        assert len({(a,b) for a,b,c in poly})==len(poly)
        degree=max(a+b for a,b,c in poly)
        origin=min(a+b for a,b,c in poly)
        assert degree==f['degree'] and origin==f['origin_order']
        norm=sum(abs(c) for a,b,c in poly)
        assert norm==f['coefficient_norm']
        count,bernstein=positive_half_coefficients(poly);positive_terms+=count
        for index,((x,y),order) in enumerate(zip(PTS,f['orders'])):
            assert isinstance(order,int) and order>=0
            for total in range(order):
                for u in range(total+1):
                    assert coefficient_at(poly,x,y,u,total-u)==0,'Taylor constraint'
                    taylor_zero+=1
            assert any(coefficient_at(poly,x,y,u,order-u)!=0 for u in range(order+1)), 'order overstated or zero polynomial'
            coverage[index]+=weight*order
        D+=weight*degree;T+=weight*origin;A*=norm**weight;B*=bernstein**weight
        polynomial_summaries.append(dict(degree=degree,weight=weight,origin_order=origin,
                                         terms=len(poly),positive_half_terms=count,
                                         bernstein_bound=str(bernstein)))
    for (x,y),covered in zip(PTS,coverage):assert covered>=row_weights[x+y],'insufficient row cover'
    W=sum(row_weights.values());delta=D-W
    assert (D,W,T,delta)==(cert['D'],cert['W'],cert['T'],cert['delta'])
    assert 0<delta<T
    exponents={p:max(sum(w*vp(abs(r-h),p) for r,w in row_weights.items()) for h in (0,2,3)) for p in (2,3,5)}
    exponents[7]=max(row_weights.values())
    C=math.prod(p**e for p,e in exponents.items())
    K=2**W*C*A
    shift_sum=sum(r*w for r,w in row_weights.items())
    cutoff=2*shift_sum
    # For n>=cutoff, the product of (1-r/n)^w is >=1-shift_sum/n>=1/2.
    KB=2*C*B
    E=KB.numerator.bit_length()-KB.denominator.bit_length()
    while Fraction(2)**E<=KB:E+=1
    # For the remaining n<cutoff, g<=n implies g^T/n^delta<n^(T-delta).
    E=max(E,(cutoff**(T-delta)).bit_length())
    return dict(accepted=True,D=D,W=W,T=T,delta=delta,row_weights=row_weights,
                g_power=T,n_power=delta,alpha_form_n_power=T-delta,alpha_power=T,
                cost_exponents=exponents,norm_A=str(A),constant_K=str(K),crude_constant_bit_bound=K.bit_length(),
                bernstein_product_bound=str(B),bernstein_constant=str(KB),constant_bit_bound=E,
                window_shift_sum=shift_sum,large_n_cutoff=cutoff,
                strict_binary_bound=f'g^{T} < 2^{E} n^{delta}',
                taylor_zero_conditions=taylor_zero,positive_half_coefficients=positive_terms,
                polynomials=polynomial_summaries)

def main():
    frontier=json.loads((ROOT/'gcd_frontier.json').read_text())
    candidates=[c for c in frontier['certificates'] if c['T']>c['delta']>0]
    results=[(c,verify(c)) for c in candidates]
    # Best exponent delta/T; then smallest logarithmic constant per T.
    cert,result=min(results,key=lambda item:(Fraction(item[0]['delta'],item[0]['T']),
                                              Fraction(item[1]['constant_bit_bound'],item[0]['T']),item[0]['D']))
    path=ROOT/'certificate_selected.json'
    path.write_text(json.dumps(cert,indent=2),encoding='utf-8')
    mutations=[]
    for kind in ('row_weight','origin_order','polynomial_coefficient'):
        bad=copy.deepcopy(cert)
        if kind=='row_weight':bad['row_weights']['1']+=1
        elif kind=='origin_order':bad['polynomials'][0]['origin_order']+=1
        else:bad['polynomials'][0]['poly'][0][2]+=1
        try:verify(bad)
        except (AssertionError,ValueError,KeyError) as e:mutations.append(dict(kind=kind,rejected=True,reason=str(e)))
        else:raise AssertionError('mutation accepted: '+kind)
    output=dict(created_utc=datetime.now(timezone.utc).isoformat(),
                certificate_path=path.name,certificate_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),
                verification=result,mutations=mutations,
                acceptance_scope='exact finite polynomial data and constants; paper NC7 implication in PROOFS.md; no Lean; same-worker second implementation')
    (ROOT/'verification.json').write_text(json.dumps(output,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in result.items() if k not in ('norm_A','constant_K','polynomials','bernstein_product_bound','bernstein_constant')}))
    print(json.dumps(dict(certificate_sha256=output['certificate_sha256'],mutation_rejections=len(mutations))))

if __name__=='__main__':main()
