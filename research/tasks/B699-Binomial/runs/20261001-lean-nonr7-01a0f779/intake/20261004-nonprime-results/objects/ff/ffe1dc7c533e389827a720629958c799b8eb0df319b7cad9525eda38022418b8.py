#!/usr/bin/env python3
"""Package outside a repository and produce actual non-self-referential unpack receipts."""
import argparse,datetime,hashlib,json,os,stat,subprocess,sys,tempfile,zipfile
from pathlib import Path, PurePosixPath

def sha(data):return hashlib.sha256(data).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def json_write(path,obj):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
def enumerate_files(root,excluded=()):
    result={}
    for p in sorted(root.rglob('*')):
        if p.is_symlink():raise ValueError(f'Symlink not allowed: {p}')
        if p.is_file():
            rel=p.relative_to(root).as_posix()
            if rel not in excluded:result[rel]=p.read_bytes()
    return result

def create_zip(path,rootname,files):
    with zipfile.ZipFile(path,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
        for rel,data in sorted(files.items()):
            info=zipfile.ZipInfo(rootname+'/'+rel,date_time=(2026,10,3,0,0,0))
            info.compress_type=zipfile.ZIP_DEFLATED
            info.external_attr=(stat.S_IFREG|0o644)<<16
            z.writestr(info,data)

def extract_check(path,where,rootname,expected):
    with zipfile.ZipFile(path) as z:
        names=z.namelist()
        if len(names)!=len(set(names)):raise ValueError('Duplicate archive member')
        bad=z.testzip()
        if bad is not None:raise ValueError('CRC failure: '+bad)
        for info in z.infolist():
            name=PurePosixPath(info.filename)
            if name.is_absolute() or '..' in name.parts or name.parts[0]!=rootname:
                raise ValueError('Unsafe or unexpected member: '+info.filename)
            if stat.S_ISLNK(info.external_attr>>16):raise ValueError('Archive symlink')
            target=where.joinpath(*name.parts)
            target.parent.mkdir(parents=True,exist_ok=True)
            target.write_bytes(z.read(info))
    actual=enumerate_files(where/rootname)
    if set(actual)!=set(expected):raise ValueError('Extracted membership mismatch')
    for rel,data in actual.items():
        if data!=expected[rel]:raise ValueError('Byte mismatch: '+rel)
    return {'zip_crc_ok':True,'unique_members':len(names),
            'file_set_matches':True,'all_bytes_equal_to_packaged_inputs':True,
            'all_sha256_equal':True,'extracted_files':[
                {'path':rel,'bytes':len(data),'sha256':sha(data)} for rel,data in sorted(actual.items())]}

def main():
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,required=True)
    p.add_argument('--zip',type=Path,required=True);a=p.parse_args()
    root=a.root.resolve();archive=a.zip.resolve()
    if not root.is_dir():raise ValueError('Missing root')
    if archive.is_relative_to(root):raise ValueError('Output ZIP must be outside payload')
    if archive.exists():raise ValueError('Refusing to overwrite an existing output ZIP')
    internal_receipt='evidence/unpack-payload-receipt.json'
    manifest='SHA256SUMS.txt'
    payload=enumerate_files(root,excluded=[manifest,internal_receipt])
    with tempfile.TemporaryDirectory(prefix='b699-payload-check-') as t:
        temp=Path(t);stagezip=temp/'payload-preflight.zip'
        create_zip(stagezip,root.name,payload)
        checked=extract_check(stagezip,temp/'unpacked',root.name,payload)
        receipt={'utc':now(),'stage':'PRE-FINAL PAYLOAD ZIP ONLY',
            'scope':'Actual temporary ZIP extraction before embedding this receipt and the final manifest; NOT a receipt for the self-containing final ZIP.',
            'excluded_future_files':[internal_receipt,manifest],
            'command':[sys.executable,*sys.argv],
            'temporary_payload_zip_sha256':sha(stagezip.read_bytes()),
            'temporary_payload_zip_bytes':stagezip.stat().st_size,**checked}
    json_write(root/internal_receipt,receipt)
    final_without_manifest=enumerate_files(root,excluded=[manifest])
    manifest_text=''.join(f'{sha(data)}  {rel}\n' for rel,data in sorted(final_without_manifest.items()))
    (root/manifest).write_text(manifest_text,encoding='utf-8')
    final=enumerate_files(root)
    create_zip(archive,root.name,final)
    with tempfile.TemporaryDirectory(prefix='b699-final-check-') as t:
        temp=Path(t)
        checked=extract_check(archive,temp,root.name,final)
        unpacked=temp/root.name
        expected={}
        for line in (unpacked/manifest).read_text().splitlines():
            digest,rel=line.split('  ',1)
            if rel in expected:raise ValueError('Duplicate manifest entry')
            expected[rel]=digest
            if sha((unpacked/rel).read_bytes())!=digest:raise ValueError('Manifest mismatch: '+rel)
        if set(expected)!=set(final)-{manifest}:raise ValueError('Manifest coverage mismatch')
        cmd=['sha256sum','-c','SHA256SUMS.txt']
        cp=subprocess.run(cmd,cwd=unpacked,capture_output=True,text=True)
        if cp.returncode!=0:raise ValueError('sha256sum failed: '+cp.stderr)
        outer={'utc':now(),'stage':'FINAL DELIVERED ZIP',
            'scope':'Actual extraction of the final ZIP into a fresh temporary directory. External receipt avoids a self-hash cycle. Not Lean validation.',
            'archive_filename':archive.name,'archive_bytes':archive.stat().st_size,
            'archive_sha256':sha(archive.read_bytes()),'archive_root':root.name,
            'manifest_filename':manifest,'manifest_sha256':sha(final[manifest]),
            'manifest_entries_checked':len(expected),'manifest_covers_all_except_itself':True,
            'sha256sum_command':cmd,'sha256sum_exit_code':cp.returncode,
            'sha256sum_stdout':cp.stdout,'sha256sum_stderr':cp.stderr,
            'internal_payload_receipt_verified_by_final_manifest':True,
            'lean_compile_status':'not_run_child_could_not_start',
            'axioms_output':None,'normal_kernel_checker':'not_run',**checked}
    sidecar=Path(str(archive)+'.UNPACK-RECEIPT.json');json_write(sidecar,outer)
    Path(str(archive)+'.sha256').write_text(f'{outer["archive_sha256"]}  {archive.name}\n')
    print(json.dumps({k:v for k,v in outer.items() if k not in ['extracted_files','sha256sum_stdout']},ensure_ascii=False,indent=2))
    print('FINAL_RECEIPT',sidecar)
if __name__=='__main__':main()
