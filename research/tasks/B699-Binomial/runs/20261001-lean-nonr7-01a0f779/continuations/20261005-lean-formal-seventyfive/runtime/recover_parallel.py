"""Four bounded Range workers; all partials retained; final exact ZIP SHA required."""
import concurrent.futures as cf
import datetime as dt
import hashlib
import json
from pathlib import Path
import shutil
import threading
import time
import urllib.request
from checkpoint_costs import capability

ROOT=Path('D:/ResearchArtifacts/b699-tail-twohour-finish')
HERE=Path(__file__).resolve().parent
LOCK=threading.Lock()

def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        while b:=f.read(1024*1024): h.update(b)
    return h.hexdigest()

def recover(artifact,size,digest,prefix,target,tag):
    start=time.monotonic(); base=prefix.stat().st_size if prefix and prefix.exists() else 0
    chunks=ROOT/('chunks-'+tag); chunks.mkdir(exist_ok=True)
    if shutil.disk_usage(ROOT).free<14*1024**3: raise RuntimeError('Disk reserve rejected')
    ranges=[(x,min(size,x+8*1024**2)) for x in range(base,size,8*1024**2)]
    done=base
    shared_url=None
    for attempt in range(8):
        try:
            shared_url=capability(artifact); break
        except BaseException:
            time.sleep(.2)
    if shared_url is None: raise RuntimeError('Fresh artifact capability unavailable; all partials retained')
    def worker(pair):
        nonlocal done
        a,end=pair; p=chunks/(str(a)+'-'+str(end)+'.part')
        present=p.stat().st_size if p.exists() else 0
        if present>end-a: raise RuntimeError('Chunk oversized; preserve evidence')
        for trial in range(20):
            if present==end-a: return p
            try:
                url=shared_url if trial==0 else capability(artifact)
                req=urllib.request.Request(url,headers={'Range':f'bytes={a+present}-{end-1}',
                   'Accept-Encoding':'identity','Cache-Control':'no-cache'})
                with urllib.request.urlopen(req,timeout=20) as r, p.open('ab') as out:
                    if r.status!=206 or r.headers.get('Content-Range')!=f'bytes {a+present}-{end-1}/{size}':
                        raise RuntimeError('Bounded Content-Range refused')
                    got=0
                    while b:=r.read(256*1024):
                        if present+got+len(b)>end-a: raise RuntimeError('Chunk body oversized')
                        out.write(b); got+=len(b)
                    out.flush()
                with LOCK: done+=got
                present=p.stat().st_size
                url=req=None
            except BaseException:
                present=p.stat().st_size if p.exists() else 0
                time.sleep(.2)
        raise RuntimeError('Chunk retries exhausted; partial retained')
    with cf.ThreadPoolExecutor(max_workers=4) as pool:
        futures=[pool.submit(worker,x) for x in ranges]
        while any(not f.done() for f in futures):
            time.sleep(3)
            with LOCK:
                actual=base+sum(p.stat().st_size for p in chunks.glob('*.part'))
                elapsed=time.monotonic()-start; rate=(actual-base)/elapsed
                row={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'tag':tag,'bytes':actual,'expectedBytes':size,
                    'rateBytesPerSecond':rate,'remainingSecondsEstimate':(size-actual)/rate if rate else None,
                    'workers':4,'bufferBytesUpperBound':4*256*1024,'oldPartialsRetained':True,'target':str(target)}
                (HERE/('PARALLEL-'+tag+'.json')).write_text(json.dumps(row,indent=2)+'\n')
            if int(elapsed)%20<3: print(json.dumps(row),flush=True)
        paths=[f.result() for f in futures]
    if target.exists(): raise RuntimeError('Refuse overwriting final target')
    with target.open('xb') as out:
        if base:
            with prefix.open('rb') as src: shutil.copyfileobj(src,out)
        for p in paths:
            with p.open('rb') as src: shutil.copyfileobj(src,out)
    if target.stat().st_size!=size or sha(target)!=digest: raise RuntimeError('Full recovered ZIP hash differs; preserve all bytes')
    result={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'status':'FULL-ORIGINAL-BYTES-VERIFIED',
        'artifact':artifact,'archive':str(target),'bytes':size,'sha256':digest,'oldPartialsRetained':True}
    (HERE/('COMPLETE-'+tag+'.json')).write_text(json.dumps(result,indent=2)+'\n'); print(json.dumps(result),flush=True)

if __name__=='__main__':
    import sys
    try:
        if sys.argv[1]=='tiny':
            recover(11306801187,2416995,'fb0642947f4f81af6b8c206e4f9acfd5b381d10c34a4df166711e95e0a795e6c',
                None,ROOT/'b699-tail2h-tinytail30000-37210857364-complete.zip','tiny')
        else:
            recover(11306775385,923266078,'8d37f8464e3ca059ad1ee9baf865c5f72fe39074d2219240a01efa293cee2068',
                ROOT/'b699-tail2h-upperinitial-37207871560-resumed.zip',
                ROOT/'b699-tail2h-upperinitial-37207871560-complete.zip','upper')
    except BaseException as exc:
        reason=str(exc)
        if 'http' in reason.lower(): reason='Transport failure; private URL omitted'
        print(type(exc).__name__+': '+reason); raise SystemExit(1)
