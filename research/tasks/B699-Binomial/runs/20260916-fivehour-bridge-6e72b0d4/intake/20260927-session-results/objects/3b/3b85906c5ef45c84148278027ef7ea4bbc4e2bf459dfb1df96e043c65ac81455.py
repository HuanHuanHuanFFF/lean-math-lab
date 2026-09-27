#!/usr/bin/env python3
"""Read-only payload verification and clean regeneration of this round's evidence."""
import argparse,datetime,hashlib,json,subprocess,sys,tempfile,time
from pathlib import Path
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def check_manifest(path):
    count=0
    for line in path.read_text().splitlines():
        want,rel=line.split(None,1);rel=rel.strip().lstrip('*');p=ROOT/rel
        if not p.is_file() or sha(p)!=want:raise RuntimeError('hash mismatch: '+rel)
        count+=1
    return count

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--receipt',type=Path,required=True);args=ap.parse_args();start=time.monotonic()
    checked=check_manifest(ROOT/'PAYLOAD.sha256');steps=[]
    with tempfile.TemporaryDirectory(prefix='b699-r9-replay-') as td:
        t=Path(td);generated=t/'generated';accepted=t/'accepted'
        def run(name,argv,expect=0):
            p=subprocess.run([sys.executable,*map(str,argv)],capture_output=True,text=True,timeout=80)
            step={'name':name,'returncode':p.returncode,'stdout':p.stdout,'stderr':p.stderr}
            steps.append(step)
            print(name, 'PASS' if p.returncode==expect else 'FAIL')
            if p.returncode!=expect:raise RuntimeError(json.dumps(step))
            return p
        run('discovery regeneration',[ROOT/'scripts/discover.py','--out',generated])
        names=sorted(p.name for p in (ROOT/'certificates').glob('*.json'))
        if len(names)!=6:raise RuntimeError('wrong certificate count')
        for name in names:
            if (ROOT/'certificates'/name).read_bytes()!=(generated/name).read_bytes():raise RuntimeError('regeneration differs '+name)
        run('separate arithmetic acceptance',[ROOT/'scripts/accept.py','--cert-dir',generated,'--expected-out',accepted])
        for name in names:
            if (accepted/name).read_bytes()!=(generated/name).read_bytes():raise RuntimeError('separate serialization differs '+name)
        m=run('nine damaged certificate rejections',[ROOT/'scripts/mutation_test.py','--out',t/'mutations.json'])
        if (t/'mutations.json').read_bytes()!=(ROOT/'logs/mutations.json').read_bytes():raise RuntimeError('mutation transcript differs')
        p=run('bounded old-input diagnostic replay',[ROOT/'scripts/explore_pair_routes.py'])
        if p.stdout!=(ROOT/'logs/prime_route_diagnostic.json').read_text():raise RuntimeError('diagnostic differs')
        example={'n':29,'j':8,'d_X':58,'h_X':1,'d_Y':435,'h_Y':1,'p':13,'r':3}
        (t/'ordinary.json').write_text(json.dumps(example))
        p=run('single original-input consumer',[ROOT/'scripts/check_input.py',t/'ordinary.json'])
        if json.loads(p.stdout)['status']!='VERIFIED_ORIGINAL_COMMON6_WITNESS':raise RuntimeError('wrong consumer status')
        example['d_X']=59;(t/'ordinary.json').write_text(json.dumps(example))
        run('single input rejects false square coefficient',[ROOT/'scripts/check_input.py',t/'ordinary.json'],expect=1)
    receipt={'status':'PASS','round':9,'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'elapsed_seconds':round(time.monotonic()-start,6),'payload_hash_entries_verified':checked,
        'regenerated_certificate_files':names,'byte_identical_files':len(names),'separated_acceptor_does_not_import_discovery':True,
        'damaged_certificate_rejections':9,'steps':steps,'repository_actions':False,'Lean':False,
        'evidence_level':'same-author separated arithmetic replay; not external review or proof assistant',
        'historical_certified_net_deletion':0}
    args.receipt.parent.mkdir(parents=True,exist_ok=True);args.receipt.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('PASS: payload hashes and all six regenerated certificates verified.')
if __name__=='__main__':main()
