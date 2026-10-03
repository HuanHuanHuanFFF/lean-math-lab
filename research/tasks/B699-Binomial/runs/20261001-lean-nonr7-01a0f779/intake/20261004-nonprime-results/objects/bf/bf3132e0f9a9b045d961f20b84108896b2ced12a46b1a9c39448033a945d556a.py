#!/usr/bin/env python3
"""Check ZIP paths, CRC, exact member set, and SHA-256 after extraction. No Lean execution."""
from pathlib import Path, PurePosixPath
import argparse, datetime, hashlib, json, tempfile, zipfile

def sha(b): return hashlib.sha256(b).hexdigest()
def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('zip',type=Path);p.add_argument('--receipt',type=Path,required=True);a=p.parse_args()
    result={'verified_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'zip':a.zip.name,'zip_bytes':a.zip.stat().st_size,'zip_sha256':sha(a.zip.read_bytes()),'lean_executed':False}
    with zipfile.ZipFile(a.zip) as z:
        names=z.namelist()
        if len(names)!=len(set(names)): raise RuntimeError('Duplicate ZIP member')
        for item in z.infolist():
            path=PurePosixPath(item.filename)
            if path.is_absolute() or '..' in path.parts or '\\' in item.filename or item.is_dir(): raise RuntimeError('Unsafe or non-file member')
            if (item.external_attr>>16)&0o170000==0o120000: raise RuntimeError('Symlink member')
        roots={PurePosixPath(name).parts[0] for name in names}
        if len(roots)!=1: raise RuntimeError('Expected one root directory')
        root_name=roots.pop(); manifest_name=root_name+'/MANIFEST.sha256'
        manifest=z.read(manifest_name).decode();expected={}
        for line in manifest.splitlines():
            digest,name=line.split(maxsplit=1)
            if name in expected: raise RuntimeError('Duplicate manifest member')
            expected[name]=digest
        want={root_name+'/'+name for name in expected}|{manifest_name}
        if set(names)!=want: raise RuntimeError('Manifest/member set mismatch')
        if z.testzip() is not None: raise RuntimeError('CRC failure')
        with tempfile.TemporaryDirectory(prefix='b699-unpack-') as temp:
            z.extractall(temp)
            observed=[]
            for name,digest in sorted(expected.items()):
                b=(Path(temp)/root_name/name).read_bytes()
                if sha(b)!=digest: raise RuntimeError('Extracted hash mismatch: '+name)
                observed.append({'name':name,'bytes':len(b),'sha256':digest})
            observed.append({'name':'MANIFEST.sha256','bytes':len(z.read(manifest_name)),'sha256':sha(z.read(manifest_name))})
        result.update(status='ZIP_CRC_AND_EXTRACTED_HASHES_PASSED',member_count=len(names),hashed_members_excluding_manifest=len(expected),manifest_sha256=sha(z.read(manifest_name)),members=observed)
    a.receipt.write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n');print(json.dumps({k:v for k,v in result.items() if k!='members'},indent=2))
if __name__=='__main__': main()
