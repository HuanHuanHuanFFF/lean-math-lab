"""Freeze actual i44 goods/complete-row semantic checks from final A33d source.

Static construction only. These checks diagnose one row and never claim all S.
"""
import ctypes, hashlib, json, re
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO
import prepare_ci7_profiles as helper
from prepare_profile2 import row_expression

BASE = Path(__file__).resolve().parent
DEST = BASE / 'profiling/20261007-r8-row-semantics'
A = BASE / 'repairs/20261007-a151-structural/A151Packed.lean'
EXPECTED = '33d845cdfb72eff2dc7aa15d5520f93450b7d78c32aa045eb95d28c80d9cdcea'
INTAKE = Path('D:/ResearchArtifacts/b699-contribution-validation-20261006/37529174035')

def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def source(p):
    return {'path': str(p.relative_to(REPO).as_posix()), 'bytes': p.stat().st_size, 'sha256': sha(p)}

def resource_observation():
    class MemoryStatus(ctypes.Structure):
        _fields_ = [('length', ctypes.c_ulong), ('load', ctypes.c_ulong)] + [(n, ctypes.c_ulonglong) for n in ['totalPhysical', 'availablePhysical', 'totalPageFile', 'availablePageFile', 'totalVirtual', 'availableVirtual', 'availableExtendedVirtual']]
    status = MemoryStatus(); status.length = ctypes.sizeof(status)
    ok = ctypes.windll.kernel32.GlobalMemoryStatusEx(ctypes.byref(status))
    return {'timeUTC': datetime.now(timezone.utc).isoformat(), 'source': 'current Windows GlobalMemoryStatusEx; static Python only', 'callSucceeded': bool(ok), 'availablePhysicalBytes': status.availablePhysical if ok else None, 'memoryLoadPercent': status.load if ok else None, 'nativeLeanProhibited': True}

def main():
    (DEST / 'probes').mkdir(parents=True, exist_ok=True)
    helper.DEST = DEST
    assert sha(A) == EXPECTED
    text = A.read_text(encoding='utf-8')
    cut = text.index('def d12:List N5.d0:= [')
    core = text[:cut]
    expr = row_expression(text, 10)
    assert re.search(r'\bi\s*:=\s*44\s*,', expr) and re.search(r'\bn0Power10\s*:=\s*66\b', expr)
    prefix = core + 'def profilingRow : N5.d4 := ' + expr + '\n#check profilingRow\n'
    common = {'originalRowIndex': 10, 'i': 44, 'goods': 354, 'layers': 209,
        'exactOriginalDataExpression': True, 'originalRowExpressionBytes': len(expr.encode()),
        'originalRowExpressionSHA256': hashlib.sha256(expr.encode()).hexdigest(),
        'copiedPreludeSourceLines': [1, text[:cut].count('\n')],
        'copiedPreludeSHA256': hashlib.sha256(core.encode()).hexdigest(),
        'sameOriginalPrelude': True, 'all151HeightOriginalCertificateIncluded': True,
        'all151CheckedRowCarrierExcluded': True,
        'sharedPreludeAttributionRule': 'errors or costs before profilingRow cannot be attributed to this row; compare profiler command output and the successful full151-height diagnosis',
        'noAll151GoodsOrCoverageConclusion': True, 'noFullSOrChooseConclusion': True,
        'diagnosticMarker': '#check profilingRow immediately before the tested theorem'}
    goods = helper.finish('A151ActualGoods354', prefix,
        'theorem profilingGoods : profilingRow.goods.all (N5.d50 profilingRow.height.i profilingRow.height.r profilingRow.height.s) = true := by\n  decide +kernel\n', A,
        dict(common, relativeRoot='N5.N8.N7.profilingGoods', claim='the unchanged actual fastGood predicate holds for every one of the original354 i44 goods; no layers/coverage/fullS acceptance',
            algorithm='same structural d38 decoder, original data, d50/d102 prime checker and d55 large-divisor branch; original decide +kernel',
            checkedSemanticComponents=['all354 fastGood predicates, including original witness kind and value']))
    row = helper.finish('A151ActualFullRow354209', prefix,
        'theorem profilingFullRow : N5.d48 profilingRow = true := by\n  decide +kernel\n', A,
        dict(common, relativeRoot='N5.N8.N7.profilingFullRow', claim='the unchanged complete fastFiniteCoverRowCheck succeeds for the original i44 row only; no all151/fullS acceptance',
            algorithm='same d48, structural d38/d39, original checked height151 membership, d50 goods, d34 interval coverage and d36 per-layer predicates; original decide +kernel',
            checkedSemanticComponents=['height membership in original151 heights', 'all354 fastGood predicates', 'goods cover [2*i+2,i*(i-1)-1]', 'layers cover [i*(i-1),n0-1]', 'all209 layer predicates over the same354 goods']))
    probes = [goods, row]
    above_log = INTAKE / 'raw-I11AboveFinalCandidate.log'
    warnings, errors = [], []
    if above_log.is_file():
        for line in above_log.read_text(encoding='utf-8', errors='replace').splitlines():
            if not line.startswith('{'): continue
            try: record = json.loads(line)
            except json.JSONDecodeError: continue
            severity = record.get('severity')
            if severity == 'error': errors.append(record)
            elif severity == 'warning': warnings.append(record)
    request = {'status': 'two fixed actual-row diagnosis inputs, not executed; original full S pending',
        'timeUTC': datetime.now(timezone.utc).isoformat(),
        'officialProductionCommit': '6a786f997e18e8f095762a2830d191b7e25e505e',
        'officialPolicyCommit': 'be220ff2519ecfd61b28ba9e477321e4287ef6b4',
        'fixedLeanCommit': '819816b2e0a3bf405af45ae5c7af2491d8f5bee6',
        'sameRuntimeAndCachePinsRequired': True, 'probes': probes,
        'executionOrder': [p['id'] for p in probes], 'selectedBytes': sum(p['bytes'] for p in probes),
        'effectiveDiagnosticBudget': {'wallSeconds': 180, 'sourceMaxHeartbeats': 400000, 'cliHeartbeats': 400000, 'scopedHeartbeatOverrides': [], 'threads': 1, 'memory': 'same actual cgroup guard; never above16GiB'},
        'absoluteProofStopUTC': '2026-10-06T23:30:25Z',
        'absoluteRoundStopUTC': '2026-10-06T23:40:25Z',
        'profiler': {'options': ['profiler true', 'profiler.threshold 100'], 'logContract': 'capture stdout and stderr, exact source/object/log hashes, errors and warnings separately, actual cgroup samples and final OOM state, owned UUID cleanup'},
        'sourceOnlyPolicy': 'source-policy.json', 'producer': source(Path(__file__).resolve()),
        'nativeLeanExecuted': False, 'proofAccepted': False, 'contributionSourcesUnmodified': True,
        'resourceObservation': resource_observation(),
        'fullContractUnchanged': 'S={1,2,11,29} union [35,30000], every legal Nat n/i/j; same actual Prime p>=i divides both complete choose',
        'actualR8AboveLogClassification': {'path': str(above_log), 'bytes': above_log.stat().st_size if above_log.is_file() else None, 'sha256': sha(above_log) if above_log.is_file() else None, 'jsonWarningCount': len(warnings), 'jsonErrorCount': len(errors), 'interpretation': 'warnings are not errors; whole-source timeout does not identify the stalled command'},
        'continuationRules': ['Successful goods check covers this row goods only; complete row remains unaccepted until its separate check succeeds.', 'If goods passes and fullrow times out, narrow coverage/layer checker; do not extrapolate all151.', 'If common prelude fails, do not attribute costs to the row checker.', 'No successful row probe accepts the original unrestricted n/j theorem or the full S contribution.']}
    assert request['selectedBytes'] < 4194304
    (DEST / 'PROBE-REQUEST.json').write_text(json.dumps(request, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'requestSHA256': sha(DEST/'PROBE-REQUEST.json'), 'ids': request['executionOrder'], 'bytes': request['selectedBytes'], 'originalRowExpressionSHA256': common['originalRowExpressionSHA256'], 'aboveWarnings': len(warnings), 'aboveErrors': len(errors), 'nativeLeanExecuted': False, 'proofAccepted': False}))

if __name__ == '__main__': main()
