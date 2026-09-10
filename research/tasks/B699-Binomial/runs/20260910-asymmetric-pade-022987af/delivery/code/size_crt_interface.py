"""Exact workload sizing ONLY for the frozen seven-index CRT interface.
No pair intersection, contraction, candidate exhaustion or closure is claimed.
The normalized K interface is inherited from the supplied frozen package;
this module is not used in the seven new height proofs (which use K=1).
"""
import json,math,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def vp(n,p):
    h=0
    while n%p==0:h+=1;n//=p
    return h

def main():
    start_time=time.monotonic()
    profiles=json.loads((ROOT/'results/refined_profiles.json').read_text())['profiles']
    exported=[]
    for r in profiles:
        exported.append({'i':r['i'],'t':r['t'],'r':r['r'],'s':r['s'],'L':r['i']-r['r']-1,
          'lambda':r['lambda'],'E':r['E'],'sigma_numerator':r['S'],
          'sigma_denominator':1000,'Delta':r['Delta'],'height_power_of_two':r['height_bits'],
          'bound':f"n < 2^{r['height_bits']}",
          'certificate':'refined_certificate.json + REPORT.md; unnormalized K=1 height consumer',
          'certificate_checked':True,'previous_exponent_fails':None,
          'status':'effective height only; no CRT descent executed'})
    (ROOT/'results/height_inputs_for_frozen_crt.json').write_text(json.dumps(exported,indent=2)+'\n')
    r=next(r for r in profiles if r['i']==25)
    i=r['i'];lam=r['lambda'];L=i-r['r']-1;s=r['s'];H=1<<r['height_bits']
    delta=r['E']-lam*(i-r['t']);assert delta>=0
    K=2**(s*(s+1))*math.prod(math.factorial(h) for h in range(1,s+1))**2*math.prod(math.factorial(h) for h in range(1,L+1))
    exponent=lam*(r['t']-1);rhs=(2*math.factorial(i))**lam*H**delta
    lo=0;hi=1
    while K*hi**exponent<rhs:hi*=2
    while hi-lo>1:
        mid=(hi+lo)//2
        if K*mid**exponent>=rhs:hi=mid
        else:lo=mid
    M=hi;assert K*M**exponent>=rhs and K*(M-1)**exponent<rhs
    start=max(i*(i-1),M+1);counts={}
    for p in r['primes']:
        v=vp(i,p);cap=M//(p**v);h=v+1;Q=p**h;count=0;first=None;last=None
        while Q<H:
            amin=max(1,(start-i+1+Q-1)//Q);amax=min(cap,(H-1)//Q)
            if amin<=amax:
                count+=1
                if first is None:first=h
                last=h
            h+=1;Q*=p
        counts[p]={'families':count,'first_exponent':first,'last_exponent':last}
    total=sum(x['families'] for x in counts.values())
    pairs=(total**2-sum(x['families']**2 for x in counts.values()))//2
    out={'status':'EXACT_WORKLOAD_COUNT_ONLY','i':i,'initial_height_bits':r['height_bits'],
      'normalized_K_bits':K.bit_length(),'delta':delta,'M':str(M),'M_bits':M.bit_length(),
      'M_minimality_checked':True,'prime_families':counts,'total_families':total,
      'distinct_prime_family_pairs':pairs,'signed_differences_per_pair':2*i-1,
      'naive_pair_difference_steps':pairs*(2*i-1),'seconds':time.monotonic()-start_time,
      'not_executed':['CRT pair intersections','height descent','full candidate generation','terminal exclusion']}
    (ROOT/'results/crt_workload.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
if __name__=='__main__':main()
