from pathlib import Path
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-terminal-candidate-coverage-5e2d13bb'
plan=json.loads((out/'coverage-plan.json').read_text());mp=json.loads((out/'candidate-index-map.json').read_text())
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
for rel,rec in json.loads((out/'PROBE_FREEZE.json').read_text())['files'].items():assert sha(out/rel)==rec['sha256']
assert mp['indices_exactly']==list(range(1055))
assert [c['candidate_index'] for c in mp['candidates']]==list(range(1055))
assert sorted(i for c in mp['candidates'] for i in c['witness_ids'])==list(range(4042))
flatten=[]
for g in mp['groups']:
    s=(out/'Groups'/(g['group']+'.lean')).read_text()
    literal=re.search(r'^def intervals : List NatInterval := \[(.*?)\]',s,re.M|re.S)[1]
    intervals=[list(map(int,x)) for x in re.findall(r'\((\d+),\s*(\d+)\)',literal)]
    assert intervals==g['intervals']
    flatten+=intervals
    for c in mp['candidates'][g['start']:g['stop_exclusive']]:
        idx=c['candidate_index']
        if idx not in [0,1054]:
            expect=rf'private theorem c{idx:04d}_sound\s*:\s*IntervalSound \({c["interval"][0]}, {c["interval"][1]}\)'
            assert re.search(expect,s),idx
assert flatten==[[c['lo'],c['hi']] for c in plan['candidates']]
items=plan['items']
for rec in plan['chunk_sources']:
    p=root/rec['path'];assert sha(p)==rec['sha256']
    module=p.stem;text=p.read_text()
    expected=[it['declaration'].rsplit('.',1)[1] for it in items if it['module']==module]
    actual=[x.strip() for x in re.search(r'def witnesses : List Witness := \[([^\]]*)\]',text)[1].split(',')]
    assert expected==actual,module
def covers(lo,hi,segments):
    for a,b in segments:
        if hi<lo:return True
        if b<lo:continue
        if lo<a:return False
        if hi<=b:return True
        lo=b+1
    return hi<lo
first=plan['candidates'][0];last=plan['candidates'][-1]
neg_special=not covers(first['lo'],first['hi'],[(items[i]['lo'],items[i]['hi']) for i in first['witness_ids'] if i!=45])
neg_last=not covers(last['lo'],last['hi'],[])
assert neg_special and neg_last
implementation=[out/'Generic.lean',out/'First.lean',out/'Last.lean',out/'Assembly.lean']+sorted((out/'FirstParts').glob('*.lean'))+sorted((out/'Groups').glob('*.lean'))
decisions=[]
roots=[]
for p in implementation:
    text=p.read_text()
    assert not re.search(r'^\s*(axiom|unsafe)\b|\b(sorry|admit|native_decide)\b',text,re.M)
    assert text.count('(')==text.count(')') and text.count('/-')==text.count('-/'),str(p)
    nspace=re.search(r'^namespace (\S+)',text,re.M)[1]
    roots += [nspace+'.'+name for name in re.findall(r'^(?:def|theorem)\s+(\w+)',text,re.M)]
    lines=text.splitlines()
    for i,line in enumerate(lines):
        if line.strip()=='decide':
            j=i-1
            while j>=0 and not re.match(r'(?:private )?theorem\b',lines[j]):j-=1
            assert j>=0
            header='\n'.join(lines[j:i])
            assert 'coverCheck' in header or 'original_candidates_eq' in header or 'candidate_count' in header,(p,header)
            assert 'witnessesCheck' not in header and 'witnessCheck ' not in header,(p,header)
            decisions.append({'file':str(p.relative_to(out)).replace('\\','/'),'line':i+1,'kind':'pure interval cover' if 'coverCheck' in header else 'pure interval list equality/length'})
assert len(roots)==len(set(roots))
report={'status':'STATIC_EXACT_INDEX_AND_INTERVAL_VERIFICATION_NOT_LEAN','candidate_indices':1055,'groups':66,'witness_ids_exactly_once':4042,
 'all_253_chunk_witness_lists_match_manifest':True,'original_candidate_literals_match':True,'probes_unchanged':True,
 'negative_drop_special330_rejected':neg_special,'negative_drop_final_witness_rejected':neg_last,
 'negative_drop_candidate_breaks_list_equality':flatten[:-1]!=flatten,
 'all_new_decide_sites_are_pure_intervals':True,'decide_site_count':len(decisions),'decide_sites':decisions,
 'public_roots':roots,'public_root_count':len(roots),'new_Lean_invocations':0,'new_B_original_results':0}
(out/'static-verification.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in report.items() if k not in ['decide_sites','public_roots']},indent=2))
