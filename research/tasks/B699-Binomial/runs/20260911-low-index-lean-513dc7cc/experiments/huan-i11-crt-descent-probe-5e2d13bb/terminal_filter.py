from pathlib import Path
from datetime import datetime,timezone
from itertools import combinations
from math import comb
from time import perf_counter
import hashlib,importlib.util,json
HERE=Path(__file__).resolve().parent
# Import no old executable script: read the fixed prior result and derive locally.
src=HERE/'result.json';prior=json.loads(src.read_text());last=prior['stages'][-1]
H,M,K=last['H'],last['M'],prior['K'];assert H==29294603 and M==500
from math import factorial
F=(2*factorial(11))**11
started=perf_counter();pw={}
for p in [2,3,5,7]:
 rows=[];a,v=1,p
 while v<H:rows.append((a,v));a+=1;v*=p
 pw[p]=rows
candidates=set();positive_solutions=0;expanded_windows=0
for p,q in combinations([2,3,5,7],2):
 for a,P in pw[p]:
  for b,Q in pw[q]:
   inv=pow(P,-1,Q);capA=min(M,(H-1)//P);capC=min(M,(H-1)//Q)
   for d in range(-10,11):
    rho=(d*inv)%Q or Q;c0=(P*rho-d)//Q
    lo=max(0,(1-c0+P-1)//P);hi=min((capA-rho)//Q,(capC-c0)//P)
    for t in range(lo,hi+1):
     A,C=rho+Q*t,c0+P*t;NP,NQ=P*A,Q*C
     assert 1<=A<=capA and 1<=C<=capC and NP-NQ==d
     positive_solutions+=1
     for n in range(max(NP,NQ,M+1,110),min(NP,NQ)+11):
      expanded_windows+=1
      assert expanded_windows<=2000000
      if n<H:candidates.add(n)
weak=[];strong=[];valuation_rows=[]
for n in sorted(candidates):
 c=comb(n,11);U=1;exponents=[]
 for p in [2,3,5,7]:
  z=c;e=0
  while z%p==0:z//=p;e+=1
  U*=p**e;exponents.append(e)
 hw=n**4<M**3*U;hs=K*n**37<=F*U**11
 if hw:weak.append(n)
 if hs:strong.append(n)
 valuation_rows.append([n,exponents,U,hw,hs])
report=dict(status='exact_complete_computation_not_Lean',started_utc=datetime.now(timezone.utc).isoformat(),H=H,M=M,K=K,input_sha256=hashlib.sha256(src.read_bytes()).hexdigest(),script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),positive_CRT_solutions=positive_solutions,expanded_windows=expanded_windows,unique_candidates=len(candidates),all_positive_parameters_enumerated=True,all_n_windows_enumerated=True,lower_branch_excluded_from_filter='n<=500 remains',weak_necessary_condition='n^4 < M^3*U',weak_survivors=weak,strong_necessary_condition='K*n^37 <= (2*11!)^11*U^11',strong_survivors=strong,conditional_remaining_upper=max([M]+strong),seconds=perf_counter()-started,new_B_original_results=0,missing=['accepted all grids and candidate membership coverage','accepted actual U finite evaluations and cancellation of n^84','all original n<=500 and listed survivors','initial height and preceding descent acceptance'])
(HERE/'terminal-candidates.json').write_text(json.dumps(sorted(candidates),separators=(',',':'))+'\n',encoding='utf-8')
(HERE/'terminal-valuations.json').write_text(json.dumps(valuation_rows,separators=(',',':'))+'\n',encoding='utf-8')
report['candidate_list_sha256']=hashlib.sha256((HERE/'terminal-candidates.json').read_bytes()).hexdigest();report['valuation_rows_sha256']=hashlib.sha256((HERE/'terminal-valuations.json').read_bytes()).hexdigest()
(HERE/'terminal-filter-result.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:report[k] for k in ['H','M','positive_CRT_solutions','expanded_windows','unique_candidates','weak_survivors','strong_survivors','conditional_remaining_upper','seconds']}))