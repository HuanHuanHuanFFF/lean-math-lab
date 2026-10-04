from pathlib import Path
import ctypes, hashlib, json, platform, subprocess, time
ROOT=Path.cwd()
OUT=Path(__file__).resolve().parent
RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702'
INTAKE=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects'
EXE=Path('D:/Temp/b699-r7-146a9702/review-a-degree/check_trace.exe')
INPUT=RUN/'experiments/a/source-min-degree/full-source-304.input.txt'
TRACE=RUN/'experiments/a/source-min-degree/full-source-304.trace.tsv'
CPP=INTAKE/'48/487596ab5c3ed683aef60cc5e0a930d0002e54a40e90edea471407827fa8e196.cpp'
GEN=INTAKE/'ce/cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4.cpp'
POINTS=[(3,0,1,77),(3,1,1,74),(4,0,1,67),(4,1,1,57),(4,2,2,56),
 (5,0,1,51),(5,1,1,54),(5,2,1,46),(6,0,1,40),(6,1,1,43),(6,2,1,48),(6,3,2,41),
 (7,0,1,31),(7,1,1,34),(7,2,1,39),(7,3,1,45),(8,0,1,25),(8,1,1,28),(8,2,1,33),(8,3,1,39),(8,4,2,52)]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(CPP)==CPP.stem and sha(GEN)==GEN.stem
assert sha(TRACE)=='75aeeb588e673ab55267762f7aed21fc9810dc3c34a74ff7c73664e340121d47'
ints=list(map(int,INPUT.read_text().split()))
assert ints[:5]==[152,304,257,0,21] and len(ints)==89
assert [tuple(ints[i:i+4]) for i in range(5,89,4)]==POINTS
assert all(257%d for d in range(2,17))
class PMC(ctypes.Structure):
 _fields_=[('cb',ctypes.c_ulong),('PageFaultCount',ctypes.c_ulong),('PeakWorkingSetSize',ctypes.c_size_t),('WorkingSetSize',ctypes.c_size_t),('QuotaPeakPagedPoolUsage',ctypes.c_size_t),('QuotaPagedPoolUsage',ctypes.c_size_t),('QuotaPeakNonPagedPoolUsage',ctypes.c_size_t),('QuotaNonPagedPoolUsage',ctypes.c_size_t),('PagefileUsage',ctypes.c_size_t),('PeakPagefileUsage',ctypes.c_size_t)]
getmem=ctypes.windll.psapi.GetProcessMemoryInfo
getmem.argtypes=[ctypes.c_void_p,ctypes.POINTER(PMC),ctypes.c_ulong]
args=[str(EXE),str(INPUT),str(TRACE)]
start=time.monotonic();peak=0
with (OUT/'receiver-run.log').open('w',encoding='utf-8') as log:
 proc=subprocess.Popen(args,cwd=ROOT,stdout=log,stderr=subprocess.STDOUT)
 while proc.poll() is None:
  pm=PMC();pm.cb=ctypes.sizeof(pm)
  if getmem(ctypes.c_void_p(int(proc._handle)),ctypes.byref(pm),pm.cb):peak=max(peak,pm.PeakWorkingSetSize)
  if peak>150*1024**2 or time.monotonic()-start>180:
   proc.terminate();proc.wait();raise RuntimeError('resource checkpoint; no infeasibility conclusion')
  time.sleep(.1)
 code=proc.wait()
seconds=time.monotonic()-start
assert code==0,(code,(OUT/'receiver-run.log').read_text())
res=json.loads((OUT/'receiver-run.log').read_text())
conditions=sum(sum(1 for b in range(m) for a in range(m) if a+w*b<m) for r,s,w,m in POINTS)
assert conditions==23476
assert {k:res[k] for k in ['verified','e','D','p','mode','conditions','nonredundant','dimension','min_weight']}==dict(verified=True,e=152,D=304,p=257,mode=0,conditions=23476,nonredundant=23476,dimension=0,min_weight=305)
assert len(res['weights'])==153 and sorted(res['weights'])==[305]*86+[306]*67
assert sum(res['weights'])-sum(2*i for i in range(153))==conditions
orig=json.loads((RUN/'experiments/a/source-min-degree/full-source-304.json').read_text())
assert res['weights']==orig['weights']
result=dict(reviewer='/root/review_source_degree',python=platform.python_version(),command=args,exit_code=code,seconds=round(seconds,6),receiver_peak_working_set_bytes=peak,full_B304_monomials=sum(305-2*b for b in range(153)),source_jets_checked=conditions,result=res,hashes={str(p.relative_to(ROOT)) if p.is_relative_to(ROOT) else str(p):sha(p) for p in [INPUT,TRACE,CPP,GEN,EXE]})
(OUT/'receiver-result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:result[k] for k in ['exit_code','seconds','receiver_peak_working_set_bytes','full_B304_monomials','source_jets_checked']},ensure_ascii=False))
print(json.dumps({'min_weight':res['min_weight'],'dimension':res['dimension'],'weight_counts':{'305':86,'306':67},'result_sha256':sha(OUT/'receiver-result.json')},ensure_ascii=False))
