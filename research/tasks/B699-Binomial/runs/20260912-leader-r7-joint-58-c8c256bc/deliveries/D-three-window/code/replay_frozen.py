#!/usr/bin/env python3
"""Bounded, separately logged optional replay of frozen D/B mathematical checks.
D tail, B old 523 states, and A old large certificates are not replayed.
"""
from __future__ import annotations
import argparse,datetime,hashlib,json,os,subprocess,sys,tempfile,time,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def extract(archive: Path,dest: Path):
    with zipfile.ZipFile(archive) as z:
        for info in z.infolist():
            p=Path(info.filename)
            if p.is_absolute() or '..' in p.parts or ((info.external_attr>>16)&0o170000)==0o120000:raise ValueError('unsafe zip')
        z.extractall(dest)

def main(record):
    record.mkdir(parents=True,exist_ok=True);env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1');runs=[]
    data={'status':'IN_PROGRESS','runs':runs,'D_tail_replayed':False,'B_old_523_states_replayed':False,
          'A_old_large_chain_replayed':False,'lean_executed':False}
    def run(name,cmd,cwd):
        start=time.perf_counter()
        try:r=subprocess.run(cmd,cwd=cwd,env=env,text=True,capture_output=True,timeout=45)
        except subprocess.TimeoutExpired as exc:
            runs.append({'label':name,'status':'TIMEOUT_45_SECONDS','seconds':time.perf_counter()-start})
            data['status']='INCOMPLETE_TIMEOUT';(record/'receipt.json').write_text(json.dumps(data,indent=2)+'\n');raise RuntimeError(name+' timeout') from exc
        text=r.stdout+r.stderr;(record/(name+'.log')).write_text(text)
        runs.append({'label':name,'returncode':r.returncode,'seconds':time.perf_counter()-start,
                     'log':name+'.log','log_sha256':hashlib.sha256(text.encode()).hexdigest()})
        if r.returncode:
            data['status']='FAIL';(record/'receipt.json').write_text(json.dumps(data,indent=2)+'\n');raise RuntimeError(name+' failed')
        return r.stdout
    with tempfile.TemporaryDirectory(prefix='b699-frozen-replay-') as tmp:
        tmp=Path(tmp);base=tmp/'Dverified';extract(ROOT/'frozen/D-transfer-verified.zip',base)
        source=base/'B699-ProD-R7-transfer-verified-20260913'
        # Verify exactly the source's own frozen manifest before executing its scripts.
        for name,h in json.loads((source/'MANIFEST.json').read_text()).items():
            assert hashlib.sha256((source/name).read_bytes()).hexdigest()==h
        generated=tmp/'regenerated-D';generated.mkdir()
        out=run('D-generate',[sys.executable,'-B',str(source/'code/generate.py'),str(generated)],source)
        run('D-verify',[sys.executable,'-B',str(source/'code/verify.py'),str(generated/'certificate.json')],source)
        assert (generated/'certificate.json').read_bytes()==(source/'evidence/certificate.json').read_bytes()
        run('D-check-new',[sys.executable,'-B',str(source/'code/check_new.py')],source)
        data['D_regenerated_certificate_byte_identical']=True
        data['D_statistics']=json.loads(out)
        source=tmp/'Bcubic';extract(ROOT/'frozen/B-cubic.zip',source)
        run('Bcubic',[sys.executable,'-B',str(source/'code/reproduce.py'),'--record',str(record/'Bcubic')],source)
    data.update(status='PASS_FROZEN_SEPARATE_REPLAYS',finished_utc=datetime.datetime.now(datetime.timezone.utc).isoformat())
    (record/'receipt.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n');print(json.dumps(data))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--record',type=Path,required=True);a=p.parse_args();main(a.record.resolve())
