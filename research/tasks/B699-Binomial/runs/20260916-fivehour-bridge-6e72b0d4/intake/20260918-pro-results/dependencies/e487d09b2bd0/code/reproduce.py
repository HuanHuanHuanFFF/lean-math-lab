"""Replay in an external output directory; never overwrite frozen evidence."""
from __future__ import annotations
import argparse,hashlib,json,platform,subprocess,sys
from datetime import datetime,timezone
from pathlib import Path


def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,required=True)
    ap.add_argument('--with-sympy',action='store_true');args=ap.parse_args()
    base=Path(__file__).resolve().parents[1];out=args.output_dir.resolve()
    if out==base or base in out.parents:raise ValueError('output-dir must be outside frozen package')
    out.mkdir(parents=True,exist_ok=True)
    start=datetime.now(timezone.utc).isoformat();receipts=[]
    manifest=base/'MANIFEST.sha256';members=0
    if manifest.exists():
        for line in manifest.read_text().splitlines():
            expected,name=line.split('  ',1)
            p=(base/name).resolve();assert base in p.parents
            assert sha(p)==expected,(name,'member digest mismatch');members+=1
    sm=json.loads((base/'sources/source_manifest.json').read_text())
    for name,record in sm.items():
        p=base/'sources'/name
        assert p.stat().st_size==record['bytes'] and sha(p)==record['sha256']
    receipts.append(dict(stage='source_and_member_hashes',sources=len(sm),members=members,status='PASS'))
    def run(name,cmd):
        p=subprocess.run(cmd,capture_output=True,text=True,timeout=60)
        (out/(name+'.log')).write_text(p.stdout+p.stderr)
        if p.returncode:raise RuntimeError(f'{name} failed; see {out/(name+".log")}')
        receipts.append(dict(stage=name,status='PASS',returncode=p.returncode))
    run('verify',[sys.executable,'-S','-B',str(base/'code/verify_certificate.py'),
                  '--certificate',str(base/'outputs/certificate.json'),
                  '--output',str(out/'acceptance.json'),'--negative-tests'])
    run('regressions',[sys.executable,'-S','-B',str(base/'code/check_regressions.py'),
                       '--output',str(out/'regressions.json')])
    for name in ('acceptance.json','regressions.json'):
        assert (out/name).read_bytes()==(base/'outputs'/name).read_bytes(),(name,'frozen output mismatch')
    if args.with_sympy:
        run('rebuild_certificate',[sys.executable,'-B',str(base/'code/build_certificate.py'),
                                   '--output',str(out/'certificate.json')])
        assert (out/'certificate.json').read_bytes()==(base/'outputs/certificate.json').read_bytes()
    for p in (base/'code').glob('*.py'):compile(p.read_text(),str(p),'exec')
    report=dict(status='PASS_REPRODUCTION',started_utc=start,completed_utc=datetime.now(timezone.utc).isoformat(),
                python=platform.python_version(),stages=receipts,
                deterministic_outputs_matched=3 if args.with_sympy else 2,
                scope='Artifact integrity and exact algebra/finite regressions; not Lean or independent mathematical review')
    (out/'reproduction.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(report,ensure_ascii=False))

if __name__=='__main__':main()
