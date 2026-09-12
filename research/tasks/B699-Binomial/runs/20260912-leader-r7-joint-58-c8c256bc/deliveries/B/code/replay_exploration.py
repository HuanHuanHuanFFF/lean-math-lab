#!/usr/bin/env python3
"""Optional replay of discovery probes. They are NOT part of proof acceptance."""
import argparse,hashlib,json,os,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
OLD='/mnt/data/b699-r7-mixed/new'
SCRIPTS=['probe_small_cells','probe_local_square','probe_three_positions','probe_minimal9','probe_three_positions_extended']

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/exploration-local');args=ap.parse_args()
    record=(ROOT/args.record).resolve();record.mkdir(parents=True,exist_ok=True)
    result={'kind':'exploration only','commands':[],'comparisons':[]};t0=time.perf_counter()
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    with tempfile.TemporaryDirectory(prefix='b699-probes-') as tmp:
        work=Path(tmp);(work/'code').mkdir();(work/'outputs').mkdir()
        for i,name in enumerate(SCRIPTS,1):
            original=ROOT/'exploration'/f'{name}.py'
            src=original.read_text(encoding='utf-8')
            (work/'code'/original.name).write_text(src.replace(OLD,str(work)),encoding='utf-8')
            cmd=[sys.executable,'-S','-B',str(work/'code'/original.name)];logfile=record/f'{i:02d}-{name}.log'
            t=time.perf_counter()
            with logfile.open('w',encoding='utf-8') as log:
                proc=subprocess.run(cmd,cwd=work,env=env,stdout=log,stderr=subprocess.STDOUT)
            result['commands'].append({'command':cmd,'returncode':proc.returncode,'seconds':time.perf_counter()-t,'log':logfile.name,
                                       'original_sha256':hashlib.sha256(original.read_bytes()).hexdigest()})
            if proc.returncode:raise RuntimeError('Probe failed: '+name)
            stored=ROOT/'exploration'/f'{name}.json'
            if stored.exists():
                rebuilt=(work/'outputs'/stored.name).read_bytes()
                if rebuilt!=stored.read_bytes():raise ValueError('Probe output changed: '+name)
                result['comparisons'].append({'file':stored.name,'byte_identical':True,'sha256':hashlib.sha256(rebuilt).hexdigest()})
            (record/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
            print(f'{i}/{len(SCRIPTS)} {name}: complete',flush=True)
    result.update(status='PASS',seconds=time.perf_counter()-t0)
    (record/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
if __name__=='__main__':main()
