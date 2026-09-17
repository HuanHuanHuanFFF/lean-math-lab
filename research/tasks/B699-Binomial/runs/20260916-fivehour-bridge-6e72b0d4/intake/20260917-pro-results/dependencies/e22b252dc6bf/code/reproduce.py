"""Synchronous, fresh-directory replay of ONLY this round's new checks."""
from pathlib import Path
import argparse,datetime,hashlib,json,subprocess,sys,tempfile,time
ROOT=Path(__file__).resolve().parents[1]
COMMANDS=['check_algebra.py','check_content.py','check_gap.py','check_rows.py','independent_check.py']
EXPECTED=['algebra.json','content.json','gap_regression.json','gap_witnesses.json','rows.json','row_witnesses.json','independent.json']

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def snapshot():
    rows=json.loads((ROOT/'MANIFEST.json').read_text())['files']
    return {r['path']:digest(ROOT/r['path']) for r in rows}

def run(record):
    record=(ROOT/record).resolve() if not record.is_absolute() else record
    record.mkdir(parents=True,exist_ok=True)
    subprocess.run([sys.executable,'-S','-B',str(ROOT/'verify_manifest.py')],check=True,cwd=ROOT)
    before=snapshot();start=time.monotonic();runs=[];comparisons=[]
    with tempfile.TemporaryDirectory(prefix='b699-new-checks-') as tmp:
        out=Path(tmp)/'outputs';out.mkdir()
        for script in COMMANDS:
            cmd=[sys.executable,'-S','-B',str(ROOT/'code'/script),'--out',str(out)]
            begin=datetime.datetime.now(datetime.timezone.utc).isoformat();t=time.monotonic()
            result=subprocess.run(cmd,cwd=ROOT,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
            log=record/(script+'.log');log.write_text(result.stdout)
            runs.append({'script':script,'argv':cmd,'started_utc':begin,'elapsed_seconds':time.monotonic()-t,'returncode':result.returncode,'log':log.name})
            if result.returncode:
                (record/'reproduction.json').write_text(json.dumps({'status':'FAILED','runs':runs},indent=2)+'\n')
                raise SystemExit('FAIL '+script)
        for name in EXPECTED:
            a=out/name;b=ROOT/'outputs'/name
            equal=a.read_bytes()==b.read_bytes()
            comparisons.append({'file':name,'bytes':a.stat().st_size,'sha256':digest(a),'byte_equal':equal})
            if not equal:raise SystemExit('MISMATCH '+name)
    after=snapshot();assert before==after
    result={'status':'PASS','started_from_empty_outputs':True,'commands':runs,'comparisons':comparisons,'all_static_hashes_unchanged':True,
            'static_file_count':len(before),'elapsed_seconds':time.monotonic()-start,
            'verification_level':'Author exact arithmetic/finite regression and author second implementation; no Lean, independent researcher or human review.'}
    (record/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('REPLAY PASS',len(runs),'commands',len(comparisons),'byte-equal outputs')
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--record',type=Path,default=Path('replay/local'));run(p.parse_args().record)
