"""Newly authorized review of historical successful proofs; no new Lean runs."""
import ast
import hashlib
import json
from datetime import datetime,timezone
from pathlib import Path

HERE=Path(__file__).resolve().parent
REPO=next(p for p in HERE.parents if (p/'.git').exists())
OLD=HERE.parent.parent/'20261004-tail-twohour-finish/reviews'
OLD_BASE=OLD.parent.relative_to(REPO).as_posix()+'/'
NEW_BASE=HERE.parent.relative_to(REPO).as_posix()+'/'
authorization=HERE.parent/'README.md'
records=[]
for name in ('bind_extended_archive.py','bind_tiny_archive.py','verify_retained_member_map.py','check_transitive_axioms.py'):
    source=OLD/name
    raw=source.read_bytes()
    text=raw.decode('utf-8-sig')
    if name!='check_transitive_axioms.py':
        before="DEADLINE = datetime.fromisoformat('2026-10-04T15:16:38+00:00')"
        if text.count(before)!=1:
            raise RuntimeError('Historical review deadline anchor differs')
        text=text.replace(before,"DEADLINE = datetime.fromisoformat('2026-10-04T17:50:50+00:00')")
    if name.startswith('bind_'):
        text=text.replace("BASE = HERE.parent.relative_to(REPO).as_posix() + '/'",'BASE = '+repr(OLD_BASE))
        text=text.replace("def guard():\n    require(START <= datetime.now(timezone.utc) < DEADLINE, 'Outside original review window')","def guard():\n    require(datetime.fromisoformat('2026-10-04T16:35:50+00:00') <= datetime.now(timezone.utc) < DEADLINE, 'Outside new authorized review window')")
        anchor="'hardDeadlineUtc': DEADLINE.isoformat(),"
        if text.count(anchor)!=2:
            raise RuntimeError('Binding and signature review-window fields differ')
        text=text.replace(anchor,anchor+" 'historicalReviewDeadlineUtc': '2026-10-04T15:16:38+00:00', 'newReviewAuthorization': "+repr({'path':authorization.relative_to(REPO).as_posix(),'sha256':hashlib.sha256(authorization.read_bytes()).hexdigest(),'startUtc':'2026-10-04T16:35:50+00:00','deadlineUtc':'2026-10-04T17:50:50+00:00','parentExecutionWindowUnchanged':'2026-10-04T13:16:38+00:00 to2026-10-04T14:46:00+00:00','tinyExecutionWindowUnchanged':'2026-10-04T13:16:38+00:00 to2026-10-04T15:06:00+00:00','noNewKernelExecution':True})+",")
        text=text.replace("'newCompleteOriginalIndexCountFrom10000': 20000", "'newCompleteOriginalIndexCountFrom15000': 15000")
    if name=='bind_tiny_archive.py':
        text=text.replace('import time\n','import time\nimport os\n')
        text=text.replace("'D:/ResearchArtifacts/b699-tail-twohour-finish/b699-tail2h-upperinitial-37207871560-complete.zip'", "os.environ.get('B699_PARENT_ARCHIVE', '__FULL_VERIFIED_PARENT_REQUIRED__')")
        text=text.replace("'signature':'20261004-tail-twohour-finish/reviews/UPPER-RANGES-INDEPENDENT-ACCEPTED.json'", "'signature':'20261005-lean-formal-seventyfive/reviews/UPPER-RANGES-INDEPENDENT-ACCEPTED.json'")
    ast.parse(text)
    target=HERE/name
    if target.exists():
        raise RuntimeError('Refuse overwriting new verifier revision')
    target.write_text(text,encoding='utf-8',newline='\n')
    records.append({'originalTool':source.relative_to(REPO).as_posix(),'originalToolSha256':hashlib.sha256(raw).hexdigest(),'newTool':target.relative_to(REPO).as_posix(),'newToolSha256':hashlib.sha256(target.read_bytes()).hexdigest()})
result={'status':'prepared-new-authorized-review-window-not-executed','utc':datetime.now(timezone.utc).isoformat(),'verifier':'/root/tail2h_verification','taskClass':'complex-established-semantic-and-object-binding','model':'gpt-6.1-sol','reasoningEffort':'xhigh','owned':NEW_BASE+'reviews/**','reviewStartUtc':'2026-10-04T16:35:50+00:00','reviewDeadlineUtc':'2026-10-04T17:50:50+00:00','historicalSourceBase':OLD_BASE,'historicalRuntimeSourceCommits':['d26594a69a35f42336654b8169c61b40f55a32c0','b1de49c08be2850f6e98d4fe9f101e29778cdcdc'],'historicalActualProofStops':['2026-10-04T14:46:00+00:00','2026-10-04T15:06:00+00:00'],'allOriginalToolsSignaturesAndRawBytesPreserved':True,'changes':'Only new independent review/output location and authorized wall window; historical fixed Git/ZIP source paths, actual compile/AX/checker proof windows and original runtime finalDeadline remain unchanged. Parent actual complete path is supplied via task-specific B699_PARENT_ARCHIVE after C full-hash gate.','tools':records}
(HERE/'HISTORICAL-REVIEW-REVISION-PROVENANCE.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Prepared new1750 review/output revision; historical parent1446/tiny1506 proof windows unchanged')
