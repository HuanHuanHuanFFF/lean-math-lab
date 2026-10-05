"""Retain the short original; recover exact bytes at a distinct resumable path."""
import datetime as dt
import hashlib
import json
from pathlib import Path
import shutil
import time
import urllib.request
from checkpoint_costs import capability

ROOT=Path('D:/ResearchArtifacts/b699-tail-twohour-finish')
OLD=ROOT/'b699-tail2h-upperinitial-37207871560.zip'
NEW=ROOT/'b699-tail2h-upperinitial-37207871560-resumed.zip'
SIZE=923266078
HASH='8d37f8464e3ca059ad1ee9baf865c5f72fe39074d2219240a01efa293cee2068'
ARTIFACT=11306775385
HERE=Path(__file__).resolve().parent

def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        while b:=f.read(1024*1024): h.update(b)
    return h.hexdigest()

def main():
    if shutil.disk_usage(ROOT).free < 14*1024**3: raise RuntimeError('Ten-GiB plus extraction reserve unavailable')
    partial={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'artifact':ARTIFACT,
        'oldPartial':str(OLD),'partialBytes':OLD.stat().st_size,'partialSha256':sha(OLD),
        'expectedBytes':SIZE,'expectedSha256':HASH,'scope':'retained incomplete transport; not an original complete ZIP or mathematical failure'}
    (ROOT/'upper-short-transport.json').write_text(json.dumps(partial,indent=2)+'\n')
    if not NEW.exists():
        with OLD.open('rb') as src, NEW.open('xb') as dst: shutil.copyfileobj(src,dst)
    url=capability(ARTIFACT); before=NEW.stat().st_size; start=time.monotonic(); last=start
    with NEW.open('ab') as out:
        while NEW.stat().st_size < SIZE:
            offset=NEW.stat().st_size; end=min(SIZE-1,offset+16*1024**2-1)
            done=0
            for retry in range(4):
                try:
                    req=urllib.request.Request(url,headers={'Range':f'bytes={offset}-{end}',
                        'Accept-Encoding':'identity','Cache-Control':'no-cache'})
                    with urllib.request.urlopen(req,timeout=30) as r:
                        if r.status!=206 or r.headers.get('Content-Range')!=f'bytes {offset}-{end}/{SIZE}':
                            raise RuntimeError('Exact ranged transport status or Content-Range refused')
                        while b:=r.read(1024*1024):
                            if done+len(b)>end-offset+1: raise RuntimeError('Ranged body oversized')
                            out.write(b); done+=len(b)
                    out.flush()
                    if done==0: raise RuntimeError('Ranged transport returned no bytes')
                    break
                except BaseException as exc:
                    out.flush()
                    if done: break
                    if retry==3: raise RuntimeError('Four transport retries exhausted; partial retained') from None
                    url=capability(ARTIFACT)
            now=time.monotonic()
            if now-last>20 or NEW.stat().st_size==SIZE:
                elapsed=now-start; rate=(NEW.stat().st_size-before)/elapsed
                row={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'bytes':NEW.stat().st_size,
                     'expectedBytes':SIZE,'rateBytesPerSecond':rate,'remainingSecondsEstimate':(SIZE-NEW.stat().st_size)/rate if rate else None,
                     'oldPartialUnchanged':True,'HTTPStatus':206,'rangeBoundToExpectedTotal':True,'target':str(NEW)}
                (HERE/'UPPER-TRANSFER.json').write_text(json.dumps(row,indent=2)+'\n')
                print(json.dumps(row),flush=True); last=now
    actual=sha(NEW)
    if NEW.stat().st_size!=SIZE or actual!=HASH: raise RuntimeError('Recovered full ZIP byte count or SHA mismatch; retain both files')
    result={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'status':'FULL-ORIGINAL-BYTES-VERIFIED',
            'archive':str(NEW),'bytes':SIZE,'sha256':actual,'oldPartialRetained':str(OLD)}
    (HERE/'UPPER-TRANSFER-COMPLETE.json').write_text(json.dumps(result,indent=2)+'\n'); print(json.dumps(result),flush=True)

if __name__=='__main__':
    try: main()
    except BaseException as exc:
        reason=str(exc)
        if 'http' in reason.lower(): reason='Transport failed; private URL omitted; partial retained'
        print(type(exc).__name__+': '+reason)
        raise SystemExit(1)
