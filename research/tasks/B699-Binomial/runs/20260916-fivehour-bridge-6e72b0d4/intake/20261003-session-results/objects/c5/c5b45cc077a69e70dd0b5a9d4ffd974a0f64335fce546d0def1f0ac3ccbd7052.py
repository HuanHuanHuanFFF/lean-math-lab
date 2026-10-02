#!/usr/bin/env python3
"""Independent D08 checker. Does not import the generator.
The inherited mathematical hypotheses remain paper-level adopted hypotheses.
"""
from __future__ import annotations
import argparse,copy,hashlib,json,math,zipfile
from pathlib import Path
EXPECTED_PARENT='cf315c42bdf034c29001c35042cbd2c70ce844df2f79480aebb28d4797ea7a24'

def need(ok,msg):
    if not ok:raise ValueError(msg)
def dump(x):return json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n'

# Independently implemented sparse Z-polynomials; five formal variables.
class ZP:
    def __init__(self,t=None):self.t={k:v for k,v in (t or {}).items() if v}
    @classmethod
    def C(cls,n):return cls({(0,)*5:n})
    @classmethod
    def X(cls,k):
        e=[0]*5;e[k]=1;return cls({tuple(e):1})
    @staticmethod
    def cast(x):return x if isinstance(x,ZP) else ZP.C(x)
    def __add__(self,z):
        t=dict(self.t)
        for e,c in self.cast(z).t.items():t[e]=t.get(e,0)+c
        return ZP(t)
    __radd__=__add__
    def __neg__(self):return ZP({e:-c for e,c in self.t.items()})
    def __sub__(self,z):return self+-self.cast(z)
    def __rsub__(self,z):return self.cast(z)+-self
    def __mul__(self,z):
        t={}
        for e,c in self.t.items():
            for f,b in self.cast(z).t.items():
                a=tuple(x+y for x,y in zip(e,f));t[a]=t.get(a,0)+c*b
        return ZP(t)
    __rmul__=__mul__
    def __pow__(self,k):
        z=ZP.C(1)
        for _ in range(k):z=z*self
        return z
    def uni13(self):
        need(all(not any(e[1:]) for e in self.t),'not a univariate polynomial')
        a=[0]*(1+max((e[0] for e in self.t),default=0))
        for e,c in self.t.items():a[e[0]]=c%13
        while a and a[-1]==0:a.pop()
        return a

def identities():
    d,v,nu,h,W=[ZP.X(k) for k in range(5)];Q=d+v;P=Q+h*v
    E=v*nu**2-P*Q**2+1;line=h*d-Q-2*nu
    DIV=nu**2-W-(h+3)*d**2-(2*h+3)*d*v-(h+1)*v**2
    checks={'integer_saturated_DIV':v*DIV-E+(v*W-d**3+1),
            'full_P_source_identity':P*(d*nu-2*Q**2)-Q**2*nu+2-2*E-v*nu*line,
            'original_j_plus_k':(P+nu)*Q**2+(Q**2+v*nu)*P-(P*Q*nu+2)+2*E+v*nu*line}
    v,H=ZP.X(0),ZP.X(1);Q=1+v;P=Q**2+4*v*H
    E=4*v*H**2-P*Q**2+1;n=2*P*Q*H+2
    L=(3+4*v)*Q**5-2*v
    R=Q**10-12*Q**7+15*Q**6-4*Q**5-4*Q**3+12*Q**2-12*Q+4
    M=H*Q**3*(1+4*v)+Q**5-v
    checks['d1_power_linear']=n-2*M-2*Q*E
    checks['d1_power_elimination']=R-v*n*(n-2*L)+(Q**6*(1+4*v)**2+4*v*Q*(2*M-L)+4*v*Q**2*E)*E
    for k,z in checks.items():need(not z.t,'identity failed: '+k)
    need(7**49>2**137,'source size constant false')
    return list(checks)

def quadratic_pow(e,m):
    a,b=1,0;c,d=2,1
    while e:
        if e&1:a,b=(a*c+3*b*d)%m,(a*d+b*c)%m
        c,d=(c*c+3*d*d)%m,(2*c*d)%m;e//=2
    return a,b

def source(q,m):
    u,x=quadratic_pow(8*q+1,2*m)
    need(u%2==0 and x%2==1,'Pell division by two invalid')
    return ((3*x-1)//2)%m,(u//2)%m

def order_reference():
    out=[]
    for p in (3,5,7,11,13,17,19,23,29,31,41,73):
        need(all(p%k for k in range(2,math.isqrt(p)+1)),'composite modulus')
        order=next(k for k in range(1,p) if pow(2,k,p)==1)
        powers=[pow(2,k,p) for k in range(order)]
        log=next((k for k in range(order) if pow(2,k,p)==3%p),None)
        out.append({'p':p,'order_2':order,'power_cycle':powers,'log_2_3':log,
                    'c1_possible':any(6*k%order==1%order for k in range(order)),
                    'c3_s_residue':next((s for s in range(order) if 3*pow(2,s,p)%p==2%p),None)})
    return out

def three_reference():
    out=[]
    for a in range(3):
        for b in range(3):
            for H in range(3):
                for h in range(3):
                    nu=2*H%3;Q=(1+a)%3;P=(Q+h*a)%3
                    if a*b%3 or (h-4*H-Q)%3:continue
                    if (4*a*H*H-P*Q*Q+1)%3:continue
                    if (nu*nu-b-(h+3)-(2*h+3)*a-(h+1)*a*a)%3:continue
                    n=(2*P*Q*H+2)%3
                    for c in (1,3):
                        if n==c%3:out.append({'A':a,'B':b,'nu':nu,'h':h,'P':P,'Q':Q,'n':n,'c':c})
    return sorted(out,key=lambda r:(r['c'],r['A'],r['B'],r['nu']))

def pdict(a):return {i:c%13 for i,c in enumerate(a) if c%13}
def pproduct(a,b):
    t={}
    for i,c in a.items():
        for j,d in b.items():t[i+j]=(t.get(i+j,0)+c*d)%13
    return {i:c for i,c in t.items() if c}
def psum(a,b):
    t=dict(a)
    for i,c in b.items():t[i]=(t.get(i,0)+c)%13
    return {i:c for i,c in t.items() if c}

def check_norm(obj):
    v=ZP.X(0);Q=1+v
    R=Q**10-12*Q**7+15*Q**6-4*Q**5-4*Q**3+12*Q**2-12*Q+4
    L=(3+4*v)*Q**5-2*v
    need(obj['R_ascending_mod_13']==R.uni13(),'R coefficients')
    need(obj['L_ascending_mod_13']==L.uni13(),'L coefficients')
    need(len(obj['certificates'])==2,'two norm gates required')
    for row,w in zip(obj['certificates'],(4,10)):
        need(row['n_mod_13']==w,'wrong norm target')
        coeff=(R-v*w*(w-2*L)).uni13()
        need(coeff[0]==0 and coeff[1:]==row['G_ascending_mod_13'],'wrong G coefficients')
        got=psum(pproduct(pdict(row['U_ascending_mod_13']),pdict(row['G_ascending_mod_13'])),
                  pproduct(pdict(row['W_ascending_mod_13']),{0:12,12:1}))
        need(got=={0:1},'Bezout nonvanishing certificate')
    need(obj['v_zero_recoveries']==[{'n':4,'H':1,'Z':1,'B_times_y':9},{'n':10,'H':4,'Z':7,'B_times_y':5}], 'zero-v roots')
    # Direct check of all H at v=0; it must NOT discard the nonzero B values.
    for row in obj['v_zero_recoveries']:
        H=row['H'];Z=(2*H-1)%13
        need((2*H+2)%13==row['n'] and Z==row['Z'] and (Z*Z-5)%13==row['B_times_y'],'v0 recovery')

def valuation_check(obj):
    const=obj['constants']
    for e in (3,6,8,12):
        u,x=quadratic_pow(e,10**30)
        need(const['U'+str(e)]==u and const['X'+str(e)]==x,'Pell constant')
    need(const['X12_div_13_mod_13']==(const['X12']//13)%13==10,'unit constant')
    for i,row in enumerate(obj['samples']):
        k=i//2;branch=(0,2)[i%2]
        q=3*13**k if branch==0 else (9*13**k-1)//4
        need(row['q']==q and row['q_mod_3']==branch,'sample index')
        a=k+1;m=13**(a+1);d,y=source(q,m)
        need(row['modulus']==m and row['d_residue']==d and row['y_residue']==y,'Pell source sample')
        D=(d-1)%m;val=0
        while D and D%13==0:D//=13;val+=1
        need(val==a==row['valuation_13_d_minus_1'],'valuation sample')
        norm=(q if branch==0 else 4*q+1)//13**k%13
        need(row['normalized_source_unit']==norm and row['normalized_d_minus_1']==D%13,'sample units')
        need(D%13==((7 if branch==0 else 8)*norm)%13,'all-exponent leading-unit regression')
    expected=[]
    for a7,by in ((2,5),(4,9)):
        for branch,dy,yy in ((0,7,1),(2,8,12)):
            multiplier=by*yy*pow(3*dy,-1,13)%13
            expected.append({'A_mod_7':a7,'q_mod_3':branch,'B_times_y_mod_13':by,'normalized_source_multiplier':multiplier})
    need(obj['quotient_unit_rules']==expected,'true quotient leading-unit rules')

def project_reference(parent):
    # Reconstruct local labels directly from the inherited root n-values,
    # rather than trusting the parent's already intersected labels.
    roots={(t['prime'],t['q_mod_3'],t['A_mod_prime']):{r[5] for r in t['roots']} for t in parent['local_tables']}
    def allowed(a,r,c,s):return all(c*pow(2,s,p)%p in roots[p,r,a%p] for p in (5,7,13))
    old=[];origin=[];parent_labs={}
    for a in range(455):
        labs=[[r,c,s] for r in range(3) for c in(1,3) for s in range(12) if allowed(a,r,c,s)]
        parent_labs[a]=labs
        if labs:old.append(a)
        if any(c==3 or s in(0,6) for r,c,s in labs):origin.append(a)
    retained=[];base=[];delta=[]
    for a in range(4095):
        labs=parent_labs[a%455]
        if labs:base.append(a)
        out=[]
        for r,c,s in labs:
            if c==1:
                if s not in(0,6):continue
                if a%3==0 and a%9!=0:continue
                if a%3==2:continue
            else:
                if a%9!=0:continue
            out.append([r,c,s])
        if out:retained.append({'A_mod_4095':a,'q_c_s_labels':out})
        elif labs:delta.append(a)
    rset={r['A_mod_4095'] for r in retained}
    cond=[r for r in retained if r['A_mod_4095']%5 in(1,4)]
    special=[a for a in range(16,8190,70)]
    return {'old_A_modulus':455,'old_retained_A':old,'origin6_retained_A_mod_455':origin,
            'origin6_newly_excluded_A_mod_455':[a for a in old if a not in origin],
            'joint_A_modulus':4095,'even_A_modulus':8190,'retained_fibers':retained,
            'newly_excluded_parent_lifts':delta,'special_A16_mod70':{'all_lifts_mod8190':len(special),
                'parent_surviving_lifts':[a for a in special if a%455 in old],
                'new_surviving_lifts':[a for a in special if a%4095 in rset]},
            'conditional_pm1_mod5_retained_fibers':cond,
            'counts':{'old_retained':len(old),'origin6_retained':len(origin),'origin6_excluded':len(old)-len(origin),
                      'old_lifted_to_4095':len(base),'joint_retained':len(retained),'joint_excluded_from_old_lifts':len(delta),
                      'old_lifts_pm1_mod5':sum(a%5 in(1,4) for a in base),'joint_pm1_mod5':len(cond),
                      'old_A_mod7_5':sum(a%7==5 for a in old),'old_A_mod7_6':sum(a%7==6 for a in old)}}

def mirror_regression():
    out=[]
    for m in (3,9,455,4095,7*17*41*73,13**4):
        inv2=pow(2,-1,m);d=y=P=Q=n=1;A=v=0;H=-inv2%m;h=B=-1%m
        E=(4*v*H*H-P*Q*Q+1)%m;F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%m
        N=(4*v*H**3+H+Q)%m;Z=(2*d*H-Q*Q)%m
        S=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
        need((A*B-3*(d-1))%m==0 and (h*d-4*H-Q)%m==0 and not E and not F and (S-Z*Z)%m==0 and (2*N-n*Q)%m==0,'universal odd mirror')
        out.append({'modulus':m,'passed':True})
    return out

def validate(cert,parent):
    keys={'schema','parent_archive_sha256','scope','origin6','source3_patterns','support','norm13','valuation13','projection','boundary'}
    need(set(cert)==keys,'top-level schema')
    need(cert['schema']=='B699-D08-ORIGIN-SOURCE-v1' and cert['parent_archive_sha256']==EXPECTED_PARENT,'schema/parent binding')
    need(cert['source3_patterns']==three_reference(),'saturated source3 classification')
    orders=order_reference();need(cert['support']['orders']==orders,'multiplicative order / log table')
    forbidden=[x['p'] for x in orders if not x['c1_possible'] and x['c3_s_residue'] is None]
    need(cert['support']['individually_forbidden_primes']==forbidden,'forbidden source primes')
    pair_expected=[];by={x['p']:x for x in orders}
    for p,q in((5,11),(5,13),(5,29)):
        g=math.gcd(by[p]['order_2'],by[q]['order_2']);rp=by[p]['c3_s_residue'];rq=by[q]['c3_s_residue']
        # This checker tests all residues of the lcm, not just a CRT gcd formula.
        compatible=any(s%by[p]['order_2']==rp and s%by[q]['order_2']==rq for s in range(math.lcm(by[p]['order_2'],by[q]['order_2'])))
        pair_expected.append({'primes':[p,q],'c1_possible':by[p]['c1_possible'] and by[q]['c1_possible'],
                              'c3_orders_gcd':g,'c3_residues':[rp,rq],'c3_compatible':compatible})
    need(cert['support']['mixed_pairs']==pair_expected,'shared-source mixed pairs')
    check_norm(cert['norm13']);valuation_check(cert['valuation13'])
    need(cert['projection']==project_reference(parent),'projection / phase coupling')
    need(cert['boundary']=={'historical_net_increment_certified':0,'all_history_difference_audited':False,
                           'minimum_remaining_A_certified':None,'actual_NC3_inputs_counted':False,'R7':[3,4,5,6,7,8,9]},'boundary inflation')

def negatives(cert,parent):
    cases=[]
    def put(name,fn):
        c=copy.deepcopy(cert);fn(c);cases.append((name,c))
    put('wrong_order_7',lambda c:c['support']['orders'][2].update(order_2=1))
    put('invent_log3_at_17',lambda c:c['support']['orders'][5].update(log_2_3=1))
    put('separate_s_in_5_11_pair',lambda c:c['support']['mixed_pairs'][0].update(c3_compatible=True))
    put('drop_source3_pattern',lambda c:c['source3_patterns'].pop())
    put('ignore_nine_divisibility',lambda c:c['projection']['retained_fibers'].append({'A_mod_4095':3,'q_c_s_labels':[[0,3,0]]}))
    put('keep_A6_after_origin6',lambda c:c['projection']['origin6_retained_A_mod_455'].append(6))
    put('wrong_B_at_v0',lambda c:c['norm13']['v_zero_recoveries'][0].update(B_times_y=0))
    def bez(c):c['norm13']['certificates'][0]['U_ascending_mod_13'][0]=(c['norm13']['certificates'][0]['U_ascending_mod_13'][0]+1)%13
    put('corrupt_bezout',bez)
    put('wrong_13_adic_leading_unit',lambda c:c['valuation13']['quotient_unit_rules'][0].update(normalized_source_multiplier=1))
    put('inflated_historical_net',lambda c:c['boundary'].update(historical_net_increment_certified=1255))
    out=[]
    for name,c in cases:
        try:validate(c,parent)
        except ValueError:out.append({'name':name,'rejected':True})
        else:raise ValueError('bad certificate accepted: '+name)
    return out

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True);ap.add_argument('--parent',type=Path,required=True);ap.add_argument('--output',type=Path);ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    need(hashlib.sha256(a.parent.read_bytes()).hexdigest()==EXPECTED_PARENT,'parent archive bytes')
    with zipfile.ZipFile(a.parent) as z:parent=json.loads(z.read('B699-D04-SYNC455-20261002/certificates/certificate.json'))
    cert=json.loads(a.certificate.read_text());ids=identities();validate(cert,parent)
    result={'status':'PASS','evidence_level':'same-session second mathematical implementation; not external review or Lean',
            'paper_dependencies_not_reproved':['historical mapping to canonical core','old q>=6','old A-EXP','old h>A^2'],
            'coefficientwise_integer_identities':ids,'counts':cert['projection']['counts'],
            'universal_odd_mirror_regressions':mirror_regression(),
            'negative_tests':negatives(cert,parent) if a.negative_tests else []}
    text=dump(result)
    if a.output:a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(text,encoding='utf-8')
    print(text,end='')
if __name__=='__main__':main()
