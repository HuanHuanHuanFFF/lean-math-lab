#!/usr/bin/env python3
"""Administrative member-level provenance. No mathematical checks or repository actions."""
import hashlib, io, json, zipfile
from pathlib import Path, PurePosixPath

def sha(b):return hashlib.sha256(b).hexdigest()
def nested(data,chain):
    rows=[]
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        for name in sorted(n for n in z.namelist() if not n.endswith('/')):
            p=PurePosixPath(name)
            if p.is_absolute() or '..' in p.parts or '\\' in name:raise ValueError('unsafe nested member')
            b=z.read(name);rows.append({'archive_chain':chain,'member':name,'size':len(b),'sha256':sha(b)})
            if name.lower().endswith('.zip'):rows+=nested(b,chain+'!'+name)
    return rows

def origin(name):
    if name=='dependencies/D-R04-evidence.zip':return {'kind':'original_parent_archive','original_filename':'B699-D-R04-FIVE-MASS-20261002-evidence.zip'}
    if name.endswith('OVERVIEW-2026-09-22-original.md.txt'):return {'kind':'original_conversation_attachment','original_filename':'OVERVIEW-2026-09-22.md.txt'}
    if name=='logs/PARENT_R04_REPLAY.json':return {'kind':'executed_this_session','command':'R04: python -I -B replay.py --output <receipt>; ancestors and q6 not executed'}
    if name.startswith('sources/'):return {'kind':'author_adoption_or_access_note','raw_publication_bytes':False}
    if name.startswith('logs/'):return {'kind':'R05_execution_receipt_or_research_record'}
    if name.startswith('certificates/'):return {'kind':'R05_generated_exact_certificate'}
    return {'kind':'R05_authored_paper_code_or_state'}

def main():
    root=Path(__file__).resolve().parents[1]
    rows=[]
    for p in sorted(root.rglob('*')):
        if not p.is_file():continue
        n=p.relative_to(root).as_posix()
        if n in {'MEMBERS.json','SHA256SUMS.txt'}:continue
        b=p.read_bytes();rows.append({'path':n,'size':len(b),'sha256':sha(b),'source':origin(n)})
    m={'schema':'R05-member-provenance-v1','members':rows,
      'recursive_parent_members':nested((root/'dependencies/D-R04-evidence.zip').read_bytes(),'D-R04'),
      'self_reference_policy':'MEMBERS and SHA256SUMS omitted from MEMBERS self-reference; SHA256SUMS covers every file except itself; final ZIP sidecar binds complete archive.'}
    (root/'MEMBERS.json').write_text(json.dumps(m,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    checks=[]
    for p in sorted(root.rglob('*')):
        if p.is_file() and p.name!='SHA256SUMS.txt':checks.append(sha(p.read_bytes())+'  '+p.relative_to(root).as_posix())
    (root/'SHA256SUMS.txt').write_text('\n'.join(checks)+'\n')
    print(json.dumps({'status':'PASS','members_in_provenance':len(rows),'parent_recursive_members':len(m['recursive_parent_members'])}))
if __name__=='__main__':main()
