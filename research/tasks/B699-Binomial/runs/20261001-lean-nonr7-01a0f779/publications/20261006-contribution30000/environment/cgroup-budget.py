"""Resolve this process's visible cgroup memberships and ancestor constraints."""
from pathlib import Path
import re


def observe(root: Path = Path('/')) -> dict:
    def path(value: str) -> Path:
        return root / value.lstrip('/')
    def read(value: Path) -> str | None:
        return value.read_text().strip() if value.exists() else None
    def unescape(value: str) -> str:
        return re.sub(r'\\([0-7]{3})', lambda match: chr(int(match[1], 8)), value)
    memberships = []
    for line in path('/proc/self/cgroup').read_text().splitlines():
        number, controllers, group = line.split(':', 2)
        memberships.append((number, set(controllers.split(',')), group))
    mounts = []
    for line in path('/proc/self/mountinfo').read_text().splitlines():
        before, after = line.split(' - ', 1)
        fields, fs = before.split(), after.split()
        if fs[0] in {'cgroup', 'cgroup2'}:
            mounts.append((fs[0], unescape(fields[3]), unescape(fields[4]), set(fs[2].split(','))))
    rows = []
    for number, controllers, group in memberships:
        for kind, mount_root, mountpoint, mount_controllers in mounts:
            if kind == 'cgroup2' and number != '0':
                continue
            if kind == 'cgroup' and not controllers.intersection(mount_controllers):
                continue
            if group == '/':
                relative = ''
            elif mount_root == '/':
                relative = group.lstrip('/')
            elif group == mount_root or group.startswith(mount_root.rstrip('/') + '/'):
                relative = group[len(mount_root):].lstrip('/')
            else:
                continue
            top = path(mountpoint).resolve()
            current = (top / relative).resolve()
            if not current.is_relative_to(top):
                raise RuntimeError('cgroup membership escaped its mount')
            while True:
                memory_limit = read(current / ('memory.max' if kind == 'cgroup2' else 'memory.limit_in_bytes'))
                memory_current = read(current / ('memory.current' if kind == 'cgroup2' else 'memory.usage_in_bytes'))
                stat = read(current / 'memory.stat') or ''
                inactive = re.search(r'^(?:total_)?inactive_file (\d+)$', stat, re.M)
                cpu = read(current / 'cpu.max') if kind == 'cgroup2' else {
                    'quota': read(current / 'cpu.cfs_quota_us'), 'period': read(current / 'cpu.cfs_period_us')}
                rows.append({'kind': kind, 'membership': group, 'mountRoot': mount_root,
                             'mountpoint': mountpoint, 'directory': '/' + str(current.relative_to(root)),
                             'memoryLimit': memory_limit, 'memoryCurrent': memory_current,
                             'inactiveFileReclaimableBytes': int(inactive[1]) if inactive else 0,
                             'cpuQuota': cpu})
                if current == top:
                    break
                current = current.parent
    memory = dict(re.findall(r'^(\w+):\s+(\d+) kB$', path('/proc/meminfo').read_text(), re.M))
    available = int(memory['MemAvailable']) * 1024
    for row in rows:
        limit, current = row['memoryLimit'], row['memoryCurrent']
        if limit and limit.isdigit() and int(limit) < 1 << 60 and current and current.isdigit():
            available = min(available, max(0, int(limit) - int(current) + row['inactiveFileReclaimableBytes']))
    return {'hostMemAvailableBytes': int(memory['MemAvailable']) * 1024,
            'availableBudgetBytes': available, 'visibleSelfAndAncestorCgroups': rows,
            'namespaceVisibility': 'visible hierarchy only; proof Docker cap separately enforced'}
