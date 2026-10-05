"""Only extend review wall time under recorded Leader15-minute extension."""
import ast
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
extension=HERE.parent/'EXTENSION.md'
raw=extension.read_bytes()
if '15:31:38' not in raw.decode('utf-8-sig') or '15:46:38' not in raw.decode('utf-8-sig'):
    raise RuntimeError('Recorded extension/cap missing')
evidence={'path':str(extension),'sha256':hashlib.sha256(raw).hexdigest(),'originalReviewDeadlineUtc':'2026-10-04T15:16:38+00:00','revisedReviewDeadlineUtc':'2026-10-04T15:31:38+00:00','proofWindowsUnchanged':{'parent':'2026-10-04T14:46:00+00:00','tiny':'2026-10-04T15:06:00+00:00'},'noNewProofExecutionAuthorizedByThisTool':True}
records=[]
for original in ('bind_extended_archive.py','bind_tiny_archive.py','verify_retained_member_map.py'):
    src=HERE/original
    text=src.read_text(encoding='utf-8-sig')
    before="DEADLINE = datetime.fromisoformat('2026-10-04T15:16:38+00:00')"
    if text.count(before)!=1:
        raise RuntimeError('Review deadline anchor changed')
    text=text.replace(before,"DEADLINE = datetime.fromisoformat('2026-10-04T15:31:38+00:00')")
    if original.startswith('bind_'):
        anchor="'hardDeadlineUtc': DEADLINE.isoformat(),"
        if text.count(anchor)!=2:
            raise RuntimeError('Actual binding/signature deadline fields changed')
        text=text.replace(anchor,anchor+" 'originalReviewDeadlineUtc': '2026-10-04T15:16:38+00:00', 'recordedExtension': "+repr(evidence)+",")
    if original=='bind_tiny_archive.py':
        text=text.replace('b699-tail2h-upperinitial-37207871560-complete.zip','b699-tail2h-upperinitial-37207871560-resumed.zip')
    ast.parse(text)
    target=HERE/(src.stem+'_review_extended.py')
    target.write_text(text,encoding='utf-8',newline='\n')
    records.append({'originalTool':src.name,'originalToolSha256':hashlib.sha256(src.read_bytes()).hexdigest(),'newTool':target.name,'newToolSha256':hashlib.sha256(target.read_bytes()).hexdigest()})
(HERE/'REVIEW-WINDOW-REVISION-PROVENANCE.json').write_text(json.dumps({'status':'prepared-walltime-revision-not-executed','recordedExtension':evidence,'tools':records,'unchangedStandards':'Actual fixed source/math/compile/AX/normalchecker/old-source-object-parts/all bytes/pins/import paths checks unchanged; all original verifiers and signed byte records preserved.'},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print('Prepared separately recorded1531 review-wall revisions; parent1446/tiny1506 proof windows unchanged')
