"""Exact finite remainder for B677 bounded displacement/length cones.
No probabilistic hash: Python dictionaries compare full integer LCM values.
All indices use the original M(n,k)=lcm(n+1,...,n+k).
"""
from math import gcd, lcm, isqrt
from collections import Counter
from pathlib import Path
from fractions import Fraction
import hashlib, json, platform, sys, time

BASE=Path(__file__).resolve().parent
LIMIT=89693
CONES=(4,8)
T0=time.monotonic()

def sieve(limit):
    isp=bytearray(b'\x01')*(limit+1)
    isp[0:2]=b'\x00\x00'
    for p in range(2,isqrt(limit)+1):
        if isp[p]:
            isp[p*p:limit+1:p]=b'\x00'*((limit-p*p)//p+1)
    return isp

class LcmQueue:
    def __init__(self): self.left=[]; self.right=[]
    def push(self,x):
        self.right.append((x,lcm(x,self.right[-1][1] if self.right else 1)))
    def pop(self):
        if not self.left:
            while self.right:
                x=self.right.pop()[0]
                self.left.append((x,lcm(x,self.left[-1][1] if self.left else 1)))
        return self.left.pop()[0]
    def value(self):
        return lcm(self.left[-1][1] if self.left else 1,self.right[-1][1] if self.right else 1)

def all_windows(k,count):
    q=LcmQueue()
    for x in range(1,k+1): q.push(x)
    vals=[q.value()]
    for n in range(1,count):
        assert q.pop()==n
        q.push(n+k)
        vals.append(q.value())
    return vals

# Small independent direct-definition check detects queue/window indexing errors.
for k in range(1,16):
    vals=all_windows(k,201)
    for n,L in enumerate(vals): assert L==lcm(*range(n+1,n+k+1))

isp=sieve(2*LIMIT+1)
next_p=[None]*LIMIT
p=None
for x in range(2*LIMIT,-1,-1):
    if x<LIMIT: next_p[x]=p
    if isp[x]: p=x
assert all(next_p[m] is not None for m in range(1,LIMIT))
max_k=max(min(m,next_p[m]-m-1) for m in range(1,LIMIT))
max_k_witnesses=[{'m':m,'next_prime':next_p[m],'prime_free_length':next_p[m]-m-1}
                 for m in range(1,LIMIT) if min(m,next_p[m]-m-1)==max_k]
results={C:{'cone':C,'full_integer_triples_checked_via_exact_lcm_lookup':0,
            'prime_free_mk_queries':0,'collisions':[]} for C in CONES}
per_k=[]
for k in range(1,max_k+1):
    vals=all_windows(k,LIMIT)
    active={C:Counter() for C in CONES}
    query_count=0
    for m in range(k,LIMIT):
        for C in CONES:
            recent=active[C]
            recent[vals[m-k]]+=1
            expired=m-C*k-1
            if expired>=0:
                old=vals[expired]
                recent[old]-=1
                if recent[old]==0: del recent[old]
        if next_p[m]<=m+k: continue
        query_count+=1
        for C in CONES:
            result=results[C]
            lo=max(0,m-C*k)
            hi=m-k
            result['full_integer_triples_checked_via_exact_lcm_lookup']+=hi-lo+1
            result['prime_free_mk_queries']+=1
            if vals[m] in active[C]:
                for n in range(lo,hi+1):
                    if vals[n]==vals[m]:
                        # Independent direct-definition confirmation of every alleged collision.
                        assert m>=n+k and m-n<=C*k and k>0
                        assert lcm(*range(n+1,n+k+1))==lcm(*range(m+1,m+k+1))
                        result['collisions'].append({'n':n,'m':m,'k':k,'lcm':str(vals[m])})
    per_k.append({'k':k,'prime_free_mk_queries':query_count})
    if k%10==0: print(json.dumps({'progress_k':k,'max_k':max_k,'elapsed':time.monotonic()-T0}),flush=True)

# Rigorous rational certificate used in the C=8 logarithm margin.
# exp(1) = sum_j 1/j!; after j=8, each successive ratio <=1/10.
partial=sum((Fraction(1,__import__('math').factorial(j)) for j in range(9)),Fraction())
e_upper=partial+Fraction(1,__import__('math').factorial(9))*Fraction(10,9)
assert e_upper<Fraction(87,32)
assert 87**57 < 89693**5 * 32**57
assert Fraction(57,5)**3>1466

out={'claim':'No original-definition LCM collision in each finite cone range below LIMIT',
     'range':{'1<=m<LIMIT':LIMIT,'k>0':True,'n>=0':True,'n+k<=m':True,'m-n<=C*k':list(CONES)},
     'prime_filter_proof':'If a prime p lies in (m,m+k], then p>m>=n+k, so p divides the later LCM and not the earlier LCM. Thus only prime-free later blocks need exact comparison.',
     'prime_sieve_max':2*LIMIT+1,'largest_necessary_k':max_k,'max_k_witnesses':max_k_witnesses,
     'indexing_crosscheck':'Every queue LCM independently compared with math.lcm(*range(n+1,n+k+1)) for 0<=n<=200,1<=k<=15',
     'results':results,'per_k':per_k,
     'rational_log_margin':{'exp_one_upper_num':e_upper.numerator,'exp_one_upper_den':e_upper.denominator,'exp_one_upper_lt':'87/32','exact_integer_inequality':'87^57 < 89693^5 * 32^57','consequence':'log(89693)>57/5; (57/5)^3=185193/125>1466'},
     'python':sys.version,'platform':platform.platform(),
     'source_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
     'elapsed_seconds':time.monotonic()-T0}
(BASE/'finite-cones-result.json').write_text(json.dumps(out,indent=2),encoding='utf8')
print(json.dumps({key:out[key] for key in ['claim','range','largest_necessary_k','max_k_witnesses','results','rational_log_margin','source_sha256','elapsed_seconds']},indent=2),flush=True)
