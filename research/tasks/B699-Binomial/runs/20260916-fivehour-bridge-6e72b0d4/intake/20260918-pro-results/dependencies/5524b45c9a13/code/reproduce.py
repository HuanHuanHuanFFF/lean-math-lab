#!/usr/bin/env python3
"""Replay core acceptance in a NEW directory, preserving all frozen evidence."""
import argparse,hashlib,json,os,platform,subprocess,sys
from pathlib import Path

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,required=True)
    ap.add_argument('--with-sympy',action='store_true');a=ap.parse_args()
    root=Path(__file__).resolve().parents[1];out=a.output_dir.resolve()
    if out==root or root in out.parents:raise ValueError('Use a new directory outside the frozen evidence root')
    if out.exists() and any(out.iterdir()):raise ValueError('Output directory must be empty')
    out.mkdir(parents=True,exist_ok=True)
    # Verify every manifest member before running. No recursive old proof reruns.
    manifest=root/'MANIFEST.sha256';verified=0
    if manifest.exists():
        for line in manifest.read_text().splitlines():
            sha,name=line.split('  ',1);p=root/name
            assert p.is_file() and hashlib.sha256(p.read_bytes()).hexdigest()==sha,('manifest mismatch',name)
            verified+=1
    py=sys.executable
    commands=[
      ('build',[py,'-S','-B',str(root/'code/build_certificate.py'),'--output',str(out/'balanced_certificate.json')]),
      ('alternative',[py,'-S','-B',str(root/'code/verify_certificate.py'),'--certificate',str(out/'balanced_certificate.json'),
                      '--output',str(out/'balanced_acceptance.json'),'--negative-tests']),
      ('algebra_stdlib',[py,'-S','-B',str(root/'code/verify_algebra_stdlib.py'),'--output',str(out/'algebra_stdlib.json')]),
      ('small_C',[py,'-S','-B',str(root/'code/check_small_C.py'),'--source',str(root/'sources/previous/terminals.json'),
                  '--output',str(out/'small_C_acceptance.json')]),
      ('api',[py,'-S','-B',str(root/'code/check_consumers.py'),'--output',str(out/'consumer_regression.json')])]
    if a.with_sympy:
        commands.append(('algebra_sympy',[py,'-B',str(root/'code/check_algebra.py'),'--output',str(out/'algebra.json')]))
    executions=[]
    for name,cmd in commands:
        result=subprocess.run(cmd,capture_output=True,text=True,check=False,timeout=90,
                              env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
        (out/f'{name}.log').write_text(result.stdout+result.stderr)
        executions.append({'stage':name,'returncode':result.returncode})
        if result.returncode:raise RuntimeError(f'{name} failed; inspect {out/name}.log')
    compare=['balanced_certificate.json','balanced_acceptance.json','algebra_stdlib.json','small_C_acceptance.json','consumer_regression.json']
    comparisons={}
    for name in compare:
        reference=root/'outputs'/name
        same=reference.read_bytes()==(out/name).read_bytes()
        comparisons[name]=same
        assert same,('frozen output mismatch',name)
    report={'status':'PASS_FRESH_REPLAY','mode':'full_with_sympy' if a.with_sympy else 'stdlib',
            'python':platform.python_version(),'manifest_files_verified':verified,'stages':executions,
            'deterministic_output_matches':comparisons,
            'scope':'Core finite and algebraic checks only. Does not prove Masser Lemma2 or replace paper proof/Lean/independent review.'}
    (out/'reproduction.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(report,ensure_ascii=False))
if __name__=='__main__':main()
