"""Independent raw-byte, Git-source, actual type/AX/checker and reused-closure binding.

Usage: python bind_extended_archive.py INITIAL|TAIL30000|BOTH ZIP SHA256 FIXED_HEAD RUN ARTIFACT [OUTPUT_PREFIX]
Never invokes Lean. Review uses this round's authorized window; historical proof windows stay fixed.
"""
import hashlib
import json
import re
import subprocess
import sys
import time
import os
import zipfile
from datetime import datetime, timezone
from pathlib import Path, PurePosixPath

sys.dont_write_bytecode = True
from check_transitive_axioms import check as check_ax

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261005-lean-formal-seventyfive/'
START = datetime.fromisoformat('2026-10-04T16:35:50+00:00')
STOP = datetime.fromisoformat('2026-10-04T17:35:00+00:00')
DEADLINE = datetime.fromisoformat('2026-10-04T17:50:50+00:00')
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
     'signature': '20261004-tail-twohour-finish/reviews/TAIL15000-INDEPENDENT-ACCEPTED.json'},
    {'zip':os.environ.get('B699_PARENT_ARCHIVE', '__FULL_VERIFIED_PARENT_REQUIRED__'),
     'sha':'8d37f8464e3ca059ad1ee9baf865c5f72fe39074d2219240a01efa293cee2068',
     'head':'d26594a69a35f42336654b8169c61b40f55a32c0','run':'37207871560',
     'artifact':'11306775385','count':None,'sourceCount':104,'storage':'carried-upperinitial',
     'manifest':'delivery-manifest.json',
     'signature':'20261005-lean-formal-seventyfive/reviews/UPPER-RANGES-INDEPENDENT-ACCEPTED.json'},
    {'zip':'D:/ResearchArtifacts/b699-tail-twohour-finish/b699-tail2h-tinytail30000-37210857364-complete.zip',
     'sha':'fb0642947f4f81af6b8c206e4f9acfd5b381d10c34a4df166711e95e0a795e6c',
     'head':'b1de49c08be2850f6e98d4fe9f101e29778cdcdc','run':'37210857364','artifact':'11306801187',
     'count':1464,'sourceCount':4,'storage':'accepted-final30000','manifest':'delivery-manifest.json',
     'signature':'20261005-lean-formal-seventyfive/reviews/TINY-ALL-INDEPENDENT-ACCEPTED.json'},
    {'zip':'D:/ResearchArtifacts/b699-gap-halfhour/b699-gap-37046323083.zip',
     'sha':'54826001c1d5189cd71a5a23f3c63a30442afbb68b800154b8df6ecb15a90258',
     'head':'6191c5f1c6348aee803e7e446d7750bf14cce2bb','run':'37046323083','artifact':'11244387045',
     'count':115,'sourceCount':2,'storage':'accepted-theta2','manifest':'byte-manifest.json',
     'signature':'20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json'}]
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
    require(datetime.fromisoformat('2026-10-04T16:35:50+00:00') <= datetime.now(timezone.utc) < DEADLINE, 'Outside new authorized review window')


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
    require(mode == 'FIRST', 'Unsupported requested bridge scope')
    k = 30000
    require(run.isdigit() and artifact.isdigit() and int(run) > 0 and int(artifact) > 0,
            'Invalid actual run/artifact identity')
    output_prefix = sys.argv[7] if len(sys.argv) == 8 else 'THETA-BRIDGES'
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
        require(spec == json.loads(git_bytes(head, BASE + 'runtime/bridge-stage-spec.json')),
                'Actual stage spec differs from fixed Git source')
        require(sha(z.read('tail-stage.py')) == sha(git_bytes(head, BASE + 'runtime/bridge-stage.py')),
                'Actual runtime source differs')
        require(spec['roundStartUtc'] == '2026-10-04T16:35:50Z'
                    and spec['proofStopUtc'] == '2026-10-04T17:35:00Z'
                    and spec['finalDeadlineUtc'] == '2026-10-04T17:50:50Z'
                    and spec['lastJobStart'] == '2026-10-04T17:10:00Z', 'Original guards changed')
        prepared = obj('prepared.json')
        prefix = prepared['actualFirstSearchPrefix']
        require(prefix.endswith('/' + spec['toolRoot'] + '/evidence/objects')
                    and prepared['oldSourceCompileIncrement'] == 0 and prepared['sourceCount'] == 337,
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
        require(index['oldSourceCount'] == 129 and index['supplementSourceCount'] == 208
                    and index['oldExecutionIncrement'] == 0
                    and index['adoptedZipSha256'] == OLD[0]['sha']
                    and index['supplementZipSha256'] == OLD[1]['sha']
                    and len(index['sourceObjects']) == 337, 'Six-provider source index differs')
        external = obj('external-member-bindings.json')
        require(len(external['origins']) == 8, 'Six complete upstream origins missing')
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
            if frozen['storage']=='carried-upperinitial':
                require(signature['actualRunId']==frozen['run'] and signature['artifactId']==frozen['artifact'] and signature['archiveSha256']==frozen['sha'], 'Parent independent signature identity differs')
                require(signature['normalCheckerExits']==[0]*104 and signature['freshAXRootCount']==5808, 'Parent104 actual complete checker/AX scope differs')
                require(sha((signature_path.parent/signature['binding']).read_bytes())==signature['bindingSha256'], 'Parent independent binding bytes differ')

            if frozen['storage']=='accepted-final30000':
                require(signature['normalCheckerExits']==[0]*4 and signature['freshAXRootCount']==7 and signature['acceptedOriginalUpper']==30000 and signature['completeExtraMathematicalInputs']==[], 'Tiny complete conditional-free scope differs')
                require(sha((signature_path.parent/signature['binding']).read_bytes())==signature['bindingSha256'], 'Tiny accepted binding bytes differ')
            if frozen['storage']=='accepted-theta2':
                require(signature['archiveSha256']==frozen['sha'] and signature['normalCheckerExits']==[0]*3 and signature['fullSameStd3Subset'] is True, 'Theta named acceptance differs')
            source_count = 0
            bound_parts = {}
            with zipfile.ZipFile(opath) as old:
                onames = old.namelist()
                require(len(onames) == len(set(onames)) == len(old_members)
                            and set(onames) == set(old_members), 'Old ordinary member inventory incomplete')
                require(frozen['count'] is None or len(onames) == frozen['count'], 'Old native ordinary member count differs')
                old_tc = json.loads(old.read('toolchain.json'))
                require(all(old_tc[v] == tc[v] for v in ('leanSha256', 'leancheckerSha256')),
                        'New/old actual executables differ')
                for name, row in old_members.items():
                    guard()
                    with old.open(name) as raw:
                        digest = stream_sha(raw)
                    require(old.getinfo(name).file_size == row['bytes'] and digest == row['sha256']
                                and row['includedInDelivery'] is False, 'Exact old member differs: ' + name)
                    # This bridge packet excludes all old ordinary duplicates; exact external bindings remain.
                    use_object = name.startswith('objects/') and (not frozen_spec.get('selectedObjectMembers') or name in frozen_spec['selectedObjectMembers'])
                    if frozen['storage']=='accepted-theta2':
                        require(row['inCompilerObjectPrefix'] is use_object, 'Theta object selection differs')
                    expected = prefix + '/' + name.removeprefix('objects/') if use_object else \
                        prefix.removesuffix('/objects') + '/' + frozen['storage'] + '/' + name
                    require(row['storedPath'] == expected, 'Actual adopted storage path differs: ' + name)
                candidates = {}
                for name in onames:
                    if name.endswith('/receipt.json'):
                        if frozen_spec.get('freshOnly') and len(Path(name).parts)!=2:
                            continue
                        if frozen_spec.get('selectedReceipts') and name not in frozen_spec['selectedReceipts']:
                            continue
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

                    if frozen['storage']=='accepted-theta2':
                        ax=check_ax(old.read(source_member), old.read(name.removesuffix('receipt.json')+'stdout.log'))
                        require(len(ax['roots'])==(5 if 'ThetaInterval' in name else 4), 'Theta nine actual roots missing')
                        phase=name.removesuffix('/receipt.json').rsplit('-',1)[0]
                        cr=json.loads(old.read(phase+'-normal-checker/receipt.json'))
                        require(cr.get('childStarted') is True and cr['status']=='success' and cr['exitCode']==0 and cr.get('stopReason') is None, 'Theta actual normal checker failed')
                        require(cr['arguments']==[tc['leanchecker'],'-v',module(relative)] and cr['executableSha256']==tc['leancheckerSha256'], 'Theta actual normal checker target differs')
                        require(sha(old.read(phase+'-normal-checker/stdout.log'))==cr['stdoutSha256'] and sha(old.read(phase+'-normal-checker/stderr.log'))==cr['stderrSha256'], 'Theta checker logs differ')
                        require(old.read(phase+'-normal-checker/stdout.log').decode().strip()=='replaying '+module(relative), 'Theta checker replay differs')
                    source_count += 1
            require(source_count == frozen['sourceCount'], 'Adopted provider source count differs')
            old_bindings.append({'archive': str(opath), 'archiveSha256': frozen['sha'],
                                 'fixedSourceCommit': frozen['head'], 'memberCount': len(old_members),
                                 'sourceCount': source_count, 'objectParts': bound_parts,
                                 'namedAcceptance': str(signature_path.relative_to(REPO)),
                                 'namedAcceptanceSha256': sha(signature_path.read_bytes())})
        require(len(all_old_receipts) == 337, 'Incomplete exact old337 closure')
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
                               and obj(n).get('mode') == 'Lean' }
        require(actual_lean_receipts == {v['phase'] for v in fresh}, 'Extra/unbound fresh Lean execution')

        require(closed_names==['bridgeglobal','bridgelocal'] and len(fresh)==4 and len(normal)==4 and len(roots_seen)==10, 'Incomplete actual four-module bridge unit')
        literal = {}
        upper_global='(∀ (x : ℝ), 0 < x → Chebyshev.theta x - x ≤ x / 36260)'
        upper_local='(∀ (x : ℝ), 122568683 < x → Chebyshev.theta x - x ≤ x / 36260)'
        lower='(∀ (x : ℝ), 122568683 < x → x - Chebyshev.theta x ≤ x / (20 * Real.log x ^ 2))'
        original='∀ (n i j : ℕ), 4883 ≤ i → i < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j'
        gap=lambda y:'∀ (y : ℕ), '+str(y)+' ≤ y → ∃ p, Nat.Prime p ∧ y < p ∧ 4095 * (p - y) ≤ y'
        targets=[('ThetaOriginalExactLegacy.lean','gap_from_two_uniform_theta_exact',upper_global,gap(10000000)),('ThetaOriginalExactLegacy.lean','original_tail_from_two_uniform_theta_exact',upper_global,original),('ThetaLocalizedExactLegacy.lean','gap_above_theta_threshold_exact',upper_local,gap(122568684)),('ThetaLocalizedExactLegacy.lean','gap_from_two_local_uniform_theta_exact',upper_local,gap(10000000)),('ThetaLocalizedExactLegacy.lean','original_tail_from_two_local_uniform_theta_exact',upper_local,original)]
        for file,name,upper,conclusion in targets:
            rows=[v for v in fresh if v['sourcePath']==BASE+'reviews/'+file]
            require(len(rows)==1,'Exact conditional literal source missing')
            root='B699ThetaVerify20261005.'+name
            printed=actual_type(z.read(rows[0]['phase']+'/stdout.log').decode('utf-8-sig'),root)
            expected='theorem '+root+' : '+upper+' → '+lower+' → '+conclusion
            require(re.sub(r'\s+',' ',printed)==expected,'Actual conditional target or mathematical assumptions differ: '+root)
            literal[root]=printed
        for row in fresh:
            require(row['receipt']['startupMemoryMiB']==6144 and row['receipt']['treeMemoryMiB']==5120,'Actual bridge resource profile differs')
        require(not any('objects/Mathlib/' in part for origin in old_bindings for part in origin['objectParts']), 'Private prefix shadows pinned Mathlib')
        guard()
        result={'status':'independent-conditional-bridge-binding-passed','verifier':'/root/tail2h_verification','startUtc':began,'endUtc':datetime.now(timezone.utc).isoformat(),'elapsedSeconds':time.monotonic()-mono,'hardDeadlineUtc':DEADLINE.isoformat(),'proofStartUtc':START.isoformat(),'proofStopUtc':STOP.isoformat(),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archive':str(archive),'archiveBytes':archive.stat().st_size,'archiveSha256':zip_sha,'nativeMemberCount':len(names),'nativeMembers':members,'oldBindings':old_bindings,'adopted337Sources':all_old_receipts,'actualFirstSearchPrefix':prefix,'actualCompleteImportPath':common_path,'fixedToolchain':tc,'actualPins':PINS,'actualRunnerResources':obj('resources-start.json'),'closedStages':closed_names,'freshCompilerBindings':fresh,'normalCheckerBindings':normal,'actualTransitiveAxiomRootCount':len(roots_seen),'actualConditionalLiteralTypes':literal,'conditionalRealInputsPerThetaConsequence':2,'analyticalBoundsProvided':False,'unconditionalOriginalIndexIncrement':0,'unconditionalInfiniteGapAccepted':False,'historicalProofWindowsUnchanged':True,'actualResourceProfile':{'startupMiB':6144,'treeMiB':5120,'leanMemoryArgument':'-M6144','outerRequestedProfileWasOverwrittenByFixedHelper':True},'kernelRerunByVerifier':False,'R7Changed':False,'scriptSha256':sha(Path(__file__).read_bytes())}
        binding_path=HERE/(output_prefix+'-INDEPENDENT-BINDING.json')
        binding_path.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        guard()
        sig={'status':'accepted-conditional-theta-bridges','verifier':'/root/tail2h_verification','taskClass':'Complex established semantic and dependency verification','model':'gpt-6.1-sol','reasoningEffort':'xhigh','signedUtc':datetime.now(timezone.utc).isoformat(),'hardDeadlineUtc':DEADLINE.isoformat(),'binding':binding_path.name,'bindingSha256':sha(binding_path.read_bytes()),'fixedSourceCommit':head,'actualRunId':run,'artifactId':artifact,'archiveSha256':zip_sha,'freshAXRootCount':len(roots_seen),'normalCheckerExits':[v['receipt']['exitCode'] for v in normal],'acceptedFreshMathematicalRoots':sorted(roots_seen),'actualConditionalLiteralTypes':literal,'completeExtraMathematicalInputs':{'globalBridge':[upper_global,lower],'localizedBridge':[upper_local,lower]},'conditionalRealInputsPerThetaConsequence':2,'analyticalBoundsProvided':False,'completeOriginalScope':'Conditional forall Nat n i j:4883<=i,i<j<=n/2,same actual Nat.Prime p>=i divides both complete chooses','unconditionalOriginalIndexIncrement':0,'unconditionalInfiniteGapAccepted':False,'preservedCompleteOriginalScope':'{1,2,11,29} union [35,30000]','preservedFiniteGapScope':'10000000<=y<122568684','kernelRerunByVerifier':False,'checkerMeaning':'Pinned Lean normal replay, not a second kernel implementation','R7Changed':False}
        (HERE/(output_prefix+'-INDEPENDENT-ACCEPTED.json')).write_text(json.dumps(sig,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print('Conditional bridge independently accepted:337 reused sources,4 fresh modules,10 Std3 AX,4 normal checkers,5 exact two-input targets')

if __name__ == '__main__':
    main()
