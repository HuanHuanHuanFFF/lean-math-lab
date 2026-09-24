#!/usr/bin/env python3
"""Rebuild new evidence only, in a fresh directory. No network or historical path dependency."""
import argparse,hashlib,json,os,platform,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);ap.add_argument('--cross',action='store_true');a=ap.parse_args()
    out=Path(a.out).resolve()
    if out.exists():raise SystemExit('Output directory must not already exist.')
    out.mkdir(parents=True);(out/'logs').mkdir();build=out/'build';build.mkdir()
    started=time.time();commands=[];results={}
    env=dict(os.environ,LC_ALL='C')
    compiler=subprocess.check_output(['g++','--version'],text=True).splitlines()[0]
    specs=[('gamma5',5,0,0),('tail5',5,1,1),('tail6',6,1,1),('tail7',7,1,1)]
    for name,q,mode,peel in specs:
        exe=build/name
        cmd=['g++','-std=c++17','-O3',f'-DDEG={q}',f'-DMODE={mode}',f'-DWEIGHTED_PEEL={peel}',str(ROOT/'code/enumerate.cpp'),'-o',str(exe)]
        with (out/'logs'/f'{name}_build.log').open('w') as log:subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT,env=env,check=True)
        commands.append(cmd)
        cmd=[str(exe),str(out/f'{name}.json')]
        with (out/'logs'/f'{name}.log').open('w') as log:subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT,env=env,check=True)
        commands.append(cmd);data=json.loads((out/f'{name}.json').read_text());results[name]=data
        assert data['q']==q and data['mode']==mode
        if name=='gamma5':assert data['consistent']==13
        else:assert data['consistent']==0
        print('ACCEPTED',name,'options',data['options'],'consistent',data['consistent'],flush=True)
    import checks,ledger
    checks.run(ROOT,out,results['gamma5']);ledger.run(out)
    if a.cross:
        name='gamma5_cross';exe=build/name
        cmd=['g++','-std=c++17','-O3','-DDEG=5','-DMODE=0','-DWEIGHTED_PEEL=0','-DMODULUS=65521','-DALT_ORDER=1',str(ROOT/'code/enumerate.cpp'),'-o',str(exe)]
        with (out/'logs'/f'{name}_build.log').open('w') as log:subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT,env=env,check=True)
        commands.append(cmd);cmd=[str(exe),str(out/f'{name}.json')]
        with (out/'logs'/f'{name}.log').open('w') as log:subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT,env=env,check=True)
        commands.append(cmd);c=json.loads((out/f'{name}.json').read_text())
        assert sorted(c['multiplicities'])==sorted(results['gamma5']['multiplicities'])
        print('ACCEPTED gamma5 second prime and row order',flush=True)
    mathfiles=sorted(p for p in out.glob('*.json') if p.name!='receipt.json')
    receipt=dict(status='PASS_NEW_GAMMA5_TAIL567_TRACE_H127',elapsed_seconds=time.time()-started,
                 python=sys.version,platform=platform.platform(),compiler=compiler,
                 inputs={str(p.relative_to(ROOT)):sha(p) for folder in ['code','certificates','sources'] for p in sorted((ROOT/folder).glob('*')) if p.is_file()},
                 mathematical_outputs={p.name:sha(p) for p in mathfiles},commands=commands,
                 no_network=True,no_Lean=True,external_independent_review=False,repository_writes=False)
    (out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(receipt['status'],flush=True)
if __name__=='__main__':main()
