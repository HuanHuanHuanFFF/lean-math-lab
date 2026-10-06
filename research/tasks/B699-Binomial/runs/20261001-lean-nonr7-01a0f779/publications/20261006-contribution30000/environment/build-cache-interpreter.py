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
from datetime import datetime,timezone
import math
import signal
import uuid


def docker_command(command: list[str], workspace: Path, toolchain: Path,
                   outputs: dict[Path, Path], lean_path: str) -> list[str]:
    image = os.environ['B699_CACHE_SANDBOX_IMAGE']
    guard = Path(__file__).resolve().parent / 'container-resource-guard.sh'
    entry = Path(__file__).resolve().parent / 'container-probe-entry.sh'
    name='b699-cache-'+uuid.uuid4().hex
    cidfile=workspace/(name+'.cid')
    if cidfile.exists():
        raise RuntimeError('owned cache cidfile already exists')
    arguments = ['docker', 'run', '--rm', '--pull', 'never','--name',name,'--cidfile',str(cidfile),'--network', 'none',
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
    timer=[]
    if os.environ.get('B699_HARD_DEADLINE_UTC'):
        deadline=datetime.fromisoformat(os.environ['B699_HARD_DEADLINE_UTC'])
        seconds=math.floor((deadline-datetime.now(timezone.utc)).total_seconds()-45)
        if seconds<1:
            raise RuntimeError('hard UTC lease cannot admit another cache module')
        arguments+=['--env','B699_HARD_DEADLINE_EPOCH='+str(int(deadline.timestamp())),
                    '--mount',f'type=bind,src={entry},dst=/b699-round-entry.sh,readonly']
        timer=['/bin/sh','/b699-round-entry.sh',str(seconds)]
    return arguments + [image, '/bin/sh', '/b699-resource-guard.sh', '2048', *timer, *command]


def run_cache_owned(command,record,cwd,environment):
    name=command[command.index('--name')+1]
    cidfile=Path(command[command.index('--cidfile')+1])
    if not re.fullmatch('b699-cache-[0-9a-f]{32}',name) or cidfile.exists():
        raise RuntimeError('untrusted cache launch identity')
    query=['docker','container','ls','--all','--no-trunc','--filter','name=^/'+name+'$','--format','{{.ID}}']
    if subprocess.check_output(query,text=True,env=environment,timeout=3).strip():
        raise RuntimeError('owned cache name exists before launch')
    record['ownedContainerName']=name
    record['cleanupConfirmed']=False
    process=None
    try:
        process=subprocess.Popen(command,cwd=cwd,env=environment)
        return process.wait()
    finally:
        identifier=cidfile.read_text().strip() if cidfile.is_file() else None
        record['cleanupTarget']=identifier
        if identifier:
            if not re.fullmatch('[0-9a-f]{64}',identifier):
                raise RuntimeError('invalid trusted cache cidfile')
            subprocess.run(['docker','container','rm','--force',identifier],env=environment,
                           stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=False,timeout=3)
        remaining=subprocess.check_output(query,text=True,env=environment,timeout=3).strip()
        record['cleanupConfirmed']=not remaining
        if process is not None and process.poll() is None:
            try:
                process.wait(timeout=3)
            except subprocess.TimeoutExpired:
                process.terminate()
                try:
                    process.wait(timeout=3)
                except subprocess.TimeoutExpired:
                    process.kill()
                    process.wait()
        if not record['cleanupConfirmed']:
            raise RuntimeError('owned cache container cleanup cannot be confirmed')
        cidfile.unlink(missing_ok=True)


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
        command = [str(toolchain / "bin" / ("lean.exe" if os.name == "nt" else "lean")), "--memory=1536", "--threads=1", '-DElab.async=false',
                   "-R", str(root), "-o", str(output), str(source)]
        actual_command = docker_command(command, workspace, toolchain, outputs, lean_path) if sandboxed else command
        record = {'module': module, 'source': str(source),
                  'sourceSha256': hashlib.sha256(source.read_bytes()).hexdigest(),
                  'output': str(output), 'command': actual_command, 'status': 'starting'}
        built.append(record)
        save()
        print(f'CACHE_MODULE_BEGIN {module} threads=1 Elab.async=false managed=1536MiB sandboxed={sandboxed}', flush=True)
        try:
            code=run_cache_owned(actual_command,record,root,environment) if sandboxed else subprocess.run(actual_command,cwd=root,env=environment,check=False).returncode
        finally:
            save()
        record['exitCode'] = code
        record['status'] = 'compiled' if code == 0 else 'failed'
        if code == 0:
            record['objectSha256'] = hashlib.sha256(output.read_bytes()).hexdigest()
        save()
        if code:
            raise RuntimeError(f"{module}: exit {code}")
        print(f"built {module}", flush=True)

    build("Cache.Main")
    save()
    print(f"built {len(built)} modules; no native executable link")


if __name__ == "__main__":
    if os.name!='nt':
        def interrupt_owned(signum,frame):
            raise KeyboardInterrupt('cache build interrupted; owned CID cleanup')
        signal.signal(signal.SIGTERM,interrupt_owned)
    main()
