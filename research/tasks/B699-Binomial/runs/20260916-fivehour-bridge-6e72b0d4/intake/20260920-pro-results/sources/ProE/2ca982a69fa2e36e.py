"""Classify the proved all-j rows. Primality is checked exactly by trial division.
For very large prime bases a separate primality certificate is preferable;
this CLI deliberately does not substitute a probable-prime test.
"""
import argparse,json,math

def is_prime(p):
    if p<2: return False
    if p%2==0: return p==2
    q=3
    while q*q<=p:
        if p%q==0: return False
        q+=2
    return True

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--m',type=int,default=1)
    ap.add_argument('--p',type=int,required=True)
    ap.add_argument('--h',type=int,default=1)
    args=ap.parse_args(); m,p,h=args.m,args.p,args.h
    if m<1 or h<1 or p<3 or p%2==0: ap.error('m,h positive; p odd prime')
    if p>10**10: ap.error('CLI trial-division guard: use a separately certified prime <=10^10')
    if h>10000: ap.error('CLI exponent/output guard; theorem has no such bound')
    if not is_prime(p): ap.error('p is not prime')
    if math.gcd(m,p)!=1: ap.error('p must not divide m: P is the complete source power')
    P=p**h; n=2*(m*P+1)**2
    theorem='PLUS1_COMPLETE' if m==1 else ('PLUS_DOMINANT' if P>=72*m**3 else None)
    # Do not write enormous decimal integers merely to classify a theorem.
    out={'result':'COMMON3_FOR_EVERY_LEGAL_J' if theorem else 'NO_COVERAGE_FROM_THIS_PACKAGE',
         'theorem':theorem,'m':m,'p':p,'h':h,'P_bits':P.bit_length(),'n_bits':n.bit_length(),
         'i':3,'range':'4 <= j <= floor(n/2)','two_base_assumption':False}
    if n.bit_length()<1000: out.update(P=P,n=n)
    print(json.dumps(out,ensure_ascii=False,indent=2))
if __name__=='__main__': main()
