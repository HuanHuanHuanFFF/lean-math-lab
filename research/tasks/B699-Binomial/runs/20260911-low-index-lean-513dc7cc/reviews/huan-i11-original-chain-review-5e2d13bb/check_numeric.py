"""Independent exact review diagnostics. Never invokes Lean or writes source/evidence outside this review directory."""
from pathlib import Path
import ast, bisect, collections, datetime, hashlib, json, math, re, sys, time
OUT=Path(__file__).resolve().parent
RUN=OUT.parents[1]
ROOT=RUN.parents[4]
LEAN=RUN/'lean'
started=time.monotonic()
issues=[]
def check(ok,kind,detail):
 if not ok: issues.append({'kind':kind,'detail':detail})
def pairs(s): return [(int(a),int(b)) for a,b in re.findall(r'\((\d+),\s*(\d+)\)',s)]
def read(rel): return (LEAN/rel).read_text(encoding='utf-8-sig')
def cover(lo,hi,intervals):
 if hi<lo:return True
 for a,b in intervals:
  if b<lo:continue
  if lo<a:return False
  if hi<=b:return True
  lo=b+1
 return False
def merged(intervals):
 result=[]
 for a,b in sorted(intervals):
  if a>b:continue
  if result and a<=result[-1][1]+1:result[-1]=(result[-1][0],max(b,result[-1][1]))
  else:result.append((a,b))
 return result
csource=read('I11TerminalMembership/Candidates.lean')
original=pairs(re.search(r'def originalCandidates.*?:=\s*\[(.*?)\]',csource,re.S).group(1))
extended=[(0,23)]+original
check(len(original)==1055,'candidate_count',len(original))
check(all(a<=b for a,b in original),'candidate_direction','all original intervals nonempty')
check(original==sorted(original),'candidate_order','ascending source order')
check(cover(24,500,extended),'small_cover','24..500')
meta=read('I11CrtStages/NumericMetadata.lean');stages=[]
K=int(re.search(r'def i11K[^\n]*:= (\d+)',read('UpperHeight/I11SmallPart.lean')).group(1))
facts=math.prod(math.factorial(h) for h in range(1,8))
check(K==2**56*facts**3,'window_constant','i=11,r=3,s=7')
for ix in range(5):
 part=re.search(r'namespace Stage0'+str(ix)+r'\b(.*?)end Stage0'+str(ix),meta,re.S).group(1)
 vals={k:int(v) for k,v in re.findall(r'def (H|M|upper|exponentMax\d) : ℕ := (\d+)',part)}
 check((2*math.factorial(11))**11*vals['H']**7<=K*vals['M']**33,'stage_certificate',ix)
 for prime in (2,3,5,7):check(vals['H']<=prime**(vals['exponentMax'+str(prime)]+1),'stage_cutoff',(ix,prime))
 stages.append(vals)
check(stages[0]['H']==2**109,'initial_height',stages[0]['H'])
for ix in range(4):check(max(stages[ix]['M'],109,stages[ix]['upper'])+1==stages[ix+1]['H'],'height_connection',ix)
H,M=stages[4]['H'],stages[4]['M']
all_cell_stats=[]
for p,q in ((2,3),(2,5),(2,7),(3,5),(3,7),(5,7)):
 name=f'Pair{p}{q}';txt=read(f'I11TerminalMembership/{name}/Data.lean');comp=read(f'I11TerminalMembership/{name}/Composer.lean')
 amax,bmax=map(int,re.search(r'amax := (\d+)\s+bmax := (\d+)',comp).groups())
 parsed={}
 for mt in re.finditer(r'def cellA(\d+)B(\d+) : CellData where\s+inverse := (\d+)\s+bounds := fun \w+ => ([^\n]+)',txt):
  a,b,v=int(mt[1]),int(mt[2]),int(mt[3]);expr=mt[4]
  opts={int(d):(int(lo),int(hi)) for d,lo,hi in re.findall(r'if d = \((-?\d+) : ℤ\) then ⟨(-?\d+),\s*(-?\d+)⟩',expr)}
  default=tuple(map(int,re.search(r'⟨(-?\d+),\s*(-?\d+)⟩\s*$',expr).groups()))
  parsed[a,b]=(v,opts,default)
 check(set(parsed)=={(a,b) for a in range(1,amax+1) for b in range(1,bmax+1)},'cell_rectangle',name)
 # Check the actual data-function dispatch, not only named cell presence.
 cell_body=re.search(r'def cells \(a b : ℕ\) : CellData :=(.*?)(?:\n\n|\nend )',txt,re.S).group(1)
 dispatch=[tuple(map(int,x)) for x in re.findall(r'if a = (\d+) then rowA(\d+) b',cell_body)]
 check(dispatch==[(a,a) for a in range(1,amax+1)],'row_dispatch',name)
 for a in range(1,amax+1):
  row_body=re.search(r'def rowA'+str(a)+r' \(b : ℕ\) : CellData :=(.*?)(?:\n\n|\nend )',txt,re.S).group(1)
  dispatch_b=[tuple(map(int,x)) for x in re.findall(r'if b = (\d+) then cellA(\d+)B(\d+)',row_body)]
  check(dispatch_b==[(b,a,b) for b in range(1,bmax+1)],'column_dispatch',(name,a))
 row_refs={int(x) for x in re.findall(r'rowA(\d+)_block_check',comp)}
 check(row_refs==set(range(1,amax+1)),'composer_rows',name)
 stat={'pair':name,'shape':[amax,bmax],'cells':len(parsed),'shift_rows':0,'parameter_intervals':0,'feasible_solutions':0,'zero_shift_solutions':0,'negative_shift_solutions':0,'positive_shift_solutions':0,'negative_baseC_rows':0,'empty_rows':0}
 for (a,b),(v,opts,default) in parsed.items():
  P,Q=p**a,q**b;capA=min(M,(H-1)//P);capC=min(M,(H-1)//Q)
  check(P*v%Q==1,'inverse',(name,a,b))
  for d in range(-10,11):
   stat['shift_rows']+=1;lo,hi=opts.get(d,default);rho=(v*d)%Q or Q;baseC=(P*rho-d)//Q
   stat['negative_baseC_rows']+=baseC<0
   check(lo<=0 or baseC+P*(lo-1)<1,'lower_certificate',(name,a,b,d,lo))
   check(capA<rho+Q*(hi+1) or capC<baseC+P*(hi+1),'upper_certificate',(name,a,b,d,hi))
   stat['empty_rows']+=hi<lo
   for t in range(max(0,lo),max(0,hi+1)):
    A=max(0,rho+Q*t);C=max(0,baseC+P*t)
    interval=(max(P*A,Q*C),min(P*A,Q*C)+10);stat['parameter_intervals']+=1
    check(cover(*interval,extended),'parameter_cover',(name,a,b,d,t,interval))
   # Independent enumeration from original PA-QC=d. No table range or inverse is used to find solutions.
   for A in range(1,capA+1):
    C,rem=divmod(P*A-d,Q)
    if rem or not 1<=C<=capC:continue
    stat['feasible_solutions']+=1;stat['zero_shift_solutions' if d==0 else ('negative_shift_solutions' if d<0 else 'positive_shift_solutions')]+=1
    t,remA=divmod(A-rho,Q)
    check(remA==0 and t>=0 and lo<=t<=hi,'actual_solution_parameters',(name,a,b,d,A,C,lo,hi))
    interval=(max(P*A,Q*C),min(P*A,Q*C)+10)
    check(cover(*interval,extended),'actual_solution_cover',(name,a,b,d,A,C,interval))
 all_cell_stats.append(stat)
# Literal candidate lists and the actual append-tree used by Assembly.
group_lists={}
for f in sorted((LEAN/'I11TerminalCandidateCoverage/Groups').glob('G*.lean')):
 text=f.read_text(encoding='utf-8-sig');group_lists[f.stem]=pairs(re.search(r'^def intervals[^\n]*:= (\[[^\n]*\])',text,re.M).group(1))
check(list(group_lists)==[f'G{i:03}' for i in range(66)],'group_names',list(group_lists))
assembly=read('I11TerminalCandidateCoverage/Assembly.lean');nodes={}
for name,left,right in re.findall(r'private def (node\d+_intervals) : List NatInterval := \((\S+) \+\+ (\S+)\)',assembly):
 def resolve(expr):
  if expr in nodes:return nodes[expr]
  m=re.fullmatch(r'Math\.B699\.I11TerminalCandidateCoverage\.Groups\.(G\d+)\.intervals',expr)
  if m:return group_lists[m[1]]
  raise ValueError(expr)
 nodes[name]=resolve(left)+resolve(right)
rootnode=re.search(r'def allIntervals[^\n]*:= (\w+)',assembly)[1]
check(nodes[rootnode]==original,'assembly_literal_identity',rootnode)
# Check every concrete witness declaration with an independent arithmetic evaluator.
def prime(x):
 if x<2:return False
 if x%2==0:return x==2
 return all(x%d for d in range(3,math.isqrt(x)+1,2))
witnesses={};wc=collections.Counter();dbounds={}
for f in sorted((LEAN/'I11TerminalData').glob('Chunk*.lean')):
 txt=f.read_text(encoding='utf-8-sig')
 for key,lo,hi,kind,value in re.findall(r'def (w\d+) : Witness := \.good ⟨(\d+), (\d+), \.(topPrime|largeDivisor) (\d+)⟩',txt):
  lo,hi,value=map(int,(lo,hi,value));wid=f'{f.stem}.{key}';witnesses[wid]=(lo,hi,kind,value);wc[kind]+=1
  ok=(lo<=hi and prime(value) and value<=lo and hi<value+11) if kind=='topPrime' else (lo==hi and value>0 and math.gcd(value,math.factorial(10))==1 and math.comb(lo,11)%value==0 and lo**84<K*value**11)
  check(ok,'witness_arithmetic',wid);dbounds[wid]=(lo,hi)
 for key in re.findall(r'def (w\d+) : Witness := \.special330',txt):
  wid=f'{f.stem}.{key}';witnesses[wid]=(330,330,'special330',None);wc['special330']+=1;dbounds[wid]=(330,330)
 for key in re.findall(r'^def (w\d+) : Witness :=',txt,re.M):check(f'{f.stem}.{key}' in witnesses,'witness_parser',(f.stem,key))
union=merged(dbounds.values())
check(all(cover(a,b,union) for a,b in original),'global_witness_cover','1055 intervals')
# Every ordinary per-candidate list links to the bounds of its actual witness references.
local_link_count=0
for f in sorted((LEAN/'I11TerminalCandidateCoverage/Groups').glob('G*.lean')):
 txt=f.read_text(encoding='utf-8-sig')
 for cid,refs in re.findall(r'private def (c\d+)_witnesses : List Witness := \[([^\n]*)\]',txt):
  ids=re.findall(r'B699LowIndex\.I11TerminalData\.(Chunk\d+\.w\d+)',refs)
  data=pairs(re.search(r'private def '+cid+r'_intervals : List NatInterval := (\[[^\n]*\])',txt)[1])
  check([dbounds[x] for x in ids]==data,'candidate_witness_identity',(f.stem,cid))
  lo,hi=map(int,re.search(r'private theorem '+cid+r'_cover : coverCheck (\d+) (\d+) ',txt).groups())
  check(cover(lo,hi,data),'candidate_local_cover',(f.stem,cid,lo,hi));local_link_count+=1
# Original binomial definition in the low-domain and p=i boundary probe, independent of all candidate data.
low_pairs=0
for n in range(24,501):
 c11=math.comb(n,11)
 for j in range(12,n//2+1):
  g=math.gcd(c11,math.comb(n,j))
  for p in (2,3,5,7):
   while g%p==0 and g:g//=p
  check(g>1,'low_original_counterexample',(n,j));low_pairs+=1
boundary_gcd=math.gcd(math.comb(126,11),math.comb(126,42));remaining=boundary_gcd
for p in (2,3,5,7):
 while remaining%p==0 and remaining:remaining//=p
check(remaining>1 and remaining%11==0,'inclusive_prime_probe',remaining)
for j in range(12,166):
 p=163 if j<=162 else 109
 check(math.comb(330,11)%p==0 and math.comb(330,j)%p==0,'special330',(j,p))
# Policy scan reports syntax tokens only; it is not a kernel axiom audit.
manifest=json.loads((OUT/'source-manifest-initial.json').read_text(encoding='utf-8'));policy=[];changed=[]
def strip_comments(s):
 # Preserve line count while removing nested Lean block comments and line comments.
 result=[];depth=0;i=0
 while i<len(s):
  if s[i:i+2]=='/-':depth+=1;result.append('  ');i+=2
  elif depth and s[i:i+2]=='-/':depth-=1;result.append('  ');i+=2
  elif depth:result.append('\n' if s[i]=='\n' else ' ');i+=1
  elif s[i:i+2]=='--':
   j=s.find('\n',i);j=len(s) if j<0 else j;result.append(' '*(j-i));i=j
  else:result.append(s[i]);i+=1
 return ''.join(result)
for rel,info in manifest['files'].items():
 blob=(ROOT/rel).read_bytes()
 if hashlib.sha256(blob).hexdigest()!=info['sha256']:changed.append(rel)
 for i,line in enumerate(strip_comments(blob.decode('utf-8-sig')).splitlines(),1):
  if re.search(r'\b(sorry|admit|sorryAx|axiom|native_decide|unsafe|implemented_by|extern)\b',line):policy.append({'file':rel,'line':i,'text':line.strip()})
result={'kind':'independent exact finite diagnostics; not Lean acceptance','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'elapsed_seconds':round(time.monotonic()-started,3),'candidate_intervals':len(original),'candidate_n_count':sum(b-a+1 for a,b in original),'stage_metadata':stages,'terminal_tables':all_cell_stats,'groups':len(group_lists),'assembly_nodes':len(nodes),'local_candidate_witness_links':local_link_count,'witness_counts':dict(wc),'low_original_domain':{'n_min':24,'n_max':500,'legal_nj_pairs':low_pairs},'p_equals_i_probe':{'n':126,'i':11,'j':42,'gcd':boundary_gcd,'gcd_after_removing_primes_2_3_5_7':remaining},'special330_legal_j':154,'project_dependency_file_count':len(manifest['files']),'policy_token_hits':policy,'changed_sources_since_initial_capture':changed,'issues':issues}
(OUT/('numeric-diagnostics-replay-'+datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')+'.json')).write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result,ensure_ascii=False,indent=2))
sys.exit(1 if issues else 0)
