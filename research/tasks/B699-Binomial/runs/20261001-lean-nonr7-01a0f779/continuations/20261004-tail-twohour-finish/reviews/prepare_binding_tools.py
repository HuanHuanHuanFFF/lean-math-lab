"""Adapt preserved four-origin verifier to this authorized time window."""
import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
old = here.parent.parent / '20261004-tail-until2020/reviews'
replacements = {
    '2026-10-04T11:49:12+00:00': '2026-10-04T13:16:38+00:00',
    '2026-10-04T12:16:00+00:00': '2026-10-04T14:46:00+00:00',
    '2026-10-04T12:20:00+00:00': '2026-10-04T15:16:38+00:00',
    '2026-10-04T11:49:12Z': '2026-10-04T13:16:38Z',
    '2026-10-04T12:16:00Z': '2026-10-04T14:46:00Z',
    '2026-10-04T12:20:00Z': '2026-10-04T15:16:38Z',
    '2026-10-04T12:14:00Z': '2026-10-04T13:55:00Z',
    '/root/tail90_verification': '/root/tail2h_verification',
}
records = []
for name in ('bind_current_archive.py', 'check_transitive_axioms.py', 'verify_retained_member_map.py'):
    raw = (old/name).read_bytes()
    text = raw.decode('utf-8-sig')
    for before, after in replacements.items():
        text = text.replace(before, after)
    if name == 'bind_current_archive.py':
        before = "literal_relative = (BASE.replace('20261004-tail-until2020/', '20261004-tail-ninetymin/') + 'reviews/Tail10001ExactLegacy.lean') if k == 10001 else BASE + f'reviews/Tail{k}ExactLegacy.lean'"
        after = "literal_relative = BASE.replace('20261004-tail-twohour-finish/', '20261004-tail-ninetymin/' if k == 10001 else '20261004-tail-until2020/') + f'reviews/Tail{k}ExactLegacy.lean'"
        if text.count(before) != 1:
            raise RuntimeError('Literal adapter fixed anchor changed')
        text = text.replace(before, after)
    target = here/name
    target.write_text(text, encoding='utf-8', newline='\n')
    records.append({'originalPath': str(old/name), 'originalSha256': hashlib.sha256(raw).hexdigest(), 'newPath': str(target), 'newSha256': hashlib.sha256(target.read_bytes()).hexdigest()})
(here/'BINDING-TOOL-PROVENANCE.json').write_text(json.dumps({'status': 'adapted-not-executed', 'changes': 'New authorized window, verifier identity, exact preserved literal paths; original closure/AX/object/raw/executable checks retained', 'tools': records}, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
print('Prepared four-origin raw/source/object/AX/checker binding tools for new authorized window')
