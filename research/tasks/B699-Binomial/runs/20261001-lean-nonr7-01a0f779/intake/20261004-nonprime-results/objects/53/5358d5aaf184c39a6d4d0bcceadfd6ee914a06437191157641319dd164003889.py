#!/usr/bin/env python3
"""Text/integer/patch checks only. This is not a Lean parser or a kernel checker."""
import argparse,hashlib,json,re,subprocess,tempfile,zipfile
from pathlib import Path
DATA=[(4884,2,2442),(4885,5,977),(4886,2,2443),(4887,3,1629),(4888,2,2444)]
NS='B699CompositeTransfer20261003'
def h(b):return hashlib.sha256(b).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True)
    ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    root=a.root.resolve();out=a.out.resolve();out.mkdir(parents=True,exist_ok=True)
    if (out/'result.json').exists():raise SystemExit('Refusing to overwrite earlier results')
    report={'scope':'Static text, Python integer arithmetic and patch application; NOT Lean validation'}
    archive_checks=[]
    for filename,manifest_name in [
        ('B699-nonprime-4884-4888-6pro-20261003.zip','SHA256SUMS.txt'),
        ('B699-nonprime-certificates-20261003-candidate.zip','B699-nonprime-certificates-20261003/SHA256SUMS.txt')]:
        path=root/'input'/filename
        with zipfile.ZipFile(path) as z:
            assert z.testzip() is None
            members=z.namelist();assert len(members)==len(set(members))
            checked=[]
            prefix=str(Path(manifest_name).parent)
            if prefix=='.':prefix=''
            for line in z.read(manifest_name).decode().splitlines():
                if not line.strip():continue
                expected,rel=line.split(maxsplit=1);rel=rel.lstrip('*')
                member=rel if rel in members else prefix+'/'+rel
                actual=h(z.read(member));assert actual==expected,(member,actual,expected)
                checked.append(member)
            archive_checks.append({'path':'input/'+filename,'sha256':h(path.read_bytes()),
                'zip_crc_ok':True,'unique_members':len(members),'manifest_entries_checked':len(checked)})
    report['input_archives']=archive_checks
    main=(root/'NonprimeCertificates.lean').read_text()
    muleq=(root/'alternatives/MulEq/NonprimeCertificates.lean').read_text()
    files=['NonprimeCertificates.lean','CoreNumerals.lean','AuditNonprimeCertificates.lean',
           'CompareCertificates.lean','ImportOnly.lean','alternatives/MulEq/NonprimeCertificates.lean']
    scan={}
    # New files are comment-free or contain only fixed explanatory comments.
    # This simple scan is intentionally conservative, not an axiom dependency audit.
    pattern=re.compile(r'\b(decide|native_decide|sorry|admit|axiom|unsafe|implemented_by|extern|set_option\s+maxRecDepth)\b')
    for rel in files:
        s=(root/rel).read_text();matches=pattern.findall(s);assert not matches,(rel,matches)
        scan[rel]={'bytes':len(s.encode()),'sha256':h(s.encode()),'forbidden_token_hits':matches}
    report['new_source_scan']=scan
    declarations=re.findall(r'^theorem (not_prime_\d+) : ¬ Nat\.Prime (\d+) :=$',main,re.M)
    assert declarations==[(f'not_prime_{n}',str(n)) for n,_,_ in DATA]
    assert main.count('import ')==1 and f'namespace {NS}\n' in main and main.endswith(f'end {NS}\n')
    nums=[]
    for n,x,y in DATA:
        assert x*y==n and x>=2 and y>=2
        proof=f'Nat.not_prime_mul (a := {x}) (b := {y})\n    (Nat.succ_succ_ne_one {x-2}) (Nat.succ_succ_ne_one {y-2})'
        assert proof in main
        nums.append({'n':n,'factor':x,'cofactor':y,'product':x*y,'product_ok':True,
            'factor_successor_argument':x-2,'cofactor_successor_argument':y-2,
            'factor_reconstruction':(x-2)+2,'cofactor_reconstruction':(y-2)+2,
            'requested_target':f'¬ Nat.Prime {n}', 'full_name':f'{NS}.not_prime_{n}',
            'typecheck_status':'not_run','scope':'integer and source-text consistency only'})
    report['numeral_certificates']=nums
    # Kernel comparison is structural reasoning only; do not mislabel text bytes as Expr size.
    report['size_comparison']={'main_file_bytes':len(main.encode()),'drop_in_mul_eq_file_bytes':len(muleq.encode()),
       'main_application_explicit_proof_arguments':2,'mul_eq_application_explicit_proof_arguments':3,
       'main_top_level_arguments_including_implicit_nat_arguments':4,
       'mul_eq_top_level_arguments_including_implicit_nat_arguments':6,
       'elaborated_expr_size':None,'olean_bytes':None,'compile_seconds':None,'checker_seconds':None,
       'scope':'Source bytes plus signature-level argument counts; NOT a measured Lean Expr/olean/performance result'}
    orig=(root/'input/original/source/CompositeTransferLegacy.lean').read_text()
    cand=(root/'integration/CompositeTransferLegacy.candidate.lean').read_text()
    original_core=orig[orig.index('theorem common_succ_of_nonprime'):orig.index('theorem complete_4885')]
    candidate_core=cand[cand.index('theorem common_succ_of_nonprime'):cand.index('theorem complete_4885')]
    assert original_core==candidate_core
    restored=cand.replace('import NonprimeCertificates\n','',1)
    replacements=[]
    for i,line in zip(range(4884,4888),[38,44,49,54]):
        old=f'  exact common_succ_of_nonprime (i := {i}) (by decide) (by decide)'
        new=f'  exact common_succ_of_nonprime (i := {i}) not_prime_{i} not_prime_{i+1}'
        assert orig.splitlines()[line-1]==old and cand.count(new)==1
        restored=restored.replace(new,old,1)
        replacements.append({'original_line':line,'i':i,'hi':f'not_prime_{i}',
            'his':f'not_prime_{i+1}','expected_his_type':f'¬ Nat.Prime ({i} + 1)',
            'arithmetic_successor':i+1,'lean_defeq_check':'not_run'})
    assert restored==orig
    assert orig.count('by decide')==10 and cand.count('by decide')==2
    patch_results=[]
    for source_name,source_bytes,patch_name,expected in [
       ('CompositeTransferLegacy.lean',orig.encode(),'CompositeTransferLegacy.patch',cand.encode()),
       ('NonprimeCertificates.lean',None,'NonprimeCertificates.R1-to-R2.patch',main.encode())]:
        if source_bytes is None:
            with zipfile.ZipFile(root/'input/B699-nonprime-certificates-20261003-candidate.zip') as z:
                source_bytes=z.read('B699-nonprime-certificates-20261003/NonprimeCertificates.lean')
        with tempfile.TemporaryDirectory(prefix='b699-patch-') as tmp:
            p=Path(tmp)/source_name;p.write_bytes(source_bytes)
            cmd=['patch','--batch','--forward','-p1','-i',str(root/'integration'/patch_name)]
            cp=subprocess.run(cmd,cwd=tmp,capture_output=True)
            assert cp.returncode==0,cp.stderr
            actual=p.read_bytes();assert actual==expected
            stem=patch_name.removesuffix('.patch')
            (out/(stem+'.stdout.log')).write_bytes(cp.stdout)
            (out/(stem+'.stderr.log')).write_bytes(cp.stderr)
            patch_results.append({'command':cmd,'cwd_policy':'fresh temporary non-repository directory',
                'exit_code':cp.returncode,'result_matches_expected':True,'result_sha256':h(actual)})
    report['consumer_patch']={'core_body_unchanged':True,'only_import_and_four_sites_changed':True,
       'original_decide_occurrences':10,'candidate_decide_occurrences':2,
       'remaining_decide_scope':'two unrelated original provider arguments; unchanged',
       'replacements':replacements,'patch_replays':patch_results,'consumer_compilation':'not_run'}
    report['status']='passed_static_only'
    (out/'result.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(report,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
