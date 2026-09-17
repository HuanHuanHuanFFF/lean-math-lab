#!/usr/bin/env python3
"""Alternative exhaustive verifier: reversed coefficient boxes and quadratic roots.
Does not import the constructor.  Uses Fraction arithmetic and recovers j from
its quadratic product rather than the constructor's delta equation.
Both implementations have the same author; this is not external peer review.
"""
import argparse,collections,copy,json,math
from fractions import Fraction as Q
from pathlib import Path

def order3(n):
    assert n>0
    p=3;v=0
    while n%p==0:v+=1;p*=3
    return v

def reconstruct():
    states=[];terms=[];counts=collections.Counter()
    for l,m in [(3,1),(1,3),(1,1)]:
        A=l*l*l*m*m
        # u<=A always holds in the finite part. eps<g gives eps<=(A-1)/2.
        for u in range(1,A+1):
            if u%2==0:continue
            for z in range(1,u+1):
                params=[('diagonal-small',1,1)]
                for E in range(1,(A-1)//2+1):
                    if E%2==0:continue
                    for g in range(E+1,math.isqrt(E*E+A//u)+1):
                        params.append(('strict',g,E))
                for branch,g,E in params:
                    state=[l,m,branch,g,E,u,z];states.append(state)
                    counts[f'{l},{m}:{branch}']+=1
                    H=Q(2*u*g*g+E,l*m);C=Q(z*H*H+l,u*g*g)
                    if H.denominator!=1 or C.denominator!=1 or C<5:continue
                    n=2*m*C*H+2
                    if n.denominator!=1 or int(n)%4:continue
                    n=int(n);H=int(H);C=int(C)
                    product=Q(u*g*g*C*(n-1),l)
                    disc=n*n-4*product
                    if disc<=0 or disc.denominator!=1:continue
                    d=math.isqrt(int(disc))
                    if d*d!=disc:continue
                    j=Q(n-d,2);delta=Q(d,2*g*H)
                    if j.denominator!=1 or delta.denominator!=1 or int(delta)%2!=1:continue
                    j=int(j);delta=int(delta)
                    if j<4 or 2*j>=n:continue
                    t={'state':state,'H':H,'C':C,'n':n,'j':j,'delta':delta,
                       'actual_lambda':3 if order3(n-1)==1 else 1,
                       'actual_mu':3 if order3((n-2)//2)==1 else 1,
                       'actual_g':math.gcd(n,j),'v3_n_minus_1':order3(n-1)}
                    terms.append(t)
    states.sort();terms.sort(key=lambda d:d['state'])
    return states,terms,dict(sorted(counts.items()))

def check(cert):
    states,terms,counts=reconstruct()
    assert cert['format']=='B699-BALANCED-v1'
    assert cert['state_fields']==['lambda','mu','branch','g','epsilon','u','z']
    assert len(states)==len(set(map(tuple,states)))==271
    assert cert['finite_states']==states,'complete state set mismatch'
    assert cert['state_count']==len(states),'state count mismatch'
    assert cert['counts_by_pair_and_branch']==counts,'case count mismatch'
    assert cert['restored_terminals']==terms,'terminal mismatch'
    survivors=[t for t in terms if (t['actual_lambda'],t['actual_mu'])==tuple(t['state'][:2])]
    assert not survivors and cert['survivors_after_true_smallparts']==0
    assert len(terms)==1 and terms[0]['v3_n_minus_1']==2
    # Original-binomial prime witness: two different direct calculations.
    n,j=terms[0]['n'],terms[0]['j']
    def fact_v(n):
        value=0
        while n:n//=3;value+=n
        return value
    v_left=fact_v(n)-fact_v(3)-fact_v(n-3)
    v_right=fact_v(n)-fact_v(j)-fact_v(n-j)
    assert (v_left,v_right)==(1,4)
    assert math.comb(n,3)%3==math.comb(n,j)%3==0
    return {'status':'PASS_ALTERNATIVE_COMPLETE_RECOVERY','state_count':len(states),
            'terminal_count':len(terms),'survivors':0,'counts':counts,
            'original_witness':{'n':n,'j':j,'p':3,'v3_choose_n_3':v_left,'v3_choose_n_j':v_right},
            'independence':'Same author, different enumeration and recovery; not an independent researcher.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path,required=True);ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    cert=json.loads(a.certificate.read_text());out=check(cert);rejected=[]
    if a.negative_tests:
        for case in range(7):
            bad=copy.deepcopy(cert)
            if case==0:bad['finite_states'].pop()
            if case==1:bad['finite_states'].append(bad['finite_states'][0])
            if case==2:bad['state_count']+=1
            if case==3:bad['restored_terminals'][0]['actual_lambda']=3
            if case==4:bad['restored_terminals'][0]['v3_n_minus_1']=1
            if case==5:bad['restored_terminals']=[]
            if case==6:bad['finite_states'][0][4]+=2
            try:check(bad)
            except (AssertionError,ValueError,KeyError):rejected.append(case)
            else:raise AssertionError(f'bad certificate {case} accepted')
        out['negative_tests_rejected']=rejected
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(out,ensure_ascii=False))
if __name__=='__main__':main()
