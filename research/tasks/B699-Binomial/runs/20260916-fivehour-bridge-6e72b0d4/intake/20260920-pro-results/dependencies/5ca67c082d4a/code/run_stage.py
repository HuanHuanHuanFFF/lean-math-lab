import pathlib,sys,subprocess,os,json
p=pathlib.Path(__file__).resolve().parents[1];label=sys.argv[1]; jobs=json.loads(sys.argv[2]);env=dict(os.environ,OPENBLAS_NUM_THREADS='1',OMP_NUM_THREADS='1')
for name,args in jobs:
 with (p/'logs'/f'{name}.log').open('w') as f:
  cmd=[sys.executable,'-u',str(p/'code'/args[0])]+[str(p/a) if a.startswith(('evidence/','verification/')) else a for a in args[1:]]
  r=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=env)
 if r.returncode: raise SystemExit(r.returncode)
print(label,'COMPLETE',flush=True)
