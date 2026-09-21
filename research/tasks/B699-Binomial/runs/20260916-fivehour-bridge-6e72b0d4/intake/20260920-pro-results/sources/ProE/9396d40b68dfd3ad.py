"""Independent checker: integer value grids + prime carries.
No import from primary.py, poly_kernel.py, or the certificate generator.
Degree caps are fixed here, not accepted from the submitted certificate.
"""
from __future__ import annotations
import itertools
import json
import math
import sys
from pathlib import Path

META = {
    'format':'B699-MINUS-SLOT-v1',
    'core':{'P_min':3,'P_parity':'odd','j_min':4,'j_max':'(P-1)^2',
            'c_branches':[0,1,2],'c01_b_max':'P-2','c2_b_max':'P-3','c2_t':[1,2]},
    'row':{'p':'odd prime','h_min':1,'n':'2*(p^h-1)^2',
           'isolated3_exception':{'P':3,'n':8,'j':4}},
    'slot':{'X':'positive even','n':'2*X^2','condition':'j%(X+1) in {0,1,2}',
            'not_equivalent_to':'(X+1) divides j*(j-1)*(j-2)'},
    'claims':{'full_i3':False,'all_double_square_rows':False,
              'requires_P_prime_for_integer_kernel':False,'requires_old_low_ratio_chain':False},
}

def specs():
    N=lambda P:2*P*P-4*P+1
    def gap(B,D):
        P=B+D+4;b=B+1
        return (b*N(P)-((b*b-4)*P+3*b+8),
                B**3+3*B*B*D+8*B*B+2*B*D*D+14*B*D+21*B+2*D*D+15*D+18)
    return {
      'c0_recovery':(['P','b'],[3,2],lambda P,b:(
        b*(b*P-1)-(P-b)*N(P),P*((b+P-2)**2-(P-1)*(3*P-5)))),
      'c1_recovery':(['P','b'],[2,2],lambda P,b:(
        b*(b*P+1)-b*N(P),P*b*(b-2*P+4))),
      'c2_quotient':(['P','b','k'],[3,2,1],lambda P,b,k:(
        (b*P+2)*(b*P+1)-(P*k+2)*N(P),P*((b*b-4)*P+3*b+8-k*N(P)))),
      'c2_square':(['P','b','t'],[3,2,1],lambda P,b,t:(
        (b*b-4)*P+3*b+8-(3*b+8-t*P)*N(P),
        P*((3*P-6-b)**2-((9-2*t)*P*P+(4*t-20)*P+8-t)))),
      'quotient_upper':(['P'],[2],lambda P:(N(P)-((P-2)*P+1),P*(P-2))),
      'quotient_upper_positive':(['x'],[2],lambda x:((x+3)*(x+1),x*x+4*x+3)),
      'c0_coprime_square':(['z'],[2],lambda z:((2*z)*(6*z-2),4*z*(3*z-1))),
      'c0_bezout':(['z'],[1],lambda z:(3*z-(3*z-1),1)),
      'c2_positive_gap':(['B','D'],[3,2],gap),
      't_upper':(['b','d'],[1,1],lambda b,d:(3*(b+3+d)-(3*b+8),3*d+1)),
      'complete_source':(['P'],[2],lambda P:(2*(P-1)**2-2,2*P*(P-2)))
    }

def evaluate(terms,point):
    ans=0
    for powers,coeff in terms:
        term=coeff
        for value,power in zip(point,powers): term*=value**power
        ans+=term
    return ans

def grid_check(records):
    reference=specs()
    if set(records)!=set(reference):raise ValueError('missing or extra identity')
    count=0
    for key,(names,caps,expr) in reference.items():
        record=records[key]
        if set(record)!={'variables','degree_bounds','terms'}:raise ValueError('polynomial schema')
        if record['variables']!=names or record['degree_bounds']!=caps:raise ValueError('degree cap or variable mismatch')
        seen=set();terms=record['terms']
        for powers,coeff in terms:
            if len(powers)!=len(caps) or type(coeff)!=int or coeff==0:raise ValueError('term schema')
            if any(type(e)!=int or e<0 or e>d for e,d in zip(powers,caps)):raise ValueError('illegal degree')
            if tuple(powers) in seen:raise ValueError('duplicate monomial')
            seen.add(tuple(powers))
        if terms!=sorted(terms):raise ValueError('noncanonical terms')
        for point in itertools.product(*(range(d+1) for d in caps)):
            left,right=expr(*point)
            if left!=right or evaluate(terms,point)!=left:raise ValueError('degree-complete grid mismatch: '+key)
            count+=1
        if key in ['quotient_upper_positive','c2_positive_gap','t_upper']:
            if any(c<0 for _,c in terms):raise ValueError('positivity coefficient')
            if not any(all(e==0 for e in es) and c>0 for es,c in terms):raise ValueError('missing strict constant')
    return count

def factors_sieve(n):
    if n<1:raise ValueError('positive number required')
    limit=math.isqrt(n)
    sieve=bytearray(b'\x01')*(limit+1)
    if limit>=0:sieve[0]=0
    if limit>=1:sieve[1]=0
    for d in range(2,math.isqrt(limit)+1):
        if sieve[d]:sieve[d*d:limit+1:d]=b'\x00'*(((limit-d*d)//d)+1)
    out=[];remaining=n
    for d in range(2,limit+1):
        if sieve[d] and remaining%d==0:
            out.append(d)
            while remaining%d==0:remaining//=d
    if remaining>1:out.append(remaining)
    return out

def carries(n,j,q):
    x=j;y=n-j;carry=0;total=0
    while x or y or carry:
        carry=(x%q+y%q+carry)//q
        total+=carry;x//=q;y//=q
    return total

def direct_factorial_binomial(n,j):
    a=1;b=1;c=1
    for i in range(1,n+1):a*=i
    for i in range(1,j+1):b*=i
    for i in range(1,n-j+1):c*=i
    return a//(b*c)

def expected_endpoint():
    n=8;j=4
    c3=direct_factorial_binomial(n,3);cj=direct_factorial_binomial(n,j)
    source=[q for q in factors_sieve(c3) if q!=2]
    witnesses=[q for q in source if carries(n,j,q)>0]
    return {'P':3,'n':n,'j':j,'C_n3':c3,'C_nj':cj,'gcd':math.gcd(c3,cj),'odd_witness':min(witnesses)}

def row_checks():
    out=[]
    for P in [3,5,9,25,27]:
        n=2*(P-1)**2
        sources=[q for q in factors_sieve(n*(n-1)*(n-2)//6) if q!=2]
        witnesses=[]
        for j in range(4,n//2+1):
            available=[q for q in sources if carries(n,j,q)>0]
            if not available:raise ValueError('diagnostic regression has no witness')
            witnesses.append(min(available))
        out.append({'P':P,'n':n,'j_first':4,'j_last':n//2,'witnesses':witnesses})
    return out

def diagnostics():
    out=[]
    for P,sign,j,w in [(122,-1,10858,11),(31,1,713,31),(45,-1,1422,11)]:
        n=2*(P+sign)**2;N=n-1
        out.append({'P':P,'sign':sign,'n':n,'j':j,'N':N,
          'legal':4<=j<=n//2,'j_mod_P':j%P,
          'first_window_remainder':j*(j-1)%N,
          'triple_mod_P':j*(j-1)*(j-2)%P,
          'common_witness':w,'witness_verified':carries(n,3,w)>0 and carries(n,j,w)>0})
    return out

def check(path):
    data=json.loads(Path(path).read_text())
    if set(data)!={'metadata','polynomials','mod8','squares_mod8','mod3_c0','endpoint','diagnostics','regression_rows'}:
        raise ValueError('certificate top-level schema')
    if data['metadata']!=META:raise ValueError('hypothesis or scope mismatch')
    count=grid_check(data['polynomials'])
    expected_mod=[{'Pmod8':r,'t1':(7*r*r-16*r+7)%8,'t2':(5*r*r-12*r+6)%8} for r in range(1,8,2)]
    if data['mod8']!=expected_mod or data['squares_mod8']!=sorted(set((r*r)%8 for r in range(8))):
        raise ValueError('wrong modular certificate')
    if data['mod3_c0']!=[2,2,2]:raise ValueError('wrong mod3 obstruction')
    if data['endpoint']!=expected_endpoint():raise ValueError('wrong isolated3 endpoint')
    if data['diagnostics']!=diagnostics():raise ValueError('wrong failure diagnostic')
    if data['regression_rows']!=row_checks():raise ValueError('wrong prime-carry regression')
    print('PASS_INDEPENDENT_FULL_DEGREE_GRIDS_AND_CARRIES')
    print('grid_points='+str(count)+' required_endpoint=1 diagnostic_rows=5')

if __name__=='__main__':
    try:
        check(sys.argv[1] if len(sys.argv)>1 else Path(__file__).parents[1]/'certificates/certificate.json')
    except (ValueError,AssertionError,KeyError,TypeError,IndexError) as exc:
        print('REJECT_INDEPENDENT: '+str(exc),file=sys.stderr)
        sys.exit(1)
