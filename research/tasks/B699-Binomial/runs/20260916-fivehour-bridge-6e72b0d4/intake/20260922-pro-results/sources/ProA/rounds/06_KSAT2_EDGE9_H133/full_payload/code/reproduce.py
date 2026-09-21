from pathlib import Path
import argparse,subprocess,hashlib,json,sys,concurrent.futures
ROOT=Path(__file__).resolve().parents[1]
def sha(p):
 h=hashlib.sha256()
 with open(p,'rb') as f:
  for b in iter(lambda:f.read(1<<20),b''):h.update(b)
 return h.hexdigest()
def run(cmd,log):
 with open(log,'w') as f:p=subprocess.run([str(x) for x in cmd],stdout=f,stderr=subprocess.STDOUT)
 if p.returncode:raise RuntimeError(f'failed {cmd}; see {log}')
def canonical_hash(path,dim):
 h=hashlib.sha256();n=0
 for line in open(path):
  a=line.split()
  if not a:continue
  if len(a)<4 or int(a[1])!=dim:raise RuntimeError(('rank',path,a[:3],dim))
  h.update((' '.join(a[2:])+'\n').encode());n+=1
 return n,h.hexdigest()
def main():
 ap=argparse.ArgumentParser();ap.add_argument('out');ap.add_argument('--quick',action='store_true');ap.add_argument('--workers',type=int,default=3);a=ap.parse_args();out=Path(a.out)
 if out.exists():raise RuntimeError('output directory must not exist')
 for d in ['bin','logs','generated/gates','generated/rank','generated/ledger']:(out/d).mkdir(parents=True,exist_ok=True)
 cxx=['g++','-O3','-std=c++17']
 run(cxx+[ROOT/'code/satgates_kappa1_fast.cpp','-o',out/'bin/gk'],out/'logs/compile_gk.log')
 run(cxx+[ROOT/'code/satgates_zero_fast.cpp','-o',out/'bin/gz'],out/'logs/compile_gz.log')
 for prime,name,src in [(32749,'jk',ROOT/'code/jets_kappa1.cpp'),(32719,'jk2',ROOT/'code/jets_kappa1.cpp'),(32749,'jz',ROOT/'code/jets_zero.cpp'),(32719,'jz2',ROOT/'code/jets_zero.cpp')]:
  run(cxx+[f'-DMODULUS={prime}',src,'-o',out/f'bin/{name}'],out/f'logs/compile_{name}.log')
 ranks=json.load(open(ROOT/'certificates/summaries/rank_summary.json'));expected={r['q']:r for r in ranks['records']}
 for q in range(25,31):
  p=out/f'generated/gates/kappa1_q{q}.txt';run([out/'bin/gk',q,p],out/f'logs/gate_k1_q{q}.log')
  if sha(p)!=sha(ROOT/f'certificates/gates/kappa1_q{q}.txt'):raise RuntimeError(('gate mismatch',q))
 for q in range(31,37):
  p=out/f'generated/gates/zero_q{q}.txt';run([out/'bin/gz',q,p],out/f'logs/gate_zero_q{q}.log')
  if sha(p)!=sha(ROOT/f'certificates/gates/zero_q{q}.txt'):raise RuntimeError(('gate mismatch',q))
 done=[]
 if not a.quick:
  jobs=[]
  for q in range(25,31):
   for b,prime,key in [('jk',32749,'p32749_canonical_sha256'),('jk2',32719,'p32719_canonical_sha256')]:jobs.append((q,b,ROOT/f'certificates/gates/kappa1_q{q}.txt',key,prime))
  for q in range(31,37):
   for b,prime,key in [('jz',32749,'p32749_canonical_sha256'),('jz2',32719,'p32719_canonical_sha256')]:jobs.append((q,b,ROOT/f'certificates/gates/zero_q{q}.txt',key,prime))
  def one(job):
   q,b,g,key,prime=job;o=out/f'generated/rank/q{q}_p{prime}.txt';run([out/f'bin/{b}',g,o,q],out/f'logs/q{q}_p{prime}.log');n,h=canonical_hash(o,(q-2)**2+1);r=expected[q]
   if n!=r['gate_count'] or h!=r[key]:raise RuntimeError(('rank mismatch',q,prime,n,h))
   return q,prime,n
  with concurrent.futures.ThreadPoolExecutor(max_workers=a.workers) as ex:done=list(ex.map(one,jobs))
 run([sys.executable,'-B',ROOT/'code/ledger_new.py',out/'generated/ledger/result'],out/'logs/ledger.log')
 lr=json.load(open(out/'generated/ledger/result/ledger_result.json'))
 receipt={'status':'PASS_CLEAN_K2SAT_EDGE9_H133_REPLAY','mode':'quick' if a.quick else 'full','gates_regenerated':12,
          'full_rank_checks':len(done),'full_rank_system_prime_checks':sum(x[2] for x in done),
          'ledger_status':lr['status'],'nine_states':lr['nine_factor_E0_states'],'minimum_h':lr['minimum_nine_h']}
 (out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n');print(receipt['status'],json.dumps(receipt,sort_keys=True))
if __name__=='__main__':main()
