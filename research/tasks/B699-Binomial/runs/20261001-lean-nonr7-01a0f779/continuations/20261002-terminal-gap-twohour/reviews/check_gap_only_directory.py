"""Independent per-module optional probe review; partial failure never upgrades Gap supply."""
import hashlib, json, sys, zipfile
from datetime import datetime, timezone
from pathlib import Path
from check_terminal_bindings import DEADLINE, digest_stream, parse_ax, require
from check_terminal_directory import DirectoryArchive, EvidenceHandle
BASE = Path(__file__).resolve().parent.parent
zipfile.ZipFile = DirectoryArchive

ROWS = [
    ('ThetaInterval', '22af1bd91d6252dcdf093726c408ae4d1449e372e1dbe2936aa2661692f783a7',
     ['exists_prime_of_theta_lt','exists_prime_of_theta_bounds','prime_of_theta_relative_bounds','coefficient_4095_asymmetric','coefficient_4095_symmetric'],
     'actual theta increment/bounds extraction interfaces and numeric coefficients; no uniform distribution estimate supplied'),
    ('ThetaTail', 'a56752ab3dde8be228178fa8803b72ec9dd4e9d607d34b0f500f3513ac0d2a0d',
     ['log_gt_eighteen','theta_lower_of_log_error','gap_4095_above_theta_threshold','gap_4095_of_theta_estimates_and_initial_segment'],
     'log prerequisite and conditional Gap122568684/Gap10000000; two uniform theta estimates and initial y segment remain parameters'),
    ('PsiTheta', '1dcca6cb1871f0886cedf8cc87d81e9630cc9c60d2e2c0664092fc9df8ee64cd',
     ['psi_sub_theta_le_twentyone_sqrt','psi_sub_theta_le_div_40000','prime_of_psi_relative_error','gap_4095_of_psi_error'],
     'first two psi-theta bounds unconditional on stated x domains; final two need psi errors and uniform threshold is 10^12'),
]

def run(path, expected_sha, commit, run_id):
    require(datetime.now(timezone.utc) < DEADLINE, 'Authorized mathematical review budget expired')
    with path.open('rb') as f: require(digest_stream(f) == expected_sha, 'Archive SHA differs')
    with zipfile.ZipFile(path) as z:
        names = z.namelist()
        require(len(names) == len(set(names)), 'Duplicate members')
        def obj(n): return json.loads(z.read(n).decode('utf-8-sig'))
        manifest = obj('byte-manifest.json')
        members = {r['path']:r for r in manifest['members']}
        require(set(names) == set(members) | {'byte-manifest.json'}, 'Incomplete member manifest')
        require(str(manifest.get('head')) == commit and str(manifest.get('run')) == str(run_id), 'Commit/run mismatch')
        def bound(n, expected=None):
            require(n in members, 'Member absent '+n)
            require(z.getinfo(n).file_size == members[n]['bytes'], 'Member size differs')
            with z.open(n) as f: actual = digest_stream(f)
            require(actual == members[n]['sha256'] and (expected is None or actual == expected), 'Member SHA differs '+n)
            return actual
        for member_name in members: bound(member_name)
        definition_phase = 'gap-only-00-GapDefinitions'
        definition_receipt = obj(definition_phase+'/receipt.json')
        require(definition_receipt['mode']=='Lean' and definition_receipt['status']=='success' and definition_receipt['exitCode']==0 and definition_receipt['sourceUnchanged'], 'Gap definition supplier unaccepted')
        require(definition_receipt['sourceSha256']=='0f51a6d9604a669c59bd07b96a9683a02bf9c6e232fa218177bc7b0673a95fe8','Gap definition source differs')
        bound(definition_phase+'/source.lean', definition_receipt['sourceSha256'])
        bound(definition_phase+'/stdout.log', definition_receipt['stdoutSha256']);bound(definition_phase+'/stderr.log',definition_receipt['stderrSha256'])
        require(definition_receipt['arguments'][-1]==definition_receipt['source'] and definition_receipt['arguments'][definition_receipt['arguments'].index('-o')+1]==definition_receipt['object'],'Definition actual compiler argv differs')
        bound(definition_receipt['object'].split('/evidence/',1)[1],definition_receipt['objectSha256'])
        for part in definition_receipt['objectParts']:
            member = part['path'].split('/evidence/',1)[1];bound(member,part['sha256'])
            require(z.getinfo(member).file_size==part['bytes'],'Definition object part differs')
        results=[]
        for i,(name,source_sha,names_roots,scope) in enumerate(ROWS):
            phase=f'gap-only-{i+1:02d}-{name}'
            required=['B699ThetaSupply.'+n for n in names_roots]
            checker=f'gap-only-{i+1:02d}-normal-checker'
            needed=[phase+'/receipt.json',phase+'/axiom-audit.json',checker+'/receipt.json']
            if not all(n in members for n in needed):
                results.append({'module':name,'status':'pending-unaccepted','missing': [n for n in needed if n not in members], 'scope':scope});continue
            for n in needed: bound(n)
            r,a,c = [obj(n) for n in needed]
            if r.get('status') != 'success' or r.get('exitCode') != 0 or c.get('status') != 'success' or c.get('exitCode') != 0:
                results.append({'module':name,'status':'failed-unaccepted','compilerExit':r.get('exitCode'),'checkerExit':c.get('exitCode'),'scope':scope});continue
            require(r['mode']=='Lean' and r['sourceUnchanged'] and r['sourceSha256']==source_sha,'Fixed source compiler binding differs')
            require(a['sourceSha256']==source_sha and a['status']=='accepted-standard-axioms','Audit/source status differs')
            bound(phase+'/source.lean',source_sha)
            bound(phase+'/stdout.log',r['stdoutSha256']);bound(phase+'/stderr.log',r['stderrSha256'])
            require(a['stdoutSha256']==r['stdoutSha256'],'Audit/compile raw mismatch')
            seen=parse_ax(z.read(phase+'/stdout.log').decode('utf-8-sig'))
            require(set(required)==set(a['roots']) and set(required)<=seen.keys(),'Module root coverage differs')
            require(a['actualAxioms']==seen,'Actual AX report/raw mismatch')
            args=r['arguments'];root=args[args.index('-R')+1].rstrip('/')
            require(args[-1]==r['source'] and args[args.index('-o')+1]==r['object'],'Compiler argv differs')
            require(r['source'].startswith(root+'/'),'Source outside compiler sourceRoot')
            relative=r['source'][len(root)+1:]
            object_member=r['object'].split('/evidence/',1)[1]
            require(object_member=='objects/'+relative.removesuffix('.lean')+'.olean','Module/output mismatch')
            bound(object_member,r['objectSha256'])
            parts=[]
            for p in r['objectParts']:
                member=p['path'].split('/evidence/',1)[1];bound(member,p['sha256'])
                require(z.getinfo(member).file_size==p['bytes'],'Object part size differs')
                parts.append({'member':member,'bytes':p['bytes'],'sha256':p['sha256']})
            require(parts and object_member in {p['member'] for p in parts},'Object parts incomplete')
            module='.'.join('«'+p+'»' if '-' in p or p[:1].isdigit() else p for p in relative.removesuffix('.lean').split('/'))
            require(Path(c['arguments'][0]).name=='leanchecker' and c['arguments'][1:]==['-v',module],'Normal checker module differs')
            bound(checker+'/stdout.log',c['stdoutSha256']);bound(checker+'/stderr.log',c['stderrSha256'])
            for receipt in (r,c): require(datetime.fromisoformat(receipt['endUtc'].replace('Z','+00:00'))<=DEADLINE,'Execution exceeded authorization')
            results.append({'module':name,'status':'accepted-fixed-module-scope','scope':scope,'sourceSha256':source_sha,
                            'actualAxioms':seen,'compilerArguments':r['arguments'],'compilerExit':r['exitCode'],
                            'objectSha256':r['objectSha256'],'objectParts':parts,'checkerArguments':c['arguments'],
                            'checkerExit':c['exitCode'],'actualStatementSource':z.read(phase+'/source.lean').decode('utf-8-sig'),
                            'compilerReceiptSha256':members[phase+'/receipt.json']['sha256'],
                            'checkerReceiptSha256':members[checker+'/receipt.json']['sha256']})
        require(datetime.now(timezone.utc)<DEADLINE,'Review completion exceeded authorization')
        result={'utc':datetime.now(timezone.utc).isoformat(),'verifier':'/root/semantic_verify_sol','fixedSourceCommit':commit,
                'run':str(run_id),'archive':str(path),'archiveSha256':expected_sha,'modules':results,
                'genuineGap4095At10MAccepted':False,'newCompleteOriginalIndexIncrement':0,
                'unprovidedSupplies':['uniform theta upper/lower errors','initial actual prime-gap y segment 10M..122568684','uniform psi error above 10^12'],
                'terminalAcceptanceSeparate':True,'kernelRerunByVerifier':False,
                'reviewScriptSha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
        result['status'] = 'independent-gap-directory-procedure; awaiting semantic signature'
        result['semanticVerifierSigned'] = False
        result['evidenceDirectory'] = result.pop('archive')
        result['evidenceByteManifestSha256'] = result.pop('archiveSha256')
        for module_result in results:
            print('S_GAP_MODULE_JSON '+json.dumps(module_result,ensure_ascii=False),flush=True)
        (BASE/'reviews/GAP-PROBE-INDEPENDENT-SCOPE.json').write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n',encoding='utf8')
        print(json.dumps({'modules':[{k:r[k] for k in ['module','status']} for r in results], 'genuineGap4095At10MAccepted':False}))

if __name__=='__main__':
    if len(sys.argv)!=5:raise SystemExit('Usage: script ZIP SHA commit run (no Lean)')
    run(EvidenceHandle(Path(sys.argv[1])),sys.argv[2],sys.argv[3],sys.argv[4])
