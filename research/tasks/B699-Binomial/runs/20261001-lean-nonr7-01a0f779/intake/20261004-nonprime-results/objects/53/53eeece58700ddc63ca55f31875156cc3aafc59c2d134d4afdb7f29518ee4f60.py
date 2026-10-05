#!/usr/bin/env python3
"""Byte/source/integer checks only. This is not Lean and not the project's kernel checker."""
from pathlib import Path, PurePosixPath
import hashlib, json, re, subprocess, tempfile, zipfile, sys


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def must(condition: bool, message: str) -> None:
    if not condition:raise ValueError(message)


def check_manifest_in_zip(path: Path, prefix: str, manifest: str) -> int:
    with zipfile.ZipFile(path) as z:
        must(z.testzip() is None,f'CRC failed: {path.name}')
        count=0
        for line in z.read(prefix+manifest).decode().splitlines():
            expected, name=line.split(None,1)
            name=name.strip().lstrip('*')
            must(sha(z.read(prefix+name))==expected,f'Input checksum mismatch: {name}')
            count+=1
        return count


def main() -> int:
    root=Path(__file__).resolve().parent.parent
    results={}
    results['original_manifest_entries_verified']=check_manifest_in_zip(root/'input/archives/original.zip','','SHA256SUMS.txt')
    results['previous_manifest_entries_verified']=check_manifest_in_zip(root/'input/archives/previous-candidate.zip','B699-NonprimeCertificates/','SHA256SUMS.txt')
    with zipfile.ZipFile(root/'input/archives/original.zip') as z:
        for name in z.namelist():
            must((root/'input/original'/name).read_bytes()==z.read(name),f'Extracted original drift: {name}')
        results['original_extracted_members_verified']=len(z.namelist())
    with zipfile.ZipFile(root/'input/archives/previous-candidate.zip') as z:
        for file in (root/'input/previous').rglob('*'):
            if file.is_file():
                name=file.relative_to(root/'input/previous').as_posix()
                must(file.read_bytes()==z.read('B699-NonprimeCertificates/'+name),f'Previous extraction drift: {name}')
    main_bytes=(root/'NonprimeCertificates.lean').read_bytes()
    must(main_bytes==(root/'input/previous/NonprimeCertificates.lean').read_bytes(),'Main source changed')
    must(sha(main_bytes)=='4e4f649567aa6e82ce3153058a4c6fb4d2172440aaaa443239205c00cac588ea','Unexpected baseline')
    results['main_unchanged_sha256']=sha(main_bytes)
    for name in ['CompositeTransferLegacy.patch','CompositeTransferLegacy.candidate.lean']:
        must((root/'integration'/name).read_bytes()==(root/'input/previous/integration'/name).read_bytes(),'Integration drift')
    results['round2_incremental_source_and_patch_changes']=0
    main_text=main_bytes.decode()
    alternative=(root/'comparison/DivisorCertificates.lean').read_text()
    for text in [main_text,alternative]:
        must(len(re.findall(r'^import ',text,re.M))==1,'Unexpected import count')
        must(len(re.findall(r'^theorem ',text,re.M))==5,'Unexpected theorem count')
        must(not re.search(r'\b(?:decide|native_decide|of_decide_eq_true|sorry|admit|axiom|unsafe|extern)\b',text),'Forbidden source construct')
        must('set_option' not in text,'Unexpected options in certificate source')
    defs=(root/'input/original/reference/Prime-Basic.lean').read_text().splitlines()
    must(defs[75]=='theorem not_prime_of_dvd_of_lt {m n : ℕ} (h1 : m ∣ n) (h2 : 2 ≤ m) (h3 : m < n) : ¬Prime n :=','Pinned divisor interface drift')
    must(defs[30]=='theorem not_prime_of_mul_eq {a b n : ℕ} (h : a * b = n) (h₁ : a ≠ 1) (h₂ : b ≠ 1) : ¬Prime n :=','Pinned product interface drift')
    results['pinned_mathlib_source_interfaces_checked']=True
    table=json.loads((root/'comparison/STRUCTURAL_COMPARISON.json').read_text())
    for row in table['rows']:
        n,m,k=row['n'],row['factor'],row['cofactor']
        must(m*k==n and m>=2 and k>=2,f'Factor failure: {n}')
        must(m+1+row['divisor_upper_addend']==n,f'Upper-bound identity failure: {n}')
        must(row['product_successor_offsets']==[m-2,k-2],f'Successor offsets failure: {n}')
        must(row['product_rhs'] in main_text,f'Product metric not bound to source: {n}')
        must(row['divisor_rhs'] in alternative,f'Divisor metric not bound to source: {n}')
        for scheme in ['product','divisor']:
            rhs=re.sub(r'\s+',' ',row[scheme+'_rhs']).strip()
            must(len(rhs)==row[f'normalized_{scheme}_rhs_unicode_chars'],'Character metric failure')
            must(len(rhs.encode())==row[f'normalized_{scheme}_rhs_utf8_bytes'],'Byte metric failure')
    results['five_factor_and_order_arithmetic_checks']=True
    result=subprocess.run([sys.executable,str(root/'scripts/build_audits.py'),'--check'],capture_output=True)
    must(result.returncode==0,'Audit generation drift: '+result.stderr.decode())
    results['audit_generation_check']=json.loads(result.stdout)
    original=(root/'input/original/source/CompositeTransferLegacy.lean').read_bytes()
    candidate=(root/'integration/CompositeTransferLegacy.candidate.lean').read_bytes()
    common=lambda data:data.split(b'theorem common_succ_of_nonprime',1)[1].split(b'\ntheorem complete_4885',1)[0]
    must(common(original)==common(candidate),'General transfer changed')
    expected=original.decode().replace('\n\n/-!', '\nimport NonprimeCertificates\n\n/-!',1)
    for n in range(4884,4888):
        old=f'common_succ_of_nonprime (i := {n}) (by decide) (by decide)'
        new=f'common_succ_of_nonprime (i := {n})\n    B699NonprimeCertificates.not_prime_{n}\n    B699NonprimeCertificates.not_prime_{n+1}'
        must(expected.count(old)==1,f'Call location not unique: {n}')
        expected=expected.replace(old,new,1)
    must(expected.encode()==candidate,'Unexpected change outside the eight arguments and import')
    results['general_transfer_and_remaining_consumer_source_unchanged']=True
    patch=(root/'integration/CompositeTransferLegacy.patch').resolve()
    target=patch.read_text().splitlines()[0].removeprefix('--- a/')
    pp=PurePosixPath(target)
    must(not pp.is_absolute() and '..' not in pp.parts,'Unsafe patch target')
    with tempfile.TemporaryDirectory(prefix='b699-patch-check-') as tmp:
        path=Path(tmp)/target
        path.parent.mkdir(parents=True)
        path.write_bytes(original)
        logs=[]
        for flags in [['--dry-run'],[]]:
            cmd=['patch','--batch','--forward',*flags,'-p1','-i',str(patch)]
            run=subprocess.run(cmd,cwd=tmp,capture_output=True)
            logs.append({'argv':cmd,'exit_code':run.returncode,'stdout':run.stdout.decode(),'stderr':run.stderr.decode()})
            must(run.returncode==0,'Patch test failed')
        must(path.read_bytes()==candidate,'Applied scratch patch differs from candidate')
        results['patch_applied_to_temporary_copy_only']={'target_relative_path':target,'commands':logs,'result_matches_candidate':True}
    results['lean_process_started']=False
    results['proof_acceptance']=None
    results['scope']='static byte/source/integer checks and patch-on-temporary-copy only'
    print(json.dumps(results,ensure_ascii=False,indent=2))
    return 0


if __name__=='__main__':
    raise SystemExit(main())
