#!/usr/bin/env python3
"""Safely extract one C R7 ZIP and reproduce its frozen certificates offline.
Receipt is external to the archive being verified. It is not a Lean or human
mathematical review. Prior research programs are not executed.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, stat, subprocess, sys, tempfile, zipfile
from pathlib import Path, PurePosixPath

def sha(data):return hashlib.sha256(data).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def hashes(root):return {p.relative_to(root).as_posix():sha(p.read_bytes()) for p in sorted(root.rglob('*')) if p.is_file()}
def require(v,s):
    if not v:raise ValueError(s)

def replay(archive,rec):
    data=archive.read_bytes()
    rec.update({'status':'FAIL','archive_name':archive.name,'archive_sha256':sha(data),'archive_bytes':len(data),
      'started_utc':now(),'network_used_by_replay':False,'Lean_run':False,'repository_operations':False,
      'previous_research_scripts_executed':False,'evidence_level':'local file and deterministic program replay only'})
    with tempfile.TemporaryDirectory(prefix='b699-c-r7-clean-') as td:
        temp=Path(td);unpack=temp/'unpacked';unpack.mkdir();names=set();tops=set()
        with zipfile.ZipFile(archive) as z:
            for info in z.infolist():
                pp=PurePosixPath(info.filename)
                require(pp.parts and not pp.is_absolute() and '..' not in pp.parts,'unsafe ZIP member')
                require(not stat.S_ISLNK(info.external_attr>>16),'ZIP symlink disallowed')
                require(info.filename not in names,'duplicate ZIP member')
                require(pp.as_posix()==info.filename.rstrip('/'),'noncanonical ZIP member')
                names.add(info.filename);tops.add(pp.parts[0]);dest=unpack.joinpath(*pp.parts)
                if info.is_dir():dest.mkdir(parents=True,exist_ok=True)
                else:dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(z.read(info))
        require(len(tops)==1,'ZIP must have a single root')
        root=unpack/next(iter(tops));before=hashes(root);expected={}
        manifest=root/'MANIFEST.sha256'
        for line in manifest.read_text().splitlines():
            if not line.strip():continue
            h,name=line.split(None,1);name=name.strip().lstrip('*')
            require(name not in expected,'duplicate manifest member');expected[name]=h
        require(set(expected)==set(before)-{'MANIFEST.sha256'},'manifest ordinary member set mismatch')
        for name,h in expected.items():require(before[name]==h,'member SHA-256 mismatch: '+name)
        generated=temp/'regenerated';env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
        cp=subprocess.run([sys.executable,str(root/'scripts/verify.py'),'--root',str(root),
          '--output',str(generated),'--check',str(root/'certificates')],capture_output=True,text=True,env=env,timeout=45)
        rec.update({'verifier_exit_code':cp.returncode,'verifier_stdout':cp.stdout,'verifier_stderr':cp.stderr})
        require(cp.returncode==0,'verifier failed')
        frozen=hashes(root/'certificates');new=hashes(generated)
        require(frozen==new,'regenerated certificate bytes differ')
        for name in frozen:
            require(json.loads((root/'certificates'/name).read_text())==json.loads((generated/name).read_text()),'certificate JSON differs')
        require(before==hashes(root),'replay modified extracted payload')
        terminal=json.loads((generated/'TERMINAL_425.json').read_text())
        conics=json.loads((generated/'PAIRCONIC_CLASSIFICATION.json').read_text())
        coverage=json.loads((generated/'ENDPOINT_PAIR_COVERAGE.json').read_text())
        rec.update({'status':'PASS','clean_extraction':True,'all_member_hashes_passed':True,
          'manifest_sha256':sha(manifest.read_bytes()),'manifest_members':len(expected),'ordinary_members':len(before),
          'certificates_regenerated':len(frozen),'certificate_sha256':frozen,'certificate_bytes_equal':True,
          'certificate_json_equal':True,'payload_unchanged':True,'source_pair_patterns':conics['affine_sum_patterns'],
          'terminal_original_rows':[425],'terminal_original_pairs':terminal['pair_count'],'terminal_NC_survivors':len(terminal['NC_survivors']),
          'restricted_two_slot_excluded_signatures':coverage['union_excluded_count'],
          'complete_residue_classes':[coverage['complete_residue_classes_before'],coverage['complete_residue_classes_after']],
          'certified_historical_net_difference':coverage['certified_historical_net_difference']})
    rec.update({'temporary_directory_removed':True,'finished_utc':now()})

def main():
    p=argparse.ArgumentParser();p.add_argument('archive',type=Path);p.add_argument('--receipt',type=Path,required=True)
    a=p.parse_args();rec={};code=0
    try:replay(a.archive.resolve(),rec)
    except Exception as e:
        rec.update({'status':'FAIL','error_type':type(e).__name__,'error':str(e),'finished_utc':now()});code=1
    text=json.dumps(rec,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    a.receipt.parent.mkdir(parents=True,exist_ok=True);a.receipt.write_text(text);print(text,end='')
    raise SystemExit(code)
if __name__=='__main__':main()
