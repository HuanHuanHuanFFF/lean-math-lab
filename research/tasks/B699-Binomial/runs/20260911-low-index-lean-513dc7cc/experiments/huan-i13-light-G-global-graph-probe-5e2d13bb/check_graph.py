"""Complete integer orientation/permutation graph check, no solver or floats.
Optimistic outercaps are deliberately granted, not asserted as actual Padé edges.
"""
from pathlib import Path
from itertools import product,permutations,combinations
import json,time,datetime
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery'
PS=[2,3,5,7,11];W=list(permutations([16,15,14,13,12]));PAIRS=list(combinations(range(5),2))
def check(cuts):
 pos={w:None for w in W};col={x:None for x in PAIRS};overall=None;scalar=None
 for mask in range(1<<len(cuts)):
  z=[0]*5;signs=[]
  for i,row in enumerate(cuts):
   b=(mask>>i)&1;signs.append(b);p=row['q'] if b else row['p'];v=row['wq'] if b else row['wp'];k=PS.index(p);z[k]=max(z[k],v)
  assert all(z[PS.index(c['p'])]>=c['wp'] or z[PS.index(c['q'])]>=c['wq'] for c in cuts)
  cheap=sum(w*x for w,x in zip([16,15,14,13,12],sorted(z)))
  actualmin=None
  for w in W:
   value=sum(v*x for v,x in zip(w,z));actualmin=value if actualmin is None else min(actualmin,value)
   rec={'value':value,'orientation_mask':mask,'orientation_bits':signs,'lower_components':z[:],'position_weights':list(w)}
   if pos[w] is None or value<pos[w]['value']:pos[w]=rec
   if overall is None or value<overall['value']:overall=rec
  assert actualmin==cheap
  total=sum(z)
  if scalar is None or total<scalar['value']:scalar={'value':total,'orientation_mask':mask,'components':z[:]}
  for a,b in PAIRS:
   deficit=max(0,1000-z[a]-z[b]);v=total+deficit
   zz=z[:];zz[a]+=deficit
   assert zz[a]+zz[b]>=1000 and sum(zz)==v
   if col[a,b] is None or v<col[a,b]['value']:
    col[a,b]={'p':PS[a],'q':PS[b],'value':v,'orientation_mask':mask,'components_before_collision':z[:],'components_after_collision':zz}
 return {'tau':overall['value'],'sigma':scalar['value'],'chi':min(x['value']for x in col.values()),'weighted_attainer':overall,'scalar_attainer':scalar,
 'all120_position_minima':list(pos.values()),'all10_collision_minima':list(col.values()),'orientations':1<<len(cuts),'position_permutations':len(W),'weighted_checks':(1<<len(cuts))*len(W),'collision_checks':(1<<len(cuts))*len(PAIRS),
 'rearrangement_identity_crosschecked_every_orientation':True,'cuts':cuts}
def run():
 t0=time.perf_counter();raw=json.loads((OLD/'input/i13_cuts.json').read_text());en=json.loads((OUT/'exact-envelopes.json').read_text())
 old=check(raw['cuts']);assert (old['tau'],old['sigma'],old['chi'])==(12183,934,1309)
 floors=[];uppers=[]
 for rec in en['rows']:
  s=rec['seed'];l=rec['asymptotic_integer_weights'];u=rec['optimistic_outer_integer_caps']
  floors.append({'p':s['p'],'q':s['q'],'wp':l[0],'wq':l[1],'c':rec['best']['c'],'d':rec['best']['d'],'source_index':rec['source_index'],'trivial_arm':not rec['both_weights_positive']})
  uppers.append({**floors[-1],'wp':u[0],'wq':u[1]})
 actual=check(floors);optimistic=check(uppers)
 assert optimistic['tau']<12000
 # Bothcapacities increase withT/c,so theseoutercapsdominateevery
 # admissibleratio/weightchoice inthisfixed seed/range/framework.
 result={'status':'PASS_COMPLETE_GRAPH_NEGATIVE_IN_FIXED_LIGHT_D_FRAMEWORK','old_positive_control':old,'integer_cap_graph':actual,'optimistic_outer_cap_graph':optimistic,
 'optimistic_distinct_gap':optimistic['tau']-12000,'optimistic_collision_gap':optimistic['chi']-1000,
 'conclusion':'evenindividuallybestidealD/coreweightsroundedUPfailtau>12000; finiteprefixorheighttuningcannotrepairtheasymptoticgraphgapinthisfixedframework',
 'scope':'11oldseeds,coprime1<=d<c<=32,z<d/c; correcta,b,Dscales; directDlimitplusfreeG>=1; nootherseed,strongerGorotherproofmethod',
 'finite_m_initial_height_solved':False,'Lean_invocations':0,'original_i13_added':False,'seconds':time.perf_counter()-t0,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
 if not (OUT/'FREEZE.json').exists():(OUT/'graph-results.json').write_bytes((json.dumps(result,ensure_ascii=False,indent=2)+'\n').encode('utf-8'))
 print(json.dumps({'status':result['status'],'old':[old['tau'],old['sigma'],old['chi']],'integer':[actual['tau'],actual['sigma'],actual['chi']],'optimistic':[optimistic['tau'],optimistic['sigma'],optimistic['chi']],'optimistic_attainer':optimistic['weighted_attainer'],'all_collisions':optimistic['all10_collision_minima'],'seconds':result['seconds']},ensure_ascii=False,indent=2))
 return result
if __name__=='__main__':run()
