#!/usr/bin/env python3
"""Exact characteristic-zero verification, Python standard library only.
No modular UNIT, numerical root finder, CAS result flag or random test is used.
Interpolation tests include all coefficients in the other variable and a proved
polynomial degree bound. Fixed Sylvester dimensions retain degree-drop cases.
"""
from __future__ import annotations
import hashlib, io, json, math, sys, time, zipfile
from fractions import Fraction
from pathlib import Path
import ipoly as p
ROOT=Path(__file__).resolve().parents[1]
CHECKS=[]
def check(name,ok,**details):
    if not ok: raise AssertionError(name)
    CHECKS.append(dict(name=name,status='PASS',**details))
def hsha(b): return hashlib.sha256(b).hexdigest()
def unpack(ts,n=3):
    out={}
    for e,c in ts:
        if len(e)!=n or any(type(x)is not int or x<0 for x in e):raise ValueError('bad exponent')
        q=Fraction(c)
        if q.denominator!=1:raise ValueError('integer coefficient required')
        e=tuple(e)
        if e in out:raise ValueError('duplicate exponent')
        if q:out[e]=q.numerator
    return out
def scalar4(ts):
    v=unpack(ts,4)
    if any(e[3] for e in v):raise ValueError('not a scalar base polynomial')
    return {e[:3]:c for e,c in v.items()}
def source():
    b=(ROOT/'inputs/R6_EVIDENCE.zip').read_bytes()
    check('R6 archive SHA',hsha(b)=='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c')
    with zipfile.ZipFile(io.BytesIO(b))as z:
        check('R6 archive CRC',z.testzip() is None)
        pref='B699-ProB-REG3-N3-MEMBERS-20261002-R6/'
        d=json.loads(z.read(pref+'inputs/generic.json'))
        out={'P5':scalar4(d['B5']),**{n:scalar4(d[n])for n in ['N','K','T']}}
        for i in [4,3,2,1,0]:out['V'+str(i)]=unpack(json.loads(z.read(pref+f'certificates/colon_{i}.json'))['V'])
        check('R14 bytes bound',hsha(z.read(pref+'inputs/R14_HANDOFF.md'))=='400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461')
        with zipfile.ZipFile(io.BytesIO(z.read(pref+'inputs/PREVIOUS_EVIDENCE.zip')))as z5:
            pre5='B699-ProB-REG3-ISOLATED-G0-20261002-R5/'
            for short,member in [('R5_param_J.json','certificates/param_J.json'),('R5_terminal_J.json','certificates/terminal_J.json')]:
                check('R5 binding '+short,(ROOT/'inputs'/short).read_bytes()==z5.read(pre5+member))
    return out

def arrmul(a,b):
    if not a or not b:return []
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return trim(c)
def arrpow(a,n):
    b=[1]
    while n:
        if n&1:b=arrmul(b,a)
        n//=2
        if n:a=arrmul(a,a)
    return b
def trim(a):
    a=list(a)
    while a and a[-1]==0:a.pop()
    return a
def horner(a,t):
    v=0
    for c in reversed(a):v=v*t+c
    return v
def modrem(a,b,pr):
    a=trim([c%pr for c in a]);b=trim([c%pr for c in b])
    if not b:raise ZeroDivisionError
    ib=pow(b[-1],-1,pr)
    while len(a)>=len(b):
        k=len(a)-len(b);c=a[-1]*ib%pr
        for j,v in enumerate(b):a[k+j]=(a[k+j]-c*v)%pr
        a=trim(a)
    return a
def modgcd(a,b,pr):
    a=trim([c%pr for c in a]);b=trim([c%pr for c in b])
    while b:a,b=b,modrem(a,b,pr)
    return [c*pow(a[-1],-1,pr)%pr for c in a]if a else []
def prime(pr):return pr>=2 and all(pr%d for d in range(2,math.isqrt(pr)+1))
def fixed_coeffs(f,t,rd):
    out=[0]*(rd+1)
    for (a,b),c in f.items():
        if b>rd:raise AssertionError('wrong fixed r degree')
        out[b]+=c*t**a
    return out

def coverage_and_gates(S):
    u,y,r=[p.var(3,i)for i in range(3)];one=p.const(3,1)
    add,sub,mul=p.add,p.sub,p.mul
    pw=lambda f,k:p.power(f,k,3)
    H=add(sub(add(pw(u,2),p.scale(mul(u,y),3)),add(mul(u,pw(y,2)),p.scale(u,2))),pw(sub(y,one),2))
    J=add(sub(add(pw(u,2),mul(u,pw(y,2))),p.scale(mul(u,y),3)),y)
    aa=sub(add(u,y),one);nn=add(sub(u,y),one)
    bb=sub(add(u,p.scale(y,2)),add(pw(y,2),one))
    check('H=AB+y(y-1)^2',H==add(mul(aa,bb),mul(y,pw(sub(y,one),2))))
    check('inverse n-a',sub(nn,aa)==p.scale(sub(y,one),-2))
    check('inverse n+a',add(nn,aa)==p.scale(u,2))
    check('inverse u identity',sub(add(pw(nn,2),p.scale(pw(aa,2),3)),mul(u,pw(sub(nn,aa),2)))==p.scale(H,4))
    check('inverse y identity',sub(mul(y,sub(pw(aa,2),pw(nn,2))),p.scale(pw(aa,2),4))==p.scale(H,-4))
    RN=p.scale(p.product(sub(u,one),pw(sub(y,one),2),J),3)
    RD=p.scale(p.product(u,pw(y,2),H),4)
    T=sub(mul(RD,r),RN)
    check('original T',S['T']==T)
    check('original N',S['N']==mul(sub(u,one),T))
    # Homogeneous substitution into the r-linear polynomials, not division at a point.
    # RD*N(r=RN*rho/RD)=(u-1)*RD*RN*(rho-1)
    N0=p.scale(p.product(pw(sub(u,one),2),pw(sub(y,one),2),J),3)
    # coefficients in r, evaluate after clearing one power of RD
    def linear_sub(f):
        ans={}
        for e,c in f.items():
            if e[2]>1:raise AssertionError('expected r-linear')
            base={(e[0],e[1],e[2]):c}
            ans=add(ans,mul(base,RN if e[2] else RD))
        return ans
    check('new N coordinate exact cleared identity',linear_sub(S['N'])==p.product(RD,N0,sub(r,one)))
    D=sub(p.scale(p.product(r,pw(u,2),pw(y,2)),8),p.scale(p.product(pw(sub(u,one),2),pw(sub(y,one),2)),6))
    L=sub(p.product(u,J,r),mul(sub(u,one),H))
    check('new D coordinate exact cleared identity',mul(H,linear_sub(D))==p.scale(p.product(RD,sub(u,one),pw(sub(y,one),2),L),6))
    return H,J,RN,RD

def transport(S,D):
    nodes=0
    for name in ['P5','V4','V3','V2','V1','V0','N','K']:
        rec=D[name];f=S[name];g=unpack(rec['poly'],2);du,dy=rec['bounds'];em,ep,eq=rec['units'];ct=int(rec['content'])
        check(name+' transport bounds',du==max(e[0]for e in f)and dy==max(e[1]for e in f)and ct!=0 and min(em,ep,eq)>=0)
        rd=max(e[2]for e in f);bound=max(2*du+2*dy,max(e[0]for e in g)+em+ep+2*eq)
        digest=hashlib.sha256()
        for t in range(bound+1):
            aq=[(t*t+3)**i for i in range(du+1)]
            bm=[(t-1)**i for i in range(2*du+dy+1)]
            bp=[(t+1)**i for i in range(dy+1)]
            cm=[(-4)**j for j in range(dy+1)]
            left=[0]*(rd+1)
            for (i,j,k),c in f.items():left[k]+=c*cm[j]*aq[i]*bm[2*(du-i)+dy-j]*bp[dy-j]
            factor=ct*(t-1)**em*(t+1)**ep*(t*t+3)**eq
            right=[factor*c for c in fixed_coeffs(g,t,rd)]
            if left!=right:raise AssertionError('transport '+name+' node '+str(t))
            digest.update((str(left)+'\n').encode());nodes+=1
        check(name+' full transportation identity',True,degree_bound=bound,integer_nodes=bound+1,all_r_coefficients=rd+1,values_sha256=digest.hexdigest())
    return nodes

def projections(D):
    fs={n:unpack(D[n]['poly'],2)for n in ['P5','V4','V0']}
    G=[int(c)for c in D['G']['poly']];factor_product=[1]
    expected=[([-1,1],15),([1,1],2),([3,0,1],40),([5,2,1],6),([5,0,10,0,1],4),([1,0,1],2),([13,-8,10,0,1],2)]
    for a,e in expected:factor_product=arrmul(factor_product,arrpow(a,e))
    check('explicit common core factorization',G==factor_product)
    detcount=0
    for i in [4,0]:
        rec=D['E'+str(i)];E=[int(c)for c in rec['poly']];Q=[int(c)for c in rec['quotient']]
        check('E'+str(i)+' complete core identity',arrmul(G,Q)==E)
        f,g=fs['P5'],fs['V'+str(i)];m=max(e[1]for e in f);n=max(e[1]for e in g)
        check('E'+str(i)+' fixed Sylvester dimensions',m==5 and n==9)
        bound=n*max(e[0]for e in f)+m*max(e[0]for e in g)
        check('E'+str(i)+' degree bound',bound==rec['degree_bound']and len(E)-1<=bound)
        dig=hashlib.sha256();st=time.monotonic()
        for t in range(bound+1):
            a=fixed_coeffs(f,t,m);b=fixed_coeffs(g,t,n)
            v=p.det_int(p.sylvester(a,b))
            if v!=horner(E,t):raise AssertionError('resultant E'+str(i)+' at '+str(t))
            dig.update((str(v)+'\n').encode());detcount+=1
        check('E'+str(i)+' complete determinant identity',True,dimension=14,degree_bound=bound,integer_nodes=bound+1,values_sha256=dig.hexdigest(),seconds=round(time.monotonic()-st,4))
    pr=D['cofactor_coprime_prime'];a=[int(c)for c in D['E4']['quotient']];b=[int(c)for c in D['E0']['quotient']]
    check('cofactor finite-field prime',prime(pr),prime=pr)
    check('cofactor leading degrees retained',a[-1]%pr!=0 and b[-1]%pr!=0,degrees=[len(a)-1,len(b)-1])
    check('cofactor gcd excludes every QQ common factor',modgcd(a,b,pr)==[1])
    N=unpack(D['N']['poly'],2);expectedN=arrmul([5,2,1],[5,0,10,0,1])
    check('N_H=C2*C4',N=={(i,0):c for i,c in enumerate(expectedN)if c})
    return detcount

def lifted_terminals(D):
    for d,F0 in [(2,[1,0,1]),(4,[13,-8,10,0,1])]:
        rec=json.loads((ROOT/f'certificates/H_lifted_{d}.json').read_text())
        check('terminal F'+str(d)+' exact factor',[Fraction(c)for c in rec['F']]==F0)
        check('terminal F'+str(d)+' target',rec['target']=='r^m'and rec['gate_power']==1)
        names=rec['names'];check('terminal F'+str(d)+' source order',names==['P5','V4','V3','V2','V1','V0'])
        allts=rec['multipliers']+[rec['F_multiplier']]
        den=math.lcm(*(Fraction(c).denominator for ts in allts for e,c in ts))
        def scaled(ts):
            out={}
            for e,c in ts:
                q=Fraction(c)*den
                if len(e)!=2 or any(type(x)is not int or x<0 for x in e)or q.denominator!=1:raise ValueError('bad rational multiplier')
                if tuple(e)in out:raise ValueError('duplicate multiplier term')
                if q:out[tuple(e)]=q.numerator
            return out
        rhs={}
        for name,ts in zip(names,rec['multipliers']):rhs=p.add(rhs,p.mul(scaled(ts),unpack(D[name]['poly'],2)))
        fp={(i,0):c for i,c in enumerate(F0)if c}
        rhs=p.add(rhs,p.mul(fp,scaled(rec['F_multiplier'])))
        check('terminal F'+str(d)+' full QQ Bezout identity',rhs=={(0,1):den},common_denominator=str(den),multiplier_terms=[len(ts)for ts in allts])

def J_upgrade(S):
    # Exact polynomial substitution, no approximation to any complex root.
    v=p.var(2,0);r=p.var(2,1);one=p.const(2,1);pw=lambda f,k:p.power(f,k,2)
    mul,add,sub=p.mul,p.add,p.sub
    um=sub(one,pw(v,2));ym=pw(add(v,one),2);yd=p.scale(sub(v,one),2)
    f=S['N'];du=max(e[0]for e in f);dy=max(e[1]for e in f);raw={}
    for (i,j,k),c in f.items():
        term=p.product(pw(um,i),p.const(2,4**(du-i)),pw(ym,j),pw(yd,dy-j),pw(r,k))
        raw=add(raw,p.scale(term,c))
    F=add(add(sub(pw(v,4),p.scale(pw(v,3),2)),p.scale(pw(v,2),4)),add(p.scale(v,2),p.const(2,11)))
    Z=p.product(pw(add(v,one),5),add(pw(v,2),one),add(pw(v,2),p.const(2,3)),F)
    lhs=p.scale(p.product(pw(sub(v,one),3),raw),128)
    rhs=p.product(p.const(2,4**du),pw(yd,dy),r,Z)
    check('J branch full N identity',lhs==rhs)
    # The old rational inverse is algebraically valid over C, without choosing square roots.
    u3,y3,r3=[p.var(3,i)for i in range(3)];o3=p.const(3,1);pw3=lambda f,k:p.power(f,k,3)
    jc=p.add(p.sub(p.add(pw3(u3,2),p.mul(u3,pw3(y3,2))),p.scale(p.mul(u3,y3),3)),y3)
    dm=p.sub(u3,o3);nm=p.add(p.sub(p.scale(p.mul(u3,y3),2),p.scale(u3,3)),o3)
    check('J inverse complex coverage identity 1',p.sub(pw3(nm,2),p.mul(p.sub(o3,p.scale(u3,4)),pw3(dm,2)))==p.scale(p.mul(u3,jc),4))
    check('J inverse complex coverage identity 2',p.sub(p.scale(p.product(p.sub(nm,dm),dm,y3),2),pw3(p.add(nm,dm),2))==p.scale(jc,-4))
    old=json.loads((ROOT/'inputs/R5_terminal_J.json').read_text());core1=unpack(old['core'],1);core={(e[0],0):c for e,c in core1.items()}
    expected=p.product(pw(add(v,one),56),pw(add(pw(v,2),one),19),pw(add(pw(v,2),p.const(2,3)),19),pw(F,16))
    check('R5 common core exact formula',core==expected)
    check('J common core divides N numerator power',pw(Z,19)==p.product(core,pw(add(v,one),39),pw(F,3)))

def main():
    start=time.monotonic();S=source();D=json.loads((ROOT/'certificates/H_data.json').read_text())
    coverage_and_gates(S);nodes=transport(S,D);nd=projections(D);lifted_terminals(D);J_upgrade(S)
    out={'status':'PASS','check_count':len(CHECKS),'checks':CHECKS,'integer_determinants':nd,'complete_transport_nodes':nodes,'seconds':round(time.monotonic()-start,4),'claim':'H=0 complex branch empty; Jcal=0 upgraded to complex via N. No global saturated UNIT or complete RUR.'}
    print(json.dumps(out,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
