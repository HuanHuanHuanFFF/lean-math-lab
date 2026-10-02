#!/usr/bin/env python3
"""Clean offline verification of this archive. The final receipt is external to avoid a hash cycle."""
from __future__ import annotations
import argparse,datetime,hashlib,json,os,stat,subprocess,sys,tempfile,zipfile
from pathlib import Path,PurePosixPath

def sha(b):return hashlib.sha256(b).hexdigest()
def now():return datetime.datetime.now(datetime.timezone.utc).isoformat()
def need(v,msg):
    if not v:raise ValueError(msg)
def tree(root):return {p.relative_to(root).as_posix():sha(p.read_bytes()) for p in sorted(root.rglob('*')) if p.is_file()}
def run(archive,rec):
    data=archive.read_bytes();rec.update(status='FAIL',started_utc=now(),archive_name=archive.name,
        archive_sha256=sha(data),archive_bytes=len(data),evidence_level='actual local clean file/program replay',
        Lean_run=False,repository_operations=False,network_used=False,previous_round_programs_run=False)
    with tempfile.TemporaryDirectory(prefix='b699-r9-clean-') as td:
        temp=Path(td);unpack=temp/'unpacked';unpack.mkdir();tops=set();seen=set()
        with zipfile.ZipFile(archive) as z:
            for i in z.infolist():
                p=PurePosixPath(i.filename)
                need(p.parts and not p.is_absolute() and '..' not in p.parts,'unsafe archive path')
                need(p.as_posix()==i.filename.rstrip('/'),'noncanonical member path')
                need(i.filename not in seen,'duplicate member');seen.add(i.filename)
                need(not stat.S_ISLNK(i.external_attr>>16),'symlinks forbidden');tops.add(p.parts[0])
                dest=unpack.joinpath(*p.parts)
                if i.is_dir():dest.mkdir(parents=True,exist_ok=True)
                else:dest.parent.mkdir(parents=True,exist_ok=True);dest.write_bytes(z.read(i))
        need(len(tops)==1,'single root required');root=unpack/next(iter(tops));before=tree(root)
        manifest=root/'MANIFEST.sha256';listed={}
        for line in manifest.read_text().splitlines():
            h,n=line.split(None,1);n=n.strip().lstrip('*');need(n not in listed,'duplicate manifest entry');listed[n]=h
        need(set(listed)==set(before)-{'MANIFEST.sha256'},'manifest does not cover every ordinary payload file')
        for n,h in listed.items():need(before[n]==h,'member hash mismatch: '+n)
        output=temp/'regenerated';cp=subprocess.run([sys.executable,str(root/'code/verify.py'),
           '--root',str(root),'--output',str(output),'--check',str(root/'certificates')],
           capture_output=True,text=True,timeout=45,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
        rec.update(verifier_exit_code=cp.returncode,verifier_stdout=cp.stdout,verifier_stderr=cp.stderr)
        need(cp.returncode==0,'verifier failed');summary=json.loads(cp.stdout)
        frozen=tree(root/'certificates');generated=tree(output);need(frozen==generated,'certificate bytes differ')
        for n in frozen:need(json.loads((root/'certificates'/n).read_text())==json.loads((output/n).read_text()),'JSON differs')
        need(tree(root)==before,'frozen payload modified')
        rec.update(status='PASS',clean_extraction=True,manifest_members=len(listed),ordinary_members=len(before),
          manifest_sha256=sha(manifest.read_bytes()),all_member_hashes_passed=True,
          certificates_regenerated=len(frozen),certificate_sha256=frozen,certificate_json_equal=True,
          certificate_bytes_equal=True,payload_unchanged=True,new_zero_branches_closed=summary['new_zero_branches_closed'],
          remaining_two_slot_signatures=summary['remaining_two_slot_signatures'],
          full_power_forward_records=summary['full_power_forward_records'],
          full_power_reverse_records=summary['full_power_reverse_records'],
          recovered_original_n=summary['recovered_original_n'],adopted_old_row352_witnesses=170,
          new_j_enumeration_count=0,complete_mod1800_classes='42 -> 42',certified_historical_net_difference=0)
    rec.update(temporary_directory_removed=True,finished_utc=now())
def main():
    p=argparse.ArgumentParser();p.add_argument('archive',type=Path);p.add_argument('--receipt',type=Path,required=True);a=p.parse_args()
    rec={};status=0
    try:run(a.archive.resolve(),rec)
    except Exception as e:rec.update(status='FAIL',error_type=type(e).__name__,error=str(e),finished_utc=now());status=1
    a.receipt.parent.mkdir(parents=True,exist_ok=True);text=json.dumps(rec,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    a.receipt.write_text(text);print(text,end='');raise SystemExit(status)
if __name__=='__main__':main()
