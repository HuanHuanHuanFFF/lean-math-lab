"""Read-only extension source/evidence audit; no Lean or primality/large-power computation."""
from pathlib import Path
import hashlib,json,re
from datetime import datetime,timezone
RUN=Path(__file__).resolve().parents[1]
REPO=RUN.parents[4]
EXT=RUN/'lean/extension'
def rd(p):return p.read_text(encoding='utf-8-sig')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def norm(s):return ' '.join(s.split())
def req(c,msg):
    if not c:raise AssertionError(msg)
def qual(s,ns):return s if s.startswith('B699') else ns+'.'+s
def imps(p):return [s.replace('«','').replace('»','') for s in re.findall(r'^import (\S+)',rd(p),re.M)]
def closure(roots):
    found={}
    def visit(p):
        rel=p.relative_to(REPO).as_posix()
        if rel in found:return
        found[rel]=sha(p)
        for mod in imps(p):
            dep=REPO.joinpath(*mod.split('.')).with_suffix('.lean')
            if dep.is_file():visit(dep)
    for p in roots:visit(p)
    return found
R={'checked_utc':datetime.now(timezone.utc).isoformat(),'limits':['No Lean invocation','No primality recomputation','No large integer height comparison recomputation']}
# The actual basis proof tree must cover every candidate integer below 4473.
basis_file=EXT/'basis/BasisData.lean'
basis=tuple(map(int,re.findall(r'\d+',re.search(r'def basis4473 : List Nat := \[([^\]]+)\]',rd(basis_file),re.S).group(1))))
req(len(basis)==607 and len(set(basis))==607,'literal basis size and uniqueness')
spans={}; segments=[]
files=[*sorted((EXT/'basis').glob('Coverage*.lean')),EXT/'PrimeBasis4473.lean']
for p in files:
    s=rd(p);ns=re.search(r'^namespace (\S+)',s,re.M).group(1)
    checks={name:(int(lo),int(length)) for name,lo,length in re.findall(r'theorem (check\d+) : basisRangeCheck basis4473 (\d+) (\d+) = true := by\s+decide \+kernel',s)}
    used=set()
    decls=re.findall(r'(?ms)^theorem (\w+) : BasisCompleteOn basis4473 (\d+) (\d+) :=\s*(.*?)(?=^theorem |^def |^end |^#print|\Z)',s)
    for name,a,b,body in decls:
        a,b=int(a),int(b);body=norm(body)
        if body.startswith('basisRangeCheck_sound'):
            m=re.fullmatch(r'basisRangeCheck_sound \(ps := basis4473\) \(lo := (\d+)\) \(len := (\d+)\) (check\d+)',body)
            req(m is not None,'range consumer syntax '+name)
            lo,length=int(m[1]),int(m[2]);check=m[3]
            req(checks[check]==(lo,length) and (a,b)==(lo,lo+length),'range consumer parameters '+name)
            values=tuple(range(a,b));used.add(check);segments.append((a,b))
        elif body.startswith('BasisCompleteOn.trans'):
            m=re.fullmatch(r'BasisCompleteOn.trans \(ps := basis4473\) \(lo := (\d+)\) \(mid := (\d+)\) \(hi := (\d+)\) (\S+) (\S+)',body)
            req(m is not None,'basis combine syntax '+name)
            lo,mid,hi=map(int,m.groups()[:3]);left=spans[qual(m[4],ns)];right=spans[qual(m[5],ns)]
            req((a,b)==(lo,hi) and left[:2]==(lo,mid) and right[:2]==(mid,hi),'basis seam '+name)
            values=left[2]+right[2]
        else:
            alias=spans[qual(body,ns)];req(alias[:2]==(a,b),'basis alias '+name);values=alias[2]
        req(values==tuple(range(a,b)),'basis consumed range '+name)
        spans[ns+'.'+name]=(a,b,values)
    req(set(checks)==used,'unused basis check '+p.name)
req(len(segments)==70 and spans['B699MiddleExtension.joinLevel3_0']==(0,4473,tuple(range(4473))),'final complete basis range')
req('BasisCompleteOn.to_complete (ps := basis4473) (B := 4473) joinLevel3_0' in norm(rd(EXT/'PrimeBasis4473.lean')),'final basis completeness consumer')
R['basis']={'literal_count':len(basis),'first':basis[0],'last':basis[-1],'coverage_blocks':10,'checked_integer_segments':len(segments),'covered_integers':4473,'last_segment':segments[-1],'B_squared':4473*4473,'basis_source_sha256':sha(basis_file)}
# All 138 height leaves must reference matching full counts and original20m rows.
input_height=RUN/'inputs/original20m/outputs/exact_height_certificate.json'
hdata=json.loads(rd(input_height));rows={d['i']:d for d in hdata['rows']}
req(hdata['N']==20000000 and sorted(rows)==list(range(185,1000)),'original height input range')
counts={int(i):int(v) for p in (RUN/'lean/counts').glob('Count*.lean') for i,v in re.findall(r'theorem count_(\d+) : B699LargePrimeStructure.smallPrimeCount \d+ = (\d+)',rd(p))}
height_files=sorted((EXT/'heightBlocks').glob('Height*.lean'))
raws={}
for p in [*height_files,*sorted((EXT/'heights').glob('Height*.lean'))]:
    for name,i,r,s,n,t in re.findall(r'theorem (raw_(?:height_)?\d+) : (?:B699Middle\.)?RawHeightValid (\d+) (\d+) (\d+) (\d+) (\d+) := by\s+decide \+kernel',rd(p)):
        i,r,s,n,t=map(int,(i,r,s,n,t));req(i not in raws,'duplicate raw extension '+str(i))
        req((r,s,n,t)==(rows[i]['r'],rows[i]['s'],20000000,rows[i]['t']),'raw input correspondence '+str(i))
        req(t==counts[i] and r==i//3 and s==7*i//10,'full count and rounding '+str(i));raws[i]=p
req(sorted(raws)==list(range(185,323)),'exact raw extension indices')
tails={}
for p in [*height_files,EXT/'AllExtensionHeights.lean']:
    s=rd(p);ns=re.search(r'^namespace (\S+)',s,re.M).group(1)
    for name,lo,hi,n,body in re.findall(r'(?ms)^theorem (\w+) : TailRange (\d+) (\d+) (\d+) :=\s*(.*?)(?=^theorem |^def |^end |^#print|\Z)',s):
        lo,hi,n=map(int,(lo,hi,n));body=norm(body)
        if body.startswith('tailRange_singleton'):
            m=re.fullmatch(r'tailRange_singleton \(i := (\d+)\) \(r := (\d+)\) \(s := (\d+)\) \(N := (\d+)\) (\S+)',body)
            req(m is not None,'height leaf syntax '+name)
            i,r,ss,nn=map(int,m.groups()[:4]);cert=m[5]
            req((lo,hi,n)==(i,i,20000000) and (r,ss,nn)==(rows[i]['r'],rows[i]['s'],20000000),'height leaf values '+name)
            special=i in (185,200,322)
            req(cert==(f'B699MiddleExtension.height_{i}' if special else f'height_{i}'),'height leaf certificate '+name)
            source=rd(raws[i])
            expected=f'heightValid_of_raw (i := {i}) (r := {r}) (s := {ss}) (N := {nn}) (t := {counts[i]}) Counts.count_{i} raw_{i}'
            req(expected in norm(source).replace('B699Middle.','').replace('raw_height_','raw_'),'height raw/count consumer '+name)
            values=(i,)
        elif body.startswith('tailRange_combine'):
            m=re.fullmatch(r'tailRange_combine \(lo := (\d+)\) \(mid := (\d+)\) \(hi := (\d+)\) \(N := (\d+)\) (\S+) (\S+)',body)
            req(m is not None,'height combine syntax '+name)
            a,mid,b,nn=map(int,m.groups()[:4]);left=tails[qual(m[5],ns)];right=tails[qual(m[6],ns)]
            req((lo,hi,n)==(a,b,nn) and left[:3]==(a,mid,nn) and right[:3]==(mid+1,b,nn),'height seam '+name)
            values=left[3]+right[3]
        else:
            alias=tails[qual(body,ns)];req(alias[:3]==(lo,hi,n),'height alias '+name);values=alias[3]
        req(values==tuple(range(lo,hi+1)),'height exact leaves '+name)
        tails[ns+'.'+name]=(lo,hi,n,values)
req(tails['B699MiddleExtension.AllHeights.coverage']==(185,322,20000000,tuple(range(185,323))),'final extension height coverage')
R['heights']={'blocks':len(height_files),'concrete_heights':len(raws),'consumed_leaf_count':138,'range':[185,322],'N':20000000,'input_sha256':sha(input_height)}
# Input chain arithmetic and exact accepted small suffixes; no primality tests.
cp=RUN/'inputs/original20m/outputs/prime_chain_20m.txt';nodes=tuple(map(int,rd(cp).split()))
req(sha(cp)=='a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414','input chain SHA')
req(len(nodes)==116667 and nodes[0]==2 and nodes[-1]==20000093,'input chain dimensions')
req(all(0<b-a<=184 for a,b in zip(nodes,nodes[1:])),'input chain ordered gaps')
req(max(nodes)<4473*4473,'all input nodes within large basis guard')
small_chains=[]
for amount in (16,32):
    p=EXT/f'basis/End{amount}Basis.lean';s=rd(p)
    arrays={int(k):tuple(map(int,re.findall(r'\d+',nums))) for k,nums in re.findall(r'def tail(\d+) : List Nat := \[([^\]]*)\]',s)}
    checks={int(k):(int(first),int(ref)) for k,first,ref in re.findall(r'theorem check(\d+) : basisChainCheck 4473 basis4473 184 (\d+) tail(\d+) = true := by\s+decide \+kernel',s)}
    parts={}
    for k,lo,hi,body in re.findall(r'(?ms)^theorem part(\d+) : B699MiddleIndex.PrimeChain 184 (\d+) (\d+) :=\s*(.*?)(?=^theorem |^def |^end |^#print|\Z)',s):
        k,lo,hi=map(int,(k,lo,hi));expected=f'basisChainCheck_sound (B := 4473) (ps := basis4473) (gap := 184) (p := {lo}) (qs := tail{k}) basis4473_complete check{k}'
        req(norm(body)==expected and checks[k]==(lo,k),'concrete basis consumer '+p.name)
        seq=(lo,)+arrays[k];req(seq[-1]==hi,'basis segment terminal');parts[k]=seq
    req(set(parts)==set(checks)==set(arrays),'all suffix segments consumed')
    combined=parts[0]
    for k in range(1,len(parts)):
        req(combined[-1]==parts[k][0],'suffix seam');combined+=parts[k][1:]
    req(combined==nodes[-amount:],'exact last nodes '+str(amount))
    join_body=re.search(r'theorem joined : B699MiddleIndex.PrimeChain 184 (\d+) (\d+) := ([^\n]+)',s)
    req((int(join_body[1]),int(join_body[2]))==(combined[0],combined[-1]),'joined suffix range')
    req(join_body[3]==('part0' if amount==16 else 'part0.trans part1'),'joined suffix references')
    consumer=rd(EXT/f'basis/End{amount}BasisConsumer.lean')
    req(f'(hnlo : {combined[0]} ≤ n)' in consumer and '(hnhi : n ≤ 20000000)' in consumer,'concrete consumer range')
    req(f'common_of_prime_chain End{amount}Basis.joined' in consumer,'concrete chain consumer')
    small_chains.append({'nodes':amount,'edges':amount-1,'lo':combined[0],'upper_prime':combined[-1],'consumer_n_max':20000000})
R['chain']={'input_nodes':len(nodes),'input_edges':len(nodes)-1,'input_max_gap':max(b-a for a,b in zip(nodes,nodes[1:])),'first':nodes[0],'last':nodes[-1],'large_guard_margin':4473*4473-nodes[-1],'accepted_suffixes':small_chains,'full_chain_not_certified_by_this_audit':True}
# Exact source/object/log and reuse proof provenance for the two finished roots.
evs=[]
for relative,expected,new_n,reuse_n in [('experiments/extension-prime-basis/verification/20260909T140805Z/evidence.json',28,19,9),('verification/20260909T141839Z/evidence.json',33,10,23)]:
    ep=RUN/relative;ev=json.loads(rd(ep));stamp=ep.parent.name
    req(ev['success'] and ev['exit_code']==0 and ev['finished_utc'] and ev['failure'] is None and ev['all_project_closure_verified'],'finished evidence '+stamp)
    c=closure([REPO/p for p in ev['argv_public']['roots']])
    req(len(c)==expected and set(c)=={x['source'] for x in ev['source_closure']}=={x['source'] for x in ev['compile_records']},'actual closure '+stamp)
    req(ev['manifest_sha256']==sha(REPO/'lake-manifest.json') and rd(REPO/'lean-toolchain').strip()==ev['toolchain']['declared']=='leanprover/lean4:v4.33.1','version source '+stamp)
    req(sha(REPO/ev['toolchain']['log'])==ev['toolchain']['log_sha256'],'actual version log '+stamp)
    req(len(ev['pins'])==9 and all(x['head_matches'] and x['clean'] and x['manifest_rev']==x['observed_head'] for x in ev['pins']),'pinned package versions '+stamp)
    req(ev['policy']['exit_code']==0 and not ev['policy']['violations'] and ev['policy']['files']==expected and sha(REPO/ev['policy']['log'])==ev['policy']['log_sha256'],'source policy '+stamp)
    base_maps={}
    for b in ev['reuse_base_evidence']:
        req(sha(REPO/b['path'])==b['sha256'],'base evidence SHA '+stamp)
        base_maps[b['path']]={r['module']:r for r in json.loads(rd(REPO/b['path']))['compile_records']}
    new=reused=ax_count=0;leaf_axioms={}
    for rec in ev['compile_records']:
        p=REPO/rec['source'];logp=REPO/rec['log']
        req(rec['exit_code']==0 and not rec.get('failure') and not rec.get('timed_out'),'successful record '+rec['source'])
        req(c[rec['source']]==rec['source_sha256_before']==rec['source_sha256_after'] and imps(p)==rec['imports'],'source/import correspondence '+rec['source'])
        req(sha(REPO/rec['output'])==rec['output_sha256'] and sha(logp)==rec['log_sha256'],'actual object/log SHA '+rec['source'])
        log=rd(logp);req('# exit_code: 0' in log and '# timed_out: False' in log,'actual exit '+rec['source'])
        for name in re.findall(r'^#print axioms (\S+)',rd(p),re.M):
            pat=re.escape(name) if name.startswith('B699') else r"(?:[^'\s]+\.)?"+re.escape(name)
            m=re.search(r"'"+pat+r"' (?:depends on axioms: \[([^\]]*)\]|does not depend on any axioms)",log,re.S)
            req(m is not None,'actual axiom output '+name)
            axs=[] if m[1] is None else [a.strip() for a in m[1].split(',') if a.strip()]
            req(set(axs)<={'propext','Classical.choice','Quot.sound'},'unexpected axiom '+name);ax_count+=1
            if name.startswith('B699MiddleExtension'):leaf_axioms[name]=axs
        if rec['compiled_in_this_invocation']:
            new+=1;req('-j1' in rec['command'] and '-M1280' in rec['command'] and not any('trust' in x.lower() for x in rec['command']),'new compiler mode '+stamp)
        else:
            reused+=1;rf=rec['reused_from'];base=base_maps[rf['evidence']['path']][rec['module']]
            req(base['exit_code']==0 and not base.get('failure') and not base['axiom_audit'].get('error'),'valid previous record '+rec['source'])
            for f in ['source_sha256_before','source_sha256_after','output_sha256','log_sha256','imports']:req(rec[f]==base[f],'reuse '+f)
            req(sha(REPO/rf['object'])==rf['object_sha256']==rec['output_sha256'],'original reused object')
    req((new,reused)==(new_n,reuse_n),'actual new and reused counts '+stamp)
    digest=hashlib.sha256(''.join(k+' '+v+'\n' for k,v in sorted(c.items())).encode()).hexdigest()
    evs.append({'evidence':relative,'evidence_sha256':sha(ep),'started':ev['started_utc'],'finished':ev['finished_utc'],'source_closure':len(c),'source_object_log_matches':len(c),'new':new,'reused':reused,'actual_axiom_outputs':ax_count,'extension_axiom_outputs':len(leaf_axioms),'source_closure_digest':digest,'problems':[]})
R['evidence']=evs
old=json.loads(rd(RUN/'verification/20260909T132846Z/evidence.json'))
req(all(sha(REPO/r['source'])==r['source_sha256_after'] for r in old['compile_records']),'previous accepted 677 source snapshot frozen')
R['previous_677_source_files_unchanged']=len(old['compile_records'])
R['result']='No source/coverage/evidence mismatch found; extension full-domain target remains pending complete 20m chain and final consumer.'
print(json.dumps(R,ensure_ascii=False,indent=2))
