from pathlib import Path
from math import comb
import json,time,hashlib,ctypes,os
ROOT=Path.cwd()
SRC=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/experiments/a/final-row-frontier.json'
OUT=Path(__file__).parent/'joint-geometry-probe.json'
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
states=json.loads(SRC.read_text())['E1']
Q=6; D=13; GBOUND=30

def compose(n,k):
    if k==1:
        yield (n,); return
    for j in range(n+1):
        for rem in compose(n-j,k-1): yield (j,)+rem

def trace_matrix(S):
    rows=[]
    for start in (0,1):
        a=sum((-1)**(4-j)*comb(4,j)*(3+start+j)*S[start+j] for j in range(5))
        b=sum((-1)**(4-j)*comb(4,j)*S[start+j] for j in range(5))
        rows.append((a,b))
    if rows[0][0]*rows[1][1]!=rows[1][0]*rows[0][1]: return None
    r=next((r for r in rows if r!=(0,0)),None)
    A=(r[1],-r[0]) if r else (1,-20)
    if any(A[0]*r+A[1]==0 for r in range(3,9)): return None
    return dict(matrix=rows,alpha=A[0],beta=A[1])

opts=[]
for rr in range(3,9):
    a=[]
    for m in compose(Q,rr//2+1):
        load=[0]*9; gg=0; zz=0; tr=0
        for ss,mm in enumerate(m):
            zz+=mm>0; tr+=mm*ss*(rr-ss)
            if ss*2==rr:
                gg+=2*comb(mm,2);load[ss]+=2*mm
            else:
                gg+=comb(mm,2);load[ss]+=mm;load[rr-ss]+=mm
        if max(load)>D or gg>GBOUND:continue
        pair=[]
        for st in states:
            vv=st['v'][rr-3]; val=0
            for ss,mm in enumerate(m):
                if 2*ss==rr:val+=mm*max(DIAG[rr-3]-vv-2*mm,0)
                else: val+=mm*max(OFF[rr-3][ss]-vv-mm,0)
            pair.append(val)
        a.append(dict(m=m,load=load,g=gg,z=zz,trace=tr,pair=pair))
    a.sort(key=lambda x:(x['g'],max(x['load']),x['m']))
    opts.append(a)
limits=[D*(st['h']-Q) for st in states]
visits=0;leaves=0;traces=0;found=None;started=time.monotonic()
min_g=[min(x['g'] for x in a) for a in opts]

def dfs(row,load,g,z,par,chosen):
    global visits,leaves,traces,found
    visits+=1
    if visits%100000==0 and time.monotonic()-started>40:raise TimeoutError('bounded probe, no emptiness claim')
    if row==6:
        leaves+=1
        if z<14:return False
        t=trace_matrix([x['trace'] for x in chosen])
        if t is None:return False
        traces+=1
        if any(v>b for v,b in zip(par,limits)):return False
        found=dict(q=Q,weighted_degree=D,multiplicities=[x['m'] for x in chosen],kappa=[0,0,0],cost=[0]*6,z=z,genus_source=g,genus_bound=GBOUND,line_loads=load,line_bound=D,root_sums=[x['trace'] for x in chosen],trace=t,states=[dict(idx=st['idx'],h=st['h'],v=st['v'],source_intersection_lower=v,intersection_upper=b,slack=b-v) for st,v,b in zip(states,par,limits)])
        return True
    for o in opts[row]:
        ng=g+o['g']
        if ng+sum(min_g[row+1:])>GBOUND:continue
        nl=[a+b for a,b in zip(load,o['load'])]
        if max(nl)>D:continue
        np=[a+b for a,b in zip(par,o['pair'])]
        if any(v>b for v,b in zip(np,limits)):continue
        if dfs(row+1,nl,ng,z+o['z'],np,chosen+[o]):return True
    return False

status='not_started'
try:status='witness_found' if dfs(0,[0]*9,0,0,[0]*len(states),[]) else 'no_witness_for_tested_relaxation'
except TimeoutError:status='timeout_no_claim'
mem=(ctypes.c_ulonglong*8)();mem[0]=64;ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(mem))
result=dict(scope='Diagnostic integer source profile only: not a polynomial, not an actual factor, not a rational G or original NC point. Includes zero-cost q6, z, nine-line bounds, epsilon1 genus bound, first coefficient compatibility, and the joint resultant bound for all 58 author E1 states.',source_sha256=hashlib.sha256(SRC.read_bytes()).hexdigest(),status=status,visits=visits,leaves=leaves,trace_passes=traces,seconds=round(time.monotonic()-started,3),resource_observation=dict(available_physical_bytes=mem[2],logical_cpus=os.cpu_count()),row_options=[len(a) for a in opts],witness=found)
OUT.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in result.items() if k!='witness'},ensure_ascii=False))
if found:print(json.dumps({k:v for k,v in found.items() if k!='states'},ensure_ascii=False));print('slack_min_max',min(x['slack'] for x in found['states']),max(x['slack'] for x in found['states']))
