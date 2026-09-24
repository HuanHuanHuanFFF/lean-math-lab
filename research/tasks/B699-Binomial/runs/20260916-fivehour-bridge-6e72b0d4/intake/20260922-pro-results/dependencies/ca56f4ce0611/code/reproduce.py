import subprocess,sys,hashlib,json,shutil
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def sha(p):
 h=hashlib.sha256()
 with open(p,'rb') as f:
  for b in iter(lambda:f.read(1<<20),b''):h.update(b)
 return h.hexdigest()
def run(cmd,log,timeout=240):
 with open(log,'w') as f:
  p=subprocess.run([str(x) for x in cmd],stdout=f,stderr=subprocess.STDOUT,timeout=timeout)
 if p.returncode:raise RuntimeError(f'failed {cmd}, see {log}')
def main(dst):
 dst=Path(dst)
 if dst.exists():raise RuntimeError('output directory exists')
 for s in ['bin','logs','generated']: (dst/s).mkdir(parents=True,exist_ok=True)
 b=dst/'bin';g=dst/'generated';l=dst/'logs'
 run(['g++','-O3','-std=c++17',ROOT/'code/satgates.cpp','-o',b/'satgates'],l/'compile_sat.log')
 run(['g++','-O3','-std=c++17',ROOT/'code/jets.cpp','-o',b/'jets'],l/'compile_jets.log')
 run(['g++','-O3','-std=c++17',ROOT/'code/verify_minors30.cpp','-o',b/'verify32749'],l/'compile_v1.log')
 run(['g++','-O3','-std=c++17','-DPRIME=32719',ROOT/'code/verify_minors30.cpp','-o',b/'verify32719'],l/'compile_v2.log')
 run([b/'satgates','30','0',g/'gates30.txt'],l/'gates30.log')
 assert sha(g/'gates30.txt')==sha(ROOT/'certificates/gates30.txt')
 run([b/'jets',ROOT/'certificates/gates30.txt',g/'raw_minors30.txt','30'],l/'jets30.log')
 with open(g/'raw_minors30.txt') as f,open(g/'minors30.txt','w') as o:
  for ln in f:
   a=ln.split();o.write(' '.join([a[2]]+a[3:])+'\n')
 assert sha(g/'minors30.txt')==sha(ROOT/'certificates/minors30.txt')
 run([b/'verify32749','30',ROOT/'certificates/gates30.txt',ROOT/'certificates/minors30.txt',g/'dets32749.txt'],l/'verify32749.log')
 run([b/'verify32719','30',ROOT/'certificates/gates30.txt',ROOT/'certificates/minors30.txt',g/'dets32719.txt'],l/'verify32719.log')
 run([sys.executable,'-B',ROOT/'code/ledger_edge9.py',g/'ledger'],l/'ledger.log')
 rec={'status':'PASS_CLEAN_KSAT30_EDGE9_REPLAY','q30_gate_count':sum(1 for _ in open(ROOT/'certificates/gates30.txt')),'q30_minor_count':sum(1 for _ in open(ROOT/'certificates/minors30.txt')),'q30_matrix_dimension':785,'gates_sha256':sha(ROOT/'certificates/gates30.txt'),'minors_sha256':sha(ROOT/'certificates/minors30.txt')}
 assert rec['q30_gate_count']==185 and rec['q30_minor_count']==185
 (dst/'receipt.json').write_text(json.dumps(rec,indent=2)+'\n');print(rec['status'])
if __name__=='__main__':main(sys.argv[1])
