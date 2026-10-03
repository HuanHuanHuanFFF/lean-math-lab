"""Reuse the accepted full byte-binding procedure for each fresh tail delivery."""
import hashlib
import json
import re
import sys
from pathlib import Path

sys.dont_write_bytecode = True
HERE = Path(__file__).resolve().parent
HEAD = '5b42228cc2b05d701f7f7ea935b315c36d36bbac'

TAIL_CHECKS = r'''
        spec = obj('stage-spec.json')
        require(spec['tailEnabled'] is True, 'Tail stage not enabled')
        phases = []
        for index,row in enumerate(spec['tail4889Sources']):
            label = ('tail4889-' if index == 0 else 'composite-tail4889-') + Path(row['path']).stem
            phases.append((label,row))
        if TAIL_K == 5000:
            require(spec['tail5000Enabled'] is True, '5000 stage not enabled')
            for index,row in enumerate(spec['tail5000Sources']):
                label = ('tail5000-' if index < 6 else 'composite-tail5000-') + Path(row['path']).stem
                phases.append((label,row))
        require(len(phases) == (3 if TAIL_K == 4889 else 11), 'Complete fresh tail phase inventory differs')
        compiler_bindings = []
        checker_bindings = []
        common_path = None
        for phase,row in phases:
            r = receipt(phase)
            relative = row['path']
            source = z.read(phase+'/source.lean')
            require(r['mode'] == 'Lean' and r['sourceUnchanged'] is True and sha(source) == r['sourceSha256'] == row['sha256'] and len(source) == row['bytes'], 'Fresh tail source receipt/map differs')
            require(source == git_bytes(relative) and row['module'] == module(relative), 'Fresh tail source differs from fixed published bytes/module')
            args = r['arguments']
            require(args[0] == tc['lean'] and args[-1] == r['source'] and args[args.index('-o')+1] == r['object'] and r['executableSha256'] == tc['leanSha256'], 'Fresh tail compiler argv/executable differs')
            source_root = args[args.index('-R')+1].rstrip('/')
            require(r['source'] == source_root+'/'+relative, 'Fresh tail source/module root differs')
            object_member = r['object'].split('/tail-evidence/',1)[1]
            require(sha(z.read(object_member)) == r['objectSha256'], 'Fresh tail object bytes differ')
            parts = set()
            for part in r['objectParts']:
                member = part['path'].split('/tail-evidence/',1)[1]
                require(member.startswith(object_member.removesuffix('.olean')+'.') and sha(z.read(member)) == part['sha256'] and z.getinfo(member).file_size == part['bytes'], 'Fresh tail object part differs')
                parts.add(member)
            require(object_member in parts and parts == {n for n in names if n.startswith(object_member.removesuffix('.olean')+'.')}, 'Fresh modern/legacy object parts incomplete')
            private_root = r['object'].split('/tail-evidence/objects/',1)[0]+'/tail-evidence/objects'
            require(r['effectiveLeanPath'].startswith(private_root+':'), 'Fresh tail physical object root is not first')
            common_path = common_path or r['effectiveLeanPath']
            require(r['effectiveLeanPath'] == common_path, 'Tail compiler import environments differ')
            roots = re.findall(r'^#print axioms (\S+)',source.decode('utf-8-sig'),re.M)
            a = obj(phase+'/axiom-audit.json')
            axes = parse_ax(z.read(phase+'/stdout.log').decode())
            require(len(roots) == len(set(roots)) and set(axes) == set(roots) and a['roots'] == roots and a['actualAxioms'] == axes and a['status'] == 'accepted-standard-axioms', 'Fresh tail full AX inventory differs')
            require(a['sourceSha256'] == r['sourceSha256'] and a['stdoutSha256'] == r['stdoutSha256'], 'Fresh tail AX/source/raw binding differs')
            compiler_bindings.append({'phase':phase,'receiptSha256':members[phase+'/receipt.json']['sha256'],'receipt':r,'actualTransitiveAxioms':axes})
            checker_phase = phase+'-normal-checker'
            c = receipt(checker_phase)
            require(c['arguments'] == [tc['leanchecker'],'-v',row['module']] and c['executableSha256'] == tc['leancheckerSha256'] and c['effectiveLeanPath'] == common_path, 'Tail normal checker argv/executable/environment differs')
            require(z.read(checker_phase+'/stdout.log').decode().strip() == 'replaying '+row['module'], 'Actual tail checker replay target differs')
            checker_bindings.append({'phase':checker_phase,'receiptSha256':members[checker_phase+'/receipt.json']['sha256'],'receipt':c})
        require(all(r['effectiveLeanPath'] == common_path for r in external['actualCompilerSearchPaths']), 'Tail external physical supply/compiler environments differ')
        literal = {}
        for k in ([4889] if TAIL_K == 4889 else [4889,5000]):
            phase = f'composite-tail{k}-Tail{k}ExactLegacy'
            raw = z.read(phase+'/stdout.log').decode()
            root = f'B699TailVerify20261004.complete_{k}_exact'
            expected = f'theorem {root} : ∀ (n j : ℕ), {k} < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ {k} ≤ p ∧ p ∣ n.choose {k} ∧ p ∣ n.choose j'
            actual = printed_type(raw,root)
            require(re.sub(r'\s+',' ',actual) == re.sub(r'\s+',' ',expected), 'Actual tail fixed-index literal differs')
            literal[root] = actual
            root = f'B699TailVerify20261004.all_upto_{k}_exact'
            expected = f'theorem {root} : ∀ (n i j : ℕ), 4883 ≤ i → i ≤ {k} → i < j → j ≤ n / 2 → ∃ p, Nat.Prime p ∧ i ≤ p ∧ p ∣ n.choose i ∧ p ∣ n.choose j'
            actual = printed_type(raw,root)
            require(re.sub(r'\s+',' ',actual) == re.sub(r'\s+',' ',expected), 'Actual tail all-index literal differs')
            literal[root] = actual
        closed = obj(f'tail{TAIL_K}-closed.json')
        require(closed['actualFinalCheckerExit'] == 0, 'Producer tail closed receipt not successful')
        all_roots = [root for binding in compiler_bindings for root in binding['actualTransitiveAxioms']]
        require(len(all_roots) == len(set(all_roots)) == (12 if TAIL_K == 4889 else 116), 'All fresh mathematical/literal roots incomplete')
'''


def main():
    if len(sys.argv) != 7:
        raise SystemExit('Usage: script K ZIP SHA BYTES RUN ARTIFACT')
    k,archive,archive_sha,archive_bytes,run,artifact = sys.argv[1:]
    k = int(k)
    if k not in (4889,5000):
        raise RuntimeError('Unsupported locked tail target')
    raw = (HERE/'bind_full_archive.py').read_bytes()
    accepted_full = json.loads((HERE/'COMPOSITE-FULL-INDEPENDENT-BINDING.json').read_text(encoding='utf-8'))
    if hashlib.sha256(raw).hexdigest() != accepted_full['scriptSha256']:
        raise RuntimeError('Accepted full byte-binding procedure changed')
    text = raw.decode('utf-8')
    start = text.index('        compiler_bindings = []')
    end = text.index('        guard()\n        old_signature_path',start)
    text = text[:start] + TAIL_CHECKS + text[end:]
    text = re.sub(r"^HEAD = '[^']+'$",'HEAD = '+repr(HEAD),text,flags=re.M)
    text = re.sub(r"^RUN = '[^']+'$",'RUN = '+repr(run),text,flags=re.M)
    text = re.sub(r'^ARCHIVE = Path\(.*\)$','ARCHIVE = Path('+repr(archive)+')',text,flags=re.M)
    text = re.sub(r"^ARCHIVE_SHA = '[^']+'$",'ARCHIVE_SHA = '+repr(archive_sha),text,flags=re.M)
    text = text.replace('ARCHIVE.stat().st_size == 457476','ARCHIVE.stat().st_size == '+str(int(archive_bytes)))
    text = text.replace('full-evidence','tail-evidence')
    text = text.replace("'artifactId':'11280863630'","'artifactId':"+repr(artifact))
    text = text.replace("receipts['full-NonprimeCertificates']['resourceBefore']","receipts['tail4889-TailPrimes']['resourceBefore']")
    text = text.replace("'full-NonprimeCertificates/receipt.json:resourceBefore'","'tail4889-TailPrimes/receipt.json:resourceBefore'")
    text = text.replace('COMPOSITE-FULL-INDEPENDENT-BINDING.json',f'TAIL{k}-INDEPENDENT-BINDING.json')
    text = text.replace('COMPOSITE-FULL-INDEPENDENT-ACCEPTED.json',f'TAIL{k}-INDEPENDENT-ACCEPTED.json')
    text = text.replace('accepted-complete-original-indices-4885-4888',f'accepted-complete-original-through-{k}')
    text = text.replace('All Nat n/i/j with 4885<=i<=4888, i<j and j<=n/2; exists one actual Nat.Prime p>=i dividing both complete n.choose values.',
                        f'All Nat n/i/j with 4883<=i<={k}, i<j and j<=n/2; exists one actual Nat.Prime p>=i dividing both complete n.choose values.')
    prior = 4889 if k == 5000 and (HERE/'TAIL4889-INDEPENDENT-ACCEPTED.json').exists() else 4888
    text = text.replace("'newCompleteOriginalIndices':[4885,4886,4887,4888]","'newCompleteOriginalIndices':"+repr(list(range(prior+1,k+1))))
    text = text.replace("'normalCheckerExits':[0,0]","'normalCheckerExits':[0 for _ in checker_bindings]")
    text = text.replace('Actual fixed Lean normal replay of fresh CompositeTransfer and CompositeExact; imported environments are bound to the accepted old exact-byte provider, not checked by a second kernel implementation.',
                        'Actual fixed Lean normal replay of every fresh tail proof and independent literal module; imported old provider bytes remain separately accepted. No second kernel implementation.')
    text = text.replace('i>=4889 in the low-ratio unknown domain, unbounded n/j and genuine infinite Gap y.',f'i>={k+1} in the low-ratio unknown domain, unbounded n/j and genuine infinite Gap y.')
    env = {'__name__':'tail_binding_adapted_full_procedure','__file__':str(__file__),'TAIL_K':k}
    exec(compile(text,str(__file__),'exec'),env)
    env['main']()
    binding_path = HERE/f'TAIL{k}-INDEPENDENT-BINDING.json'
    signature_path = HERE/f'TAIL{k}-INDEPENDENT-ACCEPTED.json'
    env['guard']()
    binding = json.loads(binding_path.read_text(encoding='utf-8'))
    binding.update({'acceptedFullProcedureSha256':hashlib.sha256(raw).hexdigest(),
                    'derivedProcedureSha256':hashlib.sha256(text.encode()).hexdigest(),
                    'leafUtilitySourceSha256':hashlib.sha256((HERE/'bind_leaf_archive.py').read_bytes()).hexdigest(),
                    'adaptation':'Same native/external/provider binding; locked tail phase/source/AX/checker inventories and independent literal types replace full consumer inventory.',
                    'acceptedOriginalUpper':k,'allFreshRootCount':12 if k==4889 else 116})
    binding_path.write_text(json.dumps(binding,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    env['guard']()
    signature = json.loads(signature_path.read_text(encoding='utf-8'))
    signature.update({'bindingSha256':hashlib.sha256(binding_path.read_bytes()).hexdigest(),
                      'signedUtc':env['datetime'].now(env['timezone'].utc).isoformat(),
                      'acceptedOriginalUpper':k,'newCompleteOriginalIndexCount':len(signature['newCompleteOriginalIndices'])})
    signature_path.write_text(json.dumps(signature,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':signature['status'],'signature':str(signature_path),'sha256':hashlib.sha256(signature_path.read_bytes()).hexdigest(),
                      'acceptedOriginalUpper':k,'newCompleteOriginalIndexCount':len(signature['newCompleteOriginalIndices'])}))


if __name__ == '__main__':
    main()
