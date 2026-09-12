from pathlib import Path
from itertools import product,combinations,permutations
from math import factorial,prod
import hashlib,json,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-route-inventory-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
start=time.perf_counter()
data=json.loads((OLD/'input/i13_cuts.json').read_text());edges=data['cuts'];ps=[2,3,5,7,11]
assert len(edges)==11 and data['i']==13
pairs=list(combinations(range(5),2));size=1<<11
counts=[0]*size;weighted=[10**9]*size;scalar=[10**9]*size
collision=[[10**9]*10 for _ in range(size)];att=[None]*size
# Ternary state per fixed edge: omit it, use p-end, use q-end.
# Each subset receives all 2^card orientations exactly once. No search or float.
for choices in product(range(3),repeat=11):
 mask=0;z=[0]*5
 for i,ch in enumerate(choices):
  if ch:
   mask|=1<<i;e=edges[i];p,w=(e['p'],e['wp']) if ch==1 else(e['q'],e['wq']);ix=ps.index(p);z[ix]=max(z[ix],w)
 counts[mask]+=1;s=sum(z);w=sum(a*b for a,b in zip((16,15,14,13,12),sorted(z)))
 if w<weighted[mask]:weighted[mask]=w;att[mask]={'choices':list(choices),'z':z[:],'scalar':s}
 scalar[mask]=min(scalar[mask],s)
 for ix,(a,b) in enumerate(pairs):collision[mask][ix]=min(collision[mask][ix],s+max(0,1000-z[a]-z[b]))
assert all(counts[m]==1<<m.bit_count() for m in range(size))
full=size-1;full_c=min(collision[full])
assert (weighted[full],scalar[full],full_c)==(12183,934,1309)
assert min(sum(a*b for a,b in zip(w,att[full]['z'])) for w in permutations((16,15,14,13,12)))==weighted[full]
# A subset is sufficient for the source's two branch exponents, provided its
# actual Padé edges hold at a common threshold. This does not prove any edge.
good=[m for m in range(size) if weighted[m]>12000 and min(collision[m])>1000]
best=min(m.bit_count() for m in good)
minimal=[m for m in good if m.bit_count()==best]
rows=[]
for m in minimal:
 kept=[i for i in range(11) if m>>i&1]
 rows.append({'mask':m,'indices_zero_based':kept,'pairs':[[edges[i]['p'],edges[i]['q']] for i in kept],'weighted_min':weighted[m],'scalar_min':scalar[m],'collision_min':min(collision[m]),'distinct_exponent':weighted[m]-12000,'collision_exponent':14*(min(collision[m])-1000),'parameter_pairs':sorted({(edges[i]['c'],edges[i]['d']) for i in kept}),'weighted_attainer':att[m]})
# Directly re-enumerate each minimal subset using a different binary mask loop.
for row in rows:
 ids=row['indices_zero_based'];wm=10**9;cm=10**9
 for bits in range(1<<len(ids)):
  z={p:0 for p in ps}
  for j,i in enumerate(ids):
   e=edges[i];p,w=(e['p'],e['wp']) if bits>>j&1 else(e['q'],e['wq']);z[p]=max(z[p],w)
  vals=list(z.values());s=sum(vals)
  wm=min(wm,min(sum(a*b for a,b in zip(weight,vals)) for weight in permutations((16,15,14,13,12))))
  cm=min(cm,min(s+max(0,1000-vals[a]-vals[b]) for a,b in pairs))
 assert wm==row['weighted_min'] and cm==row['collision_min']
def height_bits(m):
 tau=weighted[m];chi=min(collision[m]);gp=tau-12000;gc=14*(chi-1000)
 return max(8192,(658000+tau+gp-1)//gp,(476000+14*chi+gc-1)//gc)
for row in rows:row['required_n_height_bits_from_source_algebra']=height_bits(row['mask'])
fixed_good=[m for m in good if height_bits(m)<=8192]
fixed_best=min(m.bit_count() for m in fixed_good)
fixed_rows=[]
for m in fixed_good:
 if m.bit_count()!=fixed_best:continue
 ids=[i for i in range(11) if m>>i&1]
 fixed_rows.append({'mask':m,'indices_zero_based':ids,'pairs':[[edges[i]['p'],edges[i]['q']] for i in ids],'weighted_min':weighted[m],'collision_min':min(collision[m]),'distinct_exponent':weighted[m]-12000,'collision_exponent':14*(min(collision[m])-1000),'parameter_pairs':sorted({(edges[i]['c'],edges[i]['d']) for i in ids}),'required_n_height_bits':height_bits(m)})
K=2**90*prod(factorial(h) for h in range(1,10))**2*prod(factorial(h) for h in range(1,9))
assert K**10*2**(67*28)>(2*factorial(13))**140
out={'status':'EXACT_FINITE_ROUTE_PROBE_NOT_LEAN','one_probe_scope':'all subsets and all orientations of the11 fixed i13 cut rows, no new seed/rate/height search','source_sha256':hashlib.sha256((OLD/'input/i13_cuts.json').read_bytes()).hexdigest(),'full':{'orientation_count':counts[full],'weighted_min':weighted[full],'scalar_min':scalar[full],'collision_min':full_c,'collision_by_pair':[{'pair':[ps[a],ps[b]],'min':collision[full][i]} for i,(a,b) in enumerate(pairs)],'weighted_attainer':att[full],'scalar_net_exponent':14*(scalar[full]-1000),'distinct_net_exponent':weighted[full]-12000,'collision_net_exponent':14*(full_c-1000)},'all_subset_count':size,'ternary_state_count':sum(counts),'coverage_count_identity_verified':True,'sufficient_subset_count':len(good),'minimum_sufficient_edge_count':best,'all_minimal_sufficient_subsets':rows,'height8192_minimum_edge_count':fixed_best,'height8192_minimal_subsets':fixed_rows,'leave_one_out':[{'removed_index':i,'weighted_min':weighted[full^(1<<i)],'collision_min':min(collision[full^(1<<i)]),'sufficient':full^(1<<i) in good} for i in range(11)],'cube_bridge_control':{'i':13,'small_prime_count':5,'r':4,'s':9,'lambda':14,'E':126,'old_3_over_4_net':4*14*13-14*(3*5+1)-4*126,'new_7_over_10_net':10*14*13-14*(7*5+3)-10*126,'K':str(K),'threshold_bits':67,'integer_certificate':True,'lhs_bits':(K**10*2**(67*28)).bit_length(),'rhs_bits':((2*factorial(13))**140).bit_length()},'seconds':time.perf_counter()-start,'lean_invocations':0,'mathematical_dependency':'Every sufficient-subset conclusion remains conditional on the corresponding actual cuts. No BFT/G/height assumption is established by this graph probe.'}
(OUT/'graph-probe.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'seconds':out['seconds'],'ternary_states':out['ternary_state_count'],'minimal_edge_count':best,'minimal_subsets':rows,'height8192_minimum_edge_count':fixed_best,'height8192_minimal_subsets':fixed_rows,'full_minima':out['full'],'leave_one_out':out['leave_one_out']},ensure_ascii=False,indent=2))