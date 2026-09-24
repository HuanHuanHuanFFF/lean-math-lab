#!/usr/bin/env python3
"""Independent small dense systems, symbolic S5 order checks, and negative controls."""
from pathlib import Path
from math import comb
import math,json,random,subprocess
from checks import dump,gates,trace
def rank(A,p):
    A=[[x%p for x in row]for row in A]
    if not A:return 0
    row=0
    for c in range(len(A[0])):
        found=next((i for i in range(row,len(A))if A[i][c]),None)
        if found is None:continue
        A[row],A[found]=A[found],A[row];iv=pow(A[row][c],-1,p);A[row]=[x*iv%p for x in A[row]]
        for i in range(row+1,len(A)):
            z=A[i][c]
            if z:A[i]=[(x-z*y)%p for x,y in zip(A[i],A[row])]
        row+=1
        if row==len(A):break
    return row

def dense(h,pts,p):
    mons=[(a,b)for b in range(h+1)for a in range(2*h-2*b+1)];A=[]
    for r,s,M in pts:
        diagonal=2*s==r;v=s*(r-s)
        for j in range(M):
            for i in range(M-(2 if diagonal else 1)*j):
                line=[]
                for a,b in mons:
                    ans=0
                    if j<=b:
                        for z in range(min(b-j,i) +1 if diagonal else 1):
                            if 0<=i-z<=a:
                                ans+=math.comb(b,j)*math.comb(b-j,z)*v**(b-j-z)*(s if diagonal else 0)**z*math.comb(a,i-z)*r**(a-i+z)
                    line.append(ans%p)
                A.append(line)
    return len(mons)-rank(A,p),len(A),len(mons)


def pmul(a,b):
    out={}
    for (i,j),v in a.items():
        for (k,l),w in b.items():out[i+k,j+l]=out.get((i+k,j+l),0)+v*w
    return {k:v for k,v in out.items()if v}

def specialize(a,r):
    out={}
    for(i,j),v in a.items():out[j]=out.get(j,0)+v*r**i
    return {k:v for k,v in out.items()if v}

def jet(a,r,v,sh,i,j):
    ans=0
    for(A,B),c in a.items():
        if j>B:continue
        for z in range(min(B-j,i)+1):
            if i-z<=A:ans+=c*comb(B,j)*comb(B-j,z)*v**(B-j-z)*sh**z*comb(A,i-z)*r**(A-i+z)
    return ans

def s5_symbolic():
    p={(0,0):1};w={(0,0):1}
    for t in range(4):p=pmul(p,{(0,1):1,(1,0):-t,(0,0):t*t})
    for r in range(3,9):w=pmul(w,{(1,0):1,(0,0):-r})
    b=pmul(pmul(w,{(1,0):1,(0,0):-3}),{(1,0):1,(0,0):-4})
    off=[[2,2],[1,2],[1,1,1],[1,1,1],[1,1,1,1],[1,1,1,1]];weighted=[0,2,0,1,0,0]
    records=[]
    for r in range(3,9):
        assert not specialize(b,r)
        for s in range(r//2+1):
            v=s*(r-s);diag=2*s==r
            if(r,s)==(5,2)or(r,s)==(6,3):
                sh=s if diag else 0
                assert jet(p,r,v,sh,1,0)==0 and jet(b,r,v,sh,1,0)!=0
                records.append({'r':r,'s':s,'bound':1,'certificate':'coefficient u = nonzero integer times lambda','coefficient':jet(b,r,v,sh,1,0)})
            else:
                multiplicity=next(j for j in range(5)if jet(p,r,v,0,0,j))
                expected=weighted[r-3]//2 if diag else off[r-3][s]
                assert multiplicity==expected
                records.append({'r':r,'s':s,'specialization_root_multiplicity':multiplicity,'weighted_upper':2*multiplicity if diag else None,'certificate':'fixed nonzero coefficient t^m'})
    return {'status':'PASS_ALL_PARAMETER_S5_UPPER_ORDERS','lambda_condition':'lambda != 0','source_records':records,'off_upper':off,'weighted_upper':weighted}

def exercise(out):
    out=Path(out);work=out/'control_work';work.mkdir(exist_ok=True)
    # Keep failed external-test runs from writing core dumps on Unix.
    try:
        import resource
        resource.setrlimit(resource.RLIMIT_CORE,(0,0))
    except(ImportError,ValueError):pass
    rng=random.Random(699113);points=[(r,s)for r in range(3,9)for s in range(r//2+1)];results=[]
    for i in range(20):
        h=1+i%6;pts=[(r,s,rng.randrange(4)if(i%3==0 or k<i%8)else 0)for k,(r,s)in enumerate(points)]
        f=work/f'small{i}.txt';f.write_text(str(h)+'\n'+''.join(f'{r} {s} {m}\n'for r,s,m in pts))
        for p in(257,263):
            nu,J,K=dense(h,pts,p)
            for reverse in(0,1):
                target=work/f'small{i}_{p}_{reverse}.trace'
                run=subprocess.run([str(out/f'bin/module{p}'),str(f),str(target),str(reverse)],text=True,capture_output=True)
                assert run.returncode==0
                ww=list(map(int,target.read_text().splitlines()[-1].split()[1:]));actual=sum(max(0,2*h-x+1)for x in ww);assert actual==nu
                results.append({'test':i,'h':h,'prime':p,'reverse':reverse,'rows':J,'columns':K,'nullity':nu})
    assert any(x['nullity']==0 for x in results)and any(x['nullity']>0 for x in results)
    negative=[]
    def rejects(name,fn):
        try:fn()
        except(AssertionError,ValueError,IndexError,RuntimeError):negative.append({'name':name,'rejected':True})
        else:raise AssertionError(('accepted damaged certificate',name))
    gl=(out/'certificates/geometry/gates.txt').read_text().splitlines()
    variants={'omitted_root_gate':gl[:-1],'duplicate_root_gate':gl[:-1]+[gl[0]]}
    for name,pos in [('changed_root_multiplicity',4),('changed_extra_root',2),('changed_genus',3)]:
        v=gl[:];z=list(map(int,v[0].split()));z[pos]+=1;v[0]=' '.join(map(str,z));variants[name]=v
    for name,ls in variants.items():
        f=work/(name+'.txt');f.write_text('\n'.join(ls)+'\n');rejects(name,lambda f=f:gates(f))
    cases=json.loads((out/'certificates/fees/quotient_cases.json').read_text());c=cases[0]
    ls=(out/f'certificates/modules/p257/{c["state"]}.txt').read_text().splitlines()
    variants={'omitted_module_step':ls[:1]+ls[2:]}
    for name,pos in [('zero_discrepancy',2),('wrong_step_weight',3)]:
        v=ls[:];j=next(j for j in range(1,len(v)-1)if len(v[j].split())==4);z=list(map(int,v[j].split()));z[pos]=0 if pos==2 else z[pos]+1;v[j]=' '.join(map(str,z));variants[name]=v
    v=ls[:];z=v[-1].split();z[1]=str(int(z[1])+1);v[-1]=' '.join(z);variants['changed_terminal_weights']=v
    for name,lines in variants.items():
        f=work/(name+'.txt');f.write_text('\n'.join(lines)+'\n');rejects(name,lambda f=f:trace(f,c,257))
    good=(out/f'cases/{c["state"]}.txt').read_text().splitlines()
    for name,lines in [('missing_source',good[:-1]),('duplicate_source',good[:-1]+[good[1]])]:
        f=work/(name+'.txt');f.write_text('\n'.join(lines)+'\n')
        r=subprocess.run([str(out/'bin/module257'),str(f),str(work/(name+'.trace')),'0'],capture_output=True,text=True,cwd=work)
        assert r.returncode!=0;negative.append({'name':name,'rejected':True})
    assert len(negative)==11
    receipt={'status':'PASS_SYMBOLIC_DENSE_AND_NEGATIVE_CONTROLS','S5':s5_symbolic(),'small_dense_comparisons':len(results),'small_dense_systems':20,'results':results,'negative_count':len(negative),'negative_tests':negative,'all_negative_rejected':True,'warning':'Trace-shape checks do not replace full recomputation of discrepancies.'}
    dump(out/'certificates/controls.json',receipt)
