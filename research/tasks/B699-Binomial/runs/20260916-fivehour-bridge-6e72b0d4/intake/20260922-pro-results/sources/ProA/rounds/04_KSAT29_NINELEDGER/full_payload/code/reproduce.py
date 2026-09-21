
from pathlib import Path
import subprocess, sys, shutil, hashlib, json
ROOT=Path(__file__).resolve().parents[1]
def run(cmd,log):
    with open(log,'w') as f:
        p=subprocess.run([str(x) for x in cmd],stdout=f,stderr=subprocess.STDOUT)
    if p.returncode: raise RuntimeError(f"failed {cmd}: see {log}")
def sha(p):
    h=hashlib.sha256()
    with open(p,'rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()
def main(dst):
    dst=Path(dst)
    if dst.exists(): raise RuntimeError("output directory must not exist")
    (dst/'bin').mkdir(parents=True); (dst/'logs').mkdir(); (dst/'generated').mkdir()
    b=dst/'bin'; logs=dst/'logs'; gen=dst/'generated'
    run(['g++','-O3','-std=c++17',ROOT/'code/satgates.cpp','-o',b/'satgates'],logs/'compile_sat.log')
    run(['g++','-O3','-std=c++17',ROOT/'code/jets.cpp','-o',b/'jets'],logs/'compile_jets.log')
    run(['g++','-O3','-std=c++17',ROOT/'code/verify_minors29.cpp','-o',b/'verify'],logs/'compile_verify.log')
    run(['g++','-O3','-std=c++17','-DPRIME=65521',ROOT/'code/verify_minors29.cpp','-o',b/'verifyx'],logs/'compile_verifyx.log')
    run([b/'satgates','29','0',gen/'gates29.txt'],logs/'gates.log')
    if sha(gen/'gates29.txt')!=sha(ROOT/'certificates/gates29.txt'): raise RuntimeError("gate mismatch")
    run([b/'jets',ROOT/'certificates/gates29.txt',gen/'jets29.txt','29'],logs/'jets.log')
    # Convert discovery rows to canonical minor certificate: determinant then row ids.
    with open(gen/'jets29.txt') as f, open(gen/'minors29.txt','w') as g:
        for ln in f:
            a=ln.split()
            if len(a)<4 or a[1] != '730': raise RuntimeError("rank failure")
            g.write(' '.join([a[2]]+a[3:])+'\n')
    if sha(gen/'minors29.txt')!=sha(ROOT/'certificates/minors29.txt'): raise RuntimeError("minor mismatch")
    run([b/'verify','29',ROOT/'certificates/gates29.txt',ROOT/'certificates/minors29.txt',gen/'det32749.txt'],logs/'verify32749.log')
    run([b/'verifyx','29',ROOT/'certificates/gates29.txt',ROOT/'certificates/minors29.txt',gen/'det65521.txt'],logs/'verify65521.log')
    run([sys.executable,'-B',ROOT/'code/ledger29.py',gen/'ledger'],logs/'ledger.log')
    result={
      'status':'PASS_CLEAN_KSAT29_AND_NINE_LEDGER',
      'gate_count':sum(1 for _ in open(ROOT/'certificates/gates29.txt')),
      'minor_count':sum(1 for _ in open(ROOT/'certificates/minors29.txt')),
      'matrix_dimension':730,
      'gates_sha256':sha(ROOT/'certificates/gates29.txt'),
      'minors_sha256':sha(ROOT/'certificates/minors29.txt'),
    }
    assert result['gate_count']==153 and result['minor_count']==153
    (dst/'receipt.json').write_text(json.dumps(result,indent=2)+'\n')
    print(result['status'],result)
if __name__=='__main__':
    main(sys.argv[1])
