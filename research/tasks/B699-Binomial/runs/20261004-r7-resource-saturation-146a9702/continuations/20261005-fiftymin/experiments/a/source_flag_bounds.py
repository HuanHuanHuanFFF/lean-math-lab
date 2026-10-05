from pathlib import Path
import json,hashlib
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39)); DIAG=(0,56,0,41,0,52)
def row_sum(r,v):return sum(max(a-v,0) for a in OFF[r])+(max(DIAG[r]-v,0)+1)//2
rows=[];bound=1
for h in range(107,153):
    v=[];at=[];before=[]
    for r in range(6):
        a=0
        while row_sum(r,a)>h:a+=1
        assert row_sum(r,a)<=h and (a==0 or row_sum(r,a-1)>h)
        v.append(a);at.append(row_sum(r,a));before.append(row_sum(r,a-1) if a else None)
    inc=max(0,306-2*h-sum(v))
    if h>107:bound+=inc
    rows.append(dict(h=h,min_vertical=v,min_vertical_sum=sum(v),row_sums_at_minimum=at,row_sums_previous=before,coefficient_degree=305-2*h,increment_upper=inc,Q_dimension_upper=bound,geometric_split_component_budget=bound-1))
assert rows[1]['min_vertical']==[22,18,15,13,11,10] and rows[1]['Q_dimension_upper']==2
assert rows[-1]['Q_dimension_upper']==86
out=dict(scope='Exact arithmetic certificate for the paper flag-increment upper bound; base dim_Q V107<=1 is adopted from the accepted previous review. No rational existence inferred.',OFF=OFF,DIAG=DIAG,base=dict(h=107,Q_dimension_upper=1),rows=rows)
p=Path(__file__).parent/'source-flag-bounds.json';p.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(dict(rows=len(rows),h108=rows[1],last_bound=bound),ensure_ascii=False))
