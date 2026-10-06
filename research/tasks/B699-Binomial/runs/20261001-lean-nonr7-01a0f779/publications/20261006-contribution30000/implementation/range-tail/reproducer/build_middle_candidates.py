from inventory import ROOT, OUT, ROOTS, closure
from slice_core import strip_comments
import re, json, hashlib

RUN=ROOT/'research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/lean'
paths=closure(ROOTS['middle'])
raw={};rawsources={}
for p in paths:
 text=p.read_text(encoding='utf-8-sig')
 for m in re.finditer(r'(?:B699Middle\.)?RawHeightValid (\d+) (\d+) (\d+) (\d+) (\d+)',text):
  row=tuple(map(int,m.groups()));i=row[0]
  if 185<=i<=999:
   if i in raw:assert raw[i]==row,(i,raw[i],row)
   raw[i]=row;rawsources[i]=p
assert set(raw)==set(range(185,1000)),len(raw)
basistext=(RUN/'extension/basis/BasisData.lean').read_text(encoding='utf-8-sig')
basis=re.search(r'def basis4473 : List Nat :=\s*\[([^\]]*)\]',basistext,re.S)[1]
basis=list(map(int,re.findall(r'\d+',basis)))
P=re.search(r'def primorial4473 : Nat := (\d+)',(RUN/'extension/primorial/PrimorialData.lean').read_text(encoding='utf-8-sig'))[1]
core=(OUT/'middle-core.lean').read_text(encoding='utf-8')
first=core.index('namespace ');head=core[:first];body=core[first:]
head=head.replace('import Lean.Elab.Tactic.Omega\n','')
head=head.replace('set_option maxRecDepth 20000','set_option maxRecDepth 65536\nset_option exponentiation.threshold 1000000')
names=sorted(set(re.findall(r'\bB699[A-Za-z_0-9]*',body)))
mapping={name:'N'+str(i) for i,name in enumerate(names)}
def short(text):
 for a,b in mapping.items():text=re.sub(r'\b'+a+r'\b',b,text)
 return text
body=short(body)

def isprime(n):
 if n<2:return False
 return all(n%d for d in range(2,int(n**0.5)+1))
counts={i:sum(map(isprime,range(i))) for i in range(185,1000)}
for i,row in raw.items():assert counts[i]==row[-1],(i,counts[i],row)

def chain_nodes(kind):
 root=RUN/('extension/primeChain/blocks' if kind=='low' else 'primeChain/blocks')
 vals={2};sources=[]
 for p in sorted(root.glob('*.lean')):
  text=p.read_text(encoding='utf-8-sig');found=False
  for m in re.finditer(r'def (?:tail\d+|segment\d+Nodes)\s*:\s*List Nat\s*:=\s*\[([^\]]*)\]',text):
   vals.update(map(int,re.findall(r'\d+',m[1])));found=True
  if found:sources.append(p)
 vals=sorted(vals)
 stop=20000093 if kind=='low' else 2000003
 assert vals[0]==2 and vals[-1]==stop,(kind,vals[0],vals[-1])
 return vals,sources

def encode(ns,wide):
 out=[]
 for p,q in zip(ns,ns[1:]):
  assert p==2 or (q-p)%2==0
  n=(q-p+1)//2 if p==2 else (q-p)//2
  if wide:out.extend([chr(32+n%94),chr(32+n//94)])
  else:
   assert 1<=n<=92
   out.append(chr(32+n))
 return ''.join(out)

template='''
def basis : List Nat := BASIS
def P : Nat := PRIMORIAL
theorem prodP : basis.prod = P := by decide +kernel
'''
segment='''
def gapsOne : Nat → List Char → List Nat
  | _, [] => []
  | p, c::cs =>
      let v := c.toNat - 32
      let q := p + if p=2 then 2*v-1 else 2*v
      q :: gapsOne q cs
termination_by structural p cs => cs
def gapsWide : Nat → List Char → List Nat
  | _, [] => []
  | _, [_] => []
  | p, c::d::cs =>
      let v := c.toNat - 32 + 94*(d.toNat-32)
      let q := p + if p=2 then 2*v-1 else 2*v
      q :: gapsWide q cs
termination_by structural p cs => cs
def D (wide : Bool) (p : Nat) (s : String) : List Nat :=
  if wide then gapsWide p s.toList else gapsOne p s.toList
structure Segment (gap : Nat) (wide : Bool) where
  lo : Nat
  text : String
  checked : B699MiddleExtension.primorialChainCheck 4473 P gap lo (D wide lo text) = true
def Segment.hi {gap : Nat} {wide : Bool} (s : Segment gap wide) : Nat :=
  B699MiddleIndex.chainEnd s.lo (D wide s.lo s.text)
theorem Segment.chain {gap : Nat} {wide : Bool} (s : Segment gap wide) :
    B699MiddleIndex.PrimeChain gap s.lo s.hi :=
  B699MiddleExtension.primorialChainCheck_sound basisComplete prodP s.checked
theorem chain_last {gap lo hi : Nat} (hc : B699MiddleIndex.PrimeChain gap lo hi) : hi.Prime := by
  induction hc with
  | singleton hp => exact hp
  | step _ _ _ _ ih => exact ih
def joinCheck {gap : Nat} {wide : Bool} (p : Nat) : List (Segment gap wide) → Bool
  | [] => true
  | s::ss => decide (p=s.lo) && joinCheck s.hi ss
def joinEnd {gap : Nat} {wide : Bool} (p : Nat) : List (Segment gap wide) → Nat
  | [] => p
  | s::ss => joinEnd s.hi ss
theorem join_sound {gap : Nat} {wide : Bool} {p : Nat} {ss : List (Segment gap wide)}
    (hp : p.Prime) (hc : joinCheck p ss=true) :
    B699MiddleIndex.PrimeChain gap p (joinEnd p ss) := by
  induction ss generalizing p with
  | nil => exact .singleton hp
  | cons s ss ih =>
      have hb : p=s.lo ∧ joinCheck s.hi ss=true := by
        simpa only [joinCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      subst p
      exact s.chain.trans (ih (chain_last s.chain) hb.2)
'''

reports=[]
for low,upper,N,gap,kind,wide in [(185,322,20000000,184,'low',False),(323,999,2000000,322,'high',True)]:
 nodes,sources=chain_nodes(kind)
 assert max(q-p for p,q in zip(nodes,nodes[1:]))<=gap
 parts=[head,'namespace Contribution.Middle'+str(low)+'\n',body]
 parts.append(template.replace('BASIS','['+','.join(map(str,basis))+']').replace('PRIMORIAL',P))
 parts.append(short('''theorem basisComplete : B699MiddleExtension.BasisComplete 4473 basis :=
  B699MiddleExtension.BasisCompleteOn.to_complete
    (B699MiddleExtension.basisRangeCheck_sound (ps:=basis) (lo:=0) (len:=4473) (by decide +kernel))
'''))
 parts.append(short(segment))
 groups=[]
 for group,start in enumerate(range(0,len(nodes)-1,16*128)):
  name='sg'+str(group);groups.append(name);entries=[]
  for ix in range(start,min(start+16*128,len(nodes)-1),16):
   ns=nodes[ix:ix+17]
   enc=encode(ns,wide)
   entries.append('⟨'+str(ns[0])+','+json.dumps(enc,ensure_ascii=False)+',by decide +kernel⟩')
  parts.append(f'def {name} : List (Segment {gap} {str(wide).lower()}) := [\n'+',\n'.join(entries)+']\n')
 parts.append(f'def segments : List (Segment {gap} {str(wide).lower()}) := List.flatten ['+','.join(groups)+']\n')
 parts.append(short(f'theorem complete_chain : B699MiddleIndex.PrimeChain {gap} 2 {nodes[-1]} :=\n  join_sound (ss:=segments) (by decide) (by decide +kernel)\n'))
 parts.append(short(f'''
structure HeightRow where
  i : Nat
  r : Nat
  s : Nat
  t : Nat
  count : B699LargePrimeStructure.smallPrimeCount i = t
  checked : B699Middle.RawHeightValid i r s {N} t
theorem HeightRow.valid (row : HeightRow) : B699Middle.HeightValid row.i row.r row.s {N} :=
  B699Middle.heightValid_of_raw row.count row.checked
def heightCheck (start stop : Nat) : List HeightRow → Bool
  | [] => decide (start=stop)
  | row::rs => decide (start=row.i) && heightCheck (row.i+1) stop rs
theorem heightCovers {{rs : List HeightRow}} {{start stop : Nat}}
    (hc : heightCheck start stop rs=true) :
    ∀ i : Nat, start ≤ i → i < stop → ∃ row ∈ rs, row.i=i := by
  induction rs generalizing start with
  | nil =>
      have hs : start=stop := of_decide_eq_true hc
      intro i hi hu
      omega
  | cons row rs ih =>
      have hb : start=row.i ∧ heightCheck (row.i+1) stop rs=true := by
        simpa only [heightCheck,Bool.and_eq_true,decide_eq_true_eq] using hc
      intro i hi hu
      by_cases he : row.i=i
      · exact ⟨row,by simp,he⟩
      · obtain ⟨s,hs,hsi⟩ := ih hb.2 i (by omega) hu
        exact ⟨s,List.mem_cons_of_mem row hs,hsi⟩
'''))
 hgroups=[]
 for group,lo in enumerate(range(low,upper+1,128)):
  name='hr'+str(group);hgroups.append(name);entries=[]
  for i in range(lo,min(lo+128,upper+1)):
   _,r,s,h,t=raw[i]
   assert h==N,(i,h,N)
   entries.append(short(f'⟨{i},{r},{s},{t},by rw [← B699Middle.fastSmallPrimeCount_eq]; decide +kernel,by decide +kernel⟩'))
  parts.append(f'def {name} : List HeightRow := [\n'+',\n'.join(entries)+']\n')
 parts.append('def heightRows : List HeightRow := List.flatten ['+','.join(hgroups)+']\n')
 parts.append(f'theorem heightChecked : heightCheck {low} {upper+1} heightRows=true := by decide +kernel\n')
 parts.append(short(f'''theorem common_{low}_{upper} {{n i j : Nat}} (hi : {low} ≤ i) (hu : i ≤ {upper})
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : Nat, p.Prime ∧ i ≤ p ∧ p ∣ (n.choose i).gcd (n.choose j) := by
  by_cases hn : n ≤ {N}
  · exact B699MiddleIndex.common_of_prime_chain complete_chain (by omega) (by omega)
      (by omega) (by omega) hij hjn
  · obtain ⟨row,hr,hri⟩ := heightCovers heightChecked i hi (by omega)
    have hc := row.valid
    rw [hri] at hc
    exact B699Middle.common_of_valid_height hc hij hjn (by omega)
'''))
 parts.append(f'end Contribution.Middle{low}\n#print axioms Contribution.Middle{low}.common_{low}_{upper}\n')
 data='\n'.join(parts);data=re.sub(r'\n\s*\n(?:\s*\n)+','\n\n',data)
 dest=OUT/f'Middle{low}_{upper}.lean';dest.write_text(data,encoding='utf-8',newline='\n')
 reports.append({'path':dest.name,'bytes':dest.stat().st_size,'sha256':hashlib.sha256(dest.read_bytes()).hexdigest(),
  'scope':[low,upper],'height':N,'primeChain':{'gap':gap,'start':2,'end':nodes[-1],'nodes':len(nodes),'maxGap':max(q-p for p,q in zip(nodes,nodes[1:]))},
  'sourcePrimeLists':[{'path':str(p.relative_to(ROOT)).replace('\\','/'),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in sources],
  'sourceHeightRows':[{'i':i,'tuple':raw[i],'path':str(rawsources[i].relative_to(ROOT)).replace('\\','/'),'sha256':hashlib.sha256(rawsources[i].read_bytes()).hexdigest()} for i in range(low,upper+1)]})
 print(dest.name,dest.stat().st_size,len(nodes),'segments',(len(nodes)+14)//16)
(OUT/'MIDDLE-CANDIDATES.json').write_text(json.dumps({'sourceBaseline':'a5f7afff0766bf5fee2d72aa9e8ee6a5eb7bda99','namespaceMapping':mapping,'candidates':reports,'status':'Static uncompiled candidates; proof-carrying segments and RawHeightValid statements require actual kernel verification'},indent=2)+'\n',encoding='utf-8')
