"""Complete final CRT progression expansion after symbolic descent has become small."""
from pathlib import Path
from itertools import combinations
import json,time,hashlib
from crt_descent import families,ceildiv,PS,D
R=Path(__file__).resolve().parents[1]
def merge(intervals):
    intervals.sort();out=[]
    for l,u in intervals:
        if not out or l>out[-1][1]+1:out.append([l,u])
        elif u>out[-1][1]:out[-1][1]=u
    return out

def main():
    t0=time.monotonic();doc=json.loads((R/'evidence/crt_descent.json').read_text());row=doc['rows'][-1];H=int(row['H']);M=int(row['M']);assert H==int(row['out_H'])
    start,by=families(H,M);intervals=[(30,min(start-1,H-1))];terms=0
    for p,q in combinations(PS,2):
        for Q,al,ah,hp in by[p]:
            for T,bl,bh,hq in by[q]:
                v=pow(Q,-1,T)
                for d in range(-D,D+1):
                    a0=(d*v)%T;b0=(Q*a0-d)//T
                    lo=max(ceildiv(al-a0,T),ceildiv(bl-b0,Q));hi=min((ah-a0)//T,(bh-b0)//Q)
                    terms+=max(0,hi-lo+1)
                    for t in range(lo,hi+1):
                        aa=a0+T*t;bb=b0+Q*t;n1=Q*aa;n2=T*bb
                        l=max(n1,n2,start);u=min(n1+D,n2+D,H-1);assert l<=u
                        intervals.append((l,u))
    assert terms==int(row['symbolic_progression_terms'])
    merged=merge(intervals)
    dest=R/'evidence/candidates.tsv';dest.write_text(''.join(f'{l}\t{u}\n' for l,u in merged))
    result={'status':'GENERATED_COMPLETE_FINAL_CRT_UNION','H':str(H),'M':M,'start':start,'expanded_symbolic_terms':terms,'intervals':len(merged),'candidates':sum(u-l+1 for l,u in merged),'max_n':merged[-1][1],'sha256':hashlib.sha256(dest.read_bytes()).hexdigest(),'seconds':round(time.monotonic()-t0,3)}
    (R/'evidence/candidate_generation.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result),flush=True)
if __name__=='__main__':main()
