#!/usr/bin/env python3
"""Administrative manifest creation only; never runs research or touches a repository."""
from __future__ import annotations
import hashlib,io,json,zipfile
from pathlib import Path

def sha(b): return hashlib.sha256(b).hexdigest()
def canonical(x): return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()

def embedded(data,chain):
    z=zipfile.ZipFile(io.BytesIO(data)); records=[]; digest=sha(data)
    for name in sorted(z.namelist()):
        if name.endswith('/'):continue
        b=z.read(name)
        records.append({'container_chain':chain,'container_sha256':digest,'path':name,'bytes':len(b),'sha256':sha(b),'source_refs':['PARENT-R03'],'research_reexecuted':False})
        if name.endswith('.zip'):records.extend(embedded(b,chain+[name]))
    return records

def provenance(name):
    if name.startswith('dependencies/') or name=='sources/D-R03-HANDOFF.md': return ['PARENT-R03']
    if name=='sources/OVERVIEW-2026-09-22-original.md.txt': return ['FROZEN-PROTOCOL']
    if name=='sources/CURRENT_OVERVIEW_STATUS.md': return ['CURRENT-OVERVIEW','R04-NEW']
    if name=='sources/BL_RATIONAL_ADOPTION.md': return ['BL-PUBLISHED-STATEMENT','BL-AUTHOR-PREPRINT','BL1996','R04-NEW']
    return ['R04-NEW','PARENT-R03','BL-PUBLISHED-STATEMENT']

def main():
    root=Path(__file__).resolve().parents[1]; ordinary=[]
    for p in sorted(root.rglob('*')):
        if p.is_file():
            n=p.relative_to(root).as_posix()
            if n in ('MEMBERS.json','SHA256SUMS.txt'):continue
            b=p.read_bytes();ordinary.append({'path':n,'bytes':len(b),'sha256':sha(b),'source_refs':provenance(n)})
    nested=embedded((root/'dependencies/D-R03-evidence.zip').read_bytes(),['dependencies/D-R03-evidence.zip'])
    m={'schema':'B699-D-R04-members-v1','ordinary_members':ordinary,'embedded_archive_members':nested,
       'self_reference_exclusions':['MEMBERS.json','SHA256SUMS.txt'],
       'manifest_identity':'SHA256SUMS hashes MEMBERS; final ZIP hash is external to ZIP',
       'source_definitions':'SOURCES.json','ordinary_member_count_excluding_manifests':len(ordinary),
       'recursive_embedded_member_count':len(nested),'parent_math_reexecuted':False}
    (root/'MEMBERS.json').write_bytes(canonical(m))
    lines=[]
    for p in sorted(root.rglob('*')):
        if p.is_file() and p.name!='SHA256SUMS.txt':
            lines.append(sha(p.read_bytes())+'  '+p.relative_to(root).as_posix())
    (root/'SHA256SUMS.txt').write_text('\n'.join(lines)+'\n',encoding='utf-8')
    print(json.dumps({'files':len(lines)+1,'recursive_embedded_members':len(nested)},sort_keys=True))
if __name__=='__main__':main()
