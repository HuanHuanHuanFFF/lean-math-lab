"""Complete common-vertical-allocation check for remaining K19 type records.
Still a necessary geometric-resource model, not any original-input construction.
"""
from source_budget import *
ROOT=Path(__file__).resolve().parents[1]

def main():
 _,L=source_rows();inp=json.loads((ROOT/'evidence/nested_source_probe.json').read_text())['survivors'];out=[];rem=[]
 groups={};counts=Counter()
 for rec in inp:
  h,V=rec['h'],rec['V'];key=(h,V)
  if key not in groups:
   mins=[next(v for v in range(306) if L[r][v]<=h) for r in ROWS];slack=V-sum(mins);assert slack<=3
   al=[]
   if slack>=0:
    for adds in compose(slack,6):
     vs=[x+y for x,y in zip(mins,adds)];ds=[h-L[r][v] for r,v in zip(ROWS,vs)]
     al.append({'v':vs,'delta':ds})
   groups[key]=al
  a,b,c,d,e,f=rec['counts'];m=b+c+d;q=e;passes=[]
  for allocation in groups[key]:
   ds=allocation['delta'];total=sum(ds);head=sum(ds[:3]);one=min(m,head,b+d+ds[0]);need=q+2*m-one
   if total>=need:passes.append({**allocation,'total':total,'head':head,'max_singles':one,'needed_total':need})
  if passes:out.append({**rec,'actual_vertical_witnesses':passes});counts[len(passes)]+=1
  else:rem.append(rec)
 print('common allocation survivors',len(out),'removed',len(rem),'groups',[(k,len(v)) for k,v in groups.items()])
 dump(ROOT/'evidence/joint_nested_probe.json',{'status':'NECESSARY_RESOURCE_MODEL','survivors':out,'removed':rem,
       'allocation_groups':[{'h':h,'V':v,'allocations':al} for (h,v),al in sorted(groups.items())]})
 print('FIRST',out[:1])
if __name__=='__main__':main()
