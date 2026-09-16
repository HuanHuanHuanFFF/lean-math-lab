"""Exact acceptance: Taylor coefficients, positive expansions, complete domains and Lucas certificates.
The finite-domain code is independent of the discovery enumerator. It uses the opposite CRT orientation.
"""
import json,math,time,hashlib,argparse
from pathlib import Path
from common import *

def check_polynomial(c):
    m=c['missing'];assert m in (0,1)
    assert c['weights']=={'1':29,'3':20,'4':12}
    F=polynomial(c['poly']);G=polynomial(c['residual'])
    assert max(a+b for a,b in F)==60==c['degree']
    assert min(a+b for a,b in F)==c['origin_order']==(2 if m==0 else 5)
    sh=shift(G,6,6);assert len(sh)==1378 and min(sh.values())>0 and sh.get((0,0),0)>0
    positive_count=len(sh);prod=G
    for f in c['factors']:
        P=polynomial(f['poly']);S=shift(P,6,6)
        assert S and all(v>0 for v in S.values()) and S.get((0,0),0)>0
        positive_count+=len(S)
        for _ in range(f['exponent']):prod=multiply(prod,P)
    assert prod==F
    zeros=0
    for r,w in ((1,29),(3,20),(4,12)):
        for b in range(r+1):
            if (r,b)==(3,m):continue
            for u in range(w):
                for v in range(w-u):
                    assert taylor(F,b,r-b,u,v)==0,(m,r,b,u,v)
                    zeros+=1
    assert value(F,m,3-m)!=0 # Explicitly reject an erroneous four-slot interpolation claim.
    norm=sum(abs(v)for v in F.values());assert norm==c['norm']
    for i in (5,6):
        C=2**24*3**20*(5**29 if i==5 else 1)
        assert C==c[f'cost{i}'];assert c[f'E{i}']==61+(C*norm).bit_length()
        assert 2**61*C*norm<2**c[f'E{i}']
    return {'missing':m,'terms':len(F),'Taylor_zeros':zeros,'positive_coefficients':positive_count,'origin_order':c['origin_order'],'height_i5':c['E5'],'height_i6':c['E6'],'coefficient_l1_bits':norm.bit_length()}

def power_list(p,N,a0):
    ans=[];v=p**a0
    while v<N:ans.append(v);v*=p
    return list(reversed(ans))

def recompute_domain(i,E):
    N=1<<E;cut=8192 if i==5 else 256
    assert 3*30**6<8192*2**19
    assert 3*120**4<256*2**17*27
    low=[];high=set();templates=0;pair_count=0
    def gap(n):return qig(n,i)or(i==6 and sixg(n,i))
    for n in range(cut-1,2*(i+1)-1,-1):
        if scope(n,i) and not gap(n):low.append(n)
    pairs=[(2,3,[(0,2),(2,0)])]
    if i==6:pairs +=[(2,5,[(0,2),(0,5),(2,0),(2,5)]),(3,5,[(0,2),(0,5),(2,0),(2,5)])]
    for p,q,pos in pairs:
        for Q in power_list(q,N,{3:2,5:1}[q]):
            for P in power_list(p,N,{2:3,3:2}[p]):
                pair_count+=1
                if P*Q<=cut:continue
                inv=pow(Q,-1,P)
                for r,s in reversed(pos):
                    templates+=1
                    n=(s+Q*((r-s)*inv%P))%(P*Q)
                    if n<cut or n>=N or not scope(n,i):continue
                    if full_power(n-r,p)!=P or full_power(n-s,q)!=Q:continue
                    if i==6 and (P!=max(full_power(n-a,p)for a in range(6)) or Q!=max(full_power(n-a,q)for a in range(6))):continue
                    if not gap(n):high.add(n)
    return {'rows':sorted(set(low)|high),'low':sorted(low),'high':sorted(high),'power_pairs':pair_count,'templates':templates}

def verify_prime_nodes(nodes):
    done=set();active=set()
    def prove(p):
        if p in done:return
        assert p not in active and str(p) in nodes;active.add(p)
        c=nodes[str(p)];assert c['p']==p
        if p==2:assert c=={'p':2}
        else:
            assert p>2 and p%2==1
            ff=c['factors'];assert ff and len({q for q,e in ff})==len(ff)
            assert all(isinstance(q,int) and isinstance(e,int) and 2<=q<p and e>0 for q,e in ff)
            assert math.prod(q**e for q,e in ff)==p-1
            for q,e in ff:prove(q)
            a=c['a'];assert 1<a<p and pow(a,p-1,p)==1
            for q,e in ff:assert math.gcd(pow(a,(p-1)//q,p)-1,p)==1
        active.remove(p);done.add(p)
    for s in nodes:prove(int(s))
    return len(done)

def source_groups(row,i):
    n=row['n'];ff=row['factor_rows'];assert len(ff)==i
    out=[];bases=set()
    for r,fs in enumerate(ff):
        assert len({p for p,e in fs})==len(fs)
        assert math.prod(p**e for p,e in fs)==(n-r)//small_part(n-r,i)
        for p,e in fs:
            assert p>=i and e>=1 and p not in bases
            if p==i:assert e>=2
            bases.add(p);out.append((p,e,r))
    return out

def check_row(row,i):
    n=row['n'];hi=n//2;lo=i+1;mod=1;res={0};ops=0
    # Row order, rather than the generator's descending modulus order.
    for p,e,r in sorted(source_groups(row,i),key=lambda x:(x[2],x[0])):
        Q=p**e
        if mod>hi:
            res={a for a in res if lo<=a<=hi and a%Q<=r};ops+=len(res)
        else:
            inv=pow(Q,-1,mod) if mod>1 else 0
            new=set()
            for a in res:
                for b in range(r+1):
                    z=(b+Q*((a-b)*inv%mod))%(Q*mod) if mod>1 else b
                    ops+=1
                    if z<=hi:new.add(z)
            mod*=Q;res=new
        if not res:break
    vals=sorted({x for a in res for x in range(a,hi+1,mod) if x>=lo})
    assert vals==row['survivors']==[]
    assert row.get('witnesses',[])==[]
    return ops

def main(out):
    start=time.monotonic();certs=json.loads((ROOT/'evidence/polynomials.json').read_text())
    assert len(certs)==2
    details=[check_polynomial(c)for c in certs]
    costs={}
    for i in (5,6):
        nums=[a+1800 for a in range(1800) if a%72 in (18,56) and(i==5 or a%5 in(0,2))]
        assert len(nums)==(50 if i==5 else 20)
        vv=[small_part(n-1,i)**29*small_part(n-3,i)**20*small_part(n-4,i)**12 for n in nums]
        assert max(vv)<=certs[0][f'cost{i}'];costs[str(i)]={'complete_classes':len(nums),'max_cost':max(vv)}
    domains={}
    for i in (5,6):
        E=max(c[f'E{i}']for c in certs);ans=recompute_domain(i,E)
        d=json.loads((ROOT/f'evidence/domain{i}.json').read_text())
        assert d['stats']['E']==E
        for key in ('rows','low','high'):assert ans[key]==d[key]
        assert ans['power_pairs']==d['stats']['power_pairs'] and ans['templates']==d['stats']['templates']
        domains[str(i)]={'height_exponent':E,'power_pairs':ans['power_pairs'],'templates':ans['templates'],'terminal_rows':len(ans['rows']),'largest_terminal':max(ans['rows'],default=0)}
    tt=json.loads((ROOT/'evidence/terminal5.json').read_text());assert tt['i']==5
    assert [r['n']for r in tt['rows']]==json.loads((ROOT/'evidence/domain5.json').read_text())['rows']
    npc=verify_prime_nodes(tt['prime_nodes']);ops=0;source_primes=set()
    for row in tt['rows']:
        for p,e,r in source_groups(row,5):assert str(p) in tt['prime_nodes'];source_primes.add(p)
        ops+=check_row(row,5)
    assert not json.loads((ROOT/'evidence/domain6.json').read_text())['rows']
    result={'status':'PASS_ROW3_FOUR_SLOT_CLOSURE','polynomials':details,'costs':costs,'domains':domains,'Lucas_prime_nodes':npc,'distinct_source_primes':len(source_primes),'largest_source_prime':max(source_primes),'independent_CRT_operations':ops,'seconds':time.monotonic()-start}
    Path(out).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps(result,ensure_ascii=False))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',default=str(ROOT/'evidence/verification.json'));a=ap.parse_args();main(a.output)
