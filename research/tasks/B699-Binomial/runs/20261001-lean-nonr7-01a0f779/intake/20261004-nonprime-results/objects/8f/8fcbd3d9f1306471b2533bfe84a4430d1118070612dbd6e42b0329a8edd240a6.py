#!/usr/bin/env python3
"""Read packet bytes and replay patches only in fresh temporary directories. Never runs Lean."""
from pathlib import Path, PurePosixPath
import hashlib
import json
import re
import subprocess
import tempfile
import zipfile
import shutil

ROOT=Path(__file__).resolve().parents[1]
SHA=lambda b:hashlib.sha256(b).hexdigest()

def check_archive(path:Path,manifest_name:str)->dict:
    with zipfile.ZipFile(path) as z:
        names=z.namelist()
        assert len(names)==len(set(names)), 'duplicate zip members'
        assert all(not PurePosixPath(n).is_absolute() and '..' not in PurePosixPath(n).parts for n in names)
        assert z.testzip() is None
        base=str(PurePosixPath(manifest_name).parent)
        prefix='' if base=='.' else base+'/'
        seen=set()
        for line in z.read(manifest_name).decode().splitlines():
            if not line.strip():continue
            m=re.fullmatch(r'([0-9a-f]{64})\s+\*?(.+)',line)
            assert m,line
            digest,rel=m.groups();member=prefix+rel
            assert member not in seen
            seen.add(member)
            assert SHA(z.read(member))==digest,member
        assert seen==set(names)-{manifest_name}
        return {'archive':path.name,'members':len(names),'manifest_entries':len(seen),'sha256':SHA(path.read_bytes()),'crc_pass':True,'manifest_pass':True}

def replay(patch_file:Path,seed_path:str,seed_bytes:bytes,expected:dict[str,bytes])->list[dict]:
    executable=shutil.which('patch')
    assert executable, 'patch executable is required for static text replay; no installation attempted'
    records=[]
    with tempfile.TemporaryDirectory(prefix='b699-integration-static-') as tmp:
        dest=Path(tmp)/seed_path;dest.parent.mkdir(parents=True);dest.write_bytes(seed_bytes)
        for phase in ('dry-run','apply'):
            argv=[executable,'--batch','--forward','--fuzz=0','-p1']
            if phase=='dry-run':argv.append('--dry-run')
            argv += ['-i',str(patch_file.resolve())]
            p=subprocess.run(argv,cwd=tmp,capture_output=True,check=False)
            record={'phase':phase,'argv':argv,'cwd':tmp,'exit_code':p.returncode,'stdout':p.stdout.decode(),'stderr':p.stderr.decode(),'stdout_sha256':SHA(p.stdout),'stderr_sha256':SHA(p.stderr),'scope':'temporary copied bytes, not a repository or Lean execution'}
            records.append(record)
            assert p.returncode==0, record
            assert 'offset' not in record['stdout'].lower() and 'fuzz' not in record['stdout'].lower(),record
        actual={str(p.relative_to(tmp)):p.read_bytes() for p in Path(tmp).rglob('*') if p.is_file()}
        assert set(actual)==set(expected),(set(actual),set(expected))
        assert all(actual[k]==v for k,v in expected.items())
        records.append({'result_files':[{'path':k,'sha256':SHA(v),'matches_expected':True} for k,v in expected.items()]})
    return records

def lean_module(path:str)->str:
    pieces=PurePosixPath(path).with_suffix('').parts
    return '.'.join(p if re.fullmatch(r'[A-Za-z_][A-Za-z_0-9]*',p) else '«'+p+'»' for p in pieces)

def declarations(text:str)->set[str]:
    ns=re.findall(r'^namespace (\w+)$',text,re.M)
    assert len(ns)==1
    return {ns[0]+'.'+n for n in re.findall(r'^theorem (\w+)',text,re.M)}

mapping=json.loads((ROOT/'verification/SYMBOL-MAP.json').read_text())
old=(ROOT/'input/original/source/CompositeTransferLegacy.lean').read_bytes()
assert SHA(old)=='31ca5aaa79f1286caef8794e33cdf09da6528ff4b756aec9a2aeefc06175e747'
source=old.decode();old_lines=source.splitlines(keepends=True)
assert old_lines[10]=='namespace B699CompositeTransfer20261003\n'
assert old_lines[66]=='end B699CompositeTransfer20261003\n'
assert not re.search(r'^\s*(open|private|protected|module)\b',source,re.M)
assert not re.search(r'^theorem not_prime_',source,re.M)
assert old_lines[38].lstrip().startswith('(B699FiniteFull20261002.common_indices_4883_4884 ')

certificate=(ROOT/'NonprimeCertificates.lean').read_bytes()
patched=(ROOT/'CompositeTransferLegacy.candidate.lean').read_bytes()
new_lines=patched.decode().splitlines(keepends=True)
assert len(new_lines)==len(old_lines)+1
assert new_lines[1]=='import '+mapping['canonical_certificate_module']+'\n'
recovered=new_lines[:1]+new_lines[2:]
for item in mapping['call_sites']:
    line=item['original_line'];n=4884+mapping['call_sites'].index(item)
    assert recovered[line-1]==f'  exact common_succ_of_nonprime (i := {n}) _root_.B699CompositeTransfer20261003.not_prime_{n} _root_.B699CompositeTransfer20261003.not_prime_{n+1}\n'
    recovered[line-1]=old_lines[line-1]
assert ''.join(recovered).encode()==old
assert ''.join(new_lines[13:35]).encode()==''.join(old_lines[12:34]).encode()
assert ''.join(new_lines[57:]).encode()==''.join(old_lines[56:]).encode()
assert certificate==(ROOT/'patch-tree'/mapping['canonical_certificate_repository_relative_path']).read_bytes()
assert patched==(ROOT/'patch-tree'/mapping['consumer_repository_relative_path']).read_bytes()
assert lean_module(mapping['consumer_repository_relative_path'])==mapping['consumer_module']
assert lean_module(mapping['canonical_certificate_repository_relative_path'])==mapping['canonical_certificate_module']
assert re.findall(r'^import (.+)$',certificate.decode(),re.M)==['Mathlib.Data.Nat.Prime.Basic']
assert not re.search(r'\b(by|sorry|admit|axiom|private|protected|open|module)\b',certificate.decode())
assert certificate==(ROOT/'input/A-readable/NonprimeCertificates.readable.txt').read_bytes()
existing=declarations(source);new=declarations(certificate.decode())
assert not (existing&new)
assert new=={'B699CompositeTransfer20261003.not_prime_'+str(n) for n in range(4884,4889)}
assert all(x['full_name'] in existing for x in mapping['declarations'])
for label in ['B1','B2','B3']:
    bcert=(ROOT/f'input/{label}/NonprimeCertificates.lean').read_text()
    bnames=declarations(bcert)
    assert bnames=={'B699NonprimeCertificates.not_prime_'+str(n) for n in range(4884,4889)}
    assert not (bnames&new)

inputs=json.loads((ROOT/'verification/INPUT-ARCHIVE-INTEGRITY.json').read_text())
archive_results=[check_archive(ROOT/x['archive'],x['manifest']) for x in inputs]
for row,expected in zip(archive_results,inputs):assert row['sha256']==expected['sha256']
replays={}
replays['unique_patch']=replay(ROOT/'UNIQUE-INTEGRATION.patch',mapping['consumer_repository_relative_path'],old,{mapping['consumer_repository_relative_path']:patched,mapping['canonical_certificate_repository_relative_path']:certificate})
# Compare prior source-level call wiring independently, without executing delivered programs.
expected_b=source.replace(old_lines[0],old_lines[0]+'import NonprimeCertificates\n',1)
for item in mapping['call_sites']:
    n=4884+mapping['call_sites'].index(item)
    expected_b=expected_b.replace(f'  exact common_succ_of_nonprime (i := {n}) (by decide) (by decide)\n',f'  exact common_succ_of_nonprime (i := {n})\n    B699NonprimeCertificates.not_prime_{n}\n    B699NonprimeCertificates.not_prime_{n+1}\n')
for label in ['B1','B2','B3']:
    replays[label]=replay(ROOT/f'input/{label}/integration/CompositeTransferLegacy.patch',mapping['consumer_repository_relative_path'],old,{mapping['consumer_repository_relative_path']:expected_b.encode()})
expected_a=source.replace(old_lines[0],old_lines[0]+'import NonprimeCertificates\n',1)
for item in mapping['call_sites']:
    n=4884+mapping['call_sites'].index(item)
    expected_a=expected_a.replace(f'  exact common_succ_of_nonprime (i := {n}) (by decide) (by decide)\n',f'  exact common_succ_of_nonprime (i := {n}) not_prime_{n} not_prime_{n+1}\n')
replays['A_readable_patch_transcription']=replay(ROOT/'input/A-readable/CompositeTransferLegacy.patch.readable.txt','CompositeTransferLegacy.lean',old,{'CompositeTransferLegacy.lean':expected_a.encode()})

print(json.dumps({'status':'STATIC_PASS','lean_run':False,'repository_modified':False,'archive_results':archive_results,'new_declaration_collision_with_original':False,'new_declarations':sorted(new),'preserved_original_body_and_all_other_lines':True,'original_four_call_lines':[38,44,49,54],'new_four_call_lines':[39,45,50,55],'patch_replays':replays,'limitations':['This is not a Lean parser, elaborator, axiom audit, or checker.','A patch replay uses readable text transcription, not authenticated raw A archive bytes.','Original imported provider declaration and full dependency graph are missing.']},ensure_ascii=False,indent=2))
