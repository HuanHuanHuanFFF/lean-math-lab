"""Normalize exact two-source reuse from the already signed small theta archive.

No proof run and no new mathematical acceptance; original named scope is retained.
"""
import hashlib
import json
import zipfile
from datetime import datetime, timezone
from pathlib import Path
from bind_local_power_archive import axiom_gate, git_bytes, object_member, require, sha, stream_sha, guard

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
BASE = HERE.parent.parent.as_posix()

if __name__ == '__main__':
    guard()
    archive = Path('D:/ResearchArtifacts/b699-gap-halfhour/b699-gap-37046323083.zip')
    archive_sha = '54826001c1d5189cd71a5a23f3c63a30442afbb68b800154b8df6ecb15a90258'
    head = '6191c5f1c6348aee803e7e446d7750bf14cce2bb'
    signature_path = HERE.parent.parent / '20261003-gap-halfhour/reviews/GAP-PREREQUISITES-INDEPENDENT-ACCEPTED.json'
    raw_signature = signature_path.read_bytes()
    sig = json.loads(raw_signature)
    require(sig['verifier'] == '/root/semantic_verify_sol' and sig['semanticVerifierSigned'] is True
            and sig['fixedSourceCommit'] == head and sig['archiveSha256'] == archive_sha
            and sig['fullSameStd3Subset'] is True, 'Original independent scope acceptance differs')
    with archive.open('rb') as raw:
        require(stream_sha(raw) == archive_sha, 'Original small ZIP digest differs')
    members, selected = {}, []
    with zipfile.ZipFile(archive) as z:
        names = z.namelist()
        require(len(names) == len(set(names)) == sig['archiveMemberCount'] == 115, 'Native old inventory differs')
        for info in z.infolist():
            with z.open(info) as raw:
                members[info.filename] = {'bytes': info.file_size, 'sha256': stream_sha(raw)}
        manifest = json.loads(z.read('byte-manifest.json'))
        planned = {r['path'].replace('\\', '/'): r for r in manifest['members']}
        require(set(planned) == set(names) - {'byte-manifest.json'} and len(planned) == len(manifest['members']),
                'Old complete manifest differs')
        require(manifest['head'] == head and str(manifest['runId']) == '37046323083', 'Old run identity differs')
        for n, row in planned.items():
            require(members[n] == {k: row[k] for k in ('bytes', 'sha256')}, 'Old native member bytes differ')
        theta = next(r for r in sig['modules'] if r['module'] == 'ThetaInterval')
        for phase in ['gap-only-00-GapDefinitions', 'gap-only-01-ThetaInterval']:
            r = json.loads(z.read(phase + '/receipt.json'))
            source = z.read(phase + '/source.lean')
            relative = Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
            require(r['mode'] == 'Lean' and r['status'] == 'success' and r['exitCode'] == 0
                    and r['sourceUnchanged'] is True and source == git_bytes(head, relative)
                    and sha(source) == r['sourceSha256'], 'Selected old source/compiler bytes differ')
            for stream in ('stdout', 'stderr'):
                require(sha(z.read(phase + '/' + stream + '.log')) == r[stream + 'Sha256'], 'Selected old log bytes differ')
            printed = [line.removeprefix('#print axioms ').strip() for line in source.decode().splitlines()
                       if line.startswith('#print axioms ')]
            ax = axiom_gate(source, z.read(phase + '/stdout.log'), printed)
            if phase.endswith('ThetaInterval'):
                require(r['sourceSha256'] == theta['sourceSha256'] and r['objectSha256'] == theta['objectSha256']
                        and ax['actualAxioms'] == theta['actualAxioms'] and theta['compilerExit'] == theta['checkerExit'] == 0,
                        'Named theta scope/source/object/AX differs')
                replay = json.loads(z.read('gap-only-01-normal-checker/receipt.json'))
                require(replay['status'] == 'success' and replay['exitCode'] == 0, 'Previously signed theta replay differs')
            else:
                require(r == sig['definitionSupplierActualReceipt'] and printed == ['B699TailGap.Gap']
                        and ax['actualAxioms'] == {'B699TailGap.Gap': ['propext']}, 'Named pure Gap definition receipt differs')
            for part in r['objectParts']:
                member = object_member(part['path'])
                require(members[member] == {k: part[k] for k in ('bytes', 'sha256')}, 'Selected old object part differs')
            selected.append({'sourcePath': relative, 'phase': phase, 'compiler': r, 'axioms': ax,
                             'scope': 'previously signed actual-theta prime extraction' if phase.endswith('ThetaInterval')
                             else 'previously signed pure Gap Prop definition; no supply proof or separate old checker',
                             'sourceMember': phase + '/source.lean'})
        tc = json.loads(z.read('toolchain.json'))
    guard()
    result = {'status': 'exact-selected-reuse-of-named-accepted-source-object',
              'verifier': '/root/local_power_verification', 'utc': datetime.now(timezone.utc).isoformat(),
              'originalSemanticVerifier': sig['verifier'], 'originalSemanticSignature': signature_path.relative_to(REPO).as_posix(),
              'originalSemanticSignatureSha256': sha(raw_signature), 'fixedSourceCommit': head,
              'archiveSha256': archive_sha, 'runId': '37046323083', 'artifactId': '11244387045',
              'nativeMembers': members, 'nativeMemberCount': len(members), 'compilerBindings': selected,
              'toolchain': tc, 'oldExecutionIncrement': 0, 'newMathematicalAcceptanceIncrement': 0,
              'selectedAcceptedSourceCount': 2, 'selectedObjectPartCount': sum(len(r['compiler']['objectParts']) for r in selected),
              'checkerMeaning': 'Retained previous normal replay evidence; no new run or second kernel'}
    out = HERE / 'OLD-THETA-DEFS-REUSE-BINDING.json'
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': result['status'], 'path': str(out), 'selectedSources': 2,
                      'selectedObjectParts': result['selectedObjectPartCount'], 'nativeMembers': len(members)}))
