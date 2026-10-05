"""Bind a successfully compiled producer from a failed paired packet for transport.

This does not accept the failed literal or the mathematical pair. No Lean is run.
Usage: python bind_eta_producer_transport.py RAW_INTAKE
"""
import hashlib
import json
import sys
import zipfile
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath
from bind_psi_eighty_archive import guard, require, sha, stream_sha, git_bytes, object_member, axiom_gate, module

HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / '.git').exists())

if __name__ == '__main__':
    guard()
    intake_path = Path(sys.argv[1])
    intake_raw = intake_path.read_bytes()
    intake = json.loads(intake_raw)
    archive = Path(intake['archivePath'])
    with archive.open('rb') as raw:
        require(stream_sha(raw) == intake['zipSha256'], 'Original failed-pair packet bytes differ')
    phase = 'composite-etaseries-EtaSeries'
    source_path = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-psi-eightymin/supply/EtaSeries.lean'
    members = {}
    with zipfile.ZipFile(archive) as z:
        names = z.namelist()
        require(len(names) == len(set(names)), 'Duplicate native member')
        for info in z.infolist():
            with z.open(info) as raw:
                members[info.filename] = {'bytes': info.file_size, 'sha256': stream_sha(raw)}
        manifest = json.loads(z.read('delivery-manifest.json'))
        planned = {r['path']: r for r in manifest['members']}
        require(set(planned) == set(names) - {'delivery-manifest.json'}, 'Incomplete native member table')
        for n, r in planned.items():
            require(members[n] == {k: r[k] for k in ('bytes', 'sha256')}, 'Native member digest differs')
        mapped = {r['member']: r for r in intake['members']}
        require(set(mapped) == set(names), 'Incomplete retained mapping')
        for n, r in mapped.items():
            p = Path(r['storedPath']).resolve()
            require(p.stat().st_size == members[n]['bytes'] == r['bytes'], 'Retained member size differs')
            with p.open('rb') as raw:
                require(stream_sha(raw) == members[n]['sha256'] == r['sha256'], 'Retained member hash differs')
        r = json.loads(z.read(phase + '/receipt.json'))
        require(r['mode'] == 'Lean' and r['status'] == 'success' and r['exitCode'] == 0
                and r['sourceUnchanged'] is True, 'Producer actual compile failed')
        source = z.read(phase + '/source.lean')
        require(sha(source) == r['sourceSha256'] == 'c85b4080cd10c38be4303202d956fa989985731d215db71ff3e0219172a5d6fc'
                and source == git_bytes(intake['sourceCommit'], source_path), 'Producer fixed Git source differs')
        roots = [line.removeprefix('#print axioms ').strip() for line in source.decode().splitlines()
                 if line.startswith('#print axioms ')]
        ax = axiom_gate(source, z.read(phase + '/stdout.log'), roots)
        require(len(roots) == 5, 'Producer complete five AX roots missing')
        tc = json.loads(z.read('toolchain.json'))
        require(r['executableSha256'] == tc['leanSha256'], 'Producer compiler digest differs')
        for stream in ('stdout', 'stderr'):
            require(sha(z.read(phase + '/' + stream + '.log')) == r[stream + 'Sha256'], 'Producer raw log differs')
        for p in r['objectParts']:
            require(members[object_member(p['path'])] == {k: p[k] for k in ('bytes', 'sha256')}, 'Producer object part differs')
        cr = json.loads(z.read(phase + '-normal-checker/receipt.json'))
        require(cr['status'] == 'success' and cr['exitCode'] == 0
                and cr['arguments'] == [tc['leanchecker'], '-v', module(source_path)]
                and cr['executableSha256'] == tc['leancheckerSha256'], 'Producer actual normal replay differs')
        for stream in ('stdout', 'stderr'):
            require(sha(z.read(phase + '-normal-checker/' + stream + '.log')) == cr[stream + 'Sha256'],
                    'Producer normal replay raw log differs')
        require(z.read(phase + '-normal-checker/stdout.log').decode().strip() == 'replaying ' + module(source_path),
                'Producer replay target differs')
        failed = json.loads(z.read('composite-etaseries-EtaSeriesLiteral/receipt.json'))
        require(failed['status'] == 'failed' and failed['exitCode'] != 0, 'Failed literal status hidden')
    guard()
    result = {'status': 'compiled-producer-transport-bound-paired-literal-pending',
              'verifier': '/root/local_power_verification', 'utc': datetime.now(timezone.utc).isoformat(),
              'fixedSourceCommit': intake['sourceCommit'], 'runId': str(intake['runId']), 'artifactId': str(intake['artifactId']),
              'archiveSha256': intake['zipSha256'], 'nativeMemberCount': len(members), 'nativeMembers': members,
              'toolchain': tc, 'compilerBindings': [{'sourcePath': source_path, 'phase': phase, 'compiler': r, 'axioms': ax}],
              'normalReplayBindings': [{'phase': phase + '-normal-checker', 'receipt': cr}],
              'mathematicalPairAccepted': False, 'failedLiteralAccepted': False,
              'remainingIndependentCheck': 'Compile fixed e035 raw literal, full5 AX and normal replay, then sign paired scope',
              'sourceCompileIncrementOnReuse': 0, 'retainedIntakeSha256': sha(intake_raw)}
    out = HERE / 'ETA-PRODUCER-TRANSPORT-BINDING.json'
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': result['status'], 'path': str(out), 'sourceCount': 1, 'AXRoots': 5,
                      'pairedLiteralAccepted': False, 'nativeMembers': len(members)}))
