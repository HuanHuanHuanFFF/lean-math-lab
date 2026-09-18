"""Conditional small source allocation diagnostics, NO new high-degree geometry."""
from source_budget import *
ROOT=Path(__file__).resolve().parents[1]

def solve_nested(K,weights):
 _,L=source_rows();states={};state_count=0;alloc_count=0
 for a in range(K+1):
  ss=[]
  for V in range(306-7*K):
   h=(305-V-a)//2
   if h<0:continue
   mins=[next(v for v in range(306) if L[r][v]<=h) for r in ROWS]
   slack=V-sum(mins)
   if slack<0:continue
   assert slack<=3
   al=[]
   for adds in compose(slack,6):
    vs=[x+y for x,y in zip(mins,adds)];ds=[h-L[r][v] for r,v in zip(ROWS,vs)]
    al.append((sum(ds),sum(ds[:3]),ds[0],vs,ds));alloc_count+=1
   ss.append((V,h,al));state_count+=1
  states[a]=ss
 feasible=[];nc=nq=0
 for cs in compose(K,6):
  nc+=1;a,b,c,d,e,f=cs;w=sum(x*y for x,y in zip(cs,weights));m=b+c+d
  for V,h,als in states[a]:
   if w+V>305:continue
   nq+=1;witness=[]
   for total,head,first,vs,ds in als:
    singles=min(m,head,b+d+first);need=e+2*m-singles
    if need<=total:witness.append({'v':vs,'delta':ds,'min_defect_need':need,'total_capacity':total})
   if witness:feasible.append({'counts':cs,'V':V,'h':h,'witnesses':witness})
 assert nc==math.comb(K+5,5)
 return {'K':K,'weights':weights,'count_vectors':nc,'admissible_hV_states':state_count,'six_row_allocations':alloc_count,'queries':nq,'feasible_records':len(feasible),'feasible':feasible}

def main():
 tests=[('ACTUAL_NF35',19,(7,8,10,12,14,20)),('NF41_NOT_PROVED',19,(7,8,10,12,16,20)),('SAT60_NOT_PROVED',19,(7,8,10,12,14,22)),('NF41_K18_NOT_PROVED',18,(7,8,10,12,16,20))]
 output=[]
 for tag,K,ws in tests:
  r=solve_nested(K,ws);r['tag']=tag;output.append(r);print(tag,{k:v for k,v in r.items() if k!='feasible'},flush=True)
 dump(ROOT/'evidence/conditional_nested_probe.json',{'status':'COSTS_ONLY_FOR_UNPROVED_GEOMETRY_EXCEPT_TAG_ACTUAL_NF35','results':output})
if __name__=='__main__':main()
