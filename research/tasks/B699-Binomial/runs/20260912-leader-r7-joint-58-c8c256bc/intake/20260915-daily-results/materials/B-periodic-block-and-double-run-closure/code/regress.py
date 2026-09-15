#!/usr/bin/env python3
"""New regression and discriminating probes. These ranges do not prove infinite claims."""
from pathlib import Path
import argparse,json,math

def W1(n,j):return (3*j*(j-1))%(n-1)==0
def W2(n,j):return (6*j*(j-1)*(j-2))%(n-2)==0
def legal(n,j):return 4<=j<=n//2
def carry_v(n,j,p):
    q=p;s=0
    while q<=n:
        s+=int(j%q>n%q);q*=p
    return s
def floor_v(n,j,p):
    q=p;s=0
    while q<=n:
        s+=n//q-j//q-(n-j)//q;q*=p
    return s
def defect(n,j):
    assert n%4==0
    a=(n-1)//math.gcd(n-1,3*j*(j-1))
    b=(n-2)//math.gcd(n-2,6*j*(j-1)*(j-2))
    return a*b

def main():
    ap=argparse.ArgumentParser();ap.add_argument("--out",type=Path,required=True)
    out=ap.parse_args().out
    rep_count=rep_w1=rep_w2=0
    for x in range(2,33):
        for k in range(3,11):
            n=x**k;S=sum(x**i for i in range(k))
            assert (x-1)*S==n-1
            for a in range(1,x-1):
                z=a*S
                rep_count+=1
                f,g=W1(n,z),W2(n,z)
                rep_w1+=f;rep_w2+=g
                assert not(f and g)
                if n%4==0:assert defect(n,z)>1

    double_count=double_first=0;survivors=set()
    for d in range(1,33):
        x=1<<d;n=x*x
        for a in range(d):
            for b in range(1,d-a+1):
                word=(1<<a)*((1<<b)-1)
                z=word*(x+1);j=min(z,n-z)
                if not legal(n,j):continue
                double_count+=1
                if not W1(n,j):continue
                double_first+=1;survivors.add((n,j))
                known=j==x*(x-1)//2 or (n,j) in {(16,5),(4096,196),(4096,456)}
                if d%2==0 and d>=4:
                    y=1<<(d//2)
                    known |= j==y*(y-1)*(y*y+1)//4
                assert known
                assert not W2(n,j)
                assert defect(n,j)>1

    near_count=0
    for x in range(2,41):
        for k in range(3,8):
            n=x**k;S=(n-1)//(x-1)
            limit=max(0,math.isqrt(S//3)-2)
            for a in range(0,min(x,7)):
                for e in sorted(set((-limit,-1,0,1,2,limit))):
                    j=a*S+e
                    if not legal(n,j) or 3*e*(e-1)>=S:continue
                    near_count+=1
                    assert not (W1(n,j) and W2(n,j))

    # Unconditional odd divisor checked against the actual gcd on all small legal inputs.
    divisor_tests=0;endpoint=[]
    for n in range(8,257,4):
        first=math.comb(n,3)
        for j in range(4,n//2+1):
            Z=defect(n,j)
            second=math.comb(n,j)
            assert Z%2 and first%Z==0 and second%Z==0
            divisor_tests+=1
    for n,j in ((16,5),(16,6),(64,21),(1728,628),(4096,196),(4096,456),(56,11)):
        p3=[floor_v(n,j,3),carry_v(n,j,3)]
        assert p3[0]==p3[1]
        Z=defect(n,j);actual=math.gcd(math.comb(n,3),math.comb(n,j))
        assert actual%Z==0
        endpoint.append({"n":n,"j":j,"W":Z,"gcd":actual,
                         "v3_choose3":floor_v(n,3,3),"v3_choosej":p3[0]})
    assert W1(56,11) and W2(56,11) and math.gcd(math.comb(56,3),math.comb(56,11))>1
    assert 11%27>56%27 and not(11%9>56%9)

    # Discriminating, non-complete exploration: equal-length runs at arbitrary spacing.
    equal=[]
    for v in range(3,65):
        n=1<<v
        for b in range(1,v//2):
            for c in range(b+1,v-b):
                word=((1<<b)-1)*((1<<c)+1)
                for a in range(v-b-c):
                    j=word<<a
                    if legal(n,j) and W1(n,j):
                        equal.append([v,a,b,c,W2(n,j)])
    # A second unresolved probe: two repetitions, with arbitrary base and arbitrary word.
    first2=both2=0
    for x in range(2,2001):
        n=x*x
        for a in range(1,x//2):
            j=a*(x+1)
            if legal(n,j) and W1(n,j):
                first2+=1;both2+=W2(n,j)

    ans={"periodic":{"parameter_rows":rep_count,"first_survivors":rep_w1,
                     "second_survivors":rep_w2,"both":0},
         "double_single_run":{"patterns":double_count,
                              "first_surviving_representations":double_first,
                              "distinct_first_survivors":len(survivors),"both":0,
                              "d_range":[1,32]},
         "near_period_tests":near_count,"actual_odd_divisor_tests":divisor_tests,
         "endpoint_examples":endpoint,
         "scope":"regression only; infinite coverage comes from paper arguments"}
    probes={"equal_two_runs":{"v_range":[3,64],"first_candidates":equal,
                              "both":sum(t[-1] for t in equal),
                              "status":"no completeness theorem beyond tested range"},
            "arbitrary_double_repeat":{"base_range":[2,2000],"first":first2,"both":both2,
                                      "status":"unresolved in general; not an accepted universal closure"}}
    (out/"regression.json").write_text(json.dumps(ans,ensure_ascii=False,indent=2)+"\n")
    (out/"exploration.json").write_text(json.dumps(probes,ensure_ascii=False,indent=2)+"\n")
    print(json.dumps({"periodic_rows":rep_count,"double_patterns":double_count,
                      "new_finite_probe_only":True,"status":"passed"}))
if __name__=="__main__":main()
