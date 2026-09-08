from pathlib import Path
import os, sys, subprocess, hashlib, json, time
from datetime import datetime, timezone

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[4]
LEAN = REPO / '.tools/elan/toolchains/leanprover--lean4---v4.33.1/bin/lean.exe'
ENV = dict(os.environ)
ENV['LEAN_PATH'] = os.pathsep.join(map(str, [
    HERE, REPO / 'research/tasks/B686-Four/formalization/PrimeCounting',
    REPO, REPO / '.lake/build/lib/lean'] +
    [p / '.lake/build/lib/lean' for p in sorted((REPO / '.lake/packages').iterdir()) if p.is_dir()]))
ENV['TEMP'] = ENV['TMP'] = str(REPO / '.tools/tmp')
OUT = HERE / 'logs'
OUT.mkdir(exist_ok=True)

name = sys.argv[1]
source = HERE / f'{name}.lean'
label = sys.argv[2] if len(sys.argv) > 2 else name
command = [str(LEAN), '-o', str(HERE / f'{name}.olean'), str(source)]
started = datetime.now(timezone.utc).isoformat()
t0 = time.monotonic()
proc = subprocess.run(command, cwd=REPO, env=ENV, stdout=subprocess.PIPE,
    stderr=subprocess.STDOUT, text=True, encoding='utf-8', errors='replace')
log = OUT / f'{label}.log'
log.write_text(proc.stdout, encoding='utf-8')
record = dict(started_utc=started, seconds=round(time.monotonic()-t0,2),
    exit_code=proc.returncode, command=command,
    source=str(source.relative_to(REPO)), source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),
    log=str(log.relative_to(REPO)), log_sha256=hashlib.sha256(log.read_bytes()).hexdigest())
(OUT/f'{label}.json').write_text(json.dumps(record,ensure_ascii=False,indent=2),encoding='utf-8')
print(json.dumps(record,ensure_ascii=False),flush=True)
print(proc.stdout,flush=True)
sys.exit(proc.returncode)
