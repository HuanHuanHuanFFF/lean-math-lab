from pathlib import Path
from collections import Counter
from bisect import bisect_right
from itertools import combinations
from time import perf_counter
from datetime import datetime,timezone
import hashlib,json
R=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
source=R.parent/'20260910-pade-three-closure-4edad426/delivery/results/terminal_certificate_11.json'
old=json.loads(source.read_text());cs=[(0,23)]+[tuple(a) for a in old['candidate_intervals']]
H=29294603;M=500;amax={2:24,3:15,5:10,7:8}
out=R/'experiments/huan-i11-terminal-membership-data-5e2d13bb';out.mkdir(exist_ok=False)
B='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.'
started=perf_counter();starts=[x[0] for x in cs];pairs=[];cells_total=rows_total=params_total=0;best=None;largest_param=None
def covered(lo,hi):
 i=max(0,bisect_right(starts,lo)-1);n=lo
 for a,b in cs[i:]:
  if hi<n:return True
  if b<n:continue
  if n<a:return False
  if hi<=b:return True
  n=b+1
 return hi<n
def expr(c):
 tail='⟨'+str(c['default'][0])+', '+str(c['default'][1])+'⟩'
 for e in reversed(c['exceptions']):tail=f"if d = ({e['d']} : ℤ) then ⟨{e['lo']}, {e['hi']}⟩ else "+tail
 return tail
allcells={}
for p,q in combinations([2,3,5,7],2):
 cells=[]
 for a in range(1,amax[p]+1):
  for b in range(1,amax[q]+1):
   P,Q=p**a,q**b;v=pow(P,-1,Q);ca=min(M,(H-1)//P);cc=min(M,(H-1)//Q);ds=[];params=0;up=0
   for d in range(-10,11):
    rho=(d*v)%Q or Q;c0=(P*rho-d)//Q
    lo=max(0,-((c0-1)//P));hi=min((ca-rho)//Q,(cc-c0)//P)
    assert lo<=0 or c0+P*(lo-1)<1
    assert ca<rho+Q*(hi+1) or cc<c0+P*(hi+1)
    for t in range(lo,hi+1):
     A=rho+Q*t;C=c0+P*t;assert 1<=A<=ca and 1<=C<=cc and P*A-Q*C==d
     lower=max(P*A,Q*C);upper=min(P*A,Q*C)+10;assert covered(lower,upper),(p,q,a,b,d,t,lower,upper)
     params+=1
     if best is None or best['upper']<upper:best=dict(p=p,q=q,a=a,b=b,d=d,t=t,lower=lower,upper=upper)
     up=max(up,upper)
    ds.append((d,lo,hi))
   mode=Counter((lo,hi) for d,lo,hi in ds).most_common(1)[0][0]
   c=dict(p=p,q=q,a=a,b=b,P=P,Q=Q,inverse=v,capA=ca,capC=cc,default=list(mode),exceptions=[dict(d=d,lo=lo,hi=hi) for d,lo,hi in ds if (lo,hi)!=mode],parameters=params,max_upper=up)
   cells.append(c);allcells[(p,q,a,b)]=c
   if largest_param is None or params>largest_param['parameters']:largest_param=c
   params_total+=params;cells_total+=1;rows_total+=21
 f=out/f'pair{p}{q}.json';f.write_text(json.dumps(dict(p=p,q=q,H=H,M=M,amax=amax[p],bmax=amax[q],cells=cells),separators=(',',':'))+'\n',encoding='utf-8',newline='\n')
 pairs.append(dict(p=p,q=q,cells=len(cells),source=f.name,sha256=hashlib.sha256(f.read_bytes()).hexdigest()))
assert cells_total==1142 and rows_total==23982 and params_total==47136 and best['upper']==H-1
dest=R/'lean/I11TerminalMembership';dest.mkdir(exist_ok=False)
lines=[f'import {B}I11TerminalCrt.RowCell',f'import {B}I11CrtStages.NumericMetadata','','set_option autoImplicit false','set_option relaxedAutoImplicit false','set_option maxRecDepth 100000','','namespace Math.B699.I11TerminalMembership','open B699LowIndex','']
lines += ['def originalCandidates : List NatInterval := [',',\n'.join(f'  ({a}, {b})' for a,b in cs[1:]),']','','def candidates : List NatInterval := (0, 23) :: originalCandidates','','theorem small_cover : coverCheck 24 500 candidates = true := by','  decide +kernel','','end Math.B699.I11TerminalMembership','#print axioms Math.B699.I11TerminalMembership.small_cover','#print axioms Math.B699.I11TerminalMembership.candidates']
f=dest/'Candidates.lean';f.write_text('\n'.join(lines)+'\n',encoding='utf-8',newline='\n')
selected=[largest_param,allcells[(best['p'],best['q'],best['a'],best['b'])],allcells[(5,7,10,8)]]
assert len({(c['p'],c['q'],c['a'],c['b']) for c in selected})==3
lines=[f'import {B}I11TerminalMembership.Candidates','','set_option autoImplicit false','set_option relaxedAutoImplicit false','set_option maxRecDepth 100000','set_option maxHeartbeats 5000000','set_option exponentiation.threshold 512','','namespace Math.B699.I11TerminalMembership.Pilot','open Math.B699.CRTGrid Math.B699.I11TerminalCRT','open B699LowIndex.I11CrtStageMetadata','open Math.B699.I11TerminalMembership','']
for i,c in enumerate(selected):
 lines += [f'def cell{i} : CellData where',f'  inverse := {c["inverse"]}','  bounds := fun '+('d' if c['exceptions'] else '_d')+' => '+expr(c),'',f'theorem cell{i}_check :',f'    cellCoverCheck ({c["p"]} ^ {c["a"]}) ({c["q"]} ^ {c["b"]})',f'      (heightCap Stage04.H Stage04.M ({c["p"]} ^ {c["a"]}))',f'      (heightCap Stage04.H Stage04.M ({c["q"]} ^ {c["b"]})) cell{i} candidates = true := by','  decide +kernel','',f'#print axioms Math.B699.I11TerminalMembership.Pilot.cell{i}_check','']
lines += ['end Math.B699.I11TerminalMembership.Pilot']
g=dest/'Pilot.lean';g.write_text('\n'.join(lines)+'\n',encoding='utf-8',newline='\n')
manifest=dict(status='exactly_rechecked_uncompiled_membership_data',created_utc=datetime.now(timezone.utc).isoformat(),H=H,M=M,prime_power_counts=amax,original_candidates=1055,extended_candidates=1056,cells=cells_total,signed_rows=rows_total,nonnegative_parameters=params_total,best=best,max_parameters_cell={k:largest_param[k] for k in ['p','q','a','b','parameters']},all_affine_intervals_covered=True,pairs=pairs,seconds=perf_counter()-started,pilot_cells=[{k:c[k] for k in ['p','q','a','b','parameters','max_upper']} for c in selected],source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),new_B_original_results=0)
(out/'manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(out/'PLAN.md').write_text('Primary owns complete terminal stage04 membership data. All1142 exponent cells and21 signed differences, all47136 nonnegative feasible parameters are retained. The target union is (0,23)::the original1055 intervals, because below24 there is no original legal j; a separate generic theorem must remove this head before applying the old witnesses. No original candidate/witness source or original j domain is changed. Pilot covers the largest parameter range, global largest affine upper endpoint, and high5/7 exponent corner. Complete Lean membership tables and terminal original closure remain pending.\n',encoding='utf-8',newline='\n')
jobs=[]
for name,p,deps in [('i11-terminal-membership-candidates',f,['i11-terminal-crt-row-cell','i11-crt-stage-metadata']),('i11-terminal-membership-pilot',g,['i11-terminal-membership-candidates'])]:
 jobs.append(dict(name=name,root=p.relative_to(R).as_posix(),source_sha256=hashlib.sha256(p.read_bytes()).hexdigest(),reuse=[(R/'verification/huan-prerequisites'/(n+'.json')).as_posix() for n in deps],memory_mb=1536))
(R/'notes/huan-terminal-membership-pilot-plan.json').write_text(json.dumps(dict(kind='source_bound_b_prerequisite_queue',created_utc=datetime.now(timezone.utc).isoformat(),status='prepared_not_running',jobs=jobs,new_B_original_results=0),indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:manifest[k] for k in ['cells','signed_rows','nonnegative_parameters','seconds','pilot_cells']}))
