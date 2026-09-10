"""Offline replay of byte preservation and archive-to-Git-tree mapping.
Remote IDs are observations made by the GitHub connector at startup, not
claims of a fresh online fetch by this script.
"""
from pathlib import Path
from io import BytesIO
import hashlib,zipfile,json
ROOT=Path(__file__).resolve().parents[1]
if not __debug__:raise RuntimeError('Do not run proof checks with -O/-OO')
def h256(b):return hashlib.sha256(b).hexdigest()
def git_obj(kind,b):return hashlib.sha1(kind+b' '+str(len(b)).encode()+b'\0'+b).digest()
def tree_sha(files):
    root={}
    for path,b in files.items():
        parts=path.split('/');d=root
        for name in parts[:-1]:d=d.setdefault(name,{})
        assert parts[-1] not in d;d[parts[-1]]=b
    def encode(d):
        entries=[]
        for name,value in d.items():
            isdir=isinstance(value,dict)
            mode=b'40000' if isdir else b'100644'
            sha=encode(value) if isdir else git_obj(b'blob',value)
            key=(name+('/' if isdir else '')).encode()
            entries.append((key,mode+b' '+name.encode()+b'\0'+sha))
        return git_obj(b'tree',b''.join(v for _,v in sorted(entries)))
    return encode(root).hex()
if __name__=='__main__':
    obs=json.loads((ROOT/'sources/startup_snapshot.json').read_text());p=ROOT/'input/B699-research-context-20260910.zip';raw=p.read_bytes()
    assert h256(raw)==obs['outer_sha256'];outer=zipfile.ZipFile(BytesIO(raw));assert outer.testzip() is None
    for name in ['CURRENT_STATE.md','SOURCE_MAP.md']:
        assert outer.read(name).decode('utf-8')==(ROOT/'input'/name).read_text()
    originals={}
    for row in obs['original_archives']:
        b=outer.read(row['member']);assert len(b)==row['bytes'] and h256(b)==row['sha256']
        z=zipfile.ZipFile(BytesIO(b));assert z.testzip() is None;originals[Path(row['member']).name]=z
    archive_rows=json.loads(outer.read('ARCHIVES.json'))
    for row in archive_rows:
        b=outer.read(row['attachment_member']);assert len(b)==row['bytes'] and h256(b)==row['sha256']
        assert git_obj(b'blob',b).hex()==row['git_blob_sha']
    got=[]
    for row in obs['observed_delivery_trees']:
        z=originals[row['archive']+'.zip'];prefix=row['stripped_prefix'];members={}
        for info in z.infolist():
            if info.is_dir() or info.filename.lower().endswith('.zip'):continue
            assert info.filename.startswith(prefix)
            path=info.filename[len(prefix):];assert path and not path.startswith('/') and '..' not in path.split('/')
            members[path]=z.read(info.filename)
        assert len(members)==row['text_members'] and sum(map(len,members.values()))==row['bytes']
        sha=tree_sha(members);assert sha==row['git_tree_sha'];got.append({'archive':row['archive'],'members':len(members),'tree_sha':sha})
    adoption=json.loads((ROOT/'sources/adopted_code.json').read_text())
    for row in adoption:
        b=originals[row['archive']].read(row['member']);assert h256(b)==row['sha256']
        assert (ROOT/row['adopted']).read_bytes()==b
    out={'status':'PASS','outer_sha256':h256(raw),'outer_bytes':len(raw),'original_archives':len(originals),'ARCHIVES_restorations':len(archive_rows),'delivery_tree_checks':got,
         'git_members':sum(x['members'] for x in got),'unchanged_adopted_code_files':len(adoption),
         'scope':'byte and tree reconstruction only; remote observations recorded at startup; no new online fetch or Lean verification'}
    (ROOT/'outputs/input_integrity_recheck.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(out,indent=2))
