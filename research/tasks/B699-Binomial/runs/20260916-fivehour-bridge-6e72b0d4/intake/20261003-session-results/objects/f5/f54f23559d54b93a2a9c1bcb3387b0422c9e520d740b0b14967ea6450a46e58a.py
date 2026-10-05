#!/usr/bin/env python3
"""Safe, clean offline replay of one C Round8 ZIP. The receipt is external.
Byte/program verification is not Lean or an independent mathematical review.
"""
from __future__ import annotations
import argparse,datetime,hashlib,json,os,stat,subprocess,sys,tempfile,zipfile
from pathlib import Path,PurePosixPath

def sha(b):return hashlib.sha256(b).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def require(v,m):
    if not v:raise ValueError(m)
def tree(root):return {p.relative_to(root).as_posix():sha(p.read_bytes()) for p in sorted(root.rglob('*')) if p.is_file()}
def replay(archive,rec):
    data=archive.read_bytes();rec.update({'status':'FAIL','started_utc':now(),'archive_name':archive.name,
       'archive_sha256':sha(data),'archive_bytes':len(data),'evidence_level':'actual local clean file/program replay only',
       'Lean_run':False,'repository_operations':False,'network_used_by_replay':False,
       'previous_research_programs_executed':False})
    with tempfile.TemporaryDirectory(prefix='b699-c-r8-clean-') as td:
        temp=Path(td);unpack=temp/'unpacked';unpack.mkdir();tops=set();seen=set()
        with zipfile.ZipFile(archive) as z:
            for i in z.infolist():
                p=PurePosixPath(i.filename)
                require(p.parts and not p.is_absolute() and '..' not in p.parts,'unsafe archive path')
                require(p.as_posix()==i.filename.rstrip('/'),'noncanonical archive path')
                require(i.filename not in seen,'duplicate archive member');seen.add(i.filename)
                require(not stat.S_ISLNK(i.external_attr>>16),'archive symlink forbidden')
                tops.add(p.parts[0]);dest=unpack.joinpath(*p.parts)
                if i.is_dir():dest.mkdir(parents=True,exist_ok=True)
                else:dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(z.read(i))
        require(len(tops)==1,'single root required');root=unpack/next(iter(tops));before=tree(root)
        manifest=root/'MANIFEST.sha256';listed={}
        for ln in manifest.read_text().splitlines():
            if not ln.strip():continue
            h,name=ln.split(None,1);name=name.strip().lstrip('*')
            require(name not in listed,'duplicate manifest entry');listed[name]=h
        require(set(listed)==set(before)-{'MANIFEST.sha256'},'manifest set differs from ordinary payload')
        for n,h in listed.items():require(before[n]==h,'member SHA mismatch: '+n)
        out=temp/'regenerated';env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
        cp=subprocess.run([sys.executable,str(root/'scripts/verify.py'),'--root',str(root),'--output',str(out),
              '--check',str(root/'certificates')],capture_output=True,text=True,env=env,timeout=45)
        rec.update({'verifier_exit_code':cp.returncode,'verifier_stdout':cp.stdout,'verifier_stderr':cp.stderr})
        require(cp.returncode==0,'verifier failed')
        frozen=tree(root/'certificates');regenerated=tree(out)
        require(frozen==regenerated,'certificate byte hashes differ')
        for name in frozen:require(json.loads((root/'certificates'/name).read_text())==json.loads((out/name).read_text()),'certificate JSON differs')
        require(before==tree(root),'replay modified extracted payload')
        summary=json.loads(cp.stdout)
        rec.update({'status':'PASS','clean_extraction':True,'all_member_hashes_passed':True,
           'manifest_sha256':sha(manifest.read_bytes()),'manifest_members':len(listed),'ordinary_members':len(before),
           'certificates_regenerated':len(frozen),'certificate_sha256':frozen,'certificate_json_equal':True,
           'certificate_bytes_equal':True,'payload_unchanged':True,'new_cubic_nonzero_signatures':summary['new_nonzero_cubic_signatures'],
           'residual_cubic_zero_signatures':summary['remaining_cubic_zero_signatures'],
           'residual_complete_q2_values':summary['remaining_complete_q2_values'],
           'full_power_pairs_per_direction':summary['full_power_pairs_per_direction'],
           'new_original_witness_pairs':summary['new_original_witness_pairs'],'adopted_425_pairs':summary['adopted_425_pairs'],
           'terminal_original_rows':summary['terminal_original_rows'],'terminal_NC_survivors':summary['terminal_NC_survivors'],
           'complete_mod1800_classes':summary['complete_mod1800_classes'],
           'certified_historical_net_difference':summary['certified_historical_net_difference']})
    rec.update({'temporary_directory_removed':True,'finished_utc':now()})
def main():
    a=argparse.ArgumentParser();a.add_argument('archive',type=Path);a.add_argument('--receipt',type=Path,required=True);x=a.parse_args()
    rec={};code=0
    try:replay(x.archive.resolve(),rec)
    except Exception as e:rec.update({'status':'FAIL','error_type':type(e).__name__,'error':str(e),'finished_utc':now()});code=1
    text=json.dumps(rec,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    x.receipt.parent.mkdir(parents=True,exist_ok=True);x.receipt.write_text(text);print(text,end='');raise SystemExit(code)
if __name__=='__main__':main()
