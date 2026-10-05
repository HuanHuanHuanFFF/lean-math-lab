"""Bind the old conditional tool in the new authorized window; never launch Lean."""
import ctypes
import hashlib
import json
import os
import shutil
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
START = datetime.fromisoformat('2026-10-03T17:36:13+00:00')
DEADLINE = datetime.fromisoformat('2026-10-03T18:36:13+00:00')
ORIGINAL_DEADLINE = datetime.fromisoformat('2026-10-02T19:30:45+00:00')
SOURCE_COMMIT = 'c5b69cd1266779b9cde0c6260fd5e54b9a940740'
FROZEN_COMMIT = '0315fa513e889c528ec756b490d9e632190a4b56'
PREFIX = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
FROZEN_PATH = PREFIX + '20261003-gap-finite-fortymin/reviews/check_generic_zip.py'
CORE_PATH = PREFIX + '20261003-gap-finite-fortymin/lean/CompositeCore.lean'
OLD_PATH = PREFIX + '20261003-gap-finite-fortymin/supply/CompositeTransferLegacy.lean'
ARCHIVE = Path(r'D:\ResearchArtifacts\b699-gap-finite-fortymin\b699-composite-generic-37054086815.zip')
ARCHIVE_SHA = 'f6034bf75ea698e9514e65ffdb3ddb12bbc7751044e68e6fd7a736cb9ec99e89'
VERIFIER = '/root/nonprime_source_review_20261004'


def require(ok, message):
    if not ok:
        raise RuntimeError(message)


def guard():
    require(START <= datetime.now(timezone.utc) < DEADLINE, 'Outside new authorized window')


def git_bytes(commit, path):
    return subprocess.run(['git', 'show', f'{commit}:{path}'], cwd=REPO,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=True).stdout


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def resource_observation():
    class MemoryStatus(ctypes.Structure):
        _fields_ = [('length', ctypes.c_ulong), ('load', ctypes.c_ulong),
                    ('totalPhysical', ctypes.c_ulonglong), ('availablePhysical', ctypes.c_ulonglong),
                    ('totalPageFile', ctypes.c_ulonglong), ('availablePageFile', ctypes.c_ulonglong),
                    ('totalVirtual', ctypes.c_ulonglong), ('availableVirtual', ctypes.c_ulonglong),
                    ('availableExtendedVirtual', ctypes.c_ulonglong)]
    memory = MemoryStatus()
    memory.length = ctypes.sizeof(memory)
    ok = ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(memory))
    return {'utc': datetime.now(timezone.utc).isoformat(), 'platform': 'Windows workstation',
            'globalMemoryStatusExSucceeded': bool(ok),
            'availablePhysicalBytes': memory.availablePhysical if ok else None,
            'totalPhysicalBytes': memory.totalPhysical if ok else None,
            'logicalCpuCount': os.cpu_count(), 'cpuQuota': 'not a cgroup environment; not measured',
            'diskFreeBytesD': shutil.disk_usage('D:/').free,
            'workload': 'archive byte/receipt binding only; no Lean child'}


def theorem_body(raw):
    text = raw.decode('utf-8-sig').replace('\r\n', '\n')
    marker = 'theorem common_succ_of_nonprime '
    require(text.count(marker) == 1, 'Generic theorem duplicated or absent')
    return marker + text.split(marker, 1)[1].split('\n\n', 1)[0]


def main():
    guard()
    started = datetime.now(timezone.utc)
    mono = time.monotonic()
    resources = resource_observation()
    frozen = git_bytes(FROZEN_COMMIT, FROZEN_PATH)
    frozen_blob = subprocess.check_output(['git', 'rev-parse', f'{FROZEN_COMMIT}:{FROZEN_PATH}'],
                                         cwd=REPO).decode().strip()
    require(frozen_blob == '46a0b4971aa0e5dab88cd9078b568554e099c6fb', 'Frozen validator Git blob differs')
    text = frozen.decode('utf-8')
    old_guard = "DEADLINE = datetime.fromisoformat('2026-10-02T19:30:45+00:00')"
    require(text.count(old_guard) == 1, 'Original deadline declaration differs')
    text = text.replace(old_guard,
                        "ORIGINAL_EXECUTION_DEADLINE = datetime.fromisoformat('2026-10-02T19:30:45+00:00')\n"
                        "DEADLINE = datetime.fromisoformat('2026-10-03T18:36:13+00:00')")
    old_execution_guard = "datetime.fromisoformat(r['endUtc'].replace('Z', '+00:00')) <= DEADLINE"
    require(text.count(old_execution_guard) == 1, 'Original execution guard differs')
    text = text.replace(old_execution_guard,
                        "datetime.fromisoformat(r['endUtc'].replace('Z', '+00:00')) <= ORIGINAL_EXECUTION_DEADLINE")
    text = text.replace("'verifier': '/root/semantic_verify_sol'", f"'verifier': '{VERIFIER}'")
    env = {'__name__': 'current_window_frozen_validator', '__file__': str(__file__)}
    exec(compile(text, str(__file__), 'exec'), env)
    env['run'](ARCHIVE, ARCHIVE_SHA, SOURCE_COMMIT, '37054086815')
    guard()
    binding_path = HERE / 'GENERIC-COMPOSITE-INDEPENDENT-BINDING.json'
    binding = json.loads(binding_path.read_text(encoding='utf-8'))
    core = git_bytes(SOURCE_COMMIT, CORE_PATH)
    old = git_bytes(FROZEN_COMMIT, OLD_PATH)
    require(sha(core) == 'cee177d0bcb9a0b51ab72afc5fd47f00a67c3c1995844154e5e041e304f7fd40', 'Fixed core source SHA differs')
    require(sha(old) == '31ca5aaa79f1286caef8794e33cdf09da6528ff4b756aec9a2aeefc06175e747', 'Fixed old consumer SHA differs')
    archive_core = binding['sources'][0]['actualSourceText'].encode('utf-8')
    require(archive_core == core, 'Archive source differs from fixed Git source bytes')
    require(theorem_body(core) == theorem_body(old), 'Old consumer generic theorem body differs')
    literal = binding['sources'][0]['actualRawStdout'].split(' :=', 1)[0]
    expected_literal = """theorem B699CompositeCore20261003.common_succ_of_nonprime : ∀ {n i j : ℕ},
  ¬Nat.Prime i →
    ¬Nat.Prime (i + 1) →
      (∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j) →
        ∃ p, Nat.Prime p ∧ i + 1 ≤ p ∧ p ∣ n.choose (i + 1) ∧ p ∣ n.choose j"""
    require(literal == expected_literal, 'Actual kernel-elaborated conditional literal type differs')
    actual_axes = binding['sources'][0]['actualAxioms']
    require(actual_axes == {'B699CompositeCore20261003.common_succ_of_nonprime': ['propext', 'Classical.choice', 'Quot.sound']},
            'Actual generic transitive axiom set differs')
    binding.update({'newAuthorizationStartUtc': START.isoformat(), 'newAuthorizationDeadlineUtc': DEADLINE.isoformat(),
                    'originalExecutionDeadlineUtc': ORIGINAL_DEADLINE.isoformat(), 'bindingStartedUtc': started.isoformat(),
                    'bindingCompletedUtc': datetime.now(timezone.utc).isoformat(), 'resourceObservation': resources,
                    'frozenValidator': {'commit': FROZEN_COMMIT, 'path': FROZEN_PATH, 'gitBlob': frozen_blob, 'sha256': sha(frozen)},
                    'derivedValidatorSha256': sha(text.encode('utf-8')), 'wrapperSha256': sha(Path(__file__).read_bytes()),
                    'transformation': ['review deadline moved to new authorization', 'old execution deadline preserved', 'verifier identity updated'],
                    'fixedGitSourceExactBytes': True, 'oldConsumerGenericBodyIdentical': True,
                    'oldConsumerSourceCommit': FROZEN_COMMIT, 'oldConsumerSourcePath': OLD_PATH,
                    'oldConsumerSourceSha256': sha(old), 'actualLiteralType': literal,
                    'seconds': time.monotonic() - mono})
    guard()
    binding_path.write_text(json.dumps(binding, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    signature = {'status': 'accepted-conditional-generic-tool', 'verifier': VERIFIER,
                 'signedUtc': datetime.now(timezone.utc).isoformat(), 'hardDeadlineUtc': DEADLINE.isoformat(),
                 'binding': binding_path.name, 'bindingSha256': sha(binding_path.read_bytes()),
                 'fixedSourceCommit': SOURCE_COMMIT, 'sourceSha256': sha(core), 'actualRunId': '37054086815',
                 'archiveSha256': ARCHIVE_SHA, 'originalMemberCount': 55,
                 'actualLiteralType': literal, 'actualTransitiveAxioms': actual_axes,
                 'semanticAcceptance': 'Two nonprime adjacent indices and an existing same actual prime witness imply a successor-index witness using that same prime.',
                 'requiredMathematicalInputs': ['not Prime i', 'not Prime (i+1)',
                                                'exists same actual prime p >= i dividing both complete n.choose i and n.choose j'],
                 'newCompleteOriginalIndices': [], 'genuineInfiniteGapAccepted': False,
                 'kernelRerunByVerifier': False,
                 'checkerMeaning': 'Existing fixed Lean normal checker replay bound to source/object/raw receipt; no independent kernel implementation.',
                 'remainingGap': 'Does not supply hcommon and does not accept any of the four full 4885..4888 consumers.'}
    guard()
    signature_path = HERE / 'GENERIC-COMPOSITE-INDEPENDENT-ACCEPTED.json'
    signature_path.write_text(json.dumps(signature, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': signature['status'], 'signature': str(signature_path),
                      'sha256': sha(signature_path.read_bytes()), 'seconds': binding['seconds'],
                      'newCompleteOriginalIndices': []}))


if __name__ == '__main__':
    main()
