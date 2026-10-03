"""Independent byte/source/object/raw/type/axiom binding of the new leaf CI package."""
import hashlib
import json
import re
import subprocess
import sys
import time
import zipfile
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
START = datetime.fromisoformat('2026-10-03T17:36:13+00:00')
STOP = datetime.fromisoformat('2026-10-03T18:28:13+00:00')
DEADLINE = datetime.fromisoformat('2026-10-03T18:36:13+00:00')
HEAD = '9f07f6805253baec525a5c6df5ec56f0b320a2ad'
RUN = '37141812711'
ARCHIVE = Path(r'D:\ResearchArtifacts\b699-nonprime-onehour\b699-nonprime-leaf-37141812711.zip')
ARCHIVE_SHA = 'bbc975d424b1d352178a6a6aca0696d95148ff57c063d7a1e273b66fe3ac3157'
BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261004-nonprime-onehour/'
ROOTS = [f'B699CompositeTransfer20261003.not_prime_{k}' for k in range(4884, 4889)]
STD3 = {'propext', 'Classical.choice', 'Quot.sound'}
PINS = {'mathlib': '0df444a360eaa60ab8c11dca51a86af692955474',
        'plausible': 'b7eb3304aeae834b12dda98993a37f6a41f6f0bb',
        'LeanSearchClient': '5f4d51b81cbd3f6b32b156bfad9056621a040404',
        'importGraph': '16f02aa7642864af59f1ff0e384a015994db9118',
        'proofwidgets': '4be2e3d5087eeb272cf5a8853b8f9dd025ef5957',
        'aesop': '3448c0bcc5ce01b2d1546e483ec3620e32df3d0e',
        'Qq': '92c15be17b7caf78c2ad767ec40f89052d908d81',
        'batteries': '4488d40d070b9700d4d5a6aa342f0d40c31b2a2d',
        'Cli': '6130a47896ce867c6a4a55373441e59e565bad0f'}


def require(ok, message):
    if not ok:
        raise RuntimeError(message)


def guard():
    require(START <= datetime.now(timezone.utc) < DEADLINE, 'Outside new authorization window')


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def git_bytes(path):
    return subprocess.run(['git', 'show', f'{HEAD}:{path}'], cwd=REPO, check=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout


def parse_ax(raw):
    found = {}
    for m in re.finditer(r"'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)", raw, re.S):
        axes = [a.strip() for a in (m[2] or '').split(',') if a.strip()]
        require(m[1] not in found and len(axes) == len(set(axes)), 'Duplicate transitive AX output')
        require(set(axes) <= STD3, 'Forbidden transitive AX: ' + m[1])
        found[m[1]] = axes
    return found


def main():
    guard()
    began = datetime.now(timezone.utc).isoformat()
    mono = time.monotonic()
    require(ARCHIVE.stat().st_size == 51386 and sha(ARCHIVE.read_bytes()) == ARCHIVE_SHA, 'Original leaf archive bytes/SHA differ')
    with zipfile.ZipFile(ARCHIVE) as z:
        names = z.namelist()
        require(len(names) == len(set(names)), 'Duplicate package members')
        require(all(not PurePosixPath(n).is_absolute() and '..' not in PurePosixPath(n).parts for n in names), 'Unsafe package member')
        def obj(n): return json.loads(z.read(n).decode('utf-8-sig'))
        manifest = obj('byte-manifest.json')
        require(str(manifest['runId']) == RUN and manifest['head'] == HEAD, 'Actual run/head differs')
        members = {r['path']: r for r in manifest['members']}
        require(len(members) == len(manifest['members']) and set(names) == set(members) | {'byte-manifest.json'}, 'Exact complete self-manifest differs')
        for n, row in members.items():
            require(z.getinfo(n).file_size == row['bytes'] and sha(z.read(n)) == row['sha256'], 'Member bytes/SHA differ: ' + n)
        tc = obj('toolchain.json')
        require(tc['version'] == 'Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6, Release)', 'Exact pinned toolchain differs')
        receipts = {}
        def receipt(phase):
            r = obj(phase + '/receipt.json')
            require(r.get('childStarted') is True and r['status'] == 'success' and r['exitCode'] == 0 and r.get('stopReason') is None,
                    'Actual child execution failed: ' + phase)
            require(sha(z.read(phase + '/stdout.log')) == r['stdoutSha256'] and sha(z.read(phase + '/stderr.log')) == r['stderrSha256'], 'Raw logs differ: ' + phase)
            require(START <= datetime.fromisoformat(r['startUtc'].replace('Z', '+00:00')) <= datetime.fromisoformat(r['endUtc'].replace('Z', '+00:00')) <= STOP,
                    'Actual execution outside proof window: ' + phase)
            require(datetime.fromisoformat(r['hardDeadlineUtc'].replace('Z', '+00:00')) <= STOP, 'Execution guard exceeded proof stop: ' + phase)
            receipts[phase] = r
            return r
        require(z.read('toolchain-version/stdout.log').decode().strip() == tc['version'], 'Actual toolchain stdout differs')
        receipt('toolchain-version')
        for package, commit in PINS.items():
            receipt('pin-' + package)
            require(z.read('pin-' + package + '/stdout.log').decode().strip() == commit, 'Actual pinned package differs: ' + package)
        spec = obj('stage-spec.json')
        require(spec['certificateRoots'] == ROOTS and spec['fullEnabled'] is False, 'Leaf root/scope differs')
        require(datetime.fromisoformat(spec['finalDeadlineUtc'].replace('Z', '+00:00')) == DEADLINE, 'Spec final deadline differs')
        require(datetime.fromisoformat(spec['proofStopUtc'].replace('Z', '+00:00')) == STOP, 'Spec proof stop differs')
        actual_sources = obj('source-manifest.json')['taskSources']
        expected_sources = json.loads(git_bytes(BASE + 'runtime/source-adoption-map.json'))['rows']
        require(len(actual_sources) == 4, 'Source-manifest closure source count differs')
        for expected in expected_sources:
            matched = [r for r in actual_sources if r['path'] == expected['path']]
            require(len(matched) == 1, 'Missing/duplicate task source')
            require(all(matched[0][k] == expected[k] for k in ('path', 'bytes', 'sha256', 'module')), 'Manifest/fixed source map differs')
        compiler_bindings = []
        common_path = None
        for phase, relative in [('leaf-NonprimeCertificates', BASE + 'lean/NonprimeCertificates.lean'),
                                ('leaf-NonprimeCertificates-audit', None),
                                ('leaf-AuditCertificates', BASE + 'lean/AuditCertificates.lean')]:
            r = receipt(phase)
            source = z.read(phase + '/source.lean')
            require(r['mode'] == 'Lean' and r['sourceUnchanged'] is True and sha(source) == r['sourceSha256'], 'Actual source binding differs: ' + phase)
            if relative:
                require(source == git_bytes(relative), 'Actual source differs from fixed published Git bytes: ' + phase)
            else:
                expected = ('import ' + spec['certificateSource']['module'] + '\n' + ''.join('#print axioms ' + root + '\n' for root in ROOTS)).encode()
                require(source == expected, 'Automatic AX audit source differs')
            args = r['arguments']
            require(args[0] == tc['lean'] and args[-1] == r['source'] and args[args.index('-o')+1] == r['object'], 'Compiler argv differs: ' + phase)
            source_root = args[args.index('-R')+1].rstrip('/')
            if relative:
                require(r['source'] == source_root + '/' + relative, 'Actual module source root differs')
            else:
                require(r['source'] == source_root + '/leaf_NonprimeCertificates_Audit.lean', 'Automatic audit module differs')
            object_member = r['object'].split('/leaf-evidence/', 1)[1]
            require(object_member.startswith('objects/') and sha(z.read(object_member)) == r['objectSha256'], 'Actual output object differs')
            part_members = set()
            for part in r['objectParts']:
                member = part['path'].split('/leaf-evidence/', 1)[1]
                require(member.startswith(object_member.removesuffix('.olean') + '.') and z.getinfo(member).file_size == part['bytes'] and sha(z.read(member)) == part['sha256'], 'Object part differs')
                part_members.add(member)
            require(object_member in part_members and part_members == {n for n in names if n.startswith(object_member.removesuffix('.olean') + '.')}, 'Complete new object-parts coverage differs')
            private_root = r['object'].split('/leaf-evidence/objects/', 1)[0] + '/leaf-evidence/objects'
            require(r['effectiveLeanPath'].startswith(private_root + ':'), 'New private import root not first')
            common_path = common_path or r['effectiveLeanPath']
            require(r['effectiveLeanPath'] == common_path, 'Compiler import environment differs')
            compiler_bindings.append({'phase': phase, 'receiptSha256': members[phase+'/receipt.json']['sha256'],
                                      'receipt': r, 'sourceMember': phase+'/source.lean', 'objectMember': object_member})
        actual_ax = {}
        for phase in ('leaf-NonprimeCertificates-audit', 'leaf-AuditCertificates'):
            audit = obj(phase + '/axiom-audit.json')
            axes = parse_ax(z.read(phase + '/stdout.log').decode())
            require(set(axes) == set(ROOTS) and audit['roots'] == ROOTS and audit['actualAxioms'] == axes and audit['status'] == 'accepted-standard-axioms', 'Exact AX coverage differs')
            require(audit['sourceSha256'] == receipts[phase]['sourceSha256'] and audit['stdoutSha256'] == receipts[phase]['stdoutSha256'], 'AX/source/raw binding differs')
            require(all(a == ['propext'] for a in axes.values()), 'Leaf actual AX changed')
            actual_ax[phase] = axes
        stdout = z.read('leaf-AuditCertificates/stdout.log').decode()
        type_lines = [line for line in stdout.splitlines() if not line.startswith("'")]
        expected_types = [f'{ROOTS[k-4884]} : ¬Nat.Prime {k}' for k in range(4884,4889)]
        expected_types += [f'{ROOTS[k-4884]} : ¬Nat.Prime {k}' for k in range(4885,4889)]
        require(type_lines == expected_types, 'Actual five literal types/four successor seam outputs differ')
        checker = receipt('leaf-normal-checker')
        require(checker['arguments'] == [tc['leanchecker'], '-v', spec['certificateAudit']['module']], 'Normal checker argv/module differs')
        require(checker['effectiveLeanPath'] == common_path, 'Normal checker used different object environment')
        require(z.read('leaf-normal-checker/stdout.log').decode().strip() == 'replaying ' + spec['certificateAudit']['module'], 'Actual normal replay output differs')
        require(checker['executableSha256'] == tc['leancheckerSha256'], 'Checker executable SHA differs')
        require(all(receipts[p]['executableSha256'] == tc['leanSha256'] for p in ('leaf-NonprimeCertificates','leaf-NonprimeCertificates-audit','leaf-AuditCertificates')), 'Compiler executable SHA differs')
        guard()
        binding = {'status': 'bound-new-leaf-source-object-raw-types-axioms-checker', 'verifier': '/root/nonprime_source_review_20261004',
                   'startedUtc': began, 'completedUtc': datetime.now(timezone.utc).isoformat(), 'hardDeadlineUtc': DEADLINE.isoformat(),
                   'fixedSourceCommit': HEAD, 'actualRunId': RUN, 'artifactId': '11280338458', 'archive': str(ARCHIVE),
                   'archiveBytes': ARCHIVE.stat().st_size, 'archiveSha256': ARCHIVE_SHA, 'archiveMemberCount': len(names),
                   'allMembersActualBytesShaBound': True, 'manifestMemberCount': len(members), 'compilerBindings': compiler_bindings,
                   'actualLiteralTypeAndSuccessorOutputs': type_lines, 'actualTransitiveAxioms': actual_ax,
                   'normalChecker': checker, 'normalCheckerTarget': spec['certificateAudit']['module'],
                   'normalCheckerMeaning': 'Normal fixed Lean replay of AuditCertificates; it imports the freshly compiler-kernel-checked certificate module. No second independent kernel implementation.',
                   'toolchain': tc, 'actualPinnedPackages': PINS, 'actualCiResourceStart': obj('resources-start.json'),
                   'localResourceObservation': json.loads((HERE/'GENERIC-COMPOSITE-INDEPENDENT-BINDING.json').read_text(encoding='utf-8'))['resourceObservation'],
                   'focusedCacheReceiptStatus': obj('focused-cache/receipt.json')['status'],
                   'producerLeafClosedReceipt': obj('leaf-closed.json'), 'kernelRerunByVerifier': False,
                   'newCompleteOriginalIndices': [], 'seconds': time.monotonic()-mono, 'scriptSha256': sha(Path(__file__).read_bytes())}
        target = HERE / 'NONPRIME-LEAF-INDEPENDENT-BINDING.json'
        target.write_text(json.dumps(binding, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
        guard()
        signature = {'status': 'accepted-five-nonprime-leaves', 'verifier': '/root/nonprime_source_review_20261004',
                     'signedUtc': datetime.now(timezone.utc).isoformat(), 'hardDeadlineUtc': DEADLINE.isoformat(),
                     'binding': target.name, 'bindingSha256': sha(target.read_bytes()), 'fixedSourceCommit': HEAD, 'actualRunId': RUN,
                     'archiveSha256': ARCHIVE_SHA, 'certificateSourceSha256': '47a4cfc1c737190ca3143bbe3b3fdc4871c7e81ae16abe0f60c36d6248df3b91',
                     'acceptedExactStatements': [f'¬ Nat.Prime {k}' for k in range(4884,4889)],
                     'acceptedSuccessorSeams': [f'¬ Nat.Prime ({k} + 1)' for k in range(4884,4888)],
                     'actualTransitiveAxioms': {root:['propext'] for root in ROOTS},
                     'normalCheckerTarget': spec['certificateAudit']['module'], 'kernelRerunByVerifier': False,
                     'newCompleteOriginalIndices': [], 'fullConsumerAcceptance': 'pending separate full-consumer proof and independent binding',
                     'scope': 'Five concrete nonprime facts and four successor interfaces; no full B699 indices, infinite Gap, or R7 result.'}
        signed = HERE / 'NONPRIME-LEAF-INDEPENDENT-ACCEPTED.json'
        signed.write_text(json.dumps(signature, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
        print(json.dumps({'status': signature['status'], 'signature': str(signed), 'sha256': sha(signed.read_bytes()), 'archiveMemberCount': len(names), 'actualAX': ['propext'], 'seconds': binding['seconds']}))


if __name__ == '__main__':
    main()
