#!/usr/bin/env python3
"""Generate navigation from tracked paths; do not infer mathematical acceptance."""
import argparse
import json
import subprocess
from pathlib import Path


def render(paths):
    paths = set(paths)
    runs = sorted({tuple(p.split('/')[:5]) for p in paths
                   if p.startswith('research/tasks/') and len(p.split('/')) >= 6
                   and p.split('/')[3] == 'runs'})
    lines = ['# 研究批次目录', '',
             '由 `python scripts/research-catalog.py` 按 Git 跟踪路径生成。这里只提供导航；文件名、目录和 CI 状态不构成数学验收。准确范围及证据等级见各批次原记录。', '',
             '[题目索引](README.md) · [材料与历史路径恢复](../docs/ARTIFACTS.md) · [Leader 当前入口](../LEADER.md)', '']
    for problem in sorted({r[2] for r in runs}):
        lines += [f'## {problem}', '', '| 批次 | 原始状态入口 |', '|---|---|']
        for run in sorted((r for r in runs if r[2] == problem), reverse=True):
            prefix = '/'.join(run)
            rel = prefix.removeprefix('research/')
            title = f'[{run[-1]}]({rel}/README.md)' if prefix+'/README.md' in paths else run[-1]
            links = []
            for name, label in [('frontier.md', '前沿'), ('acceptance.md', '验收'),
                                ('acceptance-815.md', '815 项验收'), ('report.md', '报告'),
                                ('handoff.md', '交接'), ('HANDOFF.md', '交接'),
                                ('ARCHIVES.json', '原件映射'),
                                ('notes/huan-final-handoff-20260912.md', '2026-09-12 交接')]:
                if prefix+'/'+name in paths:
                    links.append(f'[{label}]({rel}/{name})')
            lines.append(f"| {title} | {' · '.join(links) or '见批次目录'} |")
        lines.append('')
    lines += ['早期不在 `runs/` 下的历史材料，继续从各题 README 进入。修改入口文件后可重新运行生成器；不要在此另行维护一份数学进度。', '']
    return '\n'.join(lines)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repo', type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument('--inventory', type=Path, help='Optional saved Git tree JSON for an API-only checkout')
    args = parser.parse_args()
    if args.inventory:
        paths = [entry['path'] for entry in json.loads(args.inventory.read_text())]
    else:
        output = subprocess.check_output(['git', '-C', str(args.repo), 'ls-files', '-z'])
        paths = output.decode('utf-8').rstrip('\0').split('\0')
    destination = args.repo / 'research/CATALOG.md'
    destination.parent.mkdir(parents=True, exist_ok=True)
    destination.write_text(render(paths), encoding='utf-8')
    print('Updated research/CATALOG.md')


if __name__ == '__main__':
    main()
