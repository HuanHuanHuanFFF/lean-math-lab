"""Final handoff integrity audit; this is not a new mathematical proof check."""
from pathlib import Path
from datetime import datetime, timezone
from collections import Counter
import hashlib
import json
import re
import subprocess


def main():
    run=Path(__file__).resolve().parents[2];repo=run.parents[4]
    def git(*args,cwd=repo):
        return subprocess.check_output(['git','-c',f'safe.directory={cwd.as_posix()}',*args],cwd=cwd,text=True,encoding='utf-8').strip()
    checked={};manifest_count=0;entries=0
    manifests=[]
    for path in run.rglob('*.json'):
        name=path.name.lower()
        if 'manifest' in name or 'frozen' in name or re.fullmatch(r'stage\d+-freeze\.json',name):
            manifests.append(path)
    for manifest in sorted(manifests):
        data=json.loads(manifest.read_text(encoding='utf-8-sig'))
        declared=data.get('files',data.get('artifacts',[]))
        if not isinstance(declared,list) or not declared:continue
        manifest_count+=1
        for entry in declared:
            if not isinstance(entry,dict) or not all(k in entry for k in ('path','sha256')):continue
            rel=entry['path']
            path=repo/rel if rel.startswith('research/') else run/rel
            path=path.resolve()
            assert path.is_file(),(manifest.name,rel)
            assert path.is_relative_to(run),(manifest.name,rel)
            raw=path.read_bytes();got=hashlib.sha256(raw).hexdigest()
            assert got==entry['sha256'],(manifest.name,rel,'hash')
            size=entry.get('bytes',entry.get('size'))
            if size is not None:assert len(raw)==size,(manifest.name,rel,'bytes')
            checked[path.relative_to(run).as_posix()]=got;entries+=1
    document_links=[]
    documents=['README.md','REPORT.md','PROOFS.md','HANDOFF.md','OVERVIEW.md','frontier.md','LOG.md']
    for name in documents:
        path=run/name;assert path.is_file()
        text=path.read_text(encoding='utf-8-sig')
        assert '\ufffd' not in text,name
        for target in re.findall(r'!?\[[^\]]*\]\(([^)]+)\)',text):
            target=target.strip('<>')
            if target.startswith(('http://','https://','#')):continue
            target=target.split('#',1)[0]
            resolved=(path.parent/target).resolve()
            assert resolved.exists(),(name,target)
            document_links.append({'from':name,'target':target})
    baseline='a7468a887224e35906d8486bd18d21d0e8368393'
    changes=git('diff','--name-only',baseline).splitlines()
    owned=run.relative_to(repo).as_posix()+'/'
    old_overview='research/tasks/B699-Binomial/runs/20260916-paper-frontier-a1c74e93/OVERVIEW.md'
    assert all(p.startswith(owned) or p==old_overview for p in changes)
    assert not any(p.lower().endswith('.lean') for p in changes)
    original=Path('D:/CodingProject/Math')
    original_state={'branch':git('branch','--show-current',cwd=original),
                    'head':git('rev-parse','HEAD',cwd=original),
                    'status':git('status','--porcelain',cwd=original)}
    assert original_state=={'branch':'huan/leader-intake-20260915-6f28a9c4',
                           'head':'bef7eabf144f066d5853ea4d81b0b0ceed92bb1a','status':''}
    files=[p for p in run.rglob('*') if p.is_file() and '__pycache__' not in p.parts]
    result={'status':'PASS','utc':datetime.now(timezone.utc).isoformat(),
            'scope':'Fixed author artifact byte integrity, handoff links, branch ownership and original workspace preservation; not Lean or a fresh rerun of all mathematics.',
            'frozen_manifests':manifest_count,'declarations_checked':entries,'unique_frozen_files':len(checked),
            'frozen_sha256':checked,'local_document_links':document_links,
            'current_branch':git('branch','--show-current'),'current_head':git('rev-parse','HEAD'),
            'changed_paths_from_source_baseline':len(changes),'lean_files_changed':0,
            'original_workspace':original_state,
            'run_inventory':{'files_excluding_pycache':len(files),'bytes':sum(p.stat().st_size for p in files),
                             'extensions':dict(Counter(p.suffix for p in files))},
            'checks_not_run':'No Lean, new full theorem suite, external peer review, or merge.'}
    Path(__file__).with_suffix('.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({k:v for k,v in result.items() if k not in ('scope','frozen_sha256','local_document_links')}))


if __name__=='__main__':main()
