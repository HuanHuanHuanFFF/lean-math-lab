"""Record fixed source bytes and the just-completed local check receipt."""
from pathlib import Path
from datetime import datetime,timezone
import json,hashlib,platform,ast

ROOT=Path(__file__).resolve().parent
WT=Path.cwd()
REPLAY=WT/'.tools/replay/a1c74e93-h023'
NOTES=ROOT.parents[1]/'notes/h023'

def identity(path):
    content=path.read_bytes()
    return dict(path=str(path.relative_to(WT)).replace('\\','/'),bytes=len(content),
                sha256=hashlib.sha256(content).hexdigest())

source_files=['REPORT.md','notes/PROOFS.md','exploration/oldodd/failure_models.json',
              'exploration/probe7_cubic_pool.json','evidence/height_certificates.json']
sources=dict(baseline_commit='1fccc6454c67d2122bc5bcdc7a31561d8f04c164',
             package_id='D-fatpoint-position-closure',
             restoration='daily intake_archives.py --materialize, ordinary files only',
             scope='statement/interface reconstruction and discovery seeds; no inherited QIG/SIXG/LCM acceptance',
             files=[identity(REPLAY/p) for p in source_files])
checks=json.loads((ROOT/'verification.json').read_text())
assert checks['verification']['accepted']
assert checks['certificate_sha256']==identity(ROOT/'certificate_selected.json')['sha256']
for p in ROOT.glob('*.py'):ast.parse(p.read_text(encoding='utf-8'),filename=p.name)
receipt=dict(created_utc=datetime.now(timezone.utc).isoformat(),python=platform.python_version(),
             command='C:/Python314/python.exe '+str((ROOT/'verify_gcd_certificate.py').relative_to(WT)).replace('\\','/'),
             checked_exit_code=0,script=identity(ROOT/'verify_gcd_certificate.py'),
             certificate=identity(ROOT/'certificate_selected.json'),
             output=identity(ROOT/'verification.json'),
             summary=checks['verification']['strict_binary_bound'],
             scope='same-worker second implementation, standard library, no Lean, no full original-problem closure')
(NOTES/'SOURCE_ADOPTION.json').write_text(json.dumps(sources,indent=2),encoding='utf-8')
(ROOT/'execution_receipt.json').write_text(json.dumps(receipt,indent=2),encoding='utf-8')
print(json.dumps(dict(certificate_sha256=checks['certificate_sha256'],python=receipt['python'],
                     source_files=len(source_files),python_sources_parsed=len(list(ROOT.glob('*.py'))),
                     check_summary=receipt['summary'])))
