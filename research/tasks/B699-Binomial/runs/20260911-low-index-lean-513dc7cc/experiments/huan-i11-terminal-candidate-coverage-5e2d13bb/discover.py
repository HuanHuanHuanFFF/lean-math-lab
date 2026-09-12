from pathlib import Path
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-terminal-candidate-coverage-5e2d13bb'
out.mkdir(exist_ok=True)
manifest=run/'experiments/huan-i11-terminal-witness-data-5e2d13bb/manifest.json'
cert=root/'research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/results/terminal_certificate_11.json'
m=json.loads(manifest.read_text());t=json.loads(cert.read_text())
src=run/'lean/I11TerminalMembership/Candidates.lean'
body=src.read_text().split('def originalCandidates : List NatInterval := [',1)[1].split('\n]',1)[0]
cands=[tuple(map(int,x)) for x in re.findall(r'\((\d+),\s*(\d+)\)',body)]
info={'manifest_keys':list(m),'item0':m['items'][0],'item1':m['items'][1],'item_last':m['items'][-1],
 'terminal_keys':list(t),'candidate_count':len(cands),'candidate_first':cands[0],'candidate_last':cands[-1],
 'manifest_sha256':hashlib.sha256(manifest.read_bytes()).hexdigest(),'candidate_source_sha256':hashlib.sha256(src.read_bytes()).hexdigest(),
 'terminal_sha256':hashlib.sha256(cert.read_bytes()).hexdigest()}
(out/'DISCOVERY.json').write_text(json.dumps(info,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(out/'CHECKPOINT.md').write_text('Owner:pade_construction. Only this directory. Start2026-09-11 22:10:58 UTC; first checkpoint22:30:58 UTC, not deadline. First/last candidate probes and reusable exact interval composition first, then all1055 if the prefix is concrete. Reuse existing Chunk w_check proofs; only pure interval coverCheck may be decided. No Lean/Git, no lower-than24 domain extension.\n',encoding='utf-8')
print(json.dumps(info,ensure_ascii=False,indent=2))
