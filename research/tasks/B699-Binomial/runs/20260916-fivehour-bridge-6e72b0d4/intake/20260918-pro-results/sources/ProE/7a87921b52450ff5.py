"""Second implementation. Does not import producer or transport module."""
from __future__ import annotations
import argparse,json,copy
from pathlib import Path
from math import gcd,isqrt,comb

class Reject(Exception):pass

def req(test,msg):
    if not test:raise Reject(msg)

def is_prime(n):
    if not isinstance(n,int) or n<2:return False
    d=2
    while d*d<=n:
        if n%d==0:return False
        d+=1
    return True

def val(n,p):
    req(n>0,'valuation of nonpositive input')
    count=0;q=p
    while n%q==0:count+=1;q*=p
    return count

def factval(n,p):
    s=0
    while n:
        n//=p;s+=n
    return s

def bv(n,j,p):return factval(n,p)-factval(j,p)-factval(n-j,p)

def check_witness(w,direct=False):
    n,j,k,p=(w[x] for x in ['source_n','source_j','source_k','prime'])
    req(4<=j<=n//2 and k==n-j,'source range')
    req(is_prime(p) and p!=2,'odd prime')
    req((j-1)%p==0 and (k-1)%p==0,'middle support')
    r=w['other_coordinate'];N=w['target_n'];J=w['target_j']
    req(isinstance(r,int) and r>=4 and r*k==(j-1)*(j-2),'integer reflection')
    req(N==j+r and J==min(j,r) and 4<=J<=N//2,'target association/range')
    req(w['fixed_coordinate']==j,'fixed coordinate')
    req(w['claim_scope']=='REFLECTED_PAIR_ONLY' and w['original_NC3_status']=='NOT_ASSERTED','scope')
    a=val(n-2,p);e=val(j-1,p)
    req(w['old_source_exponent']==a and w['fixed_j_minus_one_exponent']==e,'old full valuation')
    req(val(N-1,p)==e+a==w['new_source_exponent'],'transported full valuation')
    req(w['guaranteed_common_prime_power']==p**a,'full common power')
    exp_rows=[dict(exponent=h,power=p**h,N_residue=N%p**h,fixed_j_residue=j%p**h) for h in range(e+1,e+a+1)]
    req(exp_rows==w['carry_layers_using_fixed_coordinate'],'complete carry interval')
    req(all(x['N_residue']==1<x['fixed_j_residue'] for x in exp_rows),'carry inequality')
    v3=bv(N,3,p);vJ=bv(N,J,p)
    req(v3==e+a-(p==3) and vJ>=a,'binomial valuations')
    req(v3==w['target_v_choose3'] and vJ==w['target_v_chooseJ'],'reported valuations')
    if direct:
        G=gcd(comb(N,3),comb(N,J))
        req(w['direct_target_gcd']==G and G%p**a==0,'direct target binomial gcd')

def ringmul(a,b,m=None):
    x=a[0]*b[0]+105*a[1]*b[1];y=a[0]*b[1]+a[1]*b[0]
    return (x%m,y%m) if m else (x,y)

def ringpow(a,r,m=None):
    ans=(1,0)
    for bit in bin(r)[2:]:
        ans=ringmul(ans,ans,m)
        if bit=='1':ans=ringmul(ans,a,m)
    return ans

def verify(C):
    req(C['schema']=='B699_VIETA_TRANSPORT_1','schema')
    inp=C['inputs'];Jmax=inp['j_limit']
    req(Jmax==500,'fixed complete input bound')
    ps=[p for p in range(3,Jmax+1,2) if is_prime(p)]
    keys=set();pairs=set()
    for j in range(4,Jmax+1):
        f=(j-1)*(j-2)
        for d in range(1,isqrt(f)+1):
            if f%d:continue
            for k in {d,f//d}:
                if k<j or f//k<4 or f//k>=j:continue
                pairs.add((j,k));s=gcd(j-1,k-1)
                for p in ps:
                    if p>s:break
                    if s%p==0:keys.add((j+k,j,p))
    rows=C['bounded_local_witnesses']
    got=[(w['source_n'],w['source_j'],w['prime']) for w in rows]
    req(len(set(got))==len(got) and set(got)==keys,'complete bounded coverage')
    for w in rows:check_witness(w,True)
    sharp=C['sharp_family']
    expected={(p,b) for p in [3,5,7,11,13,17,19,23,29,31,37,41] for b in range(9)}
    req({(w['parameter_p'],w['parameter_b']) for w in sharp}==expected and len(sharp)==len(expected),'sharp coverage')
    for z in sharp:
        p=z['parameter_p'];b=z['parameter_b'];h=z['parameter_h'];w=z['witness']
        req(is_prime(p) and val(h,p)==b and h%8==(2*p+5)%8,'sharp parameters')
        n=(p**3*h*h-p*(2*p+1)*h+4)//2;j=p*p*h-2*p+1
        req((n,j)==(w['source_n'],w['source_j']) and n%4==0,'sharp raw family')
        check_witness(w)
        req(w['target_n']==p*p*h+1 and w['target_j']==2*p,'sharp target')
        req(w['target_v_chooseJ']==b+1 and w['target_v_choose3']==b+2-(p==3),'sharp exact power')
    W=C['weak_g2_model'];n=W['n'];j=W['j'];k=n-j
    req(4<=j<=n//2 and n%4==0 and gcd(n,j)==2,'weak raw pair')
    la=3 if val(n-1,3)==1 else 1;mu=3 if val((n-2)//2,3)==1 else 1
    N=(n-1)//la;K=(n-2)//(2*mu);H=gcd(K,j-1);A=K//H
    req(la==W['lam']==1 and mu==W['mu']==3,'true isolated 3')
    req(N==W['N'] and K==W['K'] and H==W['H']==5 and A==W['C'],'canonical blocks')
    req(j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0,'both full windows')
    req((j//2)*(k//2)==N*A and W['u']==1 and W['t3']==A,'canonical u=1')
    req(W['g']==2 and W['alpha']==n//2,'true gcd/alpha')
    req(W['a']==gcd(N,j) and W['b']==gcd(N,j-1) and W['L']==gcd(K,j) and W['R']==gcd(K,j-2),'allocations')
    req(W['z']*N*H*H==(j-1)*(k-1),'canonical z')
    product=1
    for p,e in W['C_factorization']:
        req(is_prime(p) and e>=1,'exact C prime factorization');product*=p**e
    req(product==A and len({p for p,e in W['C_factorization']})==10,'C support is ten, not two')
    check_witness(W['witness_reflected'])
    req(is_prime(197) and W['old_common_prime']==197 and [n%197,j%197]==W['old_residues_197']==[0,82],'original common prime')
    req(W['old_common_prime_valuations']==[bv(n,3,197),bv(n,j,197)]==[1,9],'original actual valuations')
    req(W['valuation_gap']=={'v2n':val(n,2),'v2j':val(j,2)},'valuation gap')
    # Exact rational recurrence, with unreduced integer pairs normalized by gcd.
    from fractions import Fraction
    prev,cur=Fraction(k),Fraction(j)
    req(len(W['descending_chain'])==4,'four complete recurrence steps')
    for i,row in enumerate(W['descending_chain']):
        nxt=Fraction(11,2)*cur+3-prev
        req(nxt==(cur-1)*(cur-2)/prev,'reflection conic identity')
        req(row=={'step':i+1,'smaller':[cur.numerator,cur.denominator],'larger':[prev.numerator,prev.denominator],'reflection':[nxt.numerator,nxt.denominator]},'exact failing chain')
        req((nxt.denominator==1)==(i<3),'first three integer, fourth noninteger')
        prev,cur=cur,nxt
    F=C['infinite_weak_family_certificate']
    req(F['T']==[[41,420],[4,41]] and F['seed']==[656,64] and F['base_exponent']==14,'family source')
    req(F['stride']==11760 and F['modulus']==3971520,'period input')
    req(F['defining_norm_d']==105 and F['defining_norm_rhs']==256,'norm metadata')
    req(F['all_indices']=='14+11760*r, r is any integer >=0','infinite index statement')
    req(41**2-105*4**2==1 and 656**2-105*64**2==256,'norm identities')
    x,y=ringmul((656,64),ringpow((41,4),14))
    req((x,y)==(F['base_X'],F['base_Y']) and (x-12)//7==n and ((x-12)//7-y)//2==j,'exact original recovery')
    req(x*x-105*y*y==256 and (x-12)%7==0,'base norm/recovery')
    req(ringpow((41,4),11760,3971520)==(1,0),'entire period certificate')
    req(F['stride_matrix_modulus']==[[1,0],[0,1]],'matrix output')
    req(3971520%(14*32*9*5*197)==0,'quotient congruence denominators')
    req(F['base_n_mod720']==n%720 and F['base_j_mod720']==j%720 and F['base_n_mod197']==0 and F['base_j_mod197']==82,'family residue recovery')
    req(F['classification_claim'] is False,'no norm-orbit completeness claim')
    counts={'integral_reflections':len(pairs),'local_prime_witnesses':len(rows),
            'sharp_family_witnesses':len(sharp),'local_witnesses_source_n_div4':sum(w['source_n']%4==0 for w in rows)}
    req(C['counts']==counts,'counts')
    return counts

def negative_tests(cert):
    cases=[]
    def run(name,fn):
        C=copy.deepcopy(cert);fn(C)
        try:verify(C)
        except (Reject,KeyError,ValueError,TypeError,ZeroDivisionError,IndexError):cases.append({'test':name,'rejected':True});return
        raise RuntimeError('bad certificate accepted: '+name)
    run('original_and_target_swapped',lambda C:C['bounded_local_witnesses'][0].update(target_n=C['bounded_local_witnesses'][0]['source_n']))
    run('lowered_full_source_exponent',lambda C:C['bounded_local_witnesses'][0].update(old_source_exponent=0))
    run('truncated_carry_interval',lambda C:C['bounded_local_witnesses'][0]['carry_layers_using_fixed_coordinate'].pop())
    run('wrong_carry_residue',lambda C:C['bounded_local_witnesses'][0]['carry_layers_using_fixed_coordinate'][0].update(N_residue=0))
    run('wrong_common_power',lambda C:C['bounded_local_witnesses'][0].update(guaranteed_common_prime_power=1))
    run('prime_two_substitution',lambda C:C['bounded_local_witnesses'][0].update(prime=2))
    run('weak_model_promoted_to_NC',lambda C:C['weak_g2_model']['witness_reflected'].update(original_NC3_status='TRUE'))
    run('missing_bounded_row',lambda C:C['bounded_local_witnesses'].pop())
    run('duplicate_bounded_row',lambda C:C['bounded_local_witnesses'].append(copy.deepcopy(C['bounded_local_witnesses'][0])))
    run('wrong_isolated_three',lambda C:C['weak_g2_model'].update(mu=1))
    run('wrong_alpha',lambda C:C['weak_g2_model'].update(alpha=1))
    run('missing_sharp_family_case',lambda C:C['sharp_family'].pop())
    run('delete_three_denominator_correction',lambda C:C['sharp_family'][0]['witness'].update(target_v_choose3=C['sharp_family'][0]['witness']['target_v_choose3']+1))
    run('noninteger_step_called_integer',lambda C:C['weak_g2_model']['descending_chain'][3]['reflection'].__setitem__(1,1))
    run('bad_infinite_period',lambda C:C['infinite_weak_family_certificate'].update(stride=11761))
    run('orbit_completeness_fabricated',lambda C:C['infinite_weak_family_certificate'].update(classification_claim=True))
    return cases

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--certificate',type=Path,required=True);p.add_argument('--output',type=Path,required=True);p.add_argument('--negative-tests',action='store_true')
    a=p.parse_args();C=json.loads(a.certificate.read_text());counts=verify(C)
    neg=negative_tests(C) if a.negative_tests else []
    out={'status':'PASS','counts':counts,'negative_tests':neg,
         'scope':'Finite arithmetic verification; paper theorem and infinite-family proof remain author proofs, not external review or Lean.'}
    a.output.write_text(json.dumps(out,indent=2,sort_keys=True)+'\n')
    print(json.dumps({'status':'PASS','counts':counts,'negative_rejections':len(neg)},sort_keys=True))
