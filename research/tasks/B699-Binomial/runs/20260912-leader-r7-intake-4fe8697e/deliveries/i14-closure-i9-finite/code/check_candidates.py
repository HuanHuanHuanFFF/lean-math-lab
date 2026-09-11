"""Independent candidate receiver: union per prime colour, then intersect distinct colours.
It does not import CRT or use modular inverses/progression certificates.
"""
from pathlib import Path
from itertools import combinations
import json,time,hashlib
R=Path(__file__).resolve().parents[1]
PS=[2,3,5,7,11,13]
def compact(arr):
    out=[]
    for l,u in sorted(arr):
        if out and l<=out[-1][1]+1:out[-1][1]=max(out[-1][1],u)
        else:out.append([l,u])
    return out

def overlap(a,b):
    i=j=0;out=[]
    while i<len(a) and j<len(b):
        lo=max(a[i][0],b[j][0]);hi=min(a[i][1],b[j][1])
        if lo<=hi:out.append([lo,hi])
        if a[i][1]<b[j][1]:i+=1
        else:j+=1
    return out

def main():
    begin=time.monotonic();doc=json.loads((R/'evidence/crt_descent.json').read_text());last=doc['rows'][-1];H=int(last['H']);M=int(last['M']);start=max(182,M+14)
    assert int(last['out_H'])==H
    colours={};raw_count=0
    for p in PS:
        Q=1
        while Q*p<=14:Q*=p
        arr=[]
        while Q<H:
            low=max(1,-((-(start-13))//Q));high=min(M,(H-1)//Q)
            for a in range(low,high+1):
                l=max(start,Q*a);u=min(H-1,Q*a+13)
                assert l<=u;arr.append([l,u]);raw_count+=1
            Q*=p
        colours[p]=compact(arr)
    total=[[30,min(start-1,H-1)]]
    for p,q in combinations(PS,2):total.extend(overlap(colours[p],colours[q]))
    expected=compact(total)
    path=R/'evidence/candidates.tsv';actual=[[int(t) for t in line.split()] for line in path.read_text().splitlines()]
    assert actual==expected,'Candidate set is not the complete necessary superset'
    result={'status':'PASS_COMPLETE_INDEPENDENT_COLOUR_UNIONS','H':str(H),'M':M,'start':start,'raw_single_colour_intervals':raw_count,'per_colour_merged_intervals':{str(p):len(v) for p,v in colours.items()},'intervals':len(actual),'candidates':sum(u-l+1 for l,u in actual),'max_n':actual[-1][1],'sha256':hashlib.sha256(path.read_bytes()).hexdigest(),'seconds':round(time.monotonic()-begin,3)}
    (R/'evidence/candidates_check.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result),flush=True)
if __name__=='__main__':main()
