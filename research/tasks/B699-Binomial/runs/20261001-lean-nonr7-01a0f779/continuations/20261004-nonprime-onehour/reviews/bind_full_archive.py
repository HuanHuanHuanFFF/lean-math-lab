"""Bind fresh full consumers plus exact-byte external old providers without rerunning Lean."""
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
from bind_leaf_archive import PINS, parse_ax, sha, require

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
START = datetime.fromisoformat('2026-10-03T17:36:13+00:00')
STOP = datetime.fromisoformat('2026-10-03T18:28:13+00:00')
DEADLINE = datetime.fromisoformat('2026-10-03T18:36:13+00:00')
HEAD = '0690b321da82b1b10fe2ee4d9adbb84a4450e15c'
RUN = '37142647213'
ARCHIVE = Path(r'D:\ResearchArtifacts\b699-nonprime-onehour\b699-nonprime-full-37142647213.zip')
ARCHIVE_SHA = '14a0d6eb29776973399f8fc34ed1cf2b7f150fd5759cc03adbb2d5906db82586'
OLD_ARCHIVE = Path(r'D:\ResearchArtifacts\b699-terminal-fortymin\b699-main-37037647747.zip')
OLD_SHA = '29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13'
OLD_HEAD = 'be6b2df9b58b4f732564dc882945ec5415c81f1a'
BASE = 'research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261004-nonprime-onehour/'
CERT_ROOTS = [f'B699CompositeTransfer20261003.not_prime_{k}' for k in range(4884,4889)]
FULL_ROOTS = ['B699CompositeTransfer20261003.common_succ_of_nonprime'] + [f'B699CompositeTransfer20261003.complete_{k}' for k in range(4885,4889)] + ['B699CompositeTransfer20261003.complete_4885_through_4888']
EXACT_ROOTS = [f'B699CompositeVerify20261003.complete_{k}_exact' for k in range(4885,4889)] + ['B699CompositeVerify20261003.complete_4885_4888_exact']


def guard():
    require(START <= datetime.now(timezone.utc) < DEADLINE, 'Outside independent review window')


def stream_sha(stream):
    h = hashlib.sha256()
    for chunk in iter(lambda: stream.read(1048576), b''):
        h.update(chunk)
    return h.hexdigest()


def git_bytes(path):
    return subprocess.run(['git','show',f'{HEAD}:{path}'], cwd=REPO, check=True,
                          stdout=subprocess.PIPE, stderr=subprocess.PIPE).stdout


def module(path):
    return '.'.join('«'+p+'»' if '-' in p or p[:1].isdigit() else p for p in path.removesuffix('.lean').split('/'))


def printed_type(raw, root):
    marker = 'theorem '+root+' : '
    require(raw.count(marker) == 1, 'Literal root absent/duplicated: '+root)
    return marker + raw.split(marker,1)[1].split(' :=',1)[0]


def main():
    guard()
    began = datetime.now(timezone.utc).isoformat()
    mono = time.monotonic()
    require(ARCHIVE.stat().st_size == 457476, 'Small full archive size differs')
    with ARCHIVE.open('rb') as stream:
        require(stream_sha(stream) == ARCHIVE_SHA, 'Small full archive SHA differs')
    with OLD_ARCHIVE.open('rb') as stream:
        require(stream_sha(stream) == OLD_SHA, 'External fixed old ZIP SHA differs')
    with zipfile.ZipFile(ARCHIVE) as z, zipfile.ZipFile(OLD_ARCHIVE) as old:
        def obj(name): return json.loads(z.read(name).decode('utf-8-sig'))
        names = z.namelist()
        require(len(names) == len(set(names)) and all(not PurePosixPath(n).is_absolute() and '..' not in PurePosixPath(n).parts for n in names), 'Small package member names invalid')
        delivery = obj('delivery-manifest.json')
        require(delivery['head'] == HEAD and str(delivery['runId']) == RUN and delivery['excludedExactPath'] == 'delivery-manifest.json', 'Strong delivery run/head/self path differs')
        members = {r['path']:r for r in delivery['members']}
        require(len(members) == len(delivery['members']) and set(names) == set(members) | {'delivery-manifest.json'}, 'Incomplete precise delivery manifest')
        for name,row in members.items():
            require(z.getinfo(name).file_size == row['bytes'] and sha(z.read(name)) == row['sha256'], 'Native member bytes/SHA differ: '+name)
        producer = obj('byte-manifest.json')
        require(producer['head'] == HEAD and str(producer['runId']) == RUN, 'Producer run/head differs')
        producer_members = {r['path']:r for r in producer['members']}
        require(len(producer_members) == len(producer['members']), 'Producer member duplication')
        external = obj('external-member-bindings.json')
        require(external['sourceCommit'] == OLD_HEAD and str(external['run']) == '37037647747' and str(external['artifact']) == '11241224835', 'Old provider source/run/artifact differs')
        require(external['zipSha256'] == OLD_SHA and external['zipBytes'] == OLD_ARCHIVE.stat().st_size and external['actualTransferCompleted'] is True, 'Actual external transfer origin differs')
        old_names = old.namelist()
        ext = {r['member']:r for r in external['externalMembers']}
        require(len(ext) == len(external['externalMembers']) == len(old_names) == 1728 and set(ext) == set(old_names), 'Exact complete external member coverage differs')
        external_hashes = {}
        for name,row in ext.items():
            guard()
            with old.open(name) as stream:
                digest = stream_sha(stream)
            require(old.getinfo(name).file_size == row['bytes'] == row['actualBytes'] and digest == row['sha256'] == row['actualSha256'] and row['includedInDelivery'] is False, 'Actual external member binding differs: '+name)
            expected_storage = '/full-evidence/'+name if name.startswith('objects/') else '/full-evidence/accepted-proof/'+name
            require(row['storedPath'].endswith(expected_storage), 'Actual old transfer storage path differs')
            external_hashes[name] = digest
        tc = obj('toolchain.json')
        old_tc = json.loads(old.read('toolchain.json'))
        require(tc['leanSha256'] == old_tc['leanSha256'] and tc['leancheckerSha256'] == old_tc['leancheckerSha256'], 'New/old kernel executable mismatch')
        require(tc['version'] == 'Lean (version 4.33.1, x86_64-unknown-linux-gnu, commit 819816b2e0a3bf405af45ae5c7af2491d8f5bee6, Release)', 'Pinned kernel version differs')
        receipts = {}
        def receipt(phase):
            r = obj(phase+'/receipt.json')
            require(r.get('childStarted') is True and r['status'] == 'success' and r['exitCode'] == 0 and r.get('stopReason') is None, 'Actual execution failed: '+phase)
            require(sha(z.read(phase+'/stdout.log')) == r['stdoutSha256'] and sha(z.read(phase+'/stderr.log')) == r['stderrSha256'], 'Raw execution log differs')
            require(START <= datetime.fromisoformat(r['startUtc'].replace('Z','+00:00')) <= datetime.fromisoformat(r['endUtc'].replace('Z','+00:00')) <= STOP, 'Actual execution outside proof window')
            require(datetime.fromisoformat(r['hardDeadlineUtc'].replace('Z','+00:00')) <= STOP, 'Actual proof guard exceeds cleanup start')
            receipts[phase] = r
            return r
        require(z.read('toolchain-version/stdout.log').decode().strip() == tc['version'], 'Actual toolchain version output differs')
        receipt('toolchain-version')
        for package,commit in PINS.items():
            receipt('pin-'+package)
            require(z.read('pin-'+package+'/stdout.log').decode().strip() == commit, 'Actual package pin differs')
        old_receipts = {}
        for name in old_names:
            if name.endswith('/receipt.json'):
                r = json.loads(old.read(name))
                if r.get('mode') == 'Lean' and r.get('status') == 'success' and r.get('exitCode') == 0:
                    old_receipts.setdefault((r['sourceSha256'],r['objectSha256']),[]).append((name,r))
        index = obj('adopted-source-object-index.json')
        require(index['adoptedZipSha256'] == OLD_SHA and len(index['sourceObjects']) == 129 and index['oldExecutionIncrement'] == 0, '129 source/object index differs')
        reuse = index['sourceObjects']
        matched_old = {}
        for relative,r in reuse.items():
            choices = old_receipts.get((r['sourceSha256'],r['objectSha256']),[])
            matches = [(name,original) for name,original in choices if original == r]
            require(len(matches) == 1, 'Reused raw receipt is not exactly an original fixed receipt: '+relative)
            name,original = matches[0]
            require(external_hashes[name] == ext[name]['sha256'], 'Old raw receipt hash differs')
            source_member = name.removesuffix('receipt.json')+'source.lean'
            require(external_hashes[source_member] == r['sourceSha256'], 'Reused source snapshot hash differs')
            matched_old[relative] = {'receiptMember':name,'sourceMember':source_member,'sourceSha256':r['sourceSha256'],'objectSha256':r['objectSha256']}
        physical = obj('physical-adoption.json')
        require(physical['adoptedCount'] == len(physical['adopted']) == 128 and physical['oldProofIncrement'] == 0, '128 physical provider inventory differs')
        adopted_parts = {}
        for row in physical['adopted']:
            relative = row['path']
            require(row['actualNewCompile'] is False and relative in reuse and row['oldReceipt'] == reuse[relative], 'Physical adoption/index/raw differs')
            r = row['oldReceipt']
            for part in r['objectParts']:
                old_member = 'objects/'+part['path'].split('/objects/',1)[1]
                require(old_member in ext and ext[old_member]['sha256'] == part['sha256'] and ext[old_member]['bytes'] == part['bytes'], 'Old fixed object part not externally bound')
                require(old_member in producer_members and producer_members[old_member]['sha256'] == part['sha256'] and producer_members[old_member]['bytes'] == part['bytes'], 'Actual new private provider object part differs')
                adopted_parts[old_member] = {'bytes':part['bytes'],'sha256':part['sha256']}
        for name,row in producer_members.items():
            if name in members:
                require(row['bytes'] == members[name]['bytes'] and row['sha256'] == members[name]['sha256'], 'Producer/native manifest contradiction')
            elif name.startswith('accepted-proof/'):
                old_member = name.removeprefix('accepted-proof/')
                require(old_member in ext and row['bytes'] == ext[old_member]['bytes'] and row['sha256'] == ext[old_member]['sha256'], 'Omitted accepted-proof member not bound')
            elif name.startswith('objects/'):
                require(name in ext and row['bytes'] == ext[name]['bytes'] and row['sha256'] == ext[name]['sha256'], 'Omitted old provider object not bound')
            else:
                raise RuntimeError('Unbound omitted producer member: '+name)
        compiler_bindings = []
        common_path = None
        phases = [('full-NonprimeCertificates',BASE+'lean/NonprimeCertificates.lean',None),
                  ('full-NonprimeCertificates-audit',None,CERT_ROOTS),
                  ('composite-CompositeTransfer',BASE+'lean/CompositeTransfer.lean',FULL_ROOTS),
                  ('composite-CompositeExact',BASE+'lean/CompositeExact.lean',EXACT_ROOTS)]
        for phase,relative,roots in phases:
            r = receipt(phase)
            source = z.read(phase+'/source.lean')
            require(r['mode'] == 'Lean' and r['sourceUnchanged'] is True and sha(source) == r['sourceSha256'], 'Fresh source binding differs')
            if relative:
                require(source == git_bytes(relative), 'Fresh source differs from fixed Git bytes')
            else:
                expected = ('import '+module(BASE+'lean/NonprimeCertificates.lean')+'\n'+''.join('#print axioms '+root+'\n' for root in CERT_ROOTS)).encode()
                require(source == expected, 'Fresh generated AX source differs')
            args = r['arguments']
            require(args[0] == tc['lean'] and args[-1] == r['source'] and args[args.index('-o')+1] == r['object'] and r['executableSha256'] == tc['leanSha256'], 'Fresh compiler argv/executable differs')
            root = args[args.index('-R')+1].rstrip('/')
            require(r['source'] == root+'/'+(relative or 'full_NonprimeCertificates_Audit.lean'), 'Fresh source/module root differs')
            object_member = r['object'].split('/full-evidence/',1)[1]
            require(sha(z.read(object_member)) == r['objectSha256'], 'Fresh object bytes differ')
            parts = set()
            for part in r['objectParts']:
                member = part['path'].split('/full-evidence/',1)[1]
                require(member.startswith(object_member.removesuffix('.olean')+'.') and sha(z.read(member)) == part['sha256'] and z.getinfo(member).file_size == part['bytes'], 'Fresh object part differs')
                parts.add(member)
            require(object_member in parts and parts == {n for n in names if n.startswith(object_member.removesuffix('.olean')+'.')}, 'Fresh object parts incomplete')
            private_root = r['object'].split('/full-evidence/objects/',1)[0]+'/full-evidence/objects'
            require(r['effectiveLeanPath'].startswith(private_root+':'), 'Fresh/physical object root is not first')
            common_path = common_path or r['effectiveLeanPath']
            require(r['effectiveLeanPath'] == common_path, 'Fresh consumers used different provider paths')
            axes = None
            if roots:
                a = obj(phase+'/axiom-audit.json')
                axes = parse_ax(z.read(phase+'/stdout.log').decode())
                require(set(axes) == set(roots) and a['roots'] == roots and a['actualAxioms'] == axes and a['status'] == 'accepted-standard-axioms', 'Fresh exact AX coverage differs')
                require(a['sourceSha256'] == r['sourceSha256'] and a['stdoutSha256'] == r['stdoutSha256'], 'Fresh AX/raw/source binding differs')
            compiler_bindings.append({'phase':phase,'receiptSha256':members[phase+'/receipt.json']['sha256'],'receipt':r,'actualTransitiveAxioms':axes})
        checker_bindings = []
        for phase,relative in [('composite-normal-checker',BASE+'lean/CompositeTransfer.lean'),('composite-final-normal-checker',BASE+'lean/CompositeExact.lean')]:
            r = receipt(phase)
            require(r['arguments'] == [tc['leanchecker'],'-v',module(relative)] and r['executableSha256'] == tc['leancheckerSha256'] and r['effectiveLeanPath'] == common_path, 'Normal checker argv/executable/environment differs')
            require(z.read(phase+'/stdout.log').decode().strip() == 'replaying '+module(relative), 'Actual checker replay target differs')
            checker_bindings.append({'phase':phase,'receiptSha256':members[phase+'/receipt.json']['sha256'],'receipt':r})
        require(all(r['effectiveLeanPath'] == common_path for r in external['actualCompilerSearchPaths']), 'External physical supply uses inconsistent compiler environments')
        raw = z.read('composite-CompositeExact/stdout.log').decode()
        literal = {}
        for k in range(4885,4889):
            root = f'B699CompositeVerify20261003.complete_{k}_exact'
            expected = f'theorem {root} :\n  ∀ (n j : ℕ), {k} < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ {k} ≤ p ∧ p ∣ n.choose {k} ∧ p ∣ n.choose j'
            actual = printed_type(raw,root)
            require(re.sub(r'\s+',' ',actual) == re.sub(r'\s+',' ',expected), 'Actual fixed-index original literal differs: '+root)
            literal[root] = actual
        root = EXACT_ROOTS[-1]
        expected = f'theorem {root} :\n  ∀ (n i j : ℕ), 4885 ≤ i → i ≤ 4888 → i < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j'
        actual = printed_type(raw,root)
        require(re.sub(r'\s+',' ',actual) == re.sub(r'\s+',' ',expected), 'Actual interval original literal differs')
        literal[root] = actual
        guard()
        old_signature_path = HERE.parent.parent/'20261003-terminal-fortymin/reviews/TERMINAL-ORIGINAL-INDEPENDENT-ACCEPTED.json'
        old_signature_raw = old_signature_path.read_bytes()
        old_signature = json.loads(old_signature_raw)
        require(old_signature['status'] == 'accepted-terminal-original' and old_signature['fixedSourceCommit'] == OLD_HEAD and old_signature['completeExtraMathematicalInputs'] == [], 'Old accepted original provider scope differs')
        binding = {'status':'bound-fresh-complete-consumers-and-external-providers','verifier':'/root/nonprime_source_review_20261004',
                   'startedUtc':began,'completedUtc':datetime.now(timezone.utc).isoformat(),'hardDeadlineUtc':DEADLINE.isoformat(),
                   'fixedSourceCommit':HEAD,'actualRunId':RUN,'artifactId':'11280863630','archive':str(ARCHIVE),'archiveBytes':ARCHIVE.stat().st_size,'archiveSha256':ARCHIVE_SHA,
                   'nativeMemberCount':len(names),'allNativeMembersActualBytesShaBound':True,'oldArchive':str(OLD_ARCHIVE),'oldArchiveSha256':OLD_SHA,
                   'externalMemberCount':len(ext),'allExternalMembersActualBytesShaBound':True,'oldProviderSourceObjects':len(reuse),'physicalAdoptedSources':128,
                   'physicalAdoptedObjectParts':adopted_parts,'oldProviderOriginalReceiptMatches':matched_old,
                   'oldIndependentSignaturePath':str(old_signature_path),'oldIndependentSignatureSha256':sha(old_signature_raw),'oldVerifier':old_signature['verifier'],
                   'newCompilerBindings':compiler_bindings,'normalCheckers':checker_bindings,'actualOriginalLiteralTypes':literal,
                   'actualPinnedPackages':PINS,'toolchain':tc,'externalBindingMemberSha256':members['external-member-bindings.json']['sha256'],
                   'actualCiResourceObservation':receipts['full-NonprimeCertificates']['resourceBefore'],
                   'actualCiResourceObservationSource':'full-NonprimeCertificates/receipt.json:resourceBefore',
                   'kernelRerunByVerifier':False,'seconds':time.monotonic()-mono,'scriptSha256':sha(Path(__file__).read_bytes())}
        target = HERE/'COMPOSITE-FULL-INDEPENDENT-BINDING.json'
        target.write_text(json.dumps(binding,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        guard()
        signature = {'status':'accepted-complete-original-indices-4885-4888','verifier':'/root/nonprime_source_review_20261004','signedUtc':datetime.now(timezone.utc).isoformat(),
                     'hardDeadlineUtc':DEADLINE.isoformat(),'binding':target.name,'bindingSha256':sha(target.read_bytes()),'fixedSourceCommit':HEAD,'actualRunId':RUN,'archiveSha256':ARCHIVE_SHA,
                     'completeOriginalScope':'All Nat n/i/j with 4885<=i<=4888, i<j and j<=n/2; exists one actual Nat.Prime p>=i dividing both complete n.choose values.',
                     'completeExtraMathematicalInputs':[],'newCompleteOriginalIndices':[4885,4886,4887,4888],'actualOriginalLiteralTypes':literal,
                     'actualFinalTransitiveAxioms':compiler_bindings[-1]['actualTransitiveAxioms'],'normalCheckerExits':[0,0],
                     'oldProviderFixedSourceCommit':OLD_HEAD,'oldProviderArchiveSha256':OLD_SHA,'kernelRerunByVerifier':False,
                     'checkerMeaning':'Actual fixed Lean normal replay of fresh CompositeTransfer and CompositeExact; imported environments are bound to the accepted old exact-byte provider, not checked by a second kernel implementation.',
                     'genuineInfiniteGapAccepted':False,'R7Changed':False,'remainingUnboundedRegion':'i>=4889 in the low-ratio unknown domain, unbounded n/j and genuine infinite Gap y.'}
        signed = HERE/'COMPOSITE-FULL-INDEPENDENT-ACCEPTED.json'
        signed.write_text(json.dumps(signature,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print(json.dumps({'status':signature['status'],'signature':str(signed),'sha256':sha(signed.read_bytes()),'newCompleteOriginalIndices':signature['newCompleteOriginalIndices'],'seconds':binding['seconds']}))


if __name__ == '__main__':
    main()
