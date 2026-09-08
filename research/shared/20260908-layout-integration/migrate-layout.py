"""One-time migration from pinned branch snapshots; run only on clean source layouts."""
from pathlib import Path
import hashlib, json, os, posixpath, re, subprocess, sys

ROOT = Path.cwd()
MODE = sys.argv[1]
PREFIX = 'research/tasks/'
SHARED = 'research/shared/20260908-environment-publication-f0a6539'
CONFIG = {
    'main': ('7cab35e54092912f7e586f58ffd837ec7a8e87e0', [
        ('B686-Four', '20260908-lcm-distance-7cab35e', 'round9')]),
    'gpt': ('9bad0b9653f21822570c38f09229ca01fb2aa6a7', [
        ('B686-Four', '20260908-reflected-sum-9bad0b9', 'round9')]),
    'codex': ('98a1d90d249fa1ea8aec1807ea3155283979976e', [
        ('B677-Lcm', '20260908-interval-lcm-f0a6539', ''),
        ('B699-Binomial', '20260908-binomial-cofactors-f0a6539', '')]),
}
REV, RUNS = CONFIG[MODE]
def git(*args): return subprocess.check_output(['git', *args])
def sha(data): return hashlib.sha256(data).hexdigest()
source_files = git('ls-tree', '-r', '--name-only', REV).decode().splitlines()
source_set = set(source_files)
mapping, owners, directory_map = {}, {}, {}
for problem, run, olddir in RUNS:
    base = PREFIX + problem
    newbase = base + '/runs/' + run
    assert not (ROOT / newbase).exists(), newbase
    oldbase = base + ('/' + olddir if olddir else '')
    directory_map[oldbase] = newbase
    for old in source_files:
        if old.startswith(oldbase + '/'):
            rel = old[len(oldbase)+1:]
            if rel == 'README.md': rel = 'report-entry.md' if olddir else 'history/problem-entry.md'
            mapping[old] = newbase + '/' + rel
            owners[old] = newbase
    if olddir:
        for name, target in [('README.md', 'history/problem-entry.md'), ('frontier.md', 'frontier.md')]:
            old = base + '/' + name
            mapping[old] = newbase + '/' + target
            owners[old] = newbase

if MODE == 'codex':
    baseline = '9d403934c9716fc4bef63a18aaf443b3c0cb7e39'
    additions = git('diff', '--name-only', '--diff-filter=A', baseline, REV).decode().splitlines()
    for old in additions:
        if old.startswith('research/') and not old.startswith('research/tasks/'):
            mapping[old] = SHARED + '/' + old[len('research/'):]
            owners[old] = SHARED
    directory_map['research/platform-20260908'] = SHARED + '/platform-20260908'

def relocate(path):
    if path in mapping: return mapping[path]
    for old, new in sorted(directory_map.items(), key=lambda x: -len(x[0])):
        if path == old or path.startswith(old + '/'):
            return new + path[len(old):]
    return path

def fix_links(text, old, new):
    def replace(m):
        target = m.group(2)
        if re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*:', target) or target.startswith(('#', '/')):
            return m.group(0)
        path, sep, anchor = target.partition('#')
        resolved = posixpath.normpath(posixpath.join(posixpath.dirname(old), path))
        mapped = relocate(resolved)
        # Preserve pre-existing unresolved references rather than guessing a target.
        if resolved not in source_set and not any(p.startswith(resolved.rstrip('/')+'/') for p in source_files):
            return m.group(0)
        relative = posixpath.relpath(mapped, posixpath.dirname(new))
        return m.group(1) + relative + (sep + anchor if sep else '') + m.group(3)
    return re.sub(r'(\]\()([^\s)]+)(\))', replace, text)

rows = {}
for old, new in mapping.items():
    original = git('show', REV + ':' + old)
    current = ROOT / old
    # Source snapshots are pinned; only remove a current file when its bytes match.
    if current.is_file() and current.read_bytes() != original:
        # Shared navigation may already have a merged version; retain it until rebuilt.
        if not old.endswith(('/README.md', '/frontier.md')):
            raise RuntimeError('Unexpected current changes: '+old)
    data = original
    suffix = Path(old).suffix
    if suffix == '.lean':
        text = data.decode('utf-8-sig')
        for before, after in directory_map.items():
            def module(path):
                return '.'.join(p if re.match(r'^[A-Za-z_][A-Za-z0-9_]*$',p) else '«'+p+'»' for p in path.split('/'))
            a, b = module(before), module(after)
            text = re.sub(r'(?m)^(\s*import\s+[^\n]*)$', lambda m: m.group(0).replace(a,b), text)
        # Do not normalize line endings or a BOM when only imports are rewritten.
        encoded = text.encode('utf-8')
        if original.startswith(b'\xef\xbb\xbf'): encoded = b'\xef\xbb\xbf'+encoded
        data = encoded
    elif suffix == '.md':
        data = fix_links(original.decode('utf-8'),old,new).encode('utf-8')
    elif suffix in ('.py','.sh','.ps1'):
        text = original.decode('utf-8')
        for a,b in directory_map.items():
            text = text.replace(a,b)
            text = text.replace(a.replace('/','\\'),b.replace('/','\\'))
        data = text.encode('utf-8')
    target = ROOT / new
    target.parent.mkdir(parents=True, exist_ok=True)
    assert not target.exists(), new
    target.write_bytes(data)
    mode = git('ls-tree', REV, '--', old).split()[0].decode()
    if mode == '100755': target.chmod(0o755)
    owner = owners[old]
    archive = None
    if data != original:
        archive = owner + '/migration/originals/' + posixpath.relpath(new, owner) + '.txt'
        dest = ROOT / archive
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_bytes(original)
    rows.setdefault(owner,[]).append(dict(source=old,target=new,source_sha256=sha(original),
        target_sha256=sha(data),source_mode=mode,original_copy=archive,
        transform='none' if data==original else ('imports-only' if suffix=='.lean' else 'navigation-paths')))
    if current.is_file(): current.unlink()

for owner, entries in rows.items():
    dest = ROOT / owner / 'migration'
    dest.mkdir(parents=True,exist_ok=True)
    (dest/'manifest.json').write_text(json.dumps(dict(source_commit=REV,mode=MODE,files=entries),ensure_ascii=False,indent=2)+'\n')
    (dest/'README.md').write_text(f'''# 路径迁移与历史证据

来源固定为 `{REV}`。本批文件由旧位置迁入，原始字节与当前文件的对应关系见 [manifest.json](manifest.json)。

原始日志与数据保持字节不变；修改导入或当前导航的文件另有 `originals/` 字节副本。清单不追改旧验收结论。历史文档中固定的旧路径和哈希属于来源版本，可在 [原提交](https://github.com/HuanHuanHuanFFF/lean-math-lab/tree/{REV}) 查看原目录语境。

批次入口提供迁移后验证命令。旧环境、审查和验收脚本用于解释历史执行，不应在当前树直接运行；原报告仍是原版本的执行证据。本次迁移只做路径与入口工程，不新增数学结论。
''',encoding='utf-8')
    print(owner, len(entries), 'files;',sum(x['transform']!='none' for x in entries),'path adaptations')

# Remove only empty directories left by these tracked source moves.
for oldbase in directory_map:
    path = ROOT / oldbase
    if path.exists():
        for p in sorted(path.rglob('*'),key=lambda p:len(p.parts),reverse=True):
            if p.is_dir():
                try:p.rmdir()
                except OSError:pass
        try:path.rmdir()
        except OSError:pass
