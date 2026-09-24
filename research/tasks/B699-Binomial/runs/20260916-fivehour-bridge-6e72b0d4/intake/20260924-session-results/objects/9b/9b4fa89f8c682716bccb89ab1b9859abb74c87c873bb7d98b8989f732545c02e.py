#!/usr/bin/env python3
"""Independent dense Hasse-jet tests and explicit damaged-input rejection tests.
This does not replace the full-size module regeneration. No external packages.
"""
from __future__ import annotations
import json,math,random,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
import replay

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

def main(out):
    rng=random.Random(699111);rows=[(r,s)for r in range(3,9)for s in range(r//2+1)];tests=[];out.mkdir(parents=True,exist_ok=True)
    for idx in range(20):
        h=1+idx%6
        pts=[(r,s,rng.randrange(4)if(idx%3==0 or k<idx%8)else 0)for k,(r,s)in enumerate(rows)]
        case=out/f'test_{idx}.txt';case.write_text(str(h)+'\n'+''.join(f'{r} {s} {m}\n'for r,s,m in pts))
        for p in (257,263):
            d,J,K=dense(h,pts,p)
            for rev in (0,1):
                target=out/f'test_{idx}_{p}_{rev}.trace'
                q=subprocess.run([str(ROOT/'verification/bin'/f'qmod{p}'),str(case),str(target),str(rev)],capture_output=True,text=True)
                if q.returncode:raise AssertionError(q.stderr)
                w=list(map(int,target.read_text().splitlines()[-1].split()[1:]));nu=sum(max(0,2*h-x+1)for x in w)
                assert nu==d
                tests.append(dict(index=idx,prime=p,reverse=rev,rows=J,columns=K,nullity=d))
    assert any(x['nullity']>0 for x in tests)and any(x['nullity']==0 for x in tests)
    negatives=[]
    good=(out/'test_0.txt').read_text().splitlines()
    for label,ls in [('missing_source',good[:-1]),('duplicate_source',good[:-1]+[good[1]])]:
        bad=out/(label+'.txt');bad.write_text('\n'.join(ls)+'\n')
        q=subprocess.run([str(ROOT/'verification/bin/qmod257'),str(bad),str(out/(label+'.trace')),'0'],capture_output=True,text=True)
        assert q.returncode!=0;negatives.append(dict(test=label,rejected=True,reason=q.stderr.strip()))
    cases=json.loads((ROOT/'inputs/quotient_cases.json').read_text());c=cases[0];f=ROOT/f'certificates/modules/p257/{c["state"]}_{c["name"]}.txt';ls=f.read_text().splitlines()
    changes=[]
    changes.append(('deleted_pivot_row',ls[:1]+ls[2:]))
    for label,k in [('zero_discrepancy',2),('wrong_terminal_step_weight',3)]:
        cp=ls[:]
        j=next(j for j in range(1,len(cp)-1)if len(cp[j].split())==4);a=cp[j].split();a[k]='0' if k==2 else str(int(a[k])+1);cp[j]=' '.join(a);changes.append((label,cp))
    cp=ls[:];a=cp[-1].split();a[1]=str(int(a[1])-1);cp[-1]=' '.join(a);changes.append(('wrong_terminal_weights',cp))
    for label,cp in changes:
        pth=out/(label+'.txt');pth.write_text('\n'.join(cp)+'\n')
        try:replay.parse_trace(pth,c,257)
        except (AssertionError,ValueError,IndexError):negatives.append(dict(test=label,rejected=True))
        else:raise AssertionError(('damaged record accepted',label))
    receipt=dict(status='PASS_DENSE_SMALL_SYSTEMS_AND_NEGATIVE_TESTS',small_systems=20,field_and_order_runs=len(tests),positive_kernel_runs=sum(x['nullity']>0 for x in tests),zero_kernel_runs=sum(x['nullity']==0 for x in tests),dense_implementation='direct integer global monomial Hasse jets + Gaussian elimination',tests=tests,negative_tests=negatives,negative_count=len(negatives),scope='Full-size discrepancies must still be recomputed by complete replay; transcript-shape checks alone are not a proof.')
    (ROOT/'verification/small_and_negative_receipt.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    print(receipt['status'],len(tests),len(negatives))
if __name__=='__main__':main(Path(sys.argv[1]))
