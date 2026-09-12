from pathlib import Path
from bisect import bisect_right
import json,re,hashlib
root=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
run=root/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
out=run/'experiments/huan-i11-terminal-candidate-coverage-5e2d13bb'
manifest=run/'experiments/huan-i11-terminal-witness-data-5e2d13bb/manifest.json'
cert=root/'research/tasks/B699-Binomial/runs/20260910-pade-three-closure-4edad426/delivery/results/terminal_certificate_11.json'
m=json.loads(manifest.read_text());t=json.loads(cert.read_text());items=m['items']
src=run/'lean/I11TerminalMembership/Candidates.lean'
body=src.read_text().split('def originalCandidates : List NatInterval := [',1)[1].split('\n]',1)[0]
cands=[tuple(map(int,x)) for x in re.findall(r'\((\d+),\s*(\d+)\)',body)]
assert cands==[tuple(x) for x in t['candidate_intervals']]
assert len(cands)==1055 and len(items)==4042
assert all(a<=b for a,b in cands)
assert all(cands[i][1]<cands[i+1][0] for i in range(len(cands)-1))
sources={}
for i,it in enumerate(items):
    module=it['module'];decl=it['declaration'];leaf=decl.rsplit('.',1)[1]
    source=run/'lean/I11TerminalData'/(module+'.lean')
    if module not in sources:sources[module]={'path':str(source.relative_to(root)).replace('\\','/'),'sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'text':source.read_text()}
    text=sources[module]['text']
    rhs=re.search(r'def '+re.escape(leaf)+r' : Witness := ([^\r\n]+)',text)[1]
    if it['kind']=='special330':
        assert '.special330' in rhs and it['lo']==it['hi']==330
    else:
        ctor='topPrime' if it['kind']=='top' else 'largeDivisor'
        assert re.fullmatch(r'\.good\s+⟨'+str(it['lo'])+r',\s*'+str(it['hi'])+r',\s*\.'+ctor+r'\s+'+str(it['value'])+r'⟩',rhs)
    assert re.search(r'theorem '+re.escape(leaf)+r'_check : witnessCheck '+re.escape(leaf)+r' = true',text)
ordered=sorted(range(len(items)),key=lambda i:(items[i]['lo'],-items[i]['hi'],i))
los=[items[i]['lo'] for i in ordered]
def cover(lo,hi,segs):
    cur=lo
    for a,b in segs:
        if hi<cur:return True
        if b<cur:continue
        if cur<a:return False
        if hi<=b:return True
        cur=b+1
    return hi<cur
plans=[]
for ci,(lo,hi) in enumerate(cands):
    cur=lo;sel=[]
    while cur<=hi:
        elig=[i for i in ordered[:bisect_right(los,cur)] if items[i]['hi']>=cur]
        assert elig,('coverage gap',ci,cur)
        idx=max(elig,key=lambda i:(items[i]['hi'],-i))
        sel.append(idx);cur=items[idx]['hi']+1
    segs=[(items[i]['lo'],items[i]['hi']) for i in sel]
    assert cover(lo,hi,segs)
    pieces=[];cur=lo
    for j in range(0,len(sel),16):
        inds=sel[j:j+16];end=min(hi,items[inds[-1]]['hi'])
        assert cover(cur,end,[(items[i]['lo'],items[i]['hi']) for i in inds])
        pieces.append({'lo':cur,'hi':end,'witness_ids':inds})
        cur=end+1
    assert cover(lo,hi,[(p['lo'],p['hi']) for p in pieces])
    plans.append({'candidate_index':ci,'lo':lo,'hi':hi,'witness_ids':sel,'pieces':pieces})
seen=set(i for p in plans for i in p['witness_ids'])
summary={'status':'exact finite source/interval planning; no witness primality recomputation; no Lean',
 'candidates':len(cands),'total_selected_witness_uses':sum(len(p['witness_ids']) for p in plans),'distinct_witnesses_used':len(seen),
 'max_witnesses_per_candidate':max(len(p['witness_ids']) for p in plans),
 'first':{k:v for k,v in plans[0].items() if k not in ['witness_ids','pieces']},
 'first_witnesses':len(plans[0]['witness_ids']),'first_pieces':len(plans[0]['pieces']),
 'first_modules':sorted({items[i]['module'] for i in plans[0]['witness_ids']}),
 'last':plans[-1],'piece_size':16,'total_pieces':sum(len(p['pieces']) for p in plans),
 'special330_ids':[i for i,it in enumerate(items) if it['kind']=='special330'],
 'special330_used':any(it['kind']=='special330' for i,it in enumerate(items) if i in seen),
 'max_pieces_per_candidate':max(len(p['pieces']) for p in plans)}
(out/'coverage-plan.json').write_text(json.dumps({'summary':summary,'candidates':plans,'items':items,'chunk_sources':[{k:v for k,v in x.items() if k!='text'} for x in sources.values()]},indent=2)+'\n',encoding='utf-8')
print(json.dumps(summary,indent=2))
