from pathlib import Path
import os, sys, re, subprocess, hashlib, json, time
from datetime import datetime, timezone

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[4]
LEAN = REPO / '.tools/elan/toolchains/leanprover--lean4---v4.33.1/bin/lean.exe'
OUT = HERE / 'verification'
BUILD = OUT / 'build'
BUILD.mkdir(parents=True, exist_ok=True)
ENV = dict(os.environ)
ENV['LEAN_PATH'] = os.pathsep.join(map(str, [BUILD, REPO, REPO / '.lake/build/lib/lean'] +
    [p / '.lake/build/lib/lean' for p in sorted((REPO / '.lake/packages').iterdir()) if p.is_dir()]))
ENV['TEMP'] = ENV['TMP'] = str(REPO / '.tools/tmp')
RECORDS = []


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(label, command, source=None, output=None):
    start = time.monotonic()
    proc = subprocess.run(command, cwd=REPO, env=ENV, stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT, text=True, encoding='utf-8', errors='replace')
    log = OUT / f'{label}.log'
    log.write_text(proc.stdout, encoding='utf-8')
    RECORDS.append(dict(label=label, command=list(map(str,command)), exit_code=proc.returncode,
        seconds=round(time.monotonic()-start,2), log=str(log.relative_to(REPO)),
        log_sha256=digest(log), source=str(source.relative_to(REPO)) if source else None,
        source_sha256=digest(source) if source else None,
        output=str(output.relative_to(REPO)) if output else None,
        output_sha256=digest(output) if output and proc.returncode == 0 else None))
    print(f'{label}: exit {proc.returncode}', flush=True)
    if proc.returncode:
        print(proc.stdout,flush=True)
    return proc.returncode == 0


# Recompile the exact local project import closure, including frozen inputs.
# Output objects go only to our own mirror, leaving all frozen directories read-only.
ordered = []
seen = set()

def visit(source):
    source = source.resolve()
    if source in seen:
        return
    seen.add(source)
    source_text = source.read_text(encoding='utf-8-sig')
    for module in re.findall(r'^\s*import\s+(research\.[^\s]+)', source_text, re.MULTILINE):
        relative = module.replace('«','').replace('»','').replace('.', '/') + '.lean'
        dependency = REPO / relative
        if not dependency.is_file():
            raise FileNotFoundError(f'Project import source missing: {module}')
        visit(dependency)
    ordered.append(source)

for root in [HERE/'UniformDistance.lean', HERE/'Consumer.lean']:
    visit(root)

started = datetime.now(timezone.utc).isoformat()
policy_code = (
    "import runpy,sys;from pathlib import Path;"
    "policy=runpy.run_path('scripts/check-lean-policy.py');"
    "paths=[Path(p) for p in sys.argv[1:]];"
    "issues=[i for p in paths for i in policy['scan_text'](p.read_text(encoding='utf-8-sig'),str(p))];"
    "print(chr(10).join(issues) if issues else 'Source policy passed for '+str(len(paths))+' exact closure files.');"
    "sys.exit(1 if issues else 0)"
)
ok = run('source-policy',[sys.executable,'-c',policy_code]+list(map(str,ordered)))
ok = run('lean-version',[str(LEAN),'--version']) and ok
for source in ordered:
    if not ok:
        break
    output = BUILD / source.relative_to(REPO).with_suffix('.olean')
    output.parent.mkdir(parents=True,exist_ok=True)
    ok = run(source.stem,[str(LEAN),'-DautoImplicit=false','-DrelaxedAutoImplicit=false',
        '-o',str(output),str(source)],source,output)

manifest = json.loads((REPO/'lake-manifest.json').read_text(encoding='utf-8-sig'))
mathlib = next(p for p in manifest['packages'] if p['name']=='mathlib')
roots = [
    'B686LcmScale.gcd_product_dvd_factorial_mul_centeredDiffLcm',
    'B686LcmBounds.uniform_distance_bound_sixty_four',
    'B686LcmBounds.uniform_distance_bound',
    'B686UniformRound9.uniform_distance_bound_sixty_four',
    'B686UniformRound9.uniform_distance_bound_products',
    'B686UniformRound9.Consumer.original_statement_sixty_four',
    'B686UniformRound9.Consumer.original_statement',
    'B686UniformRound9.Consumer.rational_ratio_statement']
report = dict(success=ok, started_utc=started, finished_utc=datetime.now(timezone.utc).isoformat(),
    full_uniform_distance_bound_lean_verified=ok,
    stronger_constant_64_lean_verified=ok,
    external_constant_18_locally_verified=False,
    original_B686_nonexistence_proved=False, independent_kernel_checker_used=False,
    toolchain=(REPO/'lean-toolchain').read_text().strip(), mathlib_revision=mathlib['rev'],
    method='Exact project source import closure recompiled into an isolated output mirror; pinned mathlib libraries; exact transitive-axiom guards and separate importing consumers',
    axiom_guard_whitespace='Whitespace alone is normalized; the complete printed axiom list must match exactly. No substring matching or added axiom is permitted.',
    allowed_transitive_axioms=['propext','Classical.choice','Quot.sound'],
    accepted_roots={root:['propext','Classical.choice','Quot.sound'] for root in roots} if ok else {},
    source_closure=[dict(source=str(p.relative_to(REPO)),source_sha256=digest(p),
        current_round=('round9' in p.parts)) for p in ordered],
    inactive_candidates_not_in_proof_chain=['Constants.lean','ElementaryWeighted.lean','WeightedPrime.lean'],
    separately_verified_reusable_fragments=['Algebraic.lean','Choose.lean','../main/RankProduct.lean'],
    upstream_commit='aff1d30b3b1c6bd705810fa4d588b03940fb31df',
    external_license_file='LICENSE-Will-Blair.txt', records=RECORDS)
(HERE/'verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
sys.exit(0 if ok else 1)
