"""Independent raw-byte, Git-source, actual type/AX/checker and reused-closure binding.

Usage: python bind_extended_archive.py GAP|INITIAL|TAIL30000 ZIP SHA256 FIXED_HEAD RUN ARTIFACT [OUTPUT_PREFIX]
Never invokes Lean. All acceptance remains within the original review deadline.
"""
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
from check_transitive_axioms import check as check_ax

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
BASE = HERE.parent.relative_to(REPO).as_posix() + '/'
START = datetime.fromisoformat('2026-10-04T13:16:38+00:00')
STOP = datetime.fromisoformat('2026-10-04T14:46:00+00:00')
DEADLINE = datetime.fromisoformat('2026-10-04T15:31:38+00:00')
OLD = [
    {'zip': 'D:/ResearchArtifacts/b699-terminal-fortymin/b699-main-37037647747.zip',
     'sha': '29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13',
     'head': 'be6b2df9b58b4f732564dc882945ec5415c81f1a', 'run': '37037647747',
     'artifact': '11241224835', 'count': 1728, 'sourceCount': 129,
     'storage': 'accepted-proof', 'manifest': 'byte-manifest.json',
     'signature': '20261003-terminal-fortymin/reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json'},
    {'zip': 'D:/ResearchArtifacts/b699-nonprime-onehour/b699-tail5000-37143741098.zip',
     'sha': '217e1297ba044c005a13d8be5884a7167daf1c3600fb28148d9195d8155561bc',
     'head': '5b42228cc2b05d701f7f7ea935b315c36d36bbac', 'run': '37143741098',
     'artifact': '11281452239', 'count': 188, 'sourceCount': 11,
     'storage': 'accepted-tail5000', 'manifest': 'delivery-manifest.json',
     'signature': '20261004-nonprime-onehour/reviews/TAIL5000-INDEPENDENT-ACCEPTED.json'},
    {'zip': 'D:/ResearchArtifacts/b699-tail-ninetymin/b699-tail90-probe-37196421370.zip',
     'sha': 'e28d5ed36e1acb590bd6e23992fc2dd07269f35f7a57d9f192c2fa7bf3b04b8f',
     'head': 'd077ec8278b504da5bf03ccc4ecd3662f8d19547', 'run': '37196421370',
     'artifact': '11301262648', 'count': 169, 'sourceCount': 7,
     'storage': 'accepted-probe', 'manifest': 'delivery-manifest.json',
     'signature': '20261004-tail-ninetymin/reviews/PROBE-RELATIVE-VALID-INDEPENDENT-ACCEPTED.json'},
    {'zip': 'D:/ResearchArtifacts/b699-tail-ninetymin/b699-tail90-stage10000-37197120772.zip',
     'sha': 'e906e2fb73ccb9d8a4048ca7ccd8c41cc66b17ecf40524a73424d0a1f1f957aa',
     'head': 'e47faa4ff2cf11e2b125c7e0e0a890c4b990a61e', 'run': '37197120772',
     'artifact': '11302125590', 'count': 864, 'sourceCount': 48,
     'storage': 'accepted-main10000', 'manifest': 'delivery-manifest.json',
     'signature': '20261004-tail-ninetymin/reviews/TAIL10000-INDEPENDENT-ACCEPTED.json'},
    {'zip': 'D:/ResearchArtifacts/b699-tail-twohour-finish/b699-tail2h-stage15000-37205771908.zip',
     'sha': '9a10b334c04fe75ae8ad4798a15b5289ee721c2571aeac533a6778d7fc7bd7e8',
     'head': '3a8b9ff6c5cb8db16112235ca6a0969e36affcbe', 'run': '37205771908',
     'artifact': '11304494869', 'count': 596, 'sourceCount': 32,
     'storage': 'accepted-main15000', 'manifest': 'delivery-manifest.json',
     'signature': '20261004-tail-twohour-finish/reviews/TAIL15000-INDEPENDENT-ACCEPTED.json'}]
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
    require(START <= datetime.now(timezone.utc) < DEADLINE, 'Outside original review window')


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def stream_sha(stream):
    h = hashlib.sha256()
    for chunk in iter(lambda: stream.read(1024 * 1024), b''):
        h.update(chunk)
    return h.hexdigest()


def module(path):
    return '.'.join('«' + part + '»' if '-' in part or part[:1].isdigit() else part
                    for part in path.removesuffix('.lean').split('/'))


def git_bytes(head, path):
    return subprocess.run(['git', 'show', head + ':' + path], cwd=REPO, check=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout


def rel_source(receipt):
    return PurePosixPath(receipt['source']).relative_to(PurePosixPath(receipt['cwd'])).as_posix()


def object_member(path):
    require('/objects/' in path, 'Object outside fixed private object prefix')
    return 'objects/' + path.split('/objects/', 1)[1]


def actual_type(raw, root):
    marker = 'theorem ' + root + ' : '
    require(raw.count(marker) == 1, 'Actual literal missing or duplicated: ' + root)
    return marker + raw.split(marker, 1)[1].split(' :=', 1)[0]


def main():
    if len(sys.argv) not in (7, 8):
        raise SystemExit(__doc__)
    k, zip_path, zip_sha, head, run, artifact = sys.argv[1:7]
    mode = k
    require(mode in ('GAP','INITIAL','TAIL30000'), 'Unsupported requested acceptance scope')
    k = 30000 if mode == 'TAIL30000' else 15000
    require(run.isdigit() and artifact.isdigit() and int(run) > 0 and int(artifact) > 0,
            'Invalid actual run/artifact identity')
    output_prefix = sys.argv[7] if len(sys.argv) == 8 else {'GAP':'GAP-FORWARD','INITIAL':'THETA-INITIAL','TAIL30000':'TAIL30000'}[mode]
    require(re.fullmatch(r'[A-Z0-9-]+', output_prefix) is not None, 'Unsafe output prefix')
    require(not (HERE / (output_prefix + '-INDEPENDENT-ACCEPTED.json')).exists(),
            'Refuse overwriting prior signed acceptance')
    require(k in (15000,30000), 'Unsupported exact target')
    guard()
    began = datetime.now(timezone.utc).isoformat()
    mono = time.monotonic()
    literal_relative = BASE.replace('20261004-tail-twohour-finish/', '20261004-tail-ninetymin/' if k == 10001 else '20261004-tail-until2020/') + f'reviews/Tail{k}ExactLegacy.lean'
    literal_namespace = 'B699TailNinetyVerify20261004' if k == 10001 else 'B699TailUntil2020Verify20261004'
    archive = Path(zip_path)
    with archive.open('rb') as src:
        require(stream_sha(src) == zip_sha, 'New raw ZIP SHA differs')
    with zipfile.ZipFile(archive) as z:
        names = z.namelist()
        require(len(names) == len(set(names)) and all(not PurePosixPath(n).is_absolute()
                    and '..' not in PurePosixPath(n).parts and not n.endswith('/') for n in names),
                'New package duplicate/unsafe/nonordinary member')
        def obj(name):
            return json.loads(z.read(name).decode('utf-8-sig'))
        delivery = obj('delivery-manifest.json')
        require(delivery['head'] == head and str(delivery['runId']) == run
                    and delivery['excludedExactPath'] == 'delivery-manifest.json',
                'New native manifest fixed head/run/self differs')
        members = {v['path']: v for v in delivery['members']}
        require(len(members) == len(delivery['members'])
                    and set(names) == set(members) | {'delivery-manifest.json'},
                'New manifest does not enumerate every ordinary/nested-manifest member')
        for name, row in members.items():
            require(z.getinfo(name).file_size == row['bytes'] and sha(z.read(name)) == row['sha256'],
                    'New member bytes differ: ' + name)
        spec = obj('stage-spec.json')
        require(spec == json.loads(git_bytes(head, BASE + 'runtime/gap-stage-spec.json')),
                'Actual stage spec differs from fixed Git source')
        require(sha(z.read('tail-stage.py')) == sha(git_bytes(head, BASE + 'runtime/gap-stage.py')),
                'Actual runtime source differs')
        require(spec['roundStartUtc'] == '2026-10-04T13:16:38Z'
                    and spec['proofStopUtc'] == '2026-10-04T14:46:00Z'
                    and spec['finalDeadlineUtc'] == '2026-10-04T15:16:38Z'
                    and spec['lastJobStart'] == '2026-10-04T14:05:00Z', 'Original guards changed')
        prepared = obj('prepared.json')
        prefix = prepared['actualFirstSearchPrefix']
        require(prefix.endswith('/' + spec['toolRoot'] + '/evidence/objects')
                    and prepared['oldSourceCompileIncrement'] == 0 and prepared['sourceCount'] == 227,
                'Physical prefix/preparation/old-execution count differs')
        tc = obj('toolchain.json')
        require(tc['version'] == 'Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6, Release)',
                'Actual pinned toolchain version differs')
        receipts = {}
        def receipt(phase):
            row = obj(phase + '/receipt.json')
            require(row.get('childStarted') is True and row['status'] == 'success'
                        and row['exitCode'] == 0 and row.get('stopReason') is None,
                    'Actual execution did not succeed: ' + phase)
            require(sha(z.read(phase + '/stdout.log')) == row['stdoutSha256']
                        and sha(z.read(phase + '/stderr.log')) == row['stderrSha256'],
                    'Actual raw log differs: ' + phase)
            start = datetime.fromisoformat(row['startUtc'].replace('Z', '+00:00'))
            end = datetime.fromisoformat(row['endUtc'].replace('Z', '+00:00'))
            require(START <= start <= end <= STOP and
                    datetime.fromisoformat(row['hardDeadlineUtc'].replace('Z', '+00:00')) <= STOP,
                    'Execution outside original proof window: ' + phase)
            receipts[phase] = row
            return row
        receipt('toolchain-version')
        require(z.read('toolchain-version/stdout.log').decode().strip() == tc['version'], 'Raw toolchain output differs')
        for package, commit in PINS.items():
            receipt('pin-' + package)
            require(z.read('pin-' + package + '/stdout.log').decode().strip() == commit,
                    'Actual pin differs: ' + package)
        index = obj('adopted-source-object-index.json')
        require(index['oldSourceCount'] == 129 and index['supplementSourceCount'] == 98
                    and index['oldExecutionIncrement'] == 0
                    and index['adoptedZipSha256'] == OLD[0]['sha']
                    and index['supplementZipSha256'] == OLD[1]['sha']
                    and len(index['sourceObjects']) == 227, 'Five-provider source index differs')
        external = obj('external-member-bindings.json')
        require(len(external['origins']) == 5, 'Five complete upstream origins missing')
        old_bindings = []
        all_old_receipts = {}
        for frozen in OLD:
            guard()
            opath = Path(frozen['zip'])
            with opath.open('rb') as raw:
                require(stream_sha(raw) == frozen['sha'], 'Fixed old raw ZIP SHA differs')
            origin = next((v for v in external['origins'] if v['zipSha256'] == frozen['sha']), None)
            frozen_spec = spec['adoptedArtifact'] if frozen['storage'] == 'accepted-proof' else \
                spec['tail5000Artifact'] if frozen['storage'] == 'accepted-tail5000' else \
                next(v for v in spec['reusedPrerequisiteArtifacts'] if v['zipSha256'] == frozen['sha'])
            require(origin is not None and origin['sourceCommit'] == frozen['head']
                        and str(origin['run']) == frozen['run'] and str(origin['artifact']) == frozen['artifact']
                        and frozen_spec['zipBytes'] == opath.stat().st_size
                        and origin.get('zipBytes', frozen_spec['zipBytes']) == opath.stat().st_size,
                    'Old origin fixed identifiers differ')
            old_members = {v['member']: v for v in origin['externalMembers']}
            signature_path = HERE.parent.parent / frozen['signature']
            signature = json.loads(signature_path.read_text(encoding='utf-8-sig'))
            require(signature['fixedSourceCommit'] == frozen['head'], 'Named prior acceptance source differs')
            if frozen['storage'] in ('accepted-tail5000', 'accepted-probe', 'accepted-main10000', 'accepted-main15000'):
                require(signature['acceptedOriginalUpper'] == (5000 if frozen['storage'] == 'accepted-tail5000' else 5001 if frozen['storage'] == 'accepted-probe' else 10000 if frozen['storage']=='accepted-main10000' else 15000)
                            and signature['completeExtraMathematicalInputs'] == [], 'Prior original scope differs')
                bound_path = signature_path.parent / signature['binding']
                require(sha(bound_path.read_bytes()) == signature['bindingSha256'], 'Prior independent binding bytes differ')
            source_count = 0
            bound_parts = {}
            with zipfile.ZipFile(opath) as old:
                onames = old.namelist()
                require(len(onames) == len(set(onames)) == len(old_members)
                            and set(onames) == set(old_members), 'Old ordinary member inventory incomplete')
                require(len(onames) == frozen['count'], 'Old native ordinary member count differs')
                old_tc = json.loads(old.read('toolchain.json'))
                require(all(old_tc[v] == tc[v] for v in ('leanSha256', 'leancheckerSha256')),
                        'New/old actual executables differ')
                for name, row in old_members.items():
                    guard()
                    with old.open(name) as raw:
                        digest = stream_sha(raw)
                    require(old.getinfo(name).file_size == row['bytes'] and digest == row['sha256']
                                and row['includedInDelivery'] is False, 'Exact old member differs: ' + name)
                    expected = prefix + '/' + name.removeprefix('objects/') if name.startswith('objects/') else \
                        prefix.removesuffix('/objects') + '/' + frozen['storage'] + '/' + name
                    require(row['storedPath'] == expected, 'Actual adopted storage path differs: ' + name)
                candidates = {}
                for name in onames:
                    if name.endswith('/receipt.json'):
                        row = json.loads(old.read(name))
                        if row.get('mode') == 'Lean' and row.get('status') == 'success' and row.get('exitCode') == 0:
                            candidates.setdefault(rel_source(row), []).append((name, row))
                for relative, row in index['sourceObjects'].items():
                    matching = [(name, r) for name, r in candidates.get(relative, []) if r == row]
                    if not matching:
                        continue
                    require(len(matching) == 1 and relative not in all_old_receipts,
                            'Old adopted receipt ambiguous/duplicated')
                    name, original = matching[0]
                    source_member = name.removesuffix('receipt.json') + 'source.lean'
                    require(old_members[source_member]['sha256'] == row['sourceSha256']
                                and sha(git_bytes(head, relative)) == row['sourceSha256'],
                            'Fixed current/old adopted source differs: ' + relative)
                    old_target = object_member(row['object'])
                    old_part_set = {object_member(part['path']) for part in row['objectParts']}
                    require(len(old_part_set) == len(row['objectParts']) and old_target in old_part_set
                                and old_members[old_target]['sha256'] == row['objectSha256']
                                and old_part_set == {v for v in onames if v.startswith(old_target.removesuffix('.olean') + '.')},
                            'Old source-object main hash/complete part inventory differs')
                    for part in row['objectParts']:
                        member = object_member(part['path'])
                        require(member in old_members and old_members[member]['sha256'] == part['sha256']
                                    and old_members[member]['bytes'] == part['bytes'], 'Old object parts incomplete')
                        bound_parts[member] = {'bytes': part['bytes'], 'sha256': part['sha256']}
                    all_old_receipts[relative] = {'originSha256': frozen['sha'], 'receiptMember': name,
                                                 'sourceSha256': row['sourceSha256'], 'objectSha256': row['objectSha256']}
                    source_count += 1
            require(source_count == frozen['sourceCount'], 'Adopted provider source count differs')
            old_bindings.append({'archive': str(opath), 'archiveSha256': frozen['sha'],
                                 'fixedSourceCommit': frozen['head'], 'memberCount': len(old_members),
                                 'sourceCount': source_count, 'objectParts': bound_parts,
                                 'namedAcceptance': str(signature_path.relative_to(REPO)),
                                 'namedAcceptanceSha256': sha(signature_path.read_bytes())})
        require(len(all_old_receipts) == 227, 'Incomplete exact old227 closure')
        fresh = []
        normal = []
        common_path = None
        roots_seen = set()
        closed_names = []
        for stage in spec['stages']:
            closed_name = stage['name'] + '-closed.json'
            if closed_name not in names:
                continue
            closed = obj(closed_name)
            require(closed['freshSources'] == stage['sources'] and closed['actualNormalCheckerExit'] == 0
                        and closed['genuineInfiniteGapProvided'] is False, 'Closed-stage actual scope differs')
            closed_names.append(stage['name'])
            for row in stage['sources']:
                phase = ('composite-' if row.get('largeConsumer', False) else 'proof-') + stage['name'] + '-' + Path(row['path']).stem
                r = receipt(phase)
                source = z.read(phase + '/source.lean')
                require(r['mode'] == 'Lean' and r['sourceUnchanged'] is True
                            and sha(source) == row['sha256'] == r['sourceSha256']
                            and source == git_bytes(head, row['path']) and rel_source(r) == row['path'],
                        'Fresh Git/source/raw binding differs: ' + phase)
                require(r['sourceSnapshot'] == prefix.removesuffix('/objects') + '/' + phase + '/source.lean',
                        'Actual fresh source snapshot path differs')
                expected_argv = [tc['lean'], '-j1', ('-M4096' if stage['name'].startswith('gap') else '-M6144') if row.get('largeConsumer', False)
                                 else '-M3132', '-DElab.async=false', '-R', r['cwd'],
                                 '-o', r['object'], r['source']]
                require(r['arguments'] == expected_argv and r['executable'] == tc['lean']
                            and r['executableSha256'] == tc['leanSha256'],
                        'Actual compiler executable/command differs: ' + phase)
                require(r['effectiveLeanPath'].startswith(prefix + ':'), 'Actual first source search prefix differs')
                common_path = common_path or r['effectiveLeanPath']
                require(r['effectiveLeanPath'] == common_path, 'Fresh import environments differ')
                target = object_member(r['object'])
                parts = {object_member(part['path']) for part in r['objectParts']}
                require(len(parts) == len(r['objectParts']) and target in parts
                            and parts == {v for v in names if v.startswith(target.removesuffix('.olean') + '.')},
                        'Fresh object parts inventory incomplete')
                for part in r['objectParts']:
                    member = object_member(part['path'])
                    require(members[member]['bytes'] == part['bytes'] and members[member]['sha256'] == part['sha256'],
                            'Fresh object part bytes differ')
                require(members[target]['sha256'] == r['objectSha256'], 'Fresh root object hash differs')
                ax = check_ax(source, z.read(phase + '/stdout.log'))
                require(ax['roots'] == row['roots'] and not roots_seen.intersection(ax['roots']),
                        'Fresh roots differ or duplicated across modules')
                roots_seen.update(ax['roots'])
                for audit_file in ('axiom-audit.json', 'strict-axiom-audit.json'):
                    a = obj(phase + '/' + audit_file)
                    require(all(a[v] == ax[v] for v in ax), 'Actual complete AX gate/raw/source differs')
                gate = receipt(phase + '-strict-axioms')
                require(gate['arguments'] == ['python3', spec['strictAuditScript'], row['path'], r['stdout'],
                        prefix.removesuffix('/objects') + '/' + phase + '/strict-axiom-audit.json'],
                        'Actual executable AX gate command differs')
                c = receipt(phase + '-normal-checker')
                require(c['arguments'] == [tc['leanchecker'], '-v', module(row['path'])]
                            and c['executableSha256'] == tc['leancheckerSha256']
                            and c['effectiveLeanPath'] == common_path
                            and z.read(phase + '-normal-checker/stdout.log').decode().strip() == 'replaying ' + module(row['path']),
                        'Actual normal checker target/executable/path/raw differs')
                fresh.append({'phase': phase, 'sourcePath': row['path'], 'receipt': r,
                              'receiptSha256': members[phase + '/receipt.json']['sha256'], 'actualAxioms': ax['actualAxioms']})
                normal.append({'phase': phase + '-normal-checker', 'receipt': c})
        # Requested scope is checked from explicit independent literals below.
        require(all(row['effectiveLeanPath'] == common_path for row in external['actualCompilerSearchPaths']),
                'External/new actual compiler import prefixes differ')
        expected_search_records = {v['phase'] + '/receipt.json': common_path for v in fresh}
        actual_search_records = {v['receipt']: v['effectiveLeanPath'] for v in external['actualCompilerSearchPaths']}
        require(len(actual_search_records) == len(external['actualCompilerSearchPaths'])
                    and actual_search_records == expected_search_records,
                'Actual compiler path records incomplete/extra/duplicated')
        actual_lean_receipts = {n.removesuffix('/receipt.json') for n in names if n.endswith('/receipt.json')
                               and obj(n).get('mode') == 'Lean'}
        require(actual_lean_receipts == {v['phase'] for v in fresh}, 'Extra/unbound fresh Lean execution')
        literal = {}
        finite_gap_types = {}
        finite_gap_scopes = []
        gap_targets = [
            ('GapLowerExactLegacy.lean','gap_fixed_initial_exact',19995885,20482069),
            ('GapLowerExactLegacy.lean','gap_10000_extended_initial_exact',19995885,40956329),
            ('Gap13000ExactLegacy.lean','gap_13000_initial_exact',20482069,53399837),
            ('Gap13000ExactLegacy.lean','gap_13000_extended_initial_exact',19995885,53399837),
            ('Gap15000ExactLegacy.lean','gap_15000_initial_exact',20482069,61439401),
            ('Gap15000ExactLegacy.lean','gap_15000_extended_initial_exact',19995885,61439401),
            ('InitialLowerExactLegacy.lean','full_lower_gap_exact',10000000,19995885),
            ('InitialUpperExactLegacy.lean','full_upper_gap_exact',61439401,122879557),
            ('ThetaInitialExactLegacy.lean','theta_initial_exact',10000000,122568684)]
        for filename,name,lo,hi in gap_targets:
            matches = [v for v in fresh if v['sourcePath']==BASE+'reviews/'+filename]
            if not matches:
                continue
            require(len(matches)==1,'Duplicate independent finite Gap literal')
            root = 'B699TailFinishVerify20261004.'+name
            raw = z.read(matches[0]['phase']+'/stdout.log').decode('utf-8-sig')
            actual = actual_type(raw,root)
            expected = f'theorem {root} : ∀ (y : ℕ), {lo} ≤ y → y < {hi} → ∃ p, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y'
            require(re.sub(r'\s+',' ',actual)==expected,'Actual exact finite Gap type differs')
            finite_gap_types[root] = actual
            finite_gap_scopes.append({'root':root,'lowerInclusive':lo,'upperExclusive':hi,'integerYCount':hi-lo,'denominator':4095,'extraMathematicalInputs':[]})
        require('B699TailFinishVerify20261004.gap_15000_extended_initial_exact' in finite_gap_types,'Small finite Gap unit is incomplete')
        if mode=='INITIAL':
            require('B699TailFinishVerify20261004.theta_initial_exact' in finite_gap_types,'Requested entire theta initial interval missing')
        if mode=='TAIL30000':
            matches = [v for v in fresh if v['sourcePath']==BASE+'reviews/Tail30000ExactLegacy.lean']
            require(len(matches)==1,'Requested full original30000 literal missing')
            raw = z.read(matches[0]['phase']+'/stdout.log').decode('utf-8-sig')
            for name,expected in (
                ('complete_30000_exact','∀ (n j : ℕ), 30000 < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ 30000 ≤ p ∧ p ∣ n.choose 30000 ∧ p ∣ n.choose j'),
                ('all_upto_30000_exact','∀ (n i j : ℕ), 4883 ≤ i → i ≤ 30000 → i < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j')):
                root = 'B699TailFinishVerify20261004.'+name
                literal[root] = actual_type(raw,root)
                require(re.sub(r'\s+',' ',literal[root])=='theorem '+root+' : '+expected,'Actual complete30000 original type differs')
        for row in fresh:
            r = row['receipt']
            if row['phase'].startswith('composite-') and not row['phase'].startswith('composite-gap'):
                require(r['startupMemoryMiB']==10240 and r['treeMemoryMiB']==8192,'Actual larger consumer resource gate differs')
        guard()
        result = {'status': 'independent-binding-passed', 'verifier': '/root/tail2h_verification',
                  'startUtc': began, 'endUtc': datetime.now(timezone.utc).isoformat(),
                  'elapsedSeconds': time.monotonic() - mono, 'hardDeadlineUtc': DEADLINE.isoformat(), 'originalReviewDeadlineUtc': '2026-10-04T15:16:38+00:00', 'recordedExtension': {'path': 'D:\\CodingProject\\Math\\research\\tasks\\B699-Binomial\\runs\\20261001-lean-nonr7-01a0f779\\continuations\\20261004-tail-twohour-finish\\EXTENSION.md', 'sha256': 'd47d7680d7ff6339ac66f57ee458f91dc909123b64a212fdb9cc85abf4993063', 'originalReviewDeadlineUtc': '2026-10-04T15:16:38+00:00', 'revisedReviewDeadlineUtc': '2026-10-04T15:31:38+00:00', 'proofWindowsUnchanged': {'parent': '2026-10-04T14:46:00+00:00', 'tiny': '2026-10-04T15:06:00+00:00'}, 'noNewProofExecutionAuthorizedByThisTool': True},
                  'fixedSourceCommit': head, 'actualRunId': run, 'artifactId': artifact,
                  'archive': str(archive), 'archiveBytes': archive.stat().st_size, 'archiveSha256': zip_sha,
                  'nativeMemberCount': len(names), 'nativeMembers': members,
                  'oldBindings': old_bindings, 'adopted227Sources': all_old_receipts,
                  'actualFirstSearchPrefix': prefix, 'actualCompleteImportPath': common_path,
                  'fixedToolchain': tc, 'actualPins': PINS, 'actualRunnerResources': obj('resources-start.json'),
                  'closedStages': closed_names, 'freshCompilerBindings': fresh,
                  'normalCheckerBindings': normal, 'actualTransitiveAxiomRootCount': len(roots_seen),
                  'actualOriginalLiteralTypes': literal, 'completeOriginalUpper': k,
                  'actualFiniteGapLiteralTypes': finite_gap_types, 'acceptedFiniteGapScopes': finite_gap_scopes,
                  'completeExtraMathematicalInputs': [], 'genuineInfiniteGapSupplied': False,
                  'kernelRerunByVerifier': False, 'R7Changed': False,
                  'scriptSha256': sha(Path(__file__).read_bytes())}
        binding_path = HERE / (output_prefix + '-INDEPENDENT-BINDING.json')
        binding_path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
        guard()
        sig = {'status': 'accepted-complete-original-through-30000' if mode=='TAIL30000' else 'accepted-entire-theta-finite-initial' if mode=='INITIAL' else 'accepted-real-finite-gap-forward',
               'verifier': '/root/tail2h_verification', 'signedUtc': datetime.now(timezone.utc).isoformat(),
               'hardDeadlineUtc': DEADLINE.isoformat(), 'originalReviewDeadlineUtc': '2026-10-04T15:16:38+00:00', 'recordedExtension': {'path': 'D:\\CodingProject\\Math\\research\\tasks\\B699-Binomial\\runs\\20261001-lean-nonr7-01a0f779\\continuations\\20261004-tail-twohour-finish\\EXTENSION.md', 'sha256': 'd47d7680d7ff6339ac66f57ee458f91dc909123b64a212fdb9cc85abf4993063', 'originalReviewDeadlineUtc': '2026-10-04T15:16:38+00:00', 'revisedReviewDeadlineUtc': '2026-10-04T15:31:38+00:00', 'proofWindowsUnchanged': {'parent': '2026-10-04T14:46:00+00:00', 'tiny': '2026-10-04T15:06:00+00:00'}, 'noNewProofExecutionAuthorizedByThisTool': True}, 'binding': binding_path.name,
               'bindingSha256': sha(binding_path.read_bytes()), 'fixedSourceCommit': head,
               'actualRunId': run, 'artifactId': artifact, 'archiveSha256': zip_sha,
               'completeOriginalScope': f'All Nat n/i/j with 4883<=i<=30000, i<j<=n/2; same actual Nat.Prime p>=i divides both complete chooses.' if mode=='TAIL30000' else 'Finite Gap scope only; complete original15000 coverage inherited from separately accepted main origin',
               'completeExtraMathematicalInputs': [], 'actualOriginalLiteralTypes': literal,
               'actualFiniteGapLiteralTypes': finite_gap_types, 'acceptedFiniteGapScopes': finite_gap_scopes,
               'acceptedFreshMathematicalRoots': sorted(roots_seen),
               'newCompleteOriginalIndexCountFrom10000': 20000 if mode=='TAIL30000' else 0,
               'acceptedOriginalUpper': k, 'originalCoverageIsInherited': mode!='TAIL30000', 'freshAXRootCount': len(roots_seen),
               'normalCheckerExits': [v['receipt']['exitCode'] for v in normal],
               'oldProviderZipSha256': [v['sha'] for v in OLD], 'oldSourceCompileIncrement': 0,
               'kernelRerunByVerifier': False,
               'checkerMeaning': 'Actual pinned Lean normal replay, not a second kernel implementation.',
               'genuineInfiniteGapAccepted': False, 'R7Changed': False,
               'remainingUnboundedRegion': f'i>={k+1} in low-ratio unknown domain; unbounded n/j and genuine infinite Gap y.'}
        (HERE / (output_prefix + '-INDEPENDENT-ACCEPTED.json')).write_text(json.dumps(sig, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
        print('Independent scope %s accepted: %d fresh AX roots, %d native members' %
              (mode, len(roots_seen), len(names)))


if __name__ == '__main__':
    main()
