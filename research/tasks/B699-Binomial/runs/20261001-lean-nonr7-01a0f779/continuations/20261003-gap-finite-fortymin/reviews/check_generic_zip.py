"""Independent read-only conditional composite-tool archive binding; does not launch Lean."""
import hashlib, importlib.util, json, sys, zipfile
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath

sys.dont_write_bytecode = True
BASE = Path(__file__).resolve().parent.parent
OLD = BASE.parent / '20261002-terminal-gap-twohour/reviews/check_terminal_bindings.py'
if hashlib.sha256(OLD.read_bytes()).hexdigest() != '1b6d9a3eaea155b9a62a7b66ac58bf47c6bf479979c1ba91f71984ee4867efb1':
    raise RuntimeError('Adopted frozen independent utility source differs')
loader = importlib.util.spec_from_file_location('frozen_utils', OLD)
utils = importlib.util.module_from_spec(loader)
loader.loader.exec_module(utils)
require, digest_stream, parse_ax = utils.require, utils.digest_stream, utils.parse_ax
DEADLINE = datetime.fromisoformat('2026-10-02T19:30:45+00:00')
MATHLIB = '0df444a360eaa60ab8c11dca51a86af692955474'
PINS = {
    'mathlib': MATHLIB,
    'plausible': 'b7eb3304aeae834b12dda98993a37f6a41f6f0bb',
    'LeanSearchClient': '5f4d51b81cbd3f6b32b156bfad9056621a040404',
    'importGraph': '16f02aa7642864af59f1ff0e384a015994db9118',
    'proofwidgets': '4be2e3d5087eeb272cf5a8853b8f9dd025ef5957',
    'aesop': '3448c0bcc5ce01b2d1546e483ec3620e32df3d0e',
    'Qq': '92c15be17b7caf78c2ad767ec40f89052d908d81',
    'batteries': '4488d40d070b9700d4d5a6aa342f0d40c31b2a2d',
    'Cli': '6130a47896ce867c6a4a55373441e59e565bad0f',
}
NORM_SHA = '3d326681e08ba979f2102e6196c5fb4b9b0f01bbb1db3e21aed54190d1ae00f6'
PREFIX = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
ROWS = [('generic-CompositeCore', PREFIX+'20261003-gap-finite-fortymin/lean/CompositeCore.lean', 'cee177d0bcb9a0b51ab72afc5fd47f00a67c3c1995844154e5e041e304f7fd40', ['B699CompositeCore20261003.common_succ_of_nonprime'], 'generic-normal-checker')]

def run(path, expected_sha, head, run_id):
    require(datetime.now(timezone.utc) < DEADLINE, 'Review budget expired')
    with path.open('rb') as stream:
        require(digest_stream(stream) == expected_sha, 'Original archive SHA differs')
    with zipfile.ZipFile(path) as z:
        names = z.namelist()
        require(len(names) == len(set(names)), 'Duplicate archive members')
        require(all(not PurePosixPath(n).is_absolute() and '..' not in PurePosixPath(n).parts
                    for n in names), 'Unsafe archive member path')
        def obj(name): return json.loads(z.read(name).decode('utf-8-sig'))
        manifest = obj('byte-manifest.json')
        require(str(manifest.get('runId')) == str(run_id), 'Strong expected runId differs')
        require('run' not in manifest or str(manifest['run']) == str(run_id), 'Existing run alias conflicts')
        require(manifest.get('head') == head, 'Strong expected head differs')
        listed = manifest['members']
        members = {r['path']: r for r in listed}
        require(len(members) == len(listed), 'Duplicate manifest rows')
        require(set(names) == set(members) | {'byte-manifest.json'}, 'Incomplete original member manifest')
        def bound(name, expected=None):
            require(name in members, 'Missing original member '+name)
            row = members[name]
            require(z.getinfo(name).file_size == row['bytes'], 'Member size differs '+name)
            with z.open(name) as stream: actual = digest_stream(stream)
            require(actual == row['sha256'] and (expected is None or actual == expected),
                    'Member SHA differs '+name)
            return actual
        for name in members: bound(name)
        def member_of(path):
            require('/generic-evidence/' in path, 'Receipt member outside evidence '+path)
            return path.split('/generic-evidence/', 1)[1]
        def raw_receipt(label):
            r = obj(label+'/receipt.json')
            require(r.get('status') == 'success' and r.get('exitCode') == 0,
                    'Actual execution failed '+label)
            bound(label+'/stdout.log', r['stdoutSha256'])
            bound(label+'/stderr.log', r['stderrSha256'])
            require(datetime.fromisoformat(r['endUtc'].replace('Z', '+00:00')) <= DEADLINE,
                    'Actual execution exceeded authorization '+label)
            return r
        tc = obj('toolchain.json')
        require('4.33.1' in tc['version'], 'Pinned Lean version differs')
        require(Path(tc['leanchecker']).name == 'leanchecker', 'Normal checker unavailable')
        for package, commit in PINS.items():
            raw_receipt('pin-'+package)
            require(z.read('pin-'+package+'/stdout.log').decode().strip() == commit,
                    'Actual fixed package pin differs '+package)
        prime = obj('normnum-prime-source-binding.json')
        require(prime['packageCommit'] == MATHLIB and prime['actualEqualsPinnedGitBlob'],
                'NormNum canonical package binding differs')
        require(prime['actualRawSourceSha256'] == prime['canonicalGitBlobSha256'] == NORM_SHA
                and prime['actualRawBytes'] == 8719, 'NormNum raw source binding differs')
        bound(member_of(prime['canonicalGitBlobLog']), NORM_SHA)
        results = []
        for phase, relative, source_sha, roots, checker in ROWS:
            r = raw_receipt(phase)
            require(r['mode'] == 'Lean' and r['sourceUnchanged'] and r['sourceSha256'] == source_sha,
                    'Actual fixed source binding differs '+phase)
            bound(phase+'/source.lean', source_sha)
            args = r['arguments']
            require(args[0] == tc['lean'] and args[-1] == r['source'], 'Actual compiler argv differs')
            source_root = args[args.index('-R')+1].rstrip('/')
            require(r['source'] == source_root+'/'+relative and args[args.index('-o')+1] == r['object'],
                    'Explicit module sourceRoot/output binding differs')
            object_member = member_of(r['object'])
            require(object_member == 'objects/'+relative.removesuffix('.lean')+'.olean',
                    'Actual module/output object path differs')
            bound(object_member, r['objectSha256'])
            parts = []
            for part in r['objectParts']:
                member = member_of(part['path'])
                require(member.startswith(object_member.removesuffix('.olean')), 'Object part prefix differs')
                bound(member, part['sha256'])
                require(z.getinfo(member).file_size == part['bytes'], 'Object part size differs')
                parts.append({'member': member, 'bytes': part['bytes'], 'sha256': part['sha256']})
            require(parts and object_member in {p['member'] for p in parts}, 'Object parts incomplete')
            prefix = object_member.removesuffix('.olean')+'.'
            require({p['member'] for p in parts} == {n for n in members if n.startswith(prefix)},
                    'Complete original module object-parts coverage differs')
            private_root = r['object'].split('/generic-evidence/objects/', 1)[0]+'/generic-evidence/objects'
            require(isinstance(r.get('effectiveLeanPath'), str) and
                    r['effectiveLeanPath'].startswith(private_root+':'),
                    'Actual private module import root differs')
            a = obj(phase+'/axiom-audit.json')
            require(a['status'] == 'accepted-standard-axioms' and a['sourceSha256'] == source_sha,
                    'Actual audit source binding differs')
            require(a['stdoutSha256'] == r['stdoutSha256'], 'Audit/raw compiler stdout differs')
            seen = parse_ax(z.read(phase+'/stdout.log').decode('utf-8-sig'))
            require(set(roots) == set(a['roots']) == set(seen), 'Complete exact root coverage differs')
            require(a['actualAxioms'] == seen, 'Reported AX differs from complete raw AX')
            c = None
            if checker:
                c = raw_receipt(checker)
                module = '.'.join('«'+p+'»' if '-' in p or p[:1].isdigit() else p
                                  for p in relative.removesuffix('.lean').split('/'))
                require(c['arguments'] == [tc['leanchecker'], '-v', module],
                        'Actual normal checker module/argv differs')
                require(c.get('effectiveLeanPath') == r.get('effectiveLeanPath'),
                        'Checker/compiler import environment differs')
            results.append({'phase': phase, 'sourcePath': relative, 'sourceSha256': source_sha,
                            'compilerReceiptSha256': members[phase+'/receipt.json']['sha256'],
                            'compilerArguments': args, 'compilerExit': r['exitCode'],
                            'objectSha256': r['objectSha256'], 'objectParts': parts,
                            'actualAxioms': seen, 'checker': c,
                            'actualSourceText': z.read(phase+'/source.lean').decode('utf-8-sig'),
                            'actualRawStdout': z.read(phase+'/stdout.log').decode('utf-8-sig')})
        literal_stdout = results[-1]['actualRawStdout']
        require(all('theorem '+n in literal_stdout for n in ROWS[-1][3]), 'Literal actual type output absent')
        require(datetime.now(timezone.utc) < DEADLINE, 'Review completion exceeded authorization')
        output = {'utc': datetime.now(timezone.utc).isoformat(), 'verifier': '/root/semantic_verify_sol',
                  'kind': 'completed independent byte/receipt binding; signature separately records semantic acceptance',
                  'fixedSourceCommit': head, 'actualRunId': str(run_id), 'archive': str(path),
                  'archiveSha256': expected_sha, 'archiveBytes': path.stat().st_size,
                  'originalMemberCount': len(names), 'allMembersActualSizeShaBound': True,
                  'sourceCount': 1, 'genericRootCount': 1, 'oldWitnessInput': True,
                  'sources': results, 'normalCheckerExits': [0], 'toolchain': tc,
                  'normNumPrimeBinding': prime, 'actualPinnedPackages': PINS,
                  'oldUtilsSha256': hashlib.sha256(OLD.read_bytes()).hexdigest(),
                  'reviewScriptSha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                  'kernelRerunByVerifier': False, 'genuineInfiniteGapAccepted': False,
                  'newCompleteOriginalIndexIncrement': 0, 'scope': 'conditional samePrime successor transfer withtwo nonPrime indices andold samePrime witness; no fullfamily accepted'}
        dest = BASE/'reviews/GENERIC-COMPOSITE-INDEPENDENT-BINDING.json'
        dest.write_bytes((json.dumps(output, indent=2, ensure_ascii=False)+'\n').encode('utf-8'))
        print(json.dumps({'status': 'full-byte-binding-passed', 'report': str(dest),
                          'sha256': hashlib.sha256(dest.read_bytes()).hexdigest(),
                          'originalMemberCount': len(names), 'fullAXRootCount': 1,
                          'checkerExits': [0], 'newCompleteOriginalIndexIncrement': 0, 'scope': 'conditional samePrime successor transfer withtwo nonPrime indices andold samePrime witness; no fullfamily accepted'}))

if __name__ == '__main__':
    require(len(sys.argv) == 5, 'Usage: script ZIP SHA expectedHead expectedRunId')
    run(Path(sys.argv[1]), sys.argv[2], sys.argv[3], sys.argv[4])
