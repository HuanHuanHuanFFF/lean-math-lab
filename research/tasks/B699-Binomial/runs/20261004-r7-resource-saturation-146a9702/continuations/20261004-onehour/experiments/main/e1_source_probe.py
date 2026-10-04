from pathlib import Path
import json,subprocess,hashlib,sys,time
ROOT=Path.cwd();RUN=ROOT/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';C=RUN/'continuations/20261004-onehour';OUT=C/'experiments/main/e1-kernels';OUT.mkdir(exist_ok=True);TMP=Path('D:/Temp/b699-r7-onehour-20261004/main-e1');TMP.mkdir(parents=True,exist_ok=True)
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39));DIAG=(0,56,0,41,0,52)
src=ROOT/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results/objects/ce/cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4.cpp';assert hashlib.sha256(src.read_bytes()).hexdigest()=='cecfba9614de808b8388f0c73360115dd8fb74246262d2b4597b93a2108fc0f4'
exe=TMP/'module.exe'
if not exe.exists():
 r=subprocess.run(['D:/CLion/CLion 2025.1.1/bin/mingw/bin/g++.exe','-O2','-std=c++17',str(src),'-o',str(exe)],capture_output=True,text=True,timeout=45);assert r.returncode==0,r.stderr; (OUT/'build.log').write_text(r.stdout+r.stderr)
ss=json.loads((RUN/'experiments/a/final-row-frontier.json').read_text())['E1'];ids=list(map(int,sys.argv[1:]));chosen=[s for s in ss if s['idx'] in ids]
for st in chosen:
 pts=[]
 for r,(off,di,v) in enumerate(zip(OFF,DIAG,st['v']),3):
  for s in range(r//2+1):pts.append((r,s,2,max(di-v,0)) if 2*s==r else (r,s,1,max(off[s]-v,0)))
 h=st['h'];L=305-sum(st['v']);assert L==2*h+1
 inp=f'{h} {L} 257 0 21\n'+''.join(' '.join(map(str,p))+'\n' for p in pts);name='s'+str(st['idx']);pref=TMP/name;(OUT/(name+'.input.txt')).write_text(inp)
 start=time.monotonic();r=subprocess.run([str(exe),str(pref)],input=inp,capture_output=True,text=True,timeout=45);assert r.returncode==0,r.stderr
 d=json.loads(pref.with_suffix('.json').read_text());d.update(state=st,source_sha256=hashlib.sha256(src.read_bytes()).hexdigest(),trace_sha256=hashlib.sha256(pref.with_suffix('.trace.tsv').read_bytes()).hexdigest(),trace_location=str(pref.with_suffix('.trace.tsv')),interpretation='zero kernel excludes necessary state; nonzero finite-field kernel is not rational realizability')
 (OUT/(name+'.json')).write_text(json.dumps(d,indent=2)+'\n');(OUT/(name+'.log')).write_text(r.stdout+r.stderr);print(json.dumps({k:d[k] for k in ['e','L','conditions','dimension','min_weight','seconds']}|{'idx':st['idx']}),flush=True)
