#!/usr/bin/env python3
"""Construct the COMPLETE finite part of epsilon<=g and z<=u.
The infinite tails are proved in proofs/PROOFS.md, not scanned here.
No upper bound on n or delta is imposed by this program.
Standard library only.
"""
import argparse,collections,json,math
from pathlib import Path

def vp(n,p):
    if n<=0 or p<2: raise ValueError('positive n and p>=2 required')
    v=0
    while n%p==0:n//=p;v+=1
    return v

def facts(n,j):
    return {'actual_lambda':3 if vp(n-1,3)==1 else 1,
            'actual_mu':3 if vp((n-2)//2,3)==1 else 1,
            'actual_g':math.gcd(n,j),'v3_n_minus_1':vp(n-1,3)}

def build():
    states=[];terminals=[];counts=collections.Counter()
    for la,mu in [(1,1),(1,3),(3,1)]:
        A=la**3*mu**2
        params=[]
        for g in range(2,(A+1)//2+1):
            for eps in range(1,g,2):
                for u in range(1,A//(g*g-eps*eps)+1,2):
                    for z in range(1,u+1):params.append(('strict',g,eps,u,z))
        for u in range(1,A+1,2):
            for z in range(1,u+1):params.append(('diagonal-small',1,1,u,z))
        for kind,g,eps,u,z in params:
            state=[la,mu,kind,g,eps,u,z];states.append(state)
            counts[f'{la},{mu}:{kind}']+=1
            if (2*u*g*g+eps)%(la*mu):continue
            H=(2*u*g*g+eps)//(la*mu)
            if (z*H*H+la)%(u*g*g):continue
            C=(z*H*H+la)//(u*g*g)
            if C<5:continue
            n=2*mu*C*H+2
            numerator=la*mu*mu*C*C-z*(n-1);denominator=la*g*g
            if numerator<=0 or numerator%denominator:continue
            delta=math.isqrt(numerator//denominator)
            if delta*delta!=numerator//denominator or delta%2!=1:continue
            j=(mu*C-g*delta)*H+1
            if not (n%4==0 and 4<=j and 2*j<n):continue
            terminal={'state':state,'H':H,'C':C,'n':n,'j':j,'delta':delta,**facts(n,j)}
            terminals.append(terminal)
    states.sort();terminals.sort(key=lambda d:d['state'])
    assert len(states)==len(set(map(tuple,states)))==271
    assert len(terminals)==1 and (terminals[0]['n'],terminals[0]['j'])==(496,210)
    assert all(t['actual_lambda']!=t['state'][0] or t['actual_mu']!=t['state'][1] for t in terminals)
    return {'format':'B699-BALANCED-v1','state_fields':['lambda','mu','branch','g','epsilon','u','z'],
            'finite_states':states,'state_count':len(states),'counts_by_pair_and_branch':dict(sorted(counts.items())),
            'restored_terminals':terminals,'survivors_after_true_smallparts':0,
            'scope':'Only the proved finite part. Three u>A diagonal tails require the paper proof.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    result=build();a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS_BUILD','states':result['state_count'],'terminals':len(result['restored_terminals']),
                      'survivors':0,'counts':result['counts_by_pair_and_branch']},ensure_ascii=False))
if __name__=='__main__':main()
