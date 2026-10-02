#!/usr/bin/env python3
"""Build evidence with two actual fresh-unzip replays; no repository operations.
Writes release artifacts beside the evidence directory, never network paths.
"""
from pathlib import Path
import datetime,hashlib,json,os,shutil,subprocess,sys,tempfile,zipfile,time
ROOT=Path(__file__).resolve().parents[1];PARENT=ROOT.parent

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()

def manifest(exclusions):
    paths=sorted(p for p in ROOT.rglob('*') if p.is_file() and p.relative_to(ROOT).as_posix() not in exclusions and '__pycache__' not in p.parts)
    return ''.join(sha(p)+'  '+p.relative_to(ROOT).as_posix()+'\n' for p in paths)

def makezip(path,exclusions=set()):
    with zipfile.ZipFile(path,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
        for p in sorted(ROOT.rglob('*')):
            rel=p.relative_to(ROOT).as_posix()
            if not p.is_file() or rel in exclusions or '__pycache__' in p.parts:continue
            info=zipfile.ZipInfo(ROOT.name+'/'+rel,date_time=(2026,10,2,0,0,0));info.compress_type=zipfile.ZIP_DEFLATED;info.external_attr=0o100644<<16
            z.writestr(info,p.read_bytes(),compress_type=zipfile.ZIP_DEFLATED,compresslevel=9)

def clean_replay(archive,tag):
    temp=Path(tempfile.mkdtemp(prefix='B_R2_'+tag+'_',dir=PARENT))
    with zipfile.ZipFile(archive) as z:
        bad=z.testzip()
        if bad:raise ValueError('ZIP CRC error: '+bad)
        names=z.namelist()
        if len(names)!=len(set(names)):raise ValueError('duplicate ZIP paths')
        for n in names:
            p=Path(n)
            if p.is_absolute() or '..' in p.parts:raise ValueError('unsafe ZIP member')
        z.extractall(temp)
    env=os.environ.copy();env.pop('PYTHONPATH',None);env.pop('PYTHONHOME',None)
    proc=subprocess.run([sys.executable,'-I','-B',str(temp/ROOT.name/'replay.py')],cwd=temp/ROOT.name,env=env,text=True,capture_output=True)
    log=PARENT/(ROOT.name+'-'+tag+'-replay.log');log.write_text(proc.stdout+'\nSTDERR:\n'+proc.stderr,encoding='utf-8')
    if proc.returncode:raise RuntimeError('clean replay failed: '+str(log))
    report=json.loads(proc.stdout)
    if report['status']!='PASS':raise RuntimeError('clean replay not PASS')
    return {'status':'PASS','phase':tag,'checked_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
      'fresh_directory':str(temp),'archive_crc':'PASS','unique_file_members':len(names),
      'command':[sys.executable,'-I','-B','replay.py'],'result':report}

def main():
    for p in list(ROOT.rglob('__pycache__')):shutil.rmtree(p)
    excluded={'PAYLOAD_SHA256SUMS','SHA256SUMS','receipts/CLEAN_REPLAY.json'}
    (ROOT/'PAYLOAD_SHA256SUMS').write_text(manifest(excluded))
    stage=PARENT/(ROOT.name+'-payload-stage.zip')
    makezip(stage,{'SHA256SUMS','receipts/CLEAN_REPLAY.json'})
    print('payload zip created; fresh replay starting',flush=True)
    receipt=clean_replay(stage,'PAYLOAD')
    receipt['binding']='Exact mathematical payload SHA256 manifest; final ZIP bound by the external FINAL_REPLAY receipt.'
    receipt['payload_manifest_sha256']=sha(ROOT/'PAYLOAD_SHA256SUMS')
    (ROOT/'receipts/CLEAN_REPLAY.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    (ROOT/'SHA256SUMS').write_text(manifest({'SHA256SUMS'}))
    final=PARENT/(ROOT.name+'-evidence.zip');makezip(final)
    print('final zip created; fresh final replay starting',flush=True)
    final_receipt=clean_replay(final,'FINAL')
    final_receipt.update(archive_filename=final.name,archive_sha256=sha(final),archive_bytes=final.stat().st_size,
       input_source_sha256=sha(ROOT/'inputs/PREVIOUS_EVIDENCE.zip'),result_id='REG4-EXCEPTION-EMPTY',
       evidence_level='author proof plus same-author exact arithmetic; no Lean or external independent mathematics review')
    fr=PARENT/(ROOT.name+'-FINAL_REPLAY.json');fr.write_text(json.dumps(final_receipt,ensure_ascii=False,indent=2)+'\n')
    (PARENT/(final.name+'.sha256')).write_text(sha(final)+'  '+final.name+'\n')
    print(json.dumps({'status':'PASS','zip':str(final),'zip_sha256':sha(final),'bytes':final.stat().st_size,
      'members':final_receipt['unique_file_members'],'final_receipt':str(fr),'final_replay_elapsed':final_receipt['result']['elapsed_seconds']},ensure_ascii=False,indent=2),flush=True)
if __name__=='__main__':main()
