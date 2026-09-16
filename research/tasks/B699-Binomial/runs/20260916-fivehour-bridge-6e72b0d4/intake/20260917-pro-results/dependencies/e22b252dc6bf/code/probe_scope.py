"""Optional, bounded scope diagnostic. NOT a completeness proof and NOT in acceptance replay."""
import argparse,json,math
from pathlib import Path

def prime(n):return n>=2 and all(n%d for d in range(2,math.isqrt(n)+1))

def run(path):
    count=0;hits=[]
    for p in range(5,600):
        if not prime(p):continue
        for f in (1,2,3):
            T=p**f
            for e in range(2,25):
                X=p**e
                for v in range(X.bit_length(),min(250,2*X.bit_length())):
                    A,B=divmod(1<<v,X)
                    if B==0 or A<T:continue
                    count+=1
                    if X*X>=2*A*B**3 and T*X>=4*A*A*B and (1<<v)>3*T**3:
                        hits.append([p,f,e,v,A,B,T*(1<<v)])
    ans={'scope':{'prime_range':[5,599],'f':[1,2,3],'e':[2,24],
           'v_range':'range(bit_length(p^e), min(250,2*bit_length(p^e)))','A_constraint':'A>=p^f',
           'n_form':'n=p^f 2^v'},'tested':count,'hits':hits,
         'meaning':'No extrapolation. This finite diagnostic did NOT find a strict ROW-3-surviving example; it neither proves global overlap nor closes any original region.'}
    path.write_text(json.dumps(ans,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--output',type=Path,required=True);run(p.parse_args().output)
