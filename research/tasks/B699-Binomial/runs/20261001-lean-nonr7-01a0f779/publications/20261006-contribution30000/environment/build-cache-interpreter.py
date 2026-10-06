"""Build only the fixed mathlib cache tool's Lean modules, serially.

The retained Windows toolchain intentionally lacks native-linker libraries.
Run Cache/Main.lean with Lean's interpreter after this bootstrap.
"""
from __future__ import annotations

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys


def docker_command(command: list[str], workspace: Path, toolchain: Path,
                   outputs: dict[Path, Path], lean_path: str) -> list[str]:
    image = os.environ['B699_CACHE_SANDBOX_IMAGE']
    guard = Path(__file__).resolve().parent / 'container-resource-guard.sh'
    arguments = ['docker', 'run', '--rm', '--pull', 'never', '--network', 'none',
                 '--read-only', '--cap-drop', 'ALL', '--security-opt', 'no-new-privileges',
                 '--pids-limit', '256', '--cpus', '1', '--memory', '2048m', '--memory-swap', '2048m',
                 '--ulimit', 'core=0', '--user', f'{os.getuid()}:{os.getgid()}',
                 '--tmpfs', '/tmp:rw,noexec,nosuid,nodev,size=64m,mode=1777',
                 '--workdir', str(Path(command[-1]).parent), '--env', f'LEAN_PATH={lean_path}',
                 '--env', f'PATH={toolchain / "bin"}:/usr/local/bin:/usr/bin:/bin',
                 '--env', 'HOME=/tmp', '--env', 'TMPDIR=/tmp',
                 '--mount', f'type=bind,src={workspace},dst={workspace},readonly',
                 '--mount', f'type=bind,src={toolchain},dst={toolchain},readonly',
                 '--mount', f'type=bind,src={guard},dst=/b699-resource-guard.sh,readonly']
    for output in outputs.values():
        output.mkdir(parents=True, exist_ok=True)
        arguments += ['--mount', f'type=bind,src={output},dst={output}']
    # No RLIMIT_AS: virtual mappings/reservations are not committed/RSS memory.
    return arguments + [image, '/bin/sh', '/b699-resource-guard.sh', '2048', *command]


def main() -> None:
    workspace, toolchain, receipt_path = (Path(value).resolve() for value in sys.argv[1:4])
    manifest = json.loads((workspace / "lake-manifest.json").read_text())
    packages = {p["name"]: workspace / ".lake/packages" / p["name"] for p in manifest["packages"]}
    roots = list(packages.values())
    outputs = {root: root / ".lake/build/lib/lean" for root in roots}
    lean_path = os.pathsep.join(str(path) for path in outputs.values())
    environment = os.environ.copy()
    environment["LEAN_PATH"] = lean_path
    built = []
    seen = set()
    sandboxed = os.name != 'nt' and 'B699_CACHE_SANDBOX_IMAGE' in environment

    def save() -> None:
        receipt_path.write_text(json.dumps({'serial': True, 'modules': built,
            'leanPath': lean_path, 'sandboxed': sandboxed,
            'memoryControl': 'Docker cgroup 2048MiB, no swap; not RLIMIT_AS' if sandboxed else 'Lean option only',
            'scope': 'trusted fixed cache-tool sources, not B699 candidates'}, indent=2)+'\n', encoding='utf-8')

    def build(module: str) -> None:
        if module in seen or module.split(".")[0] in {"Init", "Lean", "Lake", "Std"}:
            return
        seen.add(module)
        relative = Path(*module.split(".")).with_suffix(".lean")
        matches = [(root, root / relative) for root in roots if (root / relative).is_file()]
        if len(matches) != 1:
            raise RuntimeError(f"source lookup for {module}: {matches}")
        root, source = matches[0]
        text = source.read_text(encoding="utf-8")
        for line in text.splitlines():
            match = re.match(r"\s*(?:public\s+)?import\s+(.+)", line)
            if match:
                for dependency in match[1].split("--", 1)[0].split():
                    build(dependency)
        output = outputs[root] / relative.with_suffix(".olean")
        output.parent.mkdir(parents=True, exist_ok=True)
        command = [str(toolchain / "bin" / ("lean.exe" if os.name == "nt" else "lean")), "--memory=768", "--threads=1", '-DElab.async=false',
                   "-R", str(root), "-o", str(output), str(source)]
        actual_command = docker_command(command, workspace, toolchain, outputs, lean_path) if sandboxed else command
        record = {'module': module, 'source': str(source),
                  'sourceSha256': hashlib.sha256(source.read_bytes()).hexdigest(),
                  'output': str(output), 'command': actual_command, 'status': 'starting'}
        built.append(record)
        save()
        print(f'CACHE_MODULE_BEGIN {module} threads=1 Elab.async=false managed=768MiB sandboxed={sandboxed}', flush=True)
        result = subprocess.run(actual_command, cwd=root, env=environment, check=False)
        record['exitCode'] = result.returncode
        record['status'] = 'compiled' if result.returncode == 0 else 'failed'
        if result.returncode == 0:
            record['objectSha256'] = hashlib.sha256(output.read_bytes()).hexdigest()
        save()
        if result.returncode:
            raise RuntimeError(f"{module}: exit {result.returncode}")
        print(f"built {module}", flush=True)

    build("Cache.Main")
    save()
    print(f"built {len(built)} modules; no native executable link")


if __name__ == "__main__":
    main()
