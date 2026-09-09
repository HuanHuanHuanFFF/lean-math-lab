"""Exact height certificates from the three disjoint BFT pairs. No search over n,j."""
import math,json,time
from fractions import Fraction
from pathlib import Path
I=[17,23,26,27,30,32,33]
PR=[2,3,5,7,11,13,17,19,23,29,31]
def B(s):return math.prod(math.factorial(k) for k in range(1,s+1))
def param(i,sigma=751):
    t=sum(p<i for p in PR)
    r=i//3;s=(2*i+1)//3
    L=i-r-1;lam=2*s-r;E=s*(s+1)+L*(L+1)//2
    K=(1<<(s*(s+1)))*B(s)**2*B(L)
    Delta=1000*(lam*(i-t)-E)+sigma*lam
    assert Delta>0
    # Exact values: the published rational exponents are not binary floats.
    A=pow(math.factorial(i),1000*lam)<<( (1000+sigma)*lam )
    KK=pow(K,1000)
    h=max(22, (A.bit_length()-KK.bit_length())//Delta)
    while (KK<<(h*Delta))<A:h+=1
    assert (KK<<(h*Delta))>=A
    lower_fails=h==22 or (KK<<((h-1)*Delta))<A
    assert lower_fails
    return {'i':i,'t':t,'r':r,'s':s,'L':L,'lambda':lam,'E':E,'sigma_numerator':sigma,'sigma_denominator':1000,
        'Delta':Delta,'height_power_of_two':h,'bound':'n < 2^'+str(h),'certificate':'K^1000 * 2^(h*Delta) >= (i!)^(1000*lambda) * 2^((1000+sigma)*lambda)',
        'certificate_checked':True,'previous_exponent_fails':lower_fails,
        'left_bits':(KK<<(h*Delta)).bit_length(),'right_bits':A.bit_length()}
if __name__=='__main__':
    data=[]
    for i in I:
        tt=time.time();r=param(i);data.append(r);print(i,r['Delta'],r['height_power_of_two'],time.time()-tt,flush=True)
    (Path(__file__).resolve().parents[1]/'outputs/height_certificates_751.json').write_text(json.dumps(data,indent=2)+'\n')
