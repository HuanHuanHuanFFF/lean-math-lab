"""Diagnostic only: compare exact prime-power support and full higher carries."""
import json,math,time
from pathlib import Path
from sympy import factorint

def factors(n):return {int(p):int(e) for p,e in factorint(n).items()}
def levels(n):
    ret=[]
    for r in range(3):
        for p,e in factors(n-r).items():
            if p==2 or (p==3 and e==1):continue
            ret.append((p**e,r,p,e))
    return sorted(ret,reverse=True)
def support(n):
    mods=levels(n);states=[0];M=1;cap=n//2
    for Q,r,p,e in mods:
        inv=pow(M,-1,Q);out=[]
        for z in states:
            for s in range(r+1):
                a=z+M*((s-z)*inv%Q)
                if a<=cap:out.append(a)
        states=out;M*=Q
        if not states:break
    js=[]
    for a in states:
        lo=max(0,(4-a+M-1)//M)
        for v in range(a+M*lo,cap+1,M):js.append(v)
    return sorted(js),mods

def bad(n,j,mods):
    for Q,r,p,e in mods:
        pp=p
        while pp<=n:
            if j%pp>n%pp:return [p,pp,n%pp,j%pp]
            pp*=p
    return None

def main():
    t=time.monotonic();out=[]
    # fixed sparse test: exact 2-adic valuations, no repeat of the historical box.
    rows=[(a,u) for a in range(4,41) for u in (1,3,5,7,9,11,15,21,31)]
    for a,u in rows:
        n=(1<<a)*u
        js,mods=support(n)
        if js:out.append({'a':a,'u':u,'n':n,'support_candidates':[{'j':j,'higher_carry':bad(n,j,mods)} for j in js]})
    result={'status':'finite_diagnostic_not_global_proof','row_count':len(rows),'nonempty_rows':out,'elapsed':time.monotonic()-t}
    p=Path(__file__).resolve().parents[1]/'outputs/probe_low_carries.json';p.write_text(json.dumps(result,indent=2))
    print('rows',len(rows),'nonempty',len(out),'candidates',sum(len(x['support_candidates']) for x in out),'secs',result['elapsed'])
    print(json.dumps(out[:5],indent=2))
if __name__=='__main__':main()
