"""Byte-frozen sources; bounded, selective extraction into this delivery's cache.
No old mathematics is replayed by extraction or SHA256 checks.
"""
from pathlib import Path, PurePosixPath
import hashlib,json,shutil,zipfile
ROOT=Path(__file__).resolve().parents[1]
CACHE=ROOT/'_cache'
_DONE=None

def sha256(path):
    h=hashlib.sha256()
    with Path(path).open('rb') as f:
        for block in iter(lambda:f.read(1<<20),b''):h.update(block)
    return h.hexdigest()

def selected_extract(archive,out,predicate):
    out=Path(out);out.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(archive) as z:
        infos=[i for i in z.infolist() if predicate(i.filename)]
        if sum(i.file_size for i in infos)>180_000_000:raise ValueError('extraction budget exceeded')
        for i in infos:
            p=PurePosixPath(i.filename)
            if p.is_absolute() or '..' in p.parts or ((i.external_attr>>16)&0o170000)==0o120000:raise ValueError('unsafe archive member')
            dest=out.joinpath(*p.parts)
            if i.is_dir():dest.mkdir(parents=True,exist_ok=True);continue
            dest.parent.mkdir(parents=True,exist_ok=True)
            with z.open(i) as src,dest.open('wb') as dst:shutil.copyfileobj(src,dst,1<<20)

def restore():
    global _DONE
    if _DONE is not None:return _DONE
    meta=json.loads((ROOT/'SOURCE_INPUT.json').read_text())
    pack=ROOT/'adopted/INPUT_TASK_PACKET.zip'
    if pack.stat().st_size!=meta['packet_size'] or sha256(pack)!=meta['packet_sha256']:raise ValueError('input packet hash mismatch')
    mark=CACHE/'RESTORED_SHA256'
    pa=CACHE/'packet';a=CACHE/'A/B699-ProA-R7-collision-20260912';i=CACHE/'i14/B699-ProA-i14-descent-20260911';e=CACHE/'effective/B699-ProA-i14-contentG-resume-20260911'
    if not(mark.exists() and mark.read_text().strip()==meta['packet_sha256']):
        selected_extract(pack,pa,lambda n:n in ['START_HERE.md','tasks/PRO-A.md','context/frontier.md','SOURCE_REVISION.json','originals/PRO-A.zip'])
        selected_extract(pa/'originals/PRO-A.zip',CACHE/'A',lambda n:True)
        old=a/'adopted-inputs/B699-ProA-i14-closed-i9-finite-evidence-20260911.zip'
        selected_extract(old,CACHE/'i14',lambda n:'/notes/' in n or '/code/' in n or '/evidence/blocks/' in n or n.endswith('/evidence/blocks_check.json') or n.endswith('/adopted/archives/B699-ProA-i14-effective-height-evidence-20260911.zip'))
        selected_extract(i/'adopted/archives/B699-ProA-i14-effective-height-evidence-20260911.zip',CACHE/'effective',lambda n:'/code/' in n or '/notes/' in n or n.endswith('/input/cuts.json') or '/evidence/accepted_content_family_' in n or n.endswith('/evidence/content_tail.json'))
        CACHE.mkdir(exist_ok=True);mark.write_text(meta['packet_sha256']+'\n')
    # Cheap cache identity checks for the exact source archives actually adopted.
    if sha256(pa/'originals/PRO-A.zip')!=meta['A_zip_sha256']:raise ValueError('A archive mismatch')
    _DONE={'A':a,'i14':i,'effective':e,'packet':pa};return _DONE

def effective():return restore()['effective']
