#!/usr/bin/env python3
"""Single-slot developmental checkpoint, not full final-closure acceptance."""
from __future__ import annotations
import argparse, ctypes, hashlib, json, os, re, shutil, subprocess, sys, time
from datetime import datetime, timezone
from pathlib import Path
from ctypes import wintypes

ROOT = Path(__file__).resolve().parents[7]
RUN = Path(__file__).resolve().parents[2]
LEAN = Path('D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/bin/lean.exe')
PACKAGES = Path('D:/CodingProject/Math/.lake/packages')
RAW = ROOT / '.tools/mid/prime-chain-dev'
OBJECTS = RAW / 'olean'
OVERLAY = RAW / 'mathlib'
STAMP = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
OUT = Path(__file__).parent / STAMP
for path in [OBJECTS, OVERLAY, RAW / 'tmp', OUT]:
    path.mkdir(parents=True, exist_ok=True)

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

class MemoryCounters(ctypes.Structure):
    _fields_ = [('cb', wintypes.DWORD), ('PageFaultCount', wintypes.DWORD),
                ('PeakWorkingSetSize', ctypes.c_size_t), ('WorkingSetSize', ctypes.c_size_t),
                ('QuotaPeakPagedPoolUsage', ctypes.c_size_t), ('QuotaPagedPoolUsage', ctypes.c_size_t),
                ('QuotaPeakNonPagedPoolUsage', ctypes.c_size_t), ('QuotaNonPagedPoolUsage', ctypes.c_size_t),
                ('PagefileUsage', ctypes.c_size_t), ('PeakPagefileUsage', ctypes.c_size_t)]
GET_MEMORY = ctypes.WinDLL('psapi').GetProcessMemoryInfo
GET_MEMORY.argtypes = [wintypes.HANDLE, ctypes.POINTER(MemoryCounters), wintypes.DWORD]
GET_MEMORY.restype = wintypes.BOOL

def sample_memory(proc):
    counters = MemoryCounters()
    counters.cb = ctypes.sizeof(counters)
    if GET_MEMORY(int(proc._handle), ctypes.byref(counters), counters.cb):
        return int(counters.PeakWorkingSetSize), int(counters.WorkingSetSize), int(counters.PeakPagefileUsage)
    return 0, 0, 0

parser = argparse.ArgumentParser()
parser.add_argument('stage', choices=['initial', 'core', 'norm', 'consumer', 'trial', 'end256', 'trial-kernel', 'end256-kernel', 'end256-kernel-sync'])
parser.add_argument('--timeout', type=int, default=300)
args = parser.parse_args()
if args.timeout <= 0 or args.timeout > 300:
    parser.error('timeout must be between 1 and 300 seconds')
previous_path = RUN / 'verification/20260909T114042Z/evidence.json'
previous = json.loads(previous_path.read_text(encoding='utf-8-sig'))
reused = []
for wanted in ['Math/B699/CofactorCriterion.lean',
    'research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean']:
    record = next(row for row in previous['compile_records'] if row['source'] == wanted)
    source, obj = ROOT / wanted, ROOT / record['output']
    if record['exit_code'] != 0 or sha(source) != record['source_sha256_after'] or sha(obj) != record['output_sha256']:
        raise RuntimeError(f'Reused dependency hash/acceptance mismatch: {wanted}')
    adopted = OBJECTS / Path(wanted).with_suffix('.olean')
    adopted.parent.mkdir(parents=True, exist_ok=True)
    for companion in obj.parent.glob(obj.name + '*'):
        shutil.copy2(companion, adopted.parent / companion.name)
    if sha(adopted) != record['output_sha256']:
        raise RuntimeError('Local adopted object hash mismatch: ' + wanted)
    reused.append({'source': wanted, 'source_sha256': sha(source), 'object': str(obj), 'object_sha256': sha(obj), 'verified': True})
manifest = json.loads((ROOT / 'lake-manifest.json').read_text(encoding='utf-8-sig'))
cache_paths = [PACKAGES / p['name'] / '.lake/build/lib/lean' for p in manifest['packages']]
old_objects = ROOT / '.tools/mid/verification/20260909T114042Z/olean'
env = os.environ.copy()
env['LEAN_PATH'] = os.pathsep.join(map(str, [OBJECTS, OVERLAY] + cache_paths))
for key in ['TEMP', 'TMP', 'TMPDIR']:
    env[key] = str(RAW / 'tmp')
env['PYTHONDONTWRITEBYTECODE'] = '1'
report = {'stage': args.stage, 'started_utc': datetime.now(timezone.utc).isoformat(),
          'development_only': True, 'full_project_closure_recompiled': False,
          'reused_dependency_evidence': str(previous_path), 'reused': reused,
          'memory_limit_mb': 1536, 'timeout_seconds_per_command': args.timeout,
          'lean_path': env['LEAN_PATH'].split(os.pathsep), 'commands': []}

def save():
    (OUT / 'evidence.json').write_text(json.dumps(report, indent=2, ensure_ascii=False) + '\n', encoding='utf8')

def compile_one(label: str, source: Path, source_root: Path, object_root: Path):
    rel = source.relative_to(source_root)
    target = (object_root / rel).with_suffix('.olean')
    target.parent.mkdir(parents=True, exist_ok=True)
    cmd = [str(LEAN), '-j1', '-M1536', '-DautoImplicit=false', '-DrelaxedAutoImplicit=false',
           '--root=' + str(source_root), '-o', str(target), str(source)]
    log = OUT / (label + '.log')
    started = time.monotonic()
    record = {'label': label, 'source': str(source), 'source_sha256_before': sha(source),
              'command': cmd, 'cwd': str(source_root), 'output': str(target),
              'started_utc': datetime.now(timezone.utc).isoformat(), 'log': str(log)}
    peak_ws, peak_sample, peak_commit, samples = 0, 0, 0, 0
    timed_out = False
    with log.open('wb') as stream:
        proc = subprocess.Popen(cmd, cwd=source_root, env=env, stdout=stream,
                                stderr=subprocess.STDOUT, creationflags=subprocess.CREATE_NO_WINDOW)
        while proc.poll() is None:
            pws, sample, commit = sample_memory(proc)
            peak_ws, peak_sample, peak_commit = max(peak_ws, pws), max(peak_sample, sample), max(peak_commit, commit)
            samples += 1
            if time.monotonic() - started > args.timeout:
                timed_out = True
                proc.kill()
                break
            time.sleep(0.1)
        code = proc.wait()
    record.update({'finished_utc': datetime.now(timezone.utc).isoformat(),
                   'seconds': round(time.monotonic() - started, 3), 'exit_code': code,
                   'timed_out': timed_out, 'peak_working_set_bytes': peak_ws,
                   'max_sampled_working_set_bytes': peak_sample, 'peak_commit_bytes': peak_commit,
                   'memory_sample_count': samples, 'memory_sample_interval_seconds': 0.1,
                   'source_sha256_after': sha(source), 'output_exists': target.exists(),
                   'output_sha256': sha(target) if target.exists() else None, 'log_sha256': sha(log)})
    output = log.read_text(encoding='utf8', errors='replace')
    audits = []
    unexpected = []
    for theorem, axioms in re.findall(r"'([^']+)' depends on axioms:\s*\[(.*?)\]", output, flags=re.S):
        names = [a.strip() for a in axioms.replace('\n', ' ').split(',') if a.strip()]
        audits.append({'theorem': theorem, 'axioms': names})
        unexpected += [a for a in names if a not in ['propext', 'Classical.choice', 'Quot.sound']]
    for theorem in re.findall(r"'([^']+)' does not depend on any axioms", output):
        audits.append({'theorem': theorem, 'axioms': []})
    record['axiom_prints'] = audits
    record['unexpected_axioms'] = sorted(set(unexpected))
    record['success'] = code == 0 and not timed_out and not unexpected and record['source_sha256_before'] == record['source_sha256_after']
    report['commands'].append(record)
    save()
    print(json.dumps({key: record[key] for key in ['label', 'seconds', 'exit_code', 'peak_working_set_bytes', 'peak_commit_bytes', 'success']}, ensure_ascii=False), flush=True)
    if output.strip():
        print(output, flush=True)
    if not record['success']:
        report['success'] = False
        save()
        raise SystemExit(1)

if args.stage == 'initial':
    compile_one('00-normnum-prime', PACKAGES / 'mathlib/Mathlib/Tactic/NormNum/Prime.lean', PACKAGES / 'mathlib', OVERLAY)
    compile_one('01-trial-prime-check', ROOT / 'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/TrialPrimeCheck.lean', ROOT, OBJECTS)
if args.stage in ['initial', 'core']:
    compile_one('02-core', RUN / 'lean/primeChain/Core.lean', ROOT, OBJECTS)
    compile_one('03-prime-chain', RUN / 'lean/PrimeChain.lean', ROOT, OBJECTS)
if args.stage in ['initial', 'norm']:
    compile_one('04-end32-normnum', RUN / 'lean/primeChain/End32NormNum.lean', ROOT, OBJECTS)
if args.stage in ['initial', 'norm', 'consumer']:
    compile_one('05-end32-consumer', RUN / 'lean/primeChain/End32Consumer.lean', ROOT, OBJECTS)
if args.stage == 'end256':
    compile_one('07-end256-normnum', RUN / 'lean/primeChain/End256NormNum.lean', ROOT, OBJECTS)
    compile_one('08-end256-consumer', RUN / 'lean/primeChain/End256Consumer.lean', ROOT, OBJECTS)
if args.stage == 'end256-kernel-sync':
    compile_one('15-end256-trial-kernel-sync', RUN / 'lean/primeChain/End256TrialKernelSync.lean', ROOT, OBJECTS)
    compile_one('16-end256-trial-kernel-sync-consumer', RUN / 'lean/primeChain/End256TrialKernelSyncConsumer.lean', ROOT, OBJECTS)
if args.stage == 'end256-kernel':
    compile_one('13-end256-trial-kernel', RUN / 'lean/primeChain/End256TrialKernel.lean', ROOT, OBJECTS)
    compile_one('14-end256-trial-kernel-consumer', RUN / 'lean/primeChain/End256TrialKernelConsumer.lean', ROOT, OBJECTS)
if args.stage == 'trial-kernel':
    compile_one('10-kernel-single-prime', RUN / 'lean/primeChain/KernelSinglePrime.lean', ROOT, OBJECTS)
    compile_one('11-end32-trial-kernel', RUN / 'lean/primeChain/End32TrialKernel.lean', ROOT, OBJECTS)
    compile_one('12-end32-trial-kernel-consumer', RUN / 'lean/primeChain/End32TrialKernelConsumer.lean', ROOT, OBJECTS)
if args.stage == 'trial':
    compile_one('06-end32-trial', RUN / 'lean/primeChain/End32Trial.lean', ROOT, OBJECTS)
    compile_one('09-end32-trial-consumer', RUN / 'lean/primeChain/End32TrialConsumer.lean', ROOT, OBJECTS)
report['success'] = True
report['finished_utc'] = datetime.now(timezone.utc).isoformat()
save()
print('EVIDENCE ' + str(OUT / 'evidence.json'), flush=True)
