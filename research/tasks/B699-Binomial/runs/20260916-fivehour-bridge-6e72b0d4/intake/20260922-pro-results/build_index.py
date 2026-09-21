"""Build ordinary-file reading links from MEMBERS.json; no source execution."""

import json
import os
from pathlib import Path


here = Path(__file__).resolve().parent
root = next(p for p in here.parents if (p / 'AGENTS.md').is_file())
data = json.loads((here / 'MEMBERS.json').read_text(encoding='utf-8'))
names = {'README.MD', 'REPORT.MD', 'PROOFS.MD', 'HANDOFF.MD', 'OVERVIEW.MD',
         'SOURCE_ADOPTION.MD', 'ROUND_INDEX.MD', 'SESSION_TIMELINE.MD', 'MASTER_SUMMARY.MD', 'INDEX.MD', '00_README.MD', 'LATEST_HANDOFF.MD', 'SESSION_HANDOFF.MD', 'SESSION_SUMMARY.MD', '03_FINAL_FRONTIER.MD', 'FAILURES.MD', 'FAILURE_BOUNDARIES.MD', 'CURRENT_FRONTIER.MD', 'SESSION_SYNTHESIS.MD', 'SESSION_RESULTS_INDEX.MD', 'MASTER_REPORT.MD', 'FAILURE_BOUNDARY_INDEX.MD', 'FAILURE_AND_NEGATIVE_RESULTS_INDEX.MD', 'CONTENTS.MD', 'TIME_BOUNDARY.MD', 'FINAL_DELIVERIES.MD', 'EVIDENCE_LEVEL.MD', 'EVIDENCE_LEVELS.MD', 'SUPERSESSION_NOTES.MD'}
lines = ['# 普通文件来源导航', '',
         '原始 ZIP 留在 `E:/Download`。下列链接直接指向保留的普通文件；每个源包的完整成员见 MEMBERS.json。来源中的旧 ZIP 路径按该映射解释。', '']
for source in data['roots']:
    lines.extend(['## ' + source['label'], ''])
    seen = set()

    def walk(key):
        if key in seen:
            return
        seen.add(key)
        archive = data['archives'][key]
        lines.append('- **' + archive['original_name'] + '** (`' + key[:12] + '`)')
        for member in archive['members']:
            if member['kind'] == 'file' and Path(member['original_path']).name.upper() in names:
                link = os.path.relpath(root / member['retained_path'], here).replace('\\', '/')
                lines.append('  - [' + member['original_path'] + '](' + link + ')')
        for member in archive['members']:
            if member['kind'] == 'archive':
                walk(member['archive_sha256'])

    walk(source['sha256'])
    lines.append('')
(here / 'PACKAGE_INDEX.md').write_text('\n'.join(lines).rstrip() + '\n', encoding='utf-8', newline='\n')
print('Archive reading entries:', sum(line.startswith('- **') for line in lines))
