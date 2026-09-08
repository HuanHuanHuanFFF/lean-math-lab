"""Prepare isolated public source inputs for the recorded platform audit.
Requires Python3 and Git. All new checkouts stay below this repository's .tools/.
Never resets, cleans, or reuses another repository/worktree.
"""
from pathlib import Path
import json, subprocess
ROOT=Path(__file__).resolve().parents[2]
HERE=Path(__file__).resolve().parent
pins=json.loads((HERE/'pins.lock.json').read_text(encoding='utf8'))
for label,repo,ref in [
    ('conjectures-tasks',pins['tasks']['repository'],pins['tasks']['commit']),
    ('formal-conjectures',pins['formal_conjectures']['repository'],pins['formal_conjectures']['base_commit'])]:
    dst=ROOT/'.tools/platform'/label
    if not dst.exists():
        dst.parent.mkdir(parents=True,exist_ok=True)
        subprocess.run(['git','clone','-c','core.autocrlf=false','--filter=blob:none','--no-checkout',repo,str(dst)],check=True)
        subprocess.run(['git','-C',str(dst),'checkout','--detach',ref],check=True)
    else:
        top=Path(subprocess.check_output(['git','-C',str(dst),'rev-parse','--show-toplevel'],text=True).strip()).resolve()
        assert top==dst.resolve(),f'Refusing foreign/nested repository at {dst}'
        actual=subprocess.check_output(['git','-C',str(dst),'rev-parse','HEAD'],text=True).strip()
        allowed={ref}
        if label=='formal-conjectures': allowed.add(pins['formal_conjectures']['commit'])
        assert actual in allowed,f'Existing dependency has different HEAD: {actual}; inspect manually.'
    print(f'{label}: {ref}',flush=True)
subprocess.run(['python',str(HERE/'reconstruct_sources.py')],cwd=ROOT,check=True)
