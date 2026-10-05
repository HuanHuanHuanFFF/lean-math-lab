#!/usr/bin/env python3
"""Independent receiver: direct expression evaluation and exhaustive finite tests.
Does not import the generator or recovery code. Uniform claims remain paper proofs.
"""
from __future__ import annotations
import argparse,copy,hashlib,json
from itertools import product
from math import gcd
from fractions import Fraction as R
from pathlib import Path

def need(ok,msg):
    if not ok:raise ValueError(msg)
def canon(o):return (json.dumps(o,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def evaluate(rows,z):
    return sum(c*__import__('functools').reduce(lambda a,b:a*b,(a**b for a,b in zip(z,k)),1) for k,c in rows)
def data(h,Q,C,x):
    L=4*C+3*h*Q*Q;K=h*h*Q**3-C*Q-h
    I=(4*x*x-h*Q*Q)*(h*Q-Q-4*x)-h*Q**3+h
    F=4*K*K-h*Q*K*L+C*L*L
    ker=4*Q*x**3*(C-Q*x)-(C*Q*Q-x)*(C+4*x*x)
    den=x*(C+4*x*x)
    kp=-16*Q*Q*x**3+12*(Q*C+1)*x*x-8*C*Q*Q*x+C
    der=kp*den-ker*(C+12*x*x)
    X=h*Q-2*x;Ynum=h*Q*Q+2*(h-1)*Q*x-8*x*x
    Wnum=h*(12*x*x*Q*Q-Q**3*X-2*x)+4*x*x*Ynum
    Tnum=-16*x**3+4*x*x*Q*h-4*x*x*Q+6*x*Q*Q*h+Q**3*h*h+Q**3*h-2*h
    return {'L':L,'K':K,'I':I,'Phi':F,'kernel':ker,'derivative_numerator':der,
            'Y_quotient_numerator':Wnum,'Y_error_coefficient':Tnum}

def verify(o,deep=True):
    need(o['schema']=='B699-D-R11-saturated-recovery-v1','schema')
    need(o['variable_order']==['h','Q','C','H'],'variable ordering')
    need(o['constants']=={'linear_C_coefficient':4,'linear_hQ2_coefficient':3,
       'H_denominator_max':4,'small_root_H_coefficient':8,
       'overlap_h_coefficient':2,'overlap_constant':-3,'first_source_size_factor':9},'proof constants')
    need(o['actual_NC3_count_computed'] is False and o['q6_terminal_executed'] is False,'scope')
    need(o['new_certified_unbounded_original_domain_count']==0,'net scope')
    expected_names=['linear_remainder','scalar_phi','discriminant_relation','monotone_derivative',
      'X_full_source','Y_full_source','first_source_overlap']
    need(o['identity_names']==expected_names,'identity list')
    bounds={'L':(1,2,1,0),'K':(2,3,1,0),'I':(2,3,0,3),'Phi':(4,6,3,0),
            'kernel':(0,2,2,4),'derivative_numerator':(0,2,3,6),
            'Y_quotient_numerator':(2,4,0,4),'Y_error_coefficient':(2,3,0,3)}
    need(set(o['polynomials'])==set(bounds),'polynomial table names')
    points=0
    for name,b in bounds.items():
        rows=o['polynomials'][name]
        ks=[tuple(k) for k,c in rows]
        need(ks==sorted(set(ks)) and all(c!=0 for k,c in rows),'noncanonical sparse coefficients')
        need(all(len(k)==4 and all(isinstance(v,int) and 0<=v<=bb for v,bb in zip(k,b)) for k,c in rows),'degree contract')
        for z in product(*(range(1,bb+2) for bb in b)):
            need(evaluate(rows,z)==data(*z)[name],'complete polynomial interpolation '+name);points+=1
    # Full tensor identities: the variables have independent degrees <=(4,6,3,6).
    identity_points=0
    for h,Q,C,x in product(range(1,6),range(1,8),range(1,5),range(1,8)):
        d=data(h,Q,C,x);L,K,I=d['L'],d['K'],d['I'];F=d['Phi'];quad=4*x*x-h*Q*x+C
        X=h*Q-2*x;Ynum=h*Q*Q+2*(h-1)*Q*x-8*x*x;vnum=(h-1)*Q-4*x
        z=h*h*Q**3-1;w=h*h*Q**6-(3*h+1)*Q**3+2
        vals=[I-((-4*x-Q)*quad+L*x-K),
              F-(16*C**3+(28*h+4)*Q*Q*C*C+(-4*h**3*Q**4+4*h*h*Q**4+4*h*h*Q+8*h*Q)*C+h*h*(h*Q**3-1)*(h*Q**3-4)),
              L*L*((h*Q)**2-16*C)-(h*Q*L-8*K)**2+16*F,
              d['derivative_numerator']-Q*(C**3*Q+8*C*C*x**3+8*C*C*x*x*Q+4*x**4*Q*(C-4*x*x)),
              h*z-X*(vnum*X+8*h*Q*x)+I,
              h*h*w-Ynum*d['Y_quotient_numerator']+d['Y_error_coefficient']*I,
              h*h*w-z*(z+1-3*h)-h*(2*h-3)]
        need(all(v==0 for v in vals),'full raw identity tensor');identity_points+=1
    grid=o['root_grid']
    need({k:grid[k] for k in ('C_min','C_max','Q_values','pairs')}==
         {'C_min':1,'C_max':1000,'Q_values':list(range(3,22,2)),'pairs':10000},'root grid coverage')
    roots=[];count=0
    if deep:
        for Q in range(3,22,2):
            for C in range(1,1001):
                row=[];x=1
                while 4*x*x+2*Q*x<C:
                    if 4*Q*x**3*(C-Q*x)==(C*Q*Q-x)*(C+4*x*x):row.append(x)
                    x+=1
                need(len(row)<=1,'finite uniqueness regression')
                if row:roots.append([C,Q,row[0]])
                count+=1
        need(grid['integer_roots']==roots,'exhaustive arithmetic roots')
        need(grid['counts']=={'integer_roots':len(roots),'no_integer_root':count-len(roots)},'grid counters')
    else:
        need(grid['integer_roots']==[[890,3,10]] and grid['counts']=={'integer_roots':1,'no_integer_root':9999},'frozen arithmetic roots')
    lg=o['linear_grid']
    need(lg['h_values']==list(range(3,62,2)) and lg['Q_values']==list(range(3,16,2)) and lg['C_max']==101,'linear grid bounds')
    trials=0;saturated=[]
    for h,Q,C in product(range(3,62,2),range(3,16,2),range(1,102)):
        if gcd(C,h*Q)!=1:continue
        trials+=1;dd=data(h,Q,C,0)
        if dd['Phi']==0:
            hh=R(dd['K'],dd['L'])
            need(hh.denominator==1,'common root integrality regression')
            saturated.append([h,Q,C,int(hh)])
    need(lg['coprime_triples']==trials and lg['Phi_zero_rows']==saturated,'linear grid exact outcomes')
    mod=o['old_relaxed_model'];need(mod['scope'].startswith('old relaxed'),'relaxed model scope')
    P,Q,H,h,d,v,n=(mod[k] for k in ('P','Q','H','h','d','v','n'))
    need((P,Q,H,h,d,v,n)==(89,3,10,43,1,2,5342),'fixed regression model')
    need(4*v*H*H==P*Q*Q-1 and h*d==4*H+Q and h*Q==P+4*H,'old exact algebraic model')
    C=P*H;X=P+2*H;Y=Q*Q+2*v*H;G=gcd(n-1,h*h*Q**3-1)
    need(mod['H_gcd']==gcd(C,h*Q**3-1)==H and mod['P_gcd']==gcd(C,h*Q**3-4)==P,'complete gcd split')
    need(mod['X']==X and mod['Y']==Y and X*Y==n-1,'first source pair')
    need(mod['first_source_gcd']==G and mod['leak']==G//X and (2*h-3)%(G//X)==0,'leakage bound model')
    fam=o['square_family']
    need(fam=={'Q':19,'H':5,'s_start':402,'s_period':3420,'congruence_modulus':9025,
       'T_start_mod_9025':8930,'two_to_period_mod_9025':1,'formula_d_numerator':39,
       'all_m_covered_by_proof':True},'square family statement')
    need(pow(2,3420,9025)==1 and (3*pow(2,401,9025)-1)%9025==8930,'exact periodic family proof constants')
    need([r['m'] for r in o['square_family_records']]==[0,1,2],'family regression coverage')
    for r in o['square_family_records']:
        m=r['m'];s=402+3420*m;n=3*(1<<s);Q=19;H=5;T=(n-2)//2;P=T//95;h=(P+20)//19;C=P*H
        need(T%95==0 and (P+20)%19==0 and h>39,'family true n/integrality/order')
        need((h*Q)**2-16*C==(P-20)**2 and 2*P*Q*H+2==n,'actual discriminant square family')
        Dd=data(h,Q,C,0)
        need(Dd['Phi']!=0 and gcd(C,h*Q)==1,'family joint norm rejection')
        need(r['s']==s and r['n_bit_length']==n.bit_length() and r['h_bit_length']==h.bit_length(),'family integer sizes')
        need(r['n_sha256_decimal']==hashlib.sha256(str(n).encode()).hexdigest(),'family exact n digest')
        need(r['Q']==19 and r['H']==5 and r['d_numerator']==39 and r['d_denominator_bit_length']==h.bit_length(),'family d bridge')
        need(r['Phi_sign']==(1 if Dd['Phi']>0 else -1) and r['C_coprime_hQ'] and r['D_equals_P_minus_4H_squared'],'family fields')
        need(r['scope']=='quadratic recovery only; original E/Pell/13/prime-P unchecked or false','family scope')
    for r in o['root_trace_records']:
        C,Q=r['C'],r['Q'];rr=r['result'];B=rr['bound']
        need(B>=0 and (B==0 or 4*B*B+2*Q*B<C) and 4*(B+1)**2+2*Q*(B+1)>=C,'strict integer interval bound')
        for x,vv in rr['trace']:
            need(1<=x<=B and vv==4*Q*x**3*(C-Q*x)-(C*Q*Q-x)*(C+4*x*x),'exact binary trace value')
        if rr['H'] is not None:
            x=rr['H'];need(4*Q*x**3*(C-Q*x)==(C*Q*Q-x)*(C+4*x*x),'returned true root')
    return {'status':'PASS','polynomial_interpolation_points':points,'raw_identity_tensor_points':identity_points,
      'polynomial_identities':7,'arithmetic_root_grid_pairs':10000,
      'coprime_linear_regression_triples':trials,'actual_NC3_count_computed':False,
      'original_unbounded_domain_net_count':0,'paper_proof_formalized':False}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True);ap.add_argument('--output',required=True)
    ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    o=json.loads(Path(a.certificate).read_text());result=verify(o)
    negatives=[]
    if a.negative_tests:
        edits=[]
        for key in o['polynomials']:
            def edit(x,k=key):x['polynomials'][k][0][1]+=1
            edits.append(('coefficient_'+key,edit))
        edits += [
          ('drop_shared_denominator',lambda x:x['constants'].__setitem__('linear_C_coefficient',3)),
          ('small_root_wrong_side',lambda x:x['constants'].__setitem__('small_root_H_coefficient',4)),
          ('discard_leakage',lambda x:x['constants'].__setitem__('overlap_constant',0)),
          ('false_root_grid',lambda x:x['root_grid']['integer_roots'].append([891,3,10])),
          ('false_P_gcd',lambda x:x['old_relaxed_model'].__setitem__('P_gcd',1)),
          ('wrong_family_period',lambda x:x['square_family'].__setitem__('s_period',684)),
          ('wrong_family_d',lambda x:x['square_family_records'][0].__setitem__('d_numerator',19)),
          ('calling_model_NC3',lambda x:x.__setitem__('actual_NC3_count_computed',True))]
        for name,edit in edits:
            bad=copy.deepcopy(o);edit(bad)
            try:verify(bad,deep=False)
            except (ValueError,AssertionError,KeyError,TypeError):negatives.append({'name':name,'status':'REJECTED'})
            else:raise ValueError('accepted mathematical tampering: '+name)
    result['negative_tests']=negatives
    Path(a.output).write_bytes(canon(result))
    print(json.dumps({'status':'PASS','negative_tests_rejected':len(negatives),'actual_NC3_count_computed':False}))
if __name__=='__main__':main()
