"""Complete candidate consumer: exact large-prime part; all-j lemma, not sampling j."""
from pathlib import Path
from math import comb,factorial,prod,isqrt
import json,time,hashlib
R=Path(__file__).resolve().parents[1];PS=(2,3,5,7,11,13)
K=2**90*prod(factorial(h)**3 for h in range(1,10))
def prime_trial(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def main():
    begin=time.monotonic();total=passed=0;exceptions=[];digest=hashlib.sha256()
    for line in (R/'evidence/candidates.tsv').read_text().splitlines():
        lo,hi=map(int,line.split())
        for n in range(lo,hi+1):
            total+=1;V=comb(n,14)
            for p in PS:
                while V%p==0:V//=p
            if K*V**14>n**135:
                passed+=1;digest.update(f'{n}:{V}\n'.encode())
            else:
                p=next((p for p in range(n,n-14,-1) if prime_trial(p)),None)
                exceptions.append({'n':n,'V':str(V),'top_prime':p})
    result={'status':'GENERATED_ALL_J_CONSUMER_DEFAULT_AND_EXCEPTIONS','total_candidates':total,'scalar_rejected':passed,'exceptions':exceptions,'exception_count':len(exceptions),'max_exception_n':max((e['n'] for e in exceptions),default=0),'without_top_prime':sum(e['top_prime'] is None for e in exceptions),'default_witness_sha256':digest.hexdigest(),'seconds':round(time.monotonic()-begin,3)}
    (R/'evidence/terminal_certificate.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='exceptions'}),flush=True)
    print('EXCEPTIONS_WITHOUT_TOP_PRIME', [e['n'] for e in exceptions if e['top_prime'] is None],flush=True)
if __name__=='__main__':main()
