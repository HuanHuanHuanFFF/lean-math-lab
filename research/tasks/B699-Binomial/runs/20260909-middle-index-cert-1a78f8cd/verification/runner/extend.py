#!/usr/bin/env python3
"""Extend this round's verification using individually verified source-aligned objects.
A failed earlier root never licenses its failed module. Every reused module,
its project dependencies, source, object, and actual axiom log are hash checked.
Without --base-evidence this behaves like the fresh verifier.
"""
from __future__ import annotations
import argparse, copy, hashlib, json, shutil, sys, time
from pathlib import Path
import verify as v

def main():
    parser=argparse.ArgumentParser(add_help=False)
    parser.add_argument("--base-evidence",action="append",default=[])
    known,rest=parser.parse_known_args()
    args=v.parse_args(rest)
    repo=v.find_repo(Path(v.__file__),args.project_root)
    manifest=v.sha256_path(repo/"lake-manifest.json")
    candidates={}
    bases=[]
    for filename in known.base_evidence:
        path=(repo/filename).resolve()
        if not path.is_relative_to(repo):
            raise ValueError("base evidence must belong to this isolated worktree")
        data=json.loads(path.read_text(encoding="utf-8"))
        if data.get("manifest_sha256")!=manifest:
            raise ValueError("base manifest mismatch")
        if data.get("toolchain",{}).get("declared")!=v.TOOLCHAIN_PIN:
            raise ValueError("base toolchain mismatch")
        base={'path':v.relpath(path,repo),'sha256':v.sha256_path(path)}
        bases.append(base)
        for record in data.get("compile_records",[]):
            if record.get("exit_code")!=0 or record.get("failure"):
                continue
            audit=record.get("axiom_audit",{})
            if audit.get("error") or audit.get("unexpected_axioms"):
                continue
            if audit.get("actual_printed")!=audit.get("declared_print_axioms"):
                continue
            candidates[record["module"]]=(record,base)
    memo={}
    reaudits={}
    def verified(module,trail=frozenset()):
        if module in memo:return memo[module]
        if module in trail or module not in candidates:return False
        record,base=candidates[module]
        for field,sha in [
            ("source","source_sha256_after"),("output","output_sha256"),("log","log_sha256")
        ]:
            p=(repo/record[field]).resolve()
            if not p.is_relative_to(repo) or not p.is_file() or v.sha256_path(p)!=record.get(sha):
                memo[module]=False;return False
        if record.get("source_sha256_before")!=record.get("source_sha256_after"):
            memo[module]=False;return False
        if v.source_policy(repo/record["source"],repo):
            memo[module]=False;return False
        if v.imports_in(repo/record["source"])!=record.get("imports"):
            memo[module]=False;return False
        for dep in record.get("imports",[]):
            if any(v.is_prefix(dep,p) for p in v.PROJECT_PREFIXES):
                if not verified(dep,trail|{module}):
                    memo[module]=False;return False
        # Reparse the persisted actual log as well as verifying its original hash.
        log=(repo/record["log"]).read_text(encoding="utf-8")
        audit=v.audit_axioms(repo/record["source"],log)
        if audit.get("error"):
            memo[module]=False;return False
        reaudits[module]=audit
        memo[module]=True;return True
    original_compile=v.compile_source
    original_allocate=v.allocate_outputs
    output_info={}
    reused=[]
    def allocate(*a,**k):
        result=original_allocate(*a,**k)
        output_info['public']=result[0]
        return result
    def compile_source(reference,**kw):
        if not verified(reference.module):
            record,stdout=original_compile(reference,**kw)
            record['compiled_in_this_invocation']=True
            return record,stdout
        before=time.monotonic()
        original,base=candidates[reference.module]
        output_path=kw['raw_olean'].joinpath(*reference.module.split('.')).with_suffix('.olean')
        output_path.parent.mkdir(parents=True,exist_ok=True)
        if output_path.exists():raise v.VerificationFailure("reuse output unexpectedly exists")
        shutil.copyfile(repo/original['output'],output_path)
        if v.sha256_path(output_path)!=original['output_sha256']:
            raise v.VerificationFailure("copied verified object hash mismatch")
        record=copy.deepcopy(original)
        record['compiled_in_this_invocation']=False
        record['current_reaudit']=copy.deepcopy(reaudits[reference.module])
        record['reused_from']={'evidence':base,'object':original['output'],'object_sha256':original['output_sha256']}
        record['original_compile_command']=record['command']
        record['original_compile_seconds']=record['seconds']
        record['command']=None
        record['command_shell']=None
        record['seconds']=None
        record['reuse_seconds']=round(time.monotonic()-before,6)
        record['output']=v.relpath(output_path,repo)
        reused.append(reference.module)
        return record,""
    v.allocate_outputs=allocate
    v.compile_source=compile_source
    status=v.main(rest)
    if 'public' in output_info:
        evidence=output_info['public']/'evidence.json'
        data=json.loads(evidence.read_text(encoding="utf-8"))
        data['reuse_base_evidence']=bases
        data['reused_source_aligned_modules']=reused
        data['all_new_project_closure_compiled']=data['success'] and not reused
        data['all_project_closure_verified']=data['success']
        data['compiled_in_this_invocation']=sum(r.get('compiled_in_this_invocation',False) for r in data['compile_records'])
        data['runner_sources']=[{'path':v.relpath(Path(__file__).with_name(n),repo),'sha256':v.sha256_path(Path(__file__).with_name(n))} for n in ['extend.py','verify.py','monitor.py']]
        v.write_json(evidence,data)
        print(f"reused source-aligned modules: {len(reused)}; newly compiled: {data['compiled_in_this_invocation']}")
    return status

if __name__=="__main__":
    raise SystemExit(main())
