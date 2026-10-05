#!/usr/bin/env python3
"""Create a checked payload ZIP, then final ZIP and OUTSIDE final verification receipts."""
from __future__ import annotations
import argparse,datetime,hashlib,json,stat,subprocess,tempfile,zipfile
from pathlib import Path,PurePosixPath

def digest(data):return hashlib.sha256(data).hexdigest()
def members(root,excluded):
 files=[]
 for p in sorted(root.rglob('*')):
  if p.is_symlink():raise ValueError('Symlinks are not supported')
  if p.is_file() and p.relative_to(root).as_posix() not in excluded:files.append(p)
 return files

def archive(root,paths,target):
 with zipfile.ZipFile(target,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
  for p in paths:
   info=zipfile.ZipInfo(root.name+'/'+p.relative_to(root).as_posix(),date_time=(2026,10,3,0,0,0))
   info.compress_type=zipfile.ZIP_DEFLATED;info.external_attr=0o100644<<16
   z.writestr(info,p.read_bytes())

def unpack_verify(root,zpath,expected,manifest=False):
 expected={p.relative_to(root).as_posix():p.read_bytes() for p in expected}
 with tempfile.TemporaryDirectory(prefix='b699-r3-unpack-') as tmp:
  with zipfile.ZipFile(zpath) as z:
   infos=z.infolist();names=[i.filename for i in infos]
   assert len(names)==len(set(names)), 'duplicate members'
   assert z.testzip() is None, 'CRC failure'
   for i in infos:
    p=PurePosixPath(i.filename)
    assert not p.is_absolute() and '..' not in p.parts and p.parts[0]==root.name
    assert not stat.S_ISLNK(i.external_attr>>16)
   z.extractall(tmp)
  extracted=Path(tmp)/root.name
  got={p.relative_to(extracted).as_posix():p.read_bytes() for p in extracted.rglob('*') if p.is_file()}
  assert got==expected,'extracted bytes differ'
  records=[{'member':n,'bytes':len(b),'sha256':digest(b),'matches_source':True} for n,b in sorted(got.items())]
  r={'checked_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'archive_name':zpath.name,
     'archive_sha256':digest(zpath.read_bytes()),'file_member_count':len(records),'crc_ok':True,
     'actual_extraction_performed':True,'all_extracted_bytes_match_source':True,'members':records,
     'lean_verification':False}
  if manifest:
   sums=got['SHA256SUMS.txt'].decode().splitlines();seen=set()
   for line in sums:
    h,n=line.split('  ',1);assert n not in seen;seen.add(n);assert digest(got[n])==h
   assert seen==set(got)-{'SHA256SUMS.txt'}
   check=subprocess.run(['sha256sum','-c','SHA256SUMS.txt'],cwd=extracted,capture_output=True)
   assert check.returncode==0
   r.update(manifest_entry_count=len(sums),manifest_all_matched=True,sha256sum_exit_code=check.returncode,
     sha256sum_stdout=check.stdout.decode(),sha256sum_stderr=check.stderr.decode())
  return r

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--root',type=Path,required=True);a=p.parse_args();root=a.root.resolve()
 internal='evidence/PAYLOAD-UNPACK-RECEIPT.json'
 payload_members=members(root,{'SHA256SUMS.txt',internal})
 with tempfile.TemporaryDirectory(prefix='b699-r3-payload-') as tmp:
  z=Path(tmp)/'pre-manifest-payload.zip';archive(root,payload_members,z)
  rec=unpack_verify(root,z,payload_members)
  rec['scope']='Payload BEFORE this receipt and final SHA256SUMS.txt; NOT final ZIP'
  (root/internal).write_text(json.dumps(rec,ensure_ascii=False,indent=2)+'\n')
 paths=members(root,{'SHA256SUMS.txt'})
 (root/'SHA256SUMS.txt').write_text(''.join(digest(p.read_bytes())+'  '+p.relative_to(root).as_posix()+'\n' for p in paths))
 final_paths=members(root,set());z=root.with_suffix('.zip');archive(root,final_paths,z)
 final=unpack_verify(root,z,final_paths,manifest=True)
 final['scope']='FINAL ZIP; this receipt is outside the archive to avoid circular self-hashing'
 Path(str(z)+'.UNPACK-RECEIPT.json').write_text(json.dumps(final,ensure_ascii=False,indent=2)+'\n')
 Path(str(z)+'.sha256').write_text(final['archive_sha256']+'  '+z.name+'\n')
 print(json.dumps({k:v for k,v in final.items() if k not in ['members','sha256sum_stdout']},ensure_ascii=False,indent=2))
if __name__=='__main__':main()
