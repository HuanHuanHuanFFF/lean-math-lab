from pathlib import Path
import os, sys, subprocess, hashlib, json, time
from datetime import datetime, timezone

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[4]
LEAN = REPO / '.tools/elan/toolchains/leanprover--lean4---v4.33.1/bin/lean.exe'
ENV = dict(os.environ)
ENV['LEAN_PATH'] = os.pathsep.join(map(str, [REPO, REPO / '.lake/build/lib/lean'] +
    [p / '.lake/build/lib/lean' for p in sorted((REPO / '.lake/packages').iterdir()) if p.is_dir()]))
ENV['TEMP'] = ENV['TMP'] = str(REPO / '.tools/tmp')
OUT = HERE / 'verification'
OUT.mkdir(exist_ok=True)

def digest(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()

records = []
def run(label, command, source=None):
    start = time.monotonic()
    proc = subprocess.run(command, cwd=REPO, env=ENV, stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT, text=True, encoding='utf-8', errors='replace')
    log = OUT / f'{label}.log'
    log.write_text(proc.stdout, encoding='utf-8')
    records.append(dict(label=label, command=list(map(str,command)), exit_code=proc.returncode,
        seconds=round(time.monotonic()-start,2), log=str(log.relative_to(REPO)),
        log_sha256=digest(log), source=str(source.relative_to(REPO)) if source else None,
        source_sha256=digest(source) if source else None))
    print(label, proc.returncode, flush=True)
    if proc.returncode: print(proc.stdout, flush=True)
    return proc.returncode == 0

started = datetime.now(timezone.utc).isoformat()
ok = run('source-policy',[sys.executable,str(REPO/'scripts/check-lean-policy.py'),'--roots',str(HERE)])
ok = run('lean-version',[str(LEAN),'--version']) and ok
for name in ['Boundary','BigPrimeBinomial','SmallPrime','GcdBound']:
    source = HERE / f'{name}.lean'
    ok = run(name,[str(LEAN),'-o',str(HERE/f'{name}.olean'),str(source)],source) and ok
roots = ['uniform_distance_bound_small','rational_bound_of_nat_bound','displacement_cast',
    'large_prime_power_dvd_choose','large_prime_part_dvd_choose',
    'distance_product_eq_factorials','small_prime_factorization_bound',
    'prime_part_le_factorial_pow','gcd_le_factorial_pow_choose_card','gcd_le_factorial_pow_choose']
report = dict(success=ok, started_utc=started, finished_utc=datetime.now(timezone.utc).isoformat(),
    full_uniform_distance_bound_lean_verified=False, independent_kernel_checker_used=False,
    toolchain='leanprover/lean4:v4.33.1', mathlib_revision='0df444a360eaa60ab8c11dca51a86af692955474',
    method='Direct pinned Lean executable with local package library paths, executable #guard_msgs axiom checks',
    accepted_roots={f'B686UniformDistance.{r}':['propext','Classical.choice','Quot.sound'] for r in roots} if ok else {},
    records=records)
(HERE/'verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
sys.exit(0 if ok else 1)